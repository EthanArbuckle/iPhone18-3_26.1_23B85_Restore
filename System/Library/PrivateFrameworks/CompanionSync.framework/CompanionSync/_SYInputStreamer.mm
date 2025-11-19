@interface _SYInputStreamer
- (_SYInputStreamer)initWithCompressedFileURL:(id)a3 callbackQueue:(id)a4;
- (void)_completeAllItemsWithError:(id)a3;
- (void)_tryToReadData;
- (void)readDataOfLength:(unint64_t)a3 completion:(id)a4;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)whenComplete:(id)a3;
@end

@implementation _SYInputStreamer

- (_SYInputStreamer)initWithCompressedFileURL:(id)a3 callbackQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = _SYInputStreamer;
  v8 = [(_SYInputStreamer *)&v32 init];
  if (v8 && (v9 = [[SYCompressedFileInputStream alloc] initWithCompressedFileAtURL:v6], v10 = *(v8 + 1), *(v8 + 1) = v9, v10, *(v8 + 1)))
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
    v29[2] = __60___SYInputStreamer_initWithCompressedFileURL_callbackQueue___block_invoke;
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
    handler[2] = __60___SYInputStreamer_initWithCompressedFileURL_callbackQueue___block_invoke_171;
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

- (void)readDataOfLength:(unint64_t)a3 completion:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = [a4 copy];
  if ([(SYCompressedFileInputStream *)self->_stream streamStatus]== 5)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v7 = qword_1EDE73448;
    if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v7, OS_LOG_TYPE_INFO, "Reached end of input stream.", buf, 2u);
    }

    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48___SYInputStreamer_readDataOfLength_completion___block_invoke;
    block[3] = &unk_1E86CAA90;
    v25 = v6;
    dispatch_async(callbackQueue, block);
    v9 = v25;
LABEL_13:

    goto LABEL_22;
  }

  if ([(SYCompressedFileInputStream *)self->_stream streamStatus]== 6)
  {
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v10 = qword_1EDE73448;
    if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_INFO, "Stream is closed.", buf, 2u);
    }

    v11 = self->_callbackQueue;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __48___SYInputStreamer_readDataOfLength_completion___block_invoke_172;
    v22[3] = &unk_1E86CAA90;
    v23 = v6;
    dispatch_async(v11, v22);
    v9 = v23;
    goto LABEL_13;
  }

  if ([(SYCompressedFileInputStream *)self->_stream streamStatus]== 7)
  {
    v12 = [(SYCompressedFileInputStream *)self->_stream streamError];
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v13 = qword_1EDE73448;
    if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = _SYObfuscate(v12);
      *buf = 138543362;
      v27 = v15;
      _os_log_impl(&dword_1DF835000, v14, OS_LOG_TYPE_DEFAULT, "Stream is in error state: %{public}@", buf, 0xCu);
    }

    v16 = self->_callbackQueue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __48___SYInputStreamer_readDataOfLength_completion___block_invoke_173;
    v19[3] = &unk_1E86CAAB8;
    v20 = v12;
    v21 = v6;
    v17 = v12;
    dispatch_async(v16, v19);
  }

  else
  {
    v17 = [[_SYInputDataItem alloc] initWithLength:a3 callback:v6];
    [(NSMutableArray *)self->_items addObject:v17];
    dispatch_source_merge_data(self->_source, 1uLL);
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)_tryToReadData
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_items firstObject];
  if (!v3)
  {
    onComplete = self->_onComplete;
    if (onComplete)
    {
      dispatch_async(self->_callbackQueue, onComplete);
      v6 = self->_onComplete;
      self->_onComplete = 0;
    }

    goto LABEL_39;
  }

  v4 = [(SYCompressedFileInputStream *)self->_stream streamStatus];
  if (v4 > 5)
  {
    if (v4 == 6)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_DEBUG))
      {
        [_SYInputStreamer _tryToReadData];
      }

      goto LABEL_29;
    }

    if (v4 == 7)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_DEBUG))
      {
        [_SYInputStreamer _tryToReadData];
      }

      v7 = [(SYCompressedFileInputStream *)self->_stream streamError];
      [(_SYInputStreamer *)self _completeAllItemsWithError:v7];

      goto LABEL_39;
    }

    goto LABEL_18;
  }

  if (v4 != 2)
  {
    if (v4 == 5)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_DEBUG))
      {
        [_SYInputStreamer _tryToReadData];
      }

LABEL_29:
      [(_SYInputStreamer *)self _completeAllItemsWithError:0];
      goto LABEL_39;
    }

