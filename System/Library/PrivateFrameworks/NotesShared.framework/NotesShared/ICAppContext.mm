@interface ICAppContext
- (ICAppContext)initWithCloudContext:(id)context contextOptions:(unint64_t)options viewContext:(id)viewContext backgroundContextCreator:(id)creator deviceManagementRestrictionsManager:(id)manager;
- (id)makeBackgroundContext;
@end

@implementation ICAppContext

- (ICAppContext)initWithCloudContext:(id)context contextOptions:(unint64_t)options viewContext:(id)viewContext backgroundContextCreator:(id)creator deviceManagementRestrictionsManager:(id)manager
{
  contextCopy = context;
  viewContextCopy = viewContext;
  creatorCopy = creator;
  managerCopy = manager;
  v22.receiver = self;
  v22.super_class = ICAppContext;
  v17 = [(ICAppContext *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_cloudContext, context);
    v18->_contextOptions = options;
    objc_storeStrong(&v18->_viewContext, viewContext);
    v19 = _Block_copy(creatorCopy);
    backgroundContextCreator = v18->_backgroundContextCreator;
    v18->_backgroundContextCreator = v19;

    objc_storeStrong(&v18->_deviceManagementRestrictionsManager, manager);
  }

  return v18;
}

- (id)makeBackgroundContext
{
  backgroundContextCreator = [(ICAppContext *)self backgroundContextCreator];
  if (backgroundContextCreator)
  {
    backgroundContextCreator2 = [(ICAppContext *)self backgroundContextCreator];
    v5 = backgroundContextCreator2[2]();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end