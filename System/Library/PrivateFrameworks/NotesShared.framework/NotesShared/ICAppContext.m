@interface ICAppContext
- (ICAppContext)initWithCloudContext:(id)a3 contextOptions:(unint64_t)a4 viewContext:(id)a5 backgroundContextCreator:(id)a6 deviceManagementRestrictionsManager:(id)a7;
- (id)makeBackgroundContext;
@end

@implementation ICAppContext

- (ICAppContext)initWithCloudContext:(id)a3 contextOptions:(unint64_t)a4 viewContext:(id)a5 backgroundContextCreator:(id)a6 deviceManagementRestrictionsManager:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = ICAppContext;
  v17 = [(ICAppContext *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_cloudContext, a3);
    v18->_contextOptions = a4;
    objc_storeStrong(&v18->_viewContext, a5);
    v19 = _Block_copy(v15);
    backgroundContextCreator = v18->_backgroundContextCreator;
    v18->_backgroundContextCreator = v19;

    objc_storeStrong(&v18->_deviceManagementRestrictionsManager, a7);
  }

  return v18;
}

- (id)makeBackgroundContext
{
  v3 = [(ICAppContext *)self backgroundContextCreator];
  if (v3)
  {
    v4 = [(ICAppContext *)self backgroundContextCreator];
    v5 = v4[2]();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end