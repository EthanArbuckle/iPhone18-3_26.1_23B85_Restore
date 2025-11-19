@interface VCPVideoHumanActionAnalyzer
- (CGRect)scaleRect:(CGRect)a3 scaleX:(float)a4 scaleY:(float)a5;
- (VCPVideoHumanActionAnalyzer)initWithTimeOfInterest:(id)a3 phFaces:(id)a4;
- (float)intersectionOverUnion:(CGRect)a3 rect:(CGRect)a4;
- (float)normDistance:(id)a3 point2:(id)a4;
- (id).cxx_construct;
- (id)associatePerson:(CGRect)a3 withPHFaces:(id)a4;
- (id)clipResults:(id *)a3;
- (id)privateResults;
- (id)results;
- (int)analyzeFrame:(__CVBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 frameStats:(id)a6 flags:(unint64_t *)a7;
- (int)finishAnalysisPass:(id *)a3;
- (int)processPersons:(id)a3 humanBounds:(id)a4 dominantPersonIdx:(int)a5 frame:(__CVBuffer *)a6 timestamp:(id *)a7 duration:(id *)a8 frameStats:(id)a9;
- (void)addActiveResults:(id *)a3;
- (void)computeActionScore;
- (void)computeVar:(int)a3 index2:(int)a4 interVar:(float *)a5 intraVar:(float *)a6;
@end

@implementation VCPVideoHumanActionAnalyzer

- (VCPVideoHumanActionAnalyzer)initWithTimeOfInterest:(id)a3 phFaces:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v48.receiver = self;
  v48.super_class = VCPVideoHumanActionAnalyzer;
  v9 = [(VCPVideoHumanActionAnalyzer *)&v48 init];
  if (v9)
  {
    v10 = [VCPImageHumanPoseAnalyzer alloc];
    HasANE = DeviceHasANE();
    v12 = [(VCPImageHumanPoseAnalyzer *)v10 initWithKeypointsOption:1 aspectRatio:0 lightweight:HasANE ^ 1u forceCPU:0 sharedModel:1 flushModel:DeviceHasANE() ^ 1];
    v13 = *(v9 + 1);
    *(v9 + 1) = v12;

    v14 = MEMORY[0x1E6960C80];
    v15 = *(MEMORY[0x1E6960C80] + 16);
    *(v9 + 1) = *MEMORY[0x1E6960C80];
    *(v9 + 4) = v15;
    v16 = [MEMORY[0x1E695DF70] array];
    v17 = *(v9 + 8);
    *(v9 + 8) = v16;

    v18 = [MEMORY[0x1E695DF70] array];
    v19 = *(v9 + 16);
    *(v9 + 16) = v18;

    v20 = [MEMORY[0x1E695DF70] array];
    v21 = *(v9 + 17);
    *(v9 + 17) = v20;

    v22 = [MEMORY[0x1E695DF70] array];
    v23 = *(v9 + 18);
    *(v9 + 18) = v22;

    v24 = [MEMORY[0x1E695DF70] array];
    v25 = *(v9 + 19);
    *(v9 + 19) = v24;

    *(v9 + 18) = 0;
    v26 = MEMORY[0x1E6960C70];
    v27 = *MEMORY[0x1E6960C70];
    *(v9 + 92) = *(MEMORY[0x1E6960C70] + 16);
    *(v9 + 76) = v27;
    v28 = *(v26 + 16);
    *(v9 + 100) = *v26;
    *(v9 + 116) = v28;
    v29 = MEMORY[0x1E695F058];
    v30 = *(MEMORY[0x1E695F058] + 16);
    *(v9 + 10) = *MEMORY[0x1E695F058];
    *(v9 + 11) = v30;
    v31 = v29[1];
    *(v9 + 12) = *v29;
    *(v9 + 13) = v31;
    *(v9 + 56) = 0;
    *(v9 + 57) = 0;
    *(v9 + 58) = 0;
    *(v9 + 59) = 0;
    v32 = *(v26 + 16);
    *(v9 + 244) = *v26;
    *(v9 + 260) = v32;
    v33 = *(v14 + 16);
    *(v9 + 40) = *v14;
    *(v9 + 7) = v33;
    v34 = *(v9 + 34);
    *(v9 + 34) = 0;

    v9[280] = 0;
    objc_storeStrong(v9 + 36, a3);
    v35 = [MEMORY[0x1E695DF70] array];
    v36 = *(v9 + 37);
    *(v9 + 37) = v35;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v37 = v8;
    v38 = [v37 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v38)
    {
      v39 = *v45;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v45 != v39)
          {
            objc_enumerationMutation(v37);
          }

          [*(v9 + 37) addObject:{*(*(&v44 + 1) + 8 * i), v44}];
        }

        v38 = [v37 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v38);
    }
  }

  if (*(v9 + 1))
  {
    v41 = v9;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;

  return v42;
}

- (float)normDistance:(id)a3 point2:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectAtIndexedSubscript:0];
  [v7 floatValue];
  v9 = v8;
  v10 = [v6 objectAtIndexedSubscript:0];
  [v10 floatValue];
  v12 = v11;
  v13 = [v5 objectAtIndexedSubscript:0];
  [v13 floatValue];
  v15 = v14;
  v16 = [v6 objectAtIndexedSubscript:0];
  [v16 floatValue];
  v18 = v17;
  v19 = [v5 objectAtIndexedSubscript:1];
  [v19 floatValue];
  v21 = v20;
  v22 = [v6 objectAtIndexedSubscript:1];
  [v22 floatValue];
  v24 = v23;
  v25 = [v5 objectAtIndexedSubscript:1];
  [v25 floatValue];
  v27 = v26;
  v28 = [v6 objectAtIndexedSubscript:1];
  [v28 floatValue];
  v30 = sqrtf(((v21 - v24) * (v27 - v29)) + ((v9 - v12) * (v15 - v18)));

  return v30;
}

