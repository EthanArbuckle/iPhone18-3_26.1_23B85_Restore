@interface MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest
+ (void)requestDownloadingSongsCountWithCompletionHandler:(id)a3;
- (MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest)init;
- (void)_applyUnderlyingResponse:(id)a3;
- (void)_handleDownloadQueueDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest

- (MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest)init
{
  v10.receiver = self;
  v10.super_class = MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest;
  v2 = [(MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(getMPModelLibraryDownloadQueueRequestClass());
    underlyingDownloadQueueRequest = v2->_underlyingDownloadQueueRequest;
    v2->_underlyingDownloadQueueRequest = v3;

    v5 = v2->_underlyingDownloadQueueRequest;
    v6 = [getMPModelSongClass() kindWithVariants:3];
    [(MPModelLibraryDownloadQueueRequest *)v5 setItemKind:v6];

    v7 = v2->_underlyingDownloadQueueRequest;
    v8 = [MEMORY[0x1E6977678] _supportedPropertiesForModelObjectType:32];
    [(MPModelLibraryDownloadQueueRequest *)v7 setItemProperties:v8];

    [(MPModelLibraryDownloadQueueRequest *)v2->_underlyingDownloadQueueRequest setLabel:@"MusicKit - Download Queue"];
    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_underlyingUpdatedResponse)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = getMPModelResponseDidInvalidateNotification();
    [v3 removeObserver:self name:v4 object:self->_underlyingUpdatedResponse];
  }

  v5.receiver = self;
  v5.super_class = MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest;
  [(MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest *)&v5 dealloc];
}

- (void)_handleDownloadQueueDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPModelLibraryDownloadQueueDidChangeNotification" object:self userInfo:v6];
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  underlyingDownloadQueueRequest = self->_underlyingDownloadQueueRequest;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest_performWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E84C3FA8;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(MPModelLibraryDownloadQueueRequest *)underlyingDownloadQueueRequest performWithResponseHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

+ (void)requestDownloadingSongsCountWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(getMPModelLibraryDownloadQueueRequestClass());
  v5 = [getMPModelSongClass() kindWithVariants:1];
  [v4 setItemKind:v5];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __109__MusicKit_SoftLinking_MPModelLibraryDownloadQueueRequest_requestDownloadingSongsCountWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E84C38C8;
  v8 = v3;
  v6 = v3;
  [v4 performWithResponseHandler:v7];
}

- (void)_applyUnderlyingResponse:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_underlyingUpdatedResponse != v8)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = getMPModelResponseDidInvalidateNotification();
    [v5 removeObserver:self name:v6 object:self->_underlyingUpdatedResponse];

    objc_storeStrong(&self->_underlyingUpdatedResponse, a3);
    v7 = getMPModelResponseDidInvalidateNotification();
    [v5 addObserver:self selector:sel__handleDownloadQueueDidChangeNotification_ name:v7 object:v8];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end