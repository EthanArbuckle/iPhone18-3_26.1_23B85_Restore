@interface CHCTCRecognitionModel
- (BOOL)reachesActivationThreshold:(double)a3 inCharacterSet:(id)a4 resultArray:(id)a5 indexArray:(id)a6;
- (CHCTCRecognitionModel)initWithModelName:(id)a3 modelPrecision:(int64_t)a4 decodingPruningPolicy:(CVNLPTextDecodingPruningPolicy *)a5;
- (double)highestSymbolActivationWithResultArray:(id)a3 indexArray:(id)a4 symbol:(id *)a5;
- (id).cxx_construct;
- (id)_extractFeaturesFromDrawing:(id)a3 inputName:(id)a4 interpointDistance:(double)a5 paddingPerStroke:(void *)a6 error:(id *)a7;
- (id)featureProviderForDrawing:(id)a3 initialVectorAnchorPoint:(CGPoint)a4 normalizeFeatures:(BOOL)a5 padFeatures:(BOOL)a6 outStrokeEndings:(void *)a7 outInputSequenceLength:(int64_t *)a8 outOutputSequenceLength:(int64_t *)a9 outPaddingPerStroke:(void *)a10 locales:(id)a11;
- (id)recognizeDrawing:(id)a3 minimumDrawingSize:(CGSize)a4 initialVectorAnchorPoint:(CGPoint)a5 activeCharacterSet:(id)a6 outStrokeIndexMapping:(void *)a7 outStrokeEndings:(void *)a8 outFallbackSymbol:(id *)a9 outFallbackSymbolScore:(double *)a10 outPrincipalLinePoints:(id *)a11 locales:(id)a12;
- (void)dealloc;
- (void)enumerateActivationsInResultArray:(id)a3 indexArray:(id)a4 block:(id)a5;
- (void)setDecodingPruningPolicy:(CVNLPTextDecodingPruningPolicy *)a3;
- (void)setInterpointDistance:(double)a3;
- (void)setPadLastPoint:(BOOL)a3;
- (void)setShouldUseArabicVisualOrderFeatureExtraction:(BOOL)a3;
- (void)setShouldUseCPPFeatureExtraction:(BOOL)a3;
- (void)setShouldUseStrokeDirectionFeature:(BOOL)a3;
- (void)updateActivationsWithActiveCharacterSet:(id)a3 resultArray:(id)a4 indexArray:(id)a5;
@end

@implementation CHCTCRecognitionModel

