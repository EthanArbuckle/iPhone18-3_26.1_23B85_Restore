@interface CHRemoteMathRecognizer
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemoteMathRecognizer:(id)recognizer;
- (id)mathRecognitionResultForDrawing:(id)drawing options:(id)options error:(id *)error;
- (unint64_t)hash;
@end

@implementation CHRemoteMathRecognizer

- (id)mathRecognitionResultForDrawing:(id)drawing options:(id)options error:(id *)error
{
  drawingCopy = drawing;
  optionsCopy = options;
  v10 = optionsCopy;
  if (self)
  {
    v11 = [CHRemoteRecognitionMathRequest alloc];
    v17 = objc_msgSend_priority(self, v12, v13, v14, v15, v16);
    v20 = objc_msgSend_initWithDrawing_options_priority_(v11, v18, drawingCopy, v10, v17, v19);
    v26 = objc_msgSend_locales(self, v21, v22, v23, v24, v25);
    objc_msgSend_setLocales_(v20, v27, v26, v28, v29, v30);

    v36 = objc_msgSend_maxRecognitionResultCount(self, v31, v32, v33, v34, v35);
    objc_msgSend_setMaxRecognitionResultCount_(v20, v37, v36, v38, v39, v40);
    objc_msgSend_minimumDrawingSize(self, v41, v42, v43, v44, v45);
    objc_msgSend_setMinimumDrawingSize_(v20, v46, v47, v48, v49, v50);
    v56 = objc_msgSend_enableCachingIfAvailable(self, v51, v52, v53, v54, v55);
    objc_msgSend_setEnableCachingIfAvailable_(v20, v57, v56, v58, v59, v60);
    v66 = objc_msgSend_declaredVariables(self, v61, v62, v63, v64, v65);
    objc_msgSend_setDeclaredVariables_(v20, v67, v66, v68, v69, v70);

    v71 = v20;
    objc_msgSend_setupXPCConnectionIfNeeded(self, v72, v73, v74, v75, v76);
    v82 = objc_msgSend_connection(self, v77, v78, v79, v80, v81);

    if (!v82)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v88 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v117[0]) = 0;
        _os_log_impl(&dword_18366B000, v88, OS_LOG_TYPE_ERROR, "XPC connection must be non-nil", v117, 2u);
      }
    }

    v89 = objc_msgSend_connection(self, v83, v84, v85, v86, v87);

    if (!v89)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v94 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v94, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v117[0]) = 0;
        _os_log_impl(&dword_18366B000, v94, OS_LOG_TYPE_FAULT, "XPC connection must be non-nil", v117, 2u);
      }
    }

    v139 = 0;
    v140 = &v139;
    v141 = 0x3032000000;
    v142 = sub_183870974;
    v143 = sub_183870984;
    v144 = 0;
    v133 = 0;
    v134 = &v133;
    v135 = 0x3032000000;
    v136 = sub_183870974;
    v137 = sub_183870984;
    v138 = 0;
    objc_msgSend_setHasBeenSubmitted_(v71, v90, 1, v91, v92, v93);
    v127 = 0;
    v128 = &v127;
    v129 = 0x3032000000;
    v130 = sub_183870974;
    v131 = sub_183870984;
    v132 = 0;
    v100 = objc_msgSend_connection(self, v95, v96, v97, v98, v99);
    v126[0] = MEMORY[0x1E69E9820];
    v126[1] = 3221225472;
    v126[2] = sub_18387098C;
    v126[3] = &unk_1E6DDC2E0;
    v126[4] = &v127;
    v105 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v100, v101, v126, v102, v103, v104);

    v122 = 0;
    v123 = &v122;
    v124 = 0x2020000000;
    v125 = 0;
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = sub_183870AAC;
    v117[3] = &unk_1E6DDF1E8;
    v119 = &v139;
    v120 = &v133;
    v117[4] = self;
    v106 = v71;
    v118 = v106;
    v121 = &v122;
    objc_msgSend_handleRecognitionRequest_withReply_(v105, v107, v106, v117, v108, v109);
    if ((v123[3] & 1) == 0)
    {
      objc_msgSend_logDrawingsAndResultsForRequest_result_error_(self, v110, v106, 0, v128[5], v111);
    }

    v112 = v128[5];
    if (!v112)
    {
      v112 = v134[5];
    }

    v113 = v112;
    v114 = v140[5];

    _Block_object_dispose(&v122, 8);
    _Block_object_dispose(&v127, 8);

    _Block_object_dispose(&v133, 8);
    _Block_object_dispose(&v139, 8);

    v115 = v112;
    if (error)
    {
      goto LABEL_19;
    }
  }

  else
  {

    v71 = 0;
    v114 = 0;

    v115 = 0;
    if (error)
    {
LABEL_19:
      v115 = v115;
      *error = v115;
    }
  }

  return v114;
}

- (BOOL)isEqualToRemoteMathRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (self == recognizerCopy)
  {
    isEqualToSet = 1;
  }

  else
  {
    v35.receiver = self;
    v35.super_class = CHRemoteMathRecognizer;
    if ([(CHRemoteRecognizer *)&v35 isEqualToRemoteRecognizer:recognizerCopy])
    {
      v10 = objc_msgSend_declaredVariables(self, v5, v6, v7, v8, v9);
      v21 = objc_msgSend_declaredVariables(recognizerCopy, v11, v12, v13, v14, v15);
      if (v10 == v21)
      {
        isEqualToSet = 1;
      }

      else
      {
        v22 = objc_msgSend_declaredVariables(self, v16, v17, v18, v19, v20);
        v28 = objc_msgSend_declaredVariables(recognizerCopy, v23, v24, v25, v26, v27);
        isEqualToSet = objc_msgSend_isEqualToSet_(v22, v29, v28, v30, v31, v32);
      }
    }

    else
    {
      isEqualToSet = 0;
    }
  }

  return isEqualToSet;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToRemoteMathRecognizer = objc_msgSend_isEqualToRemoteMathRecognizer_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToRemoteMathRecognizer;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = objc_msgSend_declaredVariables(self, a2, v2, v3, v4, v5);
  v10 = 0;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v21, v25, 16, v9);
  if (v16)
  {
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v10 ^= objc_msgSend_hash(*(*(&v21 + 1) + 8 * v18++), v11, v12, v13, v14, v15);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v11, &v21, v25, 16, v15);
    }

    while (v16);
  }

  v20.receiver = self;
  v20.super_class = CHRemoteMathRecognizer;
  return [(CHRemoteRecognizer *)&v20 hash]^ v10;
}

@end