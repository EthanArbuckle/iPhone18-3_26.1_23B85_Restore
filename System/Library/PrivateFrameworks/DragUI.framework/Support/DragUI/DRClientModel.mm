@interface DRClientModel
- (DRClientModel)initWithClient:(id)a3 isSource:(BOOL)a4;
@end

@implementation DRClientModel

- (DRClientModel)initWithClient:(id)a3 isSource:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = DRClientModel;
  v8 = [(DRClientModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_client, a3);
    v9->_isSource = a4;
  }

  return v9;
}

@end