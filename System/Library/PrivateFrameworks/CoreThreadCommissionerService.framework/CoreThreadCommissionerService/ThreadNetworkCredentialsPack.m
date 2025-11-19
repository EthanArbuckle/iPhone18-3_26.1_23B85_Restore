@interface ThreadNetworkCredentialsPack
- (ThreadNetworkCredentialsPack)initWithCoder:(id)a3;
- (id)initCreds:(id)a3 credentialsDataSet:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ThreadNetworkCredentialsPack

- (id)initCreds:(id)a3 credentialsDataSet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ThreadNetworkCredentialsPack;
  v9 = [(ThreadNetworkCredentialsPack *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_credentials, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (ThreadNetworkCredentialsPack)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creds"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dscreds"];

  v7 = [(ThreadNetworkCredentialsPack *)self initCreds:v5 credentialsDataSet:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ThreadNetworkCredentialsPack *)self credentials];
  [v4 encodeObject:v5 forKey:@"creds"];

  v6 = [(ThreadNetworkCredentialsPack *)self credentialsDataSet];
  [v4 encodeObject:v6 forKey:@"dscreds"];
}

@end