- (CHCTCRecognitionModel)initWithModelName:(id)a3 modelPrecision:(int64_t)a4 decodingPruningPolicy:(CVNLPTextDecodingPruningPolicy *)a5
{
  v180 = *MEMORY[0x1E69E9840];
  v177.receiver = self;
  v177.super_class = CHCTCRecognitionModel;
  v172 = a3;
  v7 = [(CHRecurrentNeuralNetworkCoreML *)&v177 initWithModelName:?];
  v13 = v7;
  if (!v7)
  {
    goto LABEL_45;
  }

  v14 = *&a5->maxNumberOfCandidates;
  *(v7 + 264) = *&a5->strategy;
  *(v7 + 35) = v14;
  *(v7 + 13) = 4;
  v7[96] = 0;
  *(v7 + 14) = 0;
  *(v7 + 15) = 1;
  *(v7 + 16) = 2;
  *(v7 + 17) = 3;
  *(v7 + 19) = -1;
  *(v7 + 20) = -1;
  v174 = (v7 + 168);
  *(v7 + 21) = -1;
  v7[97] = 1;
  v7[98] = 0;
  v7[99] = 0;
  *(v7 + 31) = 0;
  v7[100] = 0;
  v15 = objc_msgSend_inputNames(v7, v8, v9, v10, v11, v12);
  v20 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0, v17, v18, v19);
  v21 = *(v13 + 144);
  *(v13 + 144) = v20;

  v22 = objc_opt_new();
  v23 = *(v13 + 88);
  *(v13 + 88) = v22;

  v29 = 0;
  *(v13 + 192) = a4;
  while (1)
  {
    v30 = objc_msgSend_inputNames(v13, v24, v25, v26, v27, v28);
    v36 = v29 < objc_msgSend_count(v30, v31, v32, v33, v34, v35);

    if (!v36)
    {
      break;
    }

    v42 = objc_msgSend_inputNames(v13, v37, v38, v39, v40, v41);
    v47 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, v29, v44, v45, v46);
    isEqualToString = objc_msgSend_isEqualToString_(v47, v48, @"input_stroke", v49, v50, v51);

    if (isEqualToString)
    {
      v58 = objc_msgSend_inputNames(v13, v53, v54, v55, v56, v57);
      v63 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, v29, v60, v61, v62);
      v64 = *(v13 + 144);
      *(v13 + 144) = v63;
    }

    v65 = objc_msgSend_inputNames(v13, v53, v54, v55, v56, v57);
    v70 = objc_msgSend_objectAtIndexedSubscript_(v65, v66, v29, v67, v68, v69);
    v75 = objc_msgSend_isEqualToString_(v70, v71, @"input_ctc_positional_encodings", v72, v73, v74);

    v76 = (v13 + 152);
    if (v75 & 1) != 0 || (objc_msgSend_inputNames(v13, v24, v25, v26, v27, v28), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndexedSubscript_(v77, v78, v29, v79, v80, v81), v82 = objc_claimAutoreleasedReturnValue(), v87 = objc_msgSend_isEqualToString_(v82, v83, @"input_pp_positional_encodings", v84, v85, v86), v82, v77, v76 = (v13 + 160), (v87) || (objc_msgSend_inputNames(v13, v24, v25, v26, v27, v28), v88 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndexedSubscript_(v88, v89, v29, v90, v91, v92), v93 = objc_claimAutoreleasedReturnValue(), v98 = objc_msgSend_isEqualToString_(v93, v94, @"input_locales", v95, v96, v97), v93, v88, v76 = v174, (v98))
    {
      *v76 = v29;
    }

    ++v29;
  }

  v99 = objc_msgSend_resourcePath(v13, v37, v38, v39, v40, v41);
  v105 = objc_msgSend_stringByDeletingLastPathComponent(v99, v100, v101, v102, v103, v104);
  v111 = objc_msgSend_modelName(v13, v106, v107, v108, v109, v110);
  v116 = objc_msgSend_stringByAppendingString_(v111, v112, @".codemap", v113, v114, v115);
  v173 = objc_msgSend_stringByAppendingPathComponent_(v105, v117, v116, v118, v119, v120);

  v121 = v173;
  v126 = objc_msgSend_cStringUsingEncoding_(v173, v122, 4, v123, v124, v125);
  v127 = strlen(v126);
  if (v127 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_183688FF0();
  }

  v128 = v127;
  if (v127 >= 0x17)
  {
    operator new();
  }

  v176 = v127;
  if (v127)
  {
    memmove(&__dst, v126, v127);
  }

  *(&__dst + v128) = 0;
  v129 = sub_1838B88A8(&__dst);
  *(v13 + 176) = v129;
  if (v176 < 0)
  {
    operator delete(__dst);
    v129 = *(v13 + 176);
  }

  v134 = objc_msgSend_orderedSetWithCapacity_(MEMORY[0x1E695DFA0], v130, *(v129 + 24), v131, v132, v133);
  if (*(*(v13 + 176) + 24))
  {
    v135 = 0;
    while (1)
    {
      v136 = objc_autoreleasePoolPush();
      v137 = *sub_1838B8A5C(*(v13 + 176), v135);
      if (v137 == 32)
      {
        v143 = &OBJC_IVAR___CHCTCRecognitionModel__spaceIndex;
        goto LABEL_28;
      }

      if (v137 == 57426)
      {
        break;
      }

      if (v137 == 57427)
      {
        v143 = &OBJC_IVAR___CHCTCRecognitionModel__pseudospaceIndex;
LABEL_28:
        *(v13 + *v143) = v135;
      }

      v144 = sub_1837A4260(v137, v138, v139, v140, v141, v142);
      objc_msgSend_addObject_(v134, v145, v144, v146, v147, v148);

      objc_autoreleasePoolPop(v136);
      if (++v135 >= *(*(v13 + 176) + 24))
      {
        goto LABEL_30;
      }
    }

    v143 = &OBJC_IVAR___CHCTCRecognitionModel__blankIndex;
    goto LABEL_28;
  }

