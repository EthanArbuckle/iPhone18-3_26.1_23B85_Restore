@interface HGManager
- (HGManager)initWithDelegate:(id)delegate config:(id)config;
@end

@implementation HGManager

- (HGManager)initWithDelegate:(id)delegate config:(id)config
{
  delegateCopy = delegate;
  configCopy = config;
  v17.receiver = self;
  v17.super_class = HGManager;
  v8 = [(HGManager *)&v17 init];
  v9 = v8;
  if (v8)
  {
    if (configCopy)
    {
      [(HGManager *)v8 setConfiguration:configCopy];
    }

    else
    {
      v10 = objc_alloc_init(HGConfiguration);
      [(HGManager *)v9 setConfiguration:v10];
    }

    v11 = [HGManagerInternal alloc];
    configuration = [(HGManager *)v9 configuration];
    internal = [configuration internal];
    v14 = [(HGManagerInternal *)v11 initWithDelegate:delegateCopy config:internal];
    internal = v9->_internal;
    v9->_internal = v14;
  }

  return v9;
}

@end