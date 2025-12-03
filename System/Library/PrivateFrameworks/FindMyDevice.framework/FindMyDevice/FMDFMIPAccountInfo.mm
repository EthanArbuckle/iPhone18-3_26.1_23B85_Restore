@interface FMDFMIPAccountInfo
- (FMDFMIPAccountInfo)initWithCoder:(id)coder;
- (FMDFMIPAccountInfo)initWithUserName:(id)name dsid:(id)dsid oneTimeRemoveAuthToken:(id)token serverURL:(id)l;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDFMIPAccountInfo

- (FMDFMIPAccountInfo)initWithUserName:(id)name dsid:(id)dsid oneTimeRemoveAuthToken:(id)token serverURL:(id)l
{
  nameCopy = name;
  dsidCopy = dsid;
  tokenCopy = token;
  lCopy = l;
  v17.receiver = self;
  v17.super_class = FMDFMIPAccountInfo;
  v14 = [(FMDFMIPAccountInfo *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(FMDFMIPAccountInfo *)v14 setUsername:nameCopy];
    [(FMDFMIPAccountInfo *)v15 setDsid:dsidCopy];
    [(FMDFMIPAccountInfo *)v15 setOneTimeRemoveAuthToken:tokenCopy];
    [(FMDFMIPAccountInfo *)v15 setServerURL:lCopy];
  }

  return v15;
}

- (FMDFMIPAccountInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = FMDFMIPAccountInfo;
  v5 = [(FMDFMIPAccountInfo *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_username);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDFMIPAccountInfo *)v5 setUsername:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector(sel_dsid);
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(FMDFMIPAccountInfo *)v5 setDsid:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_oneTimeRemoveAuthToken);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(FMDFMIPAccountInfo *)v5 setOneTimeRemoveAuthToken:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_serverURL);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    [(FMDFMIPAccountInfo *)v5 setServerURL:v17];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  username = [(FMDFMIPAccountInfo *)self username];
  v6 = NSStringFromSelector(sel_username);
  [coderCopy encodeObject:username forKey:v6];

  dsid = [(FMDFMIPAccountInfo *)self dsid];
  v8 = NSStringFromSelector(sel_dsid);
  [coderCopy encodeObject:dsid forKey:v8];

  oneTimeRemoveAuthToken = [(FMDFMIPAccountInfo *)self oneTimeRemoveAuthToken];
  v10 = NSStringFromSelector(sel_oneTimeRemoveAuthToken);
  [coderCopy encodeObject:oneTimeRemoveAuthToken forKey:v10];

  serverURL = [(FMDFMIPAccountInfo *)self serverURL];
  v11 = NSStringFromSelector(sel_serverURL);
  [coderCopy encodeObject:serverURL forKey:v11];
}

@end