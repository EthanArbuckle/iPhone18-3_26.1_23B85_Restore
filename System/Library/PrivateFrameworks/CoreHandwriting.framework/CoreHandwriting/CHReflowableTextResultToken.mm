@interface CHReflowableTextResultToken
+ (id)reflowableTokensWithContext:(id)a3 contextStrokes:(id)a4 strokeProvider:(id)a5 skipLineOrientationEstimate:(BOOL)a6 shouldCancel:(id)a7;
+ (id)reflowableTokensWithTextResult:(id)a3 principalLineResult:(id)a4 shouldUseRefinablePath:(BOOL)a5 strokeProvider:(id)a6 shouldCancel:(id)a7;
+ (id)revertTokenOrder:(id)a3 textResult:(id)a4 initialStrokes:(id)a5 strokeProvider:(id)a6 shouldExtractFromRefinablePath:(BOOL)a7;
- (CHReflowableTextResultToken)initWithString:(id)a3 strokeIdentifiers:(id)a4 nonTextStrokeIdentifiers:(id)a5 principalLines:(id *)a6 principalPoints:(id)a7 textSize:(id)a8 bounds:(CGRect)a9 hasPrecedingSpace:(BOOL)a10;
- (id)description;
@end

@implementation CHReflowableTextResultToken

- (CHReflowableTextResultToken)initWithString:(id)a3 strokeIdentifiers:(id)a4 nonTextStrokeIdentifiers:(id)a5 principalLines:(id *)a6 principalPoints:(id)a7 textSize:(id)a8 bounds:(CGRect)a9 hasPrecedingSpace:(BOOL)a10
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a7;
  v24 = a8;
  var1 = a6->var2.var1;
  v46[4] = a6->var2.var0;
  v46[5] = var1;
  v26 = a6->var3.var1;
  v46[6] = a6->var3.var0;
  v46[7] = v26;
  v27 = a6->var0.var1;
  v46[0] = a6->var0.var0;
  v46[1] = v27;
  v28 = a6->var1.var1;
  v46[2] = a6->var1.var0;
  v46[3] = v28;
  v45.receiver = self;
  v45.super_class = CHReflowableTextResultToken;
  v34 = [(CHReflowableTextToken *)&v45 initWithString:v20 principalLines:v46 principalPoints:v23 textSize:v24 bounds:a10 hasPrecedingSpace:x, y, width, height];
  if (v34)
  {
    v35 = objc_msgSend_copy(v21, v29, v30, v31, v32, v33);
    strokeIdentifiers = v34->_strokeIdentifiers;
    v34->_strokeIdentifiers = v35;

    v42 = objc_msgSend_copy(v22, v37, v38, v39, v40, v41);
    nonTextStrokeIdentifiers = v34->_nonTextStrokeIdentifiers;
    v34->_nonTextStrokeIdentifiers = v42;
  }

  return v34;
}

- (id)description
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_strokeIdentifiers(self, a2, v2, v3, v4, v5);
  v14 = objc_msgSend_count(v8, v9, v10, v11, v12, v13);
  v20 = objc_msgSend_nonTextStrokeIdentifiers(self, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_count(v20, v21, v22, v23, v24, v25);
  v31 = objc_msgSend_stringWithFormat_(v7, v27, @"(ReflowableToken Text:%lu, NonText:%lu), ", v28, v29, v30, v14, v26);

  return v31;
}

+ (id)reflowableTokensWithTextResult:(id)a3 principalLineResult:(id)a4 shouldUseRefinablePath:(BOOL)a5 strokeProvider:(id)a6 shouldCancel:(id)a7
{
  v9 = a5;
  v33[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = objc_opt_class();
  v17 = objc_msgSend_textLineFromTextResult_principalLineResult_shouldUseRefinablePath_strokeProvider_shouldCancel_(v15, v16, v11, v12, v9, v13, v14);
  v21 = v17;
  if (v17)
  {
    v33[0] = v17;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v18, v33, 1, v19, v20);
  }

  else
  {
    v22 = MEMORY[0x1E695E0F0];
  }

  v23 = objc_opt_class();
  v28 = objc_msgSend_reflowableTextTokensFromTransformedTextLines_(v23, v24, v22, v25, v26, v27);
  v29 = objc_opt_class();
  v31 = objc_msgSend_revertTokenOrder_textResult_initialStrokes_strokeProvider_shouldExtractFromRefinablePath_(v29, v30, v28, v11, 0, v13, v9);

  return v31;
}

