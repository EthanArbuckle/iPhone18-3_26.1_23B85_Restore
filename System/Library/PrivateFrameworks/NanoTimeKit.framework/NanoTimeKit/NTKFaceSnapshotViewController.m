@interface NTKFaceSnapshotViewController
- (NTKFaceSnapshotViewController)initWithFace:(id)a3;
- (void)_attemptToFetchSnapshot;
- (void)_handleSnapshot:(id)a3 forKey:(id)a4;
- (void)_updateFaceSnapshotIfNecessaryOfFace;
- (void)complicationTemplatesChanged;
- (void)complicationsChanged;
- (void)dealloc;
- (void)faceConfigurationDidChange:(id)a3;
- (void)faceResourceDirectoryDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation NTKFaceSnapshotViewController

- (NTKFaceSnapshotViewController)initWithFace:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NTKFaceSnapshotViewController;
  v6 = [(NTKFaceSnapshotViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_face, a3);
    [(NTKFace *)v7->_face addObserver:v7];
    v8 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NTKFaceSnapshotViewController *)v7 face];
      *buf = 134218242;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Observing face %@", buf, 0x16u);
    }

    [(NTKFaceSnapshotViewController *)v7 _attemptToFetchSnapshot];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v7 selector:sel_complicationsChanged name:@"NTKWidgetComplicationProviderComplicationsDidChange" object:0];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:v7 selector:sel_complicationTemplatesChanged name:@"NTKCompanionWidgetComplicationManagerComplicationTemplatesDidChange" object:0];
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
  v6 = [(NTKFaceSnapshotViewController *)self face];
  v7 = [v5 cachedSnapshotOfFace:v6];

  v8 = [(NTKFaceSnapshotViewController *)self face];
  v9 = [v8 dailySnapshotKey];
  v10 = [v9 copy];

  v11 = [(NTKFaceSnapshotViewController *)self face];
  v12 = [v11 unsafeDailySnapshotKey];
  v13 = [v12 copy];

  v14 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v15)
    {
      v16 = [(NTKFaceSnapshotViewController *)self face];
      *buf = 134218242;
      v33 = self;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Fetched cached snapshot of face %@", buf, 0x16u);
    }

    [(NTKFaceSnapshotViewController *)self _handleSnapshot:v7 forKey:v10];
  }

  else
  {
    if (v15)
    {
      v17 = [(NTKFaceSnapshotViewController *)self face];
      *buf = 134218242;
      v33 = self;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_22D9C5000, v14, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Cached snapshot miss of face %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v18 = [[NTKFaceSnapshotCacheRequestOptions alloc] initWithPriority:3];
    v19 = [NTKFaceSnapshotCacheRequest alloc];
    v20 = [(NTKFaceSnapshotViewController *)self face];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __56__NTKFaceSnapshotViewController__attemptToFetchSnapshot__block_invoke;
    v27 = &unk_278783E58;
    objc_copyWeak(&v31, buf);
    v28 = self;
    v29 = v10;
    v30 = v13;
    v21 = [(NTKFaceSnapshotCacheRequest *)v19 initWithFace:v20 options:v18 completion:&v24];

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

- (void)_handleSnapshot:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NTKFaceSnapshotViewController *)self face];
    v13 = 134218498;
    v14 = self;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Handling snapshot %@ of face %@", &v13, 0x20u);
  }

  [(NTKFaceSnapshotViewController *)self setSnapshotImage:v6];
  v10 = [v7 copy];

  [(NTKFaceSnapshotViewController *)self setSnapshotKeyOfSnapshotImage:v10];
  v11 = [(NTKFaceSnapshotViewController *)self imageView];
  [v11 setImage:v6];

  snapshotRequest = self->_snapshotRequest;
  self->_snapshotRequest = 0;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = NTKFaceSnapshotViewController;
  [(NTKFaceSnapshotViewController *)&v10 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = [(NTKFaceSnapshotViewController *)self snapshotImage];
  v5 = [v3 initWithImage:v4];
  imageView = self->_imageView;
  self->_imageView = v5;

  v7 = [(NTKFaceSnapshotViewController *)self view];
  v8 = [(NTKFaceSnapshotViewController *)self imageView];
  [v7 addSubview:v8];

  v9 = [(NTKFaceSnapshotViewController *)self imageView];
  [v9 setContentMode:2];
}

- (void)viewWillLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = NTKFaceSnapshotViewController;
  [(NTKFaceSnapshotViewController *)&v17 viewWillLayoutSubviews];
  v3 = [(NTKFaceSnapshotViewController *)self view];
  [v3 bounds];
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
  v14 = [(NTKFaceSnapshotViewController *)self imageView];
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  Width = CGRectGetWidth(v20);
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  [v14 setBounds:{0.0, 0.0, Width, CGRectGetHeight(v21)}];

  v16 = [(NTKFaceSnapshotViewController *)self imageView];
  [v16 setCenter:{v12, v13}];
}

- (void)faceConfigurationDidChange:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_22D9C5000, v5, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Face config changed for face %@", &v6, 0x16u);
  }

  [(NTKFaceSnapshotViewController *)self _updateFaceSnapshotIfNecessaryOfFace];
}

- (void)faceResourceDirectoryDidChange:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain(4, "NTKLoggingDomainSnapshot");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v4;
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
    v5 = self;
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
    v5 = self;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "SnapshotVC %p: Complication templates changed", &v4, 0xCu);
  }

  [(NTKFaceSnapshotViewController *)self _updateFaceSnapshotIfNecessaryOfFace];
}

- (void)_updateFaceSnapshotIfNecessaryOfFace
{
  v3 = [(NTKFaceSnapshotViewController *)self snapshotKeyOfSnapshotImage];
  v4 = [(NTKFaceSnapshotViewController *)self face];
  v5 = [v4 dailySnapshotKey];
  v6 = [v3 isEqualToString:v5];

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