@interface IDSStewieDeviceInfo
- (BOOL)isEqual:(id)a3;
- (IDSStewieDeviceInfo)initWithCoder:(id)a3;
- (IDSStewieDeviceInfo)initWithLocale:(id)a3 pushToken:(id)a4 dsid:(id)a5 accessTokens:(id)a6 featureIDs:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSStewieDeviceInfo

- (IDSStewieDeviceInfo)initWithLocale:(id)a3 pushToken:(id)a4 dsid:(id)a5 accessTokens:(id)a6 featureIDs:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = IDSStewieDeviceInfo;
  v17 = [(IDSStewieDeviceInfo *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_locale, a3);
    objc_storeStrong(&v18->_pushToken, a4);
    objc_storeStrong(&v18->_dsid, a5);
    objc_storeStrong(&v18->_accessTokens, a6);
    objc_storeStrong(&v18->_featureIDs, a7);
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 locale];
      v7 = [(IDSStewieDeviceInfo *)self locale];
      if (![v6 isEqualToString:v7])
      {
        v13 = 0;
LABEL_16:

        goto LABEL_17;
      }

      v8 = [v5 pushToken];
      v9 = [(IDSStewieDeviceInfo *)self pushToken];
      if (![v8 isEqualToData:v9])
      {
        v13 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v10 = [v5 dsid];
      if (v10 || ([(IDSStewieDeviceInfo *)self dsid], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v11 = [v5 dsid];
        v12 = [(IDSStewieDeviceInfo *)self dsid];
        v13 = [v11 isEqualToString:v12];

        if (v10)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
        v15 = 0;
        v13 = 1;
      }

      goto LABEL_14;
    }
  }

  v13 = 0;
LABEL_17:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(IDSStewieDeviceInfo *)self locale];
  v4 = [v3 hash];
  v5 = [(IDSStewieDeviceInfo *)self pushToken];
  v6 = [v5 hash] ^ v4;

  v7 = [(IDSStewieDeviceInfo *)self dsid];

  if (v7)
  {
    v8 = [(IDSStewieDeviceInfo *)self dsid];
    v6 ^= [v8 hash];
  }

  v9 = [(IDSStewieDeviceInfo *)self accessTokens];

  if (v9)
  {
    v10 = [(IDSStewieDeviceInfo *)self accessTokens];
    v6 ^= [v10 hash];
  }

  v11 = [(IDSStewieDeviceInfo *)self featureIDs];

  if (v11)
  {
    v12 = [(IDSStewieDeviceInfo *)self featureIDs];
    v6 ^= [v12 hash];
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSStewieDeviceInfo *)self locale];
  v5 = [(IDSStewieDeviceInfo *)self pushToken];
  v6 = [v5 debugDescription];
  v7 = [(IDSStewieDeviceInfo *)self dsid];
  v8 = [(IDSStewieDeviceInfo *)self accessTokens];
  v9 = [v8 count];
  v10 = [(IDSStewieDeviceInfo *)self featureIDs];
  v11 = [NSString stringWithFormat:@"<%@: %p { loc: %@, tok: %@, dsid: %@, accessTokens count: %ld, featureIDs: %@ }>", v3, self, v4, v6, v7, v9, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSStewieDeviceInfo *)self locale];
  [v4 encodeObject:v5 forKey:@"locale"];

  v6 = [(IDSStewieDeviceInfo *)self pushToken];
  [v4 encodeObject:v6 forKey:@"pushToken"];

  v7 = [(IDSStewieDeviceInfo *)self dsid];
  [v4 encodeObject:v7 forKey:@"dsid"];

  v8 = [(IDSStewieDeviceInfo *)self accessTokens];
  [v4 encodeObject:v8 forKey:@"accessTokens"];

  v9 = [(IDSStewieDeviceInfo *)self featureIDs];
  [v4 encodeObject:v9 forKey:@"featureIDs"];
}

- (IDSStewieDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"accessTokens"];

  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"featureIDs"];

  v14 = [(IDSStewieDeviceInfo *)self initWithLocale:v5 pushToken:v6 dsid:v7 accessTokens:v10 featureIDs:v13];
  return v14;
}

@end