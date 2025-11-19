@interface NPNotePreviewProvider
+ (NPNotePreviewProvider)shared;
- (NPNotePreviewProvider)initWithNotePreviewProvider:(id)a3;
- (id)previewForUserActivity:(id)a3 error:(id *)a4;
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

- (NPNotePreviewProvider)initWithNotePreviewProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NPNotePreviewProvider;
  v6 = [(NPNotePreviewProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_notePreviewProvider, a3);
  }

  return v7;
}

- (id)previewForUserActivity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(NPNotePreviewProvider *)self notePreviewProvider];
  v8 = [v7 previewForUserActivity:v6 error:a4];

  return v8;
}

@end