- (void)computeVar:(int)a3 index2:(int)a4 interVar:(float *)a5 intraVar:(float *)a6
{
  v80 = *MEMORY[0x1E69E9840];
  if (a5 && a6)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = self->_bodyArray;
    v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v79 count:16];
    if (v8)
    {
      v9 = *v76;
      v74 = a4;
      v72 = 0.0;
      v67 = 0.0;
      v70 = 0.0;
      v71 = 0.0;
      v68 = 0.0;
      v69 = 0.0;
      v10 = 0.0;
      v65 = 0.0;
      v66 = 0.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v76 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v75 + 1) + 8 * i);
          if ([v12 count])
          {
            v13 = [v12 objectAtIndexedSubscript:a3];
            v14 = [v13 objectAtIndexedSubscript:2];
            [v14 floatValue];
            if (v15 <= 0.1)
            {
            }

            else
            {
              v16 = [v12 objectAtIndexedSubscript:v74];
              v17 = [v16 objectAtIndexedSubscript:2];
              [v17 floatValue];
              v19 = v18 > 0.1;

              if (v19)
              {
                v20 = [v12 objectAtIndexedSubscript:a3];
                v21 = [v20 objectAtIndexedSubscript:0];
                [v21 floatValue];
                v64 = v22;

                v23 = [v12 objectAtIndexedSubscript:a3];
                v24 = [v23 objectAtIndexedSubscript:0];
                [v24 floatValue];
                v26 = v25;
                v27 = [v12 objectAtIndexedSubscript:a3];
                v28 = [v27 objectAtIndexedSubscript:0];
                v63 = v26;
                [v28 floatValue];
                v62 = v29;

                v30 = [v12 objectAtIndexedSubscript:a3];
                v31 = [v30 objectAtIndexedSubscript:1];
                [v31 floatValue];
                v33 = v32;

                v34 = [v12 objectAtIndexedSubscript:a3];
                v35 = [v34 objectAtIndexedSubscript:1];
                [v35 floatValue];
                v37 = v36;
                v38 = [v12 objectAtIndexedSubscript:a3];
                v39 = [v38 objectAtIndexedSubscript:1];
                [v39 floatValue];
                v41 = v40;

                v42 = [v12 objectAtIndexedSubscript:a3];
                v43 = [v42 objectAtIndexedSubscript:0];
                [v43 floatValue];
                v45 = v44;
                v46 = [v12 objectAtIndexedSubscript:v74];
                v47 = [v46 objectAtIndexedSubscript:0];
                [v47 floatValue];
                v49 = v48;

                v50 = [v12 objectAtIndexedSubscript:a3];
                v51 = [v50 objectAtIndexedSubscript:1];
                [v51 floatValue];
                v53 = v52;
                v54 = [v12 objectAtIndexedSubscript:v74];
                v55 = [v54 objectAtIndexedSubscript:1];
                [v55 floatValue];
                v57 = v56;

                v65 = v65 + v64;
                v66 = v66 + v33;
                v67 = v67 + (v37 * v41);
                v68 = v68 + ((v45 - v49) * (v45 - v49));
                v71 = v71 + (v53 - v57);
                v72 = v72 + (v63 * v62);
                v69 = v69 + ((v53 - v57) * (v53 - v57));
                v70 = v70 + (v45 - v49);
                v10 = v10 + 1.0;
              }
            }
          }
        }

        v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v79 count:16];
      }

      while (v8);

      v58 = 0.0;
      v59 = 0.0;
      if (v10 > 0.0)
      {
        v59 = (((v67 / v10) - ((v66 * v66) / (v10 * v10))) + ((v72 / v10) - ((v65 * v65) / (v10 * v10)))) * 0.5;
        v58 = (((v68 / v10) - ((v70 * v70) / (v10 * v10))) + ((v69 / v10) - ((v71 * v71) / (v10 * v10)))) * 0.5;
      }
    }

    else
    {

      v58 = 0.0;
      v59 = 0.0;
    }

    *a5 = v59;
    *a6 = v58;
  }
}

- (void)computeActionScore
{
  v54 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v2 = self->_bodyArray;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (!v3)
  {

    v36 = 0.0;
    v37 = 0.0;
    v38 = 0.0;
    goto LABEL_25;
  }

  v4 = *v50;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v50 != v4)
      {
        objc_enumerationMutation(v2);
      }

      v9 = *(*(&v49 + 1) + 8 * i);
      if ([v9 count])
      {
        v10 = [v9 objectAtIndexedSubscript:11];
        v11 = [v10 objectAtIndexedSubscript:2];
        [v11 floatValue];
        if (v12 <= 0.1)
        {
        }

        else
        {
          v13 = [v9 objectAtIndexedSubscript:5];
          v14 = [v13 objectAtIndexedSubscript:2];
          [v14 floatValue];
          v16 = v15 > 0.1;

          if (v16)
          {
            v17 = [v9 objectAtIndexedSubscript:11];
            v18 = [v9 objectAtIndexedSubscript:5];
            [(VCPVideoHumanActionAnalyzer *)self normDistance:v17 point2:v18];
            v20 = v19;

            goto LABEL_14;
          }
        }

        v21 = [v9 objectAtIndexedSubscript:12];
        v22 = [v21 objectAtIndexedSubscript:2];
        [v22 floatValue];
        if (v23 <= 0.1)
        {
        }

        else
        {
          v24 = [v9 objectAtIndexedSubscript:6];
          v25 = [v24 objectAtIndexedSubscript:2];
          [v25 floatValue];
          v27 = v26 > 0.1;

          if (v27)
          {
            v28 = [v9 objectAtIndexedSubscript:12];
            v29 = [v9 objectAtIndexedSubscript:6];
            [(VCPVideoHumanActionAnalyzer *)self normDistance:v28 point2:v29];
            v20 = v30;

LABEL_14:
            v7 = v7 + v20;
            v5 = v5 + 1.0;
          }
        }

        for (j = 5; j != 17; ++j)
        {
          v32 = [v9 objectAtIndexedSubscript:j];
          v33 = [v32 objectAtIndexedSubscript:2];
          [v33 floatValue];
          v35 = v34 > 0.1;

          if (v35)
          {
            v6 = v6 + 1.0;
          }
        }

        continue;
      }
    }

    v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v49 objects:v53 count:16];
  }

  while (v3);

  v36 = 0.0;
  v37 = 0.0;
  v38 = 0.0;
  if (v5 >= 5.0)
  {
    v48 = 0;
    [(VCPVideoHumanActionAnalyzer *)self computeVar:9 index2:5 interVar:&v48 + 4 intraVar:&v48, 0.0, 0.0, 0.0];
    v40 = v48;
    LODWORD(v46) = HIDWORD(v40);
    LODWORD(v39) = v40;
    [(VCPVideoHumanActionAnalyzer *)self computeVar:10 index2:6 interVar:&v48 + 4 intraVar:&v48];
    v41 = v48;
    [(VCPVideoHumanActionAnalyzer *)self computeVar:15 index2:11 interVar:&v48 + 4 intraVar:&v48];
    v42 = v48;
    [(VCPVideoHumanActionAnalyzer *)self computeVar:16 index2:12 interVar:&v48 + 4 intraVar:&v48];
    v36 = v6 / 84.0;
    v43 = (v7 / v5) * ((v7 / v5) * 4.0);
    v44 = sqrtf(fmaxf(((((v46 + 0.0) + *(&v41 + 1)) + *(&v42 + 1)) + *(&v48 + 1)) / v43, 0.0));
    v45 = sqrtf(fmaxf(((((v39 + 0.0) + *&v41) + *&v42) + *&v48) / v43, 0.0));
    v38 = v44 + v44;
    v37 = v45 + v45;
  }

