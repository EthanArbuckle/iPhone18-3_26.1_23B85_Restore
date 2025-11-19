@interface PAVideoConversionServiceClient
- (BOOL)canMarkPendingRequestAsOptionalForProgress:(id)a3;
- (PAVideoConversionServiceClient)init;
- (id)convertVideoAtSourceURL:(id)a3 toDestinationURL:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (id)convertVideoAtSourceURLCollection:(id)a3 toDestinationURLCollection:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)extractStillImageFromVideoAtSourceURL:(id)a3 toDestinationURL:(id)a4 options:(id)a5 completionHandler:(id)a6;
- (void)handleRequestCompletionForIdentifier:(id)a3;
- (void)invalidateAfterPendingRequestCompletion;
- (void)markPendingRequestAsOptionalForProgress:(id)a3;
- (void)modifyRequestWithIdentifier:(id)a3 modifications:(id)a4;
- (void)requestStatusWithCompletionHandler:(id)a3;
- (void)setupServiceConnection;
- (void)transitionToInvalidatedState;
- (void)updateProgress:(id)a3;
- (void)ut_invalidateServiceConnection;
@end

@implementation PAVideoConversionServiceClient

- (void)requestStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PAVideoConversionServiceClient *)self serviceConnection];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __69__PAVideoConversionServiceClient_requestStatusWithCompletionHandler___block_invoke;
  v11 = &unk_27989B4B8;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:&v8];
  [v7 requestStatusWithReply:{v6, v8, v9, v10, v11, v12}];
}

void __69__PAVideoConversionServiceClient_requestStatusWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video conversion status request error: %{public}@", &v5, 0xCu);
  }

  (*(*(a1 + 40) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAfterPendingRequestCompletion
{
  v3 = [(PAVideoConversionServiceClient *)self isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__PAVideoConversionServiceClient_invalidateAfterPendingRequestCompletion__block_invoke;
  block[3] = &unk_27989BA48;
  block[4] = self;
  dispatch_async(v3, block);
}

void __73__PAVideoConversionServiceClient_invalidateAfterPendingRequestCompletion__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 1)
  {
    v2 = [*(a1 + 32) pendingRequestIdentifierToProgressMap];
    v3 = [v2 count];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v8 = 138543618;
      v9 = v4;
      v10 = 2048;
      v11 = v3;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Invalidating client %{public}@ with pending request count %tu", &v8, 0x16u);
    }

    v5 = *(a1 + 32);
    if (v3)
    {
      [v5 setState:2];
    }

    else
    {
      [v5 transitionToInvalidatedState];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138543618;
    v9 = v6;
    v10 = 2048;
    v11 = [v6 state];
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Ignoring invalidation request for client %{public}@ in non-running state %tu", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateProgress:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
  v6 = [v4 objectForKeyedSubscript:@"PAMediaConversionServiceProgressKey"];

  if (v6 && v5)
  {
    [v6 doubleValue];
    v8 = v7;
    v9 = [(PAVideoConversionServiceClient *)self isolationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__PAVideoConversionServiceClient_updateProgress___block_invoke;
    block[3] = &unk_27989B740;
    block[4] = self;
    v11 = v5;
    v12 = v8;
    dispatch_async(v9, block);
  }
}

void __49__PAVideoConversionServiceClient_updateProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingRequestIdentifierToProgressMap];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    [v3 willChangeValueForKey:@"fractionCompleted"];
    [v3 setCompletedUnitCount:(*(a1 + 48) * 100.0)];
    [v3 didChangeValueForKey:@"fractionCompleted"];
  }
}

- (void)transitionToInvalidatedState
{
  v3 = [(PAVideoConversionServiceClient *)self isolationQueue];
  dispatch_assert_queue_V2(v3);

  [(PAVideoConversionServiceClient *)self setState:3];
  v4 = [(PAVideoConversionServiceClient *)self serviceConnection];
  [v4 invalidate];
}

