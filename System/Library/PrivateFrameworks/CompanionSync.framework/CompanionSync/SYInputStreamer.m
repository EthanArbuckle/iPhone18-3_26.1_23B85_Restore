@interface SYInputStreamer
@end

@implementation SYInputStreamer

void __60___SYInputStreamer_initWithCompressedFileURL_callbackQueue___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (a3 == 8)
    {
      if (_sync_log_facilities_pred != -1)
      {
        [SYIncomingSyncAllObjectsSession _continueProcessing];
      }

      v8 = qword_1EDE73448;
      if (os_log_type_enabled(qword_1EDE73448, OS_LOG_TYPE_ERROR))
      {
        __60___SYInputStreamer_initWithCompressedFileURL_callbackQueue___block_invoke_cold_2(v7, v8, v5);
      }

      v9 = [v5 streamError];
      [v7 _completeAllItemsWithError:v9];
    }

    else if (a3 == 2)
    {
      [WeakRetained _tryToReadData];
    }
  }
}

void __60___SYInputStreamer_initWithCompressedFileURL_callbackQueue___block_invoke_171(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _tryToReadData];
    WeakRetained = v2;
  }
}

void __48___SYInputStreamer_readDataOfLength_completion___block_invoke_172(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = [v2 initWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
  (*(v1 + 16))(v1, 0, v3);
}

void __34___SYInputStreamer__tryToReadData__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) callback];
  v2 = [*(a1 + 32) data];
  v3[2](v3, v2, 0);
}

void __47___SYInputStreamer__completeAllItemsWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) callback];
  (*(v2 + 2))(v2, 0, *(a1 + 40));
}

void __39___SYInputStreamer_stream_handleEvent___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) streamError];
  [v1 _completeAllItemsWithError:v2];
}

void __60___SYInputStreamer_initWithCompressedFileURL_callbackQueue___block_invoke_cold_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [a3 streamError];
  v6 = _SYObfuscate(v5);
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_6_1(&dword_1DF835000, v7, v8, "Input streamer %{public}@: Error from underlying stream: %{public}@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x1E69E9840];
}

@end