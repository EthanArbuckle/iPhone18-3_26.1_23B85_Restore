@interface IDSStewieDeviceInfo
- (BOOL)isEqual:(id)equal;
- (IDSStewieDeviceInfo)initWithCoder:(id)coder;
- (IDSStewieDeviceInfo)initWithLocale:(id)locale pushToken:(id)token dsid:(id)dsid accessTokens:(id)tokens featureIDs:(id)ds;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSStewieDeviceInfo

- (IDSStewieDeviceInfo)initWithLocale:(id)locale pushToken:(id)token dsid:(id)dsid accessTokens:(id)tokens featureIDs:(id)ds
{
  localeCopy = locale;
  tokenCopy = token;
  dsidCopy = dsid;
  tokensCopy = tokens;
  dsCopy = ds;
  v21.receiver = self;
  v21.super_class = IDSStewieDeviceInfo;
  v17 = [(IDSStewieDeviceInfo *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_locale, locale);
    objc_storeStrong(&v18->_pushToken, token);
    objc_storeStrong(&v18->_dsid, dsid);
    objc_storeStrong(&v18->_accessTokens, tokens);
    objc_storeStrong(&v18->_featureIDs, ds);
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      locale = [v5 locale];
      locale2 = [(IDSStewieDeviceInfo *)self locale];
      if (![locale isEqualToString:locale2])
      {
        v13 = 0;
LABEL_16:

        goto LABEL_17;
      }

      pushToken = [v5 pushToken];
      pushToken2 = [(IDSStewieDeviceInfo *)self pushToken];
      if (![pushToken isEqualToData:pushToken2])
      {
        v13 = 0;
LABEL_15:

        goto LABEL_16;
      }

      dsid = [v5 dsid];
      if (dsid || ([(IDSStewieDeviceInfo *)self dsid], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        dsid2 = [v5 dsid];
        dsid3 = [(IDSStewieDeviceInfo *)self dsid];
        v13 = [dsid2 isEqualToString:dsid3];

        if (dsid)
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
  locale = [(IDSStewieDeviceInfo *)self locale];
  v4 = [locale hash];
  pushToken = [(IDSStewieDeviceInfo *)self pushToken];
  v6 = [pushToken hash] ^ v4;

  dsid = [(IDSStewieDeviceInfo *)self dsid];

  if (dsid)
  {
    dsid2 = [(IDSStewieDeviceInfo *)self dsid];
    v6 ^= [dsid2 hash];
  }

  accessTokens = [(IDSStewieDeviceInfo *)self accessTokens];

  if (accessTokens)
  {
    accessTokens2 = [(IDSStewieDeviceInfo *)self accessTokens];
    v6 ^= [accessTokens2 hash];
  }

  featureIDs = [(IDSStewieDeviceInfo *)self featureIDs];

  if (featureIDs)
  {
    featureIDs2 = [(IDSStewieDeviceInfo *)self featureIDs];
    v6 ^= [featureIDs2 hash];
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  locale = [(IDSStewieDeviceInfo *)self locale];
  pushToken = [(IDSStewieDeviceInfo *)self pushToken];
  v6 = [pushToken debugDescription];
  dsid = [(IDSStewieDeviceInfo *)self dsid];
  accessTokens = [(IDSStewieDeviceInfo *)self accessTokens];
  v9 = [accessTokens count];
  featureIDs = [(IDSStewieDeviceInfo *)self featureIDs];
  v11 = [NSString stringWithFormat:@"<%@: %p { loc: %@, tok: %@, dsid: %@, accessTokens count: %ld, featureIDs: %@ }>", v3, self, locale, v6, dsid, v9, featureIDs];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  locale = [(IDSStewieDeviceInfo *)self locale];
  [coderCopy encodeObject:locale forKey:@"locale"];

  pushToken = [(IDSStewieDeviceInfo *)self pushToken];
  [coderCopy encodeObject:pushToken forKey:@"pushToken"];

  dsid = [(IDSStewieDeviceInfo *)self dsid];
  [coderCopy encodeObject:dsid forKey:@"dsid"];

  accessTokens = [(IDSStewieDeviceInfo *)self accessTokens];
  [coderCopy encodeObject:accessTokens forKey:@"accessTokens"];

  featureIDs = [(IDSStewieDeviceInfo *)self featureIDs];
  [coderCopy encodeObject:featureIDs forKey:@"featureIDs"];
}

- (IDSStewieDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushToken"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"accessTokens"];

  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"featureIDs"];

  v14 = [(IDSStewieDeviceInfo *)self initWithLocale:v5 pushToken:v6 dsid:v7 accessTokens:v10 featureIDs:v13];
  return v14;
}

@end