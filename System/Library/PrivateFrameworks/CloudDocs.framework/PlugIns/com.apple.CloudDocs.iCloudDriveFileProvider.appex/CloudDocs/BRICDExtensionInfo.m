@interface BRICDExtensionInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToExtensionInfo:(id)a3;
- (BRICDExtensionInfo)initWithDomainIdentifier:(id)a3 databaseID:(id)a4 delegate:(id)a5;
- (void)refreshDatabaseID;
@end

@implementation BRICDExtensionInfo

- (BRICDExtensionInfo)initWithDomainIdentifier:(id)a3 databaseID:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = BRICDExtensionInfo;
  v12 = [(BRICDExtensionInfo *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_domainIdentifier, a3);
    objc_storeStrong(&v13->_databaseID, a4);
    v14 = +[NSHashTable weakObjectsHashTable];
    delegates = v13->_delegates;
    v13->_delegates = v14;

    [(NSHashTable *)v13->_delegates addObject:v11];
  }

  return v13;
}

- (void)refreshDatabaseID
{
  v3 = self->_databaseID;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_delegates;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [*(*(&v14 + 1) + 8 * v8) refreshDatabaseID];
      databaseID = self->_databaseID;
      self->_databaseID = v9;

      if (self->_databaseID)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v14 objects:v24 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = self->_databaseID;
    *buf = 138412802;
    v19 = v3;
    v20 = 2112;
    v21 = v13;
    v22 = 2112;
    v23 = v11;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated databaseID from %@ to %@%@", buf, 0x20u);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(BRICDExtensionInfo *)self isEqualToExtensionInfo:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToExtensionInfo:(id)a3
{
  domainIdentifier = self->_domainIdentifier;
  v4 = [a3 domainIdentifier];
  LOBYTE(domainIdentifier) = [(NSString *)domainIdentifier isEqualToString:v4];

  return domainIdentifier;
}

@end