LABEL_25:
  if (v36 > 0.5)
  {
    v36 = 0.5;
  }

  self->_actionScoreAbsolute = fminf(v38 * v36, 1.0);
  self->_actionScoreRelative = fminf(v37 * v36, 1.0);
}

- (CGRect)scaleRect:(CGRect)a3 scaleX:(float)a4 scaleY:(float)a5
{
  v5 = a4;
  v6 = a3.origin.x * v5;
  v7 = a5;
  v8 = a3.origin.y * v7;
  v9 = a3.size.width * v5;
  v10 = a3.size.height * v7;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (float)intersectionOverUnion:(CGRect)a3 rect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v15 = CGRectIntersection(a3, a4);
  v13 = v15.size.height;
  v14 = v15.size.width;
  v15.origin.x = v11;
  v15.origin.y = v10;
  v15.size.width = v9;
  v15.size.height = v8;
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v16 = CGRectUnion(v15, v17);
  return v14 * v13 / (v16.size.width * v16.size.height + 0.00999999978);
}

- (id)associatePerson:(CGRect)a3 withPHFaces:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v47 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  MidX = CGRectGetMidX(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  MidY = CGRectGetMidY(v50);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = self->_phFaces;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = MidX;
    v16 = MidY;
    v17 = width * height;
    v18 = v17 * 0.7;
    v19 = v17 * 1.3;
    v20 = 3.4028e38;
    v21 = *v43;
    v22 = v16;
    v23 = v15;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v12);
        }

        v25 = *(*(&v42 + 1) + 8 * i);
        [v25 bodyWidth];
        v27 = v26;
        [v25 bodyHeight];
        if (v27 * v28 > 0.0)
        {
          [v25 bodyWidth];
          v30 = v29;
          [v25 bodyHeight];
          v32 = v31;
          [v25 bodyCenterX];
          v34 = v33;
          [v25 bodyCenterY];
          v35 = v30 * v32;
          v37 = vabdd_f64(v23, v34) + vabdd_f64(v22, v36);
          v38 = v20 > v37 && v18 < v35;
          if (v38 && v19 > v35)
          {
            v40 = v25;

            v20 = v37;
            v14 = v40;
          }
        }
      }

      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v13);

    if (v14)
    {
      [(NSMutableArray *)self->_phFaces removeObject:v14];
    }
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

