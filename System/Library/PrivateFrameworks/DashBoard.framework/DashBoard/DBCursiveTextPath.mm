@interface DBCursiveTextPath
- (CGAffineTransform)transformForRect:(SEL)a3 pointSize:(CGRect)a4 flipped:(double)a5;
- (CGPath)pathForFraction:(double)a3 calculateLength:(BOOL)a4;
- (DBCursiveTextPath)initWithURL:(id)a3 resolution:(int64_t)a4;
@end

@implementation DBCursiveTextPath

- (DBCursiveTextPath)initWithURL:(id)a3 resolution:(int64_t)a4
{
  v144 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v141.receiver = self;
  v141.super_class = DBCursiveTextPath;
  v7 = [(DBCursiveTextPath *)&v141 init];
  v8 = v7;
  if (v7)
  {
    *(v7 + 8) = xmmword_24839BCF0;
    *(v7 + 3) = 0x3FD0000000000000;
    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6];
    if (v9)
    {
      v10 = v9;
      v140 = 0;
      v11 = [MEMORY[0x277CCAC58] propertyListWithData:v9 options:0 format:0 error:&v140];
      v12 = v140;
      v13 = v12;
      if (v11)
      {
        v98 = a4;
        v99 = v12;
        v100 = v10;
        v101 = v6;
        v14 = [v11 objectForKeyedSubscript:@"unitsPerEm"];
        [v14 floatValue];
        *(v8 + 10) = v15;

        v16 = [v11 objectForKeyedSubscript:@"ascender"];
        [v16 floatValue];
        *(v8 + 11) = v17;

        v18 = [v11 objectForKeyedSubscript:@"descender"];
        [v18 floatValue];
        *(v8 + 12) = v19;

        v20 = [v11 objectForKeyedSubscript:@"scale"];
        v21 = v20;
        v130 = 0u;
        if (v20)
        {
          v130 = 0u;
          if ([v20 count] == 4)
          {
            v22 = [v21 objectAtIndexedSubscript:0];
            [v22 floatValue];
            v131 = v23;
            v24 = [v21 objectAtIndexedSubscript:1];
            [v24 floatValue];
            v121 = v25;
            v26 = [v21 objectAtIndexedSubscript:2];
            [v26 floatValue];
            v116 = v27;
            v28 = [v21 objectAtIndexedSubscript:3];
            [v28 floatValue];
            v29.i64[0] = __PAIR64__(v121, v131);
            v29.i64[1] = __PAIR64__(v30, v116);
            v130 = v29;
          }
        }

        v97 = v11;
        v31 = [v11 objectForKeyedSubscript:@"strokes"];
        v96 = [objc_alloc(MEMORY[0x277CCAC20]) initWithOptions:0];
        v32 = [objc_alloc(MEMORY[0x277CCAC18]) initWithPointerFunctions:v96];
        v33 = v8[13];
        v8[13] = v32;

        v34 = [objc_alloc(MEMORY[0x277CCAC20]) initWithOptions:1024];
        [v34 setSizeFunction:BezierCurveStructSize];
        v105 = v34;
        [v34 setRelinquishFunction:BezierCurveStructRelinquish];
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        obj = v31;
        v106 = [obj countByEnumeratingWithState:&v136 objects:v143 count:16];
        if (v106)
        {
          v103 = *v137;
          v104 = v8;
          do
          {
            v35 = 0;
            do
            {
              if (*v137 != v103)
              {
                objc_enumerationMutation(obj);
              }

              v107 = v35;
              v36 = *(*(&v136 + 1) + 8 * v35);
              v115 = [objc_alloc(MEMORY[0x277CCAC18]) initWithPointerFunctions:v105];
              v132 = 0u;
              v133 = 0u;
              v134 = 0u;
              v135 = 0u;
              v108 = v36;
              v37 = [v108 countByEnumeratingWithState:&v132 objects:v142 count:16];
              if (v37)
              {
                v38 = v37;
                v39 = *v133;
                do
                {
                  for (i = 0; i != v38; ++i)
                  {
                    if (*v133 != v39)
                    {
                      objc_enumerationMutation(v108);
                    }

                    v41 = *(*(&v132 + 1) + 8 * i);
                    v42 = malloc_type_calloc(1uLL, 0x40uLL, 0x1000040FA0F61DDuLL);
                    v43 = [v41 objectForKeyedSubscript:@"p0"];
                    v44 = v43;
                    v45 = 0uLL;
                    v117 = 0u;
                    if (v43)
                    {
                      v46 = [v43 count];
                      v45 = 0uLL;
                      if (v46 == 4)
                      {
                        v47 = [v44 objectAtIndexedSubscript:{0, 0.0}];
                        [v47 floatValue];
                        v122 = v48;
                        v49 = [v44 objectAtIndexedSubscript:1];
                        [v49 floatValue];
                        v111 = v50;
                        v51 = [v44 objectAtIndexedSubscript:2];
                        [v51 floatValue];
                        v109 = v52;
                        v53 = [v44 objectAtIndexedSubscript:3];
                        [v53 floatValue];
                        v54.i64[0] = __PAIR64__(v111, v122);
                        v54.i64[1] = __PAIR64__(v55, v109);
                        v123 = v54;

                        v45 = v123;
                      }
                    }

                    v124 = v45;

                    *v42 = vmulq_f32(v130, v124);
                    v56 = [v41 objectForKeyedSubscript:@"p1"];
                    v57 = v56;
                    if (v56 && [v56 count] == 4)
                    {
                      v58 = [v57 objectAtIndexedSubscript:0];
                      [v58 floatValue];
                      v118 = v59;
                      v60 = [v57 objectAtIndexedSubscript:1];
                      [v60 floatValue];
                      v125 = v61;
                      v62 = [v57 objectAtIndexedSubscript:2];
                      [v62 floatValue];
                      v112 = v63;
                      v64 = [v57 objectAtIndexedSubscript:3];
                      [v64 floatValue];
                      v65.i64[0] = __PAIR64__(v125, v118);
                      v65.i64[1] = __PAIR64__(v66, v112);
                      v117 = v65;
                    }

                    v42[1] = vmulq_f32(v130, v117);
                    v67 = [v41 objectForKeyedSubscript:@"p2"];
                    v68 = v67;
                    v69 = 0uLL;
                    v119 = 0u;
                    if (v67)
                    {
                      v70 = [v67 count];
                      v69 = 0uLL;
                      if (v70 == 4)
                      {
                        v71 = [v68 objectAtIndexedSubscript:{0, 0.0}];
                        [v71 floatValue];
                        v126 = v72;
                        v73 = [v68 objectAtIndexedSubscript:1];
                        [v73 floatValue];
                        v113 = v74;
                        v75 = [v68 objectAtIndexedSubscript:2];
                        [v75 floatValue];
                        v110 = v76;
                        v77 = [v68 objectAtIndexedSubscript:3];
                        [v77 floatValue];
                        v78.i64[0] = __PAIR64__(v113, v126);
                        v78.i64[1] = __PAIR64__(v79, v110);
                        v127 = v78;

                        v69 = v127;
                      }
                    }

                    v128 = v69;

                    v42[2] = vmulq_f32(v130, v128);
                    v80 = [v41 objectForKeyedSubscript:@"p3"];
                    v81 = v80;
                    if (v80 && [v80 count] == 4)
                    {
                      v82 = [v81 objectAtIndexedSubscript:0];
                      [v82 floatValue];
                      v120 = v83;
                      v84 = [v81 objectAtIndexedSubscript:1];
                      [v84 floatValue];
                      v129 = v85;
                      v86 = [v81 objectAtIndexedSubscript:2];
                      [v86 floatValue];
                      v114 = v87;
                      v88 = [v81 objectAtIndexedSubscript:3];
                      [v88 floatValue];
                      v89.i64[0] = __PAIR64__(v129, v120);
                      v89.i64[1] = __PAIR64__(v90, v114);
                      v119 = v89;
                    }

                    v42[3] = vmulq_f32(v130, v119);
                    [v115 addPointer:v42];
                  }

                  v38 = [v108 countByEnumeratingWithState:&v132 objects:v142 count:16];
                }

                while (v38);
              }

              v8 = v104;
              [v104[13] addPointer:v115];

              v35 = v107 + 1;
            }

            while (v107 + 1 != v106);
            v106 = [obj countByEnumeratingWithState:&v136 objects:v143 count:16];
          }

          while (v106);
        }

        v8[14] = v98;
        *(v8 + 6) = CGPathGetPathBoundingBox([v8 pathForFraction:1 calculateLength:0.0]);
        v91 = *(v8 + 4) / 3000.0;
        *(v8 + 5) = ((powf((fminf(fmaxf(v91, 0.0), 10.0) / 10.0) + -1.0, 3.0) + 1.0) * 4.0);

        v6 = v101;
        goto LABEL_34;
      }

      v94 = DBLogForCategory(0);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
      {
        [(DBCursiveTextPath *)v6 initWithURL:v13 resolution:v94];
      }
    }

    else
    {
      v93 = DBLogForCategory(0);
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        [DBCursiveTextPath initWithURL:v6 resolution:v93];
      }
    }

    v92 = 0;
    goto LABEL_42;
  }

