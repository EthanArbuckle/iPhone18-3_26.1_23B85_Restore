@interface MPCPlaybackEngineMiddleware
- (id)_stateDumpObject;
- (id)operationsForPlayerRequest:(id)a3;
- (id)operationsForRequest:(id)a3;
- (id)videoOutput:(id)a3 chain:(id)a4;
@end

@implementation MPCPlaybackEngineMiddleware

- (id)_stateDumpObject
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v13[0] = v3;
  v12[1] = @"playbackEngine";
  v4 = [(MPCPlaybackEngineMiddleware *)self playbackEngine];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<NULL>";
  }

  v13[1] = v6;
  v12[2] = @"invalidationObservers";
  v7 = [(MPCPlaybackEngineMiddleware *)self invalidationObservers];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"<NULL>";
  }

  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

- (id)operationsForPlayerRequest:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [[MPCPlaybackEngineMiddlewareOperation alloc] initWithMiddleware:self playerRequest:v4];

  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)operationsForRequest:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MPCPlaybackEngineMiddleware *)self operationsForPlayerRequest:v4];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)videoOutput:(id)a3 chain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__28509;
  v17 = __Block_byref_object_dispose__28510;
  v8 = v6;
  v18 = v8;
  v12 = MEMORY[0x1E69E9820];
  msv_dispatch_sync_on_main_queue();
  v9 = [v7 nextObject];
  v10 = [v9 videoOutput:v14[5] chain:v7];

  _Block_object_dispose(&v13, 8);

  return v10;
}

void __75__MPCPlaybackEngineMiddleware_MPCPlayerResponseBuilder__videoOutput_chain___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playbackEngine];

  if (v2)
  {
    v3 = [*(a1 + 32) playbackEngine];
    v4 = [v3 player];
    v12 = [v4 currentItem];

    if ([v12 type] == 2)
    {
      if (([v12 isAssetLoaded] & 1) != 0 || (objc_msgSend(*(a1 + 32), "playbackEngine"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "player"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "state"), v6, v5, v7 == 2))
      {
        v8 = [*(a1 + 32) playbackEngine];
        v9 = [v8 videoOutput];
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }
    }
  }
}

@end