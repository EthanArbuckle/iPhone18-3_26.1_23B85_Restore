@interface CHTextCheckUtils
+ (id)rawTranscriptionForStrokesWithEncodedIdentifiers:(id)identifiers contextResults:(id)results outLocale:(id *)locale;
+ (id)rawTranscriptionForStrokesWithIdentifiers:(id)identifiers strokeProvider:(id)provider sessionResult:(id)result;
@end

@implementation CHTextCheckUtils

+ (id)rawTranscriptionForStrokesWithEncodedIdentifiers:(id)identifiers contextResults:(id)results outLocale:(id *)locale
{
  v99 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = sub_183991460;
  v96 = sub_183991470;
  v97 = &stru_1EF1C0318;
  resultsCopy = results;
  v79 = identifiersCopy;
  v83 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v7, identifiersCopy, v8, v9, v10);
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = resultsCopy;
  v13 = 0;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v88, v98, 16, v12);
  if (v19)
  {
    v82 = *v89;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v89 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v88 + 1) + 8 * i);
        v22 = objc_msgSend_textResult(v21, v14, v15, v16, v17, v18);
        v28 = objc_msgSend_inputStrokeIdentifiers(v22, v23, v24, v25, v26, v27);

        v34 = objc_msgSend_textResult(v21, v29, v30, v31, v32, v33);
        v40 = v34;
        if (!v13)
        {
          v13 = objc_msgSend_locale(v34, v35, v36, v37, v38, v39);
        }

        v41 = objc_msgSend_rawTranscriptionPath(v40, v35, v36, v37, v38, v39);
        v47 = objc_msgSend_tokenColumns(v40, v42, v43, v44, v45, v46);
        v53 = objc_msgSend_count(v47, v48, v49, v50, v51, v52);
        v84[0] = MEMORY[0x1E69E9820];
        v84[1] = 3221225472;
        v84[2] = sub_183991478;
        v84[3] = &unk_1E6DDD3B8;
        v54 = v28;
        v85 = v54;
        v86 = v83;
        v87 = &v92;
        objc_msgSend_enumerateTokensInTranscriptionPath_columnRange_tokenProcessingBlock_(v40, v55, v41, 0, v53, v84);

        v60 = objc_msgSend_stringByAppendingString_(v93[5], v56, @" ", v57, v58, v59);
        v61 = v93[5];
        v93[5] = v60;
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v88, v98, 16, v18);
    }

    while (v19);
  }

  v62 = v93[5];
  v68 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v63, v64, v65, v66, v67);
  v73 = objc_msgSend_stringByTrimmingCharactersInSet_(v62, v69, v68, v70, v71, v72);
  v74 = v93[5];
  v93[5] = v73;

  if (locale)
  {
    v75 = v13;
    *locale = v13;
  }

  v76 = v93[5];

  _Block_object_dispose(&v92, 8);

  return v76;
}

+ (id)rawTranscriptionForStrokesWithIdentifiers:(id)identifiers strokeProvider:(id)provider sessionResult:(id)result
{
  resultCopy = result;
  v11 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(CHStrokeUtilities, v8, identifiers, provider, v9, v10);
  v12 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  v26 = v12;
  v16 = objc_msgSend_fullyCoveredStrokeGroupsForContextStrokes_partiallyCoveredStrokeGroups_(resultCopy, v13, v11, &v26, v14, v15);
  v17 = v26;

  v21 = objc_msgSend_contextualResultsWithFullyCoveredStrokeGroups_partiallyCoveredStrokeGroups_drawingCanvasSize_(resultCopy, v18, v16, v17, v19, v20, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  v24 = objc_msgSend_rawTranscriptionForStrokesWithEncodedIdentifiers_contextResults_outLocale_(CHTextCheckUtils, v22, v11, v21, 0, v23);

  return v24;
}

@end