@interface CHPrefixQuery
+ (id)hashtagQueryForRecognitionSession:(id)a3;
+ (id)mentionQueryForRecognitionSession:(id)a3;
+ (id)prefixQueryWithPrefix:(id)a3 forRecognitionSession:(id)a4;
- (BOOL)_isTokenStringMatchingQuery:(id)a3 allowPartialMatching:(BOOL)a4;
- (NSArray)foundItems;
- (NSSet)validSuffixes;
- (id)_prefixQueryResultsForSessionResult:(id)a3;
- (id)debugName;
- (void)q_updateQueryResult;
- (void)setValidSuffixes:(id)a3;
@end

@implementation CHPrefixQuery

+ (id)hashtagQueryForRecognitionSession:(id)a3
{
  v3 = a3;
  v4 = [CHPrefixQuery alloc];
  objc_opt_self();
  if (qword_1EA84CAF0 != -1)
  {
    dispatch_once(&qword_1EA84CAF0, &unk_1EF1BEBB0);
  }

  v5 = sub_18388B5C0(&v4->super.super.isa, v3, @"#", 0, qword_1EA84CAF8);

  return v5;
}

+ (id)mentionQueryForRecognitionSession:(id)a3
{
  v3 = a3;
  v4 = [CHPrefixQuery alloc];
  v10 = objc_msgSend_set(MEMORY[0x1E695DFD8], v5, v6, v7, v8, v9);
  v16 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v11, v12, v13, v14, v15);
  v17 = sub_18388B5C0(&v4->super.super.isa, v3, @"@", v10, v16);

  return v17;
}

+ (id)prefixQueryWithPrefix:(id)a3 forRecognitionSession:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [CHPrefixQuery alloc];
  v13 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v8, v9, v10, v11, v12);
  v14 = sub_18388B5C0(&v7->super.super.isa, v6, v5, 0, v13);

  return v14;
}

- (void)q_updateQueryResult
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC88;
  v4 = os_signpost_id_generate(v3);

  if (qword_1EA84DC48 == -1)
  {
    v5 = qword_1EA84DC88;
    v6 = v4 - 1;
    if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v5 = qword_1EA84DC88;
    v6 = v4 - 1;
    if (v4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CHPrefixQuery", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v7 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "BEGIN CHPrefixQuery", buf, 2u);
  }

  v34.receiver = self;
  v34.super_class = CHPrefixQuery;
  [(CHQuery *)&v34 q_updateQueryResult];
  v13 = objc_msgSend_q_sessionResult(self, v8, v9, v10, v11, v12);
  v18 = objc_msgSend__prefixQueryResultsForSessionResult_(self, v14, v13, v15, v16, v17);
  v24 = v18;
  if (self && self->_foundItems != v18)
  {
    v25 = objc_msgSend_copy(v18, v19, v20, v21, v22, v23);
    foundItems = self->_foundItems;
    self->_foundItems = v25;

    objc_msgSend_q_queryResultDidChange(self, v27, v28, v29, v30, v31);
  }

  if (qword_1EA84DC48 == -1)
  {
    v32 = qword_1EA84DC88;
    if (v6 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v32 = qword_1EA84DC88;
    if (v6 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_18;
    }
  }

  if (os_signpost_enabled(v32))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v32, OS_SIGNPOST_INTERVAL_END, v4, "CHPrefixQuery", "", buf, 2u);
  }

LABEL_18:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v33 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v33 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
LABEL_20:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v33, OS_LOG_TYPE_DEFAULT, "END CHPrefixQuery", buf, 2u);
  }

LABEL_21:
}

- (BOOL)_isTokenStringMatchingQuery:(id)a3 allowPartialMatching:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self->_prefix;
  v11 = objc_msgSend_stringByFoldingWithOptions_locale_(v7, v8, 385, 0, v9, v10);

  v15 = objc_msgSend_stringByFoldingWithOptions_locale_(v6, v12, 385, 0, v13, v14);
  v20 = objc_msgSend_componentsSeparatedByString_(v15, v16, v11, v17, v18, v19);
  v26 = objc_msgSend_count(v20, v21, v22, v23, v24, v25) - 1;

  if (v26 <= 1)
  {
    v31 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x2020000000;
    v91 = 0;
    if (objc_msgSend_hasPrefix_(v15, v27, v11, v28, v29, v30))
    {
      v37 = objc_msgSend_length(v11, v32, v33, v34, v35, v36);
      v42 = objc_msgSend_substringFromIndex_(v6, v38, v37, v39, v40, v41);
      v47 = objc_msgSend_rangeOfCharacterFromSet_(v42, v43, self->_queryDelimiters, v44, v45, v46);

      if (v47 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v4)
        {
          v53 = objc_msgSend_length(v15, v48, v49, v50, v51, v52);
          if (v53 == objc_msgSend_length(v11, v54, v55, v56, v57, v58) || (validSuffixes = self->_validSuffixes) == 0)
          {
            *(v89 + 24) = 1;
          }

          else
          {
            v84[0] = MEMORY[0x1E69E9820];
            v84[1] = 3221225472;
            v84[2] = sub_18388C0FC;
            v84[3] = &unk_1E6DDF4A0;
            v85 = v15;
            v86 = v11;
            v87 = &v88;
            objc_msgSend_enumerateObjectsUsingBlock_(validSuffixes, v60, v84, v61, v62, v63);
          }
        }

        else
        {
          v64 = self->_validSuffixes;
          if (v64)
          {
            v65 = objc_msgSend_length(v11, v48, v49, v50, v51, v52);
            v70 = objc_msgSend_substringFromIndex_(v15, v66, v65, v67, v68, v69);
            v75 = objc_msgSend_containsObject_(v64, v71, v70, v72, v73, v74);
            *(v89 + 24) = v75;
          }

          else
          {
            v76 = objc_msgSend_length(v15, v48, v49, v50, v51, v52);
            v82 = v76 > objc_msgSend_length(v11, v77, v78, v79, v80, v81);
            *(v89 + 24) = v82;
          }
        }
      }

      else
      {
        *(v89 + 24) = 0;
      }

      v31 = *(v89 + 24);
    }

    _Block_object_dispose(&v88, 8);
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