- (void)handleRequestCompletionForIdentifier:(id)a3
{
  v8 = a3;
  v5 = [(PAVideoConversionServiceClient *)self isolationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PAVideoConversionServiceClient *)self state];
  if (v6 - 3 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PAVideoConversionServiceClient.m" lineNumber:339 description:{@"Unexpected client state %tu", v6}];

    [(NSMutableDictionary *)self->_pendingRequestIdentifierToProgressMap removeObjectForKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)self->_pendingRequestIdentifierToProgressMap removeObjectForKey:v8];
    if (v6 == 2 && ![(NSMutableDictionary *)self->_pendingRequestIdentifierToProgressMap count])
    {
      [(PAVideoConversionServiceClient *)self transitionToInvalidatedState];
    }
  }
}

- (void)extractStillImageFromVideoAtSourceURL:(id)a3 toDestinationURL:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v71 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v50 = a4;
  v11 = a5;
  v12 = a6;
  v52 = v10;
  if (!v10)
  {
    v43 = [MEMORY[0x277CCA890] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PAVideoConversionServiceClient.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"sourceURL"}];
  }

  v51 = v11;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v44 = [MEMORY[0x277CCA890] currentHandler];
    [v44 handleFailureInMethod:a2 object:self file:@"PAVideoConversionServiceClient.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"inputOptions"}];

    if (v12)
    {
      goto LABEL_5;
    }
  }

  v45 = [MEMORY[0x277CCA890] currentHandler];
  [v45 handleFailureInMethod:a2 object:self file:@"PAVideoConversionServiceClient.m" lineNumber:253 description:{@"Invalid parameter not satisfying: %@", @"originalCompletionHandler"}];

LABEL_5:
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v49 = _os_activity_create(&dword_2585D9000, "mediaconversion-video-still", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v49, &state);
  v13 = [v11 objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v16 UUIDString];
  }

  v17 = buf;
  v18 = MEMORY[0x277D86220];
  v19 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v20 = [v52 path];
    *buf = 138543618;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Video still extraction request %{public}@ for %@", buf, 0x16u);
  }

  v21 = MEMORY[0x277D86220];
  v22 = os_signpost_id_make_with_pointer(MEMORY[0x277D86220], v15);
  v23 = v21;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 138543362;
    *&buf[4] = v15;
    _os_signpost_emit_with_name_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v22, "com.apple.photos.mediaconversion.client.video-still", "Video still extraction request %{public}@", buf, 0xCu);
  }

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __115__PAVideoConversionServiceClient_extractStillImageFromVideoAtSourceURL_toDestinationURL_options_completionHandler___block_invoke;
  v65[3] = &unk_27989B410;
  v67 = v22;
  v48 = v12;
  v66 = v48;
  v24 = MEMORY[0x259C84340](v65);
  v25 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:v52];
  v64 = 0;
  v26 = [v25 bookmarkDataDictionaryRepresentationWithError:&v64];
  v27 = v64;
  if (v26)
  {
    if (v50)
    {
      v28 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:?];
      v63 = 0;
      v29 = [v28 ensureFilesExistWithError:&v63];
      v30 = v63;
      if (v29)
      {
        v62 = v27;
        v46 = [v28 bookmarkDataDictionaryRepresentationWithError:&v62];
        v31 = v62;

        v27 = v31;
        if (v46)
        {

LABEL_22:
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v70 = 0;
          v32 = [(PAVideoConversionServiceClient *)self isolationQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __115__PAVideoConversionServiceClient_extractStillImageFromVideoAtSourceURL_toDestinationURL_options_completionHandler___block_invoke_102;
          block[3] = &unk_27989B118;
          block[4] = self;
          v33 = v15;
          v60 = v33;
          v61 = buf;
          dispatch_sync(v32, block);

          if (*(*&buf[8] + 24))
          {
            v34 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v51];
            v35 = [v51 objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
            v36 = v35;
            if (!v35)
            {
              v17 = [MEMORY[0x277CCAD78] UUID];
              v36 = [v17 UUIDString];
            }

            [v34 setObject:v36 forKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
            if (!v35)
            {
            }

            v37 = [*MEMORY[0x277CE1DC0] identifier];
            [v34 setObject:v37 forKeyedSubscript:@"PAMediaConversionServiceOptionOutputFileTypeKey"];

            v38 = [(PAVideoConversionServiceClient *)self serviceConnection];
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __115__PAVideoConversionServiceClient_extractStillImageFromVideoAtSourceURL_toDestinationURL_options_completionHandler___block_invoke_103;
            v56[3] = &unk_27989B078;
            v56[4] = self;
            v39 = v33;
            v57 = v39;
            v40 = v24;
            v58 = v40;
            v41 = [v38 remoteObjectProxyWithErrorHandler:v56];
            v53[0] = MEMORY[0x277D85DD0];
            v53[1] = 3221225472;
            v53[2] = __115__PAVideoConversionServiceClient_extractStillImageFromVideoAtSourceURL_toDestinationURL_options_completionHandler___block_invoke_104;
            v53[3] = &unk_27989B908;
            v53[4] = self;
            v54 = v39;
            v55 = v40;
            [v41 extractStillImageFromVideoAtSourceBookmarkDictionary:v26 toDestinationBookmarkDictionary:v46 options:v34 replyHandler:v53];
          }

          else
          {
            v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:10 userInfo:0];
            (v24)[2](v24, 2, 0, v34);
          }

          _Block_object_dispose(buf, 8);
          v28 = v46;
          goto LABEL_35;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v15;
          *&buf[12] = 2114;
          *&buf[14] = v31;
          _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video still extraction request %{public}@ unable to generate destination bookmark data: %{public}@", buf, 0x16u);
        }

        (v24)[2](v24, 2, 0, v31);
      }

      else
      {
        (v24)[2](v24, 2, 0, v30);
      }

LABEL_35:
      goto LABEL_36;
    }

    v46 = 0;
    goto LABEL_22;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    *&buf[4] = v15;
    *&buf[12] = 2114;
    *&buf[14] = v27;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video still extraction request %{public}@ unable to generate source bookmark data: %{public}@", buf, 0x16u);
  }

  (v24)[2](v24, 2, 0, v27);