LABEL_34:
  v92 = v8;
LABEL_42:

  return v92;
}

- (CGAffineTransform)transformForRect:(SEL)a3 pointSize:(CGRect)a4 flipped:(double)a5
{
  v6 = a6;
  descender = self->_descender;
  v10 = self->_ascender - descender;
  v11 = -descender / v10;
  v12 = v10 / self->_unitsPerM * a5;
  v32 = (CGRectGetHeight(a4) - v12) * 0.5;
  x = self->_boundingBoxOfPath.origin.x;
  y = self->_boundingBoxOfPath.origin.y;
  width = self->_boundingBoxOfPath.size.width;
  height = self->_boundingBoxOfPath.size.height;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v18 = CGRectGetWidth(v39);
  CGAffineTransformMakeTranslation(retstr, -(MinX + v18 * 0.5), 0.0);
  if (v6)
  {
    v19 = 1.0 - v11;
  }

  else
  {
    v19 = v11;
  }

  v20 = v32 + v19 * v12;
  v21 = a5 / self->_unitsPerM;
  v22 = -v21;
  if (!v6)
  {
    v22 = a5 / self->_unitsPerM;
  }

  CGAffineTransformMakeScale(&t2, v21, v22);
  v23 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v23;
  *&t1.tx = *&retstr->tx;
  CGAffineTransformConcat(&v37, &t1, &t2);
  v24 = *&v37.c;
  *&retstr->a = *&v37.a;
  *&retstr->c = v24;
  *&retstr->tx = *&v37.tx;
  v25 = a4.origin.x;
  *&v24 = a4.origin.y;
  v26 = a4.size.width;
  v27 = a4.size.height;
  v28 = CGRectGetWidth(*(&v24 - 8));
  CGAffineTransformMakeTranslation(&t2, v28 * 0.5, v20);
  v29 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v29;
  *&t1.tx = *&retstr->tx;
  result = CGAffineTransformConcat(&v37, &t1, &t2);
  v31 = *&v37.c;
  *&retstr->a = *&v37.a;
  *&retstr->c = v31;
  *&retstr->tx = *&v37.tx;
  return result;
}

