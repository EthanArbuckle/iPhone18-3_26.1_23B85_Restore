@interface CKTranscriptPluginPresentationConfiguration
- (CKTranscriptPluginPresentationConfiguration)initWithSourceView:(id)view permittedArrowDirections:(unint64_t)directions shouldDisableSnapshotView:(BOOL)snapshotView;
- (UIView)sourceView;
@end

@implementation CKTranscriptPluginPresentationConfiguration

- (CKTranscriptPluginPresentationConfiguration)initWithSourceView:(id)view permittedArrowDirections:(unint64_t)directions shouldDisableSnapshotView:(BOOL)snapshotView
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = CKTranscriptPluginPresentationConfiguration;
  v9 = [(CKTranscriptPluginPresentationConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_sourceView, viewCopy);
    v10->_permittedArrowDirections = directions;
    v10->_shouldDisableSnapshotView = snapshotView;
  }

  return v10;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end