- (int)processPersons:(id)a3 humanBounds:(id)a4 dominantPersonIdx:(int)a5 frame:(__CVBuffer *)a6 timestamp:(id *)a7 duration:(id *)a8 frameStats:(id)a9
{
  v158 = *MEMORY[0x1E69E9840];
  v138 = a3;
  v139 = a4;
  v140 = a9;
  Width = CVPixelBufferGetWidth(a6);
  Height = CVPixelBufferGetHeight(a6);
  var3 = a7->var3;
  *(&self->_humanPoseScore + 1) = *&a7->var0;
  *&self->_lastHumanTimestamp.flags = var3;
  v141 = [v138 objectAtIndexedSubscript:a5];
  v17 = [v138 objectAtIndexedSubscript:0];
  [v138 setObject:v17 atIndexedSubscript:a5];

  [v138 setObject:v141 atIndexedSubscript:0];
  v18 = [v139 objectAtIndexedSubscript:a5];
  p_humanRect = &self->_humanRect;
  self->_humanRect = NSRectFromString(v18);

  x = self->_humanRect.origin.x;
  y = self->_humanRect.origin.y;
  v23 = self->_humanRect.size.width;
  v22 = self->_humanRect.size.height;
  [v140 faceArea];
  if (v24 <= 0.2 && (v25 = x + v23 * 0.5, v26 = y + v22 * 0.5, fmax(self->_humanRect.size.width, self->_humanRect.size.height) >= fminf(fabsf(v25 + -0.5), fabsf(v26 + -0.5))))
  {
    v27 = [v141 count];
    v28 = &OBJC_IVAR___VCPVideoMetaFocusSegment__focusStatus;
    v136 = a7;
    v137 = self;
    v135 = &self->_humanRect;
    if (v27)
    {
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v29 = v141;
      v30 = [v29 countByEnumeratingWithState:&v143 objects:v157 count:16];
      v133 = Width;
      v134 = a6;
      v132 = Height;
      if (v30)
      {
        v31 = 0;
        v32 = 0;
        v33 = *v144;
        v34 = 1.0;
        v35 = 0.0;
        v36 = 0.0;
        v37 = 1.0;
        do
        {
          v38 = 0;
          v39 = v31;
          v31 += v30;
          do
          {
            if (*v144 != v33)
            {
              objc_enumerationMutation(v29);
            }

            v40 = *(*(&v143 + 1) + 8 * v38);
            v41 = [v40 objectAtIndexedSubscript:2];
            [v41 floatValue];
            v43 = v42 > 0.1;

            if (v43)
            {
              v44 = [v40 objectAtIndexedSubscript:0];
              [v44 floatValue];
              if (v45 < v37)
              {
                v37 = v45;
              }

              v46 = [v40 objectAtIndexedSubscript:1];
              [v46 floatValue];
              if (v47 < v34)
              {
                v34 = v47;
              }

              v48 = [v40 objectAtIndexedSubscript:0];
              [v48 floatValue];
              if (v36 < v49)
              {
                v36 = v49;
              }

              v50 = [v40 objectAtIndexedSubscript:1];
              [v50 floatValue];
              if (v35 < v51)
              {
                v35 = v51;
              }

              if (v39 > 2)
              {
                ++v32;
              }
            }

            ++v39;
            ++v38;
          }

          while (v30 != v38);
          v30 = [v29 countByEnumeratingWithState:&v143 objects:v157 count:16];
        }

        while (v30);
        v52 = v32 > 5;
      }

      else
      {
        v52 = 0;
        v34 = 1.0;
        v35 = 0.0;
        v36 = 0.0;
        v37 = 1.0;
      }

      LODWORD(v55) = 1036831949;
      v54 = [VCPHuman flagsFromKeypoints:v29 withMinConfidence:v55];
      a7 = v136;
      self = v137;
      v28 = &OBJC_IVAR___VCPVideoMetaFocusSegment__focusStatus;
      if ((v54 & 0x100000) != 0)
      {
        v137->_humanPoseScore = v137->_humanPoseScore + 0.5;
      }

      p_humanRect = v135;
      if ((v54 & 0x200000) != 0)
      {
        v137->_humanPoseScore = v137->_humanPoseScore + 0.5;
      }

      if (v52)
      {
        v56 = v137->_actionScoreAbsolute * 0.3;
        if (v56 > 0.15)
        {
          v56 = 0.15;
        }

        v57 = v56 + 0.25;
        v58 = v35 - v34;
        if ((v35 - v34) < (v36 - v37))
        {
          v58 = v36 - v37;
        }

        v59 = v58 * 1.2;
        if (v59 >= v57)
        {
          v57 = v59;
        }

        if (v57 > 0.5)
        {
          v57 = 0.5;
        }

        v60 = (v133 / v132) * v57;
        if (v133 > v132)
        {
          v60 = v57;
          v57 = (v132 / v133) * v57;
        }

        v61 = v137->_crop.size.width;
        v62 = (v61 * 0.8) * 0.5;
        if (v57 < v62)
        {
          v57 = v62;
        }

        v63 = (v36 + v37) * 0.5;
        v64 = (v35 + v34) * 0.5;
        v65 = v137->_crop.size.height;
        v66 = (v65 * 0.8) * 0.5;
        if (v60 >= v66)
        {
          v66 = v60;
        }

        v67 = v63 - v57;
        v68 = 0.01;
        if ((v63 - v57) < 0.01)
        {
          v67 = 0.01;
        }

        v69 = v63 + v57;
        v70 = 0.99;
        if (v69 <= 0.99)
        {
          v71 = v69;
        }

        else
        {
          v71 = 0.99;
        }

        if ((v64 - v66) >= 0.01)
        {
          v68 = v64 - v66;
        }

        if ((v64 + v66) <= 0.99)
        {
          v70 = v64 + v66;
        }

        v137->_crop.origin.x = v67;
        v137->_crop.origin.y = v68;
        v137->_crop.size.width = (v71 - v67);
        v137->_crop.size.height = (v70 - v68);
        [VCPVideoHumanActionAnalyzer scaleRect:v137 scaleX:"scaleRect:scaleX:scaleY:" scaleY:?];
        v73 = v72;
        v75 = v74;
        v77 = v76;
        v79 = v78;
        v80 = [VCPVideoObjectTracker alloc];
        time = *v136;
        v81 = [(VCPVideoObjectTracker *)v80 initWithObjectBounds:v134 inFrame:&time timestamp:v73, v75, v77, v79];
        tracker = v137->_tracker;
        v137->_tracker = v81;

        v53 = 1;
        a7 = v136;
        self = v137;
        p_humanRect = v135;
        v28 = &OBJC_IVAR___VCPVideoMetaFocusSegment__focusStatus;
      }

      else
      {
        v53 = 0;
      }
    }

    else
    {
      v53 = 0;
      v54 = 0;
    }

    v83 = fmin(fmax(p_humanRect->size.width, p_humanRect->size.height), 0.5);
    v84 = v28[321];
    *(&self->super.super.isa + v84) = *(&self->super.super.isa + v84) * (v83 + 0.5);
    [v140 setHumanPoseScore:?];
    if ([(NSMutableArray *)self->_bodyArray count]>= 7)
    {
      [(NSMutableArray *)self->_bodyArray removeObjectAtIndex:0];
    }

    [(NSMutableArray *)self->_bodyArray addObject:v141];
    if (v53)
    {
      v155[0] = @"humanKeypoints";
      v155[1] = @"humanBounds";
      v156[0] = v138;
      v156[1] = v139;
      v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v156 forKeys:v155 count:2];
      keyPersonResults = self->_keyPersonResults;
      v153[0] = @"start";
      time = *a7;
      v87 = CMTimeCopyAsDictionary(&time, 0);
      v154[0] = v87;
      v153[1] = @"duration";
      CMTimeMake(&rhs, 150, 1000);
      time = rhs;
      v88 = CMTimeCopyAsDictionary(&time, 0);
      v154[1] = v88;
      v153[2] = @"flags";
      v89 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v54];
      v153[3] = @"attributes";
      v154[2] = v89;
      v154[3] = v85;
      v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:v153 count:4];
      [(NSMutableArray *)keyPersonResults addObject:v90];

      a7 = v136;
      self = v137;
    }

    if ([(NSMutableArray *)self->_bodyArray count]>= 7)
    {
      [(VCPVideoHumanActionAnalyzer *)self computeActionScore];
      *&v91 = self->_scoreAbsoluteMax;
      if (*&v91 < self->_actionScoreAbsolute)
      {
        *&v91 = self->_actionScoreAbsolute;
      }

      self->_scoreAbsoluteMax = *&v91;
      *&v91 = self->_scoreRelativeMax;
      if (*&v91 < self->_actionScoreRelative)
      {
        *&v91 = self->_actionScoreRelative;
      }

      self->_scoreRelativeMax = *&v91;
      *&v91 = self->_actionScoreRelative;
      [v140 setHumanActionScore:v91];
      v92 = (&self->_endTime.epoch + 4);
      time = *a7;
      rhs = *(&self->_endTime.epoch + 4);
      CMTimeSubtract(&v142, &time, &rhs);
      Seconds = CMTimeGetSeconds(&v142);
      if (Seconds > 1.0)
      {
        v94 = MEMORY[0x1E695DF90];
        v151[0] = @"absoluteScore";
        *&Seconds = self->_scoreAbsoluteMax;
        v95 = [MEMORY[0x1E696AD98] numberWithFloat:Seconds];
        v152[0] = v95;
        v151[1] = @"relativeScore";
        *&v96 = self->_scoreRelativeMax;
        v97 = [MEMORY[0x1E696AD98] numberWithFloat:v96];
        v152[1] = v97;
        v151[2] = @"humanScore";
        LODWORD(v98) = *(&self->super.super.isa + v84);
        v99 = [MEMORY[0x1E696AD98] numberWithFloat:v98];
        v152[2] = v99;
        v100 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v152 forKeys:v151 count:3];
        v101 = [v94 dictionaryWithDictionary:v100];

        v102 = v137;
        if (v137->_timeOfInterest)
        {
          v103 = [(NSMutableArray *)v137->_phFaces count];
          v102 = v137;
          if (v103)
          {
            [(NSNumber *)v137->_timeOfInterest floatValue];
            v105 = v104;
            time = *v136;
            v106 = CMTimeGetSeconds(&time);
            v107 = v105;
            v102 = v137;
            if (v106 > v107)
            {
              *&time.value = *v92;
              time.epoch = *&self->_startTime.flags;
              v108 = CMTimeGetSeconds(&time);
              v102 = v137;
              if (v108 < v107)
              {
                v109 = [(VCPVideoHumanActionAnalyzer *)v137 associatePerson:v137->_phFaces withPHFaces:v135->origin.x, v135->origin.y, v135->size.width, v135->size.height];
                v110 = v109;
                if (v109)
                {
                  v111 = [v109 localIdentifier];
                  v112 = v111 == 0;

                  if (!v112)
                  {
                    v113 = [v110 localIdentifier];
                    [v101 setObject:v113 forKeyedSubscript:@"faceIdentifier"];

                    [v110 bodyCenterX];
                    v115 = v114;
                    [v110 bodyWidth];
                    v117 = v116;
                    [v110 bodyCenterY];
                    v119 = v118;
                    [v110 bodyHeight];
                    v121 = v120;
                    [v110 bodyWidth];
                    v123 = v122;
                    [v110 bodyHeight];
                    v159.size.height = v124;
                    v159.origin.x = v115 + v117 * -0.5;
                    v159.origin.y = v119 + v121 * -0.5;
                    v159.size.width = v123;
                    v125 = NSStringFromRect(v159);
                    [v101 setObject:v125 forKeyedSubscript:@"humanBounds"];
                  }
                }

                v102 = v137;
              }
            }
          }
        }

        actionResults = v102->_actionResults;
        v149[0] = @"start";
        *&time.value = *v92;
        time.epoch = *&self->_startTime.flags;
        v127 = CMTimeCopyAsDictionary(&time, 0);
        v150[0] = v127;
        v149[1] = @"duration";
        time = *v136;
        *&rhs.value = *v92;
        rhs.epoch = *&self->_startTime.flags;
        CMTimeSubtract(&v142, &time, &rhs);
        time = v142;
        v128 = CMTimeCopyAsDictionary(&time, 0);
        v149[2] = @"attributes";
        v150[1] = v128;
        v150[2] = v101;
        v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v150 forKeys:v149 count:3];
        [(NSMutableArray *)actionResults addObject:v129];

        v130 = *&v136->var0;
        *&self->_startTime.flags = v136->var3;
        *v92 = v130;
        v137->_scoreAbsoluteMax = 0.0;
        v137->_scoreRelativeMax = 0.0;
      }
    }

    [v140 setFrameProcessedByHumanAnalyzer:1];
  }

  else
  {
    self->_humanPoseScore = 0.0;
    self->_actionScoreRelative = 0.0;
  }

  return 0;
}

