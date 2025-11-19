@interface EDAttachmentFileWriter
- (BOOL)updateDigestWithData:(_BOOL8)result;
- (EDAttachmentFileWriter)initWithFinalURL:(id)a3 queue:(id)a4 compressionQueue:(id)a5 completion:(id)a6;
- (EDAttachmentFileWriter)initWithTemporaryURL:(id)a3 finalURL:(id)a4 protection:(int)a5 queue:(id)a6 compressionQueue:(id)a7 completion:(id)a8;
- (char)finalizedDigest;
- (dispatch_io_t)makeTemporaryFileIOForFile:(int)a3 protection:(void *)a4 callbackQueue:;
- (void)close;
- (void)closeTemporaryFile;
- (void)dealloc;
- (void)failAndClose;
- (void)ioDidRelinquishControlWithError:(uint64_t)a1;
- (void)makePurgeable;
- (void)moveTemporaryFileIntoPlace;
- (void)writeData:(id)a3;
@end

@implementation EDAttachmentFileWriter

- (EDAttachmentFileWriter)initWithFinalURL:(id)a3 queue:(id)a4 compressionQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 URLByAppendingPathExtension:@"download"];
  if (_os_feature_enabled_impl())
  {
    v15 = 3;
  }

  else
  {
    v15 = 2;
  }

  v16 = [(EDAttachmentFileWriter *)self initWithTemporaryURL:v14 finalURL:v10 protection:v15 queue:v11 compressionQueue:v12 completion:v13];

  return v16;
}

- (EDAttachmentFileWriter)initWithTemporaryURL:(id)a3 finalURL:(id)a4 protection:(int)a5 queue:(id)a6 compressionQueue:(id)a7 completion:(id)a8
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = a3;
  v29 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v31.receiver = self;
  v31.super_class = EDAttachmentFileWriter;
  v18 = [(EDAttachmentFileWriter *)&v31 init];
  p_super = &v18->super;
  if (v18)
  {
    if (CC_SHA256_Init(&v18->_digestContext) != 1 || (objc_storeStrong(&p_super[15].isa, a3), objc_storeStrong(&p_super[16].isa, a4), objc_storeStrong(&p_super[19].isa, a6), objc_storeStrong(&p_super[20].isa, a7), [(EDAttachmentFileWriter *)p_super makeTemporaryFileIOForFile:v30 protection:a5 callbackQueue:v15], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v26 = 0;
      goto LABEL_9;
    }

    objc_storeStrong(&p_super[18].isa, v20);
    v21 = [v17 copy];
    isa = p_super[21].isa;
    p_super[21].isa = v21;

    v23 = EDAttachmentsLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = p_super[15].isa;
      v25 = [(objc_class *)v24 path];
      *buf = 134218242;
      v33 = p_super;
      v34 = 2114;
      v35 = v25;
      _os_log_impl(&dword_1C61EF000, v23, OS_LOG_TYPE_DEFAULT, "Did create EDAttachmentFileWriter %p for MIME part file %{public}@.", buf, 0x16u);
    }
  }

  v26 = p_super;
LABEL_9:

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (dispatch_io_t)makeTemporaryFileIOForFile:(int)a3 protection:(void *)a4 callbackQueue:
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = 0;
    HIDWORD(a1[14].isa) = -1;
    while (1)
    {
      v10 = open_dprotected_np([v7 fileSystemRepresentation], 2818, a3, 0, 384);
      if ((v10 & 0x80000000) == 0)
      {
        HIDWORD(a1[14].isa) = v10;
        cleanup_handler[0] = MEMORY[0x1E69E9820];
        cleanup_handler[1] = 3221225472;
        cleanup_handler[2] = __78__EDAttachmentFileWriter_makeTemporaryFileIOForFile_protection_callbackQueue___block_invoke;
        cleanup_handler[3] = &unk_1E8250238;
        cleanup_handler[4] = a1;
        a1 = dispatch_io_create(0, v10, v8, cleanup_handler);
        goto LABEL_10;
      }

      if (v9)
      {
        break;
      }

      unlink([v7 fileSystemRepresentation]);
      v9 = 1;
    }

    v11 = EDAttachmentsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [v7 path];
      v15 = *__error();
      *buf = 134218498;
      v18 = a1;
      v19 = 2114;
      v20 = v14;
      v21 = 1024;
      v22 = v15;
      _os_log_error_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_ERROR, "<%p> Failed to create temporary MIME part file %{public}@: %{errno}d", buf, 0x1Cu);
    }

    a1 = 0;
  }

