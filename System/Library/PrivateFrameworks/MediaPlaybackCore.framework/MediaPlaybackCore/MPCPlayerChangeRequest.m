@interface MPCPlayerChangeRequest
+ (id)requestWithCommandRequests:(id)a3;
+ (void)performRequest:(id)a3 completion:(id)a4;
+ (void)performRequest:(id)a3 options:(unint64_t)a4 completion:(id)a5;
+ (void)performRequest:(id)a3 options:(unint64_t)a4 extendedStatusCompletion:(id)a5;
- (MPCPlayerChangeRequest)initWithCommandRequests:(id)a3;
- (id)description;
- (void)performWithCompletion:(id)a3;
- (void)performWithExtendedStatusCompletion:(id)a3;
@end

@implementation MPCPlayerChangeRequest

- (void)performWithExtendedStatusCompletion:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([(NSArray *)self->_commands count])
  {
    v43 = v5;
    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
    v7 = os_signpost_id_make_with_pointer(v6, self);

    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PlayerChangeRequest", "", buf, 2u);
    }

    [MEMORY[0x1E695DF00] date];
    v47 = v46 = self;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v10 = self->_commands;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v57 objects:v62 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v58;
      while (1)
      {
        v15 = 0;
        do
        {
          if (*v58 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v57 + 1) + 8 * v15);
          v17 = [v16 playerPath];
          if (v17)
          {
            v18 = v17;
            if (v13)
            {
              goto LABEL_16;
            }

LABEL_15:
            v13 = v18;
            goto LABEL_16;
          }

          v19 = [v16 controller];
          v18 = [v19 resolvedPlayerPath];

          if (v18)
          {
            if (v13)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }

          v21 = [MEMORY[0x1E696AAA8] currentHandler];
          [v21 handleFailureInMethod:a2 object:v46 file:@"MPCPlayerChangeRequest.m" lineNumber:143 description:{@"Cannot perform command request without a player path [not on request, or fallback from controller] request=%@", v16}];

          v18 = 0;
          if (!v13)
          {
            goto LABEL_15;
          }

LABEL_16:
          if (([v13 isEqual:v18] & 1) == 0)
          {
            v20 = [MEMORY[0x1E696AAA8] currentHandler];
            [v20 handleFailureInMethod:a2 object:v46 file:@"MPCPlayerChangeRequest.m" lineNumber:146 description:@"All requests must have the same player path."];
          }

          ++v15;
        }

        while (v12 != v15);
        v22 = [(NSArray *)v10 countByEnumeratingWithState:&v57 objects:v62 count:16];
        v12 = v22;
        if (!v22)
        {
          goto LABEL_29;
        }
      }
    }

    v13 = 0;
LABEL_29:

    v28 = [(MPCPlayerChangeRequest *)v46 options];
    v29 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v29 setQualityOfService:25];
    v45 = v28;
    if ((v28 & 0x100) != 0)
    {
      v30 = -1;
    }

    else
    {
      v30 = 1;
    }

    [v29 setMaxConcurrentOperationCount:v30];
    v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](v46->_commands, "count")}];
    v32 = MEMORY[0x1E696AAE0];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __62__MPCPlayerChangeRequest_performWithExtendedStatusCompletion___block_invoke;
    v52[3] = &unk_1E8238C70;
    v55 = v43;
    v33 = v31;
    v53 = v33;
    v56 = v7;
    v34 = v29;
    v54 = v34;
    v35 = [v32 blockOperationWithBlock:v52];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v46->_commands;
    v36 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = 0;
      v39 = *v49;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v49 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = [[MPCMediaRemoteCommandOperation alloc] initWithCommandRequest:*(*(&v48 + 1) + 8 * i) options:[(MPCPlayerChangeRequest *)v46 options] sendDate:v47];
          [v33 addObject:v41];
          [v35 addDependency:v41];
          if ((v45 & 0x100) == 0)
          {
            if (v38)
            {
              [(MPCMediaRemoteCommandOperation *)v41 addDependency:v38];
            }

            v42 = v41;

            v38 = v42;
          }

          [v34 addOperation:v41];
        }

        v37 = [(NSArray *)obj countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v37);
    }

    else
    {
      v38 = 0;
    }

    [v34 addOperation:v35];
    v5 = v43;
    goto LABEL_46;
  }

  v23 = [MPCPlayerCommandStatus alloc];
  v24 = MEMORY[0x1E69708F8];
  v25 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCPlayerRequestError" code:1002 debugDescription:@"No commands provided."];
  v26 = [v24 statusWithCode:200 error:v25];
  v47 = [(MPCPlayerCommandStatus *)v23 initWithMPStatus:v26 request:0];

  v27 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v65 = v47;
    _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_ERROR, "[PCR] performWithExtendedStatusCompletion: | failed to perform command [no commands provided] status=%{public}@", buf, 0xCu);
  }

  if (v5)
  {
    v63 = v47;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    (*(v5 + 2))(v5, v13);
LABEL_46:
  }
}

