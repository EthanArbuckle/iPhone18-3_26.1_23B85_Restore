@interface DOCProtectedApp
- (BOOL)isEqual:(id)equal;
- (DOCProtectedApp)initWith:(id)with oids:(id)oids;
- (id)description;
- (unint64_t)hash;
@end

@implementation DOCProtectedApp

- (DOCProtectedApp)initWith:(id)with oids:(id)oids
{
  withCopy = with;
  oidsCopy = oids;
  v12.receiver = self;
  v12.super_class = DOCProtectedApp;
  v8 = [(DOCProtectedApp *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(DOCProtectedApp *)v8 setAppContainerBundleID:withCopy];
    v10 = [oidsCopy copy];
    [(DOCProtectedApp *)v9 setOids:v10];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = DOCProtectedApp;
  v4 = [(DOCProtectedApp *)&v11 description];
  appContainerBundleID = [(DOCProtectedApp *)self appContainerBundleID];
  oids = [(DOCProtectedApp *)self oids];
  allObjects = [oids allObjects];
  v8 = [allObjects componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"%@ appContainerBundleID=%@, oids=%@", v4, appContainerBundleID, v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  if (self == equalCopy)
  {
    v11 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  appContainerBundleID = [(DOCProtectedApp *)self appContainerBundleID];
  appContainerBundleID2 = [(DOCProtectedApp *)v5 appContainerBundleID];
  v8 = [appContainerBundleID isEqualToString:appContainerBundleID2];

  if (v8)
  {
    oids = [(DOCProtectedApp *)self oids];
    oids2 = [(DOCProtectedApp *)v5 oids];
    v11 = [oids isEqualToSet:oids2];
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (unint64_t)hash
{
  appContainerBundleID = [(DOCProtectedApp *)self appContainerBundleID];
  v4 = [appContainerBundleID hash];
  oids = [(DOCProtectedApp *)self oids];
  v6 = [oids hash];

  return v6 + v4;
}

@end