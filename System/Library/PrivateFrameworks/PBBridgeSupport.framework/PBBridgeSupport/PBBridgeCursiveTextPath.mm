@interface PBBridgeCursiveTextPath
- (CGAffineTransform)transformForRect:(SEL)rect pointSize:(CGRect)size flipped:(double)flipped;
- (CGPath)pathForFraction:(float)fraction calculateLength:(BOOL)length startFraction:(float)startFraction;
- (CGRect)boundingBoxOfPath;
- (PBBridgeCursiveTextPath)initWithURL:(id)l options:(id)options;
- (float)animationDuration;
@end

@implementation PBBridgeCursiveTextPath

- (PBBridgeCursiveTextPath)initWithURL:(id)l options:(id)options
{
  v28 = *MEMORY[0x277D85DE8];
  lCopy = l;
  optionsCopy = options;
  v23.receiver = self;
  v23.super_class = PBBridgeCursiveTextPath;
  v8 = [(PBBridgeCursiveTextPath *)&v23 init];
  v9 = v8;
  if (!v8)
  {
LABEL_13:
    v17 = v9;
    goto LABEL_14;
  }

  *&v8->_initialWeight = 0x3F8000003F266666;
  v8->_rampTime = 0.25;
  v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];
  if (v10)
  {
    v11 = v10;
    v12 = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:0 format:0 error:0];
    if (v12)
    {
      pathDefinition = v9->_pathDefinition;
      v9->_pathDefinition = v12;

      v14 = [optionsCopy objectForKeyedSubscript:@"resolution"];
      v15 = v14;
      if (v14)
      {
        intValue = [v14 intValue];
      }

      else
      {
        intValue = 40;
      }

      v9->_resolution = intValue;
      v18 = [(PBBridgeCursiveTextPath *)v9 pathForFraction:1 calculateLength:0.0 startFraction:0.0];
      v9->_boundingBoxOfPath = CGPathGetPathBoundingBox(v18);
      CGPathRelease(v18);
      v19 = [optionsCopy objectForKeyedSubscript:@"enableErase"];
      v20 = v19;
      if (v19)
      {
        LOBYTE(v19) = [v19 BOOLValue];
      }

      v9->_enableErase = v19;
      v9->_duration = (powf((fminf(fmaxf(v9->_length / 3000.0, 0.0), 10.0) / 10.0) + -1.0, 3.0) + 1.0) * 4.0;

      goto LABEL_13;
    }
  }

  else
  {
    v11 = pbb_setup_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v25 = "[PBBridgeCursiveTextPath initWithURL:options:]";
      v26 = 2112;
      v27 = lCopy;
      _os_log_impl(&dword_25DE64000, v11, OS_LOG_TYPE_DEFAULT, "%s - No data loaded from URL: %@", buf, 0x16u);
    }
  }

  v17 = 0;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