LABEL_36:

  os_activity_scope_leave(&state);
  v42 = *MEMORY[0x277D85DE8];
}

void __115__PAVideoConversionServiceClient_extractStillImageFromVideoAtSourceURL_toDestinationURL_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D86220];
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_SIGNPOST_EVENT, v9, "com.apple.photos.mediaconversion.client.video-still.pre-completion", "", buf, 2u);
  }

  v10 = MEMORY[0x277D86220];

  (*(*(a1 + 32) + 16))();
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v12, "com.apple.photos.mediaconversion.client.video-still", "", v13, 2u);
  }
}

void __115__PAVideoConversionServiceClient_extractStillImageFromVideoAtSourceURL_toDestinationURL_options_completionHandler___block_invoke_102(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 1)
  {
    v2 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:0];
    v3 = [*(a1 + 32) pendingRequestIdentifierToProgressMap];
    [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) pendingRequestIdentifierToProgressMap];
      v10 = 138543618;
      v11 = v4;
      v12 = 2048;
      v13 = [v5 count];
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Video conversion request %{public}@ added to request map (pending request count now %ld)", &v10, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = a1 + 32;
    v7 = *(a1 + 32);
    v8 = *(v9 + 8);
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = [v7 state];
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Rejecting video conversion request %{public}@ on client %{public}@ in non-running state %tu", &v10, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __115__PAVideoConversionServiceClient_extractStillImageFromVideoAtSourceURL_toDestinationURL_options_completionHandler___block_invoke_103(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) isolationQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __115__PAVideoConversionServiceClient_extractStillImageFromVideoAtSourceURL_toDestinationURL_options_completionHandler___block_invoke_2;
  v9[3] = &unk_27989B6F0;
  v5 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v5;
  dispatch_async(v4, v9);

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 40);
    *buf = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v3;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video still extraction request %{public}@ XPC error: %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), 2, 0, v3, v6);

  v7 = *MEMORY[0x277D85DE8];
}

