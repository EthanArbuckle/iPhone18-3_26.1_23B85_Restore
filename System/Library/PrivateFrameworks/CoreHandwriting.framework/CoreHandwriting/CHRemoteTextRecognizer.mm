@interface CHRemoteTextRecognizer
+ (id)newRemoteRecognizerWithMode:(int)mode locales:(id)locales;
+ (int64_t)maxRequestStrokeCountForLocale:(id)locale;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemoteTextRecognizer:(id)recognizer;
- (CHRemoteTextRecognizer)initWithMode:(int)mode locale:(id)locale;
- (CHRemoteTextRecognizer)initWithMode:(int)mode locale:(id)locale recognizerOptions:(id)options;
- (CHRemoteTextRecognizer)initWithMode:(int)mode locales:(id)locales activeCharacterSetPerLocale:(id)locale recognizerOptions:(id)options;
- (NSCharacterSet)activeCharacterSet;
- (id)textRecognitionResultForDrawing:(id)drawing options:(id)options error:(id *)error;
- (id)textRecognitionResultForDrawing:(id)drawing options:(id)options principalPoints:(id *)points error:(id *)error;
- (id)transcriptionPathsForTokenizedTextResult:(id)result withHistory:(id)history scores:(id *)scores error:(id *)error;
- (unint64_t)hash;
- (void)setActiveCharacterSet:(id)set;
@end

@implementation CHRemoteTextRecognizer

- (CHRemoteTextRecognizer)initWithMode:(int)mode locale:(id)locale
{
  v4 = *&mode;
  localeCopy = locale;
  v7 = objc_alloc_init(CHRecognizerOptions);
  v10 = objc_msgSend_initWithMode_locale_recognizerOptions_(self, v8, v4, localeCopy, v7, v9);

  return v10;
}

- (CHRemoteTextRecognizer)initWithMode:(int)mode locale:(id)locale recognizerOptions:(id)options
{
  v6 = *&mode;
  v17[1] = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  optionsCopy = options;
  v17[0] = localeCopy;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v17, 1, v11, v12);
  active = objc_msgSend_initWithMode_locales_activeCharacterSetPerLocale_recognizerOptions_(self, v14, v6, v13, MEMORY[0x1E695E0F8], optionsCopy);

  return active;
}

- (CHRemoteTextRecognizer)initWithMode:(int)mode locales:(id)locales activeCharacterSetPerLocale:(id)locale recognizerOptions:(id)options
{
  v8 = *&mode;
  localesCopy = locales;
  localeCopy = locale;
  optionsCopy = options;
  if (!objc_msgSend_count(localesCopy, v13, v14, v15, v16, v17))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v23 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "CHRemoteRecognizer must be initialized with at least one locale", buf, 2u);
    }
  }

  if (objc_msgSend_count(localesCopy, v18, v19, v20, v21, v22))
  {
    if (optionsCopy)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v29 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_FAULT, "CHRemoteRecognizer must be initialized with at least one locale", buf, 2u);
  }

  if (!optionsCopy)
  {
LABEL_15:
    optionsCopy = objc_alloc_init(CHRecognizerOptions);
  }

LABEL_16:
  v30 = objc_msgSend_enableCachingIfAvailable(optionsCopy, v24, v25, v26, v27, v28);
  v71.receiver = self;
  v71.super_class = CHRemoteTextRecognizer;
  v31 = [(CHRemoteRecognizer *)&v71 initWithEnableCachingIfAvailable:v30];
  v37 = v31;
  v38 = v31;
  if (v31)
  {
    v31->_recognitionMode = v8;
    v31->_shouldUseTextReplacements = 1;
    v31->_enableGen2ModelIfAvailable = objc_msgSend_enableGen2ModelIfAvailable(optionsCopy, v32, v33, v34, v35, v36);
    v38->_enableGen2CharacterLMIfAvailable = objc_msgSend_enableGen2CharacterLMIfAvailable(optionsCopy, v39, v40, v41, v42, v43);
    v49 = objc_msgSend_copy(localesCopy, v44, v45, v46, v47, v48);
    activeCharacterSetPerLocale = v38->_activeCharacterSetPerLocale;
    v38->_activeCharacterSetPerLocale = v49;

    if (localeCopy)
    {
      v56 = objc_msgSend_copy(localeCopy, v51, v52, v53, v54, v55);
    }

    else
    {
      v56 = objc_alloc_init(MEMORY[0x1E695DF20]);
    }

    v57 = v56;
    objc_storeStrong(&v37[1].super.super.isa, v56);

    v58 = objc_opt_class();
    v38->_shouldUseStrokeReordering = objc_msgSend_shouldUseStrokeReorderingForMode_(v58, v59, v8, v60, v61, v62);
    v68 = objc_msgSend_set(MEMORY[0x1E695DFD8], v63, v64, v65, v66, v67);
    locales = v38->_locales;
    v38->_locales = v68;
  }

  return v38;
}

