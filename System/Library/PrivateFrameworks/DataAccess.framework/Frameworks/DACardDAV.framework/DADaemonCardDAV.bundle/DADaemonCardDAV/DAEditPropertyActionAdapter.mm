@interface DAEditPropertyActionAdapter
- (DAEditPropertyActionAdapter)initWithDAEditPropertyAction:(id)a3;
- (id)copyPropPatchTask;
@end

@implementation DAEditPropertyActionAdapter

- (DAEditPropertyActionAdapter)initWithDAEditPropertyAction:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DAEditPropertyActionAdapter;
  v6 = [(DAEditPropertyActionAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_action, a3);
  }

  return v7;
}

- (id)copyPropPatchTask
{
  v3 = +[NSSet set];
  v4 = [CoreDAVItem alloc];
  v5 = [(DAEditPropertyActionAdapter *)self action];
  v6 = [v5 propertyNamespace];
  v7 = [(DAEditPropertyActionAdapter *)self action];
  v8 = [v7 propertyName];
  v9 = [v4 initWithNameSpace:v6 andName:v8];

  v10 = [NSSet setWithObject:v9];
  v11 = [(DAEditPropertyActionAdapter *)self action];
  v12 = [v11 value];
  v13 = [v12 length];

  v14 = v10;
  v15 = v3;
  if (v13)
  {
    v16 = [(DAEditPropertyActionAdapter *)self action];
    v17 = [v16 value];
    [v9 setPayloadAsString:v17];

    v14 = v3;
    v15 = v10;
  }

  v18 = v10;
  v19 = [CoreDAVPropPatchTask alloc];
  v20 = [(DAEditPropertyActionAdapter *)self action];
  v21 = [v20 serverId];
  v22 = [v19 initWithPropertiesToSet:v15 andRemove:v14 atURL:v21];

  v23 = [(DAEditPropertyActionAdapter *)self action];
  [v22 setIgnoresGuardianRestrictions:{objc_msgSend(v23, "ignoresGuardianRestrictions")}];

  return v22;
}

@end