+ (id)reflowableTokensWithContext:(id)a3 contextStrokes:(id)a4 strokeProvider:(id)a5 skipLineOrientationEstimate:(BOOL)a6 shouldCancel:(id)a7
{
  v125 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v104 = v11;
  v101 = v12;
  v102 = a7;
  v107 = v13;
  v14 = objc_opt_class();
  v103 = objc_msgSend_textLinesFromContext_strokeGroupingResult_contextStrokes_initialStrokes_strokeProvider_relatedNonTextStrokes_excludedStrokeTypes_skipLineOrientationEstimate_useCache_progress_shouldCancel_(v14, v15, v11, 0, v12, 0, v13, MEMORY[0x1E695E0F0], 0, a6, 0, v102);
  v16 = objc_opt_class();
  v21 = objc_msgSend_reflowableTextTokensFromTransformedTextLines_(v16, v17, v103, v18, v19, v20);
  v108 = objc_msgSend_array(MEMORY[0x1E695DF70], v22, v23, v24, v25, v26);
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = objc_msgSend_textResults(v11, v27, v28, v29, v30, v31);
  v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v113, v124, 16, v33);
  if (v39)
  {
    v40 = *v114;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v114 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v113 + 1) + 8 * i);
        v43 = objc_msgSend_textResult(v42, v34, v35, v36, v37, v38);
        v49 = objc_msgSend_locale(v43, v44, v45, v46, v47, v48);
        shouldUseOriginalTokensForLocale = objc_msgSend_shouldUseOriginalTokensForLocale_(CHRecognizerConfiguration, v50, v49, v51, v52, v53);

        v55 = objc_opt_class();
        v61 = objc_msgSend_textResult(v42, v56, v57, v58, v59, v60);
        v63 = objc_msgSend_revertTokenOrder_textResult_initialStrokes_strokeProvider_shouldExtractFromRefinablePath_(v55, v62, v21, v61, 0, v13, shouldUseOriginalTokensForLocale);
        objc_msgSend_addObjectsFromArray_(v108, v64, v63, v65, v66, v67);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v113, v124, 16, v38);
    }

    while (v39);
  }

  v105 = v108;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v68 = qword_1EA84DCA0;
  v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG);

  if (v69)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v70 = qword_1EA84DCA0;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      if (v104)
      {
        v69 = objc_msgSend_textResults(v104, v71, v72, v73, v74, v75);
        v81 = objc_msgSend_count(v69, v76, v77, v78, v79, v80);
      }

      else
      {
        v81 = 0;
      }

      v82 = objc_msgSend_count(v105, v71, v72, v73, v74, v75);
      *buf = 134218496;
      v119 = v81;
      v120 = 1024;
      v121 = 0;
      v122 = 2048;
      v123 = v82;
      _os_log_impl(&dword_18366B000, v70, OS_LOG_TYPE_DEBUG, "Computed reflowable results from %ld context results, and %d related non-text strokes: created %ld reflowable tokens", buf, 0x1Cu);
      if (v104)
      {
      }
    }

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v83 = v105;
    v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v84, &v109, v117, 16, v85);
    if (v86)
    {
      v87 = *v110;
      do
      {
        v88 = 0;
        do
        {
          if (*v110 != v87)
          {
            objc_enumerationMutation(v83);
          }

          v89 = *(*(&v109 + 1) + 8 * v88);
          if (qword_1EA84DC48 == -1)
          {
            v90 = qword_1EA84DCA0;
            if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_27;
            }

LABEL_26:
            v96 = objc_msgSend_description(v89, v91, v92, v93, v94, v95);
            *buf = 138412290;
            v119 = v96;
            _os_log_impl(&dword_18366B000, v90, OS_LOG_TYPE_DEBUG, "%@\n", buf, 0xCu);

            goto LABEL_27;
          }

          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v90 = qword_1EA84DCA0;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_26;
          }

LABEL_27:

          ++v88;
        }

        while (v86 != v88);
        v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v83, v97, &v109, v117, 16, v98);
        v86 = v99;
      }

      while (v99);
    }
  }

  return v105;
}

+ (id)revertTokenOrder:(id)a3 textResult:(id)a4 initialStrokes:(id)a5 strokeProvider:(id)a6 shouldExtractFromRefinablePath:(BOOL)a7
{
  v7 = a7;
  v105 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v95 = v13;
  v20 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17, v18, v19);
  v31 = objc_msgSend_inputStrokeIdentifiers(v12, v21, v22, v23, v24, v25);
  if (v7)
  {
    objc_msgSend_refinableTranscriptionPath(v12, v26, v27, v28, v29, v30, v31);
  }

  else
  {
    objc_msgSend_topModelTranscriptionPath(v12, v26, v27, v28, v29, v30, v31);
  }
  v32 = ;
  v35 = objc_msgSend_tokensAlignedWithStrokes_transcriptionPath_strokeProvider_(v12, v33, v13, v32, v14, v34);
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = sub_1838915D0;
  v96[3] = &unk_1E6DDF568;
  v36 = v31;
  v97 = v36;
  v37 = v11;
  v98 = v37;
  v38 = v14;
  v99 = v38;
  v39 = v20;
  v100 = v39;
  objc_msgSend_enumerateObjectsUsingBlock_(v35, v40, v96, v41, v42, v43);
  v49 = objc_msgSend_count(v39, v44, v45, v46, v47, v48);
  if (v49 != objc_msgSend_count(v37, v50, v51, v52, v53, v54))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v60 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v66 = objc_msgSend_count(v37, v61, v62, v63, v64, v65);
      v72 = objc_msgSend_count(v39, v67, v68, v69, v70, v71);
      *buf = 134218240;
      v102 = v66;
      v103 = 2048;
      v104 = v72;
      _os_log_impl(&dword_18366B000, v60, OS_LOG_TYPE_ERROR, "Reflowable token count (%lu) is different from the reordered token count (%lu)", buf, 0x16u);
    }
  }

  v73 = objc_msgSend_count(v39, v55, v56, v57, v58, v59);
  if (v73 != objc_msgSend_count(v37, v74, v75, v76, v77, v78))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v79 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
    {
      v85 = objc_msgSend_count(v37, v80, v81, v82, v83, v84);
      v91 = objc_msgSend_count(v39, v86, v87, v88, v89, v90);
      *buf = 134218240;
      v102 = v85;
      v103 = 2048;
      v104 = v91;
      _os_log_impl(&dword_18366B000, v79, OS_LOG_TYPE_FAULT, "Reflowable token count (%lu) is different from the reordered token count (%lu)", buf, 0x16u);
    }
  }

  v92 = v100;
  v93 = v39;

  return v39;
}

@end