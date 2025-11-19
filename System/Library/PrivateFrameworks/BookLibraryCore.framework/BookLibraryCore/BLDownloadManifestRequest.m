@interface BLDownloadManifestRequest
- (BLDownloadManifestRequest)initWithCoder:(id)a3;
- (BLDownloadManifestRequest)initWithURLRequest:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)startWithManifestResponseBlock:(id)a3;
@end

@implementation BLDownloadManifestRequest

- (BLDownloadManifestRequest)initWithURLRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLDownloadManifestRequest;
  v5 = [(BLDownloadManifestRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    urlRequest = v5->_urlRequest;
    v5->_urlRequest = v6;
  }

  return v5;
}

- (void)startWithManifestResponseBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BLDownloadManifestRequest *)self URLRequest];
    *buf = 134218242;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_241D1F000, v5, OS_LOG_TYPE_DEFAULT, "[DownloadManifestRequest] Start download manifest request %p: urlRequest=%@", buf, 0x16u);
  }

  v7 = +[BLDownloadQueueNonUI sharedInstance];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_241D4E20C;
  v10[3] = &unk_278D179B8;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 addDownloadsWithManifestRequest:self completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (BLDownloadManifestRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BLDownloadManifestRequest;
  v5 = [(BLDownloadManifestRequest *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URLRequest"];
    [(BLDownloadManifestRequest *)v5 setURLRequest:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadManifestRequest *)self URLRequest];
  [v4 encodeObject:v5 forKey:@"URLRequest"];
}

@end