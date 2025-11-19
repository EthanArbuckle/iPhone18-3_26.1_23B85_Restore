@interface HGManager
- (HGManager)initWithDelegate:(id)a3 config:(id)a4;
@end

@implementation HGManager

- (HGManager)initWithDelegate:(id)a3 config:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = HGManager;
  v8 = [(HGManager *)&v17 init];
  v9 = v8;
  if (v8)
  {
    if (v7)
    {
      [(HGManager *)v8 setConfiguration:v7];
    }

    else
    {
      v10 = objc_alloc_init(HGConfiguration);
      [(HGManager *)v9 setConfiguration:v10];
    }

    v11 = [HGManagerInternal alloc];
    v12 = [(HGManager *)v9 configuration];
    v13 = [v12 internal];
    v14 = [(HGManagerInternal *)v11 initWithDelegate:v6 config:v13];
    internal = v9->_internal;
    v9->_internal = v14;
  }

  return v9;
}

@end