void __115__PAVideoConversionServiceClient_extractStillImageFromVideoAtSourceURL_toDestinationURL_options_completionHandler___block_invoke_104(void *a1, uint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a1[4];
  v9 = a3;
  v10 = [v8 isolationQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __115__PAVideoConversionServiceClient_extractStillImageFromVideoAtSourceURL_toDestinationURL_options_completionHandler___block_invoke_2_105;
  v18[3] = &unk_27989B6F0;
  v11 = a1[5];
  v18[4] = a1[4];
  v19 = v11;
  dispatch_async(v10, v18);

  if (a2 == 1)
  {
    v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    v14 = v9;
    if (v12)
    {
      v15 = a1[5];
      *buf = 138543362;
      v21 = v15;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Video still extraction request %{public}@ successful completion", buf, 0xCu);
      v14 = v9;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = a1[5];
      *buf = 138543874;
      v21 = v17;
      v22 = 2048;
      v23 = a2;
      v24 = 2114;
      v25 = v7;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video still extraction request %{public}@ unsuccessful completion, status = %ld, error = %{public}@", buf, 0x20u);
    }

    v14 = 0;
  }

  (*(a1[6] + 16))(a1[6], a2, v14, v7, v13);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)modifyRequestWithIdentifier:(id)a3 modifications:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PAVideoConversionServiceClient *)self isolationQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(PAVideoConversionServiceClient *)self serviceConnection];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __76__PAVideoConversionServiceClient_modifyRequestWithIdentifier_modifications___block_invoke;
  v15 = &unk_27989B0F0;
  v16 = v6;
  v17 = self;
  v10 = v6;
  v11 = [v9 remoteObjectProxyWithErrorHandler:&v12];

  [v11 modifyJobWithIdentifier:v10 modifications:{v7, v12, v13, v14, v15}];
}

void __76__PAVideoConversionServiceClient_modifyRequestWithIdentifier_modifications___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "XPC error during modification of request %{public}@ on client %{public}@", &v5, 0x16u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)markPendingRequestAsOptionalForProgress:(id)a3
{
  v5 = a3;
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];

  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PAVideoConversionServiceClient.m" lineNumber:214 description:@"Unexpected nil request identifier"];
  }

  v8 = [(PAVideoConversionServiceClient *)self isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PAVideoConversionServiceClient_markPendingRequestAsOptionalForProgress___block_invoke;
  block[3] = &unk_27989B0C8;
  block[4] = self;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v7;
  dispatch_async(v8, block);
}