LABEL_30:
  objc_storeStrong((v13 + 256), v134);
  v149 = *(v13 + 184);
  *(v13 + 184) = 0;

  if ((*v174 & 0x8000000000000000) == 0)
  {
    v155 = objc_msgSend_resourcePath(v13, v150, v151, v152, v153, v154);
    v161 = objc_msgSend_stringByDeletingLastPathComponent(v155, v156, v157, v158, v159, v160);
    v166 = objc_msgSend_stringByAppendingPathComponent_(v161, v162, @"ctc_latn_locales_codemap.json.lzfse", v163, v164, v165);

    v167 = sub_1837AA7DC(v166);
    v168 = *(v13 + 184);
    *(v13 + 184) = v167;

    if (*(v13 + 184))
    {
      goto LABEL_41;
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v169 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v179 = v166;
      _os_log_impl(&dword_18366B000, v169, OS_LOG_TYPE_ERROR, "Error loading codemap: %@", buf, 0xCu);
    }

    if (*(v13 + 184))
    {
      goto LABEL_41;
    }

    if (qword_1EA84DC48 == -1)
    {
      v170 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
      {
LABEL_40:

LABEL_41:
        v173 = v166;
        goto LABEL_42;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v170 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v170, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_40;
      }
    }

    *buf = 138412290;
    v179 = v166;
    _os_log_impl(&dword_18366B000, v170, OS_LOG_TYPE_FAULT, "Error loading codemap: %@", buf, 0xCu);
    goto LABEL_40;
  }

LABEL_42:
  if (*(v13 + 98) == 1)
  {
    sub_1837E6618(v13);
    sub_1837E6930(v13);
  }

LABEL_45:
  return v13;
}

- (void)setInterpointDistance:(double)a3
{
  self->_interpointDistance = a3;
  if (self->_shouldUseCPPFeatureExtraction)
  {
    sub_1837E6618(self);
  }
}

- (void)setShouldUseArabicVisualOrderFeatureExtraction:(BOOL)a3
{
  if (self->_shouldUseArabicVisualOrderFeatureExtraction != a3)
  {
    self->_shouldUseArabicVisualOrderFeatureExtraction = a3;
    sub_1837E6618(self);

    sub_1837E6930(self);
  }
}

- (void)setShouldUseStrokeDirectionFeature:(BOOL)a3
{
  if (self->_shouldUseStrokeDirectionFeature != a3)
  {
    self->_shouldUseStrokeDirectionFeature = a3;
    sub_1837E6618(self);

    sub_1837E6930(self);
  }
}

