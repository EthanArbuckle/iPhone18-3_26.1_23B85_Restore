@interface BWEspressoInferenceBoundingBoxPropagator
- (BWEspressoInferenceBoundingBoxPropagator)initWithBoxRequirement:(id)a3 scoreRequirement:(id)a4 angularOffsetRequirement:(id)a5 fontSizeRequirement:(id)a6 configuration:(id)a7 toInferenceResultKey:(id)a8;
- (void)dealloc;
- (void)matchCurRegions:(uint64_t)a3 curCount:;
- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6;
@end

@implementation BWEspressoInferenceBoundingBoxPropagator

- (BWEspressoInferenceBoundingBoxPropagator)initWithBoxRequirement:(id)a3 scoreRequirement:(id)a4 angularOffsetRequirement:(id)a5 fontSizeRequirement:(id)a6 configuration:(id)a7 toInferenceResultKey:(id)a8
{
  v25.receiver = self;
  v25.super_class = BWEspressoInferenceBoundingBoxPropagator;
  v14 = [(BWEspressoInferenceBoundingBoxPropagator *)&v25 init];
  if (v14)
  {
    *(v14 + 1) = a3;
    *(v14 + 2) = a4;
    *(v14 + 3) = a5;
    *(v14 + 4) = a6;
    *(v14 + 5) = a8;
    v14[48] = [a7 interiorSuppression];
    [a7 interiorSuppressionPadding];
    *(v14 + 13) = v15;
    [a7 maxMatchCost];
    *(v14 + 14) = v16;
    [a7 angularOffsetExponentialSmoothing];
    *(v14 + 15) = v17;
    if (*(v14 + 4))
    {
      [a7 fontSizeStartReportingThreshold];
      *(v14 + 16) = v18;
      [a7 fontSizeStopReportingThreshold];
      *(v14 + 17) = v19;
    }

    *(v14 + 10) = [objc_alloc(getFTBipartiteMatcherClass()) initWithInitialSize:10];
    v14[96] = [a7 inferenceInputUsesPortraitOrientation];
    [a7 trackingThreshold];
    *(v14 + 25) = v20;
    if (a7)
    {
      [a7 confidenceFilterSettings];
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    *(v14 + 104) = v22;
    *(v14 + 120) = v23;
    *(v14 + 17) = v24;
    *(v14 + 9) = [a7 logger];
  }

  return v14;
}

- (void)dealloc
{
  free(self->_lastRegions);
  v3.receiver = self;
  v3.super_class = BWEspressoInferenceBoundingBoxPropagator;
  [(BWEspressoInferenceBoundingBoxPropagator *)&v3 dealloc];
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)a3 usingStorage:(id)a4 inputSampleBuffer:(opaqueCMSampleBuffer *)a5 propagationSampleBuffer:(opaqueCMSampleBuffer *)a6
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  v147 = a6;
  v148 = a5;
  v11 = [a4 tensorForRequirement:self->_boxRequirement];
  v12 = [a4 tensorForRequirement:self->_scoreRequirement];
  if (self->_angularOffsetRequirement)
  {
    v13 = [a4 tensorForRequirement:?];
  }

  else
  {
    v13 = 0;
  }

  if (self->_fontSizeRequirement)
  {
    v14 = [a4 tensorForRequirement:?];
  }

  else
  {
    v14 = 0;
  }

  v142 = &v139;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v139 - v17;
  v19 = *v12;
  v20 = v12[17] * (v12[12] - 1);
  v156 = v13;
  if (v13)
  {
    v21 = *v13;
    v22 = v13[17];
    v23 = *v13 + 4 * v22;
    v151 = *v13 + 8 * v22;
    v152 = *&v23;
    v153 = v21;
    *&v150 = *&v21 + 12 * v22;
  }

  else
  {
    v150 = 0.0;
    *&v151 = 0.0;
    v152 = 0.0;
    v153 = 0.0;
  }

  v24 = v19 + 4 * v20;
  if (v15)
  {
    v25 = *v15;
  }

  else
  {
    v25 = 0;
  }

  v140 = a3;
  v26 = 0;
  if (v16)
  {
    v27 = 0;
    trackingThreshold = self->_trackingThreshold;
    do
    {
      if (*(v24 + 4 * v27) > trackingThreshold)
      {
        *&v18[8 * v26++] = v27;
      }

      ++v27;
    }

    while (v16 != v27);
  }

  v29 = *v11;
  v146 = v11;
  v30 = v11[17];
  maxRegionID = self->_maxRegionID;
  v149 = [MEMORY[0x1E695DF70] arrayWithCapacity:v26];
  v31 = COERCE_DOUBLE(malloc_type_calloc(v26, 0x88uLL, 0x101004022C1039FuLL));
  v154 = v31;
  if (!v26)
  {
    [(BWEspressoInferenceBoundingBoxPropagator *)self matchCurRegions:0 curCount:?];
    goto LABEL_80;
  }

  v145 = self;
  v32 = 0;
  v33 = 0;
  *&v157 = v29 + 12 * v30;
  *&v158 = v29 + 4 * v30;
  v34 = v29;
  *&v155 = v29 + 8 * v30;
  do
  {
    v35 = *&v18[8 * v33];
    v36 = (*&v31 + v32);
    *(*&v31 + v32 + 44) = *(v24 + 4 * v35);
    if (v156)
    {
      v37 = atan2f(*(*&v150 + 4 * v35), *(v151 + 4 * v35)) * 0.25;
      v38 = *(*&v153 + 4 * v35);
      v39 = __sincosf_stret(v37 * -2.0);
      v40 = expf(((v38 * v39.__cosval) - (*(*&v152 + 4 * v35) * v39.__sinval)) * 0.5);
      v41 = (v37 * 180.0) / 3.14159265;
      *(v36 + 12) = v41;
      v42 = *(v155 + 4 * v35);
      v43 = *(v34 + 4 * v35);
      v44 = v42 + v43;
      v45 = *(v157 + 4 * v35);
      v46 = *(v158 + 4 * v35);
      v47 = (v42 + v43) * 0.5;
      v48 = v45 + v46;
      v49 = (v45 + v46) * 0.5;
      v50 = (v42 - v43) * v40;
      v51 = (v45 - v46) / v40;
      *(v36 + 7) = (v49 - (v51 * 0.5));
      *(v36 + 8) = (v47 - (v50 * 0.5));
      *(v36 + 9) = v51;
      *(v36 + 10) = v50;
      memset(&v164, 0, sizeof(v164));
      CGAffineTransformMakeTranslation(&v164, v49, v47);
      v52 = (*(v36 + 12) / -180.0) * 3.14159265;
      v162 = v164;
      CGAffineTransformRotate(&t2, &v162, v52);
      v164 = t2;
      v162 = t2;
      CGAffineTransformTranslate(&t2, &v162, -(v48 * 0.5), -(v44 * 0.5));
      v164 = t2;
      v165 = CGRectApplyAffineTransform(*(v36 + 56), &t2);
      v31 = v154;
      *(v36 + 8) = v165;
      if (!v25)
      {
        goto LABEL_25;
      }

LABEL_24:
      *(*&v31 + v32 + 88) = *(v25 + 4 * v35);
      goto LABEL_25;
    }

    v53 = *(v158 + 4 * v35);
    v54 = v53;
    v55 = *(v34 + 4 * v35);
    v56 = v55;
    v57 = (*(v157 + 4 * v35) - v53);
    v58 = (*(v155 + 4 * v35) - v55);
    *(v36 + 1) = v54;
    *(v36 + 2) = v56;
    *(v36 + 3) = v57;
    *(v36 + 4) = v58;
    if (v25)
    {
      goto LABEL_24;
    }

LABEL_25:
    ++v33;
    v32 += 136;
  }

  while (v26 != v33);
  self = v145;
  [(BWEspressoInferenceBoundingBoxPropagator *)v145 matchCurRegions:v26 curCount:?];
  v59 = v154;
  if (self->_suppressInterior)
  {
    v60 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
    v61 = v26 - 1;
    v62 = xmmword_1AD056910;
    v63 = xmmword_1AD056920;
    v64 = xmmword_1AD056930;
    v65 = xmmword_1AD056940;
    v66 = xmmword_1AD0564F0;
    v67 = xmmword_1AD056500;
    v68 = xmmword_1AD055320;
    v69 = xmmword_1AD046360;
    v70 = vdupq_n_s64(0x10uLL);
    v71 = v154;
    v72 = vdupq_n_s64(v26 - 1);
    do
    {
      v73 = vmovn_s64(vcgeq_u64(v72, v69));
      if (vuzp1_s8(vuzp1_s16(v73, *v62.i8), *v62.i8).u8[0])
      {
        *(*&v71 + 40) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v73, *&v62), *&v62).i8[1])
      {
        *(*&v71 + 176) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v62, vmovn_s64(vcgeq_u64(v72, *&v68))), *&v62).i8[2])
      {
        *(*&v71 + 312) = 0;
        *(*&v71 + 448) = 0;
      }

      v74 = vmovn_s64(vcgeq_u64(v72, v67));
      if (vuzp1_s8(*&v62, vuzp1_s16(v74, *&v62)).i32[1])
      {
        *(*&v71 + 584) = 0;
      }

      if (vuzp1_s8(*&v62, vuzp1_s16(v74, *&v62)).i8[5])
      {
        *(*&v71 + 720) = 0;
      }

      if (vuzp1_s8(*&v62, vuzp1_s16(*&v62, vmovn_s64(vcgeq_u64(v72, *&v66)))).i8[6])
      {
        *(*&v71 + 856) = 0;
        *(*&v71 + 992) = 0;
      }

      v75 = vmovn_s64(vcgeq_u64(v72, v65));
      if (vuzp1_s8(vuzp1_s16(v75, *v62.i8), *v62.i8).u8[0])
      {
        *(*&v71 + 1128) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(v75, *&v62), *&v62).i8[1])
      {
        *(*&v71 + 1264) = 0;
      }

      if (vuzp1_s8(vuzp1_s16(*&v62, vmovn_s64(vcgeq_u64(v72, *&v64))), *&v62).i8[2])
      {
        *(*&v71 + 1400) = 0;
        *(*&v71 + 1536) = 0;
      }

      v76 = vmovn_s64(vcgeq_u64(v72, v63));
      if (vuzp1_s8(*&v62, vuzp1_s16(v76, *&v62)).i32[1])
      {
        *(*&v71 + 1672) = 0;
      }

      if (vuzp1_s8(*&v62, vuzp1_s16(v76, *&v62)).i8[5])
      {
        *(*&v71 + 1808) = 0;
      }

      if (vuzp1_s8(*&v62, vuzp1_s16(*&v62, vmovn_s64(vcgeq_u64(v72, *&v62)))).i8[6])
      {
        *(*&v71 + 1944) = 0;
        *(*&v71 + 2080) = 0;
      }

      v67 = vaddq_s64(v67, v70);
      v68 = vaddq_s64(v68, v70);
      v69 = vaddq_s64(v69, v70);
      v66 = vaddq_s64(v66, v70);
      v65 = vaddq_s64(v65, v70);
      v64 = vaddq_s64(v64, v70);
      v63 = vaddq_s64(v63, v70);
      *&v71 += 2176;
      v62 = vaddq_s64(v62, v70);
      v60 -= 16;
    }

    while (v60);
    v77 = (*&v59 + 176);
    v78 = v18 + 8;
    do
    {
      v79 = *&v59 + 136 * v60;
      if ((*(v79 + 40) & 1) == 0 && *(v79 + 97) == 1)
      {
        v80 = *&v18[8 * v60];
        v81 = *(v157 + 4 * v80);
        v82 = *(v158 + 4 * v80);
        v83 = *(v155 + 4 * v80);
        v84 = *(v34 + 4 * v80);
        v85 = vabds_f32(v83, v84);
        v86 = vabds_f32(v81, v82) * 0.1;
        interiorPadding = self->_interiorPadding;
        if (v86 < interiorPadding)
        {
          v86 = self->_interiorPadding;
        }

        v88 = v85 * 0.1;
        if (v88 < interiorPadding)
        {
          v88 = self->_interiorPadding;
        }

        if (v60 + 1 < v26)
        {
          v89 = v78;
          v90 = v77;
          for (i = v61; i; --i)
          {
            if ((*v90 & 1) == 0 && v90[57] == 1)
            {
              v92 = *v89;
              v93 = *(v158 + 4 * *v89);
              if (v93 <= (v82 + v86) && *(v34 + 4 * v92) <= (v84 + v88) && (v86 + *(v157 + 4 * v92)) >= v81 && (v88 + *(v155 + 4 * v92)) >= v83)
              {
                *(v79 + 40) = 1;
                break;
              }

              if ((v86 + v93) >= v82 && (v88 + *(v34 + 4 * v92)) >= v84 && *(v157 + 4 * v92) <= (v81 + v86) && *(v155 + 4 * v92) <= (v83 + v88))
              {
                *v90 = 1;
              }
            }

            v90 += 136;
            v89 += 8;
          }
        }
      }

      ++v60;
      --v61;
      v77 += 136;
      v78 += 8;
    }

    while (v60 != v26);
  }