void __74__PAVideoConversionServiceClient_markPendingRequestAsOptionalForProgress___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 1)
  {
    v2 = [*(a1 + 32) pendingRequestIdentifierToProgressMap];
    v3 = [v2 allValues];
    v4 = [v3 containsObject:*(a1 + 48)];

    if (v4)
    {
      v12 = @"PAMediaConversionServiceOptionJobPriorityKey";
      v13 = &unk_2869A0FD0;
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      [*(a1 + 32) modifyRequestWithIdentifier:*(a1 + 40) modifications:v5];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Ignoring modification for request %{public}@ on client %{public}@ that is not or no longer in pending request map", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v8 = a1 + 32;
    v6 = *(a1 + 32);
    v7 = *(v8 + 8);
    *buf = 138543874;
    v15 = v7;
    v16 = 2114;
    v17 = v6;
    v18 = 2048;
    v19 = [v6 state];
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Rejecting modification for request %{public}@ on client %{public}@ in non-running state %tu", buf, 0x20u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)canMarkPendingRequestAsOptionalForProgress:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];

  return v4 != 0;
}

- (id)convertVideoAtSourceURLCollection:(id)a3 toDestinationURLCollection:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v90 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v61 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v52 = [MEMORY[0x277CCA890] currentHandler];
    [v52 handleFailureInMethod:a2 object:self file:@"PAVideoConversionServiceClient.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"inputOptions"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v53 = [MEMORY[0x277CCA890] currentHandler];
  [v53 handleFailureInMethod:a2 object:self file:@"PAVideoConversionServiceClient.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"originalCompletionHandler"}];

LABEL_3:
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v59 = _os_activity_create(&dword_2585D9000, "mediaconversion-video", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v59, &state);
  v15 = [v12 objectForKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v18 = [MEMORY[0x277CCAD78] UUID];
    v17 = [v18 UUIDString];
  }

  v19 = MEMORY[0x277D86220];
  v20 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = [v11 logMessageSummary];
    *buf = 138543618;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Video conversion request %{public}@ for %@", buf, 0x16u);
  }

  v22 = MEMORY[0x277D86220];
  v23 = os_signpost_id_make_with_pointer(MEMORY[0x277D86220], v17);
  v24 = v22;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 138543362;
    *&buf[4] = v17;
    _os_signpost_emit_with_name_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_BEGIN, v23, "com.apple.photos.mediaconversion.client.video", "Video conversion request %{public}@", buf, 0xCu);
  }

  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke;
  v82[3] = &unk_27989B410;
  v84 = v23;
  v58 = v14;
  v83 = v58;
  v25 = MEMORY[0x259C84340](v82);
  v62 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12];
  v81 = 0;
  v26 = [v11 bookmarkDataDictionaryRepresentationWithError:&v81];
  v27 = v81;
  v60 = v26;
  if (v26)
  {
    if (v61)
    {
      v80 = 0;
      v28 = [v61 ensureFilesExistWithError:&v80];
      v29 = v80;
      if (v28)
      {
        v79 = v27;
        v57 = [v61 bookmarkDataDictionaryRepresentationWithError:&v79];
        v55 = v79;

        if (v57)
        {

LABEL_20:
          v32 = [MEMORY[0x277CCAC48] discreteProgressWithTotalUnitCount:100];
          [v32 setUserInfoObject:v17 forKey:@"PAMediaConversionServiceJobIdentifierKey"];
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_86;
          v75[3] = &unk_27989B718;
          v33 = v17;
          v76 = v33;
          v77 = self;
          v34 = v25;
          v78 = v34;
          [v32 setCancellationHandler:v75];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v89 = 0;
          v35 = [(PAVideoConversionServiceClient *)self isolationQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_90;
          block[3] = &unk_27989B050;
          block[4] = self;
          v36 = v33;
          v72 = v36;
          v56 = v32;
          v73 = v56;
          v74 = buf;
          dispatch_sync(v35, block);

          if (*(*&buf[8] + 24))
          {
            [v62 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PAMediaConversionServiceOptionWantsProgressKey"];
            [v62 setObject:v36 forKeyedSubscript:@"PAMediaConversionServiceJobIdentifierKey"];
            v37 = [(PAVideoConversionServiceClient *)self serviceConnection];
            v67[0] = MEMORY[0x277D85DD0];
            v67[1] = 3221225472;
            v67[2] = __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_92;
            v67[3] = &unk_27989B078;
            v38 = v36;
            v68 = v38;
            v69 = self;
            v39 = v34;
            v70 = v39;
            v54 = [v37 remoteObjectProxyWithErrorHandler:v67];

            v40 = [MEMORY[0x277CBEAA8] date];
            v63[0] = MEMORY[0x277D85DD0];
            v63[1] = 3221225472;
            v63[2] = __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_95;
            v63[3] = &unk_27989B0A0;
            v63[4] = self;
            v41 = v38;
            v64 = v41;
            v42 = v40;
            v65 = v42;
            v66 = v39;
            v43 = MEMORY[0x259C84340](v63);
            v44 = [v62 objectForKeyedSubscript:@"PAMediaConversionServiceOptionTargetFileSizeKey"];

            v45 = [v62 objectForKeyedSubscript:@"PAMediaConversionServiceOptionIsGIFExportConversionKey"];
            v46 = [v45 BOOLValue];

            if (v44)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *v86 = 138543362;
                v87 = v41;
                _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Video conversion request %{public}@ sending single pass export request", v86, 0xCu);
              }

              [v54 singlePassConvertVideoAtSourceBookmarkDictionary:v60 toDestinationBookmarkDictionary:v57 options:v62 replyHandler:v43];
            }

            else if (v46)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *v86 = 138543362;
                v87 = v41;
                _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Video conversion request %{public}@ sending GIF export request", v86, 0xCu);
              }

              [v54 generateGIFForVideoAtSourceBookmarkDictionary:v60 toDestinationBookmarkDictionary:v57 options:v62 replyHandler:v43];
            }

            else
            {
              [v54 convertVideoAtSourceBookmarkDictionary:v60 toDestinationBookmarkDictionary:v57 options:v62 replyHandler:v43];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *v86 = 138543362;
                v87 = v41;
                _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Video conversion request %{public}@ sending export request", v86, 0xCu);
              }
            }

            v48 = v56;
            v49 = v43;
            v30 = v48;

            v47 = v68;
          }

          else
          {
            v47 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:10 userInfo:0];
            (*(v34 + 2))(v34, 2, 0, v47);
            v30 = 0;
          }

          _Block_object_dispose(buf, 8);
          v29 = v57;
          v27 = v55;
          goto LABEL_39;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v17;
          *&buf[12] = 2114;
          *&buf[14] = v55;
          _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video conversion request %{public}@ unable to generate destination bookmark data: %{public}@", buf, 0x16u);
        }

        v27 = v55;
        (v25)[2](v25, 2, 0, v55);
      }

      else
      {
        (v25)[2](v25, 2, 0, v29);
      }

      v30 = 0;
