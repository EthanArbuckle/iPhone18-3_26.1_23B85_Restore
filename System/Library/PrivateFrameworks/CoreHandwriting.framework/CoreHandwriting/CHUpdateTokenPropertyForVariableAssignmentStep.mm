@interface CHUpdateTokenPropertyForVariableAssignmentStep
- (id)process:(id)process options:(id)options;
@end

@implementation CHUpdateTokenPropertyForVariableAssignmentStep

- (id)process:(id)process options:(id)options
{
  processCopy = process;
  optionsCopy = options;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC58;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEBUG, "CHUpdateTokenPropertyForVariableAssignmentStep is running", buf, 2u);
  }

  v93 = objc_msgSend_array(MEMORY[0x1E695DF70], v8, v9, v10, v11, v12);
  v92 = processCopy;
  v18 = objc_msgSend_result(processCopy, v13, v14, v15, v16, v17);
  v29 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20, v21, v22, v23);
  for (i = 0; ; ++i)
  {
    v31 = objc_msgSend_transcriptionPaths(v18, v24, v25, v26, v27, v28);
    v37 = objc_msgSend_count(v31, v32, v33, v34, v35, v36);

    if (i >= v37)
    {
      break;
    }

    v43 = objc_msgSend_transcriptionPaths(v18, v38, v39, v40, v41, v42);
    v48 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, i, v45, v46, v47);

    v54 = objc_msgSend_array(MEMORY[0x1E695DF70], v49, v50, v51, v52, v53);
    v60 = objc_msgSend_tokenColumnCount(v18, v55, v56, v57, v58, v59);
    v63 = objc_msgSend_transcriptionWithPath_columnRange_(v18, v61, v48, 0, v60, v62);
    v68 = objc_msgSend_containsString_(v63, v64, @"=", v65, v66, v67);
    *buf = 0;
    v99 = buf;
    v100 = 0x2020000000;
    v101 = v68;
    v74 = objc_msgSend_tokenColumnCount(v18, v69, v70, v71, v72, v73);
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = sub_1836793CC;
    v94[3] = &unk_1E6DDBE38;
    v97 = buf;
    v95 = v93;
    v75 = v54;
    v96 = v75;
    objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v18, v76, v48, 0, v74, v94);
    objc_msgSend_addObject_(v29, v77, v75, v78, v79, v80);

    _Block_object_dispose(buf, 8);
  }

  v81 = [CHTokenizedMathResult alloc];
  v86 = objc_msgSend_initWithBestPathTokens_(v81, v82, v29, v83, v84, v85);
  objc_msgSend_setResult_(v92, v87, v86, v88, v89, v90);

  return v92;
}

@end