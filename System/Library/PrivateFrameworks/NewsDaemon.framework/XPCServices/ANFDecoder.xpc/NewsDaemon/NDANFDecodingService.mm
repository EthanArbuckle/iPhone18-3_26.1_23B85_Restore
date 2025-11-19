@interface NDANFDecodingService
- (NDANFDecodingService)init;
- (void)decodeANFDocumentData:(id)a3 completion:(id)a4;
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

- (void)decodeANFDocumentData:(id)a3 completion:(id)a4
{
  v7 = a4;
  v8 = a3;
  v10 = [(NDANFDecodingService *)self anfHelper];
  v9 = [v10 manifestFromANFDocumentData:v8];

  (*(a4 + 2))(v7, v9, 0);
}

@end