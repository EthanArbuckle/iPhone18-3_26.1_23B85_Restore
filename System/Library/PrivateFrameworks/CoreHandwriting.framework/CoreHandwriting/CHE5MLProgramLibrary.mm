@interface CHE5MLProgramLibrary
+ (id)E5RTProgramLibraryCompilationOptionsForModelSource:(id)source;
+ (id)E5RTProgramLibraryForModelURL:(id)l error:(id *)error;
- (CHE5MLProgramLibrary)initWithModelURL:(id)l error:(id *)error;
@end

@implementation CHE5MLProgramLibrary

+ (id)E5RTProgramLibraryForModelURL:(id)l error:(id *)error
{
  lCopy = l;
  if (objc_msgSend_isProgramLibraryAtURL_(MEMORY[0x1E69DF8F0], v6, lCopy, v7, v8, v9))
  {
    v14 = objc_msgSend_programLibraryForURL_error_(MEMORY[0x1E69DF8F0], v10, lCopy, error, v12, v13);
  }

  else if (objc_msgSend_isModelSourceURL_(MEMORY[0x1E69DF8E8], v10, lCopy, v11, v12, v13))
  {
    v22 = objc_msgSend_modelSourceFromURL_error_(MEMORY[0x1E69DF8E8], v15, lCopy, error, v16, v17);
    if (v22)
    {
      v25 = objc_msgSend_E5RTProgramLibraryCompilationOptionsForModelSource_(CHE5MLProgramLibrary, v18, v22, v19, v20, v21);
      if (v25)
      {
        v14 = objc_msgSend_compileModelSource_options_error_(MEMORY[0x1E69DF8F0], v23, v22, v25, error, v24);
      }

      else if (error)
      {
        objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v23, @"com.apple.corehandwriting", -1004, 0, v24);
        *error = v14 = 0;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)E5RTProgramLibraryCompilationOptionsForModelSource:(id)source
{
  v3 = objc_alloc_init(MEMORY[0x1E69DF8F8]);

  return v3;
}

- (CHE5MLProgramLibrary)initWithModelURL:(id)l error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v22.receiver = self;
  v22.super_class = CHE5MLProgramLibrary;
  v7 = [(CHE5MLProgramLibrary *)&v22 init];
  if (v7)
  {
    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v8 = qword_1EA84DC88;
    v9 = os_signpost_id_generate(v8);

    if (qword_1EA84DC48 == -1)
    {
      v10 = qword_1EA84DC88;
      v11 = v9 - 1;
      if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v10 = qword_1EA84DC88;
      v11 = v9 - 1;
      if (v9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_8;
      }
    }

    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18366B000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CHE5MLLoadProgramLibrary", "", buf, 2u);
    }

LABEL_8:

    if (qword_1EA84DC48 != -1)
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
    }

    v12 = qword_1EA84DC50[0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18366B000, v12, OS_LOG_TYPE_DEFAULT, "BEGIN CHE5MLLoadProgramLibrary", buf, 2u);
    }

    if (lCopy)
    {
      v16 = objc_msgSend_E5RTProgramLibraryForModelURL_error_(CHE5MLProgramLibrary, v13, lCopy, error, v14, v15);
      if (qword_1EA84DC48 == -1)
      {
        v17 = qword_1EA84DC88;
        if (v11 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_17;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v17 = qword_1EA84DC88;
        if (v11 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_17;
        }
      }

      if (os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18366B000, v17, OS_SIGNPOST_INTERVAL_END, v9, "CHE5MLLoadProgramLibrary", "", buf, 2u);
      }

LABEL_17:

      if (qword_1EA84DC48 == -1)
      {
        v18 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }
      }

      else
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
        v18 = qword_1EA84DC50[0];
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
LABEL_20:

          if (v16)
          {
            objc_storeStrong(&v7->_programLibrary, v16);
            v19 = v7;
LABEL_31:

            goto LABEL_32;
          }

          if (qword_1EA84DC48 == -1)
          {
            v20 = qword_1EA84DC50[0];
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
LABEL_29:

              v16 = 0;
              goto LABEL_30;
            }
          }

          else
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
            v20 = qword_1EA84DC50[0];
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_29;
            }
          }

          *buf = 138412290;
          v24 = lCopy;
          _os_log_impl(&dword_18366B000, v20, OS_LOG_TYPE_ERROR, "Failed to load program library at: %@", buf, 0xCu);
          goto LABEL_29;
        }
      }

      *buf = 0;
      _os_log_impl(&dword_18366B000, v18, OS_LOG_TYPE_DEFAULT, "END CHE5MLLoadProgramLibrary", buf, 2u);
      goto LABEL_20;
    }

    if (qword_1EA84DC48 == -1)
    {
      v16 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
LABEL_30:
        v19 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      v16 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_30;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_18366B000, v16, OS_LOG_TYPE_ERROR, "Failed to locate E5ML model", buf, 2u);
    goto LABEL_30;
  }

  v19 = 0;
LABEL_32:

  return v19;
}

@end