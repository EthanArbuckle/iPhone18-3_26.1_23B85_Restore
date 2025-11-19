@interface _MFDataCollector
- (_MFDataCollector)initWithLibrary:(id)a3 message:(id)a4 part:(id)a5 partial:(BOOL)a6 incomplete:(BOOL)a7 relaxDataProtection:(BOOL)a8 data:(id)a9;
- (id)pathForStorage;
- (int64_t)appendData:(id)a3;
- (void)done;
- (void)pathForStorage;
@end

@implementation _MFDataCollector

- (_MFDataCollector)initWithLibrary:(id)a3 message:(id)a4 part:(id)a5 partial:(BOOL)a6 incomplete:(BOOL)a7 relaxDataProtection:(BOOL)a8 data:(id)a9
{
  v25 = a3;
  v24 = a4;
  v16 = a5;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = _MFDataCollector;
  v18 = [(_MFDataCollector *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_library, a3);
    objc_storeStrong(&v19->_message, a4);
    objc_storeStrong(&v19->_part, a5);
    v19->_partial = a6;
    v19->_incomplete = a7;
    v19->_relaxDataProtection = a8;
    if (v17)
    {
      v20 = v17;
      data = v19->_data;
      v19->_data = v20;
    }

    else
    {
      v22 = objc_alloc_init(MEMORY[0x1E69AD698]);
      data = v19->_consumer;
      v19->_consumer = v22;
    }
  }

  return v19;
}

- (id)pathForStorage
{
  v3 = *MEMORY[0x1E69E9840];
  part = self->_part;
  library = self->_library;
  if (part)
  {
    _dataPathForMessageAndPart(library, self->_message, part);
  }

  else
  {
    [(MFMailMessageLibrary *)library dataPathForMessage:self->_message type:self->_partial];
  }
  v6 = ;
  v7 = [v6 ef_pathByReplacingRelativePathWithFolderName:@"mbox"];
  v8 = MFPersistenceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(MFLibraryMessage *)self->_message libraryID];
    [_MFDataCollector pathForStorage];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (int64_t)appendData:(id)a3
{
  v5 = a3;
  consumer = self->_consumer;
  if (!consumer)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MailMessageLibrary.m" lineNumber:8586 description:{@"Invalid parameter not satisfying: %@", @"_consumer"}];

    consumer = self->_consumer;
  }

  v7 = [(MFBufferedDataConsumer *)consumer appendData:v5];

  return v7;
}

- (void)done
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)pathForStorage
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_12(v0, v1, v2, 3.8521e-34);
  OUTLINED_FUNCTION_13(&dword_1B0389000, v5, v3, "Sanitized path for libraryID %lld - %@", v4);
}

@end