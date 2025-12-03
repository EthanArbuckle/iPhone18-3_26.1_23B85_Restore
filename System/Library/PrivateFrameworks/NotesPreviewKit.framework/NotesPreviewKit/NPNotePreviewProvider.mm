@interface NPNotePreviewProvider
+ (NPNotePreviewProvider)shared;
- (NPNotePreviewProvider)initWithNotePreviewProvider:(id)provider;
- (id)previewForUserActivity:(id)activity error:(id *)error;
@end

@implementation NPNotePreviewProvider

+ (NPNotePreviewProvider)shared
{
  if (shared_onceToken != -1)
  {
    +[NPNotePreviewProvider shared];
  }

  v3 = shared_shared;

  return v3;
}

void __31__NPNotePreviewProvider_shared__block_invoke()
{
  v0 = [NPNotePreviewProvider alloc];
  v3 = +[NPNotePreviewProviderInternal shared];
  v1 = [(NPNotePreviewProvider *)v0 initWithNotePreviewProvider:v3];
  v2 = shared_shared;
  shared_shared = v1;
}

- (NPNotePreviewProvider)initWithNotePreviewProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = NPNotePreviewProvider;
  v6 = [(NPNotePreviewProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notePreviewProvider, provider);
  }

  return v7;
}

- (id)previewForUserActivity:(id)activity error:(id *)error
{
  activityCopy = activity;
  notePreviewProvider = [(NPNotePreviewProvider *)self notePreviewProvider];
  v8 = [notePreviewProvider previewForUserActivity:activityCopy error:error];

  return v8;
}

@end