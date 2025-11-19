@interface DOCProtectedApp
- (BOOL)isEqual:(id)a3;
- (DOCProtectedApp)initWith:(id)a3 oids:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation DOCProtectedApp

- (DOCProtectedApp)initWith:(id)a3 oids:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = DOCProtectedApp;
  v8 = [(DOCProtectedApp *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(DOCProtectedApp *)v8 setAppContainerBundleID:v6];
    v10 = [v7 copy];
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
  v5 = [(DOCProtectedApp *)self appContainerBundleID];
  v6 = [(DOCProtectedApp *)self oids];
  v7 = [v6 allObjects];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [v3 stringWithFormat:@"%@ appContainerBundleID=%@, oids=%@", v4, v5, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (self == v4)
  {
    v11 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = [(DOCProtectedApp *)self appContainerBundleID];
  v7 = [(DOCProtectedApp *)v5 appContainerBundleID];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(DOCProtectedApp *)self oids];
    v10 = [(DOCProtectedApp *)v5 oids];
    v11 = [v9 isEqualToSet:v10];
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
  v3 = [(DOCProtectedApp *)self appContainerBundleID];
  v4 = [v3 hash];
  v5 = [(DOCProtectedApp *)self oids];
  v6 = [v5 hash];

  return v6 + v4;
}

@end