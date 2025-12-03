@interface ESDAMContainerIDCacheKey
- (BOOL)isEqual:(id)equal;
- (ESDAMContainerIDCacheKey)initWithAccountID:(id)d andDataclass:(int64_t)dataclass;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ESDAMContainerIDCacheKey

- (ESDAMContainerIDCacheKey)initWithAccountID:(id)d andDataclass:(int64_t)dataclass
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = ESDAMContainerIDCacheKey;
  v8 = [(ESDAMContainerIDCacheKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accountID, d);
    v9->_dataclass = dataclass;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accountID = self->_accountID;
    accountID = [equalCopy accountID];
    if ([(NSString *)accountID isEqualToString:accountID])
    {
      dataclass = self->_dataclass;
      v8 = dataclass == [equalCopy dataclass];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ESDAMContainerIDCacheKey allocWithZone:zone];
  accountID = self->_accountID;
  dataclass = self->_dataclass;

  return [(ESDAMContainerIDCacheKey *)v4 initWithAccountID:accountID andDataclass:dataclass];
}

@end