- (CGPath)pathForFraction:(double)a3 calculateLength:(BOOL)a4
{
  v4 = a4;
  v119 = *MEMORY[0x277D85DE8];
  rampTime = self->_rampTime;
  duration = self->_duration;
  v9 = 0x277CCA000uLL;
  v96 = [objc_alloc(MEMORY[0x277CCAC20]) initWithOptions:0];
  v10 = [objc_alloc(MEMORY[0x277CCAC18]) initWithPointerFunctions:v96];
  v11 = [objc_alloc(MEMORY[0x277CCAC20]) initWithOptions:1024];
  [v11 setSizeFunction:PathPointStructSize];
  v97 = v11;
  [v11 setRelinquishFunction:PathPointStructRelinquish];
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v104 = 0u;
  v12 = self->_bezierArrays;
  v91 = [(NSPointerArray *)v12 countByEnumeratingWithState:&v113 objects:v118 count:16];
  if (v91)
  {
    v13 = 0;
    v14 = 0;
    v15 = rampTime / duration;
    v16 = 1.0;
    v17 = *v114;
    v98 = v15 - (v15 - (v15 + 1.0) * a3);
    v18 = -(v15 - (v15 + 1.0) * a3);
    v19 = v15;
    v20 = 0.0;
    __asm
    {
      FMOV            V1.4S, #3.0
      FMOV            V0.4S, #-3.0
    }

    v101 = _Q0;
    *obj = _Q1;
    __asm
    {
      FMOV            V1.4S, #-6.0
      FMOV            V0.4S, #6.0
    }

    v99 = _Q0;
    v100 = _Q1;
    v94 = v12;
    v95 = v10;
    v90 = *v114;
    while (2)
    {
      v29 = 0;
      do
      {
        if (*v114 != v17)
        {
          v30 = v29;
          objc_enumerationMutation(v12);
          v29 = v30;
        }

        v92 = v29;
        v31 = *(*(&v113 + 1) + 8 * v29);
        v32 = [objc_alloc(*(v9 + 3096)) initWithPointerFunctions:v97];
        if ([v31 count])
        {
          v33 = 0;
          v34 = v104;
          v93 = v31;
          while (1)
          {
            v105 = v34;
            v35 = [v31 pointerAtIndex:v33];
            if ((vminvq_u32(vceqq_f32(*v35, *(v35 + 48))) & 0x80000000) != 0)
            {
              break;
            }

            resolution = self->_resolution;
            v37 = v105;
            if ((resolution & 0x8000000000000000) == 0)
            {
              goto LABEL_12;
            }

            v38 = v105;
LABEL_20:
            v107 = v38;
            ++v33;
            v31 = v93;
            v66 = [v93 count];
            v67 = v107;
            v13 = 1;
            v34 = v107;
            if (v33 >= v66)
            {
              goto LABEL_23;
            }
          }

          resolution = 0;
          v37 = v105;
LABEL_12:
          v39 = 0;
          v40 = resolution + 1;
          while (1)
          {
            v41 = v16 / self->_resolution * v39;
            v42 = *(v35 + 16);
            v43 = vmulq_f32(v42, *obj);
            v44 = *(v35 + 32);
            v45 = *(v35 + 48);
            v46 = vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v45, v41), v41), v41), vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(v44, *obj), v41), v41), 1.0 - v41), vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(v43, v41), 1.0 - v41), 1.0 - v41), vmulq_n_f32(vmulq_n_f32(vmulq_n_f32(*v35, 1.0 - v41), 1.0 - v41), 1.0 - v41))));
            v47 = vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(v45, *obj), v41), v41), vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(v44, v101), v41), v41), vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(v44, v99), 1.0 - v41), v41), vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(v42, v100), 1.0 - v41), v41), vaddq_f32(vmulq_n_f32(vmulq_n_f32(vmulq_f32(*v35, v101), 1.0 - v41), 1.0 - v41), vmulq_n_f32(vmulq_n_f32(v43, 1.0 - v41), 1.0 - v41)))))).u64[0];
            v48 = -v47.f32[0];
            v47.i32[0] = vdup_lane_s32(v47, 1).u32[0];
            v47.f32[1] = v48;
            v49 = vmul_f32(v47, v47);
            v49.i32[0] = vadd_f32(v49, vdup_lane_s32(v49, 1)).u32[0];
            v50 = vrsqrte_f32(v49.u32[0]);
            v51 = vmul_f32(v50, vrsqrts_f32(v49.u32[0], vmul_f32(v50, v50)));
            v52 = vmul_n_f32(v47, vmul_f32(v51, vrsqrts_f32(v49.u32[0], vmul_f32(v51, v51))).f32[0]);
            if (v14)
            {
              v53 = vsubq_f32(v46, v37);
              v54 = vmulq_f32(v53, v53);
              v55 = sqrtf(v54.f32[2] + vaddv_f32(*v54.f32));
              v56 = 0.5;
              if ((v13 & 1) == 0)
              {
                v56 = v16;
              }

              v20 = v20 + v55 * v56;
              v13 = 0;
            }

            v57 = v20 / self->_length;
            if (!v4 && v57 > v98)
            {
              break;
            }

            v58 = vbsl_s8(vdup_n_s32(0xFFFFFFFF), v52, 0x3F80000000000000);
            v59 = v57;
            v106 = v46;
            v60 = powf((1.0 - fminf(fmaxf((v59 - v18) / v19, 0.0), 1.0)) + -1.0, 3.0);
            finalWeight = self->_finalWeight;
            initialWeight = self->_initialWeight;
            v63 = vmuls_lane_f32(initialWeight + ((v60 + 1.0) * (finalWeight - initialWeight)), v106, 3);
            v14 = 1;
            v65 = malloc_type_calloc(1uLL, 0x18uLL, 0x1000040504FFAC1uLL);
            *v65 = *v106.f32;
            v65[1] = v58;
            *v65[2].i32 = v63;
            *&v64 = v20;
            v65[2].i32[1] = v64;
            v16 = 1.0;
            [v32 addPointer:v65];
            v38 = v106;
            ++v39;
            v37 = v106;
            if (v40 == v39)
            {
              goto LABEL_20;
            }
          }

          v10 = v95;
          [v95 addPointer:{v32, *&v52}];

          v12 = v94;
          goto LABEL_28;
        }

        v67 = v104;