- (id)_prefixQueryResultsForSessionResult:(id)a3
{
  v145 = *MEMORY[0x1E69E9840];
  v121 = a3;
  v116 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6, v7, v8);
  validSuffixes = self->_validSuffixes;
  if (!validSuffixes || objc_msgSend_count(validSuffixes, v9, v10, v11, v12, v13))
  {
    v15 = objc_msgSend_strokeGroupingResult(v121, v9, v10, v11, v12, v13);
    v21 = objc_msgSend_strokeGroups(v15, v16, v17, v18, v19, v20);
    v118 = self;

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    obj = v21;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v138, v144, 16, v23);
    if (v24)
    {
      v119 = *v139;
      do
      {
        v120 = v24;
        for (i = 0; i != v120; ++i)
        {
          if (*v139 != v119)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v138 + 1) + 8 * i);
          v32 = objc_msgSend_uniqueIdentifier(v31, v25, v26, v27, v28, v29);
          v37 = objc_msgSend_recognitionResultForStrokeGroupIdentifier_(v121, v33, v32, v34, v35, v36);
          v122 = objc_msgSend_preferredLocale(v37, v38, v39, v40, v41, v42);
          v43 = objc_opt_class();
          v49 = objc_msgSend_recognitionResultsByLocale(v37, v44, v45, v46, v47, v48);
          v55 = objc_msgSend_locales(v121, v50, v51, v52, v53, v54);
          v61 = objc_msgSend_languageFitnessByLocale(v37, v56, v57, v58, v59, v60);
          v63 = objc_msgSend_filteredResultsByLocale_orderedLocales_usingLanguageFitness_outSortedLocales_(v43, v62, v49, v55, v61, 0);

          v72 = objc_msgSend_objectForKeyedSubscript_(v63, v64, v122, v65, v66, v67);
          if (v72)
          {
            if (objc_msgSend_shouldRefinePrefixQueryMatchesForLocale_(CHRecognizerConfiguration, v68, v122, v69, v70, v71))
            {
              v78 = objc_msgSend_array(MEMORY[0x1E695DF70], v73, v74, v75, v76, v77);
              v134 = 0;
              v135 = &v134;
              v136 = 0x2020000000;
              v137 = 0;
              v127[0] = MEMORY[0x1E69E9820];
              v127[1] = 3221225472;
              v127[2] = sub_18388D394;
              v127[3] = &unk_1E6DDF518;
              v117 = v78;
              v128 = v117;
              v129 = v118;
              v133 = &v134;
              v79 = v37;
              v130 = v79;
              v131 = v31;
              v80 = v116;
              v132 = v80;
              objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v72, v81, v127, v82, v83, v84);
              if (*(v135 + 24) == 1)
              {
                v85 = v117;
                v91 = objc_msgSend_string(MEMORY[0x1E696AD60], v86, v87, v88, v89, v90);
                v142[0] = MEMORY[0x1E69E9820];
                v142[1] = 3221225472;
                v142[2] = sub_18388CCDC;
                v142[3] = &unk_1E6DDE830;
                v92 = v91;
                v143 = v92;
                objc_msgSend_enumerateObjectsUsingBlock_(v85, v93, v142, v94, v95, v96);
                v101 = objc_msgSend_stringWithString_(MEMORY[0x1E696AEC0], v97, v92, v98, v99, v100);

                if (objc_msgSend__isTokenStringMatchingQuery_allowPartialMatching_(v118, v102, v101, 0, v103, v104))
                {
                  v109 = sub_18388C1C0(&v118->super.super.isa, v85, v79, v31);
                  if (v109)
                  {
                    objc_msgSend_addObject_(v80, v105, v109, v106, v107, v108);
                  }
                }
              }

              _Block_object_dispose(&v134, 8);
            }

            else
            {
              v123[0] = MEMORY[0x1E69E9820];
              v123[1] = 3221225472;
              v123[2] = sub_18388D584;
              v123[3] = &unk_1E6DDF540;
              v123[4] = v118;
              v124 = v37;
              v125 = v31;
              v126 = v116;
              objc_msgSend_enumerateTokensInTopTranscriptionPathWithBlock_(v72, v110, v123, v111, v112, v113);
            }
          }
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v138, v144, 16, v29);
      }

      while (v24);
    }
  }

  return v116;
}

- (NSArray)foundItems
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_18388D7D0;
  v15 = sub_18388D7E0;
  v16 = 0;
  v7 = objc_msgSend_processingQueue(self, a2, v2, v3, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18388D7E8;
  v10[3] = &unk_1E6DDC7F0;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v7, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (NSSet)validSuffixes
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_18388D7D0;
  v15 = sub_18388D7E0;
  v16 = 0;
  v7 = objc_msgSend_processingQueue(self, a2, v2, v3, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18388D928;
  v10[3] = &unk_1E6DDC7F0;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v7, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)setValidSuffixes:(id)a3
{
  v4 = a3;
  v10 = objc_msgSend_processingQueue(self, v5, v6, v7, v8, v9);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18388DA08;
  v12[3] = &unk_1E6DDC818;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  dispatch_sync(v10, v12);
}

- (id)debugName
{
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_msgSend_prefix(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_stringWithFormat_(v7, v9, @"Prefix data Query %p for prefix %@", v10, v11, v12, self, v8);

  return v13;
}

@end