@interface ThreadNetworkCredentialsPack
- (ThreadNetworkCredentialsPack)initWithCoder:(id)coder;
- (id)initCreds:(id)creds credentialsDataSet:(id)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ThreadNetworkCredentialsPack

- (id)initCreds:(id)creds credentialsDataSet:(id)set
{
  credsCopy = creds;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = ThreadNetworkCredentialsPack;
  v9 = [(ThreadNetworkCredentialsPack *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_credentials, creds);
    objc_storeStrong(p_isa + 2, set);
  }

  return p_isa;
}

- (ThreadNetworkCredentialsPack)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creds"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dscreds"];

  v7 = [(ThreadNetworkCredentialsPack *)self initCreds:v5 credentialsDataSet:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  credentials = [(ThreadNetworkCredentialsPack *)self credentials];
  [coderCopy encodeObject:credentials forKey:@"creds"];

  credentialsDataSet = [(ThreadNetworkCredentialsPack *)self credentialsDataSet];
  [coderCopy encodeObject:credentialsDataSet forKey:@"dscreds"];
}

@end