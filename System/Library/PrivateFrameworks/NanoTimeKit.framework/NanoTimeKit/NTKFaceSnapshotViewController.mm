@interface NTKFaceSnapshotViewController
- (NTKFaceSnapshotViewController)initWithFace:(id)face;
- (void)_attemptToFetchSnapshot;
- (void)_handleSnapshot:(id)snapshot forKey:(id)key;
- (void)_updateFaceSnapshotIfNecessaryOfFace;
- (void)complicationTemplatesChanged;
- (void)complicationsChanged;
- (void)dealloc;
- (void)faceConfigurationDidChange:(id)change;
- (void)faceResourceDirectoryDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NTKFaceSnapshotViewController

- (NTKFaceSnapshotViewController)initWithFace:(id)face
{
  v18 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  v13.receiver = self;
  v13.super_class = NTKFaceSnapshotViewController;
  v6 = [(NTKFaceSnapshotViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_face, face);
    [(NTKFace *)v7->_face addObserver:v7];
    v8 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      face = [(NTKFaceSnapshotViewController *)v7 face];
      *buf = 134218242;
      v15 = v7;
      v16 = 2112;
      v17 = face;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Observing face %@", buf, 0x16u);
    }

    [(NTKFaceSnapshotViewController *)v7 _attemptToFetchSnapshot];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_complicationsChanged name:@"NTKWidgetComplicationProviderComplicationsDidChange" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel_complicationTemplatesChanged name:@"NTKCompanionWidgetComplicationManagerComplicationTemplatesDidChange" object:0];
  }

  return v7;
}

- (void)dealloc
{
  [(NTKFace *)self->_face removeObserver:self];
  if (self->_snapshotRequest)
  {
    v3 = +[NTKFaceSnapshotCache snapshotCache];
    [v3 cancelSnapshotRequest:self->_snapshotRequest];
  }

  v4.receiver = self;
  v4.super_class = NTKFaceSnapshotViewController;
  [(NTKFaceSnapshotViewController *)&v4 dealloc];
}

- (void)_attemptToFetchSnapshot
{
  v36 = *MEMORY[0x277D85DE8];
  if (self->_snapshotRequest)
  {
    v3 = +[NTKFaceSnapshotCache snapshotCache];
    [v3 cancelSnapshotRequest:self->_snapshotRequest];

    snapshotRequest = self->_snapshotRequest;
    self->_snapshotRequest = 0;
  }

  v5 = +[NTKFaceSnapshotCache snapshotCache];
  face = [(NTKFaceSnapshotViewController *)self face];
  v7 = [v5 cachedSnapshotOfFace:face];

  face2 = [(NTKFaceSnapshotViewController *)self face];
  dailySnapshotKey = [face2 dailySnapshotKey];
  v10 = [dailySnapshotKey copy];

  face3 = [(NTKFaceSnapshotViewController *)self face];
  unsafeDailySnapshotKey = [face3 unsafeDailySnapshotKey];
  v13 = [unsafeDailySnapshotKey copy];

  v14 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v15)
    {
      face4 = [(NTKFaceSnapshotViewController *)self face];
      *buf = 134218242;
      selfCopy2 = self;
      v34 = 2112;
      v35 = face4;
      _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Fetched cached snapshot of face %@", buf, 0x16u);
    }

    [(NTKFaceSnapshotViewController *)self _handleSnapshot:v7 forKey:v10];
  }

  else
  {
    if (v15)
    {
      face5 = [(NTKFaceSnapshotViewController *)self face];
      *buf = 134218242;
      selfCopy2 = self;
      v34 = 2112;
      v35 = face5;
      _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Cached snapshot miss of face %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v18 = [[NTKFaceSnapshotCacheRequestOptions alloc] initWithPriority:3];
    v19 = [NTKFaceSnapshotCacheRequest alloc];
    face6 = [(NTKFaceSnapshotViewController *)self face];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __56__NTKFaceSnapshotViewController__attemptToFetchSnapshot__block_invoke;
    v27 = &unk_278783E58;
    objc_copyWeak(&v31, buf);
    selfCopy3 = self;
    v29 = v10;
    v30 = v13;
    v21 = [(NTKFaceSnapshotCacheRequest *)v19 initWithFace:face6 options:v18 completion:&v24];

    v22 = [NTKFaceSnapshotCache snapshotCache:v24];
    [v22 fetchSnapshotWithRequest:v21];

    v23 = self->_snapshotRequest;
    self->_snapshotRequest = v21;

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }
}

