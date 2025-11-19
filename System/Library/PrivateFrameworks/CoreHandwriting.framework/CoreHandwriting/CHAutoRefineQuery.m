@interface CHAutoRefineQuery
- (CHAutoRefineQuery)initWithRecognitionSession:(id)a3;
- (void)q_updateQueryResult;
@end

@implementation CHAutoRefineQuery

- (CHAutoRefineQuery)initWithRecognitionSession:(id)a3
{
  v10.receiver = self;
  v10.super_class = CHAutoRefineQuery;
  result = [(CHQuery *)&v10 initWithRecognitionSession:a3];
  if (result)
  {
    v9 = result;
    objc_msgSend_setPreferredUpdatesInterval_(result, v4, v5, v6, v7, v8, 0.25);
    return v9;
  }

  return result;
}

- (void)q_updateQueryResult
{
  v133 = *MEMORY[0x1E69E9840];
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
    _os_signpost_emit_with_name_impl(&dword_18366B000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CHAutoRefineQuery", "", buf, 2u);
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
    _os_log_impl(&dword_18366B000, v7, OS_LOG_TYPE_DEFAULT, "BEGIN CHAutoRefineQuery", buf, 2u);
  }

  v123.receiver = self;
  v123.super_class = CHAutoRefineQuery;
  [(CHQuery *)&v123 q_updateQueryResult];
  v13 = objc_msgSend_q_sessionResult(self, v8, v9, v10, v11, v12);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v14 = qword_1EA84DC60;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_msgSend_autoRefineResults(v13, v15, v16, v17, v18, v19);
    v26 = objc_msgSend_count(v20, v21, v22, v23, v24, v25);
    *buf = 134217984;
    v125 = v26;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "AutoRefine query items available: %ld", buf, 0xCu);
  }

  v32 = objc_msgSend_autoRefineResults(v13, v27, v28, v29, v30, v31);
  v38 = objc_msgSend_count(v32, v33, v34, v35, v36, v37);

  if (!v38)
  {
    autoRefinedItems = self->_autoRefinedItems;
    self->_autoRefinedItems = 0;

    objc_msgSend_q_queryResultDidChange(self, v113, v114, v115, v116, v117);
    if (qword_1EA84DC48 == -1)
    {
      goto LABEL_28;
    }

LABEL_36:
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v110 = qword_1EA84DC88;
    if (v6 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v118 = v4;
  v44 = MEMORY[0x1E695DF70];
  v45 = objc_msgSend_autoRefineResults(v13, v39, v40, v41, v42, v43);
  v51 = objc_msgSend_count(v45, v46, v47, v48, v49, v50);
  v56 = objc_msgSend_arrayWithCapacity_(v44, v52, v51, v53, v54, v55);

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v62 = objc_msgSend_autoRefineResults(v13, v57, v58, v59, v60, v61);
  v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v119, v132, 16, v64);
  if (v65)
  {
    v66 = v65;
    v67 = *v120;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v120 != v67)
        {
          objc_enumerationMutation(v62);
        }

        v69 = *(*(&v119 + 1) + 8 * i);
        v70 = [CHAutoRefineQueryItem alloc];
        v75 = objc_msgSend_initWithAutoRefineResult_(v70, v71, v69, v72, v73, v74);
        objc_msgSend_addObject_(v56, v76, v75, v77, v78, v79);
      }

      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v80, &v119, v132, 16, v81);
    }

    while (v66);
  }

  objc_storeStrong(&self->_autoRefinedItems, v56);
  v85 = objc_msgSend_ch_descriptionWithSeparator_filterBlock_(self->_autoRefinedItems, v82, @", ", &unk_1EF1BDFD0, v83, v84);
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v86 = qword_1EA84DC60;
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    v92 = objc_msgSend_debugName(self, v87, v88, v89, v90, v91);
    v98 = objc_msgSend_strokeProviderVersion(v13, v93, v94, v95, v96, v97);
    v104 = objc_msgSend_count(self->_autoRefinedItems, v99, v100, v101, v102, v103);
    *buf = 138413059;
    v125 = v92;
    v126 = 2112;
    v127 = v98;
    v128 = 2048;
    v129 = v104;
    v130 = 2117;
    v131 = v85;
    _os_log_impl(&dword_18366B000, v86, OS_LOG_TYPE_DEFAULT, "AutoRefine: %@: beginning update for result version %@, %ld items with transcriptions = %{sensitive}@", buf, 0x2Au);
  }

  v4 = v118;
  objc_msgSend_q_queryResultDidChange(self, v105, v106, v107, v108, v109);
  if (qword_1EA84DC48 != -1)
  {
    goto LABEL_36;
  }

LABEL_28:
  v110 = qword_1EA84DC88;
  if (v6 > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (os_signpost_enabled(v110))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v110, OS_SIGNPOST_INTERVAL_END, v4, "CHAutoRefineQuery", "", buf, 2u);
  }

LABEL_31:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v111 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v111 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
  {
LABEL_33:
    *buf = 0;
    _os_log_impl(&dword_18366B000, v111, OS_LOG_TYPE_DEFAULT, "END CHAutoRefineQuery", buf, 2u);
  }

LABEL_34:
}

@end