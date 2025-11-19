@interface VCPImagePetsKeypointsAnalyzer
- (VCPImagePetsKeypointsAnalyzer)initWithMaxNumRegions:(int)a3 forceCPU:(BOOL)a4 sharedModel:(BOOL)a5;
- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 petsDetections:(id)a5 results:(id *)a6 cancel:(id)a7;
- (int)preferredInputFormat:(int *)a3 height:(int *)a4 format:(unsigned int *)a5;
@end

@implementation VCPImagePetsKeypointsAnalyzer

- (VCPImagePetsKeypointsAnalyzer)initWithMaxNumRegions:(int)a3 forceCPU:(BOOL)a4 sharedModel:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v20.receiver = self;
  v20.super_class = VCPImagePetsKeypointsAnalyzer;
  v8 = [(VCPImagePetsKeypointsAnalyzer *)&v20 init];
  v9 = v8;
  if (v8)
  {
    if (a3 >= 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = a3;
    }

    if (a3 <= 1)
    {
      v10 = 1;
    }

    v8->_maxNumRegions = v10;
    v11 = [VCPCNNPetsDetectorV2 detector:6 forceCPU:0 sharedModel:0 revision:1];
    petsDetector = v9->_petsDetector;
    v9->_petsDetector = v11;

    v13 = [[VCPCNNPetsKeypointsDetector alloc] initWithForceCPU:v6 sharedModel:v5];
    petsKeypointsDetector = v9->_petsKeypointsDetector;
    v9->_petsKeypointsDetector = v13;

    v15 = [MEMORY[0x1E695DF70] array];
    results = v9->_results;
    v9->_results = v15;

    v9->_inputWidth = 576;
    v9->_inputHeight = 576;
    v17 = v9->_petsDetector;
    if (v17)
    {
      if (v9->_petsKeypointsDetector)
      {
        v17 = v9;
      }

      else
      {
        v17 = 0;
      }
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (int)preferredInputFormat:(int *)a3 height:(int *)a4 format:(unsigned int *)a5
{
  result = -50;
  if (a3 && a4)
  {
    if (a5)
    {
      result = 0;
      *a3 = self->_inputWidth;
      *a4 = self->_inputHeight;
      *a5 = 1111970369;
    }
  }

  return result;
}

- (int)analyzePixelBuffer:(__CVBuffer *)a3 flags:(unint64_t *)a4 petsDetections:(id)a5 results:(id *)a6 cancel:(id)a7
{
  v101 = a6;
  v146 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v102 = v8;
  v103 = a7;
  v122 = [MEMORY[0x1E695DF70] array];
  v104 = [MEMORY[0x1E695DF70] array];
  [(NSMutableArray *)self->_results removeAllObjects];
  if ([v8 count])
  {
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    obj = v8;
    v9 = [obj countByEnumeratingWithState:&v132 objects:v145 count:16];
    if (v9)
    {
      v120 = *v133;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v133 != v120)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v132 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:{@"attributes", v101}];
          v13 = [v12 objectForKeyedSubscript:@"petsBounds"];

          v14 = [v11 objectForKeyedSubscript:@"attributes"];
          v15 = [v14 objectForKeyedSubscript:@"petsConfidence"];

          v147 = NSRectFromString(v13);
          v131.a = 1.0;
          v131.b = 0.0;
          v131.c = 0.0;
          *&v131.d = xmmword_1C9F60600;
          v131.ty = 1.0;
          v148 = CGRectApplyAffineTransform(v147, &v131);
          v143[0] = @"petsBounds";
          if (v148.origin.x < 1.0)
          {
            x = v148.origin.x;
          }

          else
          {
            x = 1.0;
          }

          if (v148.origin.x <= 0.0)
          {
            x = 0.0;
          }

          if (v148.origin.y < 1.0)
          {
            y = v148.origin.y;
          }

          else
          {
            y = 1.0;
          }

          if (v148.origin.y <= 0.0)
          {
            y = 0.0;
          }

          width = 1.0 - v148.origin.x;
          if (v148.size.width < width)
          {
            width = v148.size.width;
          }

          if (v148.size.width <= 0.0)
          {
            v19 = 0.0;
          }

          else
          {
            v19 = width;
          }

          height = 1.0 - v148.origin.y;
          if (v148.size.height < 1.0 - v148.origin.y)
          {
            height = v148.size.height;
          }

          if (v148.size.height <= 0.0)
          {
            v21 = 0.0;
          }

          else
          {
            v21 = height;
          }

          v22 = x;
          v23 = y;
          v24 = NSStringFromRect(*(&v19 - 2));
          v143[1] = @"petsConfidence";
          v144[0] = v24;
          v144[1] = v15;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v144 forKeys:v143 count:2];
          [v122 addObject:v25];
        }

        v9 = [obj countByEnumeratingWithState:&v132 objects:v145 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v57 = [(VCPCNNPetsDetectorV2 *)self->_petsDetector petsDetection:a3 petsRegions:v122 petsFaceRegions:v104 cancel:v103];
    if (v57)
    {
      goto LABEL_77;
    }
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v105 = v122;
  v107 = [v105 countByEnumeratingWithState:&v127 objects:v142 count:16];
  if (v107)
  {
    v116 = 0;
    v106 = *v128;
    while (2)
    {
      for (j = 0; j != v107; ++j)
      {
        if (*v128 != v106)
        {
          objc_enumerationMutation(v105);
        }

        v26 = *(*(&v127 + 1) + 8 * j);
        v115 = [v26 objectForKeyedSubscript:{@"petsBounds", v101}];
        v149 = NSRectFromString(v115);
        v111 = v149.size.width;
        v112 = v149.origin.x;
        v109 = v149.origin.y;
        v110 = v149.size.height;
        v150 = NSRectFromString(v115);
        v27 = v150.origin.x;
        v28 = v150.origin.y;
        v29 = v150.size.width;
        v30 = v150.size.height;
        v31 = [v26 objectForKeyedSubscript:@"petsConfidence"];
        v113 = v26;
        [v31 floatValue];
        v33 = v32;

        v34 = [VCPBoundingBox alloc];
        *&v35 = v27;
        *&v36 = v28;
        v37 = v29 * 1.10000002;
        *&v37 = v29 * 1.10000002;
        v38 = v30 * 1.10000002;
        *&v38 = v30 * 1.10000002;
        LODWORD(v39) = v33;
        v40 = [(VCPBoundingBox *)v34 initWithXYAndSize:v35 y:v36 width:v37 height:v38 confidence:v39];
        [(VCPBoundingBox *)v40 maxX];
        LODWORD(v30) = v41;
        [(VCPBoundingBox *)v40 minX];
        LODWORD(v27) = v42;
        [(VCPBoundingBox *)v40 maxY];
        v44 = v43;
        [(VCPBoundingBox *)v40 minY];
        LODWORD(v28) = v45;
        [(VCPBoundingBox *)v40 minX];
        LODWORD(v29) = v46;
        [(VCPBoundingBox *)v40 minY];
        v48 = (*&v30 - *&v27) * 0.5;
        v49 = (v44 - *&v28) * 0.5;
        v50 = v48 + *&v29;
        v51 = v49 + *&v47;
        if (v48 <= v49)
        {
          *&v47 = v50 - v49;
          if ((v50 - v49) < 0.0)
          {
            *&v47 = 0.0;
          }

          [(VCPBoundingBox *)v40 setMinX:v47];
          *&v55 = v49 + v50;
          if ((v49 + v50) > 1.0)
          {
            *&v55 = 1.0;
          }

          [(VCPBoundingBox *)v40 setMaxX:v55];
          *&v56 = v51 - v49;
          if ((v51 - v49) < 0.0)
          {
            *&v56 = 0.0;
          }

          [(VCPBoundingBox *)v40 setMinY:v56];
          *&v54 = v49 + v51;
          if ((v49 + v51) > 1.0)
          {
            *&v54 = 1.0;
          }
        }

        else
        {
          *&v47 = v50 - v48;
          if ((v50 - v48) < 0.0)
          {
            *&v47 = 0.0;
          }

          [(VCPBoundingBox *)v40 setMinX:v47];
          *&v52 = v48 + v50;
          if ((v48 + v50) > 1.0)
          {
            *&v52 = 1.0;
          }

          [(VCPBoundingBox *)v40 setMaxX:v52];
          *&v53 = v51 - v48;
          if ((v51 - v48) < 0.0)
          {
            *&v53 = 0.0;
          }

          [(VCPBoundingBox *)v40 setMinY:v53];
          *&v54 = v48 + v51;
          if ((v48 + v51) > 1.0)
          {
            *&v54 = 1.0;
          }
        }

        [(VCPBoundingBox *)v40 setMaxY:v54];
        v121 = [MEMORY[0x1E695DF70] array];
        v57 = [(VCPCNNPetsKeypointsDetector *)self->_petsKeypointsDetector analyzeFrame:a3 withBox:v40 keypoints:?];
        if (v57)
        {

LABEL_76:
          goto LABEL_77;
        }

        v58 = [MEMORY[0x1E695DF70] array];
        obja = [MEMORY[0x1E695DF90] dictionary];
        [(VCPBoundingBox *)v40 maxX];
        v60 = v59;
        [(VCPBoundingBox *)v40 minX];
        v62 = v61;
        [(VCPBoundingBox *)v40 maxY];
        v64 = v63;
        [(VCPBoundingBox *)v40 minY];
        v66 = v65;
        if ([v121 count] == 25)
        {
          v125 = 0u;
          v126 = 0u;
          v123 = 0u;
          v124 = 0u;
          v67 = v121;
          v68 = [v67 countByEnumeratingWithState:&v123 objects:v141 count:16];
          if (v68)
          {
            v69 = v60 - v62;
            v70 = v64 - v66;
            v71 = *v124;
            while (2)
            {
              for (k = 0; k != v68; ++k)
              {
                if (*v124 != v71)
                {
                  objc_enumerationMutation(v67);
                }

                v73 = *(*(&v123 + 1) + 8 * k);
                if ([v73 count] != 3)
                {
                  v98 = 0;
                  v116 = -18;
                  goto LABEL_67;
                }

                v74 = [v73 objectAtIndexedSubscript:0];
                [v74 floatValue];
                v76 = v75;

                v77 = [v73 objectAtIndexedSubscript:1];
                [v77 floatValue];
                v79 = v78;

                v80 = [v73 objectAtIndexedSubscript:2];
                [v80 floatValue];
                v82 = v81;

                [(VCPBoundingBox *)v40 minX];
                v84 = v83;
                [(VCPBoundingBox *)v40 minY];
                v86 = v85;
                *&v87 = v84 + ((v76 / 288.0) * v69);
                v88 = [MEMORY[0x1E696AD98] numberWithFloat:v87];
                *&v89 = 1.0 - (v86 + ((v79 / 288.0) * v70));
                v140[0] = v88;
                v90 = [MEMORY[0x1E696AD98] numberWithFloat:v89];
                v140[1] = v90;
                LODWORD(v91) = v82;
                v92 = [MEMORY[0x1E696AD98] numberWithFloat:v91];
                v140[2] = v92;
                v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:3];
                [v58 addObject:v93];
              }

              v68 = [v67 countByEnumeratingWithState:&v123 objects:v141 count:16];
              if (v68)
              {
                continue;
              }

              break;
            }
          }

          [obja setObject:v58 forKeyedSubscript:@"petsKeypoints"];
          v151.size.height = v110;
          v151.origin.y = 1.0 - v109 - v110;
          v151.size.width = v111;
          v151.origin.x = v112;
          v94 = NSStringFromRect(v151);
          [obja setObject:v94 forKeyedSubscript:@"petsBounds"];

          v95 = [v113 objectForKeyedSubscript:@"petsConfidence"];
          [obja setObject:v95 forKeyedSubscript:@"petsConfidence"];

          v96 = [v113 objectForKeyedSubscript:@"petsType"];
          [obja setObject:v96 forKeyedSubscript:@"petsType"];

          results = self->_results;
          v138 = @"attributes";
          v139 = obja;
          v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
          [(NSMutableArray *)results addObject:v67];
          v98 = 1;
LABEL_67:
        }

        else
        {
          v98 = 0;
          v116 = -18;
        }

        if (!v98)
        {
          v57 = v116;
          goto LABEL_76;
        }
      }

      v107 = [v105 countByEnumeratingWithState:&v127 objects:v142 count:16];
      if (v107)
      {
        continue;
      }

      break;
    }
  }

  v99 = self->_results;
  if (v99)
  {
    v136 = @"PetsKeypointsResults";
    v137 = v99;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
    *v101 = v57 = 0;
  }

  else
  {
    v57 = 0;
  }

LABEL_77:

  return v57;
}

@end