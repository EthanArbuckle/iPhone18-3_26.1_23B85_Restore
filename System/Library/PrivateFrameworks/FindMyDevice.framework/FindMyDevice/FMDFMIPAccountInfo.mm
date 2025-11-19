@interface FMDFMIPAccountInfo
- (FMDFMIPAccountInfo)initWithCoder:(id)a3;
- (FMDFMIPAccountInfo)initWithUserName:(id)a3 dsid:(id)a4 oneTimeRemoveAuthToken:(id)a5 serverURL:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDFMIPAccountInfo

- (FMDFMIPAccountInfo)initWithUserName:(id)a3 dsid:(id)a4 oneTimeRemoveAuthToken:(id)a5 serverURL:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = FMDFMIPAccountInfo;
  v14 = [(FMDFMIPAccountInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(FMDFMIPAccountInfo *)v14 setUsername:v10];
    [(FMDFMIPAccountInfo *)v15 setDsid:v11];
    [(FMDFMIPAccountInfo *)v15 setOneTimeRemoveAuthToken:v12];
    [(FMDFMIPAccountInfo *)v15 setServerURL:v13];
  }

  return v15;
}

- (FMDFMIPAccountInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = FMDFMIPAccountInfo;
  v5 = [(FMDFMIPAccountInfo *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_username);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDFMIPAccountInfo *)v5 setUsername:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_dsid);
    v11 = [v4 decodeObjectOfClass:v9 forKey:v10];
    [(FMDFMIPAccountInfo *)v5 setDsid:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_oneTimeRemoveAuthToken);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    [(FMDFMIPAccountInfo *)v5 setOneTimeRemoveAuthToken:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_serverURL);
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    [(FMDFMIPAccountInfo *)v5 setServerURL:v17];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDFMIPAccountInfo *)self username];
  v6 = NSStringFromSelector(sel_username);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(FMDFMIPAccountInfo *)self dsid];
  v8 = NSStringFromSelector(sel_dsid);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(FMDFMIPAccountInfo *)self oneTimeRemoveAuthToken];
  v10 = NSStringFromSelector(sel_oneTimeRemoveAuthToken);
  [v4 encodeObject:v9 forKey:v10];

  v12 = [(FMDFMIPAccountInfo *)self serverURL];
  v11 = NSStringFromSelector(sel_serverURL);
  [v4 encodeObject:v12 forKey:v11];
}

@end