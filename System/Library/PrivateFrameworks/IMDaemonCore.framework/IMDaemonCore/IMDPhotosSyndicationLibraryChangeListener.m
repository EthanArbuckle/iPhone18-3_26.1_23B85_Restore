@interface IMDPhotosSyndicationLibraryChangeListener
+ (id)sharedInstance;
- (IMDPhotosSyndicationLibraryChangeListener)init;
- (PHFetchOptions)analysisFetchOptions;
- (void)dealloc;
- (void)photoLibraryDidChange:(id)a3;
- (void)startListening;
- (void)stopListening;
@end

@implementation IMDPhotosSyndicationLibraryChangeListener

+ (id)sharedInstance
{
  if (qword_281421160 != -1)
  {
    sub_22B7D5FE4();
  }

  v3 = qword_281420FE0;

  return v3;
}

- (IMDPhotosSyndicationLibraryChangeListener)init
{
  v12.receiver = self;
  v12.super_class = IMDPhotosSyndicationLibraryChangeListener;
  v2 = [(IMDPhotosSyndicationLibraryChangeListener *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v4 = [v3 photoAnalysisInSpotlightEnabled];

    if (v4)
    {
      v5 = [MEMORY[0x277CD9948] wellKnownPhotoLibraryURLForIdentifier:3];
      v6 = [objc_alloc(MEMORY[0x277CD9948]) initWithPhotoLibraryURL:v5];
      syndicationLibrary = v2->_syndicationLibrary;
      v2->_syndicationLibrary = v6;

      v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
      v9 = dispatch_queue_create("com.apple.imagent.SyndicationLibraryChangeObserver", v8);
      changeObservationQueue = v2->_changeObservationQueue;
      v2->_changeObservationQueue = v9;
    }
  }

  return v2;
}

- (void)dealloc
{
  [(IMDPhotosSyndicationLibraryChangeListener *)self stopListening];
  v3.receiver = self;
  v3.super_class = IMDPhotosSyndicationLibraryChangeListener;
  [(IMDPhotosSyndicationLibraryChangeListener *)&v3 dealloc];
}

- (void)startListening
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 photoAnalysisInSpotlightEnabled];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        syndicationLibrary = self->_syndicationLibrary;
        v8 = 138412290;
        v9 = syndicationLibrary;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Started listening for changes to the syndication library. syndicationLibrary: %@", &v8, 0xCu);
      }
    }

    [(PHPhotoLibrary *)self->_syndicationLibrary registerChangeObserver:self];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopListening
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 photoAnalysisInSpotlightEnabled];

  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        syndicationLibrary = self->_syndicationLibrary;
        v8 = 138412290;
        v9 = syndicationLibrary;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Stopped listening to changes to the syndication library. syndicationLibrary: %@", &v8, 0xCu);
      }
    }

    [(PHPhotoLibrary *)self->_syndicationLibrary unregisterChangeObserver:self];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (PHFetchOptions)analysisFetchOptions
{
  v16[1] = *MEMORY[0x277D85DE8];
  analysisFetchOptions = self->_analysisFetchOptions;
  if (!analysisFetchOptions)
  {
    objc_initWeak(&v14, self->_syndicationLibrary);
    v4 = objc_alloc_init(MEMORY[0x277CD9880]);
    v5 = objc_loadWeakRetained(&v14);
    [(PHFetchOptions *)v4 setPhotoLibrary:v5];

    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
    v16[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [(PHFetchOptions *)v4 setSortDescriptors:v7];

    v8 = *MEMORY[0x277CD9B10];
    v15[0] = *MEMORY[0x277CD9A80];
    v15[1] = v8;
    v15[2] = *MEMORY[0x277CD9AD0];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    [(PHFetchOptions *)v4 setFetchPropertySets:v9];

    v11 = self->_analysisFetchOptions;
    p_analysisFetchOptions = &self->_analysisFetchOptions;
    *p_analysisFetchOptions = v4;

    objc_destroyWeak(&v14);
    analysisFetchOptions = *p_analysisFetchOptions;
  }

  v12 = *MEMORY[0x277D85DE8];

  return analysisFetchOptions;
}

- (void)photoLibraryDidChange:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Syndication library changed. Ingesting new analysis data. change: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 totalChangeCount];
      *buf = 134217984;
      v14 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Total change count: %lu.", buf, 0xCu);
    }
  }

  v8 = [(IMDPhotosSyndicationLibraryChangeListener *)self changeObservationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B5EE804;
  v11[3] = &unk_278702FA0;
  v11[4] = self;
  v12 = v4;
  v9 = v4;
  dispatch_async(v8, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end