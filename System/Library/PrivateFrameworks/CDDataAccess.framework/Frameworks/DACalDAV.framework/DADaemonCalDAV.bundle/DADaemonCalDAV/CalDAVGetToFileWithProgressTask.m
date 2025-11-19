@interface CalDAVGetToFileWithProgressTask
- (MobileCalDAVAttachmentDownloader)downloader;
- (id)additionalHeaderValues;
- (void)connection:(id)a3 didReceiveData:(id)a4;
@end

@implementation CalDAVGetToFileWithProgressTask

- (void)connection:(id)a3 didReceiveData:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_downloader);
  [WeakRetained _didShowProgressDownloadedByteCount:{-[CalDAVGetToFileWithProgressTask totalBytesReceived](self, "totalBytesReceived") + objc_msgSend(v6, "length")}];

  v9.receiver = self;
  v9.super_class = CalDAVGetToFileWithProgressTask;
  [(CalDAVGetToFileWithProgressTask *)&v9 connection:v7 didReceiveData:v6];
}

- (id)additionalHeaderValues
{
  v3 = objc_opt_new();
  v8.receiver = self;
  v8.super_class = CalDAVGetToFileWithProgressTask;
  v4 = [(CalDAVGetToFileWithProgressTask *)&v8 additionalHeaderValues];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(CalDAVGetToFileWithProgressTask *)self previousETag];

  if (v5)
  {
    v6 = [(CalDAVGetToFileWithProgressTask *)self previousETag];
    [v3 setObject:v6 forKeyedSubscript:CoreDAVHTTPHeader_IfNoneMatch];
  }

  return v3;
}

- (MobileCalDAVAttachmentDownloader)downloader
{
  WeakRetained = objc_loadWeakRetained(&self->_downloader);

  return WeakRetained;
}

@end