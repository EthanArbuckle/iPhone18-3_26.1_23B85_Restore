@interface NDANFDecodingService
- (NDANFDecodingService)init;
- (void)decodeANFDocumentData:(id)data completion:(id)completion;
@end

@implementation NDANFDecodingService

- (NDANFDecodingService)init
{
  v6.receiver = self;
  v6.super_class = NDANFDecodingService;
  v2 = [(NDANFDecodingService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NDANFHelper);
    anfHelper = v2->_anfHelper;
    v2->_anfHelper = v3;
  }

  return v2;
}

- (void)decodeANFDocumentData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  anfHelper = [(NDANFDecodingService *)self anfHelper];
  v9 = [anfHelper manifestFromANFDocumentData:dataCopy];

  (*(completion + 2))(completionCopy, v9, 0);
}

@end