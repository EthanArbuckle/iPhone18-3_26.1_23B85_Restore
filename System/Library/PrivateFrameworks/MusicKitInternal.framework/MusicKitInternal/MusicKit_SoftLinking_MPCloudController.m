@interface MusicKit_SoftLinking_MPCloudController
+ (MusicKit_SoftLinking_MPCloudController)controllerWithUserIdentity:(id)a3;
+ (MusicKit_SoftLinking_MPCloudController)sharedCloudController;
+ (id)instanceManager;
- (id)_initWithUnderlyingCloudController:(id)a3;
- (int64_t)cloudAddToPlaylistBehavior;
- (int64_t)maximumAllowedPins;
- (void)_handleCanShowCloudDownloadButtonsDidChangeNotification:(id)a3;
- (void)_handleIsUpdateInProgressDidChangeNotificationName:(id)a3;
- (void)dealloc;
- (void)enableCloudLibraryWithCompletionHandler:(id)a3;
- (void)resetInvitationURLForCollaborationWithPersistentID:(id)a3 completion:(id)a4;
- (void)setCloudAddToPlaylistBehavior:(int64_t)a3 completionHandler:(id)a4;
- (void)updateSharingMode:(int64_t)a3 onCollaborationWithPersistentID:(id)a4 completion:(id)a5;
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

+ (MusicKit_SoftLinking_MPCloudController)controllerWithUserIdentity:(id)a3
{
  v4 = a3;
  v5 = [a1 instanceManager];
  v6 = [v5 sharedInstanceForKey:v4];

  return v6;
}

- (id)_initWithUnderlyingCloudController:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = MusicKit_SoftLinking_MPCloudController;
  v6 = [(MusicKit_SoftLinking_MPCloudController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingCloudController, a3);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    v9 = getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handleCanShowCloudDownloadButtonsDidChangeNotification_ name:v9 object:v7->_underlyingCloudController];

    v10 = getMPCloudControllerIsUpdateInProgressDidChangeNotification();
    [v8 addObserver:v7 selector:sel__handleIsUpdateInProgressDidChangeNotificationName_ name:v10 object:v7->_underlyingCloudController];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getMPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification();
  [v3 removeObserver:self name:v4 object:self->_underlyingCloudController];

  v5 = getMPCloudControllerIsUpdateInProgressDidChangeNotification();
  [v3 removeObserver:self name:v5 object:self->_underlyingCloudController];

  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPCloudController;
  [(MusicKit_SoftLinking_MPCloudController *)&v6 dealloc];
}

- (int64_t)maximumAllowedPins
{
  v2 = [(MPCloudController *)self->_underlyingCloudController userIdentity];
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

  v5 = v3(v2);

  return v5;
}

- (void)setCloudAddToPlaylistBehavior:(int64_t)a3 completionHandler:(id)a4
{
  if (a3 != 2)
  {
    a3 = a3 == 1;
  }

  [(MPCloudController *)self->_underlyingCloudController setCloudAddToPlaylistBehavior:a3 completionHandler:a4];
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

- (void)enableCloudLibraryWithCompletionHandler:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  [(MPCloudController *)self->_underlyingCloudController enableCloudLibraryWithOptions:v13 completionHandler:v4];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateSharingMode:(int64_t)a3 onCollaborationWithPersistentID:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x1E6977648];
  v13 = a5;
  v9 = a4;
  v10 = [v8 _underlyingMediaSharingModeForSharingMode:a3];
  underlyingCloudController = self->_underlyingCloudController;
  v12 = [v9 longLongValue];

  [(MPCloudController *)underlyingCloudController updateSharingMode:v10 onCollaboratinWithPersistentID:v12 completion:v13];
}

- (void)resetInvitationURLForCollaborationWithPersistentID:(id)a3 completion:(id)a4
{
  underlyingCloudController = self->_underlyingCloudController;
  v6 = a4;
  -[MPCloudController resetInvitationURLForCollaborationWithPersistentID:completion:](underlyingCloudController, "resetInvitationURLForCollaborationWithPersistentID:completion:", [a3 longLongValue], v6);
}

- (void)_handleCanShowCloudDownloadButtonsDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPCloudControllerCanShowCloudDownloadButtonsDidChangeNotification" object:self userInfo:v6];
}

- (void)_handleIsUpdateInProgressDidChangeNotificationName:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPCloudControllerIsUpdateInProgressDidChangeNotification" object:self userInfo:v6];
}

@end