void __56__NTKFaceSnapshotViewController__attemptToFetchSnapshot__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = [*(a1 + 32) face];
    v7 = [v6 dailySnapshotKey];

    v8 = [*(a1 + 32) face];
    v9 = [v8 unsafeDailySnapshotKey];

    if ([v7 isEqualToString:*(a1 + 40)])
    {
      v10 = objc_loadWeakRetained((a1 + 56));
      [v10 _handleSnapshot:v4 forKey:*(a1 + 40)];
    }

    else
    {
      v11 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
        v15 = [v12 face];
        *buf = 134219266;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        v22 = 2112;
        v23 = v14;
        v24 = 2112;
        v25 = v7;
        v26 = 2112;
        v27 = v9;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Snapshot key changed from %@ / %@ to %@ / %@ of face %@. Retrying…", buf, 0x3Eu);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__NTKFaceSnapshotViewController__attemptToFetchSnapshot__block_invoke_10;
      block[3] = &unk_27877DC58;
      objc_copyWeak(&v17, (a1 + 56));
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v17);
    }
  }
}

void __56__NTKFaceSnapshotViewController__attemptToFetchSnapshot__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _attemptToFetchSnapshot];
}

- (void)_handleSnapshot:(id)snapshot forKey:(id)key
{
  v19 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  keyCopy = key;
  v8 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    face = [(NTKFaceSnapshotViewController *)self face];
    v13 = 134218498;
    selfCopy = self;
    v15 = 2112;
    v16 = snapshotCopy;
    v17 = 2112;
    v18 = face;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Handling snapshot %@ of face %@", &v13, 0x20u);
  }

  [(NTKFaceSnapshotViewController *)self setSnapshotImage:snapshotCopy];
  v10 = [keyCopy copy];

  [(NTKFaceSnapshotViewController *)self setSnapshotKeyOfSnapshotImage:v10];
  imageView = [(NTKFaceSnapshotViewController *)self imageView];
  [imageView setImage:snapshotCopy];

  snapshotRequest = self->_snapshotRequest;
  self->_snapshotRequest = 0;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = NTKFaceSnapshotViewController;
  [(NTKFaceSnapshotViewController *)&v10 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  snapshotImage = [(NTKFaceSnapshotViewController *)self snapshotImage];
  v5 = [v3 initWithImage:snapshotImage];
  imageView = self->_imageView;
  self->_imageView = v5;

  view = [(NTKFaceSnapshotViewController *)self view];
  imageView = [(NTKFaceSnapshotViewController *)self imageView];
  [view addSubview:imageView];

  imageView2 = [(NTKFaceSnapshotViewController *)self imageView];
  [imageView2 setContentMode:2];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = NTKFaceSnapshotViewController;
  [(NTKFaceSnapshotViewController *)&v17 viewWillLayoutSubviews];
  view = [(NTKFaceSnapshotViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v9;
  v18.size.height = v11;
  v12 = CGRectGetWidth(v18) * 0.5;
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  v13 = CGRectGetHeight(v19) * 0.5;
  imageView = [(NTKFaceSnapshotViewController *)self imageView];
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  Width = CGRectGetWidth(v20);
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  [imageView setBounds:{0.0, 0.0, Width, CGRectGetHeight(v21)}];

  imageView2 = [(NTKFaceSnapshotViewController *)self imageView];
  [imageView2 setCenter:{v12, v13}];
}

- (void)faceConfigurationDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = changeCopy;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Face config changed for face %@", &v6, 0x16u);
  }

  [(NTKFaceSnapshotViewController *)self _updateFaceSnapshotIfNecessaryOfFace];
}

- (void)faceResourceDirectoryDidChange:(id)change
{
  v10 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = changeCopy;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Resource directory changed for face %@", &v6, 0x16u);
  }

  [(NTKFaceSnapshotViewController *)self _updateFaceSnapshotIfNecessaryOfFace];
}

- (void)complicationsChanged
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Complications changed", &v4, 0xCu);
  }

  [(NTKFaceSnapshotViewController *)self _updateFaceSnapshotIfNecessaryOfFace];
}

- (void)complicationTemplatesChanged
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Complication templates changed", &v4, 0xCu);
  }

  [(NTKFaceSnapshotViewController *)self _updateFaceSnapshotIfNecessaryOfFace];
}

- (void)_updateFaceSnapshotIfNecessaryOfFace
{
  snapshotKeyOfSnapshotImage = [(NTKFaceSnapshotViewController *)self snapshotKeyOfSnapshotImage];
  face = [(NTKFaceSnapshotViewController *)self face];
  dailySnapshotKey = [face dailySnapshotKey];
  v6 = [snapshotKeyOfSnapshotImage isEqualToString:dailySnapshotKey];

  if ((v6 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__NTKFaceSnapshotViewController__updateFaceSnapshotIfNecessaryOfFace__block_invoke;
    block[3] = &unk_27877DB10;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

@end