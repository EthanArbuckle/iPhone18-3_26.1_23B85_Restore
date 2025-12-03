@interface _MPCMediaRemoteNullController
- (id)_initWithResolvedPlayerPath:(id)path;
- (void)invalidateAllTokens;
- (void)sendCommand:(unsigned int)command options:(id)options completion:(id)completion;
@end

@implementation _MPCMediaRemoteNullController

- (void)invalidateAllTokens
{
  [(MPCFuture *)self->super._playbackStateFuture invalidate];
  [(MPCFuture *)self->super._supportedCommandsFuture invalidate];
  [(MPCFuture *)self->_playbackQueueFuture invalidate];
  [(MPCFuture *)self->_contentItemForIdentifierFuture invalidate];
  [(MPCFuture *)self->_contentItemArtworkForIdentifierFuture invalidate];
  [(MPCFuture *)self->_contentItemAnimatedArtworkPreviewFrameForIdentifierFuture invalidate];
  contentItemAnimatedArtworkForIdentifierFuture = self->_contentItemAnimatedArtworkForIdentifierFuture;

  [(MPCFuture *)contentItemAnimatedArtworkForIdentifierFuture invalidate];
}

- (void)sendCommand:(unsigned int)command options:(id)options completion:(id)completion
{
  v6 = *&command;
  completionCopy = completion;
  optionsCopy = options;
  v10 = objc_opt_class();
  resolvedPlayerPath = [(MPCMediaRemoteController *)self resolvedPlayerPath];
  [v10 sendCommand:v6 options:optionsCopy toPlayerPath:resolvedPlayerPath completion:completionCopy];
}

- (id)_initWithResolvedPlayerPath:(id)path
{
  v42 = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = _MPCMediaRemoteNullController;
  v3 = [(MPCMediaRemoteController *)&v40 _initWithResolvedPlayerPath:path];
  if (v3)
  {
    v4 = [[MPCFuture alloc] initWithQueue:*(v3 + 2)];
    v5 = *(v3 + 4);
    *(v3 + 4) = v4;

    [*(v3 + 4) setDebugLabel:@"playbackState [nullcontroller - init]"];
    [*(v3 + 4) finishWithValue:0];
    v6 = MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands();
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          v14 = MEMORY[0x1E696AD98];
          v15 = MEMORY[0x1C6954DE0](v13);
          v16 = [v14 numberWithUnsignedInt:{v15, v36}];
          [v7 setObject:v13 forKeyedSubscript:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v10);
    }

    v17 = [[MPCFuture alloc] initWithQueue:*(v3 + 2)];
    v18 = *(v3 + 6);
    *(v3 + 6) = v17;

    [*(v3 + 6) setDebugLabel:@"supportedCommands [nullcontroller - init]"];
    v19 = *(v3 + 6);
    v20 = [v7 copy];
    [v19 finishWithValue:v20];

    v21 = [[MPCFuture alloc] initWithQueue:*(v3 + 2)];
    v22 = *(v3 + 39);
    *(v3 + 39) = v21;

    [*(v3 + 39) setDebugLabel:@"playbackQueue [nullcontroller - init]"];
    [*(v3 + 39) finishWithValue:0];
    v23 = [[MPCFuture alloc] initWithQueue:*(v3 + 2)];
    v24 = *(v3 + 40);
    *(v3 + 40) = v23;

    [*(v3 + 40) setDebugLabel:@"contentItemForIdentifier [nullcontroller - init]"];
    [*(v3 + 40) finishWithValue:0];
    v25 = [[MPCFuture alloc] initWithQueue:*(v3 + 2)];
    v26 = *(v3 + 41);
    *(v3 + 41) = v25;

    [*(v3 + 41) setDebugLabel:@"contentItemArtworkForIdentifier [nullcontroller - init]"];
    [*(v3 + 41) finishWithValue:0];
    v27 = [[MPCFuture alloc] initWithQueue:*(v3 + 2)];
    v28 = *(v3 + 42);
    *(v3 + 42) = v27;

    [*(v3 + 42) setDebugLabel:@"contentItemRemoteArtworkForContentItemIdentifier [nullcontroller - init]"];
    [*(v3 + 42) finishWithValue:0];
    v29 = [[MPCFuture alloc] initWithQueue:*(v3 + 2)];
    v30 = *(v3 + 43);
    *(v3 + 43) = v29;

    [*(v3 + 43) setDebugLabel:@"contentItemAnimatedArtworkPreviewFrameForIdentifierFuture [nullcontroller - init]"];
    [*(v3 + 43) finishWithValue:0];
    v31 = [[MPCFuture alloc] initWithQueue:*(v3 + 2)];
    v32 = *(v3 + 44);
    *(v3 + 44) = v31;

    [*(v3 + 44) setDebugLabel:@"contentItemAnimatedArtworkForIdentifierFuture [nullcontroller - init]"];
    [*(v3 + 44) finishWithValue:0];
    v33 = [[MPCFuture alloc] initWithQueue:*(v3 + 2)];
    v34 = *(v3 + 45);
    *(v3 + 45) = v33;

    [*(v3 + 45) setDebugLabel:@"playbackQueueParticipants [nullcontroller - init]"];
    [*(v3 + 45) finishWithValue:MEMORY[0x1E695E0F0]];
  }

  return v3;
}

@end