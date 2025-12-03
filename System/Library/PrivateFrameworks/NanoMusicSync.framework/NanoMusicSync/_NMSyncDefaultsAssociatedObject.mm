@interface _NMSyncDefaultsAssociatedObject
- (_NMSyncDefaultsAssociatedObject)init;
- (void)_mediaLibraryDidChangeNotification:(id)notification;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__mediaLibraryDidChangeNotification_ name:*MEMORY[0x277CD58D8] object:0];

    defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
    [defaultMediaLibrary beginGeneratingLibraryChangeNotifications];

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
  [defaultMediaLibrary endGeneratingLibraryChangeNotifications];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = _NMSyncDefaultsAssociatedObject;
  [(_NMSyncDefaultsAssociatedObject *)&v5 dealloc];
}

- (void)_mediaLibraryDidChangeNotification:(id)notification
{
  assetSyncPlaylist = self->_assetSyncPlaylist;
  self->_assetSyncPlaylist = 0;
  MEMORY[0x2821F96F8]();
}

@end