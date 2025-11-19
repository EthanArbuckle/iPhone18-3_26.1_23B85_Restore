@interface LNFocusConfigurationAppContext
- (BOOL)isEqual:(id)a3;
- (LNFocusConfigurationAppContext)initWithCoder:(id)a3;
- (LNFocusConfigurationAppContext)initWithNotificationFilterPredicate:(id)a3 targetContentIdentifierPrefix:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNFocusConfigurationAppContext

- (LNFocusConfigurationAppContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notificationFilterPredicate"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetContentIdentifierPrefix"];

  v7 = [(LNFocusConfigurationAppContext *)self initWithNotificationFilterPredicate:v5 targetContentIdentifierPrefix:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNFocusConfigurationAppContext *)self notificationFilterPredicate];
  [v4 encodeObject:v5 forKey:@"notificationFilterPredicate"];

  v6 = [(LNFocusConfigurationAppContext *)self targetContentIdentifierPrefix];
  [v4 encodeObject:v6 forKey:@"targetContentIdentifierPrefix"];
}

- (unint64_t)hash
{
  v3 = [(LNFocusConfigurationAppContext *)self notificationFilterPredicate];
  v4 = [v3 hash];
  v5 = [(LNFocusConfigurationAppContext *)self targetContentIdentifierPrefix];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(LNFocusConfigurationAppContext *)self notificationFilterPredicate];
      v6 = [v4 notificationFilterPredicate];
      v7 = v5;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        v11 = v8;
        v12 = v7;
        if (!v7 || !v8)
        {
LABEL_16:

LABEL_17:
          goto LABEL_18;
        }

        v10 = [v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_17;
        }
      }

      v13 = [(LNFocusConfigurationAppContext *)self targetContentIdentifierPrefix];
      v14 = [v4 targetContentIdentifierPrefix];
      v12 = v13;
      v15 = v14;
      v11 = v15;
      if (v12 == v15)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v12 && v15)
        {
          LOBYTE(v10) = [v12 isEqual:v15];
        }
      }

      goto LABEL_16;
    }
  }

  LOBYTE(v10) = 0;
LABEL_18:

  return v10;
}

- (LNFocusConfigurationAppContext)initWithNotificationFilterPredicate:(id)a3 targetContentIdentifierPrefix:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = LNFocusConfigurationAppContext;
  v9 = [(LNFocusConfigurationAppContext *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationFilterPredicate, a3);
    v11 = [v8 copy];
    targetContentIdentifierPrefix = v10->_targetContentIdentifierPrefix;
    v10->_targetContentIdentifierPrefix = v11;

    v13 = v10;
  }

  return v10;
}

@end