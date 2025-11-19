@interface CHRemoteTextSynthesizer
- (BOOL)awaitInventoryIdleWithTimeout:(double)a3;
- (BOOL)isInventoryContainingSampleWithStrokeIdentifiers:(id)a3;
- (BOOL)populateStyleInventoryWithTokenizedResult:(id)a3 drawing:(id)a4 strokeIdentifiers:(id)a5 error:(id *)a6;
- (BOOL)resetStyleInventory:(id *)a3;
- (BOOL)updateStyleInventoryWithRemovedStrokeIdentifiers:(id)a3 error:(id *)a4;
- (CHRemoteTextSynthesizer)initWithShouldSkipInventoryLookup:(BOOL)a3 shouldSaveStyleSample:(BOOL)a4 shouldForceInventoryDefaultStyle:(BOOL)a5;
- (id)cachedStyleInventoryStatus;
- (id)chunkedDataForString:(id)a3 allowedSynthesizers:(id)a4;
- (id)chunkedDataForStringRefine:(id)a3 allowedSynthesizers:(id)a4;
- (id)planForReplacingText:(id)a3 withText:(id)a4;
- (id)refineDrawing:(id)a3 transcription:(id)a4 options:(id)a5 shouldCancel:(id)a6 error:(id *)a7;
- (id)replaceDrawing:(id)a3 originalTranscription:(id)a4 replacementTranscription:(id)a5 options:(id)a6 shouldCancel:(id)a7 error:(id *)a8;
- (id)styleInventoryStatusWithTimeout:(double)a3;
- (id)supportedCharacterIndexesForString:(id)a3 options:(id)a4;
- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6;
- (void)dealloc;
@end

@implementation CHRemoteTextSynthesizer

- (CHRemoteTextSynthesizer)initWithShouldSkipInventoryLookup:(BOOL)a3 shouldSaveStyleSample:(BOOL)a4 shouldForceInventoryDefaultStyle:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = CHRemoteTextSynthesizer;
  result = [(CHRemoteTextSynthesizer *)&v9 init];
  if (result)
  {
    result->_shouldSkipStyleInventoryLookup = a3;
    result->_shouldSaveStyleSample = a4;
    result->_shouldForceInventoryDefaultStyle = a5;
  }

  return result;
}

- (id)synthesizeDrawingForString:(id)a3 options:(id)a4 shouldCancel:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC98;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "Remote Synthesis Request for synthesize drawing", buf, 2u);
  }

  v14 = sub_18396B96C(self, v11);
  v15 = [CHRemoteSynthesisRequest alloc];
  v17 = objc_msgSend_initWithString_drawing_options_requestType_(v15, v16, v10, 0, v14, 0);
  if (v12 && (v12[2](v12) & 1) != 0)
  {
    v18 = 0;
  }

  else
  {
    v21 = 0;
    v18 = sub_18396BC20(self, v17, &v21);
    v19 = v21;
    if (a6)
    {
      v19 = v19;
      *a6 = v19;
    }
  }

  return v18;
}

- (id)refineDrawing:(id)a3 transcription:(id)a4 options:(id)a5 shouldCancel:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v16 = qword_1EA84DC98;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_DEFAULT, "Remote Synthesis Request for refine drawing", buf, 2u);
  }

  v17 = sub_18396B96C(self, v14);
  v18 = [CHRemoteSynthesisRequest alloc];
  v20 = objc_msgSend_initWithString_drawing_options_requestType_(v18, v19, v13, v12, v17, 1);
  if (v15 && (v15[2](v15) & 1) != 0)
  {
    v21 = 0;
  }

  else
  {
    v24 = 0;
    v21 = sub_18396BC20(self, v20, &v24);
    v22 = v24;
    if (a7)
    {
      v22 = v22;
      *a7 = v22;
    }
  }

  return v21;
}

