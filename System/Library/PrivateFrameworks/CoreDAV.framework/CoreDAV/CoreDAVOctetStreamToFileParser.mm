@interface CoreDAVOctetStreamToFileParser
- (BOOL)processData:(id)data forTask:(id)task;
- (CoreDAVOctetStreamToFileParser)initWithFileHandle:(id)handle;
@end

@implementation CoreDAVOctetStreamToFileParser

- (CoreDAVOctetStreamToFileParser)initWithFileHandle:(id)handle
{
  handleCopy = handle;
  v8.receiver = self;
  v8.super_class = CoreDAVOctetStreamToFileParser;
  v5 = [(CoreDAVOctetStreamParser *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CoreDAVOctetStreamToFileParser *)v5 setFileHandle:handleCopy];
  }

  return v6;
}

- (BOOL)processData:(id)data forTask:(id)task
{
  if (data)
  {
    dataCopy = data;
    fileHandle = [(CoreDAVOctetStreamToFileParser *)self fileHandle];
    [fileHandle writeData:dataCopy];
  }

  return 1;
}

@end