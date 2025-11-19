@interface MusicKit_SoftLinking_MPModelLibraryTransientStateController
+ (MusicKit_SoftLinking_MPModelLibraryTransientStateController)sharedLibraryTransientStateController;
- (id)_initWithUnderlyingLibraryTransientStateController:(id)a3;
- (int64_t)_libraryTransientFavoriteState:(int64_t)a3;
- (int64_t)_libraryTransientPinState:(int64_t)a3;
- (int64_t)_underlyingLibraryTransientFavoriteState:(int64_t)a3;
- (int64_t)_underlyingLibraryTransientPinState:(int64_t)a3;
- (int64_t)transientFavoriteStateForModelObject:(id)a3;
- (int64_t)transientPinStateForModelObject:(id)a3;
- (void)_handleLibraryTransientStateControllerDidChangeNotification:(id)a3;
- (void)dealloc;
- (void)performAddToPlaylistWithRequest:(id)a3 completionHandler:(id)a4;
- (void)performDeleteEntityWithRequest:(id)a3 completionHandler:(id)a4;
- (void)performFavoriteStateChangeRequest:(id)a3 completionHandler:(id)a4;
- (void)performLibraryImportChangeWithRequest:(id)a3 completionHandler:(id)a4;
- (void)performLibraryKeepLocalChangeWithRequest:(id)a3 completionHandler:(id)a4;
- (void)performPinStateChangeRequest:(id)a3 completionHandler:(id)a4;
- (void)performPlaylistEditChangeRequest:(id)a3 completionPolicy:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryTransientStateController

+ (MusicKit_SoftLinking_MPModelLibraryTransientStateController)sharedLibraryTransientStateController
{
  if (sharedLibraryTransientStateController_sOnceToken != -1)
  {
    +[MusicKit_SoftLinking_MPModelLibraryTransientStateController sharedLibraryTransientStateController];
  }

  v3 = sharedLibraryTransientStateController_sSharedDeviceLibraryController;

  return v3;
}

- (id)_initWithUnderlyingLibraryTransientStateController:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPModelLibraryTransientStateController;
  v6 = [(MusicKit_SoftLinking_MPModelLibraryTransientStateController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingLibraryTransientStateController, a3);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = getMPModelLibraryTransientStateControllerDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handleLibraryTransientStateControllerDidChangeNotification_ name:v9 object:v7->_underlyingLibraryTransientStateController];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getMPModelLibraryTransientStateControllerDidChangeNotification();
  [v3 removeObserver:self name:v4 object:self->_underlyingLibraryTransientStateController];

  v5.receiver = self;
  v5.super_class = MusicKit_SoftLinking_MPModelLibraryTransientStateController;
  [(MusicKit_SoftLinking_MPModelLibraryTransientStateController *)&v5 dealloc];
}

- (int64_t)transientFavoriteStateForModelObject:(id)a3
{
  v4 = [a3 _underlyingModelObject];
  v5 = [(MusicKit_SoftLinking_MPModelLibraryTransientStateController *)self _libraryTransientFavoriteState:[(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController transientFavoriteStateForModelObject:v4]];

  return v5;
}

- (int64_t)transientPinStateForModelObject:(id)a3
{
  v4 = [a3 _underlyingModelObject];
  v5 = [(MusicKit_SoftLinking_MPModelLibraryTransientStateController *)self _libraryTransientPinState:[(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController transientPinnedStateForModelObject:v4]];

  return v5;
}

- (void)performAddToPlaylistWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 _underlyingLibraryAddToPlaylistChangeRequest];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __113__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performAddToPlaylistWithRequest_completionHandler___block_invoke;
  v15 = &unk_1E84C3B60;
  v16 = v6;
  v17 = v7;
  v9 = v6;
  v10 = v7;
  v11 = [v8 newOperationWithResponseHandler:&v12];

  [(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController addOperation:v11, v12, v13, v14, v15];
}

- (void)performDeleteEntityWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [v7 _underlyingLibraryDeleteEntityChangeRequest];
  v8 = [v7 relatedModelObjects];

  v9 = [v8 msv_map:&__block_literal_global_23];

  v10 = objc_alloc_init(getMPMutableSectionedCollectionClass());
  [v10 appendSection:&stru_1F50C75D0];
  [v10 appendItems:v9];
  [(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController performDeleteEntityChangeRequest:v11 withRelatedModelObjects:v10 completion:v6];
}

- (void)performLibraryImportChangeWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 _underlyingLibraryImportChangeRequest];
  v9 = [v7 relatedModelObjects];

  v10 = [v9 msv_map:&__block_literal_global_28];

  v11 = objc_alloc_init(getMPMutableSectionedCollectionClass());
  [v11 appendSection:&stru_1F50C75D0];
  [v11 appendItems:v10];
  underlyingLibraryTransientStateController = self->_underlyingLibraryTransientStateController;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __119__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performLibraryImportChangeWithRequest_completionHandler___block_invoke_2;
  v14[3] = &unk_1E84C3B88;
  v15 = v6;
  v13 = v6;
  [(MPModelLibraryTransientStateController *)underlyingLibraryTransientStateController performLibraryImportChangeRequest:v8 withRelatedModelObjects:v11 completion:v14];
}

- (void)performLibraryKeepLocalChangeWithRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [v7 _underlyingLibraryKeepLocalChangeRequest];
  v8 = [v7 relatedModelObjects];

  v9 = [v8 msv_map:&__block_literal_global_31];

  v10 = objc_alloc_init(getMPMutableSectionedCollectionClass());
  [v10 appendSection:&stru_1F50C75D0];
  [v10 appendItems:v9];
  [(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController performKeepLocalChangeRequest:v11 withRelatedModelObjects:v10 completion:v6];
}

- (void)performFavoriteStateChangeRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 _underlyingFavoriteEntityChangeRequest];
  [(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController performFavoriteStateChangeRequest:v7 withRelatedModelObjects:0 completion:v6];
}

- (void)performPinStateChangeRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 _underlyingLibraryPinnedEntityChangeRequest];
  [(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController performLibraryPinChangeRequest:v7 withRelatedModelObjects:0 completion:v6];
}

- (void)performPlaylistEditChangeRequest:(id)a3 completionPolicy:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [a3 _underlyingLibraryPlaylistEditChangeRequest];
  underlyingLibraryTransientStateController = self->_underlyingLibraryTransientStateController;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __131__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performPlaylistEditChangeRequest_completionPolicy_completionHandler___block_invoke;
  v15[3] = &unk_1E84C3BB0;
  v17 = a4;
  v16 = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __131__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performPlaylistEditChangeRequest_completionPolicy_completionHandler___block_invoke_2;
  v12[3] = &unk_1E84C3BB0;
  v13 = v16;
  v14 = a4;
  v11 = v16;
  [(MPModelLibraryTransientStateController *)underlyingLibraryTransientStateController performPlaylistEditChangeRequest:v9 localPersistenceResponseHandler:v15 completeResponseHandler:v12];
}

- (int64_t)_libraryTransientFavoriteState:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int64_t)_underlyingLibraryTransientFavoriteState:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int64_t)_libraryTransientPinState:(int64_t)a3
{
  if (a3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a3 == 2);
  }
}

- (int64_t)_underlyingLibraryTransientPinState:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (void)_handleLibraryTransientStateControllerDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPLibraryTransientStateControllerDidChangeNotification" object:self userInfo:v6];
}

@end