- (CGAffineTransform)transformForRect:(SEL)rect pointSize:(CGRect)size flipped:(double)flipped
{
  result = self->_pathDefinition;
  if (result)
  {
    v9 = a6;
    height = size.size.height;
    width = size.size.width;
    v13 = [(CGAffineTransform *)result objectForKeyedSubscript:@"unitsPerEm", size.origin.x, size.origin.y];
    [v13 floatValue];
    v15 = v14;

    v16 = [(NSDictionary *)self->_pathDefinition objectForKeyedSubscript:@"ascender"];
    [v16 floatValue];
    v18 = v17;

    v19 = [(NSDictionary *)self->_pathDefinition objectForKeyedSubscript:@"descender"];
    [v19 floatValue];
    v21 = v20;

    v22 = v18 - v21;
    v23 = -v21 / (v18 - v21);
    v24 = v22 / v15 * flipped;
    v25 = (height - v24) * 0.5;
    *&v22 = v22;
    self->_lineHeight = *&v22;
    x = self->_boundingBoxOfPath.origin.x;
    v27 = self->_boundingBoxOfPath.size.width;
    *&retstr->a = 0u;
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    CGAffineTransformMakeTranslation(retstr, -(x + v27 * 0.5), 0.0);
    if (v9)
    {
      v28 = 1.0 - v23;
    }

    else
    {
      v28 = v23;
    }

    v29 = v25 + v28 * v24;
    v30 = flipped / v15;
    self->_scale = v30;
    v31 = -(flipped / v15);
    if (!v9)
    {
      v31 = flipped / v15;
    }

    CGAffineTransformMakeScale(&t2, flipped / v15, v31);
    v32 = *&retstr->c;
    *&v39.a = *&retstr->a;
    *&v39.c = v32;
    *&v39.tx = *&retstr->tx;
    CGAffineTransformConcat(&v41, &v39, &t2);
    v33 = *&v41.c;
    *&retstr->a = *&v41.a;
    *&retstr->c = v33;
    *&retstr->tx = *&v41.tx;
    CGAffineTransformMakeTranslation(&t2, width * 0.5, v29);
    v34 = *&retstr->c;
    *&v39.a = *&retstr->a;
    *&v39.c = v34;
    *&v39.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&v41, &v39, &t2);
    v35 = *&v41.c;
    *&retstr->a = *&v41.a;
    *&retstr->c = v35;
    v36 = *&v41.tx;
  }

  else
  {
    v37 = MEMORY[0x277CBF2C0];
    v38 = *(MEMORY[0x277CBF2C0] + 16);
    *&retstr->a = *MEMORY[0x277CBF2C0];
    *&retstr->c = v38;
    v36 = *(v37 + 32);
  }

  *&retstr->tx = v36;
  return result;
}

- (float)animationDuration
{
  result = self->_duration;
  if (self->_enableErase)
  {
    return result + result;
  }

  return result;
}