LABEL_23:
        v104 = v67;
        v10 = v95;
        [v95 addPointer:v32];

        v29 = v92 + 1;
        v9 = 0x277CCA000;
        v12 = v94;
        v17 = v90;
      }

      while (v92 + 1 != v91);
      v91 = [(NSPointerArray *)v94 countByEnumeratingWithState:&v113 objects:v118 count:16];
      if (v91)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0.0;
  }

LABEL_28:

  if (v4)
  {
    self->_length = v20;
  }

  Mutable = CGPathCreateMutable();
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  obja = v10;
  v69 = [obja countByEnumeratingWithState:&v109 objects:v117 count:16];
  if (v69)
  {
    v70 = v69;
    v108 = *v110;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v110 != v108)
        {
          objc_enumerationMutation(obja);
        }

        v72 = *(*(&v109 + 1) + 8 * i);
        v73 = [v72 count];
        if (v73)
        {
          v74 = v73;
          v75 = [v72 pointerAtIndex:0];
          v76 = v74 - 1;
          v77 = [v72 pointerAtIndex:v74 - 1];
          v78 = vmla_n_f32(*v75, v75[1], v75[2].f32[0]);
          CGPathMoveToPoint(Mutable, 0, v78.f32[0], v78.f32[1]);
          if ((v74 - 1) >= 2)
          {
            v79 = v74 - 2;
            v80 = 1;
            do
            {
              v81 = [v72 pointerAtIndex:v80];
              v82 = vmla_n_f32(*v81, v81[1], v81[2].f32[0]);
              CGPathAddLineToPoint(Mutable, 0, v82.f32[0], v82.f32[1]);
              ++v80;
              --v79;
            }

            while (v79);
          }

          v83 = atan2f(COERCE_FLOAT(HIDWORD(*(v77 + 8))), COERCE_FLOAT(*(v77 + 8)));
          CGPathAddArc(Mutable, 0, COERCE_FLOAT(*v77), COERCE_FLOAT(HIDWORD(*v77)), *(v77 + 16), v83, v83 + 3.14159265, 0);
          if (v74 - 2 >= 1)
          {
            do
            {
              v84 = [v72 pointerAtIndex:--v76];
              v85.i32[0] = v84[2].i32[0];
              v86 = vmls_lane_f32(*v84, v84[1], v85, 0);
              CGPathAddLineToPoint(Mutable, 0, v86.f32[0], v86.f32[1]);
            }

            while (v76 > 1);
          }

          v87 = atan2f(-COERCE_FLOAT(HIDWORD(*&v75[1])), -COERCE_FLOAT(*&v75[1]));
          CGPathAddArc(Mutable, 0, COERCE_FLOAT(*v75), COERCE_FLOAT(HIDWORD(*v75)), v75[2].f32[0], v87, v87 + 3.14159265, 0);
        }
      }

      v70 = [obja countByEnumeratingWithState:&v109 objects:v117 count:16];
    }

    while (v70);
  }

  v88 = CFAutorelease(Mutable);
  return v88;
}

- (void)initWithURL:(NSObject *)a3 resolution:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 absoluteString];
  v6 = [a2 description];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_248146000, a3, OS_LOG_TYPE_ERROR, "CursiveTextPath: Indecipherable plist for url: %@, error: %@", &v7, 0x16u);
}

- (void)initWithURL:(void *)a1 resolution:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 absoluteString];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "CursiveTextPath: No data for url %@", &v4, 0xCu);
}

@end