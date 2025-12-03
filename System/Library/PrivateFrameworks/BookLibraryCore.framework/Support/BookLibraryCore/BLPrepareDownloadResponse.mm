@interface BLPrepareDownloadResponse
- (BLPrepareDownloadResponse)initWithDownload:(id)download;
- (BLPrepareDownloadResponse)initWithInstallInfo:(id)info;
- (NSString)URLSessionIdentifier;
- (id)sessionConfiguration;
- (id)sessionTaskWithSession:(id)session;
@end

@implementation BLPrepareDownloadResponse

- (BLPrepareDownloadResponse)initWithDownload:(id)download
{
  downloadCopy = download;
  v42.receiver = self;
  v42.super_class = BLPrepareDownloadResponse;
  v5 = [(BLPrepareDownloadResponse *)&v42 init];
  if (v5)
  {
    downloadID = [downloadCopy downloadID];
    downloadIdentifier = v5->_downloadIdentifier;
    v5->_downloadIdentifier = downloadID;

    storeIdentifier = [downloadCopy storeIdentifier];
    v5->_assetIdentifier = [storeIdentifier longLongValue];

    storePlaylistIdentifier = [downloadCopy storePlaylistIdentifier];
    playlistIdentifier = v5->_playlistIdentifier;
    v5->_playlistIdentifier = storePlaylistIdentifier;

    artistName = [downloadCopy artistName];
    artistName = v5->_artistName;
    v5->_artistName = artistName;

    title = [downloadCopy title];
    title = v5->_title;
    v5->_title = title;

    subtitle = [downloadCopy subtitle];
    subtitle = v5->_subtitle;
    v5->_subtitle = subtitle;

    collectionArtistName = [downloadCopy collectionArtistName];
    collectionArtistName = v5->_collectionArtistName;
    v5->_collectionArtistName = collectionArtistName;

    collectionTitle = [downloadCopy collectionTitle];
    collectionTitle = v5->_collectionTitle;
    v5->_collectionTitle = collectionTitle;

    genre = [downloadCopy genre];
    genre = v5->_genre;
    v5->_genre = genre;

    thumbnailImageURL = [downloadCopy thumbnailImageURL];
    thumbnailImageURL = v5->_thumbnailImageURL;
    v5->_thumbnailImageURL = thumbnailImageURL;

    kind = [downloadCopy kind];
    v26 = kind;
    if (kind)
    {
      v27 = kind;
    }

    else
    {
      v27 = @"ebook";
    }

    objc_storeStrong(&v5->_kind, v27);
    isRestore = [downloadCopy isRestore];
    v5->_isRestore = [isRestore BOOLValue];

    isSample = [downloadCopy isSample];
    v5->_isSample = [isSample BOOLValue];

    isPurchase = [downloadCopy isPurchase];
    v5->_isPurchase = [isPurchase BOOLValue];

    persistentIdentifier = [downloadCopy persistentIdentifier];
    v5->_persistentIdentifier = [persistentIdentifier longLongValue];

    accountID = [downloadCopy accountID];
    storeAccountIdentifier = v5->_storeAccountIdentifier;
    v5->_storeAccountIdentifier = accountID;

    permlink = [downloadCopy permlink];
    permLink = v5->_permLink;
    v5->_permLink = permlink;

    isLocalCacheServer = [downloadCopy isLocalCacheServer];
    v5->_isLocalCacheServer = [isLocalCacheServer BOOLValue];

    transactionIdentifier = [downloadCopy transactionIdentifier];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = transactionIdentifier;

    cancelDownloadURL = [downloadCopy cancelDownloadURL];
    cancelDownloadURL = v5->_cancelDownloadURL;
    v5->_cancelDownloadURL = cancelDownloadURL;
  }

  return v5;
}