- (CGRect)boundingBoxOfPath
{
  x = self->_boundingBoxOfPath.origin.x;
  y = self->_boundingBoxOfPath.origin.y;
  width = self->_boundingBoxOfPath.size.width;
  height = self->_boundingBoxOfPath.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPath)pathForFraction:(float)fraction calculateLength:(BOOL)length startFraction:(float)startFraction
{
  lengthCopy = length;
  v172 = *MEMORY[0x277D85DE8];
  duration = self->_duration;
  if (duration == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = self->_rampTime / duration;
  }

  v136 = v10;
  v11 = 0x277CBE000uLL;
  array = [MEMORY[0x277CBEB18] array];
  v13 = [(NSDictionary *)self->_pathDefinition objectForKeyedSubscript:@"scale"];
  v14 = v13;
  __asm { FMOV            V0.4S, #1.0 }

  v131 = *&_Q0;
  if (v13 && [v13 count] == 4)
  {
    v20 = [v14 objectAtIndexedSubscript:0];
    [v20 floatValue];
    v132 = v21;

    v22 = [v14 objectAtIndexedSubscript:1];
    [v22 floatValue];
    v142 = v23;

    v24 = [v14 objectAtIndexedSubscript:2];
    [v24 floatValue];

    v25 = [v14 objectAtIndexedSubscript:3];
    [v25 floatValue];
    v131 = COERCE_DOUBLE(__PAIR64__(v142, v132));
  }

  v126 = v14;
  [(NSDictionary *)self->_pathDefinition objectForKeyedSubscript:@"strokes"];
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v26 = v166 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v163 objects:v171 count:16];
  v127 = v26;
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = 0;
    v31 = -v136 + (v136 + 1.0) * fraction;
    v32 = startFraction * 1.25 + -0.25;
    v33 = *v164;
    v133 = (startFraction * -0.5) + 1.0;
    v134 = v31;
    v135 = v136 + v31;
    v143 = 0u;
    v34 = 0.0;
    v123 = *v164;
    v124 = array;
    do
    {
      v35 = 0;
      do
      {
        if (*v164 != v33)
        {
          objc_enumerationMutation(v26);
        }

        v125 = v35;
        v36 = *(*(&v163 + 1) + 8 * v35);
        array2 = [*(v11 + 2840) array];
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        obj = v36;
        v128 = [obj countByEnumeratingWithState:&v159 objects:v170 count:16];
        if (v128)
        {
          v129 = *v160;
          v122 = v28;
          do
          {
            for (i = 0; i != v128; ++i)
            {
              if (*v160 != v129)
              {
                objc_enumerationMutation(obj);
              }

              v39 = [[BezierCurve alloc] initWithDictionary:*(*(&v159 + 1) + 8 * i)];
              [(BezierCurve *)v39 scaleBy:v131];
              [(BezierCurve *)v39 p0];
              *path1c = v40;
              [(BezierCurve *)v39 p3];
              if ((vminvq_u32(vceqq_f32(*path1c, v41)) & 0x80000000) != 0)
              {
                resolution = 0;
                v43 = v143;
LABEL_21:
                v44 = 0;
                v45 = resolution + 1;
                v46 = v43;
                while (1)
                {
                  *path1 = v46;
                  v47 = 1.0 / self->_resolution * v44;
                  v48 = v47;
                  *&v47 = v48;
                  [(BezierCurve *)v39 pointAt:v47];
                  v144 = v49;
                  v49.f32[0] = v48;
                  [(BezierCurve *)v39 derivativeAt:*v49.i64];
                  *&v51 = -*v50.i32;
                  v50.i32[0] = vdup_lane_s32(v50, 1).u32[0];
                  v50.i32[1] = v51;
                  v52 = vmul_f32(v50, v50);
                  v52.i32[0] = vadd_f32(v52, vdup_lane_s32(v52, 1)).u32[0];
                  v53 = vrsqrte_f32(v52.u32[0]);
                  v54 = vmul_f32(v53, vrsqrts_f32(v52.u32[0], vmul_f32(v53, v53)));
                  v55 = vmul_n_f32(v50, vmul_f32(v54, vrsqrts_f32(v52.u32[0], vmul_f32(v54, v54))).f32[0]);
                  if (v30)
                  {
                    v56 = vsubq_f32(v144, *path1);
                    v57 = vmulq_f32(v56, v56);
                    v58 = sqrtf(v57.f32[2] + vaddv_f32(*v57.f32));
                    v59 = 0.5;
                    if ((v29 & 1) == 0)
                    {
                      v59 = 1.0;
                    }

                    v34 = v34 + v58 * v59;
                    v29 = 0;
                  }

                  v60 = v34 / self->_length;
                  if (v60 >= v32)
                  {
                    path1a = v55;
                    if (startFraction <= 0.0)
                    {
                      startFractionCopy = startFraction;
                      initialWeight = self->_initialWeight;
                      finalWeight = self->_finalWeight;
                      *&v62 = powf((1.0 - fminf(fmaxf((v60 - v134) / v136, 0.0), 1.0)) + -1.0, 3.0);
                      v66 = finalWeight - initialWeight;
                      startFraction = startFractionCopy;
                      *&v62 = initialWeight + ((*&v62 + 1.0) * v66);
                    }

                    else
                    {
                      v61 = v133 * self->_finalWeight;
                      *&v62 = ((powf(fminf(fmaxf((v60 - v32) * 4.0, 0.0), 1.0) + -1.0, 3.0) + 1.0) * (v61 + -0.2)) + 0.2;
                    }

                    if (!lengthCopy && v60 > v135)
                    {
                      array = v124;
                      [v124 addObject:{array2, v62}];

                      v26 = v127;
                      goto LABEL_41;
                    }

                    v67 = vmuls_lane_f32(*&v62, v144, 3);
                    v68 = [PathPoint alloc];
                    *&v69 = v67;
                    *&v70 = v34;
                    v71 = [(PathPoint *)v68 initWithP:*v144.i64 n:COERCE_DOUBLE(vbsl_s8(vdup_n_s32(0xFFFFFFFF) r:path1a l:0x3F80000000000000)), v69, v70];
                    [array2 addObject:v71];
                  }

                  ++v44;
                  v30 = 1;
                  v43 = v144;
                  v46 = v144;
                  if (v45 == v44)
                  {
                    goto LABEL_34;
                  }
                }
              }

              resolution = self->_resolution;
              v43 = v143;
              if ((resolution & 0x80000000) == 0)
              {
                goto LABEL_21;
              }

LABEL_34:
              v143 = v43;

              v29 = 1;
            }

            v26 = v127;
            array = v124;
            v11 = 0x277CBE000;
            v28 = v122;
            v128 = [obj countByEnumeratingWithState:&v159 objects:v170 count:16];
          }

          while (v128);
        }

        [array addObject:array2];
        v35 = v125 + 1;
        v33 = v123;
      }

      while (v125 + 1 != v28);
      v28 = [v26 countByEnumeratingWithState:&v163 objects:v171 count:16];
    }

    while (v28);
  }

  else
  {
    v34 = 0.0;
  }

