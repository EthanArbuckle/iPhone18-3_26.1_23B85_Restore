@interface MusicKit_SoftLinking_MPModelLibraryPlaylistEditController
- (CGImage)userImage;
- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithInitialItemList:(id)a3 library:(id)a4 authorProfile:(id)a5;
- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithPlaylist:(id)a3 initialTracklist:(id)a4 authorProfile:(id)a5 library:(id)a6;
- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithPlaylist:(id)a3 underlyingSectionedCollection:(id)a4 authorProfile:(id)a5 library:(id)a6;
- (MusicKit_SoftLinking_MPModelObject)parentPlaylist;
- (MusicKit_SoftLinking_MPSectionedCollection)currentTrackList;
- (NSNumber)isCuratorPlaylist;
- (id)movePlaylistEntry:(id)a3 afterEntry:(id)a4;
- (id)removePlaylistEntries:(id)a3;
- (void)_handlePlaylistDidChangeNotification:(id)a3;
- (void)appendModelObject:(id)a3 completion:(id)a4;
- (void)appendModelObjects:(id)a3 completion:(id)a4;
- (void)appendObjects:(id)a3 completion:(id)a4;
- (void)applyChanges:(id)a3 completion:(id)a4;
- (void)commitWithCompletion:(id)a3;
- (void)dealloc;
- (void)insertModelObject:(id)a3 afterEntry:(id)a4 completion:(id)a5;
- (void)insertModelObjects:(id)a3 afterEntry:(id)a4 completion:(id)a5;
- (void)insertObjects:(id)a3 afterEntry:(id)a4 completion:(id)a5;
- (void)moveEntry:(id)a3 afterEntry:(id)a4;
- (void)redoNextTransactionWithCompletion:(id)a3;
- (void)removeEntries:(id)a3;
- (void)removeEntry:(id)a3;
- (void)setInitialTrackList:(id)a3;
- (void)setParentPlaylist:(id)a3;
- (void)setUserImage:(CGImage *)a3;
- (void)undoPreviousTransactionWithCompletion:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryPlaylistEditController

- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithPlaylist:(id)a3 initialTracklist:(id)a4 authorProfile:(id)a5 library:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v31.receiver = self;
  v31.super_class = MusicKit_SoftLinking_MPModelLibraryPlaylistEditController;
  v14 = [(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController *)&v31 init];
  if (v14)
  {
    if (v11)
    {
      v15 = [v11 _underlyingSectionedCollection];
      v16 = [v15 lazyMapWithSections:&__block_literal_global items:&__block_literal_global_13];
    }

    if (v12)
    {
      v17 = [v12 _underlyingModelObject];
    }

    else
    {
      v17 = 0;
    }

    v18 = [MEMORY[0x1E6977678] _supportedPropertiesForModelObjectType:19];
    v19 = [MEMORY[0x1E6977678] _supportedPropertiesForModelObjectType:17];
    v20 = objc_alloc(getMPModelLibraryPlaylistEditControllerClass());
    v30 = v13;
    v21 = [v13 _underlyingMediaLibrary];
    if (v10)
    {
      [v10 _underlyingModelObject];
      v23 = v22 = v19;
      v24 = [v20 initWithLibrary:v21 playlist:v23 playlistEntryProperties:v18 authorProfile:v17];
      underlyingEditController = v14->_underlyingEditController;
      v14->_underlyingEditController = v24;
    }

    else
    {
      v26 = [v20 initWithLibrary:v21 initialItemList:MEMORY[0x1E695E0F0] playlistProperties:v19 playlistEntryProperties:v18 authorProfile:v17];
      v22 = v19;
      v23 = v14->_underlyingEditController;
      v14->_underlyingEditController = v26;
    }

    v27 = [MEMORY[0x1E696AD88] defaultCenter];
    v28 = getMPModelLibraryPlaylistEditControllerDidChangeNotification();
    [v27 addObserver:v14 selector:sel__handlePlaylistDidChangeNotification_ name:v28 object:v14->_underlyingEditController];

    v13 = v30;
  }

  return v14;
}

- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithInitialItemList:(id)a3 library:(id)a4 authorProfile:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = MusicKit_SoftLinking_MPModelLibraryPlaylistEditController;
  v11 = [(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController *)&v22 init];
  if (v11)
  {
    if (v10)
    {
      v12 = [v10 _underlyingModelObject];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v8 msv_map:&__block_literal_global_19];
    v14 = [MEMORY[0x1E6977678] _supportedPropertiesForModelObjectType:19];
    v15 = objc_alloc(getMPModelLibraryPlaylistEditControllerClass());
    v16 = [v9 _underlyingMediaLibrary];
    v17 = [v15 initWithLibrary:v16 initialItemList:v13 playlistEntryProperties:v14 authorProfile:v12];
    underlyingEditController = v11->_underlyingEditController;
    v11->_underlyingEditController = v17;

    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = getMPModelLibraryPlaylistEditControllerDidChangeNotification();
    [v19 addObserver:v11 selector:sel__handlePlaylistDidChangeNotification_ name:v20 object:v11->_underlyingEditController];
  }

  return v11;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification();
  [v3 removeObserver:self name:v4 object:self->_underlyingEditController];

  v5.receiver = self;
  v5.super_class = MusicKit_SoftLinking_MPModelLibraryPlaylistEditController;
  [(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController *)&v5 dealloc];
}

