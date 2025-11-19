@interface MPRemotePlaybackQueue(MPCAdditions)
+ (id)inProcessPlaybackContext:()MPCAdditions;
- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:;
- (void)getRemoteRepresentationForPlayerPath:()MPCAdditions completion:;
@end

@implementation MPRemotePlaybackQueue(MPCAdditions)

- (void)getMusicPlaybackContextWithOptions:()MPCAdditions completion:
{
  v6 = MEMORY[0x1E696ABC0];
  v7 = a4;
  v8 = [v6 msv_errorWithDomain:@"MPCError" code:58 debugDescription:{@"RemotePlaybackQueue doesn't support conversion to music playback context: %@", a1}];
  (a4)[2](v7, 0, v8);
}

- (void)getRemoteRepresentationForPlayerPath:()MPCAdditions completion:
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__MPRemotePlaybackQueue_MPCAdditions__getRemoteRepresentationForPlayerPath_completion___block_invoke;
  v7[3] = &unk_1E8237C68;
  v8 = 0;
  v9 = v5;
  v6 = v5;
  [a1 getMusicPlaybackContextWithOptions:0 completion:v7];
}

+ (id)inProcessPlaybackContext:()MPCAdditions
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionaryWithCapacity:3];
  [v5 setObject:v4 forKeyedSubscript:@"playbackContext"];
  v6 = [v4 siriReferenceIdentifier];
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69B10D0]];

  v7 = [v4 privateListeningOverride];

  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69B11E0]];
  v8 = objc_alloc(MEMORY[0x1E6970510]);
  v9 = objc_opt_new();
  v10 = [v8 initWithIdentifier:@"InProcess-com.apple.mediaplayer.playbackcontext" data:v9 options:v5];

  return v10;
}

@end