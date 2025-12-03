@interface CalDAVGetToFileWithProgressTask
- (MobileCalDAVAttachmentDownloader)downloader;
- (id)additionalHeaderValues;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
@end

@implementation CalDAVGetToFileWithProgressTask

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  taskCopy = task;
  sessionCopy = session;
  WeakRetained = objc_loadWeakRetained(&self->_downloader);
  [WeakRetained _didShowProgressDownloadedByteCount:{-[CalDAVGetToFileWithProgressTask totalBytesReceived](self, "totalBytesReceived") + objc_msgSend(dataCopy, "length")}];

  v12.receiver = self;
  v12.super_class = CalDAVGetToFileWithProgressTask;
  [(CalDAVGetToFileWithProgressTask *)&v12 URLSession:sessionCopy dataTask:taskCopy didReceiveData:dataCopy];
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