LABEL_41:

  if (lengthCopy)
  {
    self->_length = v34;
  }

  path1b = CGPathCreateMutable();
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v137 = array;
  v72 = [v137 countByEnumeratingWithState:&v155 objects:v169 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = *v156;
    do
    {
      for (j = 0; j != v73; ++j)
      {
        if (*v156 != v74)
        {
          objc_enumerationMutation(v137);
        }

        v76 = *(*(&v155 + 1) + 8 * j);
        if ([v76 count])
        {
          Mutable = CGPathCreateMutable();
          v78 = [v76 objectAtIndexedSubscript:0];
          [v78 n];
          v80 = -v79;
          [v78 n];
          v82 = atan2f(v80, -v81);
          [v78 p];
          v84 = v83;
          [v78 p];
          v86 = v85;
          [v78 r];
          CGPathAddArc(Mutable, 0, v84, v86, v87, v82, v82 + 3.14159265, 0);
          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v88 = v76;
          v89 = [v88 countByEnumeratingWithState:&v151 objects:v168 count:16];
          if (v89)
          {
            v90 = v89;
            v91 = *v152;
            do
            {
              for (k = 0; k != v90; ++k)
              {
                if (*v152 != v91)
                {
                  objc_enumerationMutation(v88);
                }

                v93 = *(*(&v151 + 1) + 8 * k);
                [v93 p];
                v145 = v94;
                [v93 n];
                v96 = v95;
                [v93 r];
                v98 = vmla_n_f32(v145, v96, v97);
                CGPathAddLineToPoint(Mutable, 0, v98.f32[0], v98.f32[1]);
              }

              v90 = [v88 countByEnumeratingWithState:&v151 objects:v168 count:16];
            }

            while (v90);
          }

          v99 = [v88 objectAtIndexedSubscript:{objc_msgSend(v88, "count") - 1}];

          [v99 n];
          v101 = v100;
          [v99 n];
          v103 = atan2f(v101, v102);
          [v99 p];
          v105 = v104;
          [v99 p];
          v107 = v106;
          [v99 r];
          CGPathAddArc(Mutable, 0, v105, v107, v108, v103, v103 + 3.14159265, 0);
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          reverseObjectEnumerator = [v88 reverseObjectEnumerator];
          v110 = [reverseObjectEnumerator countByEnumeratingWithState:&v147 objects:v167 count:16];
          if (v110)
          {
            v111 = v110;
            v112 = *v148;
            do
            {
              for (m = 0; m != v111; ++m)
              {
                if (*v148 != v112)
                {
                  objc_enumerationMutation(reverseObjectEnumerator);
                }

                v114 = *(*(&v147 + 1) + 8 * m);
                [v114 p];
                v146 = v115;
                [v114 n];
                v117 = v116;
                [v114 r];
                v119 = vmls_lane_f32(v146, v117, v118, 0);
                CGPathAddLineToPoint(Mutable, 0, v119.f32[0], v119.f32[1]);
              }

              v111 = [reverseObjectEnumerator countByEnumeratingWithState:&v147 objects:v167 count:16];
            }

            while (v111);
          }

          CGPathAddPath(path1b, 0, Mutable);
          CGPathRelease(Mutable);
        }
      }

      v73 = [v137 countByEnumeratingWithState:&v155 objects:v169 count:16];
    }

    while (v73);
  }

  v120 = *MEMORY[0x277D85DE8];
  return path1b;
}

@end