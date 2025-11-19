@interface CHContextLookupQuery
- (id)contextLookupResultsAtLocation:(CGPoint)a3 completion:(id)a4 shouldCancel:(id)a5;
- (id)contextLookupResultsWithSelectedStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5;
- (id)contextLookupResultsWithSelectionPath:(CGPath *)a3 completion:(id)a4 shouldCancel:(id)a5;
- (id)structuredContextLookupResultsWithSelectedStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5;
- (id)structuredContextLookupResultsWithSelectionPath:(CGPath *)a3 completion:(id)a4 shouldCancel:(id)a5;
@end

@implementation CHContextLookupQuery

- (id)contextLookupResultsAtLocation:(CGPoint)a3 completion:(id)a4 shouldCancel:(id)a5
{
  y = a3.y;
  x = a3.x;
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
    _os_signpost_emit_with_name_impl(&dword_18366B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CHContextLookupQuery_atLocation", "", buf, 2u);
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
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN CHContextLookupQuery_atLocation", buf, 2u);
  }

  v20 = objc_msgSend_recognitionSession(self, v15, v16, v17, v18, v19);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1837661DC;
  v27[3] = &unk_1E6DDD7C0;
  v28 = v9;
  v29 = v12;
  v21 = v9;
  v25 = objc_msgSend_contextLookupResultsAtLocation_completion_shouldCancel_(v20, v22, v27, v10, v23, v24, x, y);

  return v25;
}

- (id)contextLookupResultsWithSelectionPath:(CGPath *)a3 completion:(id)a4 shouldCancel:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC88;
  v11 = os_signpost_id_generate(v10);

  if (qword_1EA84DC48 == -1)
  {
    v12 = qword_1EA84DC88;
    if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v12 = qword_1EA84DC88;
    if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CHContextLookupQuery_withPath", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN CHContextLookupQuery_withPath", buf, 2u);
  }

  v19 = objc_msgSend_recognitionSession(self, v14, v15, v16, v17, v18);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_18376665C;
  v25[3] = &unk_1E6DDD7E8;
  v26 = v8;
  v27 = v11;
  v20 = v8;
  v23 = objc_msgSend_contextLookupResultsWithSelectionPath_completion_shouldCancel_(v19, v21, a3, v25, v9, v22);

  return v23;
}

- (id)contextLookupResultsWithSelectedStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5
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
    _os_signpost_emit_with_name_impl(&dword_18366B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CHContextLookupQuery_withSelectedStrokes", "", buf, 2u);
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
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN CHContextLookupQuery_withSelectedStrokes", buf, 2u);
  }

  v20 = objc_msgSend_recognitionSession(self, v15, v16, v17, v18, v19);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_183766B58;
  v27[3] = &unk_1E6DDD810;
  v29 = v9;
  v30 = v12;
  v28 = v8;
  v21 = v9;
  v22 = v8;
  v25 = objc_msgSend_contextLookupResultsWithSelectedStrokes_completion_shouldCancel_(v20, v23, v22, v27, v10, v24);

  return v25;
}

- (id)structuredContextLookupResultsWithSelectionPath:(CGPath *)a3 completion:(id)a4 shouldCancel:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v10 = qword_1EA84DC88;
  v11 = os_signpost_id_generate(v10);

  if (qword_1EA84DC48 == -1)
  {
    v12 = qword_1EA84DC88;
    if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    v12 = qword_1EA84DC88;
    if (v11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_7;
    }
  }

  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_18366B000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CHContextLookupQuery_withPath", "", buf, 2u);
  }

LABEL_7:

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v13 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18366B000, v13, OS_LOG_TYPE_DEFAULT, "BEGIN CHContextLookupQuery_withPath", buf, 2u);
  }

  v19 = objc_msgSend_recognitionSession(self, v14, v15, v16, v17, v18);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_183767054;
  v25[3] = &unk_1E6DDD810;
  v26 = v8;
  v27 = v11;
  v25[4] = self;
  v20 = v8;
  v23 = objc_msgSend_contextLookupResultsWithSelectionPath_completion_shouldCancel_(v19, v21, a3, v25, v9, v22);

  return v23;
}

- (id)structuredContextLookupResultsWithSelectedStrokes:(id)a3 completion:(id)a4 shouldCancel:(id)a5
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
    _os_signpost_emit_with_name_impl(&dword_18366B000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CHContextLookupQuery_withSelectedStrokes", "", buf, 2u);
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
    _os_log_impl(&dword_18366B000, v14, OS_LOG_TYPE_DEFAULT, "BEGIN CHContextLookupQuery_withSelectedStrokes", buf, 2u);
  }

  v20 = objc_msgSend_recognitionSession(self, v15, v16, v17, v18, v19);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1837675E4;
  v27[3] = &unk_1E6DDD838;
  v27[4] = self;
  v28 = v8;
  v29 = v9;
  v30 = v12;
  v21 = v9;
  v22 = v8;
  v25 = objc_msgSend_contextLookupResultsWithSelectedStrokes_completion_shouldCancel_(v20, v23, v22, v27, v10, v24);

  return v25;
}

@end