LABEL_18:
    if (_sync_log_facilities_pred != -1)
    {
      [SYIncomingSyncAllObjectsSession _continueProcessing];
    }

    v8 = qword_1EDE73448;
    if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_DEFAULT))
    {
      stream = self->_stream;
      v10 = v8;
      *buf = 67240192;
      v23 = [(SYCompressedFileInputStream *)stream streamStatus];
      _os_log_impl(&dword_1DF835000, v10, OS_LOG_TYPE_DEFAULT, "Stream in unexpected state: %{companionsync:NSStreamStatus,public}d", buf, 8u);
    }
  }

  [v3 lengthRemaining];
  MEMORY[0x1EEE9AC00]();
  v12 = &block[-1] - v11;
  v13 = [(SYCompressedFileInputStream *)self->_stream read:&block[-1] - v11 maxLength:?];
  if (v13 < 0)
  {
    v16 = [(SYCompressedFileInputStream *)self->_stream streamError];
    [(_SYInputStreamer *)self _completeAllItemsWithError:v16];

    goto LABEL_39;
  }

  v14 = v13;
  if (v13)
  {
    v15 = [v3 data];
    [v15 appendBytes:v12 length:v14];

    goto LABEL_37;
  }

  if ([(SYCompressedFileInputStream *)self->_stream streamStatus]!= 5)
  {
LABEL_37:
    if (![v3 lengthRemaining])
    {
      [(NSMutableArray *)self->_items removeObjectAtIndex:0];
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __34___SYInputStreamer__tryToReadData__block_invoke;
      block[3] = &unk_1E86C9FB0;
      v21 = v3;
      dispatch_async(callbackQueue, block);
      dispatch_source_merge_data(self->_source, 1uLL);
    }

    goto LABEL_39;
  }

  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_DEBUG))
  {
    [_SYInputStreamer _tryToReadData];
  }

  [(_SYInputStreamer *)self _completeAllItemsWithError:0];
LABEL_39:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_completeAllItemsWithError:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_sync_log_facilities_pred != -1)
  {
    [SYIncomingSyncAllObjectsSession _continueProcessing];
  }

  v5 = qword_1EDE73448;
  if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = _SYObfuscate(v4);
    *buf = 138543362;
    v27 = v7;
    _os_log_impl(&dword_1DF835000, v6, OS_LOG_TYPE_DEFAULT, "Completing all stream read items with error '%{public}@'", buf, 0xCu);
  }

  v8 = [(NSMutableArray *)self->_items copy];
  [(NSMutableArray *)self->_items removeAllObjects];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        callbackQueue = self->_callbackQueue;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __47___SYInputStreamer__completeAllItemsWithError___block_invoke;
        v19[3] = &unk_1E86C9E90;
        v19[4] = v14;
        v20 = v4;
        dispatch_async(callbackQueue, v19);
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  onComplete = self->_onComplete;
  if (onComplete)
  {
    dispatch_async(self->_callbackQueue, onComplete);
    v17 = self->_onComplete;
    self->_onComplete = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)whenComplete:(id)a3
{
  block = a3;
  if ([(NSMutableArray *)self->_items count])
  {
    v4 = self;
    objc_sync_enter(v4);
    v5 = [block copy];
    onComplete = v4->_onComplete;
    v4->_onComplete = v5;

    objc_sync_exit(v4);
  }

  else
  {
    dispatch_async(self->_callbackQueue, block);
  }
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  switch(a4)
  {
    case 0x10uLL:
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v9 = qword_1EDE73448;
      if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF835000, v9, OS_LOG_TYPE_INFO, "Input stream end encountered", buf, 2u);
      }

      queue = self->_queue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __39___SYInputStreamer_stream_handleEvent___block_invoke_175;
      v11[3] = &unk_1E86C9FB0;
      v11[4] = self;
      dispatch_async(queue, v11);
      break;
    case 8uLL:
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v7 = qword_1EDE73448;
      if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_ERROR))
      {
        [_SYInputStreamer stream:v7 handleEvent:v6];
      }

      v8 = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __39___SYInputStreamer_stream_handleEvent___block_invoke;
      block[3] = &unk_1E86C9E90;
      block[4] = self;
      v14 = v6;
      dispatch_async(v8, block);

      break;
    case 2uLL:
      dispatch_source_merge_data(self->_source, 1uLL);
      break;
  }
}

- (void)stream:(void *)a1 handleEvent:(void *)a2 .cold.3(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 streamError];
  OUTLINED_FUNCTION_4_2(&dword_1DF835000, v5, v6, "Input stream encountered error: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x1E69E9840];
}

@end