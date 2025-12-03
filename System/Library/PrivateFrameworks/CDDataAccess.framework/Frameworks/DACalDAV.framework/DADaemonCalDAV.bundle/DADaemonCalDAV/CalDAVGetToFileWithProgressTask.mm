@interface CalDAVGetToFileWithProgressTask
- (MobileCalDAVAttachmentDownloader)downloader;
- (id)additionalHeaderValues;
- (void)connection:(id)connection didReceiveData:(id)data;
@end

@implementation CalDAVGetToFileWithProgressTask

- (void)connection:(id)connection didReceiveData:(id)data
{
  dataCopy = data;
  connectionCopy = connection;
  WeakRetained = objc_loadWeakRetained(&self->_downloader);
  [WeakRetained _didShowProgressDownloadedByteCount:{-[CalDAVGetToFileWithProgressTask totalBytesReceived](self, "totalBytesReceived") + objc_msgSend(dataCopy, "length")}];

  v9.receiver = self;
  v9.super_class = CalDAVGetToFileWithProgressTask;
  [(CalDAVGetToFileWithProgressTask *)&v9 connection:connectionCopy didReceiveData:dataCopy];
}

- (id)additionalHeaderValues
{
  v3 = objc_opt_new();
  v8.receiver = self;
  v8.super_class = CalDAVGetToFileWithProgressTask;
  additionalHeaderValues = [(CalDAVGetToFileWithProgressTask *)&v8 additionalHeaderValues];
  [v3 addEntriesFromDictionary:additionalHeaderValues];

  previousETag = [(CalDAVGetToFileWithProgressTask *)self previousETag];

  if (previousETag)
  {
    previousETag2 = [(CalDAVGetToFileWithProgressTask *)self previousETag];
    [v3 setObject:previousETag2 forKeyedSubscript:CoreDAVHTTPHeader_IfNoneMatch];
  }

  return v3;
}

- (MobileCalDAVAttachmentDownloader)downloader
{
  WeakRetained = objc_loadWeakRetained(&self->_downloader);

  return WeakRetained;
}

@end