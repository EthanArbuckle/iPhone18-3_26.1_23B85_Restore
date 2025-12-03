@interface _MPCSharedListeningTracklistPlaybackContext
- (id)getSharedListeningTracklistWithCompletion:(id)completion;
@end

@implementation _MPCSharedListeningTracklistPlaybackContext

- (id)getSharedListeningTracklistWithCompletion:(id)completion
{
  v4 = MEMORY[0x1E696AE38];
  completionCopy = completion;
  v6 = [v4 progressWithTotalUnitCount:1];
  tracklist = [(_MPCSharedListeningTracklistPlaybackContext *)self tracklist];
  startItemIndexPath = [(_MPCSharedListeningTracklistPlaybackContext *)self startItemIndexPath];
  completionCopy[2](completionCopy, tracklist, startItemIndexPath, 0);

  [v6 setCompletedUnitCount:1];

  return v6;
}

@end