LABEL_80:
  CMSampleBufferGetPresentationTimeStamp(&v164, v147);
  v94 = CMTimeCopyAsDictionary(&v164, *MEMORY[0x1E695E480]);
  v95 = v148;
  ImageBuffer = CMSampleBufferGetImageBuffer(v148);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  v99 = CMGetAttachment(v95, *off_1E798A430, 0);
  if (v99)
  {
    memset(&v164, 0, 32);
    CGRectMakeWithDictionaryRepresentation(v99, &v164);
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v164.a, v164.b, v164.c, v164.d);
    Width = vcvtad_u64_f64(v100);
    Height = vcvtad_u64_f64(v101);
  }

  v102 = *MEMORY[0x1E695EFD0];
  v103 = *(MEMORY[0x1E695EFD0] + 16);
  *&v164.a = *MEMORY[0x1E695EFD0];
  *&v164.c = v103;
  v104 = *(MEMORY[0x1E695EFD0] + 32);
  *&v164.tx = v104;
  if (self->_inferenceInputUsesPortraitOrientation)
  {
    v157 = v103;
    v158 = v102;
    v155 = v104;
    CGAffineTransformMakeTranslation(&t2, -0.5, -0.5);
    *&v162.a = v158;
    *&v162.c = v157;
    *&v162.tx = v155;
    CGAffineTransformConcat(&v164, &v162, &t2);
    CGAffineTransformMakeRotation(&v162, 1.57079633);
    v161 = v164;
    CGAffineTransformConcat(&t2, &v161, &v162);
    v164 = t2;
    CGAffineTransformMakeTranslation(&v162, 0.5, 0.5);
    v161 = v164;
    CGAffineTransformConcat(&t2, &v161, &v162);
    v164 = t2;
    v105 = Width;
  }

  else
  {
    v105 = Height;
    Height = Width;
  }

  if (v26)
  {
    v106 = (v146[10] / v146[11]) / (Height / v105);
    v143 = (1.0 / v106);
    v144 = v106;
    v148 = *off_1E798CD40;
    v147 = *off_1E798CD28;
    v146 = *off_1E798CD30;
    v145 = *off_1E798CD38;
    v107 = *off_1E798CD18;
    v108 = *off_1E798CD20;
    v109 = *&v154 + 52;
    LODWORD(v155) = 1016003125;
    do
    {
      if (*(v109 + 45) == 1 && (*(v109 - 12) & 1) == 0)
      {
        x = *(v109 - 44);
        y = *(v109 - 36);
        v112 = *(v109 - 28);
        v113 = *(v109 - 20);
        if (v156)
        {
          *&v158 = *(v109 + 4);
          *&v157 = *(v109 + 12);
          v150 = *(v109 + 20);
          v114 = v150;
          v115 = *(v109 + 28);
          v154 = v113;
          v116 = *v109;
          memset(&t2, 0, sizeof(t2));
          CGAffineTransformMakeScale(&t2, 1.0, v144);
          v161 = t2;
          CGAffineTransformRotate(&v162, &v161, (v116 * *&v155));
          t2 = v162;
          v161 = v162;
          CGAffineTransformScale(&v162, &v161, 1.0, v143);
          t2 = v162;
          v117 = v162.tx + v162.c * 0.0 + v162.a * (v114 * 0.5);
          *&v151 = v112;
          v152 = x;
          v118 = v162.ty + v162.d * 0.0 + v162.b * (v114 * 0.5);
          v119 = v115;
          v153 = y;
          v120 = v162.tx + v115 * 0.5 * v162.c + v162.a * 0.0;
          v121 = v162.ty + v115 * 0.5 * v162.d + v162.b * 0.0;
          v122 = hypot(v117, v118);
          v123 = v122 + v122;
          v124 = hypot(v120, v121);
          v125 = v124 + v124;
          *&v158 = *&v158 - (v123 - v150) * 0.5;
          v126 = *&v157 - (v124 + v124 - v119) * 0.5;
          v127 = v118 / v117;
          v112 = *&v151;
          x = v152;
          v128 = atan(v127);
          v129 = -v120;
          y = v153;
          v130 = atan(v129 / v121) * (v125 * v125) + v128 * (v123 * v123);
          v113 = v154;
          *&v130 = v130 / (v123 * v123 + v125 * v125);
          *&v157 = *&v130 / *&v155;
        }

        else
        {
          LODWORD(v157) = *v109;
          *&v158 = x;
          v126 = y;
          v123 = v112;
          v125 = v113;
        }

        if (self->_inferenceInputUsesPortraitOrientation)
        {
          t2 = v164;
          v166.origin.x = x;
          v166.origin.y = y;
          v166.size.width = v112;
          v166.size.height = v113;
          v167 = CGRectApplyAffineTransform(v166, &t2);
          x = v167.origin.x;
          y = v167.origin.y;
          v112 = v167.size.width;
          v113 = v167.size.height;
          t2 = v164;
          *&v167.origin.x = v158;
          v167.origin.y = v126;
          v167.size.width = v123;
          v167.size.height = v125;
          v168 = CGRectApplyAffineTransform(v167, &t2);
          v131 = v168.origin.x;
          v126 = v168.origin.y;
          v123 = v168.size.width;
          v125 = v168.size.height;
        }

        else
        {
          v131 = *&v158;
        }

        v169.origin.x = x;
        v169.origin.y = y;
        v169.size.width = v112;
        v169.size.height = v113;
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v169);
        v170.origin.x = v131;
        v170.origin.y = v126;
        v170.size.width = v123;
        v170.size.height = v125;
        v133 = CGRectCreateDictionaryRepresentation(v170);
        v159[0] = v148;
        v159[1] = v147;
        v160[0] = v94;
        v160[1] = DictionaryRepresentation;
        v159[2] = v146;
        LODWORD(v134) = *(v109 + 52);
        v160[2] = [MEMORY[0x1E696AD98] numberWithFloat:v134];
        v159[3] = v145;
        v160[3] = [MEMORY[0x1E696AD98] numberWithInteger:*(v109 - 52)];
        v159[4] = v107;
        LODWORD(v135) = v157;
        v136 = [MEMORY[0x1E696AD98] numberWithFloat:v135];
        v159[5] = v108;
        v160[4] = v136;
        v160[5] = v133;
        v137 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v160 forKeys:v159 count:6];
        [v149 addObject:v137];
        if (DictionaryRepresentation)
        {
          CFRelease(DictionaryRepresentation);
        }

        if (v133)
        {
          CFRelease(v133);
        }
      }

      v109 += 136;
      --v26;
    }

    while (v26);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (self->_inferenceResultKey)
  {
    [v140 setObject:v149 forKeyedSubscript:?];
  }

  v138 = self->_maxRegionID;
  if (v138 != maxRegionID)
  {
    [(FigCaptureLogSmartCameraGating *)self->_logger logTracksCreated:(v138 - maxRegionID)];
  }
}

