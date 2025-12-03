@interface DRClientModel
- (DRClientModel)initWithClient:(id)client isSource:(BOOL)source;
@end

@implementation DRClientModel

- (DRClientModel)initWithClient:(id)client isSource:(BOOL)source
{
  clientCopy = client;
  v11.receiver = self;
  v11.super_class = DRClientModel;
  v8 = [(DRClientModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_client, client);
    v9->_isSource = source;
  }

  return v9;
}

@end