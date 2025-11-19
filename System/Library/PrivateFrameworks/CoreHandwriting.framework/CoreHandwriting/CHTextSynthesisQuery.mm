@interface CHTextSynthesisQuery
- (id)refinedTokensForContextStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5;
- (id)refinedTokensForSingleLineContextStrokes:(id)a3 transcription:(id)a4 completion:(id)a5 shouldCancel:(id)a6;
- (id)refinementOfContextStrokesWithTranscriptions:(id)a3 completion:(id)a4 shouldCancel:(id)a5;
- (id)refinementOfSingleLineContextStrokes:(id)a3 transcription:(id)a4 completion:(id)a5 shouldCancel:(id)a6;
- (id)synthesizeTokensForString:(id)a3 point:(CGPoint)a4 completion:(id)a5 shouldCancel:(id)a6;
- (id)synthesizeTokensForString:(id)a3 point:(CGPoint)a4 synthesisOptions:(id)a5 completionWithSynthesisResults:(id)a6 shouldCancel:(id)a7;
- (id)synthesizeTokensForString:(id)a3 replacingStrokes:(id)a4 completion:(id)a5 shouldCancel:(id)a6;
- (id)synthesizeTokensForString:(id)a3 replacingStrokes:(id)a4 completionWithSynthesisResults:(id)a5 shouldCancel:(id)a6;
@end

@implementation CHTextSynthesisQuery

- (id)refinementOfContextStrokesWithTranscriptions:(id)a3 completion:(id)a4 shouldCancel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v11 = qword_1EA84DC88;
  v12 = os_signpost_id_generate(v11);

  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC88;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v13 = qword_1EA84DC88;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CHTextSynthesisQuery_refineContext", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v14 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN CHTextSynthesisQuery_refineContext", buf, 2u);
  }

  v20 = objc_msgSend_recognitionSession(self, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_latestStrokeProvider(v20, v21, v22, v23, v24, v25);
  v30 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(CHStrokeUtilities, v27, v8, v26, v28, v29);

  v36 = objc_msgSend_recognitionSession(self, v31, v32, v33, v34, v35);
  styleControlStrength = self->_styleControlStrength;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1836A1188;
  v42[3] = &unk_1E6DDC220;
  v44 = v12;
  v38 = v9;
  v43 = v38;
  v40 = objc_msgSend_refinementOfContextStrokes_styleControlParameter_completion_shouldCancel_(v36, v39, v30, styleControlStrength, v42, v10);

  return v40;
}

- (id)refinedTokensForContextStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v11 = qword_1EA84DC88;
  v12 = os_signpost_id_generate(v11);

  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC88;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v13 = qword_1EA84DC88;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CHTextSynthesisQuery_refinedTokens", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v14 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN CHTextSynthesisQuery_refinedTokens", buf, 2u);
  }

  v20 = objc_msgSend_recognitionSession(self, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_latestStrokeProvider(v20, v21, v22, v23, v24, v25);
  v30 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(CHStrokeUtilities, v27, v8, v26, v28, v29);

  v36 = objc_msgSend_recognitionSession(self, v31, v32, v33, v34, v35);
  styleControlStrength = self->_styleControlStrength;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1836A1650;
  v42[3] = &unk_1E6DDC248;
  v44 = v12;
  v38 = v9;
  v43 = v38;
  v40 = objc_msgSend_refinedTokensForContextStrokes_styleControlParameter_completion_shouldCancel_(v36, v39, v30, styleControlStrength, v42, v10);

  return v40;
}

