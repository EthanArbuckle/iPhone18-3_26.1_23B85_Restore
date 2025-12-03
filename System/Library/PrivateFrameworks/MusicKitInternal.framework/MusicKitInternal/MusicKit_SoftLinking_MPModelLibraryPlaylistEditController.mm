@interface MusicKit_SoftLinking_MPModelLibraryPlaylistEditController
- (CGImage)userImage;
- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithInitialItemList:(id)list library:(id)library authorProfile:(id)profile;
- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithPlaylist:(id)playlist initialTracklist:(id)tracklist authorProfile:(id)profile library:(id)library;
- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithPlaylist:(id)playlist underlyingSectionedCollection:(id)collection authorProfile:(id)profile library:(id)library;
- (MusicKit_SoftLinking_MPModelObject)parentPlaylist;
- (MusicKit_SoftLinking_MPSectionedCollection)currentTrackList;
- (NSNumber)isCuratorPlaylist;
- (id)movePlaylistEntry:(id)entry afterEntry:(id)afterEntry;
- (id)removePlaylistEntries:(id)entries;
- (void)_handlePlaylistDidChangeNotification:(id)notification;
- (void)appendModelObject:(id)object completion:(id)completion;
- (void)appendModelObjects:(id)objects completion:(id)completion;
- (void)appendObjects:(id)objects completion:(id)completion;
- (void)applyChanges:(id)changes completion:(id)completion;
- (void)commitWithCompletion:(id)completion;
- (void)dealloc;
- (void)insertModelObject:(id)object afterEntry:(id)entry completion:(id)completion;
- (void)insertModelObjects:(id)objects afterEntry:(id)entry completion:(id)completion;
- (void)insertObjects:(id)objects afterEntry:(id)entry completion:(id)completion;
- (void)moveEntry:(id)entry afterEntry:(id)afterEntry;
- (void)redoNextTransactionWithCompletion:(id)completion;
- (void)removeEntries:(id)entries;
- (void)removeEntry:(id)entry;
- (void)setInitialTrackList:(id)list;
- (void)setParentPlaylist:(id)playlist;
- (void)setUserImage:(CGImage *)image;
- (void)undoPreviousTransactionWithCompletion:(id)completion;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryPlaylistEditController

- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithPlaylist:(id)playlist initialTracklist:(id)tracklist authorProfile:(id)profile library:(id)library
{
  playlistCopy = playlist;
  tracklistCopy = tracklist;
  profileCopy = profile;
  libraryCopy = library;
  v31.receiver = self;
  v31.super_class = MusicKit_SoftLinking_MPModelLibraryPlaylistEditController;
  v14 = [(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController *)&v31 init];
  if (v14)
  {
    if (tracklistCopy)
    {
      _underlyingSectionedCollection = [tracklistCopy _underlyingSectionedCollection];
      v16 = [_underlyingSectionedCollection lazyMapWithSections:&__block_literal_global items:&__block_literal_global_13];
    }

    if (profileCopy)
    {
      _underlyingModelObject = [profileCopy _underlyingModelObject];
    }

    else
    {
      _underlyingModelObject = 0;
    }

    v18 = [MEMORY[0x1E6977678] _supportedPropertiesForModelObjectType:19];
    v19 = [MEMORY[0x1E6977678] _supportedPropertiesForModelObjectType:17];
    v20 = objc_alloc(getMPModelLibraryPlaylistEditControllerClass());
    v30 = libraryCopy;
    _underlyingMediaLibrary = [libraryCopy _underlyingMediaLibrary];
    if (playlistCopy)
    {
      [playlistCopy _underlyingModelObject];
      v23 = v22 = v19;
      v24 = [v20 initWithLibrary:_underlyingMediaLibrary playlist:v23 playlistEntryProperties:v18 authorProfile:_underlyingModelObject];
      underlyingEditController = v14->_underlyingEditController;
      v14->_underlyingEditController = v24;
    }

    else
    {
      v26 = [v20 initWithLibrary:_underlyingMediaLibrary initialItemList:MEMORY[0x1E695E0F0] playlistProperties:v19 playlistEntryProperties:v18 authorProfile:_underlyingModelObject];
      v22 = v19;
      v23 = v14->_underlyingEditController;
      v14->_underlyingEditController = v26;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v28 = getMPModelLibraryPlaylistEditControllerDidChangeNotification();
    [defaultCenter addObserver:v14 selector:sel__handlePlaylistDidChangeNotification_ name:v28 object:v14->_underlyingEditController];

    libraryCopy = v30;
  }

  return v14;
}

- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithInitialItemList:(id)list library:(id)library authorProfile:(id)profile
{
  listCopy = list;
  libraryCopy = library;
  profileCopy = profile;
  v22.receiver = self;
  v22.super_class = MusicKit_SoftLinking_MPModelLibraryPlaylistEditController;
  v11 = [(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController *)&v22 init];
  if (v11)
  {
    if (profileCopy)
    {
      _underlyingModelObject = [profileCopy _underlyingModelObject];
    }

    else
    {
      _underlyingModelObject = 0;
    }

    v13 = [listCopy msv_map:&__block_literal_global_19];
    v14 = [MEMORY[0x1E6977678] _supportedPropertiesForModelObjectType:19];
    v15 = objc_alloc(getMPModelLibraryPlaylistEditControllerClass());
    _underlyingMediaLibrary = [libraryCopy _underlyingMediaLibrary];
    v17 = [v15 initWithLibrary:_underlyingMediaLibrary initialItemList:v13 playlistEntryProperties:v14 authorProfile:_underlyingModelObject];
    underlyingEditController = v11->_underlyingEditController;
    v11->_underlyingEditController = v17;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v20 = getMPModelLibraryPlaylistEditControllerDidChangeNotification();
    [defaultCenter addObserver:v11 selector:sel__handlePlaylistDidChangeNotification_ name:v20 object:v11->_underlyingEditController];
  }

  return v11;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getMPModelLibraryPlaylistEditControllerDidChangeNotification();
  [defaultCenter removeObserver:self name:v4 object:self->_underlyingEditController];

  v5.receiver = self;
  v5.super_class = MusicKit_SoftLinking_MPModelLibraryPlaylistEditController;
  [(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController *)&v5 dealloc];
}

- (MusicKit_SoftLinking_MPModelObject)parentPlaylist
{
  parentPlaylist = [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController parentPlaylist];
  if (parentPlaylist)
  {
    v3 = [objc_alloc(MEMORY[0x1E6977640]) initWithUnderlyingModelObject:parentPlaylist];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setParentPlaylist:(id)playlist
{
  if (playlist)
  {
    _underlyingModelObject = [playlist _underlyingModelObject];
  }

  else
  {
    _underlyingModelObject = 0;
  }

  v5 = _underlyingModelObject;
  [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController setParentPlaylist:_underlyingModelObject];
}

- (CGImage)userImage
{
  userImage = [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController userImage];
  cGImage = [userImage CGImage];

  return cGImage;
}

- (void)setUserImage:(CGImage *)image
{
  if (image)
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
    v7 = [[v5 alloc] initWithCGImage:image];
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
  currentTrackList = [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController currentTrackList];
  v3 = [objc_alloc(MEMORY[0x1E69776C8]) initWithUnderlyingSectionedCollection:currentTrackList];

  return v3;
}

- (void)setInitialTrackList:(id)list
{
  underlyingEditController = self->_underlyingEditController;
  _underlyingSectionedCollection = [list _underlyingSectionedCollection];
  [(MPModelLibraryPlaylistEditController *)underlyingEditController setInitialTrackList:_underlyingSectionedCollection];
}

- (void)_handlePlaylistDidChangeNotification:(id)notification
{
  v4 = MEMORY[0x1E696AD88];
  notificationCopy = notification;
  defaultCenter = [v4 defaultCenter];
  userInfo = [notificationCopy userInfo];

  [defaultCenter postNotificationName:@"MusicKit_SoftLinking_MPModelLibraryPlaylistEditControllerDidChangeNotification" object:self userInfo:userInfo];
}

- (void)appendObjects:(id)objects completion:(id)completion
{
  completionCopy = completion;
  v7 = [objects msv_map:&__block_literal_global_26];
  underlyingEditController = self->_underlyingEditController;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __86__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_appendObjects_completion___block_invoke_2;
  v10[3] = &unk_1E84C39C0;
  v11 = completionCopy;
  v9 = completionCopy;
  [(MPModelLibraryPlaylistEditController *)underlyingEditController appendObjects:v7 completion:v10];
}

- (void)insertObjects:(id)objects afterEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  v10 = [objects msv_map:&__block_literal_global_29];
  underlyingEditController = self->_underlyingEditController;
  if (entryCopy)
  {
    _underlyingModelObject = [entryCopy _underlyingModelObject];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __97__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_insertObjects_afterEntry_completion___block_invoke_2;
    v18[3] = &unk_1E84C39C0;
    v13 = &v19;
    v19 = completionCopy;
    v14 = completionCopy;
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertObjects:v10 afterEntry:_underlyingModelObject completion:v18];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __97__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_insertObjects_afterEntry_completion___block_invoke_3;
    v16[3] = &unk_1E84C39C0;
    v13 = &v17;
    v17 = completionCopy;
    v15 = completionCopy;
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertObjectsAtStart:v10 completion:v16];
  }
}

