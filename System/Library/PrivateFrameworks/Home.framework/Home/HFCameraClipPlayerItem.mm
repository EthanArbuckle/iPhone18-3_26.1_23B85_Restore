@interface HFCameraClipPlayerItem
+ (id)_assetOptionsForClip:(id)clip;
+ (id)playlistURL;
- (BOOL)isPlayable;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (HFCameraClipPlayerItem)initWithClipManager:(id)manager clip:(id)clip;
- (NSString)description;
- (void)dealloc;
@end

@implementation HFCameraClipPlayerItem

+ (id)playlistURL
{
  if (_MergedGlobals_3_1 != -1)
  {
    dispatch_once(&_MergedGlobals_3_1, &__block_literal_global_3_12);
  }

  v3 = qword_280E02408;

  return v3;
}

void __37__HFCameraClipPlayerItem_playlistURL__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"HFCC://clipPlaylist.m3u8"];
  v1 = qword_280E02408;
  qword_280E02408 = v0;
}

+ (id)_assetOptionsForClip:(id)clip
{
  clipCopy = clip;
  v4 = objc_opt_new();
  videoAssetRequiredHTTPHeaders = [clipCopy videoAssetRequiredHTTPHeaders];

  [v4 setObject:videoAssetRequiredHTTPHeaders forKeyedSubscript:*MEMORY[0x277CE6220]];

  return v4;
}

- (HFCameraClipPlayerItem)initWithClipManager:(id)manager clip:(id)clip
{
  v39 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  clipCopy = clip;
  v10 = clipCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraClipPlayerItem.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"clipManager != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_28:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFCameraClipPlayerItem.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"clip != nil"}];

    goto LABEL_3;
  }

  if (!clipCopy)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (+[HFCameraUtilities disableFullQualityVideoCaching](HFCameraUtilities, "disableFullQualityVideoCaching") || +[HFUtilities isPressDemoModeEnabled])
  {
    v11 = 0;
  }

  else
  {
    v11 = [HFCameraUtilities videoDestinationURLForCameraClip:v10];
    if ([v11 checkResourceIsReachableAndReturnError:0])
    {
      v26 = HFLogForCategory(0xDuLL);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        relativePath = [v11 relativePath];
        hf_prettyDescription = [v10 hf_prettyDescription];
        *buf = 136315650;
        v34 = "[HFCameraClipPlayerItem initWithClipManager:clip:]";
        v35 = 2112;
        v36 = relativePath;
        v37 = 2112;
        v38 = hf_prettyDescription;
        _os_log_impl(&dword_20D9BF000, v26, OS_LOG_TYPE_DEFAULT, "%s instantiating with cached file: %@; clip: %@", buf, 0x20u);
      }

      [(HFCameraClipPlayerItem *)self setIsUsingCachedVideoOnDisk:1];
    }
  }

  if ([(HFCameraClipPlayerItem *)self isUsingCachedVideoOnDisk])
  {
    v12 = 0;
  }

  else
  {
    playlistURL = [objc_opt_class() playlistURL];

    v12 = [objc_opt_class() _assetOptionsForClip:v10];
    v14 = HFLogForCategory(0xDuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      hf_prettyDescription2 = [v10 hf_prettyDescription];
      *buf = 136315394;
      v34 = "[HFCameraClipPlayerItem initWithClipManager:clip:]";
      v35 = 2112;
      v36 = hf_prettyDescription2;
      _os_log_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_DEFAULT, "%s: instantiating with HLS playlist for clip: %@", buf, 0x16u);
    }

    v11 = playlistURL;
  }

  if (+[HFUtilities isPressDemoModeEnabled])
  {
    clipURL = [v10 clipURL];

    v12 = 0;
    v11 = clipURL;
  }

  v17 = [objc_alloc(MEMORY[0x277CE6650]) initWithURL:v11 options:v12];
  if ([(HFCameraClipPlayerItem *)self isUsingCachedVideoOnDisk])
  {
    v18 = 0;
  }

  else
  {
    if (qword_280E02410 != -1)
    {
      dispatch_once(&qword_280E02410, &__block_literal_global_25_3);
    }

    v18 = qword_280E02418;
  }

  v32 = @"duration";
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
  v31.receiver = self;
  v31.super_class = HFCameraClipPlayerItem;
  v20 = [(HFCameraClipPlayerItem *)&v31 initWithAsset:v17 automaticallyLoadedAssetKeys:v19];

  if (v20)
  {
    if (![(HFCameraClipPlayerItem *)v20 isUsingCachedVideoOnDisk])
    {
      resourceLoader = [v17 resourceLoader];
      [resourceLoader setDelegate:v20 queue:v18];

      objc_storeStrong(&v20->_resourceLoaderQueue, v18);
      v22 = +[HFCameraClipVideoAssetContextProvider defaultProvider];
      videoContextProvider = v20->_videoContextProvider;
      v20->_videoContextProvider = v22;
    }

    objc_storeStrong(&v20->_clipManager, manager);
    objc_storeStrong(&v20->_clip, clip);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

void __51__HFCameraClipPlayerItem_initWithClipManager_clip___block_invoke_2()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.Home.cameraClipPlayerResourceLoaderQueue", v2);
  v1 = qword_280E02418;
  qword_280E02418 = v0;
}

