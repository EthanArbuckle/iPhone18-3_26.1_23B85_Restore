@interface _NTKCFaceDetailAlbumChooserViewController
+ (void)initialize;
- (_NTKCFaceDetailAlbumChooserViewController)initWithPhotosEditor:(id)editor forFace:(id)face inGallery:(BOOL)gallery;
- (_NTKCFaceDetailAlbumChooserViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_appendCollectionsWithType:(int64_t)type subtype:(int64_t)subtype;
- (void)_reloadData;
- (void)_set_allAlbums;
- (void)_set_selectedAlbum;
- (void)sessionInfoStatusDidChange:(id)change;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation _NTKCFaceDetailAlbumChooserViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    mEMORY[0x277D3D088] = [MEMORY[0x277D3D088] sharedInstance];
    [mEMORY[0x277D3D088] setInterfaceThemeClass:objc_opt_class()];
  }
}

- (_NTKCFaceDetailAlbumChooserViewController)initWithPhotosEditor:(id)editor forFace:(id)face inGallery:(BOOL)gallery
{
  galleryCopy = gallery;
  editorCopy = editor;
  faceCopy = face;
  v10 = objc_opt_new();
  v16.receiver = self;
  v16.super_class = _NTKCFaceDetailAlbumChooserViewController;
  v11 = [(PUAlbumListViewController *)&v16 initWithSpec:v10 isRootSharedAlbumList:0];
  v12 = v11;
  if (v11)
  {
    [(_NTKCFaceDetailAlbumChooserViewController *)v11 setEditor:editorCopy];
    [(_NTKCFaceDetailAlbumChooserViewController *)v12 setInGallery:galleryCopy];
    [(_NTKCFaceDetailAlbumChooserViewController *)v12 setFace:faceCopy];
    v13 = objc_opt_new();
    [(PUAlbumListViewController *)v12 setSessionInfo:v13];

    _title = [(_NTKCFaceDetailAlbumChooserViewController *)v12 _title];
    [(_NTKCFaceDetailAlbumChooserViewController *)v12 setTitle:_title];
  }

  return v12;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = _NTKCFaceDetailAlbumChooserViewController;
  [(PUAlbumListViewController *)&v6 viewDidLoad];
  v3 = BPSBridgeTintColor();
  view = [(_NTKCFaceDetailAlbumChooserViewController *)self view];
  [view setTintColor:v3];

  _mainTableView = [(PUAlbumListViewController *)self _mainTableView];
  [_mainTableView setSeparatorStyle:1];

  [(_NTKCFaceDetailAlbumChooserViewController *)self _reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  section = [pathCopy section];
  albumsSections = [(PUAlbumListViewController *)self albumsSections];
  if (section < albumsSections || section - albumsSections >= v10)
  {
    v24.receiver = self;
    v24.super_class = _NTKCFaceDetailAlbumChooserViewController;
    v11 = [(PUAlbumListViewController *)&v24 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  }

  else
  {
    v25.receiver = self;
    v25.super_class = _NTKCFaceDetailAlbumChooserViewController;
    v11 = [(PUAlbumListViewController *)&v25 tableView:viewCopy cellForRowAtIndexPath:pathCopy];

    v12 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
    viewCopy = v12;
    if (self->_selectedAlbum && (NTK_npto_uuid(v12), v13 = objc_claimAutoreleasedReturnValue(), NTK_npto_uuid(self->_selectedAlbum), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v13 isEqual:v14], v14, v13, (v15 & 1) != 0))
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    [v11 setAccessoryType:v16];
    v17 = BPSForegroundColor();
    [v11 setBackgroundColor:v17];

    [v11 setSelectionStyle:3];
    v18 = objc_alloc(MEMORY[0x277D75D18]);
    v19 = [v18 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v20 = BPSCellHightlightColor();
    [v19 setBackgroundColor:v20];

    [v11 setSelectedBackgroundView:v19];
    spec = [(PUAlbumListViewController *)self spec];
    [spec stackSize];
    [v11 setSeparatorInset:{0.0, v22 + 16.0 + 8.0, 0.0, 0.0}];
  }

  return v11;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v25 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  [v8 setAccessoryType:3];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  visibleCells = [viewCopy visibleCells];
  v10 = [visibleCells countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(visibleCells);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (v14 != v8)
        {
          [v14 setAccessoryType:0];
        }
      }

      v11 = [visibleCells countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  section = [pathCopy section];
  albumsSections = [(PUAlbumListViewController *)self albumsSections];
  if (section >= albumsSections && section - albumsSections < v17)
  {
    v18 = [(PUAlbumListViewController *)self collectionAtIndexPath:pathCopy];
    selectedAlbum = self->_selectedAlbum;
    self->_selectedAlbum = v18;
  }
}

- (void)sessionInfoStatusDidChange:(id)change
{
  if ([change status] == 1)
  {
    selectedAlbum = self->_selectedAlbum;
    if (selectedAlbum)
    {
      v5 = selectedAlbum == self->_syncedAlbum;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v11 = 0;
    }

    else
    {
      v6 = MEMORY[0x277CD97B8];
      v7 = NTK_npto_uuid(selectedAlbum);
      uUIDString = [v7 UUIDString];
      v11 = [v6 localIdentifierWithUUID:uUIDString];
    }

    editor = [(_NTKCFaceDetailAlbumChooserViewController *)self editor];
    [editor setAlbumIdentifier:v11];

    delegate = [(_NTKCFaceDetailAlbumChooserViewController *)self delegate];
    [delegate _albumChooserDidFinish:self];
  }
}

- (void)_reloadData
{
  [(_NTKCFaceDetailAlbumChooserViewController *)self _set_allAlbums];
  [(_NTKCFaceDetailAlbumChooserViewController *)self _set_selectedAlbum];
  v5 = [MEMORY[0x277CD9848] transientCollectionListWithCollections:self->_allAlbums title:0];
  dataSourceManagerConfiguration = [(PUAlbumListViewController *)self dataSourceManagerConfiguration];

  if (!dataSourceManagerConfiguration)
  {
    v4 = [objc_alloc(MEMORY[0x277D3CC10]) initWithCollectionList:v5];
    [v4 setSeparateSectionsForSmartAndUserCollections:0];
    [(PUAlbumListViewController *)self setDataSourceManagerConfiguration:v4];
  }
}

- (void)_set_allAlbums
{
  v3 = objc_opt_new();
  allAlbums = self->_allAlbums;
  self->_allAlbums = v3;

  v5 = objc_alloc(MEMORY[0x277D2BA50]);
  face = [(_NTKCFaceDetailAlbumChooserViewController *)self face];
  device = [face device];
  nrDevice = [device nrDevice];
  v12 = [v5 initWithDevice:nrDevice];

  npto_fetchSyncedAlbum = [v12 npto_fetchSyncedAlbum];
  firstObject = [npto_fetchSyncedAlbum firstObject];
  syncedAlbum = self->_syncedAlbum;
  self->_syncedAlbum = firstObject;

  if (self->_syncedAlbum)
  {
    [(NSMutableArray *)self->_allAlbums addObject:?];
  }

  [(_NTKCFaceDetailAlbumChooserViewController *)self _appendCollectionsWithType:2 subtype:203];
  [(_NTKCFaceDetailAlbumChooserViewController *)self _appendCollectionsWithType:2 subtype:209];
  [(_NTKCFaceDetailAlbumChooserViewController *)self _appendCollectionsWithType:1 subtype:0x7FFFFFFFFFFFFFFFLL];
}

- (void)_set_selectedAlbum
{
  selfCopy = self;
  v26 = *MEMORY[0x277D85DE8];
  editor = [(_NTKCFaceDetailAlbumChooserViewController *)self editor];
  albumIdentifier = [editor albumIdentifier];

  if (albumIdentifier)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = selfCopy;
    v5 = selfCopy->_allAlbums;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = MEMORY[0x277CD97B8];
          v12 = NTK_npto_uuid(v10);
          uUIDString = [v12 UUIDString];
          v14 = [v11 localIdentifierWithUUID:uUIDString];
          v15 = [albumIdentifier isEqualToString:v14];

          if (v15)
          {
            selfCopy = v18;
            objc_storeStrong(&v18->_selectedAlbum, v10);

            goto LABEL_13;
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = v18;
  }

  else
  {
    objc_storeStrong(&selfCopy->_selectedAlbum, selfCopy->_syncedAlbum);
  }

LABEL_13:
  v16 = _NTKLoggingObjectForDomain(6, "NTKLoggingDomainPhoto");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    localizedTitle = [(PHAssetCollection *)selfCopy->_selectedAlbum localizedTitle];
    *buf = 138412290;
    v24 = localizedTitle;
    _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, "[_NTKCFaceDetailAlbumChooserViewController _set_selectedAlbum]: selected album == %@", buf, 0xCu);
  }
}

- (void)_appendCollectionsWithType:(int64_t)type subtype:(int64_t)subtype
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:type subtype:subtype options:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        syncedAlbum = self->_syncedAlbum;
        if (!syncedAlbum || (NTK_npto_uuid(syncedAlbum), v12 = objc_claimAutoreleasedReturnValue(), NTK_npto_uuid(v10), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v12 isEqual:v13], v13, v12, (v14 & 1) == 0))
        {
          [(NSMutableArray *)self->_allAlbums addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (_NTKCFaceDetailAlbumChooserViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end