LABEL_39:

      v31 = v60;
      goto LABEL_40;
    }

    [v62 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"PAMediaConversionServiceOptionWantsResultAsDataKey"];
    v57 = 0;
    v55 = v27;
    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = v27;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video conversion request %{public}@ unable to generate source bookmark data: %{public}@", buf, 0x16u);
  }

  (v25)[2](v25, 2, 0, v27);
  v30 = 0;
  v31 = 0;
LABEL_40:

  os_activity_scope_leave(&state);
  v50 = *MEMORY[0x277D85DE8];

  return v30;
}

void __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277D86220];
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_SIGNPOST_EVENT, v9, "com.apple.photos.mediaconversion.client.video.pre-completion", "", buf, 2u);
  }

  v10 = MEMORY[0x277D86220];

  (*(*(a1 + 32) + 16))();
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x277D86220]))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_SIGNPOST_INTERVAL_END, v12, "com.apple.photos.mediaconversion.client.video", "", v13, 2u);
  }
}

void __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_86(id *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = a1[4];
    *buf = 138543362;
    v13 = v2;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Video conversion request %{public}@ requesting cancellation", buf, 0xCu);
  }

  v3 = [a1[5] serviceConnection];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_87;
  v9 = &unk_27989B4B8;
  v10 = a1[4];
  v11 = a1[6];
  v4 = [v3 remoteObjectProxyWithErrorHandler:&v6];
  [v4 cancelJobWithIdentifier:{a1[4], v6, v7, v8, v9}];

  v5 = *MEMORY[0x277D85DE8];
}

void __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_90(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] == 1)
  {
    v2 = *(a1 + 48);
    v3 = [*(a1 + 32) pendingRequestIdentifierToProgressMap];
    [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) pendingRequestIdentifierToProgressMap];
      v10 = 138543618;
      v11 = v4;
      v12 = 2048;
      v13 = [v5 count];
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Video conversion request %{public}@ added to request map (pending request count now %ld)", &v10, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = a1 + 32;
    v7 = *(a1 + 32);
    v8 = *(v9 + 8);
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v7;
    v14 = 2048;
    v15 = [v7 state];
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Rejecting video conversion request %{public}@ on client %{public}@ in non-running state %tu", &v10, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_92(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 32);
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v3;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video conversion request %{public}@ XPC error: %{public}@", buf, 0x16u);
  }

  v4 = [*(a1 + 40) isolationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_93;
  block[3] = &unk_27989B6F0;
  v8 = *(a1 + 32);
  v5 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  dispatch_async(v4, block);

  (*(*(a1 + 48) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_95(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) isolationQueue];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_2;
  v20 = &unk_27989B790;
  v10 = *(a1 + 40);
  v21 = *(a1 + 32);
  v22 = v10;
  v24 = a2;
  v11 = v8;
  v23 = v11;
  dispatch_async(v9, &v17);

  if (v7)
  {
    v12 = [v7 mutableCopy];
    v13 = MEMORY[0x277CCABB0];
    v14 = [MEMORY[0x277CBEAA8] date];
    [v14 timeIntervalSinceDate:*(a1 + 48)];
    v15 = [v13 numberWithDouble:?];
    [v12 setObject:v15 forKeyedSubscript:@"PAMediaConversionServiceConversionTotalDurationTimeIntervalClientSideKey"];
  }

  else
  {
    v12 = 0;
  }

  if (a2 == 1)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), a2, v16, v11);
}

