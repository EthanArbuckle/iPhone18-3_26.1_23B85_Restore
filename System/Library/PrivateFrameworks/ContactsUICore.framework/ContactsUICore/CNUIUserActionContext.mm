@interface CNUIUserActionContext
+ (id)contextWithExtensionContext:(id)a3;
+ (id)makeDefaultContext;
- (CNUIUserActionContext)init;
- (CNUIUserActionContext)initWithContactStore:(id)a3 applicationWorkspace:(id)a4;
@end

@implementation CNUIUserActionContext

- (CNUIUserActionContext)init
{
  v15.receiver = self;
  v15.super_class = CNUIUserActionContext;
  v2 = [(CNUIUserActionContext *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(CNUIUserActionWorkspaceURLOpener);
    urlOpener = v2->_urlOpener;
    v2->_urlOpener = v3;

    v5 = objc_alloc_init(_CNUIUserActionUserActivityOpener);
    userActivityOpener = v2->_userActivityOpener;
    v2->_userActivityOpener = v5;

    v7 = objc_alloc_init(_CNUIUserActionDialRequestOpener);
    dialRequestOpener = v2->_dialRequestOpener;
    v2->_dialRequestOpener = v7;

    v9 = objc_alloc_init(CNUIDefaultUserActionRecorder);
    actionRecorder = v2->_actionRecorder;
    v2->_actionRecorder = v9;

    v11 = objc_alloc_init(_CNUIUserActionCurator);
    actionCurator = v2->_actionCurator;
    v2->_actionCurator = v11;

    v13 = v2;
  }

  return v2;
}

- (CNUIUserActionContext)initWithContactStore:(id)a3 applicationWorkspace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNUIUserActionContext *)self init];
  if (v8)
  {
    v9 = [[_CNUIUserActionCurator alloc] initWithContactStore:v6 applicationWorkspace:v7];
    actionCurator = v8->_actionCurator;
    v8->_actionCurator = v9;

    v11 = v8;
  }

  return v8;
}

+ (id)contextWithExtensionContext:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CNUIUserActionContext);
  v5 = [[CNUIUserActionExtensionURLOpener alloc] initWithExtensionContext:v3];

  [(CNUIUserActionContext *)v4 setUrlOpener:v5];
  v6 = objc_alloc_init(_CNUIUserActionUserActivityOpener);
  [(CNUIUserActionContext *)v4 setUserActivityOpener:v6];

  v7 = objc_alloc_init(CNUIDefaultUserActionRecorder);
  [(CNUIUserActionContext *)v4 setActionRecorder:v7];

  v8 = objc_alloc_init(_CNUIUserActionCurator);
  [(CNUIUserActionContext *)v4 setActionCurator:v8];

  return v4;
}

+ (id)makeDefaultContext
{
  v2 = objc_alloc_init(CNUIUserActionContext);
  v3 = objc_alloc_init(CNUIUserActionWorkspaceURLOpener);
  [(CNUIUserActionContext *)v2 setUrlOpener:v3];

  v4 = objc_alloc_init(_CNUIUserActionUserActivityOpener);
  [(CNUIUserActionContext *)v2 setUserActivityOpener:v4];

  v5 = objc_alloc_init(CNUIDefaultUserActionRecorder);
  [(CNUIUserActionContext *)v2 setActionRecorder:v5];

  v6 = objc_alloc_init(_CNUIUserActionCurator);
  [(CNUIUserActionContext *)v2 setActionCurator:v6];

  return v2;
}

@end