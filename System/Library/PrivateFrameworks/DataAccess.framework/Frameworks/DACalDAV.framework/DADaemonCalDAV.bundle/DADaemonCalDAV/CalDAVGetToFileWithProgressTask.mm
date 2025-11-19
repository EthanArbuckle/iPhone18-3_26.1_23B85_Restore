@interface CalDAVGetToFileWithProgressTask
- (MobileCalDAVAttachmentDownloader)downloader;
- (id)additionalHeaderValues;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
@end

@implementation CalDAVGetToFileWithProgressTask

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_downloader);
  [WeakRetained _didShowProgressDownloadedByteCount:{-[CalDAVGetToFileWithProgressTask totalBytesReceived](self, "totalBytesReceived") + objc_msgSend(v8, "length")}];

  v12.receiver = self;
  v12.super_class = CalDAVGetToFileWithProgressTask;
  [(CalDAVGetToFileWithProgressTask *)&v12 URLSession:v10 dataTask:v9 didReceiveData:v8];
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