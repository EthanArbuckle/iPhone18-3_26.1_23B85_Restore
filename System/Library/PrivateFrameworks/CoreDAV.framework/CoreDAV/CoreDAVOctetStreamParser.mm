@interface CoreDAVOctetStreamParser
- (BOOL)processData:(id)data forTask:(id)task;
- (CoreDAVOctetStreamParser)init;
- (NSString)description;
@end

@implementation CoreDAVOctetStreamParser

- (CoreDAVOctetStreamParser)init
{
  v7.receiver = self;
  v7.super_class = CoreDAVOctetStreamParser;
  v2 = [(CoreDAVOctetStreamParser *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
    octetStreamData = v2->_octetStreamData;
    v2->_octetStreamData = v3;

    parserError = v2->_parserError;
    v2->_parserError = 0;
  }

  return v2;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = CoreDAVOctetStreamParser;
  v2 = [(CoreDAVOctetStreamParser *)&v4 description];

  return v2;
}

- (BOOL)processData:(id)data forTask:(id)task
{
  if (data)
  {
    dataCopy = data;
    octetStreamData = [(CoreDAVOctetStreamParser *)self octetStreamData];
    [octetStreamData appendData:dataCopy];
  }

  return 1;
}

@end