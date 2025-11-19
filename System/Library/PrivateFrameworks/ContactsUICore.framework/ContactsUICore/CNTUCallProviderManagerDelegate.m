@interface CNTUCallProviderManagerDelegate
- (CNTUCallProviderManagerDelegate)initWithBlock:(id)a3;
- (void)providersChangedForProviderManager:(id)a3;
@end

@implementation CNTUCallProviderManagerDelegate

- (CNTUCallProviderManagerDelegate)initWithBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNTUCallProviderManagerDelegate;
  v5 = [(CNTUCallProviderManagerDelegate *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = v5;
  }

  return v5;
}

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = a3;
  v5 = [(CNTUCallProviderManagerDelegate *)self block];
  v5[2](v5, v4);
}

@end