@interface CHRecognitionInsight
- (CGSize)recognizerMinimumDrawingSize;
- (NSString)autoCapitalizationModeDescription;
- (NSString)autoCorrectionModeDescription;
- (NSString)baseWritingDirectionDescription;
- (NSString)recognizerContentTypeDescription;
- (NSString)recognizerRecognitionModeDescription;
- (id)description;
- (void)recordConfigurationForRecognizer:(id)a3 options:(id)a4;
- (void)recordInputDrawing:(id)a3;
- (void)recordInsightRequest:(id)a3;
- (void)recordMathResult:(id)a3;
- (void)recordPrincipalPoints:(id)a3;
- (void)recordTextResult:(id)a3 recognitionError:(id)a4;
@end

@implementation CHRecognitionInsight

- (id)description
{
  v7 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2, v3, v4, v5);
  objc_msgSend_appendFormat_(v7, v8, @"=== Insight Request ===\n", v9, v10, v11);
  v17 = objc_msgSend_insightRequest(self, v12, v13, v14, v15, v16);
  objc_msgSend_appendFormat_(v7, v18, @"  request: %@\n", v19, v20, v21, v17);

  v32 = objc_msgSend_recognizerActiveCharacterSet(self, v22, v23, v24, v25, v26);
  if (v32)
  {
    v33 = objc_msgSend_recognizerActiveCharacterSet(self, v27, v28, v29, v30, v31);
    v39 = objc_msgSend_description(v33, v34, v35, v36, v37, v38);
  }

  else
  {
    v39 = @"nil";
  }

  objc_msgSend_appendFormat_(v7, v40, @"=== Recognizer Configuration ===\n", v41, v42, v43);
  v49 = objc_msgSend_recognizerLocale(self, v44, v45, v46, v47, v48);
  v55 = objc_msgSend_localeIdentifier(v49, v50, v51, v52, v53, v54);
  objc_msgSend_appendFormat_(v7, v56, @"  recognizerLocale: %@\n", v57, v58, v59, v55);

  v65 = objc_msgSend_recognizerRecognitionModeDescription(self, v60, v61, v62, v63, v64);
  objc_msgSend_appendFormat_(v7, v66, @"  recognizerRecognitionMode: %@\n", v67, v68, v69, v65);

  v75 = objc_msgSend_recognizerContentTypeDescription(self, v70, v71, v72, v73, v74);
  objc_msgSend_appendFormat_(v7, v76, @"  recognizerContentType: %@\n", v77, v78, v79, v75);

  v85 = objc_msgSend_autoCapitalizationModeDescription(self, v80, v81, v82, v83, v84);
  objc_msgSend_appendFormat_(v7, v86, @"  autoCapitalizationMode: %@\n", v87, v88, v89, v85);

  v95 = objc_msgSend_autoCorrectionModeDescription(self, v90, v91, v92, v93, v94);
  objc_msgSend_appendFormat_(v7, v96, @"  autoCorrectionMode: %@\n", v97, v98, v99, v95);

  v105 = objc_msgSend_baseWritingDirectionDescription(self, v100, v101, v102, v103, v104);
  objc_msgSend_appendFormat_(v7, v106, @"  baseWritingDirection: %@\n", v107, v108, v109, v105);

  objc_msgSend_appendFormat_(v7, v110, @"  recognizerActiveCharacterSet: %@\n", v111, v112, v113, v39);
  v119 = objc_msgSend_recognizerMaxRecognitionResultCount(self, v114, v115, v116, v117, v118);
  objc_msgSend_appendFormat_(v7, v120, @"  recognizerMaxRecognitionResultCount: %ld\n", v121, v122, v123, v119);
  objc_msgSend_recognizerMinimumDrawingSize(self, v124, v125, v126, v127, v128);
  v130 = v129;
  objc_msgSend_recognizerMinimumDrawingSize(self, v131, v132, v133, v134, v135);
  objc_msgSend_appendFormat_(v7, v136, @"  recognizerMinimumDrawingSize: {width: %0.2f, height: %0.2f}\n", v137, v138, v139, v130, v140);
  v145 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AD60], v141, @"{", v142, v143, v144);
  v151 = objc_msgSend_recognizerOptions(self, v146, v147, v148, v149, v150);
  v157 = objc_msgSend_count(v151, v152, v153, v154, v155, v156);

  if (v157)
  {
    objc_msgSend_appendFormat_(v145, v158, @"\n", v160, v161, v162);
  }

  v163 = objc_msgSend_recognizerOptions(self, v158, v159, v160, v161, v162);
  v272[0] = MEMORY[0x1E69E9820];
  v272[1] = 3221225472;
  v272[2] = sub_1836FAF0C;
  v272[3] = &unk_1E6DDCBD0;
  v164 = v145;
  v273 = v164;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v163, v165, v272, v166, v167, v168);

  objc_msgSend_appendFormat_(v164, v169, @"}", v170, v171, v172);
  objc_msgSend_appendFormat_(v7, v173, @"  recognizerOptions: %@\n", v174, v175, v176, v164);
  objc_msgSend_appendFormat_(v7, v177, @"=== Input Drawing ===\n", v178, v179, v180);
  v191 = objc_msgSend_inputDrawing(self, v181, v182, v183, v184, v185);
  if (v191)
  {
    v192 = objc_msgSend_inputDrawing(self, v186, v187, v188, v189, v190);
    v198 = objc_msgSend_description(v192, v193, v194, v195, v196, v197);
  }

  else
  {
    v198 = @"None captured";
  }

  objc_msgSend_appendFormat_(v7, v199, @"  inputDrawing: %@\n", v200, v201, v202, v198);
  if (self)
  {
    v207 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(self->_rawPrincipalPoints, v203, @"\n", &unk_1EF1BC470, v205, v206);
    objc_msgSend_appendFormat_(v7, v208, @"  principalPoints: %@\n", v209, v210, v211, v207);
  }

  else
  {
    v207 = 0;
    objc_msgSend_appendFormat_(v7, v203, @"  principalPoints: %@\n", v204, v205, v206, 0);
  }

  v222 = objc_msgSend_textResult(self, v212, v213, v214, v215, v216);
  if (v222)
  {
    v223 = objc_msgSend_textResult(self, v217, v218, v219, v220, v221);
    v229 = objc_msgSend_description(v223, v224, v225, v226, v227, v228);
  }

  else
  {
    v229 = @"None captured";
  }

  objc_msgSend_appendFormat_(v7, v230, @"=== Text Result ===\n", v231, v232, v233);
  objc_msgSend_appendFormat_(v7, v234, @"%@", v235, v236, v237, v229);
  v248 = objc_msgSend_mathResult(self, v238, v239, v240, v241, v242);
  if (v248)
  {
    v249 = objc_msgSend_mathResult(self, v243, v244, v245, v246, v247);
    v255 = objc_msgSend_description(v249, v250, v251, v252, v253, v254);
  }

  else
  {
    v255 = @"None captured";
  }

  objc_msgSend_appendFormat_(v7, v256, @"=== Math Result ===\n", v257, v258, v259);
  objc_msgSend_appendFormat_(v7, v260, @"%@", v261, v262, v263, v255);
  v271.receiver = self;
  v271.super_class = CHRecognitionInsight;
  v264 = [(CHRecognitionInsight *)&v271 description];
  v269 = objc_msgSend_stringByAppendingFormat_(v264, v265, @"\n%@", v266, v267, v268, v7);

  return v269;
}

