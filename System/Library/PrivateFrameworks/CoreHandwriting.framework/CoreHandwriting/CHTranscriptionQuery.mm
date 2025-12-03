@interface CHTranscriptionQuery
- (id)contextualTextResultsForContextStrokes:(id)strokes completion:(id)completion shouldCancel:(id)cancel;
@end

@implementation CHTranscriptionQuery

- (id)contextualTextResultsForContextStrokes:(id)strokes completion:(id)completion shouldCancel:(id)cancel
{
  completionCopy = completion;
  cancelCopy = cancel;
  strokesCopy = strokes;
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
    _os_signpost_emit_with_name_impl(&dword_18366B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CHTranscriptionQuery", "", buf, 2u);
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
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN CHTranscriptionQuery", buf, 2u);
  }

  v20 = objc_msgSend_recognitionSession(self, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_latestStrokeProvider(v20, v21, v22, v23, v24, v25);
  v30 = objc_msgSend_encodedStrokeIdentifiers_withStrokeProvider_(CHStrokeUtilities, v27, strokesCopy, v26, v28, v29);

  v36 = objc_msgSend_recognitionSession(self, v31, v32, v33, v34, v35);
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = sub_1838BD760;
  v42[3] = &unk_1E6DDF780;
  v43 = completionCopy;
  v44 = v12;
  v37 = completionCopy;
  v40 = objc_msgSend_contextualTextResultsForContextStrokes_completion_shouldCancel_(v36, v38, v30, v42, cancelCopy, v39);

  return v40;
}

@end