- (id)replaceDrawing:(id)a3 originalTranscription:(id)a4 replacementTranscription:(id)a5 options:(id)a6 shouldCancel:(id)a7 error:(id *)a8
{
  v48[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v19 = qword_1EA84DC98;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v19, OS_LOG_TYPE_DEFAULT, "Remote Synthesis Request for replace drawing", buf, 2u);
  }

  v24 = sub_18396B96C(self, v17);
  if (v14)
  {
    v48[0] = v14;
    v25 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, v48, 1, v22, v23);
    objc_msgSend_setStyleDrawings_(v24, v26, v25, v27, v28, v29);
  }

  else
  {
    v25 = 0;
    objc_msgSend_setStyleDrawings_(v24, v20, 0, v21, v22, v23);
  }

  if (v14)
  {
  }

  if (v15)
  {
    v47 = v15;
    v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v30, &v47, 1, v32, v33);
    objc_msgSend_setStyleContents_(v24, v35, v34, v36, v37, v38);
  }

  else
  {
    v34 = 0;
    objc_msgSend_setStyleContents_(v24, v30, 0, v31, v32, v33);
  }

  if (v15)
  {
  }

  v39 = [CHRemoteSynthesisRequest alloc];
  v41 = objc_msgSend_initWithString_drawing_options_requestType_(v39, v40, v16, v14, v24, 2);
  if (v18 && (v18[2](v18) & 1) != 0)
  {
    v42 = 0;
  }

  else
  {
    v45 = 0;
    v42 = sub_18396BC20(self, v41, &v45);
    v43 = v45;
    if (a8)
    {
      v43 = v43;
      *a8 = v43;
    }
  }

  return v42;
}

- (id)supportedCharacterIndexesForString:(id)a3 options:(id)a4
{
  v141 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11 = objc_msgSend_indexSet(MEMORY[0x1E696AD50], v6, v7, v8, v9, v10);
  v17 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x1E696AB08], v12, v13, v14, v15, v16);
  v22 = objc_msgSend_indexesOfCharacters_(v5, v18, v17, v19, v20, v21);

  objc_msgSend_addIndexes_(v11, v23, v22, v24, v25, v26);
  v32 = objc_msgSend_count(v11, v27, v28, v29, v30, v31);
  if (v32 == objc_msgSend_length(v5, v33, v34, v35, v36, v37))
  {
    v43 = v11;
  }

  else
  {
    v44 = objc_msgSend_array(MEMORY[0x1E695DF70], v38, v39, v40, v41, v42);
    v49 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v45, @"en", v46, v47, v48);
    v50 = sub_18394B808(v49, &unk_1EF1BF5D8);

    if (v50)
    {
      objc_msgSend_addObject_(v44, v51, &unk_1EF1EDB58, v52, v53, v54);
    }

    v55 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v51, @"zh", v52, v53, v54);
    if (CHHasPersonalizedSynthesisSupport())
    {
      v56 = sub_18394AE24(v55);

      if (v56)
      {
        objc_msgSend_addObject_(v44, v57, &unk_1EF1EDB70, v58, v59, v60);
      }
    }

    else
    {
    }

    v61 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], v57, @"ko", v58, v59, v60);
    if (CHHasPersonalizedSynthesisSupport())
    {
      v62 = sub_18394AE24(v61);

      if (v62)
      {
        objc_msgSend_addObject_(v44, v63, &unk_1EF1EDB88, v65, v66, v67);
      }
    }

    else
    {
    }

    if (objc_msgSend_count(v44, v63, v64, v65, v66, v67))
    {
      v73 = objc_msgSend_chunkedDataForString_allowedSynthesizers_(self, v68, v5, v44, v71, v72);
      v79 = v73;
      if (v73 && (objc_msgSend_dataChunks(v73, v74, v75, v76, v77, v78), v80 = objc_claimAutoreleasedReturnValue(), v86 = objc_msgSend_count(v80, v81, v82, v83, v84, v85), v80, v86))
      {
        v92 = objc_msgSend_dataChunks(v79, v87, v88, v89, v90, v91);
        v97 = objc_msgSend_sortedArrayUsingSelector_(v92, v93, sel_compareByRangeWithDataChunk_, v94, v95, v96);

        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v98 = v97;
        v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v99, &v130, v134, 16, v100);
        if (v101)
        {
          v102 = *v131;
          do
          {
            for (i = 0; i != v101; ++i)
            {
              if (*v131 != v102)
              {
                objc_enumerationMutation(v98);
              }

              v104 = *(*(&v130 + 1) + 8 * i);
              if ((objc_msgSend_isNotDef(v104, v105, v106, v107, v108, v109) & 1) == 0)
              {
                v115 = objc_msgSend_rangeInOriginalString(v104, v110, v111, v112, v113, v114);
                objc_msgSend_addIndexesInRange_(v11, v116, v115, v116, v117, v118);
              }
            }

            v101 = objc_msgSend_countByEnumeratingWithState_objects_count_(v98, v119, &v130, v134, 16, v120);
          }

          while (v101);
        }

        v121 = v11;
      }

      else
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v122 = qword_1EA84DC98;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
        {
          *buf = 138740483;
          v136 = v5;
          v137 = 2048;
          v138 = objc_msgSend_length(v5, v123, v124, v125, v126, v127);
          v139 = 2112;
          v140 = v44;
          _os_log_impl(&dword_18366B000, v122, OS_LOG_TYPE_ERROR, "CHRemoteTextSynthesizer: chunking failed for input string %{sensitive}@ of length %lu with allowedSynthesizers=%@", buf, 0x20u);
        }

        v128 = v11;
      }

      v43 = v11;
    }

    else
    {
      v43 = objc_msgSend_indexSet(MEMORY[0x1E696AC90], v68, v69, v70, v71, v72);
    }
  }

  return v43;
}

