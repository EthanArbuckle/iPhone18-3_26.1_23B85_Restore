@interface CoreDAVGetToFileTask
- (CoreDAVGetToFileTask)initWithURL:(id)a3 destinationFile:(id)a4;
- (id)copyDefaultParserForContentType:(id)a3;
@end

@implementation CoreDAVGetToFileTask

- (CoreDAVGetToFileTask)initWithURL:(id)a3 destinationFile:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CoreDAVGetToFileTask;
  v8 = [(CoreDAVTask *)&v11 initWithURL:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_destinationFile, a4);
  }

  return v9;
}

- (id)copyDefaultParserForContentType:(id)a3
{
  v4 = [CoreDAVOctetStreamToFileParser alloc];
  v5 = [(CoreDAVGetToFileTask *)self destinationFile];
  v6 = [(CoreDAVOctetStreamToFileParser *)v4 initWithFileHandle:v5];

  return v6;
}

@end