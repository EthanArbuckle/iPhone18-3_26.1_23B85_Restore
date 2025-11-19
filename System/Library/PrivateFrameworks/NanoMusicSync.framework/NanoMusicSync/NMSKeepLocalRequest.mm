@interface NMSKeepLocalRequest
- (NMSKeepLocalRequest)initWithModelObject:(id)a3 enableState:(int64_t)a4;
- (void)performWithOptions:(id)a3 completion:(id)a4;
@end

@implementation NMSKeepLocalRequest

- (NMSKeepLocalRequest)initWithModelObject:(id)a3 enableState:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NMSKeepLocalRequest;
  v8 = [(NMSKeepLocalRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_modelObject, a3);
    v9->_enableState = a4;
  }

  return v9;
}

- (void)performWithOptions:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Sub-classes should implement this method." userInfo:0];
  objc_exception_throw(v7);
}

@end