- (NSString)recognizerRecognitionModeDescription
{
  v7 = objc_msgSend_recognizerRecognitionMode(self, a2, v2, v3, v4, v5);

  return objc_msgSend_stringForRecognitionMode_(CHRecognizerConfiguration, v6, v7, v8, v9, v10);
}

- (NSString)recognizerContentTypeDescription
{
  v7 = objc_msgSend_recognizerContentType(self, a2, v2, v3, v4, v5);

  return objc_msgSend_stringForRecognitionContentType_(CHRecognizerConfiguration, v6, v7, v8, v9, v10);
}

- (NSString)autoCapitalizationModeDescription
{
  v7 = objc_msgSend_autoCapitalizationMode(self, a2, v2, v3, v4, v5);

  return objc_msgSend_stringForAutoCapitalizationMode_(CHRecognizerConfiguration, v6, v7, v8, v9, v10);
}

- (NSString)autoCorrectionModeDescription
{
  v7 = objc_msgSend_autoCorrectionMode(self, a2, v2, v3, v4, v5);

  return objc_msgSend_stringForAutoCorrectionMode_(CHRecognizerConfiguration, v6, v7, v8, v9, v10);
}

- (NSString)baseWritingDirectionDescription
{
  v7 = objc_msgSend_baseWritingDirection(self, a2, v2, v3, v4, v5);

  return objc_msgSend_stringForBaseWritingDirection_(CHRecognizerConfiguration, v6, v7, v8, v9, v10);
}