+ (id)newRemoteRecognizerWithMode:(int)mode locales:(id)locales
{
  v4 = *&mode;
  localesCopy = locales;
  v6 = objc_alloc_init(CHRecognizerOptions);
  v7 = objc_opt_class();
  v11 = objc_msgSend_effectiveRecognitionLocales_recognitionMode_(v7, v8, localesCopy, v4, v9, v10);
  v12 = objc_opt_class();
  v21 = objc_msgSend_defaultActiveCharacterSetForLocales_(v12, v13, v11, v14, v15, v16);
  switch(v4)
  {
    case 6:
      objc_msgSend_setEnableCachingIfAvailable_(v6, v17, 0, v18, v19, v20);
      objc_msgSend_setEnableGen2ModelIfAvailable_(v6, v30, 1, v31, v32, v33);
      objc_msgSend_setEnableGen2CharacterLMIfAvailable_(v6, v34, 0, v35, v36, v37);
      break;
    case 4:
      objc_msgSend_setEnableCachingIfAvailable_(v6, v17, 0, v18, v19, v20);
      goto LABEL_6;
    case 2:
      objc_msgSend_setEnableCachingIfAvailable_(v6, v17, 1, v18, v19, v20);
LABEL_6:
      objc_msgSend_setEnableGen2ModelIfAvailable_(v6, v22, 1, v23, v24, v25);
      objc_msgSend_setEnableGen2CharacterLMIfAvailable_(v6, v26, 1, v27, v28, v29);
      break;
  }

  v38 = [CHRemoteTextRecognizer alloc];
  active = objc_msgSend_initWithMode_locales_activeCharacterSetPerLocale_recognizerOptions_(v38, v39, v4, v11, v21, v6);

  return active;
}

- (NSCharacterSet)activeCharacterSet
{
  isa = self[1].super.super.isa;
  v7 = objc_msgSend_firstObject(self->_activeCharacterSetPerLocale, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_objectForKeyedSubscript_(isa, v8, v7, v9, v10, v11);

  return v12;
}

- (void)setActiveCharacterSet:(id)set
{
  setCopy = set;
  isa = self[1].super.super.isa;
  v10 = objc_msgSend_firstObject(self->_activeCharacterSetPerLocale, v5, v6, v7, v8, v9);
  v15 = objc_msgSend_objectForKeyedSubscript_(isa, v11, v10, v12, v13, v14);

  if (v15 != setCopy)
  {
    v25 = objc_msgSend_mutableCopy(self[1].super.super.isa, v16, v17, v18, v19, v20);
    activeCharacterSetPerLocale = self->_activeCharacterSetPerLocale;
    if (setCopy)
    {
      v27 = objc_msgSend_firstObject(activeCharacterSetPerLocale, setCopy, v21, v22, v23, v24);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v28, setCopy, v27, v29, v30);
    }

    else
    {
      v27 = objc_msgSend_firstObject(activeCharacterSetPerLocale, 0, v21, v22, v23, v24);
      objc_msgSend_removeObjectForKey_(v25, v31, v27, v32, v33, v34);
    }

    v40 = objc_msgSend_copy(v25, v35, v36, v37, v38, v39);
    v41 = self[1].super.super.isa;
    self[1].super.super.isa = v40;
  }
}

- (id)textRecognitionResultForDrawing:(id)drawing options:(id)options error:(id *)error
{
  v5 = objc_msgSend_textRecognitionResultForDrawing_options_principalPoints_error_(self, a2, drawing, options, 0, error);

  return v5;
}

