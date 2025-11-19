@interface CKTranscriptPluginPresentationConfiguration
- (CKTranscriptPluginPresentationConfiguration)initWithSourceView:(id)a3 permittedArrowDirections:(unint64_t)a4 shouldDisableSnapshotView:(BOOL)a5;
- (UIView)sourceView;
@end

@implementation CKTranscriptPluginPresentationConfiguration

- (CKTranscriptPluginPresentationConfiguration)initWithSourceView:(id)a3 permittedArrowDirections:(unint64_t)a4 shouldDisableSnapshotView:(BOOL)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = CKTranscriptPluginPresentationConfiguration;
  v9 = [(CKTranscriptPluginPresentationConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_sourceView, v8);
    v10->_permittedArrowDirections = a4;
    v10->_shouldDisableSnapshotView = a5;
  }

  return v10;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end