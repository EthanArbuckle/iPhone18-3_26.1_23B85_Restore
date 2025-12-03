@interface CHDecorateSpecialSymbolsStep
- (CHDecorateSpecialSymbolsStep)init;
- (id)process:(id)process options:(id)options;
@end

@implementation CHDecorateSpecialSymbolsStep

- (CHDecorateSpecialSymbolsStep)init
{
  v15.receiver = self;
  v15.super_class = CHDecorateSpecialSymbolsStep;
  v6 = [(CHDecorateSpecialSymbolsStep *)&v15 init];
  if (v6)
  {
    v7 = objc_msgSend_componentsSeparatedByString_(@"€ £ ¥ ¢ ₺ ₴ ₽ ₩ °", v2, @" ", v3, v4, v5);
    v12 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v8, v7, v9, v10, v11);
    symbols = v6->_symbols;
    v6->_symbols = v12;
  }

  return v6;
}

- (id)process:(id)process options:(id)options
{
  processCopy = process;
  optionsCopy = options;
  v15 = objc_msgSend_objectForKeyedSubscript_(optionsCopy, v7, qword_1EA84BB60, v8, v9, v10);
  if (!v15 || (objc_msgSend_objectForKeyedSubscript_(optionsCopy, v11, qword_1EA84BB60, v12, v13, v14), v16 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend_BOOLValue(v16, v17, v18, v19, v20, v21), v16, v15, (v22 & 1) == 0))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v23 = qword_1EA84DC58;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_DEBUG, "CHDecorateSpecialSymbolsStep is running", buf, 2u);
    }

    v107 = objc_msgSend_array(MEMORY[0x1E695DF70], v24, v25, v26, v27, v28);
    for (i = 0; ; ++i)
    {
      v35 = objc_msgSend_result(processCopy, v29, v30, v31, v32, v33);
      v41 = objc_msgSend_transcriptionPaths(v35, v36, v37, v38, v39, v40);
      v47 = objc_msgSend_count(v41, v42, v43, v44, v45, v46);

      if (i >= v47)
      {
        break;
      }

      v53 = objc_msgSend_result(processCopy, v48, v49, v50, v51, v52);
      v59 = objc_msgSend_transcriptionPaths(v53, v54, v55, v56, v57, v58);
      v64 = objc_msgSend_objectAtIndexedSubscript_(v59, v60, i, v61, v62, v63);

      v70 = objc_msgSend_array(MEMORY[0x1E695DF70], v65, v66, v67, v68, v69);
      v76 = objc_msgSend_result(processCopy, v71, v72, v73, v74, v75);
      v82 = objc_msgSend_result(processCopy, v77, v78, v79, v80, v81);
      v88 = objc_msgSend_tokenColumnCount(v82, v83, v84, v85, v86, v87);
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = sub_18367A28C;
      v108[3] = &unk_1E6DDBE88;
      v108[4] = self;
      v89 = v70;
      v109 = v89;
      objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v76, v90, v64, 0, v88, v108);

      objc_msgSend_addObject_(v107, v91, v89, v92, v93, v94);
    }

    v95 = [CHTokenizedMathResult alloc];
    v100 = objc_msgSend_initWithBestPathTokens_(v95, v96, v107, v97, v98, v99);
    objc_msgSend_setResult_(processCopy, v101, v100, v102, v103, v104);
  }

  return processCopy;
}

@end