- (void)dealloc
{
  sub_18396CF9C(self);
  v3.receiver = self;
  v3.super_class = CHRemoteTextSynthesizer;
  [(CHRemoteTextSynthesizer *)&v3 dealloc];
}

- (BOOL)populateStyleInventoryWithTokenizedResult:(id)a3 drawing:(id)a4 strokeIdentifiers:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [CHRemoteInventoryRequest alloc];
  v16 = objc_msgSend_initWithTokenizedResult_drawing_strokeIdentifiers_(v13, v14, v10, v11, v12, v15);
  v20 = 0;
  v17 = sub_18396E30C(self, v16, &v20);
  v18 = v20;
  if (a6)
  {
    v18 = v18;
    *a6 = v18;
  }

  return v17;
}

- (BOOL)updateStyleInventoryWithRemovedStrokeIdentifiers:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [CHRemoteInventoryRequest alloc];
  v12 = objc_msgSend_initWithRemovedStrokeIdentifiers_(v7, v8, v6, v9, v10, v11);
  v16 = 0;
  v13 = sub_18396E30C(self, v12, &v16);
  v14 = v16;
  if (a4)
  {
    v14 = v14;
    *a4 = v14;
  }

  return v13;
}

- (BOOL)isInventoryContainingSampleWithStrokeIdentifiers:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    v5 = [CHRemoteInventoryContentCheckRequest alloc];
    v10 = objc_msgSend_initWithStrokeIdentifiers_(v5, v6, v4, v7, v8, v9);
    if (self)
    {
      sub_18396CC08(self);
      v11 = self;
      objc_sync_enter(v11);
      connection = v11->__connection;
      objc_sync_exit(v11);

      if (!connection)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v13 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_ERROR, "XPC connection must be non-nil", buf, 2u);
        }
      }

      v14 = v11;
      objc_sync_enter(v14);
      v15 = v11->__connection;
      objc_sync_exit(v14);

      if (!v15)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v16 = qword_1EA84DC50[0];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_FAULT, "XPC connection must be non-nil", buf, 2u);
        }
      }

      v49[0] = 0;
      v49[1] = v49;
      v49[2] = 0x3032000000;
      v49[3] = sub_18396D140;
      v49[4] = sub_18396D150;
      v50 = 0;
      v17 = v14;
      objc_sync_enter(v17);
      v18 = v11->__connection;
      objc_sync_exit(v17);

      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = sub_183970098;
      v48[3] = &unk_1E6DDC2E0;
      v48[4] = v49;
      v23 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v18, v19, v48, v20, v21, v22);

      v46[0] = 0;
      v46[1] = v46;
      v46[2] = 0x3032000000;
      v46[3] = sub_18396D140;
      v46[4] = sub_18396D150;
      v47 = 0;
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0;
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 0;
      *buf = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = sub_1839701B8;
      v34 = &unk_1E6DE0708;
      v35 = &v38;
      v36 = v46;
      v37 = &v42;
      objc_msgSend_handleInventoryContentCheckRequest_withReply_(v23, v24, v10, buf, v25, v26);
      if ((v43[3] & 1) == 0)
      {
        if (qword_1EA84DC48 != -1)
        {
          dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        }

        v27 = qword_1EA84DC98;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v30[0] = 0;
          _os_log_impl(&dword_18366B000, v27, OS_LOG_TYPE_ERROR, "Inventory containing sample request did not execute reply block", v30, 2u);
        }
      }

      v28 = *(v39 + 24);
      _Block_object_dispose(&v38, 8);
      _Block_object_dispose(&v42, 8);
      _Block_object_dispose(v46, 8);

      _Block_object_dispose(v49, 8);
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28 & 1;
}

