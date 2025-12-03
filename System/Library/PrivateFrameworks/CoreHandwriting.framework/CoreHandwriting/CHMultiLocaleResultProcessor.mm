@interface CHMultiLocaleResultProcessor
+ (id)combineMultiLocaleResults:(id)results locales:(id)locales topLocaleIndex:(int64_t)index mergedResultPostprocessingBlock:(id)block changeableColumnCountBlock:(id)countBlock;
+ (void)updateMultiLocaleResultDictionary:(id)dictionary locales:(id)locales;
@end

@implementation CHMultiLocaleResultProcessor

+ (void)updateMultiLocaleResultDictionary:(id)dictionary locales:(id)locales
{
  v92 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  localesCopy = locales;
  v6 = MEMORY[0x1E695DF70];
  v12 = objc_msgSend_count(dictionaryCopy, v7, v8, v9, v10, v11);
  v84 = objc_msgSend_arrayWithCapacity_(v6, v13, v12, v14, v15, v16);
  v17 = MEMORY[0x1E695DF70];
  v23 = objc_msgSend_count(dictionaryCopy, v18, v19, v20, v21, v22);
  v28 = objc_msgSend_arrayWithCapacity_(v17, v24, v23, v25, v26, v27);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = localesCopy;
  v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v85, v91, 16, v30);
  if (v35)
  {
    v36 = *v86;
    do
    {
      v37 = 0;
      do
      {
        if (*v86 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v85 + 1) + 8 * v37);
        v43 = objc_msgSend_objectForKey_(dictionaryCopy, v31, v38, v32, v33, v34);
        if (v43)
        {
          v44 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v39, v38, v40, v41, v42);
          v50 = objc_msgSend_copy(v44, v45, v46, v47, v48, v49);
          objc_msgSend_addObject_(v84, v51, v50, v52, v53, v54);

          objc_msgSend_addObject_(v28, v55, v38, v56, v57, v58);
          goto LABEL_15;
        }

        if (qword_1EA84DC48 == -1)
        {
          v59 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }

LABEL_10:
          *buf = 138412290;
          v90 = v38;
          _os_log_impl(&dword_18366B000, v59, OS_LOG_TYPE_ERROR, "results does not contain result for locale %@", buf, 0xCu);
          goto LABEL_11;
        }

        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v59 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_10;
        }

LABEL_11:

        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          v60 = qword_1EA84DC50[0];
          if (!os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_14;
          }

LABEL_13:
          *buf = 138412290;
          v90 = v38;
          _os_log_impl(&dword_18366B000, v60, OS_LOG_TYPE_FAULT, "results does not contain result for locale %@", buf, 0xCu);
          goto LABEL_14;
        }

        v60 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
        {
          goto LABEL_13;
        }

LABEL_14:

LABEL_15:
        ++v37;
      }

      while (v35 != v37);
      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v31, &v85, v91, 16, v34);
      v35 = v61;
    }

    while (v61);
  }

  for (i = 0; i < objc_msgSend_count(v28, v62, v63, v64, v65, v66); ++i)
  {
    v68 = sub_183869B50(CHMultiLocaleResultProcessor, v84, v28, i, 0, 0);
    v73 = objc_msgSend_objectAtIndexedSubscript_(v68, v69, i, v70, v71, v72);
    v78 = objc_msgSend_objectAtIndexedSubscript_(v28, v74, i, v75, v76, v77);
    objc_msgSend_setObject_forKeyedSubscript_(dictionaryCopy, v79, v73, v78, v80, v81);
  }
}

+ (id)combineMultiLocaleResults:(id)results locales:(id)locales topLocaleIndex:(int64_t)index mergedResultPostprocessingBlock:(id)block changeableColumnCountBlock:(id)countBlock
{
  v71 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  localesCopy = locales;
  blockCopy = block;
  countBlockCopy = countBlock;
  v69 = 0;
  v68 = 0;
  v61 = resultsCopy;
  v62 = sub_183869B50(CHMultiLocaleResultProcessor, resultsCopy, localesCopy, index, &v69, &v68);
  v60 = v68;
  shouldPerformStrictCandidateFiltering = objc_msgSend_shouldPerformStrictCandidateFiltering_(CHRecognizerConfiguration, v14, v60, v15, v16, v17);
  indexCopy = index;
  v23 = objc_msgSend_objectAtIndexedSubscript_(localesCopy, v19, index, v20, v21, v22);
  isSupportedCyrillicScriptLocale_withMode = objc_msgSend_isSupportedCyrillicScriptLocale_withMode_(CHRecognizerConfiguration, v24, v23, 4, v25, v26);

  v34 = objc_msgSend_tokenizedTextResultFromResults_shouldPerformStrictFiltering_doesTopLocaleRequireSpecialHandling_hasSwap_(CHTokenizedTextResult, v28, v62, shouldPerformStrictCandidateFiltering & 1, isSupportedCyrillicScriptLocale_withMode, v69);
  if (blockCopy && (objc_msgSend_count(resultsCopy, v29, v30, v31, v32, v33) > 1) | isSupportedCyrillicScriptLocale_withMode & 1)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v35 = localesCopy;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v64, v70, 16, v37);
    if (v40)
    {
      v41 = *v65;
      if (shouldPerformStrictCandidateFiltering)
      {
        v42 = -1;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            v44 = v42;
            if (*v65 != v41)
            {
              objc_enumerationMutation(v35);
            }

            ++v42;
            if (indexCopy - 1 != v44 || v69)
            {
              v45 = blockCopy[2](blockCopy, v44 + 1, *(*(&v64 + 1) + 8 * i), v34);

              v34 = v45;
            }
          }

          v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v38, &v64, v70, 16, v39);
        }

        while (v40);
      }

      else
      {
        v46 = -1;
        do
        {
          v47 = 0;
          v48 = v34;
          do
          {
            if (*v65 != v41)
            {
              objc_enumerationMutation(v35);
            }

            v34 = blockCopy[2](blockCopy, ++v46, *(*(&v64 + 1) + 8 * v47), v48);

            ++v47;
            v48 = v34;
          }

          while (v40 != v47);
          v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v49, &v64, v70, 16, v50);
        }

        while (v40);
      }
    }
  }

  if (countBlockCopy)
  {
    v51 = objc_msgSend_changeableTokenColumnCount(v34, v29, v30, v31, v32, v33);
    if (v51 < objc_msgSend_tokenColumnCount(v34, v52, v53, v54, v55, v56))
    {
      v57 = countBlockCopy[2](countBlockCopy, indexCopy, v60, v34);

      v34 = v57;
    }
  }

  return v34;
}

@end