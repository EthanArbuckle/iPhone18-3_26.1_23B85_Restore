@interface BCSQuery
- (BCSQuery)initWithItemIdentifier:(id)identifier clientBundleId:(id)id shardType:(int64_t)type cacheOnly:(BOOL)only skipRegistrationCheck:(BOOL)check skipConfigFetch:(BOOL)fetch;
- (BCSQuery)initWithItemIdentifier:(id)identifier clientBundleId:(id)id shardType:(int64_t)type skipRegistrationCheck:(BOOL)check;
- (BCSQuery)initWithItemIdentifier:(id)identifier config:(id)config clientBundleId:(id)id shardType:(int64_t)type;
- (BCSQuery)initWithItemIdentifier:(id)identifier config:(id)config clientBundleId:(id)id shardType:(int64_t)type skipRegistrationCheck:(BOOL)check;
@end

@implementation BCSQuery

- (BCSQuery)initWithItemIdentifier:(id)identifier config:(id)config clientBundleId:(id)id shardType:(int64_t)type skipRegistrationCheck:(BOOL)check
{
  identifierCopy = identifier;
  configCopy = config;
  idCopy = id;
  v19.receiver = self;
  v19.super_class = BCSQuery;
  v16 = [(BCSQuery *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_itemIdentifier, identifier);
    objc_storeStrong(&v17->_config, config);
    objc_storeStrong(&v17->_clientBundleId, id);
    v17->_shardType = type;
    v17->_skipRegistrationCheck = check;
  }

  return v17;
}

- (BCSQuery)initWithItemIdentifier:(id)identifier config:(id)config clientBundleId:(id)id shardType:(int64_t)type
{
  identifierCopy = identifier;
  configCopy = config;
  idCopy = id;
  v17.receiver = self;
  v17.super_class = BCSQuery;
  v14 = [(BCSQuery *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_itemIdentifier, identifier);
    objc_storeStrong(&v15->_config, config);
    objc_storeStrong(&v15->_clientBundleId, id);
    v15->_shardType = type;
  }

  return v15;
}

- (BCSQuery)initWithItemIdentifier:(id)identifier clientBundleId:(id)id shardType:(int64_t)type skipRegistrationCheck:(BOOL)check
{
  identifierCopy = identifier;
  idCopy = id;
  v16.receiver = self;
  v16.super_class = BCSQuery;
  v13 = [(BCSQuery *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_itemIdentifier, identifier);
    objc_storeStrong(&v14->_clientBundleId, id);
    v14->_shardType = type;
    v14->_skipRegistrationCheck = check;
  }

  return v14;
}

- (BCSQuery)initWithItemIdentifier:(id)identifier clientBundleId:(id)id shardType:(int64_t)type cacheOnly:(BOOL)only skipRegistrationCheck:(BOOL)check skipConfigFetch:(BOOL)fetch
{
  identifierCopy = identifier;
  idCopy = id;
  v20.receiver = self;
  v20.super_class = BCSQuery;
  v17 = [(BCSQuery *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_itemIdentifier, identifier);
    objc_storeStrong(&v18->_clientBundleId, id);
    v18->_shardType = type;
    v18->_cacheOnly = only;
    v18->_skipRegistrationCheck = check;
    v18->_skipConfigFetch = fetch;
  }

  return v18;
}

@end