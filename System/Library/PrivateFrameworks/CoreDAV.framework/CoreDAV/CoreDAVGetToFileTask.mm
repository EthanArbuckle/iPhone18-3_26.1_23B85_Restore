@interface CoreDAVGetToFileTask
- (CoreDAVGetToFileTask)initWithURL:(id)l destinationFile:(id)file;
- (id)copyDefaultParserForContentType:(id)type;
@end

@implementation CoreDAVGetToFileTask

- (CoreDAVGetToFileTask)initWithURL:(id)l destinationFile:(id)file
{
  fileCopy = file;
  v11.receiver = self;
  v11.super_class = CoreDAVGetToFileTask;
  v8 = [(CoreDAVTask *)&v11 initWithURL:l];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_destinationFile, file);
  }

  return v9;
}

- (id)copyDefaultParserForContentType:(id)type
{
  v4 = [CoreDAVOctetStreamToFileParser alloc];
  destinationFile = [(CoreDAVGetToFileTask *)self destinationFile];
  v6 = [(CoreDAVOctetStreamToFileParser *)v4 initWithFileHandle:destinationFile];

  return v6;
}

@end