- (void)addActiveResults:(id *)a3
{
  v33 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_activePoseResults count])
  {
    p_timeLastProcessFullFrame = &self->_timeLastProcessFullFrame;
    if (self->_timeLastProcessFullFrame.flags)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = self;
      obj = self->_activePoseResults;
      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
      if (v6)
      {
        v19 = *v23;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v23 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v22 + 1) + 8 * i);
            v30[0] = @"humanBounds";
            [v8 bounds];
            v9 = NSStringFromRect(v34);
            v30[1] = @"humanConfidence";
            v31[0] = v9;
            v10 = MEMORY[0x1E696AD98];
            [v8 confidence];
            v11 = [v10 numberWithFloat:?];
            v31[1] = v11;
            v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

            poseResults = v20->_poseResults;
            v28[0] = @"start";
            time = *p_timeLastProcessFullFrame;
            v14 = CMTimeCopyAsDictionary(&time, 0);
            v29[0] = v14;
            v28[1] = @"duration";
            time = *a3;
            rhs = *p_timeLastProcessFullFrame;
            CMTimeSubtract(&v21, &time, &rhs);
            time = v21;
            v15 = CMTimeCopyAsDictionary(&time, 0);
            v29[1] = v15;
            v28[2] = @"flags";
            v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v8, "flags")}];
            v28[3] = @"attributes";
            v29[2] = v16;
            v29[3] = v12;
            v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];
            [(NSMutableArray *)poseResults addObject:v17];
          }

          v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v32 count:16];
        }

        while (v6);
      }
    }
  }
}

