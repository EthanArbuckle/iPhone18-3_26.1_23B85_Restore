@interface MUExternalActionPair
- (MUExternalActionPair)initWithAction:(id)a3 actionController:(id)a4;
@end

@implementation MUExternalActionPair

- (MUExternalActionPair)initWithAction:(id)a3 actionController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MUExternalActionPair;
  v9 = [(MUExternalActionPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModels, a3);
    objc_storeStrong(&v10->_actionController, a4);
  }

  return v10;
}

@end