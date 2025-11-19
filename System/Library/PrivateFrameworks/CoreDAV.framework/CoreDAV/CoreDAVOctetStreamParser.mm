@interface CoreDAVOctetStreamParser
- (BOOL)processData:(id)a3 forTask:(id)a4;
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

- (BOOL)processData:(id)a3 forTask:(id)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = [(CoreDAVOctetStreamParser *)self octetStreamData];
    [v6 appendData:v5];
  }

  return 1;
}

@end