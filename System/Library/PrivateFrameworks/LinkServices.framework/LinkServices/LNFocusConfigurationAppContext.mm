@interface LNFocusConfigurationAppContext
- (BOOL)isEqual:(id)equal;
- (LNFocusConfigurationAppContext)initWithCoder:(id)coder;
- (LNFocusConfigurationAppContext)initWithNotificationFilterPredicate:(id)predicate targetContentIdentifierPrefix:(id)prefix;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNFocusConfigurationAppContext

- (LNFocusConfigurationAppContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notificationFilterPredicate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetContentIdentifierPrefix"];

  v7 = [(LNFocusConfigurationAppContext *)self initWithNotificationFilterPredicate:v5 targetContentIdentifierPrefix:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  notificationFilterPredicate = [(LNFocusConfigurationAppContext *)self notificationFilterPredicate];
  [coderCopy encodeObject:notificationFilterPredicate forKey:@"notificationFilterPredicate"];

  targetContentIdentifierPrefix = [(LNFocusConfigurationAppContext *)self targetContentIdentifierPrefix];
  [coderCopy encodeObject:targetContentIdentifierPrefix forKey:@"targetContentIdentifierPrefix"];
}

- (unint64_t)hash
{
  notificationFilterPredicate = [(LNFocusConfigurationAppContext *)self notificationFilterPredicate];
  v4 = [notificationFilterPredicate hash];
  targetContentIdentifierPrefix = [(LNFocusConfigurationAppContext *)self targetContentIdentifierPrefix];
  v6 = [targetContentIdentifierPrefix hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      notificationFilterPredicate = [(LNFocusConfigurationAppContext *)self notificationFilterPredicate];
      notificationFilterPredicate2 = [equalCopy notificationFilterPredicate];
      v7 = notificationFilterPredicate;
      v8 = notificationFilterPredicate2;
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

      targetContentIdentifierPrefix = [(LNFocusConfigurationAppContext *)self targetContentIdentifierPrefix];
      targetContentIdentifierPrefix2 = [equalCopy targetContentIdentifierPrefix];
      v12 = targetContentIdentifierPrefix;
      v15 = targetContentIdentifierPrefix2;
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

- (LNFocusConfigurationAppContext)initWithNotificationFilterPredicate:(id)predicate targetContentIdentifierPrefix:(id)prefix
{
  predicateCopy = predicate;
  prefixCopy = prefix;
  v15.receiver = self;
  v15.super_class = LNFocusConfigurationAppContext;
  v9 = [(LNFocusConfigurationAppContext *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_notificationFilterPredicate, predicate);
    v11 = [prefixCopy copy];
    targetContentIdentifierPrefix = v10->_targetContentIdentifierPrefix;
    v10->_targetContentIdentifierPrefix = v11;

    v13 = v10;
  }

  return v10;
}

@end