- (id)textRecognitionResultForDrawing:(id)drawing options:(id)options principalPoints:(id *)points error:(id *)error
{
  drawingCopy = drawing;
  optionsCopy = options;
  v17 = objc_msgSend_locale(self, v12, v13, v14, v15, v16);

  if (!v17)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v23 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v91[0]) = 0;
      _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "A locale is required to build the remote recognition request", v91, 2u);
    }
  }

  v24 = objc_msgSend_locale(self, v18, v19, v20, v21, v22);

  if (!v24)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v25 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v91[0]) = 0;
      _os_log_impl(&dword_18366B000, v25, OS_LOG_TYPE_FAULT, "A locale is required to build the remote recognition request", v91, 2u);
    }
  }

  v26 = sub_1836A6854(self, drawingCopy, optionsCopy);
  v32 = v26;
  if (self)
  {
    objc_msgSend_setupXPCConnectionIfNeeded(self, v27, v28, v29, v30, v31);
    v38 = objc_msgSend_connection(self, v33, v34, v35, v36, v37);

    if (!v38)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v44 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v91[0]) = 0;
        _os_log_impl(&dword_18366B000, v44, OS_LOG_TYPE_ERROR, "XPC connection must be non-nil", v91, 2u);
      }
    }

    v45 = objc_msgSend_connection(self, v39, v40, v41, v42, v43);

    if (!v45)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v51 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v91[0]) = 0;
        _os_log_impl(&dword_18366B000, v51, OS_LOG_TYPE_FAULT, "XPC connection must be non-nil", v91, 2u);
      }
    }

    v120 = 0;
    v121 = &v120;
    v122 = 0x3032000000;
    v123 = sub_1836A6EAC;
    v124 = sub_1836A6EBC;
    v125 = 0;
    v114 = 0;
    v115 = &v114;
    v116 = 0x3032000000;
    v117 = sub_1836A6EAC;
    v118 = sub_1836A6EBC;
    v119 = 0;
    v108 = 0;
    v109 = &v108;
    v110 = 0x3032000000;
    v111 = sub_1836A6EAC;
    v112 = sub_1836A6EBC;
    v113 = 0;
    if (objc_msgSend_shouldRemoveUnnaturalGaps(v32, v46, v47, v48, v49, v50))
    {
      v57 = objc_msgSend_drawing(v32, v52, v53, v54, v55, v56);
      v63 = objc_msgSend_drawingByRemovingUnnaturalHorizontalGaps_(v57, v58, v59, v60, v61, v62, 10000.0);
      objc_msgSend_setDrawing_(v32, v64, v63, v65, v66, v67);
    }

    objc_msgSend_setHasBeenSubmitted_(v32, v52, 1, v54, v55, v56);
    v102 = 0;
    v103 = &v102;
    v104 = 0x3032000000;
    v105 = sub_1836A6EAC;
    v106 = sub_1836A6EBC;
    v107 = 0;
    v73 = objc_msgSend_connection(self, v68, v69, v70, v71, v72);
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = 3221225472;
    v101[2] = sub_1836A7184;
    v101[3] = &unk_1E6DDC2E0;
    v101[4] = &v102;
    v78 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v73, v74, v101, v75, v76, v77);

    v97 = 0;
    v98 = &v97;
    v99 = 0x2020000000;
    v100 = 0;
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = sub_1836A72A4;
    v91[3] = &unk_1E6DDC330;
    v94 = &v108;
    v95 = &v114;
    v93 = &v120;
    v91[4] = self;
    v79 = v32;
    v92 = v79;
    v96 = &v97;
    objc_msgSend_handleRecognitionRequest_withReply_(v78, v80, v79, v91, v81, v82);
    if ((v98[3] & 1) == 0)
    {
      objc_msgSend_logDrawingsAndResultsForRequest_result_error_(self, v83, v79, 0, v103[5], v84);
    }

    if (points)
    {
      v85 = v115[5];
      if (v85)
      {
        *points = v85;
      }
    }

    v86 = v103[5];
    if (!v86)
    {
      v86 = v109[5];
    }

    v87 = v86;
    v88 = v121[5];

    _Block_object_dispose(&v97, 8);
    _Block_object_dispose(&v102, 8);

    _Block_object_dispose(&v108, 8);
    _Block_object_dispose(&v114, 8);

    _Block_object_dispose(&v120, 8);
    v89 = v86;
    if (error)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v88 = 0;

    v89 = 0;
    if (error)
    {
LABEL_36:
      v89 = v89;
      *error = v89;
    }
  }

  return v88;
}