- (BOOL)isPlayable
{
  error = [(HFCameraClipPlayerItem *)self error];
  v3 = error == 0;

  return v3;
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  v57 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  resourceCopy = resource;
  v8 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    clip = [(HFCameraClipPlayerItem *)self clip];
    uniqueIdentifier = [clip uniqueIdentifier];
    request = [resourceCopy request];
    *buf = 138412802;
    v52 = uniqueIdentifier;
    v53 = 2112;
    v54 = loaderCopy;
    v55 = 2112;
    v56 = request;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Received resource loader request for clip %@: %@ loadingRequest:%@", buf, 0x20u);
  }

  request2 = [resourceCopy request];
  v13 = [request2 URL];
  absoluteString = [v13 absoluteString];
  v15 = [absoluteString isEqualToString:*MEMORY[0x277CCF380]];

  if (v15)
  {
    clip2 = [(HFCameraClipPlayerItem *)self clip];
    encryptionKey = [clip2 encryptionKey];

    v18 = HFLogForCategory(0x17uLL);
    v19 = v18;
    if (!encryptionKey)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        request3 = [resourceCopy request];
        v41 = [request3 URL];
        clip3 = [(HFCameraClipPlayerItem *)self clip];
        *buf = 138412546;
        v52 = v41;
        v53 = 2112;
        v54 = clip3;
        _os_log_error_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_ERROR, "Asked to load resource for URL %@ but clip has no encryption key: %@", buf, 0x16u);
      }

      v37 = 0;
      encryptionKey = v19;
      goto LABEL_19;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      clip4 = [(HFCameraClipPlayerItem *)self clip];
      uniqueIdentifier2 = [clip4 uniqueIdentifier];
      *buf = 138412290;
      v52 = uniqueIdentifier2;
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Returning encryption key for clip:%@", buf, 0xCu);
    }

    v22 = *MEMORY[0x277CE6180];
    contentInformationRequest = [resourceCopy contentInformationRequest];
    [contentInformationRequest setContentType:v22];

    v24 = [encryptionKey length];
    contentInformationRequest2 = [resourceCopy contentInformationRequest];
    [contentInformationRequest2 setContentLength:v24];

    dataRequest = [resourceCopy dataRequest];
    [dataRequest respondWithData:encryptionKey];

    [resourceCopy finishLoading];
LABEL_10:
    v37 = 1;
