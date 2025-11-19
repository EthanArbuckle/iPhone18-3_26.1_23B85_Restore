@interface CHTextCheckingQuery
- (CHTextCheckingQuery)initWithRecognitionSession:(id)a3;
- (NSArray)foundItems;
- (void)q_updateQueryResult;
@end

@implementation CHTextCheckingQuery

- (CHTextCheckingQuery)initWithRecognitionSession:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CHTextCheckingQuery;
  v5 = [(CHQuery *)&v9 initWithRecognitionSession:v4];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    foundItems = v5->_foundItems;
    v5->_foundItems = v6;

    if (qword_1EA84DBD8 != -1)
    {
      dispatch_once(&qword_1EA84DBD8, &unk_1EF1BEB00);
    }
  }

  return v5;
}

- (void)q_updateQueryResult
{
  v76 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_localeWithLocaleIdentifier_(MEMORY[0x1E695DF58], a2, @"en", v2, v3, v4);
  v7 = sub_18394B808(v6, &unk_1EF1BF5D8);

  if (v7)
  {
    if (self)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v13 = objc_msgSend_recognitionSession(self, v8, v9, v10, v11, v12);
      v19 = objc_msgSend_preferredLocales(v13, v14, v15, v16, v17, v18);

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v70, buf, 16, v21);
      if (v22)
      {
        v23 = *v71;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v71 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v27 = *(*(&v70 + 1) + 8 * i);
            if (CHHasPersonalizedSynthesisSupport())
            {
              v28 = sub_18394AE24(v27);

              if (v28)
              {

                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v31 = qword_1EA84DC88;
                v32 = os_signpost_id_generate(v31);

                if (qword_1EA84DC48 == -1)
                {
                  v33 = qword_1EA84DC88;
                  v34 = v32 - 1;
                  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
LABEL_28:
                    if (os_signpost_enabled(v33))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_18366B000, v33, OS_SIGNPOST_INTERVAL_BEGIN, v32, "CHTextCheckingQuery_update", "", buf, 2u);
                    }
                  }
                }

                else
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  v33 = qword_1EA84DC88;
                  v34 = v32 - 1;
                  if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    goto LABEL_28;
                  }
                }

                if (qword_1EA84DC48 != -1)
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                }

                v35 = qword_1EA84DC50[0];
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_18366B000, v35, OS_LOG_TYPE_DEFAULT, "BEGIN CHTextCheckingQuery_update", buf, 2u);
                }

                v69.receiver = self;
                v69.super_class = CHTextCheckingQuery;
                [(CHQuery *)&v69 q_updateQueryResult];
                v29 = objc_msgSend_q_sessionResult(self, v36, v37, v38, v39, v40);
                if (objc_msgSend_completeness(v29, v41, v42, v43, v44, v45) != 2)
                {
                  if (qword_1EA84DC48 == -1)
                  {
                    p_super = qword_1EA84DC50[0];
                    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                    p_super = qword_1EA84DC50[0];
                    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_44;
                    }
                  }

                  *buf = 0;
                  _os_log_impl(&dword_18366B000, p_super, OS_LOG_TYPE_DEFAULT, "CHTextCheckingQuery not running because principal lines are not ready.", buf, 2u);
                  goto LABEL_44;
                }

                v46 = sub_18388116C(&self->super.super.isa, v29);
                p_super = &v46->super;
                if (self->_foundItems != v46)
                {
                  v53 = objc_msgSend_copy(v46, v47, v48, v49, v50, v51);
                  foundItems = self->_foundItems;
                  self->_foundItems = v53;

                  objc_msgSend_q_queryResultDidChange(self, v55, v56, v57, v58, v59);
                }

                if (qword_1EA84DC48 == -1)
                {
                  v60 = qword_1EA84DC50[0];
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_39;
                  }
                }

                else
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  v60 = qword_1EA84DC50[0];
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_39:
                    v66 = objc_msgSend_count(p_super, v61, v62, v63, v64, v65);
                    *buf = 134217984;
                    v75 = v66;
                    _os_log_impl(&dword_18366B000, v60, OS_LOG_TYPE_DEFAULT, "CHTextCheckingQuery running - found %ld items.", buf, 0xCu);
                  }
                }

LABEL_44:
                if (qword_1EA84DC48 == -1)
                {
                  v67 = qword_1EA84DC88;
                  if (v34 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
LABEL_46:
                    if (os_signpost_enabled(v67))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_18366B000, v67, OS_SIGNPOST_INTERVAL_END, v32, "CHTextCheckingQuery_update", "", buf, 2u);
                    }
                  }
                }

                else
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  v67 = qword_1EA84DC88;
                  if (v34 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    goto LABEL_46;
                  }
                }

                if (qword_1EA84DC48 == -1)
                {
                  v68 = qword_1EA84DC50[0];
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_50;
                  }
                }

                else
                {
                  dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
                  v68 = qword_1EA84DC50[0];
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                  {
LABEL_50:
                    *buf = 0;
                    _os_log_impl(&dword_18366B000, v68, OS_LOG_TYPE_DEFAULT, "END CHTextCheckingQuery_update", buf, 2u);
                  }
                }

                goto LABEL_52;
              }
            }

            else
            {
            }
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v25, &v70, buf, 16, v26);
          if (v22)
          {
            continue;
          }

          break;
        }
      }
    }

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v29 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v30 = "CHTextCheckingQuery not running because this device does not have any supported locales enabled.";
LABEL_23:
      _os_log_impl(&dword_18366B000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
    }
  }

  else
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v29 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v30 = "CHTextCheckingQuery not running because this device does not support personalized synthesis.";
      goto LABEL_23;
    }
  }

LABEL_52:
}

- (NSArray)foundItems
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_183883424;
  v15 = sub_183883434;
  v16 = 0;
  v7 = objc_msgSend_processingQueue(self, a2, v2, v3, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_183885A18;
  v10[3] = &unk_1E6DDC7F0;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(v7, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

@end