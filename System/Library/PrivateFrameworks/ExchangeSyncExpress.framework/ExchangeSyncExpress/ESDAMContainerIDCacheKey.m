@interface ESDAMContainerIDCacheKey
- (BOOL)isEqual:(id)a3;
- (ESDAMContainerIDCacheKey)initWithAccountID:(id)a3 andDataclass:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ESDAMContainerIDCacheKey

- (ESDAMContainerIDCacheKey)initWithAccountID:(id)a3 andDataclass:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ESDAMContainerIDCacheKey;
  v8 = [(ESDAMContainerIDCacheKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accountID, a3);
    v9->_dataclass = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accountID = self->_accountID;
    v6 = [v4 accountID];
    if ([(NSString *)accountID isEqualToString:v6])
    {
      dataclass = self->_dataclass;
      v8 = dataclass == [v4 dataclass];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ESDAMContainerIDCacheKey allocWithZone:a3];
  accountID = self->_accountID;
  dataclass = self->_dataclass;

  return [(ESDAMContainerIDCacheKey *)v4 initWithAccountID:accountID andDataclass:dataclass];
}

@end