- (CGSize)recognizerMinimumDrawingSize
{
  width = self->_recognizerMinimumDrawingSize.width;
  height = self->_recognizerMinimumDrawingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)recordInsightRequest:(id)a3
{
  v5 = a3;
  if (self)
  {
    objc_storeStrong(&self->_insightRequest, a3);
  }
}

- (void)recordConfigurationForRecognizer:(id)a3 options:(id)a4
{
  v65 = a3;
  v6 = a4;
  v13 = objc_msgSend_locale(v65, v7, v8, v9, v10, v11);
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v12, v13, 32);
  }

  v19 = objc_msgSend_recognitionMode(v65, v14, v15, v16, v17, v18);
  if (self)
  {
    self->_recognizerRecognitionMode = v19;
  }

  v25 = objc_msgSend_contentType(v65, v20, v21, v22, v23, v24);
  if (self)
  {
    self->_recognizerContentType = v25;
  }

  v31 = objc_msgSend_autoCapitalizationMode(v65, v26, v27, v28, v29, v30);
  if (self)
  {
    self->_autoCapitalizationMode = v31;
  }

  v37 = objc_msgSend_autoCorrectionMode(v65, v32, v33, v34, v35, v36);
  if (self)
  {
    self->_autoCorrectionMode = v37;
  }

  v43 = objc_msgSend_baseWritingDirection(v65, v38, v39, v40, v41, v42);
  if (self)
  {
    *&self->_baseWritingDirection = v43;
  }

  v50 = objc_msgSend_activeCharacterSet(v65, v44, v45, v46, v47, v48);
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v49, v50, 48);
  }

  v56 = objc_msgSend_maxRecognitionResultCount(v65, v51, v52, v53, v54, v55);
  if (self)
  {
    self->_recognizerMaxRecognitionResultCount = v56;
  }

  objc_msgSend_minimumDrawingSize(v65, v57, v58, v59, v60, v61);
  if (self)
  {
    self->_recognizerMinimumDrawingSize.width = v63;
    self->_recognizerMinimumDrawingSize.height = v64;
    objc_setProperty_nonatomic_copy(self, v62, v6, 56);
  }
}

- (void)recordInputDrawing:(id)a3
{
  v24 = a3;
  objc_msgSend_bounds(v24, v4, v5, v6, v7, v8);
  v10 = v9;
  objc_msgSend_bounds(v24, v11, v12, v13, v14, v15);
  v23 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v24, v17, v18, v19, v20, v21, -v10, -v16, 1.0);
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v22, v23, 80);
  }
}

- (void)recordPrincipalPoints:(id)a3
{
  newValue = objc_msgSend_copy(a3, a2, a3, v3, v4, v5);
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v7, newValue, 72);
  }
}

- (void)recordTextResult:(id)a3 recognitionError:(id)a4
{
  newValue = a3;
  v7 = a4;
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v6, newValue, 88);
    objc_setProperty_nonatomic_copy(self, v8, v7, 96);
  }
}

- (void)recordMathResult:(id)a3
{
  newValue = a3;
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v4, newValue, 104);
  }
}

@end