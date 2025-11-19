@interface BCSQuery
- (BCSQuery)initWithItemIdentifier:(id)a3 clientBundleId:(id)a4 shardType:(int64_t)a5 cacheOnly:(BOOL)a6 skipRegistrationCheck:(BOOL)a7 skipConfigFetch:(BOOL)a8;
- (BCSQuery)initWithItemIdentifier:(id)a3 clientBundleId:(id)a4 shardType:(int64_t)a5 skipRegistrationCheck:(BOOL)a6;
- (BCSQuery)initWithItemIdentifier:(id)a3 config:(id)a4 clientBundleId:(id)a5 shardType:(int64_t)a6;
- (BCSQuery)initWithItemIdentifier:(id)a3 config:(id)a4 clientBundleId:(id)a5 shardType:(int64_t)a6 skipRegistrationCheck:(BOOL)a7;
@end

@implementation BCSQuery

- (BCSQuery)initWithItemIdentifier:(id)a3 config:(id)a4 clientBundleId:(id)a5 shardType:(int64_t)a6 skipRegistrationCheck:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v19.receiver = self;
  v19.super_class = BCSQuery;
  v16 = [(BCSQuery *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_itemIdentifier, a3);
    objc_storeStrong(&v17->_config, a4);
    objc_storeStrong(&v17->_clientBundleId, a5);
    v17->_shardType = a6;
    v17->_skipRegistrationCheck = a7;
  }

  return v17;
}

- (BCSQuery)initWithItemIdentifier:(id)a3 config:(id)a4 clientBundleId:(id)a5 shardType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = BCSQuery;
  v14 = [(BCSQuery *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_itemIdentifier, a3);
    objc_storeStrong(&v15->_config, a4);
    objc_storeStrong(&v15->_clientBundleId, a5);
    v15->_shardType = a6;
  }

  return v15;
}

- (BCSQuery)initWithItemIdentifier:(id)a3 clientBundleId:(id)a4 shardType:(int64_t)a5 skipRegistrationCheck:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = BCSQuery;
  v13 = [(BCSQuery *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_itemIdentifier, a3);
    objc_storeStrong(&v14->_clientBundleId, a4);
    v14->_shardType = a5;
    v14->_skipRegistrationCheck = a6;
  }

  return v14;
}

- (BCSQuery)initWithItemIdentifier:(id)a3 clientBundleId:(id)a4 shardType:(int64_t)a5 cacheOnly:(BOOL)a6 skipRegistrationCheck:(BOOL)a7 skipConfigFetch:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = BCSQuery;
  v17 = [(BCSQuery *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_itemIdentifier, a3);
    objc_storeStrong(&v18->_clientBundleId, a4);
    v18->_shardType = a5;
    v18->_cacheOnly = a6;
    v18->_skipRegistrationCheck = a7;
    v18->_skipConfigFetch = a8;
  }

  return v18;
}

@end