void __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) handleRequestCompletionForIdentifier:*(a1 + 40)];
  v2 = [*(a1 + 32) pendingRequestIdentifierToProgressMap];
  v3 = [v2 count];

  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 40);
      v9 = 138543618;
      v10 = v5;
      v11 = 2048;
      v12 = v3;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Video conversion request %{public}@ removed from request map after successful completion (pending request count now %tu)", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = 138544130;
    v10 = v7;
    v11 = 2048;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video conversion request %{public}@ removed from request map after unsuccessful completion (pending request count now %tu) - status = %zd, error = %{public}@", &v9, 0x2Au);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_93(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) handleRequestCompletionForIdentifier:*(a1 + 40)];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) pendingRequestIdentifierToProgressMap];
    v5 = 138543618;
    v6 = v2;
    v7 = 2048;
    v8 = [v3 count];
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Video conversion request %{public}@ removed from request map after error (pending request count now %tu)", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __121__PAVideoConversionServiceClient_convertVideoAtSourceURLCollection_toDestinationURLCollection_options_completionHandler___block_invoke_87(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Video conversion request %{public}@ Unable to send cancellation request: %{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

- (id)convertVideoAtSourceURL:(id)a3 toDestinationURL:(id)a4 options:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PAVideoConversionServiceClient.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"sourceURL"}];
  }

  v15 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:v11];
  if (v12)
  {
    v16 = [PAMediaConversionServiceResourceURLCollection collectionWithMainResourceURL:v12];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(PAVideoConversionServiceClient *)self convertVideoAtSourceURLCollection:v15 toDestinationURLCollection:v16 options:v13 completionHandler:v14];

  return v17;
}

- (void)setupServiceConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.photos.VideoConversionService" options:0];
  [(PAVideoConversionServiceClient *)self setServiceConnection:v3];

  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869A82F8];
  v5 = [(PAVideoConversionServiceClient *)self serviceConnection];
  [v5 setRemoteObjectInterface:v4];

  v6 = [(PAVideoConversionServiceClient *)self serviceConnection];
  [v6 setExportedObject:self];

  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2869A2630];
  v8 = [(PAVideoConversionServiceClient *)self serviceConnection];
  [v8 setExportedInterface:v7];

  v9 = [(PAVideoConversionServiceClient *)self serviceConnection];
  [v9 resume];
}

- (PAVideoConversionServiceClient)init
{
  v7.receiver = self;
  v7.super_class = PAVideoConversionServiceClient;
  v2 = [(PAVideoConversionServiceClient *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(PAVideoConversionServiceClient *)v2 setPendingRequestIdentifierToProgressMap:v3];

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.photos.mediaconversion.client.isolation", v4);
    [(PAVideoConversionServiceClient *)v2 setIsolationQueue:v5];

    [(PAVideoConversionServiceClient *)v2 setupServiceConnection];
    [(PAVideoConversionServiceClient *)v2 setState:1];
  }

  return v2;
}

- (void)ut_invalidateServiceConnection
{
  v2 = [(PAVideoConversionServiceClient *)self serviceConnection];
  [v2 invalidate];
}

@end