- (void)matchCurRegions:(uint64_t)a3 curCount:
{
  if (a1)
  {
    v44[1] = v44;
    v6 = v44 - ((4 * *(a1 + 152) * a3 + 19) & 0xFFFFFFFFFFFFFFF0);
    if (a3)
    {
      v7 = 0;
      v8 = 0;
      v9 = *(a1 + 152);
      do
      {
        if (v9)
        {
          v10 = 0;
          v11 = a2 + 136 * v7;
          v12 = 32;
          do
          {
            v45.origin.x = OUTLINED_FUNCTION_0_110();
            v46 = CGRectIntersection(v45, *(v11 + 8));
            v47 = CGRectStandardize(v46);
            width = v47.size.width;
            height = v47.size.height;
            v48.origin.x = OUTLINED_FUNCTION_0_110();
            v49 = CGRectUnion(v48, *(v11 + 8));
            v50 = CGRectStandardize(v49);
            v15 = 1.0 - width * height / (v50.size.width * v50.size.height);
            MidX = CGRectGetMidX(*(v11 + 8));
            MidY = CGRectGetMidY(*(v11 + 8));
            v51.origin.x = OUTLINED_FUNCTION_0_110();
            v18 = CGRectGetMidX(v51);
            v52.origin.x = OUTLINED_FUNCTION_0_110();
            v19 = CGRectGetMidY(v52);
            v20 = v18 - MidX;
            v21 = v19 - MidY;
            *&v6[4 * v8++] = hypotf(v20, v21) + v15;
            ++v10;
            v9 = *(a1 + 152);
            v12 += 136;
          }

          while (v10 < v9);
        }

        ++v7;
      }

      while (v7 != a3);
      v22 = [*(a1 + 80) computeMatchingForCostMatrix:v6 withRowCount:a3 columnCount:*(a1 + 152)];
      [v22 count];
      v23 = 0;
      v24 = a2 + 88;
      do
      {
        v25 = [objc_msgSend(v22 objectAtIndexedSubscript:{v23), "integerValue"}];
        if ((v25 & 0x8000000000000000) != 0 || (v26 = *(a1 + 152), v25 >= v26) || *&v6[4 * v26 * v23 + 4 * v25] > *(a1 + 56))
        {
          v27 = *(a1 + 88) + 1;
          *(a1 + 88) = v27;
          *(v24 - 88) = v27;
          v28 = *(a1 + 120);
          v29 = *(a1 + 136);
          *(v24 + 8) = *(a1 + 104);
          *(v24 + 40) = v29;
          *(v24 + 24) = v28;
          v30 = *(v24 - 40);
          *(v24 + 16) = *(v24 - 44);
        }

        else
        {
          v37 = *(a1 + 144) + 136 * v25;
          *(v24 - 88) = *v37;
          v38 = *(v37 + 96);
          v39 = *(v37 + 112);
          *(v24 + 40) = *(v37 + 128);
          *(v24 + 24) = v39;
          *(v24 + 8) = v38;
          v40 = *(v24 - 40);
          v41 = *(*(a1 + 144) + 136 * v25 + 52);
          v42 = v41 + 90.0;
          v43 = vabds_f32(v40, v41);
          if (vabds_f32(v40, v41 + 90.0) >= v43)
          {
            v42 = *(*(a1 + 144) + 136 * v25 + 52);
            if (vabds_f32(v40, v41 + -90.0) < v43)
            {
              v42 = v41 + -90.0;
            }
          }

          v30 = (v42 * (1.0 - *(a1 + 60))) + (v40 * *(a1 + 60));
        }

        v31 = *(v24 + 8);
        *(v24 - 36) = v30;
        v32 = *(v24 + 9);
        if (v31 == 1)
        {
          v33 = *v24;
          BWSmartCameraSceneUpdateWithConfidence(v24 + 8, *(v24 - 44));
          if (v33 < *(a1 + 64) && !v32 || v33 < *(a1 + 68) && v32)
          {
            *(v24 + 9) = 0;
            *(v24 + 32) = 0;
          }
        }

        else
        {
          v34 = *(v24 - 44);
          *(v24 + 16) = v34;
          if (v34 <= *(v24 + 20))
          {
            v36 = 0;
          }

          else
          {
            v35 = *(a1 + 64);
            v36 = *v24 >= v35;
            if (*v24 < v35 && v32)
            {
              v36 = *v24 >= *(a1 + 68);
            }
          }

          *(v24 + 9) = v36;
        }

        ++v23;
        v24 += 136;
      }

      while (a3 != v23);
    }

    free(*(a1 + 144));
    *(a1 + 144) = a2;
    *(a1 + 152) = a3;
  }
}

@end