- (id)transcriptionPathsForTokenizedTextResult:(id)result withHistory:(id)history scores:(id *)scores error:(id *)error
{
  v70[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  historyCopy = history;
  v12 = objc_alloc_init(CHDrawing);
  objc_msgSend_addPoint_(v12, v13, v14, v15, v16, v17, 0.0, 0.0);
  objc_msgSend_endStroke(v12, v18, v19, v20, v21, v22);
  if (historyCopy)
  {
    v69 = CHRecognitionOptionTextBefore;
    v70[0] = historyCopy;
    v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v23, v70, &v69, 1, v24);
  }

  else
  {
    v25 = 0;
  }

  v26 = sub_1836A6854(self, v12, v25);
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_1836A6EAC;
  v67 = sub_1836A6EBC;
  v68 = 0;
  v32 = objc_msgSend_connection(self, v27, v28, v29, v30, v31);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = sub_1836A6EC4;
  v62[3] = &unk_1E6DDC2E0;
  v62[4] = &v63;
  v37 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v32, v33, v62, v34, v35, v36);

  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_1836A6EAC;
  v60 = sub_1836A6EBC;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = sub_1836A6EAC;
  v54 = sub_1836A6EBC;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_1836A6EAC;
  v48 = sub_1836A6EBC;
  v49 = 0;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = sub_1836A6FE4;
  v43[3] = &unk_1E6DDC308;
  v43[4] = &v50;
  v43[5] = &v56;
  v43[6] = &v44;
  objc_msgSend_transcriptionPathsForTokenizedTextResult_recognitionRequest_withReply_(v37, v38, resultCopy, v26, v43, v39);
  if (error)
  {
    v40 = v64[5];
    if (!v40)
    {
      v40 = v45[5];
    }

    *error = v40;
  }

  if (scores)
  {
    *scores = v57[5];
  }

  v41 = v51[5];
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v63, 8);

  return v41;
}