- (int)analyzeFrame:(__CVBuffer *)a3 timestamp:(id *)a4 duration:(id *)a5 frameStats:(id)a6 flags:(unint64_t *)a7
{
  v154 = *MEMORY[0x1E69E9840];
  v114 = a6;
  v148 = 0;
  v113 = [MEMORY[0x1E695DF70] array];
  v111 = [MEMORY[0x1E695DF70] array];
  v107 = a5;
  v130 = self;
  Width = CVPixelBufferGetWidth(a3);
  cf = a3;
  Height = CVPixelBufferGetHeight(a3);
  *&v12 = v130->_humanPoseScore;
  [v114 setHumanPoseScore:v12];
  *&v13 = v130->_actionScoreRelative;
  [v114 setHumanActionScore:v13];
  [v114 setFrameProcessedByHumanAnalyzer:1];
  lhs = *a4;
  rhs = v130->_timeLastProcess;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) < 0.150000006)
  {
    if (!CGRectIsEmpty(v130->_crop))
    {
      tracker = v130->_tracker;
      if (tracker)
      {
        v15 = [(VCPVideoObjectTracker *)tracker trackObjectInFrame:cf];
        if (v15)
        {
          goto LABEL_14;
        }

        [(VCPVideoObjectTracker *)v130->_tracker objectBounds];
        [VCPVideoHumanActionAnalyzer scaleRect:v130 scaleX:"scaleRect:scaleX:scaleY:" scaleY:?];
        v130->_crop.origin.x = v16;
        v130->_crop.origin.y = v17;
        v130->_crop.size.width = v18;
        v130->_crop.size.height = v19;
      }
    }

    if (![v114 frameProcessedByFaceDetector])
    {
      v30 = 0;
      v31 = 0;
      v15 = 0;
      goto LABEL_50;
    }
  }

  v20 = v130->_tracker;
  v130->_tracker = 0;

  v21 = *&a4->var0;
  v130->_timeLastProcess.epoch = a4->var3;
  *&v130->_timeLastProcess.value = v21;
  v130->_humanPoseScore = 0.0;
  v130->_actionScoreAbsolute = 0.0;
  v106 = (&v130->_endTime.epoch + 4);
  if ((v130->_startTime.timescale & 1) == 0)
  {
    v22 = *&a4->var0;
    *&v130->_startTime.flags = a4->var3;
    *v106 = v22;
  }

  p_x = &v130->_crop.origin.x;
  v24 = v130->_crop.size.width;
  v25 = v130->_crop.size.height;
  if (fmin(v24, v25) < 0.100000001)
  {
    v26 = *(MEMORY[0x1E695F058] + 16);
    *p_x = *MEMORY[0x1E695F058];
    v130->_crop.size = v26;
    v24 = v130->_crop.size.width;
    v25 = v130->_crop.size.height;
  }

  v27 = *p_x;
  y = v130->_crop.origin.y;
  if (CGRectIsEmpty(*(&v24 - 2)))
  {
    v148 = CFRetain(cf);
    goto LABEL_15;
  }

  v155.origin.x = *p_x;
  v155.size.width = v130->_crop.size.width;
  v155.size.height = v130->_crop.size.height;
  v29 = 1.0 - v155.size.height - v130->_crop.origin.y;
  v155.origin.y = fmaxf(v29, 0.0);
  v15 = Scaler::ScaleCropped(&v130->_scaler, v155, cf, &v148, Width, Height, 875704422);
  if (v15)
  {
LABEL_14:
    v30 = 0;
    v31 = 0;
    goto LABEL_50;
  }

