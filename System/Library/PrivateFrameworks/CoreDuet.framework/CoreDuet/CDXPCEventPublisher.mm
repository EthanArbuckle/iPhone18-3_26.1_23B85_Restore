@interface CDXPCEventPublisher
@end

@implementation CDXPCEventPublisher

void __56___CDXPCEventPublisher_activatePublisherWithStreamName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEventWithAction:a2 token:a3 descriptor:v7];
}

void __56___CDXPCEventPublisher_activatePublisherWithStreamName___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56___CDXPCEventPublisher_activatePublisherWithStreamName___block_invoke_2_cold_1(a1, v2);
  }
}

void __55___CDXPCEventPublisher_sendEvent_toSubscriber_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendEvent:*(a1 + 32) toSubscriber:*(a1 + 40) handler:*(a1 + 48)];
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:4 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }
}

void __60___CDXPCEventPublisher_sendEvent_toSubscriber_replyHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sendEvent:*(a1 + 32) toSubscriber:*(a1 + 40) replyHandler:*(a1 + 48)];
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreduetd" code:4 userInfo:0];
    (*(*(a1 + 48) + 16))();
  }
}

void __60___CDXPCEventPublisher_sendEvent_toSubscriber_replyHandler___block_invoke_8(void *a1, void *a2)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [_CDXPCCodecs errorFromReply:v3];
  v5 = a1[4];
  v6 = *(v5 + 40);
  if (v4)
  {
    if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
    {
      v7 = a1[5];
      v8 = *(a1[4] + 16);
      v20 = 138543874;
      v21 = v8;
      v22 = 2114;
      v23 = v7;
      v24 = 2112;
      v25[0] = v4;
      _os_log_error_impl(&dword_191750000, v6, OS_LOG_TYPE_ERROR, "Received error in reply on stream %{public}@ from subscriber %{public}@: %@", &v20, 0x20u);
    }
  }

  else if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_DEBUG))
  {
    v9 = *(v5 + 48);
    if (os_variant_has_internal_diagnostics())
    {
      v10 = MEMORY[0x193B01150](v3);
      v11 = *(a1[4] + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = a1[5];
        v15 = *(a1[4] + 16);
        v16 = v11;
        v20 = 138544130;
        v21 = v15;
        v22 = 2114;
        v23 = v14;
        v24 = 1024;
        LODWORD(v25[0]) = xpc_dictionary_get_count(v3);
        WORD2(v25[0]) = 2080;
        *(v25 + 6) = v10;
        _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "Fetched reply on stream %{public}@ from subscriber %{public}@ with %d keys: %s", &v20, 0x26u);

        if (!v10)
        {
          goto LABEL_11;
        }
      }

      else if (!v10)
      {
        goto LABEL_11;
      }

      free(v10);
      goto LABEL_11;
    }

    v12 = *(a1[4] + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = a1[5];
      v18 = *(a1[4] + 16);
      v19 = v12;
      v20 = 138543874;
      v21 = v18;
      v22 = 2114;
      v23 = v17;
      v24 = 1024;
      LODWORD(v25[0]) = xpc_dictionary_get_count(v3);
      _os_log_debug_impl(&dword_191750000, v19, OS_LOG_TYPE_DEBUG, "Fetched reply on stream %{public}@ from subscriber %{public}@ with %d keys", &v20, 0x1Cu);
    }
  }

LABEL_11:
  (*(a1[6] + 16))();

  v13 = *MEMORY[0x1E69E9840];
}

void __56___CDXPCEventPublisher_activatePublisherWithStreamName___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = a2;
  xpc_strerror();
  OUTLINED_FUNCTION_0_27();
  _os_log_error_impl(&dword_191750000, v3, OS_LOG_TYPE_ERROR, "Unexpected error from publisher for stream %{public}s: %s", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

@end