@interface CHSpellChecker
- (CHSpellChecker)init;
- (id)correctionsForString:(id)a3 shouldUseErrorModel:(BOOL)a4 forLocale:(id)a5;
- (id)topCorrectionForRecognition:(id)a3 contextBeforeToken:(id)a4 contextSeparator:(id)a5 shouldUseErrorModel:(BOOL)a6 forLocale:(id)a7 minScore:(double)a8;
- (id)topCorrectionForString:(id)a3 contextBeforeToken:(id)a4 contextSeparator:(id)a5 shouldUseErrorModel:(BOOL)a6 forLanguage:(id)a7;
- (id)topCorrectionsForRecognition:(id)a3 contextBeforeToken:(id)a4 contextSeparator:(id)a5 shouldUseErrorModel:(BOOL)a6 forLocale:(id)a7 minScore:(double)a8;
@end

@implementation CHSpellChecker

- (CHSpellChecker)init
{
  v6.receiver = self;
  v6.super_class = CHSpellChecker;
  v2 = [(CHSpellChecker *)&v6 init];
  if (v2)
  {
    objc_opt_self();
    if (qword_1EA84D010 != -1)
    {
      dispatch_once(&qword_1EA84D010, &unk_1EF1BE7C8);
    }

    objc_storeStrong(&v2->_spellServer, qword_1EA84D008);
    objc_opt_self();
    v3 = objc_alloc_init(CHSpellCheckerErrorModel);
    errorModel = v2->_errorModel;
    v2->_errorModel = v3;
  }

  return v2;
}

- (id)topCorrectionForString:(id)a3 contextBeforeToken:(id)a4 contextSeparator:(id)a5 shouldUseErrorModel:(BOOL)a6 forLanguage:(id)a7
{
  v11 = a3;
  v12 = a4;
  v90 = a5;
  v13 = a7;
  v19 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v14, v15, v16, v17, v18);
  LOBYTE(a7) = sub_1837A4F0C(v11, v19);

  if ((a7 & 1) == 0)
  {
    v26 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v20, v21, v22, v23, v24);
    v27 = sub_1837A4CE0(v11, v26, 0);
    v29 = v28;

    if (v29)
    {
      v35 = objc_msgSend_substringWithRange_(v11, v30, v27, v29, v33, v34);
    }

    else
    {
      v35 = &stru_1EF1C0318;
    }

    v89 = v35;
    v36 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v30, v31, v32, v33, v34);
    v37 = sub_1837A4CE0(v11, v36, 1);
    v39 = v38;

    if (v39)
    {
      v44 = objc_msgSend_substringWithRange_(v11, v40, v37, v39, v42, v43);
      if (v12)
      {
LABEL_8:
        v45 = objc_msgSend_stringByAppendingFormat_(v12, v40, @"%@%@", v41, v42, v43, v90, v11);
LABEL_11:
        v51 = v45;
        v52 = objc_msgSend_length(v45, v46, v47, v48, v49, v50);
        v63 = v52 + v29 - objc_msgSend_length(v11, v53, v54, v55, v56, v57);
        v64 = objc_msgSend_length(v11, v58, v59, v60, v61, v62) - (v39 + v29);
        v65 = self->_spellServer;
        objc_sync_enter(v65);
        v67 = objc_msgSend_spellServer_suggestGuessesForWordRange_inString_language_options_(self->_spellServer, v66, self, v63, v64, v51, v13, 0);
        objc_sync_exit(v65);

        if (objc_msgSend_count(v67, v68, v69, v70, v71, v72))
        {
          v77 = objc_msgSend_objectAtIndexedSubscript_(v67, v73, 0, v74, v75, v76);
          v82 = objc_msgSend_stringByAppendingString_(v89, v78, v77, v79, v80, v81);

          v87 = objc_msgSend_stringByAppendingString_(v82, v83, v44, v84, v85, v86);
        }

        else
        {
          v87 = 0;
        }

        v25 = v87;

        goto LABEL_15;
      }
    }

    else
    {
      v44 = &stru_1EF1C0318;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    v45 = v11;
    goto LABEL_11;
  }

  v25 = 0;
LABEL_15:

  return v25;
}