LABEL_15:
  v32 = v130;
  if (v130->_lastHumanTimestamp.timescale)
  {
    lhs = *a4;
    rhs = *(&v130->_humanPoseScore + 1);
    CMTimeSubtract(&time, &lhs, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    v32 = v130;
    p_tracking = &v130->_tracking;
    v130->_tracking = Seconds < 1.0;
    if (Seconds < 1.0)
    {
      [(VCPImageHumanPoseAnalyzer *)v130->_poseAnalyzer setTrackingMode:1];
      poseAnalyzer = v130->_poseAnalyzer;
      v146 = 0;
      v15 = [(VCPImageHumanPoseAnalyzer *)poseAnalyzer analyzePixelBuffer:v148 flags:a7 results:&v146 cancel:&__block_literal_global_99];
      v36 = v146;
      v109 = v36;
      if (v15)
      {
        v119 = 0;
        goto LABEL_48;
      }

      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v117 = [v36 objectForKeyedSubscript:@"HumanPoseResults"];
      v62 = [v117 countByEnumeratingWithState:&v142 objects:v153 count:16];
      if (v62)
      {
        v122 = v62;
        v118 = 0;
        v116 = 0;
        v119 = 0;
        v120 = *v143;
        v115 = 0.0;
        do
        {
          for (obja = 0; obja != v122; obja = obja + 1)
          {
            if (*v143 != v120)
            {
              objc_enumerationMutation(v117);
            }

            v63 = *(*(&v142 + 1) + 8 * obja);
            v129 = [v63 objectForKeyedSubscript:@"attributes"];
            v131 = [v129 objectForKeyedSubscript:@"humanKeypoints"];
            v64 = [v63 objectForKeyedSubscript:@"flags"];
            v125 = [v64 unsignedIntegerValue];

            v65 = [v129 objectForKeyedSubscript:@"humanBounds"];
            v158 = NSRectFromString(v65);
            x = v158.origin.x;
            v67 = v158.origin.y;
            v68 = v158.size.width;
            v69 = v158.size.height;

            v70 = [v129 objectForKeyedSubscript:@"humanConfidence"];
            [v70 floatValue];
            v123 = v71;

            v72 = fmax(v68, v69);
            if (v72 >= 0.1 && (v72 >= 0.2 || (v125 & 0x100000) != 0))
            {
              if (v131)
              {
                v159.origin.x = *p_x;
                v159.origin.y = v130->_crop.origin.y;
                v159.size.width = v130->_crop.size.width;
                v159.size.height = v130->_crop.size.height;
                v74 = 0.0;
                if (CGRectIsEmpty(v159))
                {
                  v75 = v131;
                }

                else
                {
                  v75 = [MEMORY[0x1E695DF70] array];
                  v140 = 0u;
                  v141 = 0u;
                  v138 = 0u;
                  v139 = 0u;
                  v132 = v131;
                  v76 = [v132 countByEnumeratingWithState:&v138 objects:v152 count:16];
                  if (v76)
                  {
                    v77 = *v139;
                    do
                    {
                      for (i = 0; i != v76; ++i)
                      {
                        if (*v139 != v77)
                        {
                          objc_enumerationMutation(v132);
                        }

                        v79 = *(*(&v138 + 1) + 8 * i);
                        v80 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
                        v81 = MEMORY[0x1E696AD98];
                        v82 = *p_x;
                        v83 = [v79 objectAtIndexedSubscript:0];
                        [v83 floatValue];
                        v85 = [v81 numberWithDouble:v82 + v84 * v130->_crop.size.width];
                        [v80 setObject:v85 atIndexedSubscript:0];

                        v86 = MEMORY[0x1E696AD98];
                        v87 = v130->_crop.origin.y;
                        v88 = [v79 objectAtIndexedSubscript:1];
                        [v88 floatValue];
                        v90 = [v86 numberWithDouble:v87 + v89 * v130->_crop.size.height];
                        [v80 setObject:v90 atIndexedSubscript:1];

                        v91 = [v79 objectAtIndexedSubscript:2];
                        [v91 floatValue];
                        LODWORD(v87) = v92;

                        LODWORD(v93) = LODWORD(v87);
                        v94 = [MEMORY[0x1E696AD98] numberWithFloat:v93];
                        [v80 setObject:v94 atIndexedSubscript:2];

                        [v75 addObject:v80];
                        if (*&v87 > 0.1)
                        {
                          v74 = v74 + 1.0;
                        }
                      }

                      v76 = [v132 countByEnumeratingWithState:&v138 objects:v152 count:16];
                    }

                    while (v76);
                  }

                  v131 = v75;
                }

                [v113 addObject:v75];
              }

              else
              {
                v131 = 0;
                v74 = 0.0;
              }

              v160.origin.x = x;
              v160.origin.y = v67;
              v160.size.width = v68;
              v160.size.height = v69;
              if (CGRectIsEmpty(v160))
              {
                v95 = v119;
              }

              else
              {
                v161.origin.x = *p_x;
                v161.origin.y = v130->_crop.origin.y;
                v161.size.width = v130->_crop.size.width;
                v161.size.height = v130->_crop.size.height;
                if (!CGRectIsEmpty(v161))
                {
                  v96 = v130->_crop.size.width;
                  v97 = v130->_crop.size.height;
                  x = *p_x + x * v96;
                  v67 = v130->_crop.origin.y + v67 * v97;
                  v68 = v68 * v96;
                  v69 = v69 * v97;
                }

                v162.origin.x = x;
                v162.origin.y = v67;
                v162.size.width = v68;
                v162.size.height = v69;
                v98 = NSStringFromRect(v162);
                [v111 addObject:v98];

                if (!CGRectIsEmpty(v130->_humanRect))
                {
                  [(VCPVideoHumanActionAnalyzer *)v130 intersectionOverUnion:v130->_humanRect.origin.x rect:v130->_humanRect.origin.y, v130->_humanRect.size.width, v130->_humanRect.size.height, x, v67, v68, v69];
                  v74 = v99 + 0.1;
                }

                v95 = objc_alloc_init(VCPHuman);

                [(VCPHuman *)v95 setFlags:v125];
                LODWORD(v100) = v123;
                [(VCPHuman *)v95 setConfidence:v100];
                [(VCPHuman *)v95 setBounds:x, v67, v68, v69];
              }

              v101 = v115;
              v102 = v74 <= v115;
              if (v74 > v115)
              {
                v101 = v74;
              }

              v115 = v101;
              v103 = v118;
              if (!v102)
              {
                v103 = v116;
              }

              v118 = v103;
              ++v116;
              v119 = v95;
            }
          }

          v122 = [v117 countByEnumeratingWithState:&v142 objects:v153 count:16];
        }

        while (v122);
      }

      else
      {
        v118 = 0;
        v119 = 0;
      }

      v104 = [v111 count];
      if (v104 != [v113 count])
      {
        v15 = -50;
        goto LABEL_48;
      }

      v33 = 1;
      v32 = v130;
    }

    else
    {
      v33 = 0;
      v118 = 0;
      v119 = 0;
      v109 = 0;
    }
  }

  else
  {
    v33 = 0;
    v118 = 0;
    v119 = 0;
    v109 = 0;
    p_tracking = &v130->_tracking;
    v130->_tracking = 0;
  }

  p_timeLastProcessFullFrame = &v32->_timeLastProcessFullFrame;
  lhs = *a4;
  rhs = v32->_timeLastProcessFullFrame;
  CMTimeSubtract(&time, &lhs, &rhs);
  if (CMTimeGetSeconds(&time) < 1.0)
  {
LABEL_43:
    if ([v113 count])
    {
      lhs = *a4;
      rhs = *v107;
      v15 = [(VCPVideoHumanActionAnalyzer *)v130 processPersons:v113 humanBounds:v111 dominantPersonIdx:v118 frame:cf timestamp:&lhs duration:&rhs frameStats:v114];
    }

    else
    {
      v57 = MEMORY[0x1E695F058];
      v58 = *(MEMORY[0x1E695F058] + 16);
      v130->_humanRect.origin = *MEMORY[0x1E695F058];
      v130->_humanRect.size = v58;
      if (!*p_tracking)
      {
        v59 = v57[1];
        *p_x = *v57;
        v130->_crop.size = v59;
      }

      [(NSMutableArray *)v130->_bodyArray removeAllObjects];
      v15 = 0;
      v60 = *&a4->var0;
      *&v130->_startTime.flags = a4->var3;
      *v106 = v60;
    }

    goto LABEL_48;
  }

  v121 = p_timeLastProcessFullFrame;
  v156.origin.x = *p_x;
  v156.origin.y = v130->_crop.origin.y;
  v156.size.width = v130->_crop.size.width;
  v156.size.height = v130->_crop.size.height;
  if ((v33 & CGRectIsEmpty(v156)) == 1)
  {
    v38 = v109;
LABEL_27:
    lhs = *a4;
    [(VCPVideoHumanActionAnalyzer *)v130 addActiveResults:&lhs];
    [(NSMutableArray *)v130->_activePoseResults removeAllObjects];
    v41 = [v38 objectForKeyedSubscript:?];
    v124 = v38;
    v42 = [v41 count];
    if (v42 <= [v111 count] && objc_msgSend(v111, "count") == 1)
    {

      if (v119)
      {
        [(NSMutableArray *)v130->_activePoseResults addObject:v119];
LABEL_40:
        v53 = *&a4->var0;
        v121->epoch = a4->var3;
        *&v121->value = v53;
        v54 = [v38 objectForKeyedSubscript:@"HumanPoseResults"];
        v55 = [v54 count] == 0;

        if (!v55)
        {
          v56 = *&a4->var0;
          *&v130->_lastHumanTimestamp.flags = a4->var3;
          *(&v130->_humanPoseScore + 1) = v56;
        }

        goto LABEL_43;
      }
    }

    else
    {
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v43 = [v38 objectForKeyedSubscript:@"HumanPoseResults"];
    obj = v43;
    v44 = [v43 countByEnumeratingWithState:&v133 objects:v151 count:16];
    if (v44)
    {
      v128 = *v134;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v134 != v128)
          {
            objc_enumerationMutation(obj);
          }

          v46 = *(*(&v133 + 1) + 8 * j);
          v47 = [v46 objectForKeyedSubscript:@"attributes"];
          v48 = [v46 objectForKeyedSubscript:@"flags"];
          v49 = [v48 unsignedIntegerValue];

          v50 = objc_alloc_init(VCPHuman);
          [(VCPHuman *)v50 setFlags:v49];
          v51 = [v47 objectForKeyedSubscript:@"humanBounds"];
          v157 = NSRectFromString(v51);
          [(VCPHuman *)v50 setBounds:v157.origin.x, v157.origin.y, v157.size.width, v157.size.height];

          v52 = [v47 objectForKeyedSubscript:@"humanConfidence"];
          [v52 floatValue];
          [(VCPHuman *)v50 setConfidence:?];

          [(NSMutableArray *)v130->_activePoseResults addObject:v50];
        }

        v43 = obj;
        v44 = [obj countByEnumeratingWithState:&v133 objects:v151 count:16];
      }

      while (v44);
    }

    v38 = v124;
    goto LABEL_40;
  }

  v39 = v130->_poseAnalyzer;
  v137 = 0;
  v15 = [(VCPImageHumanPoseAnalyzer *)v39 analyzePixelBuffer:cf flags:a7 results:&v137 cancel:&__block_literal_global_345_1];
  v40 = v137;
  v38 = v40;
  if (!v15)
  {
    goto LABEL_27;
  }

