@interface MusicKit_SoftLinking_MPCloudController
+ (MusicKit_SoftLinking_MPCloudController)controllerWithUserIdentity:(id)identity;
+ (MusicKit_SoftLinking_MPCloudController)sharedCloudController;
+ (id)instanceManager;
- (id)_initWithUnderlyingCloudController:(id)controller;
- (int64_t)cloudAddToPlaylistBehavior;
- (int64_t)maximumAllowedPins;
- (void)_handleCanShowCloudDownloadButtonsDidChangeNotification:(id)notification;
- (void)_handleIsUpdateInProgressDidChangeNotificationName:(id)name;
- (void)dealloc;
- (void)enableCloudLibraryWithCompletionHandler:(id)handler;
- (void)resetInvitationURLForCollaborationWithPersistentID:(id)d completion:(id)completion;
- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior completionHandler:(id)handler;
- (void)updateSharingMode:(int64_t)mode onCollaborationWithPersistentID:(id)d completion:(id)completion;
@end

@implementation MusicKit_SoftLinking_MPCloudController

+ (id)instanceManager
{
  if (instanceManager___musickit_lazy_init_predicate != -1)
  {
    +[MusicKit_SoftLinking_MPCloudController instanceManager];
  }

  v3 = instanceManager___musickit_lazy_init_variable;

  return v3;
}

+ (MusicKit_SoftLinking_MPCloudController)sharedCloudController
{
  if (sharedCloudController___musickit_lazy_init_predicate != -1)
  {
    +[MusicKit_SoftLinking_MPCloudController sharedCloudController];
  }

  v3 = sharedCloudController___musickit_lazy_init_variable;

  return v3;
}

+ (MusicKit_SoftLinking_MPCloudController)controllerWithUserIdentity:(id)identity
{
  identityCopy = identity;
  instanceManager = [self instanceManager];
  v6 = [instanceManager sharedInstanceForKey:identityCopy];

  return v6;
}

- (id)_initWithUnderlyingCloudController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = MusicKit_SoftLinking_MPCloudController;
  v6 = [(MusicKit_SoftLinking_MPCloudController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingCloudController, controller);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handleCanShowCloudDownloadButtonsDidChangeNotification_ name:v9 object:v7->_underlyingCloudController];

    v10 = getMPCloudControllerIsUpdateInProgressDidChangeNotification();
    [defaultCenter addObserver:v7 selector:sel__handleIsUpdateInProgressDidChangeNotificationName_ name:v10 object:v7->_underlyingCloudController];
  }

  return v7;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification();
  [defaultCenter removeObserver:self name:v4 object:self->_underlyingCloudController];

  v5 = getMPCloudControllerIsUpdateInProgressDidChangeNotification();
  [defaultCenter removeObserver:self name:v5 object:self->_underlyingCloudController];

  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPCloudController;
  [(MusicKit_SoftLinking_MPCloudController *)&v6 dealloc];
}

- (int64_t)maximumAllowedPins
{
  userIdentity = [(MPCloudController *)self->_underlyingCloudController userIdentity];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getMPCloudControllerGetMaxAllowedPinsForUserIdentitySymbolLoc_ptr;
  v11 = getMPCloudControllerGetMaxAllowedPinsForUserIdentitySymbolLoc_ptr;
  if (!getMPCloudControllerGetMaxAllowedPinsForUserIdentitySymbolLoc_ptr)
  {
    v4 = MediaPlayerLibrary_10();
    v9[3] = dlsym(v4, "MPCloudControllerGetMaxAllowedPinsForUserIdentity");
    getMPCloudControllerGetMaxAllowedPinsForUserIdentitySymbolLoc_ptr = v9[3];
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    v7 = getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(v7);
  }

  v5 = v3(userIdentity);

  return v5;
}

- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior completionHandler:(id)handler
{
  if (behavior != 2)
  {
    behavior = behavior == 1;
  }

  [(MPCloudController *)self->_underlyingCloudController setCloudAddToPlaylistBehavior:behavior completionHandler:handler];
}

- (int64_t)cloudAddToPlaylistBehavior
{
  result = [(MPCloudController *)self->_underlyingCloudController cloudAddToPlaylistBehavior];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (void)enableCloudLibraryWithCompletionHandler:(id)handler
{
  v21[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v5 = getMPCloudControllerEnableCloudLibraryOptionStartInitialImportSymbolLoc_ptr;
  v18 = getMPCloudControllerEnableCloudLibraryOptionStartInitialImportSymbolLoc_ptr;
  if (!getMPCloudControllerEnableCloudLibraryOptionStartInitialImportSymbolLoc_ptr)
  {
    v6 = MediaPlayerLibrary_10();
    v16[3] = dlsym(v6, "MPCloudControllerEnableCloudLibraryOptionStartInitialImport");
    getMPCloudControllerEnableCloudLibraryOptionStartInitialImportSymbolLoc_ptr = v16[3];
    v5 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = *v5;
  v19 = v7;
  v8 = MEMORY[0x1E695E118];
  v21[0] = MEMORY[0x1E695E118];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v9 = getMPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrarySymbolLoc_ptr;
  v18 = getMPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrarySymbolLoc_ptr;
  if (!getMPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrarySymbolLoc_ptr)
  {
    v10 = MediaPlayerLibrary_10();
    v16[3] = dlsym(v10, "MPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrary");
    getMPCloudControllerEnableCloudLibraryOptionMergeWithCloudLibrarySymbolLoc_ptr = v16[3];
    v9 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v9)
  {
LABEL_8:
    getMPModelLibraryPlaylistEditControllerDidChangeNotification_cold_1();
    __break(1u);
  }

  v20 = *v9;
  v21[1] = v8;
  v11 = MEMORY[0x1E695DF20];
  v12 = v20;
  v13 = [v11 dictionaryWithObjects:v21 forKeys:&v19 count:2];

  [(MPCloudController *)self->_underlyingCloudController enableCloudLibraryWithOptions:v13 completionHandler:handlerCopy];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateSharingMode:(int64_t)mode onCollaborationWithPersistentID:(id)d completion:(id)completion
{
  v8 = MEMORY[0x1E6977648];
  completionCopy = completion;
  dCopy = d;
  v10 = [v8 _underlyingMediaSharingModeForSharingMode:mode];
  underlyingCloudController = self->_underlyingCloudController;
  longLongValue = [dCopy longLongValue];

  [(MPCloudController *)underlyingCloudController updateSharingMode:v10 onCollaboratinWithPersistentID:longLongValue completion:completionCopy];
}

- (void)resetInvitationURLForCollaborationWithPersistentID:(id)d completion:(id)completion
{
  underlyingCloudController = self->_underlyingCloudController;
  completionCopy = completion;
  -[MPCloudController resetInvitationURLForCollaborationWithPersistentID:completion:](underlyingCloudController, "resetInvitationURLForCollaborationWithPersistentID:completion:", [d longLongValue], completionCopy);
}

- (void)_handleCanShowCloudDownloadButtonsDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x1E696AD88];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification" object:self userInfo:userInfo];
}

- (void)_handleIsUpdateInProgressDidChangeNotificationName:(id)name
{
  v4 = MEMORY[0x1E696AD88];
  nameCopy = name;
  defaultCenter = [v4 defaultCenter];
  userInfo = [nameCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPCloudControllerIsUpdateInProgressDidChangeNotification" object:self userInfo:userInfo];
}

@end