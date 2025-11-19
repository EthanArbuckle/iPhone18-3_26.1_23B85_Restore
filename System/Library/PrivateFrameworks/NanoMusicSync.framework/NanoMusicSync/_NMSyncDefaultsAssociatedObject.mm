@interface _NMSyncDefaultsAssociatedObject
- (_NMSyncDefaultsAssociatedObject)init;
- (void)_mediaLibraryDidChangeNotification:(id)a3;
- (void)dealloc;
@end

@implementation _NMSyncDefaultsAssociatedObject

- (_NMSyncDefaultsAssociatedObject)init
{
  v7.receiver = self;
  v7.super_class = _NMSyncDefaultsAssociatedObject;
  v2 = [(_NMSyncDefaultsAssociatedObject *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__mediaLibraryDidChangeNotification_ name:*MEMORY[0x277CD58D8] object:0];

    v4 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [v4 beginGeneratingLibraryChangeNotifications];

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [v3 endGeneratingLibraryChangeNotifications];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = _NMSyncDefaultsAssociatedObject;
  [(_NMSyncDefaultsAssociatedObject *)&v5 dealloc];
}

- (void)_mediaLibraryDidChangeNotification:(id)a3
{
  assetSyncPlaylist = self->_assetSyncPlaylist;
  self->_assetSyncPlaylist = 0;
  MEMORY[0x2821F96F8]();
}

@end