LABEL_19:

    goto LABEL_20;
  }

  request4 = [resourceCopy request];
  v28 = [request4 URL];
  playlistURL = [objc_opt_class() playlistURL];
  v30 = [v28 isEqual:playlistURL];

  if (v30)
  {
    videoContextProvider = [(HFCameraClipPlayerItem *)self videoContextProvider];
    clip5 = [(HFCameraClipPlayerItem *)self clip];
    clipManager = [(HFCameraClipPlayerItem *)self clipManager];
    encryptionKey = [videoContextProvider fetchVideoAssetContextForClip:clip5 clipManager:clipManager];

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __81__HFCameraClipPlayerItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke;
    v49[3] = &unk_277DF2748;
    v49[4] = self;
    v34 = resourceCopy;
    v50 = v34;
    v35 = [encryptionKey addFailureBlock:v49];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __81__HFCameraClipPlayerItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_33;
    v46[3] = &unk_277DFA688;
    v47 = v34;
    selfCopy = self;
    v36 = [encryptionKey addSuccessBlock:v46];

    goto LABEL_10;
  }

  if (!+[HFUtilities isPressDemoModeEnabled])
  {
    encryptionKey = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(encryptionKey, OS_LOG_TYPE_ERROR))
    {
      request5 = [resourceCopy request];
      v44 = [request5 URL];
      clip6 = [(HFCameraClipPlayerItem *)self clip];
      *buf = 138412546;
      v52 = v44;
      v53 = 2112;
      v54 = clip6;
      _os_log_error_impl(&dword_20D9BF000, encryptionKey, OS_LOG_TYPE_ERROR, "Asked to load resource for unexpected URL %@ for clip: %@", buf, 0x16u);
    }

    v37 = 0;
    goto LABEL_19;
  }

  v37 = 1;
LABEL_20:

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

void __81__HFCameraClipPlayerItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) clip];
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch video context for clip:%@ with error: %@", &v7, 0x16u);
  }

  [*(a1 + 40) finishLoadingWithError:v3];
  v5 = *MEMORY[0x277D85DE8];
}

void __81__HFCameraClipPlayerItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = [a2 hlsPlaylist];
  if (!v3)
  {
    v4 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "HLS Playlist was nil", buf, 2u);
    }
  }

  v5 = [*(a1 + 32) contentInformationRequest];

  if (v5)
  {
    v6 = [*MEMORY[0x277CE1DD8] identifier];
    v7 = [*(a1 + 32) contentInformationRequest];
    [v7 setContentType:v6];

    v8 = [v3 length];
    v9 = [*(a1 + 32) contentInformationRequest];
    [v9 setContentLength:v8];
  }

  v10 = [*(a1 + 32) dataRequest];
  if (v10)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__HFCameraClipPlayerItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_34;
    v14[3] = &unk_277DFA660;
    v15 = v3;
    v11 = v10;
    v12 = *(a1 + 40);
    v16 = v11;
    v17 = v12;
    v13 = __81__HFCameraClipPlayerItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_34(v14);
    [v11 respondWithData:v13];
  }

  [*(a1 + 32) finishLoading];
}

id __81__HFCameraClipPlayerItem_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke_34(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] length];
  v3 = [a1[5] requestedOffset];
  if (v2 >= v3)
  {
    v2 = v3;
  }

  v4 = [a1[4] length] - v2;
  if (([a1[5] requestsAllDataToEndOfResource] & 1) == 0)
  {
    v5 = [a1[5] requestedLength];
    if (v5 < v4)
    {
      v4 = v5;
    }
  }

  v6 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[5];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1[4], "length")}];
    v24.location = v2;
    v24.length = v4;
    v9 = NSStringFromRange(v24);
    v10 = [a1[6] clip];
    v14 = 138413058;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "dataRequest: %@; playlistData.length: %@; range: %@; clip: %@", &v14, 0x2Au);
  }

  v11 = [a1[4] subdataWithRange:{v2, v4}];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)dealloc
{
  asset = [(HFCameraClipPlayerItem *)self asset];
  resourceLoader = [asset resourceLoader];
  [resourceLoader setDelegate:0 queue:0];

  v5.receiver = self;
  v5.super_class = HFCameraClipPlayerItem;
  [(HFCameraClipPlayerItem *)&v5 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  clip = [(HFCameraClipPlayerItem *)self clip];
  v5 = [v3 appendObject:clip withName:@"clip"];

  v6 = [v3 appendBool:-[HFCameraClipPlayerItem isUsingCachedVideoOnDisk](self withName:{"isUsingCachedVideoOnDisk"), @"usingCachedVideoOnDisk"}];
  build = [v3 build];

  return build;
}

@end