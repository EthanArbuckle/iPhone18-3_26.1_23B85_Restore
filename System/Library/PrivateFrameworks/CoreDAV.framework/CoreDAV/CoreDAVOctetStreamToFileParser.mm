@interface CoreDAVOctetStreamToFileParser
- (BOOL)processData:(id)a3 forTask:(id)a4;
- (CoreDAVOctetStreamToFileParser)initWithFileHandle:(id)a3;
@end

@implementation CoreDAVOctetStreamToFileParser

- (CoreDAVOctetStreamToFileParser)initWithFileHandle:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CoreDAVOctetStreamToFileParser;
  v5 = [(CoreDAVOctetStreamParser *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CoreDAVOctetStreamToFileParser *)v5 setFileHandle:v4];
  }

  return v6;
}

- (BOOL)processData:(id)a3 forTask:(id)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = [(CoreDAVOctetStreamToFileParser *)self fileHandle];
    [v6 writeData:v5];
  }

  return 1;
}

@end