- (void)setShouldUseCPPFeatureExtraction:(BOOL)a3
{
  shouldUseCPPFeatureExtraction = self->_shouldUseCPPFeatureExtraction;
  self->_shouldUseCPPFeatureExtraction = a3;
  if (shouldUseCPPFeatureExtraction || !a3)
  {
    if (!a3)
    {
      ptr = self->_preprocessor.__ptr_;
      self->_preprocessor.__ptr_ = 0;
      if (ptr)
      {
        v6 = self;
        v7 = *ptr;
        if (*ptr)
        {
          v8 = *(ptr + 1);
          v9 = *ptr;
          if (v8 != v7)
          {
            do
            {
              v11 = *--v8;
              v10 = v11;
              *v8 = 0;
              if (v11)
              {
                (*(*v10 + 8))(v10, a2);
              }
            }

            while (v8 != v7);
            v9 = *ptr;
          }

          *(ptr + 1) = v7;
          operator delete(v9);
        }

        MEMORY[0x1865E5EC0](ptr, 0x20C40960023A9);
        self = v6;
      }

      v12 = self->_featureExtractor.__ptr_;
      self->_featureExtractor.__ptr_ = 0;
      if (v12)
      {
        v13 = *v12;
        if (*v12)
        {
          v14 = *(v12 + 1);
          v15 = *v12;
          if (v14 != v13)
          {
            do
            {
              v17 = *--v14;
              v16 = v17;
              *v14 = 0;
              if (v17)
              {
                (*(*v16 + 8))(v16, a2);
              }
            }

            while (v14 != v13);
            v15 = *v12;
          }

          *(v12 + 1) = v13;
          operator delete(v15);
        }

        JUMPOUT(0x1865E5EC0);
      }
    }
  }

  else
  {
    v4 = self;
    sub_1837E6618(self);

    sub_1837E6930(v4);
  }
}

- (void)setPadLastPoint:(BOOL)a3
{
  padLastPoint = self->_padLastPoint;
  self->_padLastPoint = a3;
  if (padLastPoint != a3 && self->_shouldUseCPPFeatureExtraction)
  {
    sub_1837E6618(self);

    sub_1837E6930(self);
  }
}

- (void)dealloc
{
  codeMap = self->_codeMap;
  if (codeMap)
  {
    if (codeMap->var0)
    {
      munmap(codeMap->var0, codeMap->var1);
    }

    MEMORY[0x1865E5EC0](codeMap, 0x1010C40A749B91FLL);
  }

  v4.receiver = self;
  v4.super_class = CHCTCRecognitionModel;
  [(CHRecurrentNeuralNetworkCoreML *)&v4 dealloc];
}

- (id)featureProviderForDrawing:(id)a3 initialVectorAnchorPoint:(CGPoint)a4 normalizeFeatures:(BOOL)a5 padFeatures:(BOOL)a6 outStrokeEndings:(void *)a7 outInputSequenceLength:(int64_t *)a8 outOutputSequenceLength:(int64_t *)a9 outPaddingPerStroke:(void *)a10 locales:(id)a11
{
  y = a4.y;
  x = a4.x;
  v123 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v118 = a11;
  v116 = v19;
  v25 = objc_msgSend_directionalFeaturesInputName(self, v20, v21, v22, v23, v24);
  v119 = 0;
  v26 = sub_1837E7420(self, v19, v25, a5, a6, a10, &v119, x, y);
  v117 = v119;

  if (!v26)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v27 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_msgSend_modelName(self, v28, v29, v30, v31, v32);
      v39 = objc_msgSend_localizedDescription(v117, v34, v35, v36, v37, v38);
      *buf = 138412546;
      *&buf[4] = v33;
      v121 = 2112;
      v122 = v39;
      _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_ERROR, "An error occurred in the %@ model when extracting features: %@", buf, 0x16u);
    }

    if (qword_1EA84DC48 == -1)
    {
      v40 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v40 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }
    }

    v46 = objc_msgSend_modelName(self, v41, v42, v43, v44, v45);
    v52 = objc_msgSend_localizedDescription(v117, v47, v48, v49, v50, v51);
    *buf = 138412546;
    *&buf[4] = v46;
    v121 = 2112;
    v122 = v52;
    _os_log_impl(&dword_18366B000, v40, OS_LOG_TYPE_FAULT, "An error occurred in the %@ model when extracting features: %@", buf, 0x16u);

    goto LABEL_9;
  }