LABEL_10:

  v12 = *MEMORY[0x1E69E9840];

  return a1;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v3 = self->_tempURL;
    if (v3)
    {
      v4 = v3;
      v5 = self->_io;
      if (v5)
      {
        v6 = atomic_exchange(&self->_didClose._Value, 1u);

        if ((v6 & 1) == 0)
        {
          v7 = EDAttachmentsLog();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            v9 = self->_tempURL;
            v10 = [(NSURL *)v9 path];
            *buf = 134218242;
            v13 = self;
            v14 = 2114;
            v15 = v10;
            _os_log_error_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_ERROR, "Deallocating EDAttachmentFileWriter %p while temporary MIME part file %{public}@ is still open.", buf, 0x16u);
          }

          dispatch_io_close(self->_io, 1uLL);
        }
      }

      else
      {
      }
    }
  }

  v11.receiver = self;
  v11.super_class = EDAttachmentFileWriter;
  [(EDAttachmentFileWriter *)&v11 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

void __36__EDAttachmentFileWriter_writeData___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v5 = EDAttachmentsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __36__EDAttachmentFileWriter_writeData___block_invoke_cold_1(a1);
    }
  }
}

- (void)close
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "<%p> Attempted to close temporary MIME part file multiple times.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)failAndClose
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = EDAttachmentsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_3(&dword_1C61EF000, v3, v4, "<%p> Fail and close temporary MIME part file.", v7);
  }

  if (a1)
  {
    v5 = *(a1 + 144);
  }

  else
  {
    v5 = 0;
  }

  dispatch_io_close(v5, 1uLL);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)closeTemporaryFile
{
  v4 = *a2;
  *buf = 134218240;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v4;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "<%p> Failed to close temporary MIME part file: %{errno}d", buf, 0x12u);
}

- (void)moveTemporaryFileIntoPlace
{
  v6 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 134218240;
  *(&v4 + 4) = a1;
  OUTLINED_FUNCTION_4();
  *v5 = v1;
  OUTLINED_FUNCTION_1_0(&dword_1C61EF000, v1, v2, "<%p> Failed to move temporary MIME part file into place: %{errno}d", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x1E69E9840];
}

- (char)finalizedDigest
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF88] dataWithLength:32];
    if (CC_SHA256_Final([v2 mutableBytes], (v1 + 12)) == 1)
    {
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)writeData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    self->_byteCount += dispatch_data_get_size(v4);
  }

  if (dispatch_data_get_size(v5))
  {
    [EDAttachmentFileWriter updateDigestWithData:?];
    if (self)
    {
      v6 = self->_io;
      queue = self->_queue;
    }

    else
    {
      v6 = 0;
      queue = 0;
    }

    io_handler[0] = MEMORY[0x1E69E9820];
    io_handler[1] = 3221225472;
    io_handler[2] = __36__EDAttachmentFileWriter_writeData___block_invoke;
    io_handler[3] = &unk_1E82501E8;
    io_handler[4] = self;
    dispatch_io_write(v6, 0, v5, queue, io_handler);
  }
}

- (BOOL)updateDigestWithData:(_BOOL8)result
{
  if (result)
  {
    OUTLINED_FUNCTION_0_2();
    v4 = 3221225472;
    v5 = __47__EDAttachmentFileWriter_updateDigestWithData___block_invoke;
    v6 = &unk_1E8250210;
    v7 = v1;
    return dispatch_data_apply(v2, applier);
  }

  return result;
}

- (void)ioDidRelinquishControlWithError:(uint64_t)a1
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_12;
  }

  dispatch_assert_queue_V2(*(a1 + 152));
  if (a2)
  {
    v4 = EDAttachmentsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_ERROR, "<%p> Failed to create dispatch IO for temporary MIME part file.", v8, 0xCu);
    }

    [(EDAttachmentFileWriter *)a1 closeTemporaryFile];
    if (!*(a1 + 168))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (atomic_exchange((a1 + 9), 1u))
  {
    v5 = EDAttachmentsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_1();
      _os_log_error_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_ERROR, "<%p> Failing download because -failAndClose was previously called.", v8, 0xCu);
    }

    [(EDAttachmentFileWriter *)a1 closeTemporaryFile];
    if (!*(a1 + 168))
    {
      goto LABEL_12;
    }

LABEL_11:
    (*(*(a1 + 168) + 16))();
LABEL_12:
    v6 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = *MEMORY[0x1E69E9840];

  [(EDAttachmentFileWriter *)a1 makePurgeable];
}

- (void)makePurgeable
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = *(a1 + 116);
    if (EFMarkFileAsPurgeableFD())
    {
      v3 = *__error();
      v4 = EDAttachmentsLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_4();
        v7 = v3;
        _os_log_error_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_ERROR, "<%p> Failed to mark file as purgeable: %{errno}d.", v6, 0x12u);
      }
    }

    [(EDAttachmentFileWriter *)a1 moveTemporaryFileIntoPlace];
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __36__EDAttachmentFileWriter_writeData___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  LODWORD(v4) = 134218240;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_4();
  *v5 = v1;
  OUTLINED_FUNCTION_1_0(&dword_1C61EF000, v1, v2, "<%p> Failed to write data to temporary MIME part file.: %{errno}d", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x1E69E9840];
}

@end