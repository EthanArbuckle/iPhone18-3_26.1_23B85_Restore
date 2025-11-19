@interface BCMutableStoreItem
- (BCMutableStoreItem)initWithCloudData:(id)a3;
- (BCMutableStoreItem)initWithCoder:(id)a3;
- (BCMutableStoreItem)initWithRecord:(id)a3;
- (BCMutableStoreItem)initWithStoreID:(id)a3;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCMutableStoreItem

- (BCMutableStoreItem)initWithStoreID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4704FCC();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableStoreItem;
  v5 = [(BCMutableCloudData *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    self = *(v5 + 8);
    *(v5 + 8) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableStoreItem)initWithCloudData:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BCMutableStoreItem;
  v5 = [(BCMutableCloudData *)&v12 initWithCloudData:v4];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      v8 = [v6 storeID];
      v9 = [v8 copy];
      storeID = v5->_storeID;
      v5->_storeID = v9;
    }

    else
    {
      storeID = BDSCloudKitLog();
      if (os_log_type_enabled(storeID, OS_LOG_TYPE_ERROR))
      {
        sub_1E4704E50();
      }

      v8 = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BCMutableStoreItem)initWithRecord:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = BDSCloudKitLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1E4705000();
    }

    v5 = 0;
    goto LABEL_7;
  }

  v9.receiver = self;
  v9.super_class = BCMutableStoreItem;
  v5 = [(BCMutableCloudData *)&v9 initWithRecord:v4];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:v4];
    self = *(v5 + 8);
    *(v5 + 8) = v6;
LABEL_7:
  }

  return v5;
}

- (id)configuredRecordFromAttributes
{
  v4.receiver = self;
  v4.super_class = BCMutableStoreItem;
  v2 = [(BCMutableCloudData *)&v4 configuredRecordFromAttributes];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = BCMutableStoreItem;
  [(BCMutableCloudData *)&v3 encodeWithCoder:a3];
}

- (BCMutableStoreItem)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = BCMutableStoreItem;
  v3 = [(BCMutableCloudData *)&v8 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(BCMutableCloudData *)v3 localRecordID];
    storeID = v4->_storeID;
    v4->_storeID = v5;
  }

  return v4;
}

@end