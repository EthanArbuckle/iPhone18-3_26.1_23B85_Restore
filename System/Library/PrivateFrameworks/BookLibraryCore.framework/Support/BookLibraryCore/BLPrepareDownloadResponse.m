@interface BLPrepareDownloadResponse
- (BLPrepareDownloadResponse)initWithDownload:(id)a3;
- (BLPrepareDownloadResponse)initWithInstallInfo:(id)a3;
- (NSString)URLSessionIdentifier;
- (id)sessionConfiguration;
- (id)sessionTaskWithSession:(id)a3;
@end

@implementation BLPrepareDownloadResponse

- (BLPrepareDownloadResponse)initWithDownload:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = BLPrepareDownloadResponse;
  v5 = [(BLPrepareDownloadResponse *)&v42 init];
  if (v5)
  {
    v6 = [v4 downloadID];
    downloadIdentifier = v5->_downloadIdentifier;
    v5->_downloadIdentifier = v6;

    v8 = [v4 storeIdentifier];
    v5->_assetIdentifier = [v8 longLongValue];

    v9 = [v4 storePlaylistIdentifier];
    playlistIdentifier = v5->_playlistIdentifier;
    v5->_playlistIdentifier = v9;

    v11 = [v4 artistName];
    artistName = v5->_artistName;
    v5->_artistName = v11;

    v13 = [v4 title];
    title = v5->_title;
    v5->_title = v13;

    v15 = [v4 subtitle];
    subtitle = v5->_subtitle;
    v5->_subtitle = v15;

    v17 = [v4 collectionArtistName];
    collectionArtistName = v5->_collectionArtistName;
    v5->_collectionArtistName = v17;

    v19 = [v4 collectionTitle];
    collectionTitle = v5->_collectionTitle;
    v5->_collectionTitle = v19;

    v21 = [v4 genre];
    genre = v5->_genre;
    v5->_genre = v21;

    v23 = [v4 thumbnailImageURL];
    thumbnailImageURL = v5->_thumbnailImageURL;
    v5->_thumbnailImageURL = v23;

    v25 = [v4 kind];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = @"ebook";
    }

    objc_storeStrong(&v5->_kind, v27);
    v28 = [v4 isRestore];
    v5->_isRestore = [v28 BOOLValue];

    v29 = [v4 isSample];
    v5->_isSample = [v29 BOOLValue];

    v30 = [v4 isPurchase];
    v5->_isPurchase = [v30 BOOLValue];

    v31 = [v4 persistentIdentifier];
    v5->_persistentIdentifier = [v31 longLongValue];

    v32 = [v4 accountID];
    storeAccountIdentifier = v5->_storeAccountIdentifier;
    v5->_storeAccountIdentifier = v32;

    v34 = [v4 permlink];
    permLink = v5->_permLink;
    v5->_permLink = v34;

    v36 = [v4 isLocalCacheServer];
    v5->_isLocalCacheServer = [v36 BOOLValue];

    v37 = [v4 transactionIdentifier];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v37;

    v39 = [v4 cancelDownloadURL];
    cancelDownloadURL = v5->_cancelDownloadURL;
    v5->_cancelDownloadURL = v39;
  }

  return v5;
}

- (BLPrepareDownloadResponse)initWithInstallInfo:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = BLPrepareDownloadResponse;
  v5 = [(BLPrepareDownloadResponse *)&v41 init];
  if (v5)
  {
    v6 = [v4 downloadID];
    downloadIdentifier = v5->_downloadIdentifier;
    v5->_downloadIdentifier = v6;

    v8 = [v4 storeIdentifier];
    v5->_assetIdentifier = [v8 longLongValue];

    v9 = [v4 storePlaylistIdentifier];
    playlistIdentifier = v5->_playlistIdentifier;
    v5->_playlistIdentifier = v9;

    v11 = [v4 artistName];
    artistName = v5->_artistName;
    v5->_artistName = v11;

    v13 = [v4 title];
    title = v5->_title;
    v5->_title = v13;

    v15 = [v4 subtitle];
    subtitle = v5->_subtitle;
    v5->_subtitle = v15;

    v17 = [v4 collectionArtistName];
    collectionArtistName = v5->_collectionArtistName;
    v5->_collectionArtistName = v17;

    v19 = [v4 collectionTitle];
    collectionTitle = v5->_collectionTitle;
    v5->_collectionTitle = v19;

    v21 = [v4 genre];
    genre = v5->_genre;
    v5->_genre = v21;

    v23 = [v4 thumbnailImageURL];
    thumbnailImageURL = v5->_thumbnailImageURL;
    v5->_thumbnailImageURL = v23;

    v25 = [v4 kind];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = @"ebook";
    }

    objc_storeStrong(&v5->_kind, v27);
    v28 = [v4 isRestore];
    v5->_isRestore = [v28 BOOLValue];

    v29 = [v4 isSample];
    v5->_isSample = [v29 BOOLValue];

    v30 = [v4 isPurchase];
    v5->_isPurchase = [v30 BOOLValue];

    v31 = [v4 persistentIdentifier];
    v5->_persistentIdentifier = [v31 longLongValue];

    v32 = [v4 accountIdentifier];
    storeAccountIdentifier = v5->_storeAccountIdentifier;
    v5->_storeAccountIdentifier = v32;

    v34 = [v4 permlink];
    permLink = v5->_permLink;
    v5->_permLink = v34;

    v36 = [v4 transactionIdentifier];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v36;

    v38 = [v4 cancelDownloadURL];
    cancelDownloadURL = v5->_cancelDownloadURL;
    v5->_cancelDownloadURL = v38;
  }

  return v5;
}

- (id)sessionConfiguration
{
  v3 = [(BLPrepareDownloadResponse *)self URLSessionIdentifier];
  v4 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v3];

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

- (id)sessionTaskWithSession:(id)a3
{
  URLRequest = self->_URLRequest;
  if (URLRequest)
  {
    v5 = [a3 dataTaskWithRequest:URLRequest];
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