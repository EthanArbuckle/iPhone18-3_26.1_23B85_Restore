@interface CHReflowQuery
- (id)reflowableTextTokensForInitialStrokes:(id)a3 point:(CGPoint)a4 completion:(id)a5 shouldCancel:(id)a6;
@end

@implementation CHReflowQuery

- (id)reflowableTextTokensForInitialStrokes:(id)a3 point:(CGPoint)a4 completion:(id)a5 shouldCancel:(id)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
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
    _os_signpost_emit_with_name_impl(&dword_18366B000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "CHReflowQuery", "", buf, 2u);
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
    _os_log_impl(&dword_18366B000, v17, OS_LOG_TYPE_DEFAULT, "BEGIN CHReflowQuery", buf, 2u);
  }

  v23 = objc_msgSend_recognitionSession(self, v18, v19, v20, v21, v22);
  v29 = objc_msgSend_latestStrokeProvider(v23, v24, v25, v26, v27, v28);
  v33 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(CHStrokeUtilities, v30, v11, v29, v31, v32);

  v39 = objc_msgSend_recognitionSession(self, v34, v35, v36, v37, v38);
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = sub_18391AC04;
  v46[3] = &unk_1E6DDFE78;
  v48 = v12;
  v49 = v15;
  v50 = x;
  v51 = y;
  v47 = v11;
  v40 = v12;
  v41 = v11;
  v44 = objc_msgSend_reflowableTextLinesForContextStrokes_point_completion_shouldCancel_(v39, v42, v33, v46, v13, v43, x, y);

  return v44;
}

@end