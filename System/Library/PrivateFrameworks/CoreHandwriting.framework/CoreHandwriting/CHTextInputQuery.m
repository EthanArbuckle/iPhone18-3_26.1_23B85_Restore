@interface CHTextInputQuery
+ (id)queryItemStableIdentifierForStrokeGroup:(id)a3;
- (CHTextInputQuery)initWithRecognitionSession:(id)a3;
- (CHTextInputQueryTargetDataSource)textInputTargetsDataSource;
- (NSArray)availableItems;
- (void)dealloc;
- (void)q_updateQueryResult;
@end

@implementation CHTextInputQuery

- (CHTextInputQuery)initWithRecognitionSession:(id)a3
{
  v22.receiver = self;
  v22.super_class = CHTextInputQuery;
  v3 = [(CHQuery *)&v22 initWithRecognitionSession:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    availableItems = v3->_availableItems;
    v3->_availableItems = v4;

    objc_msgSend_setPreferredUpdatesInterval_(v3, v6, v7, v8, v9, v10, 0.3);
    v16 = objc_msgSend_recognitionSession(v3, v11, v12, v13, v14, v15);
    objc_msgSend_setActiveTextInputQuery_(v16, v17, v3, v18, v19, v20);
  }

  return v3;
}

- (void)dealloc
{
  v7 = objc_msgSend_recognitionSession(self, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_activeTextInputQuery(v7, v8, v9, v10, v11, v12);

  if (v13 == self)
  {
    v19 = objc_msgSend_recognitionSession(self, v14, v15, v16, v17, v18);
    objc_msgSend_setActiveTextInputQuery_(v19, v20, 0, v21, v22, v23);
  }

  v24.receiver = self;
  v24.super_class = CHTextInputQuery;
  [(CHQuery *)&v24 dealloc];
}

- (void)q_updateQueryResult
{
  v2 = self;
  v207 = *MEMORY[0x1E69E9840];
  v193.receiver = self;
  v193.super_class = CHTextInputQuery;
  [(CHQuery *)&v193 q_updateQueryResult];
  v8 = objc_msgSend_q_sessionResult(v2, v3, v4, v5, v6, v7);
  v14 = v8;
  if (!v2)
  {
    v15 = 0;

    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

  v15 = objc_msgSend_array(MEMORY[0x1E695DF70], v9, v10, v11, v12, v13);
  v21 = objc_msgSend_strokeGroupingResult(v14, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_strokeGroups(v21, v22, v23, v24, v25, v26);

  v183 = v27;
  v33 = objc_msgSend_allObjects(v27, v28, v29, v30, v31, v32);
  v39 = objc_msgSend_strokeGroupAncestorComparator(CHStrokeGroup, v34, v35, v36, v37, v38);
  v44 = objc_msgSend_sortedArrayUsingComparator_(v33, v40, v39, v41, v42, v43);

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  obj = v44;
  v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v45, &v194, buf, 16, v46);
  if (v189)
  {
    v188 = *v195;
    v186 = v14;
    v187 = v2;
    v185 = v15;
    do
    {
      for (i = 0; i != v189; ++i)
      {
        if (*v195 != v188)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v194 + 1) + 8 * i);
        v58 = MEMORY[0x1E696AD98];
        v59 = objc_msgSend_uniqueIdentifier(v57, v47, v48, v49, v50, v51);
        v191 = objc_msgSend_numberWithInteger_(v58, v60, v59, v61, v62, v63);
        v64 = objc_opt_class();
        v190 = objc_msgSend_queryItemStableIdentifierForStrokeGroup_(v64, v65, v57, v66, v67, v68);
        v74 = objc_msgSend_uniqueIdentifier(v57, v69, v70, v71, v72, v73);
        v79 = objc_msgSend_textCorrectionResultForStrokeGroupIdentifier_(v14, v75, v74, v76, v77, v78);
        v85 = v79;
        if (v79)
        {
          v91 = objc_msgSend_inputStrokeIdentifiers(v79, v80, v81, v82, v83, v84);
        }

        else
        {
          v92 = objc_msgSend_strokeIdentifiers(v57, v80, v81, v82, v83, v84);
          v98 = objc_msgSend_allObjects(v92, v93, v94, v95, v96, v97);

          v91 = objc_msgSend_sortedArrayUsingComparator_(v98, v99, &unk_1EF1BEA70, v100, v101, v102);
        }

        v103 = objc_msgSend_recognitionSession(v2, v86, v87, v88, v89, v90);
        v109 = objc_msgSend_latestStrokeProvider(v103, v104, v105, v106, v107, v108);
        v113 = objc_msgSend_strokeIdentifiersForData_withStrokeProvider_(CHStrokeUtilities, v110, v91, v109, v111, v112);

        if (v113)
        {
          v114 = [CHTextInputQueryItem alloc];
          v120 = objc_msgSend_textCorrectionResult(v85, v115, v116, v117, v118, v119);
          v121 = v191;
          v122 = v190;
          v123 = v113;
          v124 = v120;
          if (v114)
          {
            v198.receiver = v114;
            v198.super_class = CHTextInputQueryItem;
            v114 = [(CHQuery *)&v198 init];
            if (v114)
            {
              v130 = objc_msgSend_copy(v121, v125, v126, v127, v128, v129);
              itemIdentifier = v114->_itemIdentifier;
              v114->_itemIdentifier = v130;

              v137 = objc_msgSend_copy(v122, v132, v133, v134, v135, v136);
              itemStableIdentifier = v114->_itemStableIdentifier;
              v114->_itemStableIdentifier = v137;

              v144 = objc_msgSend_copy(v123, v139, v140, v141, v142, v143);
              strokeIdentifiers = v114->_strokeIdentifiers;
              v114->_strokeIdentifiers = v144;

              objc_storeStrong(&v114->_correctionResult, v120);
            }
          }

          v15 = v185;
          objc_msgSend_addObject_(v185, v53, v114, v54, v55, v56);

          v14 = v186;
          v2 = v187;
        }
      }

      v189 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v194, buf, 16, v51);
    }

    while (v189);
  }

  if (qword_1EA84DC48 != -1)
  {
LABEL_28:
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

LABEL_18:
  v146 = qword_1EA84DC60;
  if (os_log_type_enabled(v146, OS_LOG_TYPE_DEBUG))
  {
    v152 = objc_msgSend_debugName(v2, v147, v148, v149, v150, v151);
    v158 = objc_msgSend_recognitionSession(v2, v153, v154, v155, v156, v157);
    v164 = objc_msgSend_strokeProviderVersion(v14, v159, v160, v161, v162, v163);
    v170 = objc_msgSend_count(v15, v165, v166, v167, v168, v169);
    *buf = 138413058;
    v200 = v152;
    v201 = 2048;
    v202 = v158;
    v203 = 2112;
    v204 = v164;
    v205 = 2048;
    v206 = v170;
    _os_log_impl(&dword_18366B000, v146, OS_LOG_TYPE_DEBUG, "%@: finished update for session %p, version %@. %ld item(s) available.", buf, 0x2Au);
  }

  if (v14)
  {
    objc_msgSend_generationDuration(v14, v171, v172, v173, v174, v175);
    if (!v2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v192 = 0.0;
    if (!v2)
    {
      goto LABEL_26;
    }
  }

  v2->_totalDuration = v192;
  if (v2->_availableItems != v15)
  {
    v176 = objc_msgSend_copy(v15, v171, v172, v173, v174, v175);
    availableItems = v2->_availableItems;
    v2->_availableItems = v176;

    objc_msgSend_q_queryResultDidChange(v2, v178, v179, v180, v181, v182);
  }

LABEL_26:
}

- (NSArray)availableItems
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_18386FD50;
  v15 = sub_18386FD60;
  v16 = 0;
  v7 = objc_msgSend_processingQueue(self, a2, v2, v3, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18386FD68;
  v10[3] = &unk_1E6DDC180;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v7, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (CHTextInputQueryTargetDataSource)textInputTargetsDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_textInputTargetsDataSource);

  return WeakRetained;
}

+ (id)queryItemStableIdentifierForStrokeGroup:(id)a3
{
  v6 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_ancestorIdentifier(a3, a2, a3, v3, v4, v5);

  return objc_msgSend_numberWithInteger_(v6, v7, v8, v9, v10, v11);
}

@end