LABEL_10:
  v53 = v26;
  v59 = objc_msgSend_dataPointer(v26, v54, v55, v56, v57, v58);
  v65 = objc_msgSend_featureCounts(self, v60, v61, v62, v63, v64);
  v71 = objc_msgSend_directionalFeaturesInputName(self, v66, v67, v68, v69, v70);
  v76 = objc_msgSend_objectForKeyedSubscript_(v65, v72, v71, v73, v74, v75);
  v82 = objc_msgSend_integerValue(v76, v77, v78, v79, v80, v81);

  v88 = objc_msgSend_shape(v26, v83, v84, v85, v86, v87);
  v93 = objc_msgSend_objectAtIndexedSubscript_(v88, v89, 1, v90, v91, v92);
  *a8 = objc_msgSend_integerValue(v93, v94, v95, v96, v97, v98);

  v109 = vcvtpd_s64_f64(*a8 / objc_msgSend_sequenceCompression(self, v99, v100, v101, v102, v103));
  *a9 = v109;
  v110 = *a7;
  *(a7 + 1) = *a7;
  if (v109 > (*(a7 + 2) - v110) >> 3)
  {
    if (!(v109 >> 61))
    {
      operator new();
    }

    sub_18368964C();
  }

  *buf = 0;
  if (*a8 >= 1)
  {
    if (*a8 != 1 && self->_sequenceCompression != 1 || (sub_18367B094(a7, buf), *buf = 0, *a8 > 1))
    {
      v111 = v59 + 4 * v82;
      v112 = 1;
      do
      {
        if (*(v111 + 4 * objc_msgSend_gapFeatureIndex(self, v104, v105, v106, v107, v108)) == 1.0)
        {
          ++*buf;
        }

        if (v112 % self->_sequenceCompression == self->_sequenceCompression - 1 || (v113 = *a8, v112 == *a8 - 1))
        {
          sub_18367B094(a7, buf);
          *buf = 0;
          v113 = *a8;
        }

        ++v112;
        v111 += 4 * v82;
      }

      while (v112 < v113);
    }
  }

  ++*(*(a7 + 1) - 8);
  v114 = sub_1837E7CAC(&self->super.super.super.isa, v26, v118);

  return v114;
}