- (BOOL)isEqualToRemoteTextRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (self == recognizerCopy)
  {
    isEqualToDictionary = 1;
    goto LABEL_12;
  }

  v193.receiver = self;
  v193.super_class = CHRemoteTextRecognizer;
  if ([(CHRemoteRecognizer *)&v193 isEqualToRemoteRecognizer:recognizerCopy])
  {
    v10 = objc_msgSend_recognitionMode(self, v5, v6, v7, v8, v9);
    if (v10 == objc_msgSend_recognitionMode(recognizerCopy, v11, v12, v13, v14, v15))
    {
      v21 = objc_msgSend_contentType(self, v16, v17, v18, v19, v20);
      if (v21 == objc_msgSend_contentType(recognizerCopy, v22, v23, v24, v25, v26))
      {
        v32 = objc_msgSend_autoCapitalizationMode(self, v27, v28, v29, v30, v31);
        if (v32 == objc_msgSend_autoCapitalizationMode(recognizerCopy, v33, v34, v35, v36, v37))
        {
          v43 = objc_msgSend_autoCorrectionMode(self, v38, v39, v40, v41, v42);
          if (v43 == objc_msgSend_autoCorrectionMode(recognizerCopy, v44, v45, v46, v47, v48))
          {
            v54 = objc_msgSend_baseWritingDirection(self, v49, v50, v51, v52, v53);
            if (v54 == objc_msgSend_baseWritingDirection(recognizerCopy, v55, v56, v57, v58, v59))
            {
              v65 = objc_msgSend_enableGen2ModelIfAvailable(self, v60, v61, v62, v63, v64);
              if (v65 == objc_msgSend_enableGen2ModelIfAvailable(recognizerCopy, v66, v67, v68, v69, v70))
              {
                v76 = objc_msgSend_enableGen2CharacterLMIfAvailable(self, v71, v72, v73, v74, v75);
                if (v76 == objc_msgSend_enableGen2CharacterLMIfAvailable(recognizerCopy, v77, v78, v79, v80, v81))
                {
                  v89 = objc_msgSend_locales(self, v82, v83, v84, v85, v86);
                  v95 = objc_msgSend_locales(recognizerCopy, v90, v91, v92, v93, v94);
                  v101 = v95;
                  if (v89 == v95)
                  {
                  }

                  else
                  {
                    v107 = objc_msgSend_locales(self, v96, v97, v98, v99, v100);
                    if (!v107)
                    {
                      isEqualToDictionary = 0;
                      goto LABEL_33;
                    }

                    v113 = objc_msgSend_locales(recognizerCopy, v102, v103, v104, v105, v106);
                    if (!v113)
                    {
                      goto LABEL_28;
                    }

                    v114 = objc_msgSend_locales(self, v108, v109, v110, v111, v112);
                    v120 = objc_msgSend_locales(recognizerCopy, v115, v116, v117, v118, v119);
                    isEqualToArray = objc_msgSend_isEqualToArray_(v114, v121, v120, v122, v123, v124);

                    if (!isEqualToArray)
                    {
                      goto LABEL_10;
                    }
                  }

                  v131 = objc_msgSend_declaredVariables(self, v126, v127, v128, v129, v130);
                  v137 = objc_msgSend_declaredVariables(recognizerCopy, v132, v133, v134, v135, v136);
                  v143 = v137;
                  if (v131 == v137)
                  {
                  }

                  else
                  {
                    v144 = objc_msgSend_declaredVariables(self, v138, v139, v140, v141, v142);
                    v150 = objc_msgSend_declaredVariables(recognizerCopy, v145, v146, v147, v148, v149);
                    isEqualToSet = objc_msgSend_isEqualToSet_(v144, v151, v150, v152, v153, v154);

                    if (!isEqualToSet)
                    {
                      goto LABEL_10;
                    }
                  }

                  v89 = objc_msgSend_activeCharacterSetPerLocale(self, v156, v157, v158, v159, v160);
                  v101 = objc_msgSend_activeCharacterSetPerLocale(recognizerCopy, v161, v162, v163, v164, v165);
                  if (v89 != v101)
                  {
                    v107 = objc_msgSend_activeCharacterSetPerLocale(self, v166, v167, v168, v169, v170);
                    if (v107)
                    {
                      v181 = objc_msgSend_activeCharacterSetPerLocale(recognizerCopy, v171, v172, v173, v174, v175);
                      if (v181)
                      {
                        v182 = objc_msgSend_activeCharacterSetPerLocale(self, v176, v177, v178, v179, v180);
                        v188 = objc_msgSend_activeCharacterSetPerLocale(recognizerCopy, v183, v184, v185, v186, v187);
                        isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v182, v189, v188, v190, v191, v192);
                      }

                      else
                      {
                        isEqualToDictionary = 0;
                      }

                      goto LABEL_32;
                    }

LABEL_28:
                    isEqualToDictionary = 0;
LABEL_32:

                    goto LABEL_33;
                  }

                  isEqualToDictionary = 1;
LABEL_33:

                  goto LABEL_12;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_10:
  isEqualToDictionary = 0;
LABEL_12:

  return isEqualToDictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToRemoteTextRecognizer = objc_msgSend_isEqualToRemoteTextRecognizer_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToRemoteTextRecognizer;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v104 = *MEMORY[0x1E69E9840];
  objc_msgSend_locales(self, a2, v2, v3, v4, v5);
  while (1)
    v15 = {;
    v21 = objc_msgSend_count(v15, v16, v17, v18, v19, v20);

    if (v7 >= v21)
    {
      break;
    }

    v27 = objc_msgSend_locales(self, v22, v23, v24, v25, v26);
    v32 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, v7, v29, v30, v31);

    v38 = objc_msgSend_activeCharacterSetPerLocale(self, v33, v34, v35, v36, v37);
    v43 = objc_msgSend_objectForKeyedSubscript_(v38, v39, v32, v40, v41, v42);

    v54 = objc_msgSend_hash(v32, v44, v45, v46, v47, v48);
    if (v43)
    {
      v8 ^= objc_msgSend_hash(v43, v49, v50, v51, v52, v53);
    }

    v9 ^= v54 << v7;

    ++v7;
    objc_msgSend_locales(self, v10, v11, v12, v13, v14);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v55 = objc_msgSend_declaredVariables(self, v22, v23, v24, v25, v26);
  v58 = 0;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v99, v103, 16, v57);
  if (v64)
  {
    v65 = *v100;
    do
    {
      v66 = 0;
      do
      {
        if (*v100 != v65)
        {
          objc_enumerationMutation(v55);
        }

        v58 ^= objc_msgSend_hash(*(*(&v99 + 1) + 8 * v66++), v59, v60, v61, v62, v63);
      }

      while (v64 != v66);
      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v59, &v99, v103, 16, v63);
    }

    while (v64);
  }

  v98.receiver = self;
  v98.super_class = CHRemoteTextRecognizer;
  v67 = [(CHRemoteRecognizer *)&v98 hash];
  v73 = objc_msgSend_recognitionMode(self, v68, v69, v70, v71, v72);
  v79 = objc_msgSend_contentType(self, v74, v75, v76, v77, v78);
  v85 = objc_msgSend_autoCapitalizationMode(self, v80, v81, v82, v83, v84);
  v91 = objc_msgSend_autoCorrectionMode(self, v86, v87, v88, v89, v90);
  return v58 ^ v67 ^ v73 ^ v79 ^ v85 ^ v91 ^ objc_msgSend_baseWritingDirection(self, v92, v93, v94, v95, v96) ^ v8 ^ v9;
}

+ (int64_t)maxRequestStrokeCountForLocale:(id)locale
{
  localeCopy = locale;
  v4 = objc_opt_class();
  v9 = objc_msgSend_drawingStrokeLimitForLocale_(v4, v5, localeCopy, v6, v7, v8);

  return v9;
}

@end