void __62__MPCPlayerChangeRequest_performWithExtendedStatusCompletion___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) msv_map:&__block_literal_global_45_29686];
    (*(*(a1 + 48) + 16))();
  }

  v3 = os_log_create("com.apple.amp.mediaplaybackcore", "MediaRemote");
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v4, OS_SIGNPOST_INTERVAL_END, v5, "PlayerChangeRequest", "", buf, 2u);
  }

  v6 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MPCPlayerChangeRequest_performWithExtendedStatusCompletion___block_invoke_46;
  block[3] = &unk_1E8239298;
  v8 = *(a1 + 40);
  dispatch_async(v6, block);
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__MPCPlayerChangeRequest_performWithCompletion___block_invoke;
  v6[3] = &unk_1E8238C08;
  v7 = v4;
  v5 = v4;
  [(MPCPlayerChangeRequest *)self performWithExtendedStatusCompletion:v6];
}

void __48__MPCPlayerChangeRequest_performWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = [a2 msv_firstWhere:&__block_literal_global_29699];
    v4 = [v3 error];

    (*(*(a1 + 32) + 16))();
  }
}

BOOL __48__MPCPlayerChangeRequest_performWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 error];
  v3 = v2 != 0;

  return v3;
}

- (id)description
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_commands;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = MPCRemoteCommandDescriptionCopy([*(*(&v15 + 1) + 8 * i) command]);
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = objc_opt_class();
  v12 = [v3 componentsJoinedByString:{@", "}];
  v13 = [v10 stringWithFormat:@"<%@: %p commands=(%@)>", v11, self, v12];

  return v13;
}

- (MPCPlayerChangeRequest)initWithCommandRequests:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MPCPlayerChangeRequest;
  v5 = [(MPCPlayerChangeRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    commands = v5->_commands;
    v5->_commands = v6;
  }

  return v5;
}

+ (id)requestWithCommandRequests:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCommandRequests:v4];

  return v5;
}

+ (void)performRequest:(id)a3 options:(unint64_t)a4 extendedStatusCompletion:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v15[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v11 = [a1 requestWithCommandRequests:v10];
  }

  else
  {
    v11 = [a1 requestWithCommandRequests:MEMORY[0x1E695E0F0]];
  }

  [v11 setOptions:a4];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74__MPCPlayerChangeRequest_performRequest_options_extendedStatusCompletion___block_invoke;
  v13[3] = &unk_1E8238C08;
  v14 = v9;
  v12 = v9;
  [v11 performWithExtendedStatusCompletion:v13];
}

void __74__MPCPlayerChangeRequest_performRequest_options_extendedStatusCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    (*(v2 + 16))(v2, v3);
  }
}

+ (void)performRequest:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MPCPlayerChangeRequest_performRequest_options_completion___block_invoke;
  v10[3] = &unk_1E8238BE0;
  v11 = v8;
  v9 = v8;
  [a1 performRequest:a3 options:a4 extendedStatusCompletion:v10];
}

void __60__MPCPlayerChangeRequest_performRequest_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

+ (void)performRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__MPCPlayerChangeRequest_performRequest_completion___block_invoke;
  v8[3] = &unk_1E8238BE0;
  v9 = v6;
  v7 = v6;
  [a1 performRequest:a3 options:0 extendedStatusCompletion:v8];
}

void __52__MPCPlayerChangeRequest_performRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 error];
    (*(v2 + 16))(v2, v3);
  }
}

@end