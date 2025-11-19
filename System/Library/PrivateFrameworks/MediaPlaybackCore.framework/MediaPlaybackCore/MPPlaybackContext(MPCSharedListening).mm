@interface MPPlaybackContext(MPCSharedListening)
- (id)getSharedListeningTracklistWithCompletion:()MPCSharedListening;
@end

@implementation MPPlaybackContext(MPCSharedListening)

- (id)getSharedListeningTracklistWithCompletion:()MPCSharedListening
{
  v3 = MEMORY[0x1E696AE38];
  v4 = a3;
  v5 = [v3 progressWithTotalUnitCount:1];
  v6 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCMusicPlaybackContextSharePlayError" code:1 debugDescription:{@"Unsupported content (unknown subclass %@)", objc_opt_class()}];
  (*(v4 + 2))(v4, 0, 0, v6);

  [v5 setCompletedUnitCount:1];

  return v5;
}

@end