- (id)movePlaylistEntry:(id)entry afterEntry:(id)afterEntry
{
  afterEntryCopy = afterEntry;
  underlyingEditController = self->_underlyingEditController;
  _underlyingModelObject = [entry _underlyingModelObject];
  if (afterEntryCopy)
  {
    _underlyingModelObject2 = [afterEntryCopy _underlyingModelObject];
    v10 = [(MPModelLibraryPlaylistEditController *)underlyingEditController movePlaylistEntry:_underlyingModelObject afterEntry:_underlyingModelObject2];
  }

  else
  {
    v10 = [(MPModelLibraryPlaylistEditController *)underlyingEditController movePlaylistEntryToStart:_underlyingModelObject];
  }

  return v10;
}

- (id)removePlaylistEntries:(id)entries
{
  v4 = [entries msv_map:&__block_literal_global_32];
  v5 = [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController removePlaylistEntries:v4];

  return v5;
}

- (void)undoPreviousTransactionWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingEditController = self->_underlyingEditController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __99__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_undoPreviousTransactionWithCompletion___block_invoke;
  v7[3] = &unk_1E84C39C0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(MPModelLibraryPlaylistEditController *)underlyingEditController undoPreviousTransactionWithCompletion:v7];
}

- (void)redoNextTransactionWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingEditController = self->_underlyingEditController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_redoNextTransactionWithCompletion___block_invoke;
  v7[3] = &unk_1E84C39C0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(MPModelLibraryPlaylistEditController *)underlyingEditController redoNextTransactionWithCompletion:v7];
}

- (void)applyChanges:(id)changes completion:(id)completion
{
  completionCopy = completion;
  underlyingEditController = self->_underlyingEditController;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_applyChanges_completion___block_invoke;
  v9[3] = &unk_1E84C39C0;
  v10 = completionCopy;
  v8 = completionCopy;
  [(MPModelLibraryPlaylistEditController *)underlyingEditController applyChanges:changes completion:v9];
}

- (void)commitWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingEditController = self->_underlyingEditController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__MusicKit_SoftLinking_MPModelLibraryPlaylistEditController_commitWithCompletion___block_invoke;
  v7[3] = &unk_1E84C3A08;
  v8 = completionCopy;
  v6 = completionCopy;
  [(MPModelLibraryPlaylistEditController *)underlyingEditController commitWithCompletion:v7];
}