- (id)recognizeDrawing:(id)a3 minimumDrawingSize:(CGSize)a4 initialVectorAnchorPoint:(CGPoint)a5 activeCharacterSet:(id)a6 outStrokeIndexMapping:(void *)a7 outStrokeEndings:(void *)a8 outFallbackSymbol:(id *)a9 outFallbackSymbolScore:(double *)a10 outPrincipalLinePoints:(id *)a11 locales:(id)a12
{
  y = a5.y;
  x = a5.x;
  height = a4.height;
  width = a4.width;
  v100 = *MEMORY[0x1E69E9840];
  v92 = a5;
  v83 = a3;
  a6;
  v82 = a12;
  v19 = objc_alloc(MEMORY[0x1E695FF08]);
  objc_msgSend_initWithUsesCPUOnly_(v19, v20, 1, v21, v22, v23);
  v91 = 0;
  v90 = 0;
  memset(__p, 0, sizeof(__p));
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v24, v25, v26, v27, v28);
  v84 = a8;
  if (self->_shouldUseCPPFeatureExtraction)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v29 = qword_1EA84DC58;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_DEBUG, "Running C++ preprocessor and feature extraction", buf, 2u);
    }

    memset(v88, 0, sizeof(v88));
    ptr = self->_preprocessor.__ptr_;
    sub_1837BD608(v83, &v92, v88, &v97);
    sub_1837A0520(ptr, &v97, v88, buf);
    if (v99)
    {
      operator delete(v99);
    }

    v31 = v97;
    if (v97 != 0.0)
    {
      v32 = v98;
      v33 = v97;
      if (*&v98 != *&v97)
      {
        v34 = v98;
        do
        {
          v36 = *(*&v34 - 24);
          *&v34 -= 24;
          v35 = v36;
          if (v36)
          {
            *(*&v32 - 16) = v35;
            operator delete(v35);
          }

          v32 = v34;
        }

        while (*&v34 != *&v31);
        v33 = v97;
      }

      v98 = v31;
      operator delete(*&v33);
    }

    sub_18396AA48(&v97);
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v37 = qword_1EA84DC58;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v37, OS_LOG_TYPE_DEBUG, "Running legacy preprocessing and feature extraction", buf, 2u);
  }

  v38 = v83;
  v42 = v38;
  strokeOrdering = self->_strokeOrdering;
  if (strokeOrdering)
  {
    v87 = 0;
    v44 = objc_msgSend_sortedDrawingUsingStrokeMidPointHorizontalOverlapAware_shouldSortRTL_(v38, v39, &v87, strokeOrdering == 2, v40, v41);
    v85 = v87;

    v42 = v44;
  }

  else
  {
    v85 = 0;
  }

  v45 = a8;
  v97 = 1.0;
  v46 = objc_msgSend_normalizedDrawing_targetHeight_minimumDrawingSize_interpolationDistance_outScaleFactor_outputPointMap_(self, v39, v42, &v97, __p, v41, 1.0, width, height, self->_interpointDistance);
  v47 = y * v97;
  v48 = fmin(fmax(x * v97, -1.5), 1.5);
  v49 = fmin(fmax(v47, -1.5), 1.5);
  v92.x = v48;
  v92.y = v49;
  *(a7 + 1) = *a7;
  v55 = objc_msgSend_strokeCount(v46, v50, v51, v52, v53, v54);
  if (v55 > (*(a7 + 2) - *a7) >> 3)
  {
    if (!(v55 >> 61))
    {
      operator new();
    }

    sub_18368964C();
  }

  for (i = 0; ; i = *buf + 1)
  {
    *buf = i;
    if (i >= objc_msgSend_strokeCount(v46, v56, v57, v58, v59, v60))
    {
      break;
    }

    if (v85)
    {
      v67 = objc_msgSend_objectAtIndexedSubscript_(v85, v62, *buf, v64, v65, v66);
      v93 = objc_msgSend_integerValue(v67, v68, v69, v70, v71, v72);
      sub_18367B094(a7, &v93);

      v45 = v84;
    }

    else
    {
      sub_18367B094(a7, buf);
    }
  }

  v95 = 0;
  *buf = 0;
  v96 = 0;
  v73 = objc_msgSend_normalizeFeatures(self, v62, v63, v64, v65, v66);
  objc_msgSend_featureProviderForDrawing_initialVectorAnchorPoint_normalizeFeatures_padFeatures_outStrokeEndings_outInputSequenceLength_outOutputSequenceLength_outPaddingPerStroke_locales_(self, v74, v46, v73, 1, v45, &v90, &v91, v48, v49, buf, v82);
  objc_claimAutoreleasedReturnValue();
  v80 = objc_msgSend_strokeCount(v46, v75, v76, v77, v78, v79);
  if (v80)
  {
    if (!(v80 >> 61))
    {
      operator new();
    }

    sub_18368964C();
  }

  operator new();
}

- (void)enumerateActivationsInResultArray:(id)a3 indexArray:(id)a4 block:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v7;
  v16 = objc_msgSend_dataPointer(v10, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_shape(v7, v17, v18, v19, v20, v21);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v22, v23, 0, v24, v25, v26);
  v66 = objc_msgSend_integerValue(v27, v28, v29, v30, v31, v32);

  v38 = objc_msgSend_shape(v7, v33, v34, v35, v36, v37);
  v65 = v7;
  v43 = objc_msgSend_objectAtIndexedSubscript_(v38, v39, 1, v40, v41, v42);
  v49 = objc_msgSend_integerValue(v43, v44, v45, v46, v47, v48);

  v68 = 0;
  if (v66 >= 1 && v49 >= 1)
  {
    if (v8)
    {
      v50 = 0;
      v51 = 0;
      v52 = 4 * v49;
      do
      {
        v53 = 0;
        v54 = v16;
        do
        {
          v55 = v8;
          v61 = *(objc_msgSend_dataPointer(v55, v56, v57, v58, v59, v60) + v50 + 4 * v53);
          v67 = 0;
          v9[2](v9, v51, v53, v54, v61, &v67, &v68);
          if (v68)
          {
            break;
          }

          if (v67)
          {
            break;
          }

          ++v53;
          v54 += 4;
        }

        while (v49 != v53);
        if (v68)
        {
          break;
        }

        ++v51;
        v16 += v52;
        v50 += v52;
      }

      while (v51 < v66);
    }

    else
    {
      for (i = 0; i < v66; ++i)
      {
        v63 = 0;
        v64 = v16;
        do
        {
          v67 = 0;
          v9[2](v9, i, v63, v64, v63, &v67, &v68);
          if (v68)
          {
            break;
          }

          if (v67)
          {
            break;
          }

          ++v63;
          v64 += 4;
        }

        while (v49 != v63);
        if (v68)
        {
          break;
        }

        v16 += 4 * v49;
      }
    }
  }
}