- (id)correctionsForString:(id)a3 shouldUseErrorModel:(BOOL)a4 forLocale:(id)a5
{
  v6 = a4;
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v11 = a5;
  if (v6)
  {
    errorModel = self->_errorModel;
    v32 = @"ErrorModel";
    v33[0] = errorModel;
    v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v9, v33, &v32, 1, v10);
    v14 = self->_errorModel;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = self->_spellServer;
  objc_sync_enter(v15);
  spellServer = self->_spellServer;
  v22 = objc_msgSend_length(v8, v17, v18, v19, v20, v21);
  v28 = objc_msgSend_localeIdentifier(v11, v23, v24, v25, v26, v27);
  v30 = objc_msgSend_spellServer_suggestGuessDictionariesForWordRange_inString_language_options_errorModel_(spellServer, v29, self, 0, v22, v8, v28, v13, v14);

  objc_sync_exit(v15);

  return v30;
}

- (id)topCorrectionForRecognition:(id)a3 contextBeforeToken:(id)a4 contextSeparator:(id)a5 shouldUseErrorModel:(BOOL)a6 forLocale:(id)a7 minScore:(double)a8
{
  v8 = objc_msgSend_topCorrectionsForRecognition_contextBeforeToken_contextSeparator_shouldUseErrorModel_forLocale_minScore_(self, a2, a3, a4, a5, a6, a7, a8);
  v14 = v8;
  if (v8 && objc_msgSend_count(v8, v9, v10, v11, v12, v13))
  {
    v19 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, 0, v16, v17, v18);

    v20 = v19;
  }

  else
  {

    v20 = 0;
  }

  return v20;
}

- (id)topCorrectionsForRecognition:(id)a3 contextBeforeToken:(id)a4 contextSeparator:(id)a5 shouldUseErrorModel:(BOOL)a6 forLocale:(id)a7 minScore:(double)a8
{
  v122 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v113 = a4;
  v112 = a5;
  v114 = a7;
  v111 = v13;
  v116 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16, v17, v18);
  v24 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v19, v20, v21, v22, v23);
  LOBYTE(a5) = sub_1837A4F0C(v13, v24);

  if (a5)
  {
    goto LABEL_20;
  }

  v30 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v25, v26, v27, v28, v29);
  v31 = sub_1837A4CE0(v13, v30, 0);
  v33 = v32;

  if (v33)
  {
    v115 = objc_msgSend_substringWithRange_(v13, v34, v31, v33, v37, v38);
  }

  else
  {
    v115 = &stru_1EF1C0318;
  }

  v39 = objc_msgSend_punctuationCharacterSet(MEMORY[0x1E696AB08], v34, v35, v36, v37, v38);
  v40 = sub_1837A4CE0(v13, v39, 1);
  v42 = v41;

  if (!v42)
  {
    v47 = &stru_1EF1C0318;
    v48 = v113;
    if (v113)
    {
      goto LABEL_7;
    }

LABEL_9:
    v49 = v13;
    goto LABEL_10;
  }

  v47 = objc_msgSend_substringWithRange_(v13, v43, v40, v42, v45, v46);
  v48 = v113;
  if (!v113)
  {
    goto LABEL_9;
  }

LABEL_7:
  v49 = objc_msgSend_stringByAppendingFormat_(v48, v43, @"%@%@", v44, v45, v46, v112, v13);
LABEL_10:
  v110 = v49;
  v55 = objc_msgSend_length(v49, v50, v51, v52, v53, v54);
  v61 = objc_msgSend_length(v13, v56, v57, v58, v59, v60);
  v67 = objc_msgSend_length(v13, v62, v63, v64, v65, v66);
  v71 = objc_msgSend_substringWithRange_(v110, v68, v55 + v33 - v61, v67 - (v42 + v33), v69, v70);
  v74 = objc_msgSend_correctionsForString_shouldUseErrorModel_forLocale_(self, v72, v71, 1, v114, v73);

  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v75 = v74;
  v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, &v117, v121, 16, v77);
  if (v82)
  {
    v83 = *v118;
    do
    {
      for (i = 0; i != v82; ++i)
      {
        if (*v118 != v83)
        {
          objc_enumerationMutation(v75);
        }

        v85 = *(*(&v117 + 1) + 8 * i);
        v86 = objc_msgSend_objectForKeyedSubscript_(v85, v78, @"Score", v79, v80, v81);
        objc_msgSend_doubleValue(v86, v87, v88, v89, v90, v91);
        v93 = v92 > a8;

        if (v93)
        {
          v94 = objc_msgSend_objectForKeyedSubscript_(v85, v78, @"Guess", v79, v80, v81);
          v99 = objc_msgSend_stringByAppendingString_(v115, v95, v94, v96, v97, v98);

          v104 = objc_msgSend_stringByAppendingString_(v99, v100, v47, v101, v102, v103);

          objc_msgSend_addObject_(v116, v105, v104, v106, v107, v108);
        }
      }

      v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v78, &v117, v121, 16, v81);
    }

    while (v82);
  }

LABEL_20:

  return v116;
}

@end