- (MusicKit_SoftLinking_MPModelLibraryPlaylistEditController)initWithPlaylist:(id)playlist underlyingSectionedCollection:(id)collection authorProfile:(id)profile library:(id)library
{
  playlistCopy = playlist;
  collectionCopy = collection;
  profileCopy = profile;
  libraryCopy = library;
  v25.receiver = self;
  v25.super_class = MusicKit_SoftLinking_MPModelLibraryPlaylistEditController;
  v14 = [(MusicKit_SoftLinking_MPModelLibraryPlaylistEditController *)&v25 init];
  if (v14)
  {
    v15 = [MEMORY[0x1E6977678] _supportedPropertiesForModelObjectType:19];
    v16 = collectionCopy;
    v17 = objc_alloc(getMPModelLibraryPlaylistEditControllerClass());
    _underlyingMediaLibrary = [libraryCopy _underlyingMediaLibrary];
    _underlyingModelObject = [profileCopy _underlyingModelObject];
    if (playlistCopy)
    {
      v20 = [v17 initWithLibrary:_underlyingMediaLibrary playlist:playlistCopy initialTrackList:v16 playlistEntryProperties:v15 authorProfile:_underlyingModelObject];
    }

    else
    {
      v20 = [v17 initWithLibrary:_underlyingMediaLibrary playlistEntryProperties:v15 authorProfile:_underlyingModelObject];
    }

    underlyingEditController = v14->_underlyingEditController;
    v14->_underlyingEditController = v20;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v23 = getMPModelLibraryPlaylistEditControllerDidChangeNotification();
    [defaultCenter addObserver:v14 selector:sel__handlePlaylistDidChangeNotification_ name:v23 object:v14->_underlyingEditController];
  }

  return v14;
}

- (void)appendModelObject:(id)object completion:(id)completion
{
  underlyingEditController = self->_underlyingEditController;
  completionCopy = completion;
  _underlyingModelObject = [object _underlyingModelObject];
  [(MPModelLibraryPlaylistEditController *)underlyingEditController appendItem:_underlyingModelObject completion:completionCopy];
}

- (void)appendModelObjects:(id)objects completion:(id)completion
{
  completionCopy = completion;
  v7 = [objects msv_map:&__block_literal_global_35];
  [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController appendItems:v7 completion:completionCopy];
}

- (void)insertModelObject:(id)object afterEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  underlyingEditController = self->_underlyingEditController;
  completionCopy = completion;
  _underlyingModelObject = [object _underlyingModelObject];
  if (entryCopy)
  {
    _underlyingModelObject2 = [entryCopy _underlyingModelObject];
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertItem:_underlyingModelObject afterEntry:_underlyingModelObject2 completion:completionCopy];

    completionCopy = _underlyingModelObject2;
  }

  else
  {
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertItemAtStart:_underlyingModelObject completion:completionCopy];
  }
}

- (void)insertModelObjects:(id)objects afterEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  v9 = [objects msv_map:&__block_literal_global_37];
  underlyingEditController = self->_underlyingEditController;
  if (entryCopy)
  {
    _underlyingModelObject = [entryCopy _underlyingModelObject];
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertItems:v9 afterEntry:_underlyingModelObject completion:completionCopy];
  }

  else
  {
    [(MPModelLibraryPlaylistEditController *)underlyingEditController insertItemsAtStart:v9 completion:completionCopy];
  }
}

- (void)moveEntry:(id)entry afterEntry:(id)afterEntry
{
  afterEntryCopy = afterEntry;
  underlyingEditController = self->_underlyingEditController;
  _underlyingModelObject = [entry _underlyingModelObject];
  if (afterEntryCopy)
  {
    _underlyingModelObject2 = [afterEntryCopy _underlyingModelObject];
    [(MPModelLibraryPlaylistEditController *)underlyingEditController moveEntry:_underlyingModelObject afterEntry:_underlyingModelObject2];
  }

  else
  {
    [(MPModelLibraryPlaylistEditController *)underlyingEditController moveEntryToStart:_underlyingModelObject];
  }
}

- (void)removeEntry:(id)entry
{
  underlyingEditController = self->_underlyingEditController;
  _underlyingModelObject = [entry _underlyingModelObject];
  [(MPModelLibraryPlaylistEditController *)underlyingEditController removeEntry:_underlyingModelObject];
}

- (void)removeEntries:(id)entries
{
  v4 = [entries msv_map:&__block_literal_global_39];
  [(MPModelLibraryPlaylistEditController *)self->_underlyingEditController removeEntries:v4];
}

@end