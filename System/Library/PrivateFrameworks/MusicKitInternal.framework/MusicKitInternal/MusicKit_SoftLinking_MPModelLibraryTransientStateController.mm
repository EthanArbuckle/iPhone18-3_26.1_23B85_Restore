@interface MusicKit_SoftLinking_MPModelLibraryTransientStateController
+ (MusicKit_SoftLinking_MPModelLibraryTransientStateController)sharedLibraryTransientStateController;
- (id)_initWithUnderlyingLibraryTransientStateController:(id)controller;
- (int64_t)_libraryTransientFavoriteState:(int64_t)state;
- (int64_t)_libraryTransientPinState:(int64_t)state;
- (int64_t)_underlyingLibraryTransientFavoriteState:(int64_t)state;
- (int64_t)_underlyingLibraryTransientPinState:(int64_t)state;
- (int64_t)transientFavoriteStateForModelObject:(id)object;
- (int64_t)transientPinStateForModelObject:(id)object;
- (void)_handleLibraryTransientStateControllerDidChangeNotification:(id)notification;
- (void)dealloc;
- (void)performAddToPlaylistWithRequest:(id)request completionHandler:(id)handler;
- (void)performDeleteEntityWithRequest:(id)request completionHandler:(id)handler;
- (void)performFavoriteStateChangeRequest:(id)request completionHandler:(id)handler;
- (void)performLibraryImportChangeWithRequest:(id)request completionHandler:(id)handler;
- (void)performLibraryKeepLocalChangeWithRequest:(id)request completionHandler:(id)handler;
- (void)performPinStateChangeRequest:(id)request completionHandler:(id)handler;
- (void)performPlaylistEditChangeRequest:(id)request completionPolicy:(int64_t)policy completionHandler:(id)handler;
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

- (id)_initWithUnderlyingLibraryTransientStateController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = MusicKit_SoftLinking_MPModelLibraryTransientStateController;
  v6 = [(MusicKit_SoftLinking_MPModelLibraryTransientStateController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingLibraryTransientStateController, controller);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = getMPModelLibraryTransientStateControllerDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handleLibraryTransientStateControllerDidChangeNotification_ name:v9 object:v7->_underlyingLibraryTransientStateController];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getMPModelLibraryTransientStateControllerDidChangeNotification();
  [defaultCenter removeObserver:self name:v4 object:self->_underlyingLibraryTransientStateController];

  v5.receiver = self;
  v5.super_class = MusicKit_SoftLinking_MPModelLibraryTransientStateController;
  [(MusicKit_SoftLinking_MPModelLibraryTransientStateController *)&v5 dealloc];
}

- (int64_t)transientFavoriteStateForModelObject:(id)object
{
  _underlyingModelObject = [object _underlyingModelObject];
  v5 = [(MusicKit_SoftLinking_MPModelLibraryTransientStateController *)self _libraryTransientFavoriteState:[(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController transientFavoriteStateForModelObject:_underlyingModelObject]];

  return v5;
}

- (int64_t)transientPinStateForModelObject:(id)object
{
  _underlyingModelObject = [object _underlyingModelObject];
  v5 = [(MusicKit_SoftLinking_MPModelLibraryTransientStateController *)self _libraryTransientPinState:[(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController transientPinnedStateForModelObject:_underlyingModelObject]];

  return v5;
}

- (void)performAddToPlaylistWithRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  _underlyingLibraryAddToPlaylistChangeRequest = [requestCopy _underlyingLibraryAddToPlaylistChangeRequest];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __113__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performAddToPlaylistWithRequest_completionHandler___block_invoke;
  v15 = &unk_1E84C3B60;
  v16 = requestCopy;
  v17 = handlerCopy;
  v9 = requestCopy;
  v10 = handlerCopy;
  v11 = [_underlyingLibraryAddToPlaylistChangeRequest newOperationWithResponseHandler:&v12];

  [(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController addOperation:v11, v12, v13, v14, v15];
}

- (void)performDeleteEntityWithRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  _underlyingLibraryDeleteEntityChangeRequest = [requestCopy _underlyingLibraryDeleteEntityChangeRequest];
  relatedModelObjects = [requestCopy relatedModelObjects];

  v9 = [relatedModelObjects msv_map:&__block_literal_global_23];

  v10 = objc_alloc_init(getMPMutableSectionedCollectionClass());
  [v10 appendSection:&stru_1F50C75D0];
  [v10 appendItems:v9];
  [(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController performDeleteEntityChangeRequest:_underlyingLibraryDeleteEntityChangeRequest withRelatedModelObjects:v10 completion:handlerCopy];
}

- (void)performLibraryImportChangeWithRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  _underlyingLibraryImportChangeRequest = [requestCopy _underlyingLibraryImportChangeRequest];
  relatedModelObjects = [requestCopy relatedModelObjects];

  v10 = [relatedModelObjects msv_map:&__block_literal_global_28];

  v11 = objc_alloc_init(getMPMutableSectionedCollectionClass());
  [v11 appendSection:&stru_1F50C75D0];
  [v11 appendItems:v10];
  underlyingLibraryTransientStateController = self->_underlyingLibraryTransientStateController;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __119__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performLibraryImportChangeWithRequest_completionHandler___block_invoke_2;
  v14[3] = &unk_1E84C3B88;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(MPModelLibraryTransientStateController *)underlyingLibraryTransientStateController performLibraryImportChangeRequest:_underlyingLibraryImportChangeRequest withRelatedModelObjects:v11 completion:v14];
}

- (void)performLibraryKeepLocalChangeWithRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  _underlyingLibraryKeepLocalChangeRequest = [requestCopy _underlyingLibraryKeepLocalChangeRequest];
  relatedModelObjects = [requestCopy relatedModelObjects];

  v9 = [relatedModelObjects msv_map:&__block_literal_global_31];

  v10 = objc_alloc_init(getMPMutableSectionedCollectionClass());
  [v10 appendSection:&stru_1F50C75D0];
  [v10 appendItems:v9];
  [(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController performKeepLocalChangeRequest:_underlyingLibraryKeepLocalChangeRequest withRelatedModelObjects:v10 completion:handlerCopy];
}

- (void)performFavoriteStateChangeRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  _underlyingFavoriteEntityChangeRequest = [request _underlyingFavoriteEntityChangeRequest];
  [(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController performFavoriteStateChangeRequest:_underlyingFavoriteEntityChangeRequest withRelatedModelObjects:0 completion:handlerCopy];
}

- (void)performPinStateChangeRequest:(id)request completionHandler:(id)handler
{
  handlerCopy = handler;
  _underlyingLibraryPinnedEntityChangeRequest = [request _underlyingLibraryPinnedEntityChangeRequest];
  [(MPModelLibraryTransientStateController *)self->_underlyingLibraryTransientStateController performLibraryPinChangeRequest:_underlyingLibraryPinnedEntityChangeRequest withRelatedModelObjects:0 completion:handlerCopy];
}

- (void)performPlaylistEditChangeRequest:(id)request completionPolicy:(int64_t)policy completionHandler:(id)handler
{
  handlerCopy = handler;
  _underlyingLibraryPlaylistEditChangeRequest = [request _underlyingLibraryPlaylistEditChangeRequest];
  underlyingLibraryTransientStateController = self->_underlyingLibraryTransientStateController;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __131__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performPlaylistEditChangeRequest_completionPolicy_completionHandler___block_invoke;
  v15[3] = &unk_1E84C3BB0;
  policyCopy = policy;
  v16 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __131__MusicKit_SoftLinking_MPModelLibraryTransientStateController_performPlaylistEditChangeRequest_completionPolicy_completionHandler___block_invoke_2;
  v12[3] = &unk_1E84C3BB0;
  v13 = v16;
  policyCopy2 = policy;
  v11 = v16;
  [(MPModelLibraryTransientStateController *)underlyingLibraryTransientStateController performPlaylistEditChangeRequest:_underlyingLibraryPlaylistEditChangeRequest localPersistenceResponseHandler:v15 completeResponseHandler:v12];
}

- (int64_t)_libraryTransientFavoriteState:(int64_t)state
{
  if ((state - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

- (int64_t)_underlyingLibraryTransientFavoriteState:(int64_t)state
{
  if ((state - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

- (int64_t)_libraryTransientPinState:(int64_t)state
{
  if (state == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (state == 2);
  }
}

- (int64_t)_underlyingLibraryTransientPinState:(int64_t)state
{
  if (state == 2)
  {
    return 2;
  }

  else
  {
    return state == 1;
  }
}

- (void)_handleLibraryTransientStateControllerDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x1E696AD88];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPLibraryTransientStateControllerDidChangeNotification" object:self userInfo:userInfo];
}

@end