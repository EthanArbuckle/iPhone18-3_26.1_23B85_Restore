@interface CHIdentifyLowAlignmentConfidenceColumnsStep
- (id)process:(id)process options:(id)options;
@end

@implementation CHIdentifyLowAlignmentConfidenceColumnsStep

- (id)process:(id)process options:(id)options
{
  v123 = *MEMORY[0x1E69E9840];
  processCopy = process;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v4 = qword_1EA84DC58;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v4, OS_LOG_TYPE_DEBUG, "CHIdentifyLowAlignmentConfidenceColumnsStep is running", buf, 2u);
  }

  v10 = objc_msgSend_result(processCopy, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_tokenColumns(v10, v11, v12, v13, v14, v15);
  v22 = objc_msgSend_count(v16, v17, v18, v19, v20, v21);
  v23 = v22 != 0;

  v29 = objc_msgSend_tokenColumns(v10, v24, v25, v26, v27, v28);
  v35 = objc_msgSend_count(v29, v30, v31, v32, v33, v34);

  v41 = v35 - 2;
  if (((v35 - 2) & 0x8000000000000000) == 0)
  {
    v42 = (__PAIR128__(v35, v22) - 1) >> 64;
    while (1)
    {
      v43 = objc_msgSend_tokenColumns(v10, v36, v37, v38, v39, v40);
      v48 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, v41, v45, v46, v47);

      v119 = 0u;
      v120 = 0u;
      v117 = 0u;
      v118 = 0u;
      v54 = objc_msgSend_textTokenRows(v48, v49, v50, v51, v52, v53);
      v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v55, &v117, v122, 16, v56);
      if (!v62)
      {
        break;
      }

      v63 = *v118;
      v64 = 1.0;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v118 != v63)
          {
            objc_enumerationMutation(v54);
          }

          v66 = objc_msgSend_lastObject(*(*(&v117 + 1) + 8 * i), v57, v58, v59, v60, v61);
          objc_msgSend_alignmentScore(v66, v67, v68, v69, v70, v71);
          v73 = v72;

          if (v73 < v64)
          {
            v64 = v73;
          }
        }

        v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v54, v57, &v117, v122, 16, v61);
      }

      while (v62);

      if (v64 >= 0.9)
      {
        goto LABEL_21;
      }

      ++v23;
      if (v41-- <= 0)
      {
        v23 = v42;
        goto LABEL_21;
      }
    }
  }

LABEL_21:
  if (v23 <= objc_msgSend_changeableTokenColumnCount(v10, v36, v37, v38, v39, v40))
  {
    v23 = objc_msgSend_changeableTokenColumnCount(v10, v75, v76, v77, v78, v79);
  }

  if (objc_msgSend_tokenColumnCount(v10, v75, v76, v77, v78, v79) - v23 == 1)
  {
    v85 = objc_msgSend_transcriptionPaths(v10, v80, v81, v82, v83, v84);
    v91 = objc_msgSend_firstObject(v85, v86, v87, v88, v89, v90);
    v93 = objc_msgSend_transcriptionWithPath_columnRange_filterLowConfidence_(v10, v92, v91, 0, 1, 0);

    if (objc_msgSend_countCharacters(v93, v94, v95, v96, v97, v98) == 1)
    {
      v23 = objc_msgSend_tokenColumnCount(v10, v99, v100, v101, v102, v103);
    }
  }

  if (v23 < objc_msgSend_changeableTokenColumnCount(v10, v80, v81, v82, v83, v84))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v109 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v109, OS_LOG_TYPE_ERROR, "CHIdentifyLowAlignmentConfidenceColumnsStep unexpectedly decreased the changeable token column count.", buf, 2u);
    }
  }

  if (v23 < objc_msgSend_changeableTokenColumnCount(v10, v104, v105, v106, v107, v108))
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v114 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v114, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v114, OS_LOG_TYPE_FAULT, "CHIdentifyLowAlignmentConfidenceColumnsStep unexpectedly decreased the changeable token column count.", buf, 2u);
    }
  }

  objc_msgSend_setChangeableTokenColumnCount_(v10, v110, v23, v111, v112, v113);

  return processCopy;
}

@end