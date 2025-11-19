@interface CHTextStrokeTransformationQuery
- (id)strokePointTransformationsForContextStrokes:(id)a3 completionWithTelemetry:(id)a4 shouldCancel:(id)a5;
- (id)strokePointTransformationsForContextStrokes:(id)a3 parameters:(id)a4 completionWithTelemetry:(id)a5 shouldCancel:(id)a6;
@end

@implementation CHTextStrokeTransformationQuery

- (id)strokePointTransformationsForContextStrokes:(id)a3 completionWithTelemetry:(id)a4 shouldCancel:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(CHTransformationParameters);
  objc_msgSend_setOrientationBehavior_(v11, v12, 2, v13, v14, v15);
  objc_msgSend_setAlignmentBehavior_(v11, v16, 1, v17, v18, v19);
  objc_msgSend_setLineSpaceBehavior_(v11, v20, 2, v21, v22, v23);
  v25 = objc_msgSend_strokePointTransformationsForContextStrokes_parameters_completionWithTelemetry_shouldCancel_(self, v24, v10, v11, v9, v8);

  return v25;
}

- (id)strokePointTransformationsForContextStrokes:(id)a3 parameters:(id)a4 completionWithTelemetry:(id)a5 shouldCancel:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = a3;
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
    _os_signpost_emit_with_name_impl(&dword_18366B000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "CHTextStrokeTransformationQuery", "", buf, 2u);
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
    _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN CHTextStrokeTransformationQuery", buf, 2u);
  }

  v23 = objc_msgSend_recognitionSession(self, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_latestStrokeProvider(v23, v24, v25, v26, v27, v28);
  v33 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(CHStrokeUtilities, v30, v13, v29, v31, v32);

  v45 = MEMORY[0x1E69E9820];
  v46 = 3221225472;
  v47 = sub_183740CC8;
  v48 = &unk_1E6DDD320;
  v49 = v10;
  v50 = v15;
  v34 = v10;
  v35 = MEMORY[0x1865E6810](&v45);
  v41 = objc_msgSend_recognitionSession(self, v36, v37, v38, v39, v40, v45, v46, v47, v48);
  v43 = objc_msgSend_strokePointTransformationsForContextStrokes_parameters_completionWithTelemetry_shouldCancel_(v41, v42, v33, v12, v35, v11);

  return v43;
}

@end