- (BLPrepareDownloadResponse)initWithInstallInfo:(id)info
{
  infoCopy = info;
  v41.receiver = self;
  v41.super_class = BLPrepareDownloadResponse;
  v5 = [(BLPrepareDownloadResponse *)&v41 init];
  if (v5)
  {
    downloadID = [infoCopy downloadID];
    downloadIdentifier = v5->_downloadIdentifier;
    v5->_downloadIdentifier = downloadID;

    storeIdentifier = [infoCopy storeIdentifier];
    v5->_assetIdentifier = [storeIdentifier longLongValue];

    storePlaylistIdentifier = [infoCopy storePlaylistIdentifier];
    playlistIdentifier = v5->_playlistIdentifier;
    v5->_playlistIdentifier = storePlaylistIdentifier;

    artistName = [infoCopy artistName];
    artistName = v5->_artistName;
    v5->_artistName = artistName;

    title = [infoCopy title];
    title = v5->_title;
    v5->_title = title;

    subtitle = [infoCopy subtitle];
    subtitle = v5->_subtitle;
    v5->_subtitle = subtitle;

    collectionArtistName = [infoCopy collectionArtistName];
    collectionArtistName = v5->_collectionArtistName;
    v5->_collectionArtistName = collectionArtistName;

    collectionTitle = [infoCopy collectionTitle];
    collectionTitle = v5->_collectionTitle;
    v5->_collectionTitle = collectionTitle;

    genre = [infoCopy genre];
    genre = v5->_genre;
    v5->_genre = genre;

    thumbnailImageURL = [infoCopy thumbnailImageURL];
    thumbnailImageURL = v5->_thumbnailImageURL;
    v5->_thumbnailImageURL = thumbnailImageURL;

    kind = [infoCopy kind];
    v26 = kind;
    if (kind)
    {
      v27 = kind;
    }

    else
    {
      v27 = @"ebook";
    }

    objc_storeStrong(&v5->_kind, v27);
    isRestore = [infoCopy isRestore];
    v5->_isRestore = [isRestore BOOLValue];

    isSample = [infoCopy isSample];
    v5->_isSample = [isSample BOOLValue];

    isPurchase = [infoCopy isPurchase];
    v5->_isPurchase = [isPurchase BOOLValue];

    persistentIdentifier = [infoCopy persistentIdentifier];
    v5->_persistentIdentifier = [persistentIdentifier longLongValue];

    accountIdentifier = [infoCopy accountIdentifier];
    storeAccountIdentifier = v5->_storeAccountIdentifier;
    v5->_storeAccountIdentifier = accountIdentifier;

    permlink = [infoCopy permlink];
    permLink = v5->_permLink;
    v5->_permLink = permlink;

    transactionIdentifier = [infoCopy transactionIdentifier];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = transactionIdentifier;

    cancelDownloadURL = [infoCopy cancelDownloadURL];
    cancelDownloadURL = v5->_cancelDownloadURL;
    v5->_cancelDownloadURL = cancelDownloadURL;
  }

  return v5;
}

- (id)sessionConfiguration
{
  uRLSessionIdentifier = [(BLPrepareDownloadResponse *)self URLSessionIdentifier];
  v4 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:uRLSessionIdentifier];

  [v4 setAllowsCellularAccess:{-[NSURLRequest allowsCellularAccess](self->_URLRequest, "allowsCellularAccess")}];
  [v4 setAllowsExpensiveNetworkAccess:{-[NSURLRequest allowsExpensiveNetworkAccess](self->_URLRequest, "allowsExpensiveNetworkAccess")}];
  [v4 set_infersDiscretionaryFromOriginatingClient:self->_discretionary];
  [v4 setHTTPCookieAcceptPolicy:1];
  [v4 setHTTPShouldSetCookies:0];
  [v4 setHTTPShouldUsePipelining:1];
  [v4 setRequestCachePolicy:1];
  [v4 setSessionSendsLaunchEvents:1];
  [v4 set_allowsRetryForBackgroundDataTasks:1];
  [v4 set_requiresPowerPluggedIn:self->_requiresPowerPluggedIn];
  [v4 set_sourceApplicationBundleIdentifier:self->_clientIdentifier];
  [v4 set_sourceApplicationSecondaryIdentifier:self->_clientSecondaryIdentifier];
  [v4 setSessionSendsLaunchEvents:0];
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[Prepare]: Created a background session", v7, 2u);
  }

  return v4;
}

- (id)sessionTaskWithSession:(id)session
{
  URLRequest = self->_URLRequest;
  if (URLRequest)
  {
    v5 = [session dataTaskWithRequest:URLRequest];
    [v5 bl_setDataConsumer:self->_dataConsumer];
  }

  else
  {
    v5 = 0;
  }

  [v5 set_priority:self->_taskPriority];

  return v5;
}

- (NSString)URLSessionIdentifier
{
  v3 = [NSMutableString stringWithString:@"com.apple.bookassetd."];
  v4 = v3;
  if (self->_clientIdentifier)
  {
    [v3 appendString:?];
    [v4 appendString:@"."];
  }

  if (self->_clientSecondaryIdentifier)
  {
    [v4 appendString:?];
    [v4 appendString:@"."];
  }

  if (self->_discretionary)
  {
    [v4 appendString:@"discretionary."];
  }

  if (self->_requiresPowerPluggedIn)
  {
    [v4 appendString:@"powered."];
  }

  if (![(NSURLRequest *)self->_URLRequest allowsCellularAccess])
  {
    [v4 appendString:@"wifi."];
  }

  if (![(NSURLRequest *)self->_URLRequest allowsExpensiveNetworkAccess])
  {
    [v4 appendString:@"inexpensive."];
  }

  [v4 appendString:@"default"];

  return v4;
}

@end