- (MusicKit_SoftLinking_MPModelObject)parentPlaylist
{
  v2 = [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController parentPlaylist];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E6977640]) initWithUnderlyingModelObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setParentPlaylist:(id)a3
{
  if (a3)
  {
    v4 = [a3 _underlyingModelObject];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController setParentPlaylist:v4];
}

- (CGImage)userImage
{
  v2 = [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController userImage];
  v3 = [v2 CGImage];

  return v3;
}

- (void)setUserImage:(CGImage *)a3
{
  if (a3)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v5 = getUIImageClass_softClass;
    v13 = getUIImageClass_softClass;
    if (!getUIImageClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getUIImageClass_block_invoke;
      v9[3] = &unk_1E84C3838;
      v9[4] = &v10;
      __getUIImageClass_block_invoke(v9);
      v5 = v11[3];
    }

    v6 = v5;
    _Block_object_dispose(&v10, 8);
    v7 = [[v5 alloc] initWithCGImage:a3];
    [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController setUserImage:v7];
  }

  else
  {
    underlyingEditController = self->_underlyingEditController;

    [(MPModelLibraryPlaylistEditController *)underlyingEditController setUserImage:?];
  }
}

- (NSNumber)isCuratorPlaylist
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v3 = getMPModelObjectClass_softClass;
  v18 = getMPModelObjectClass_softClass;
  if (!getMPModelObjectClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getMPModelObjectClass_block_invoke;
    v14[3] = &unk_1E84C3838;
    v14[4] = &v15;
    __getMPModelObjectClass_block_invoke(v14);
    v3 = v16[3];
  }

  v4 = v3;
  _Block_object_dispose(&v15, 8);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_isCuratorPlaylist__block_invoke;
  v7[3] = &unk_1E84C3998;
  v7[4] = self;
  v7[5] = &v8;
  [v3 performWithoutEnforcement:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (MusicKit_SoftLinking_MPSectionedCollection)currentTrackList
{
  v2 = [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController currentTrackList];
  v3 = [objc_alloc(MEMORY[0x1E69776C8]) initWithUnderlyingSectionedCollection:v2];

  return v3;
}

- (void)setInitialTrackList:(id)a3
{
  underlyingEditController = self->_underlyingEditController;
  v4 = [a3 _underlyingSectionedCollection];
  [(MPModelLibraryPlaylistEditController *)underlyingEditController setInitialTrackList:v4];
}

- (void)_handlePlaylistDidChangeNotification:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v7 = [v4 defaultCenter];
  v6 = [v5 userInfo];

  [v7 postNotificationName:@"MusicKit_SoftLinking_MPModelLibraryPlaylistEditControllerDidChangeNotification" object:self userInfo:v6];
}

- (void)appendObjects:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 msv_map:&__block_literal_global_26];
  underlyingEditController = self->_underlyingEditController;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_appendObjects_completion___block_invoke_2;
  v10[3] = &unk_1E84C39C0;
  v11 = v6;
  v9 = v6;
  [(MPModelLibraryPlaylistEditController *)underlyingEditController appendObjects:v7 completion:v10];
}

- (void)insertObjects:(id)a3 afterEntry:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 msv_map:&__block_literal_global_29];
  underlyingEditController = self->_underlyingEditController;
  if (v8)
  {
    v12 = [v8 _underlyingModelObject];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __97__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_insertObjects_afterEntry_completion___block_invoke_2;
    v18[3] = &unk_1E84C39C0;
    v13 = &v19;
    v19 = v9;
    v14 = v9;
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertObjects:v10 afterEntry:v12 completion:v18];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __97__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_insertObjects_afterEntry_completion___block_invoke_3;
    v16[3] = &unk_1E84C39C0;
    v13 = &v17;
    v17 = v9;
    v15 = v9;
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertObjectsAtStart:v10 completion:v16];
  }
}

- (id)movePlaylistEntry:(id)a3 afterEntry:(id)a4
{
  v6 = a4;
  underlyingEditController = self->_underlyingEditController;
  v8 = [a3 _underlyingModelObject];
  if (v6)
  {
    v9 = [v6 _underlyingModelObject];
    v10 = [(MPModelLibraryPlaylistEditController *)underlyingEditController movePlaylistEntry:v8 afterEntry:v9];
  }

  else
  {
    v10 = [(MPModelLibraryPlaylistEditController *)underlyingEditController movePlaylistEntryToStart:v8];
  }

  return v10;
}

- (id)removePlaylistEntries:(id)a3
{
  v4 = [a3 msv_map:&__block_literal_global_32];
  v5 = [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController removePlaylistEntries:v4];

  return v5;
}

