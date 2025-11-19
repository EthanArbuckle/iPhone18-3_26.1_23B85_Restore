@interface NTKLibrarySelectedFaceSnapshotProvider
+ (void)snapshotCurrentFaceForActiveDeviceWithOptions:(id)a3 completion:(id)a4;
+ (void)snapshotCurrentFaceForDevice:(id)a3 withOptions:(id)a4 completion:(id)a5;
+ (void)snapshotCurrentFaceForDeviceUUID:(id)a3 withOptions:(id)a4 completion:(id)a5;
- (NTKLibrarySelectedFaceSnapshotProvider)initWithDeviceUUID:(id)a3 delegate:(id)a4;
- (NTKLibrarySelectedFaceSnapshotProviderDelegate)delegate;
- (UIImage)snapshotImage;
- (void)_handleFaceChange:(id)a3;
- (void)_handleSnapshotChangedNotification:(id)a3;
- (void)_notifyIfSnapshotAvailable;
- (void)_updateSelectedFaceAndSnapshotKey;
- (void)dealloc;
- (void)faceCollection:(id)a3 didSelectFace:(id)a4 atIndex:(unint64_t)a5;
- (void)faceCollectionDidLoad:(id)a3;
- (void)snapshotSelectedFaceWithOptions:(id)a3 completion:(id)a4;
@end

@implementation NTKLibrarySelectedFaceSnapshotProvider

- (NTKLibrarySelectedFaceSnapshotProvider)initWithDeviceUUID:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = NTKLibrarySelectedFaceSnapshotProvider;
  v8 = [(NTKLibrarySelectedFaceSnapshotProvider *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    v10 = dispatch_queue_create("com.apple.nanotimekit.selectedFaceSnapshotRequests", 0);
    snapshotRequestsQueue = v9->_snapshotRequestsQueue;
    v9->_snapshotRequestsQueue = v10;

    dispatch_suspend(v9->_snapshotRequestsQueue);
    v9->_resumedQueue = 0;
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v9 selector:sel__handleSnapshotChangedNotification_ name:@"NTKFaceSnapshotChangedNotification" object:0];

    v13 = [[NTKPersistentFaceCollection alloc] initWithCollectionIdentifier:@"LibraryFaces" deviceUUID:v6];
    libraryCollection = v9->_libraryCollection;
    v9->_libraryCollection = &v13->super;

    [(NTKFaceCollection *)v9->_libraryCollection addObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(NTKFaceCollection *)self->_libraryCollection removeObserver:self];
  if (!self->_resumedQueue)
  {
    dispatch_resume(self->_snapshotRequestsQueue);
  }

  v4.receiver = self;
  v4.super_class = NTKLibrarySelectedFaceSnapshotProvider;
  [(NTKLibrarySelectedFaceSnapshotProvider *)&v4 dealloc];
}

- (UIImage)snapshotImage
{
  v3 = NTKSnapshotMappedImageCache();
  v4 = [v3 imageForKey:self->_snapshotKey];

  return v4;
}

- (void)faceCollectionDidLoad:(id)a3
{
  [(NTKLibrarySelectedFaceSnapshotProvider *)self _updateSelectedFaceAndSnapshotKey];
  v4 = [(NTKLibrarySelectedFaceSnapshotProvider *)self snapshotImage];

  if (v4)
  {
    [(NTKLibrarySelectedFaceSnapshotProvider *)self _notifyIfSnapshotAvailable];
  }

  else
  {
    v5 = +[NTKFaceSnapshotClient sharedInstance];
    [v5 requestSnapshotOfFace:self->_selectedFace];
  }

  dispatch_resume(self->_snapshotRequestsQueue);
  self->_resumedQueue = 1;
}

- (void)faceCollection:(id)a3 didSelectFace:(id)a4 atIndex:(unint64_t)a5
{
  [(NTKLibrarySelectedFaceSnapshotProvider *)self _updateSelectedFaceAndSnapshotKey:a3];

  [(NTKLibrarySelectedFaceSnapshotProvider *)self _notifyIfSnapshotAvailable];
}

- (void)_handleSnapshotChangedNotification:(id)a3
{
  v4 = [a3 object];
  if ([(NSString *)self->_snapshotKey isEqualToString:?])
  {
    [(NTKLibrarySelectedFaceSnapshotProvider *)self _notifyIfSnapshotAvailable];
  }
}

- (void)_notifyIfSnapshotAvailable
{
  v3 = [(NTKLibrarySelectedFaceSnapshotProvider *)self snapshotImage];
  if (v3)
  {
    v5 = v3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained snapshotImageUpdated:v5];

    v3 = v5;
  }
}

- (void)_updateSelectedFaceAndSnapshotKey
{
  [(NTKFace *)self->_selectedFace removeObserver:self];
  v3 = [(NTKFaceCollection *)self->_libraryCollection selectedFace];
  selectedFace = self->_selectedFace;
  self->_selectedFace = v3;

  v5 = [(NTKFace *)self->_selectedFace dailySnapshotKey];
  snapshotKey = self->_snapshotKey;
  self->_snapshotKey = v5;

  v7 = self->_selectedFace;

  [(NTKFace *)v7 addObserver:self];
}

- (void)_handleFaceChange:(id)a3
{
  v6 = a3;
  if ([v6 isEqual:self->_selectedFace])
  {
    v4 = [v6 dailySnapshotKey];
    snapshotKey = self->_snapshotKey;
    self->_snapshotKey = v4;

    [(NTKLibrarySelectedFaceSnapshotProvider *)self _notifyIfSnapshotAvailable];
  }
}

- (void)snapshotSelectedFaceWithOptions:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  [objc_opt_class() snapshotCurrentFaceForActiveDeviceWithOptions:v6 completion:v5];
}

+ (void)snapshotCurrentFaceForActiveDeviceWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CBBAE8];
  v8 = a4;
  v9 = [v7 currentDevice];
  v10 = [v9 isPaired];

  if (v10)
  {
    v11 = [MEMORY[0x277CBBAE8] currentDevice];
    [a1 snapshotCurrentFaceForDevice:v11 withOptions:v6 completion:v8];
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NTKLibrarySelectedFaceSnapshotProvider snapshotCurrentFaceForActiveDeviceWithOptions:v12 completion:?];
    }

    (*(v8 + 2))(v8, 0);
  }
}

+ (void)snapshotCurrentFaceForDevice:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 pairingID];
  [a1 snapshotCurrentFaceForDeviceUUID:v10 withOptions:v9 completion:v8];
}

+ (void)snapshotCurrentFaceForDeviceUUID:(id)a3 withOptions:(id)a4 completion:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v16 = @"NTKSnapshotUIOnlyKey";
    v17[0] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    if (v8)
    {
      v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
      [v11 addEntriesFromDictionary:v8];

      v10 = v11;
    }

    v12 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "Calling into SnapshotClient snapshotLibrarySelectedFaceForDeviceUUID with options:%@", &v14, 0xCu);
    }

    v13 = +[NTKFaceSnapshotClient sharedInstance];
    [v13 snapshotLibrarySelectedFaceForDeviceUUID:v7 options:v10 completion:v9];
  }

  else
  {
    v10 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NTKLibrarySelectedFaceSnapshotProvider snapshotCurrentFaceForDeviceUUID:v10 withOptions:? completion:?];
    }
  }
}

- (NTKLibrarySelectedFaceSnapshotProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end