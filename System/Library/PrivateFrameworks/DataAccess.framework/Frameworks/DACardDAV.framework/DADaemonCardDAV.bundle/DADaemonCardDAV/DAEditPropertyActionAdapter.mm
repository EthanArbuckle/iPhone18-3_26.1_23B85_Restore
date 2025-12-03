@interface DAEditPropertyActionAdapter
- (DAEditPropertyActionAdapter)initWithDAEditPropertyAction:(id)action;
- (id)copyPropPatchTask;
@end

@implementation DAEditPropertyActionAdapter

- (DAEditPropertyActionAdapter)initWithDAEditPropertyAction:(id)action
{
  actionCopy = action;
  v9.receiver = self;
  v9.super_class = DAEditPropertyActionAdapter;
  v6 = [(DAEditPropertyActionAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, action);
  }

  return v7;
}

- (id)copyPropPatchTask
{
  v3 = +[NSSet set];
  v4 = [CoreDAVItem alloc];
  action = [(DAEditPropertyActionAdapter *)self action];
  propertyNamespace = [action propertyNamespace];
  action2 = [(DAEditPropertyActionAdapter *)self action];
  propertyName = [action2 propertyName];
  v9 = [v4 initWithNameSpace:propertyNamespace andName:propertyName];

  v10 = [NSSet setWithObject:v9];
  action3 = [(DAEditPropertyActionAdapter *)self action];
  value = [action3 value];
  v13 = [value length];

  v14 = v10;
  v15 = v3;
  if (v13)
  {
    action4 = [(DAEditPropertyActionAdapter *)self action];
    value2 = [action4 value];
    [v9 setPayloadAsString:value2];

    v14 = v3;
    v15 = v10;
  }

  v18 = v10;
  v19 = [CoreDAVPropPatchTask alloc];
  action5 = [(DAEditPropertyActionAdapter *)self action];
  serverId = [action5 serverId];
  v22 = [v19 initWithPropertiesToSet:v15 andRemove:v14 atURL:serverId];

  action6 = [(DAEditPropertyActionAdapter *)self action];
  [v22 setIgnoresGuardianRestrictions:{objc_msgSend(action6, "ignoresGuardianRestrictions")}];

  return v22;
}

@end