- (BOOL)reachesActivationThreshold:(double)a3 inCharacterSet:(id)a4 resultArray:(id)a5 indexArray:(id)a6
{
  v10 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0xC05F800000000000;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1837ED2B4;
  v15[3] = &unk_1E6DDE680;
  v15[4] = self;
  v16 = v10;
  v19 = a3;
  v17 = v20;
  v18 = &v21;
  v11 = v10;
  objc_msgSend_enumerateActivationsInResultArray_indexArray_block_(self, v12, a5, a6, v15, v13);
  LOBYTE(a6) = v22[3] >= a3;

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);
  return a6;
}

- (double)highestSymbolActivationWithResultArray:(id)a3 indexArray:(id)a4 symbol:(id *)a5
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0xC05F800000000000;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1837ED4D0;
  v14[3] = &unk_1E6DDE6A8;
  v14[4] = self;
  v14[5] = v19;
  v14[6] = &v20;
  v14[7] = &v15;
  objc_msgSend_enumerateActivationsInResultArray_indexArray_block_(self, a2, a3, a4, v14, v5);
  if (a5)
  {
    *a5 = sub_1837A4260(*(v16 + 6), v7, v8, v9, v10, v11);
  }

  v12 = v21[3];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v20, 8);
  return v12;
}

- (void)updateActivationsWithActiveCharacterSet:(id)a3 resultArray:(id)a4 indexArray:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  v16 = objc_msgSend_shape(v9, v11, v12, v13, v14, v15);
  v21 = objc_msgSend_objectAtIndexedSubscript_(v16, v17, 1, v18, v19, v20);
  v27 = objc_msgSend_integerValue(v21, v22, v23, v24, v25, v26);

  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x4812000000;
  v40[3] = sub_1837ED888;
  v40[4] = sub_1837ED8AC;
  v40[5] = &unk_183A5AC72;
  v42 = 0;
  v43 = 0;
  __p = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_1837ED8C4;
  v34[3] = &unk_1E6DDE6D0;
  v36 = v45;
  v37 = v44;
  v34[4] = self;
  v28 = v8;
  v38 = v40;
  v39 = v27;
  v35 = v28;
  objc_msgSend_enumerateActivationsInResultArray_indexArray_block_(self, v29, v9, v10, v34, v30);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1837EDAD4;
  v33[3] = &unk_1E6DDE6F8;
  v33[4] = self;
  v33[5] = v40;
  objc_msgSend_enumerateActivationsInResultArray_indexArray_block_(self, v31, v9, v10, v33, v32);

  _Block_object_dispose(v40, 8);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v45, 8);
}

- (id)_extractFeaturesFromDrawing:(id)a3 inputName:(id)a4 interpointDistance:(double)a5 paddingPerStroke:(void *)a6 error:(id *)a7
{
  v7 = sub_1837E7420(self, a3, a4, 1, 1, a6, a7, 0.0, 0.0);

  return v7;
}

- (void)setDecodingPruningPolicy:(CVNLPTextDecodingPruningPolicy *)a3
{
  v3 = *&a3->maxNumberOfCandidates;
  *&self->_decodingPruningPolicy.strategy = *&a3->strategy;
  *&self->_decodingPruningPolicy.maxNumberOfCandidates = v3;
}

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  return self;
}

@end