- (BOOL)resetStyleInventory:(id *)a3
{
  v5 = [CHRemoteInventoryRequest alloc];
  inited = objc_msgSend_initResetInventoryRequest(v5, v6, v7, v8, v9, v10);
  v15 = 0;
  v12 = sub_18396E30C(self, inited, &v15);
  v13 = v15;
  if (a3)
  {
    v13 = v13;
    *a3 = v13;
  }

  return v12;
}

- (id)styleInventoryStatusWithTimeout:(double)a3
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v5 = qword_1EA84DC98;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&dword_18366B000, v5, OS_LOG_TYPE_DEBUG, "Remote Inventory Status Request", v8, 2u);
  }

  v6 = sub_18396F264(&self->super.isa, a3);

  return v6;
}

- (id)cachedStyleInventoryStatus
{
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v3 = qword_1EA84DC98;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_18366B000, v3, OS_LOG_TYPE_DEBUG, "Remote Cached Inventory Status Request", v6, 2u);
  }

  v4 = sub_18396F264(&self->super.isa, 0.0);

  return v4;
}

- (BOOL)awaitInventoryIdleWithTimeout:(double)a3
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if (has_internal_diagnostics)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v6 = qword_1EA84DC98;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v6, OS_LOG_TYPE_DEBUG, "Await inventory idle Request", buf, 2u);
    }

    if (self)
    {
      *buf = 0;
      v10 = buf;
      v11 = 0x3032000000;
      v12 = sub_18396D140;
      v13 = sub_18396D150;
      v14 = 0;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = sub_18396FDB8;
      v8[3] = &unk_1E6DE06E0;
      v8[4] = self;
      v8[5] = buf;
      LOBYTE(self) = sub_18396F434(self, @"Await inventory idle request", v8, a3);
      _Block_object_dispose(buf, 8);
    }

    LOBYTE(has_internal_diagnostics) = self;
  }

  return has_internal_diagnostics;
}

- (id)chunkedDataForString:(id)a3 allowedSynthesizers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CHRemoteSynthesisStringChunkingRequest alloc];
  v12 = objc_msgSend_initWithString_allowedSynthesizers_(v8, v9, v6, v7, v10, v11);
  v13 = sub_18397046C(self, v12);

  return v13;
}

- (id)chunkedDataForStringRefine:(id)a3 allowedSynthesizers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CHRemoteSynthesisStringChunkingRequest alloc];
  v11 = objc_msgSend_initWithString_allowedSynthesizers_mode_(v8, v9, v6, v7, &unk_1EF1EDBA0, v10);
  v12 = sub_18397046C(self, v11);

  return v12;
}

- (id)planForReplacingText:(id)a3 withText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = objc_msgSend_chunkedDataForString_allowedSynthesizers_(self, v8, v6, &unk_1EF1EC880, v9, v10);
  v17 = v11;
  if (v11)
  {
    v22 = objc_msgSend_chunkForOneShotReplace(v11, v12, v13, v14, v15, v16);
    if (v22 && ((objc_msgSend_isEqualToString_(v7, v18, v6, v19, v20, v21) & 1) != 0 || (objc_msgSend_chunkedDataForString_allowedSynthesizers_(self, v23, v7, &unk_1EF1EC880, v26, v27), v28 = objc_claimAutoreleasedReturnValue(), v17, (v17 = v28) != 0)))
    {
      v29 = objc_msgSend_chunkForOneShotReplace(v17, v23, v24, v25, v26, v27);
      if (v29)
      {
        v30 = [CHSynthesisReplacementRecipe alloc];
        v36 = objc_msgSend_chunkValueForSynthesis(v22, v31, v32, v33, v34, v35);
        v42 = objc_msgSend_chunkValueForSynthesis(v29, v37, v38, v39, v40, v41);
        v48 = objc_msgSend_synthesisSuggestion(v29, v43, v44, v45, v46, v47);
        v51 = objc_msgSend_initWithOriginalString_replacementString_synthesisSuggestion_(v30, v49, v36, v42, v48, v50);
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      v51 = 0;
    }
  }

  else
  {
    v51 = 0;
  }

  return v51;
}

@end