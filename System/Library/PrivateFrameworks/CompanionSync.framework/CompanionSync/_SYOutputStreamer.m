@interface _SYOutputStreamer
- (_SYOutputStreamer)initWithCompressedFileURL:(id)a3 callbackQueue:(id)a4;
- (id)_getCompletionBlock;
- (void)_completeAllItemsWithError:(id)a3;
- (void)_tryToSendData;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)whenComplete:(id)a3;
- (void)writeData:(id)a3 completion:(id)a4;
@end

@implementation _SYOutputStreamer

- (_SYOutputStreamer)initWithCompressedFileURL:(id)a3 callbackQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = _SYOutputStreamer;
  v8 = [(_SYOutputStreamer *)&v32 init];
  if (v8 && (v9 = [[SYCompressedFileOutputStream alloc] initToCompressedFileAtURL:v6 shouldAppend:0], v10 = *(v8 + 1), *(v8 + 1) = v9, v10, *(v8 + 1)))
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [v6 lastPathComponent];
    v13 = [v11 initWithFormat:@"_SYOutputStreamer: %@", v12];

    v14 = [v13 UTF8String];
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v14, v15);
    v17 = *(v8 + 4);
    *(v8 + 4) = v16;

    objc_storeStrong(v8 + 6, a4);
    [*(v8 + 1) setDelegate:v8];
    objc_initWeak(&location, v8);
    v18 = *(v8 + 1);
    v19 = *(v8 + 4);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __61___SYOutputStreamer_initWithCompressedFileURL_callbackQueue___block_invoke;
    v29[3] = &unk_1E86CB3F8;
    objc_copyWeak(&v30, &location);
    [v18 _SY_notifyOnQueue:v19 handler:v29];
    v20 = objc_opt_new();
    v21 = *(v8 + 2);
    *(v8 + 2) = v20;

    v22 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, *(v8 + 4));
    v23 = *(v8 + 5);
    *(v8 + 5) = v22;

    v24 = *(v8 + 5);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __61___SYOutputStreamer_initWithCompressedFileURL_callbackQueue___block_invoke_56;
    handler[3] = &unk_1E86CA190;
    objc_copyWeak(&v28, &location);
    dispatch_source_set_event_handler(v24, handler);
    [*(v8 + 1) open];
    dispatch_resume(*(v8 + 5));
    v25 = v8;
    objc_destroyWeak(&v28);
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_getCompletionBlock
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E12E11B0](v2->_onComplete);
  onComplete = v2->_onComplete;
  v2->_onComplete = 0;

  objc_sync_exit(v2);
  v5 = MEMORY[0x1E12E11B0](v3);

  return v5;
}

- (void)writeData:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  stream = self->_stream;
  v8 = a3;
  if ([(SYCompressedFileOutputStream *)stream streamStatus]== 6)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v9 = qword_1EDE73448;
    if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = self;
      _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_DEFAULT, "Streamer %{public}@ writing to a closed stream", buf, 0xCu);
    }

    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42___SYOutputStreamer_writeData_completion___block_invoke;
    block[3] = &unk_1E86CAA90;
    v25 = v6;
    dispatch_async(callbackQueue, block);
    v11 = v25;
LABEL_13:

    goto LABEL_14;
  }

  if ([(SYCompressedFileOutputStream *)self->_stream streamStatus]== 7)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v12 = qword_1EDE73448;
    if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_stream;
      v14 = v12;
      v15 = [(SYCompressedFileOutputStream *)v13 streamError];
      v16 = _SYObfuscate(v15);
      *buf = 138543618;
      v27 = self;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "Streamer %{public}@ writing to a stream in error state. Error = %{public}@", buf, 0x16u);
    }

    v17 = [(SYCompressedFileOutputStream *)self->_stream streamError];
    v18 = self->_callbackQueue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __42___SYOutputStreamer_writeData_completion___block_invoke_59;
    v21[3] = &unk_1E86CAAB8;
    v22 = v17;
    v23 = v6;
    v11 = v17;
    dispatch_async(v18, v21);

    goto LABEL_13;
  }

LABEL_14:
  v19 = objc_opt_new();
  [v19 setData:v8];

  [v19 setCallback:v6];
  [(NSMutableArray *)self->_items addObject:v19];
  dispatch_source_merge_data(self->_source, 1uLL);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_tryToSendData
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 streamError];
  v5 = _SYObfuscate(v4);
  OUTLINED_FUNCTION_4_2(&dword_1DF835000, v6, v7, "Write to output stream failed, stream error=%{public}@.", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_completeAllItemsWithError:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_items;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        callbackQueue = self->_callbackQueue;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __48___SYOutputStreamer__completeAllItemsWithError___block_invoke;
        v14[3] = &unk_1E86C9E90;
        v14[4] = v10;
        v15 = v4;
        dispatch_async(callbackQueue, v14);
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_items removeAllObjects];
  v12 = [(_SYOutputStreamer *)self _getCompletionBlock];
  if (v12)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_DEBUG))
    {
      [_SYOutputStreamer _tryToSendData];
    }

    dispatch_async(self->_callbackQueue, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)whenComplete:(id)a3
{
  items = self->_items;
  block = a3;
  if ([(NSMutableArray *)items count])
  {
    v5 = [block copy];

    onComplete = self->_onComplete;
    self->_onComplete = v5;
  }

  else
  {
    dispatch_async(self->_callbackQueue, block);
    onComplete = block;
  }
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 8)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40___SYOutputStreamer_stream_handleEvent___block_invoke;
    v9[3] = &unk_1E86C9E90;
    v9[4] = self;
    v10 = v6;
    dispatch_async(queue, v9);
  }

  else if (a4 == 4)
  {
    dispatch_source_merge_data(self->_source, 1uLL);
  }
}

@end