- (void)undoPreviousTransactionWithCompletion:(id)a3
{
  v4 = a3;
  underlyingEditController = self->_underlyingEditController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_undoPreviousTransactionWithCompletion___block_invoke;
  v7[3] = &unk_1E84C39C0;
  v8 = v4;
  v6 = v4;
  [(MPModelLibraryPlaylistEditController *)underlyingEditController undoPreviousTransactionWithCompletion:v7];
}

- (void)redoNextTransactionWithCompletion:(id)a3
{
  v4 = a3;
  underlyingEditController = self->_underlyingEditController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_redoNextTransactionWithCompletion___block_invoke;
  v7[3] = &unk_1E84C39C0;
  v8 = v4;
  v6 = v4;
  [(MPModelLibraryPlaylistEditController *)underlyingEditController redoNextTransactionWithCompletion:v7];
}

- (void)applyChanges:(id)a3 completion:(id)a4
{
  v6 = a4;
  underlyingEditController = self->_underlyingEditController;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_applyChanges_completion___block_invoke;
  v9[3] = &unk_1E84C39C0;
  v10 = v6;
  v8 = v6;
  [(MPModelLibraryPlaylistEditController *)underlyingEditController applyChanges:a3 completion:v9];
}

- (void)commitWithCompletion:(id)a3
{
  v4 = a3;
  underlyingEditController = self->_underlyingEditController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke;
  v7[3] = &unk_1E84C3A08;
  v8 = v4;
  v6 = v4;
  [(MPModelLibraryPlaylistEditController *)underlyingEditController commitWithCompletion:v7];
}

- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithPlaylist:(id)a3 underlyingSectionedCollection:(id)a4 authorProfile:(id)a5 library:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = MusicKit_SoftLinking_MPModelLibraryPlaylistEditController;
  v14 = [(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController *)&v25 init];
  if (v14)
  {
    v15 = [MEMORY[0x1E6977678] _supportedPropertiesForModelObjectType:19];
    v16 = v11;
    v17 = objc_alloc(getMPModelLibraryPlaylistEditControllerClass());
    v18 = [v13 _underlyingMediaLibrary];
    v19 = [v12 _underlyingModelObject];
    if (v10)
    {
      v20 = [v17 initWithLibrary:v18 playlist:v10 initialTrackList:v16 playlistEntryProperties:v15 authorProfile:v19];
    }

    else
    {
      v20 = [v17 initWithLibrary:v18 playlistEntryProperties:v15 authorProfile:v19];
    }

    underlyingEditController = v14->_underlyingEditController;
    v14->_underlyingEditController = v20;

    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = getMPModelLibraryPlaylistEditControllerDidChangeNotification();
    [v22 addObserver:v14 selector:sel__handlePlaylistDidChangeNotification_ name:v23 object:v14->_underlyingEditController];
  }

  return v14;
}

- (void)appendModelObject:(id)a3 completion:(id)a4
{
  underlyingEditController = self->_underlyingEditController;
  v6 = a4;
  v7 = [a3 _underlyingModelObject];
  [(MPModelLibraryPlaylistEditController *)underlyingEditController appendItem:v7 completion:v6];
}

- (void)appendModelObjects:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 msv_map:&__block_literal_global_35];
  [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController appendItems:v7 completion:v6];
}

- (void)insertModelObject:(id)a3 afterEntry:(id)a4 completion:(id)a5
{
  v12 = a4;
  underlyingEditController = self->_underlyingEditController;
  v9 = a5;
  v10 = [a3 _underlyingModelObject];
  if (v12)
  {
    v11 = [v12 _underlyingModelObject];
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertItem:v10 afterEntry:v11 completion:v9];

    v9 = v11;
  }

  else
  {
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertItemAtStart:v10 completion:v9];
  }
}

- (void)insertModelObjects:(id)a3 afterEntry:(id)a4 completion:(id)a5
{
  v12 = a4;
  v8 = a5;
  v9 = [a3 msv_map:&__block_literal_global_37];
  underlyingEditController = self->_underlyingEditController;
  if (v12)
  {
    v11 = [v12 _underlyingModelObject];
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertItems:v9 afterEntry:v11 completion:v8];
  }

  else
  {
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertItemsAtStart:v9 completion:v8];
  }
}

- (void)moveEntry:(id)a3 afterEntry:(id)a4
{
  v9 = a4;
  underlyingEditController = self->_underlyingEditController;
  v7 = [a3 _underlyingModelObject];
  if (v9)
  {
    v8 = [v9 _underlyingModelObject];
    [(MPModelLibraryPlaylistEditController *)underlyingEditController moveEntry:v7 afterEntry:v8];
  }

  else
  {
    [(MPModelLibraryPlaylistEditController *)underlyingEditController moveEntryToStart:v7];
  }
}

- (void)removeEntry:(id)a3
{
  underlyingEditController = self->_underlyingEditController;
  v4 = [a3 _underlyingModelObject];
  [(MPModelLibraryPlaylistEditController *)underlyingEditController removeEntry:v4];
}

- (void)removeEntries:(id)a3
{
  v4 = [a3 msv_map:&__block_literal_global_39];
  [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController removeEntries:v4];
}

@end