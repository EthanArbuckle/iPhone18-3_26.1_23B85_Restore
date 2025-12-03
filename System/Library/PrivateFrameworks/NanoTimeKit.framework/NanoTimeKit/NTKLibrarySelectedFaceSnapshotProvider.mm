@interface NTKLibrarySelectedFaceSnapshotProvider
+ (void)snapshotCurrentFaceForActiveDeviceWithOptions:(id)options completion:(id)completion;
+ (void)snapshotCurrentFaceForDevice:(id)device withOptions:(id)options completion:(id)completion;
+ (void)snapshotCurrentFaceForDeviceUUID:(id)d withOptions:(id)options completion:(id)completion;
- (NTKLibrarySelectedFaceSnapshotProvider)initWithDeviceUUID:(id)d delegate:(id)delegate;
- (NTKLibrarySelectedFaceSnapshotProviderDelegate)delegate;
- (UIImage)snapshotImage;
- (void)_handleFaceChange:(id)change;
- (void)_handleSnapshotChangedNotification:(id)notification;
- (void)_notifyIfSnapshotAvailable;
- (void)_updateSelectedFaceAndSnapshotKey;
- (void)dealloc;
- (void)faceCollection:(id)collection didSelectFace:(id)face atIndex:(unint64_t)index;
- (void)faceCollectionDidLoad:(id)load;
- (void)snapshotSelectedFaceWithOptions:(id)options completion:(id)completion;
@end

@implementation NTKLibrarySelectedFaceSnapshotProvider

- (NTKLibrarySelectedFaceSnapshotProvider)initWithDeviceUUID:(id)d delegate:(id)delegate
{
  dCopy = d;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = NTKLibrarySelectedFaceSnapshotProvider;
  v8 = [(NTKLibrarySelectedFaceSnapshotProvider *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = dispatch_queue_create("com.apple.nanotimekit.selectedFaceSnapshotRequests", 0);
    snapshotRequestsQueue = v9->_snapshotRequestsQueue;
    v9->_snapshotRequestsQueue = v10;

    dispatch_suspend(v9->_snapshotRequestsQueue);
    v9->_resumedQueue = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__handleSnapshotChangedNotification_ name:@"NTKFaceSnapshotChangedNotification" object:0];

    v13 = [[NTKPersistentFaceCollection alloc] initWithCollectionIdentifier:@"LibraryFaces" deviceUUID:dCopy];
    libraryCollection = v9->_libraryCollection;
    v9->_libraryCollection = &v13->super;

    [(NTKFaceCollection *)v9->_libraryCollection addObserver:v9];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (void)faceCollectionDidLoad:(id)load
{
  [(NTKLibrarySelectedFaceSnapshotProvider *)self _updateSelectedFaceAndSnapshotKey];
  snapshotImage = [(NTKLibrarySelectedFaceSnapshotProvider *)self snapshotImage];

  if (snapshotImage)
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

- (void)faceCollection:(id)collection didSelectFace:(id)face atIndex:(unint64_t)index
{
  [(NTKLibrarySelectedFaceSnapshotProvider *)self _updateSelectedFaceAndSnapshotKey:collection];

  [(NTKLibrarySelectedFaceSnapshotProvider *)self _notifyIfSnapshotAvailable];
}

- (void)_handleSnapshotChangedNotification:(id)notification
{
  object = [notification object];
  if ([(NSString *)self->_snapshotKey isEqualToString:?])
  {
    [(NTKLibrarySelectedFaceSnapshotProvider *)self _notifyIfSnapshotAvailable];
  }
}

- (void)_notifyIfSnapshotAvailable
{
  snapshotImage = [(NTKLibrarySelectedFaceSnapshotProvider *)self snapshotImage];
  if (snapshotImage)
  {
    v5 = snapshotImage;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained snapshotImageUpdated:v5];

    snapshotImage = v5;
  }
}

- (void)_updateSelectedFaceAndSnapshotKey
{
  [(NTKFace *)self->_selectedFace removeObserver:self];
  selectedFace = [(NTKFaceCollection *)self->_libraryCollection selectedFace];
  selectedFace = self->_selectedFace;
  self->_selectedFace = selectedFace;

  dailySnapshotKey = [(NTKFace *)self->_selectedFace dailySnapshotKey];
  snapshotKey = self->_snapshotKey;
  self->_snapshotKey = dailySnapshotKey;

  v7 = self->_selectedFace;

  [(NTKFace *)v7 addObserver:self];
}

- (void)_handleFaceChange:(id)change
{
  changeCopy = change;
  if ([changeCopy isEqual:self->_selectedFace])
  {
    dailySnapshotKey = [changeCopy dailySnapshotKey];
    snapshotKey = self->_snapshotKey;
    self->_snapshotKey = dailySnapshotKey;

    [(NTKLibrarySelectedFaceSnapshotProvider *)self _notifyIfSnapshotAvailable];
  }
}

- (void)snapshotSelectedFaceWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  [objc_opt_class() snapshotCurrentFaceForActiveDeviceWithOptions:optionsCopy completion:completionCopy];
}

+ (void)snapshotCurrentFaceForActiveDeviceWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  v7 = MEMORY[0x277CBBAE8];
  completionCopy = completion;
  currentDevice = [v7 currentDevice];
  isPaired = [currentDevice isPaired];

  if (isPaired)
  {
    currentDevice2 = [MEMORY[0x277CBBAE8] currentDevice];
    [self snapshotCurrentFaceForDevice:currentDevice2 withOptions:optionsCopy completion:completionCopy];
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [NTKLibrarySelectedFaceSnapshotProvider snapshotCurrentFaceForActiveDeviceWithOptions:v12 completion:?];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

+ (void)snapshotCurrentFaceForDevice:(id)device withOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  pairingID = [device pairingID];
  [self snapshotCurrentFaceForDeviceUUID:pairingID withOptions:optionsCopy completion:completionCopy];
}

+ (void)snapshotCurrentFaceForDeviceUUID:(id)d withOptions:(id)options completion:(id)completion
{
  v17[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  optionsCopy = options;
  completionCopy = completion;
  if (completionCopy)
  {
    v16 = @"NTKSnapshotUIOnlyKey";
    v17[0] = MEMORY[0x277CBEC38];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    if (optionsCopy)
    {
      v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
      [v11 addEntriesFromDictionary:optionsCopy];

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
    [v13 snapshotLibrarySelectedFaceForDeviceUUID:dCopy options:v10 completion:completionCopy];
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