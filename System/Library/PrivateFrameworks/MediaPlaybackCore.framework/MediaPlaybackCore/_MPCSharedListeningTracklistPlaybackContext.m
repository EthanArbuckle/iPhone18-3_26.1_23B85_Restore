@interface _MPCSharedListeningTracklistPlaybackContext
- (id)getSharedListeningTracklistWithCompletion:(id)a3;
@end

@implementation _MPCSharedListeningTracklistPlaybackContext

- (id)getSharedListeningTracklistWithCompletion:(id)a3
{
  v4 = MEMORY[0x1E696AE38];
  v5 = a3;
  v6 = [v4 progressWithTotalUnitCount:1];
  v7 = [(_MPCSharedListeningTracklistPlaybackContext *)self tracklist];
  v8 = [(_MPCSharedListeningTracklistPlaybackContext *)self startItemIndexPath];
  v5[2](v5, v7, v8, 0);

  [v6 setCompletedUnitCount:1];

  return v6;
}

@end