- (id)refinementOfSingleLineContextStrokes:(id)a3 transcription:(id)a4 completion:(id)a5 shouldCancel:(id)a6
{
  v91 = *MEMORY[0x1E69E9840];
  v81 = a3;
  v10 = a4;
  v79 = a5;
  v80 = a6;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v11 = qword_1EA84DC88;
  v12 = os_signpost_id_generate(v11);

  if (qword_1EA84DC48 == -1)
  {
    v13 = qword_1EA84DC88;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v13 = qword_1EA84DC88;
    if (v12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CHTextSynthesisQuery_refineSingleLine", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v14 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN CHTextSynthesisQuery_refineSingleLine", buf, 2u);
  }

  v20 = objc_msgSend_recognitionSession(self, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_latestStrokeProvider(v20, v21, v22, v23, v24, v25);
  v30 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(CHStrokeUtilities, v27, v81, v26, v28, v29);

  if (qword_1EA84DC48 == -1)
  {
    v31 = qword_1EA84DC50[0];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  v31 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
LABEL_13:
    v37 = objc_msgSend_length(v10, v32, v33, v34, v35, v36);
    v43 = objc_msgSend_count(v81, v38, v39, v40, v41, v42);
    v49 = objc_msgSend_recognitionSession(self, v44, v45, v46, v47, v48);
    v55 = objc_msgSend_latestStrokeProvider(v49, v50, v51, v52, v53, v54);
    v61 = objc_msgSend_orderedStrokes(v55, v56, v57, v58, v59, v60);
    v67 = objc_msgSend_count(v61, v62, v63, v64, v65, v66);
    *buf = 134218496;
    v86 = v37;
    v87 = 2048;
    v88 = v43;
    v89 = 2048;
    v90 = v67;
    _os_log_impl(&dword_18366B000, v31, OS_LOG_TYPE_DEBUG, "CHTextSynthesisQuery is running AutoRefine for transcription with length = %ld, strokes to replace = %ld, strokes in provider = %ld", buf, 0x20u);
  }

LABEL_14:

  v73 = objc_msgSend_recognitionSession(self, v68, v69, v70, v71, v72);
  styleControlStrength = self->_styleControlStrength;
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = sub_1836A1C50;
  v82[3] = &unk_1E6DDC248;
  v84 = v12;
  v75 = v79;
  v83 = v75;
  v77 = objc_msgSend_refinedTokensForSingleLineContextStrokes_styleControlParameter_transcription_completion_shouldCancel_(v73, v76, v30, styleControlStrength, v10, v82, v80);

  return v77;
}

- (id)refinedTokensForSingleLineContextStrokes:(id)a3 transcription:(id)a4 completion:(id)a5 shouldCancel:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v14 = qword_1EA84DC88;
  v15 = os_signpost_id_generate(v14);

  if (qword_1EA84DC48 == -1)
  {
    v16 = qword_1EA84DC88;
    if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v16 = qword_1EA84DC88;
    if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "CHTextSynthesisQuery_refinedTokensSingleLine", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v17 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN CHTextSynthesisQuery_refinedTokensSingleLine", buf, 2u);
  }

  v23 = objc_msgSend_recognitionSession(self, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_latestStrokeProvider(v23, v24, v25, v26, v27, v28);
  v33 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(CHStrokeUtilities, v30, v10, v29, v31, v32);

  v39 = objc_msgSend_recognitionSession(self, v34, v35, v36, v37, v38);
  styleControlStrength = self->_styleControlStrength;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_1836A2314;
  v45[3] = &unk_1E6DDC248;
  v47 = v15;
  v41 = v12;
  v46 = v41;
  v43 = objc_msgSend_refinedTokensForSingleLineContextStrokes_styleControlParameter_transcription_completion_shouldCancel_(v39, v42, v33, styleControlStrength, v11, v45, v13);

  return v43;
}

- (id)synthesizeTokensForString:(id)a3 point:(CGPoint)a4 completion:(id)a5 shouldCancel:(id)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1836A2588;
  v16[3] = &unk_1E6DDC270;
  v17 = v11;
  v12 = v11;
  v14 = objc_msgSend_synthesizeTokensForString_point_synthesisOptions_completionWithSynthesisResults_shouldCancel_(self, v13, a3, 0, v16, a6, x, y);

  return v14;
}

- (id)synthesizeTokensForString:(id)a3 point:(CGPoint)a4 synthesisOptions:(id)a5 completionWithSynthesisResults:(id)a6 shouldCancel:(id)a7
{
  y = a4.y;
  x = a4.x;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v17 = qword_1EA84DC88;
  v18 = os_signpost_id_generate(v17);

  if (qword_1EA84DC48 == -1)
  {
    v19 = qword_1EA84DC88;
    if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v19 = qword_1EA84DC88;
    if (v18 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v18, "CHTextSynthesisQuery_synthesizeTokens", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v20 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_DEFAULT, "BEGIN CHTextSynthesisQuery_synthesizeTokens", buf, 2u);
  }

  v26 = objc_msgSend_recognitionSession(self, v21, v22, v23, v24, v25);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1836A2864;
  v31[3] = &unk_1E6DDC220;
  v33 = v18;
  v27 = v15;
  v32 = v27;
  v29 = objc_msgSend_synthesizeTokensForString_point_synthesisOptions_completion_shouldCancel_(v26, v28, v13, v14, v31, v16, x, y);

  return v29;
}

- (id)synthesizeTokensForString:(id)a3 replacingStrokes:(id)a4 completionWithSynthesisResults:(id)a5 shouldCancel:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v14 = qword_1EA84DC88;
  v15 = os_signpost_id_generate(v14);

  if (qword_1EA84DC48 == -1)
  {
    v16 = qword_1EA84DC88;
    if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v16 = qword_1EA84DC88;
    if (v15 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "CHTextSynthesisQuery_synthesizeTokensReplacing", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v17 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN CHTextSynthesisQuery_synthesizeTokensReplacing", buf, 2u);
  }

  v23 = objc_msgSend_recognitionSession(self, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_latestStrokeProvider(v23, v24, v25, v26, v27, v28);
  v33 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(CHStrokeUtilities, v30, v11, v29, v31, v32);

  v39 = objc_msgSend_recognitionSession(self, v34, v35, v36, v37, v38);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_1836A2D34;
  v44[3] = &unk_1E6DDC220;
  v46 = v15;
  v40 = v12;
  v45 = v40;
  v42 = objc_msgSend_synthesizeTokensForString_replacingStrokes_completion_shouldCancel_(v39, v41, v10, v33, v44, v13);

  return v42;
}

- (id)synthesizeTokensForString:(id)a3 replacingStrokes:(id)a4 completion:(id)a5 shouldCancel:(id)a6
{
  v10 = a5;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1836A2FBC;
  v15[3] = &unk_1E6DDC270;
  v16 = v10;
  v11 = v10;
  v13 = objc_msgSend_synthesizeTokensForString_replacingStrokes_completionWithSynthesisResults_shouldCancel_(self, v12, a3, a4, v15, a6);

  return v13;
}

@end