LABEL_48:
  v31 = v109;
  v30 = v119;
  if (v148)
  {
    CFRelease(v148);
  }

LABEL_50:

  return v15;
}

- (int)finishAnalysisPass:(id *)a3
{
  var1 = a3->var1;
  [(VCPVideoHumanActionAnalyzer *)self addActiveResults:&var1];
  [(NSMutableArray *)self->_activePoseResults removeAllObjects];
  return 0;
}

- (id)clipResults:(id *)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v34 = [MEMORY[0x1E695DF70] array];
  v33 = [MEMORY[0x1E695DF70] array];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = self->_actionResults;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v4)
  {
    v35 = *v42;
    do
    {
      v36 = v4;
      for (i = 0; i != v36; ++i)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * i);
        memset(&v40, 0, sizeof(v40));
        CMTimeRangeMakeFromDictionary(&v40, v6);
        v7 = *&a3->var0.var3;
        *&range.start.value = *&a3->var0.var0;
        *&range.start.epoch = v7;
        *&range.duration.timescale = *&a3->var1.var1;
        memset(&v39, 0, sizeof(v39));
        otherRange = v40;
        CMTimeRangeGetIntersection(&v39, &range, &otherRange);
        if ((v39.start.flags & 1) != 0 && (v39.duration.flags & 1) != 0 && !v39.duration.epoch && (v39.duration.value & 0x8000000000000000) == 0)
        {
          range.start = v39.duration;
          *&otherRange.start.value = *MEMORY[0x1E6960CC0];
          otherRange.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
          if (!CMTimeCompare(&range.start, &otherRange.start))
          {
            continue;
          }
        }

        v53[0] = @"start";
        *&range.start.value = *&v39.start.value;
        range.start.epoch = v39.start.epoch;
        v8 = CMTimeCopyAsDictionary(&range.start, 0);
        v54[0] = v8;
        v53[1] = @"duration";
        range.start = v39.duration;
        v9 = CMTimeCopyAsDictionary(&range.start, 0);
        v54[1] = v9;
        v53[2] = @"quality";
        v10 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"attributes"];
        v11 = [v10 objectForKeyedSubscript:@"humanScore"];
        v54[2] = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:3];
        [v34 addObject:v12];

        v51[0] = @"start";
        *&range.start.value = *&v39.start.value;
        range.start.epoch = v39.start.epoch;
        v13 = CMTimeCopyAsDictionary(&range.start, 0);
        v52[0] = v13;
        v51[1] = @"duration";
        range.start = v39.duration;
        v14 = CMTimeCopyAsDictionary(&range.start, 0);
        v52[1] = v14;
        v51[2] = @"quality";
        v15 = [(__CFDictionary *)v6 objectForKeyedSubscript:@"attributes"];
        v16 = [v15 objectForKeyedSubscript:@"absoluteScore"];
        v52[2] = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
        [v33 addObject:v17];
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v4);
  }

  memset(&range, 0, 24);
  v18 = *&a3->var0.var3;
  *&v40.start.value = *&a3->var0.var0;
  *&v40.start.epoch = v18;
  *&v40.duration.timescale = *&a3->var1.var1;
  CMTimeRangeGetEnd(&otherRange.start, &v40);
  *&v40.start.value = *&otherRange.start.value;
  v40.start.epoch = otherRange.start.epoch;
  *&v39.start.value = *(&self->_endTime.epoch + 4);
  v39.start.epoch = *&self->_startTime.flags;
  CMTimeSubtract(&range.start, &v40.start, &v39.start);
  v49[0] = @"start";
  *&v40.start.value = *(&self->_endTime.epoch + 4);
  v40.start.epoch = *&self->_startTime.flags;
  v19 = CMTimeCopyAsDictionary(&v40.start, 0);
  v50[0] = v19;
  v49[1] = @"duration";
  *&v40.start.value = *&range.start.value;
  v40.start.epoch = range.start.epoch;
  v20 = CMTimeCopyAsDictionary(&v40.start, 0);
  v50[1] = v20;
  v49[2] = @"quality";
  *&v21 = self->_humanPoseScore;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v50[2] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:3];
  [v34 addObject:v23];

  v47[0] = @"start";
  *&v40.start.value = *(&self->_endTime.epoch + 4);
  v40.start.epoch = *&self->_startTime.flags;
  v24 = CMTimeCopyAsDictionary(&v40.start, 0);
  v48[0] = v24;
  v47[1] = @"duration";
  *&v40.start.value = *&range.start.value;
  v40.start.epoch = range.start.epoch;
  v25 = CMTimeCopyAsDictionary(&v40.start, 0);
  v48[1] = v25;
  v47[2] = @"quality";
  *&v26 = self->_scoreAbsoluteMax;
  v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  v48[2] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
  [v33 addObject:v28];

  v45[0] = @"HumanActionResults";
  v45[1] = @"HumanPoseResults";
  v46[0] = v33;
  v46[1] = v34;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

  return v29;
}

- (id)results
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_poseResults count])
  {
    [v3 setObject:self->_poseResults forKeyedSubscript:@"HumanPoseResults"];
  }

  if ([(NSMutableArray *)self->_actionResults count])
  {
    [v3 setObject:self->_actionResults forKeyedSubscript:@"HumanActionResults"];
  }

  return v3;
}

- (id)privateResults
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_keyPersonResults count];
  if (v3)
  {
    keyPersonResults = self->_keyPersonResults;
    v6 = @"HumanPoseInternalResults";
    v7[0] = keyPersonResults;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 39) = 0;
  *(self + 80) = 0;
  return self;
}

@end