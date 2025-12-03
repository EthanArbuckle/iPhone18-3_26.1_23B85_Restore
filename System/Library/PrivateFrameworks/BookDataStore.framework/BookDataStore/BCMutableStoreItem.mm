@interface BCMutableStoreItem
- (BCMutableStoreItem)initWithCloudData:(id)data;
- (BCMutableStoreItem)initWithCoder:(id)coder;
- (BCMutableStoreItem)initWithRecord:(id)record;
- (BCMutableStoreItem)initWithStoreID:(id)d;
- (id)configuredRecordFromAttributes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCMutableStoreItem

- (BCMutableStoreItem)initWithStoreID:(id)d
{
  dCopy = d;
  if (!dCopy)
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
    v6 = [dCopy copy];
    self = *(v5 + 8);
    *(v5 + 8) = v6;
LABEL_7:
  }

  return v5;
}

- (BCMutableStoreItem)initWithCloudData:(id)data
{
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = BCMutableStoreItem;
  v5 = [(BCMutableCloudData *)&v12 initWithCloudData:dataCopy];
  if (v5)
  {
    v6 = BUProtocolCast();
    v7 = v6;
    if (v6)
    {
      storeID = [v6 storeID];
      v9 = [storeID copy];
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

      storeID = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (BCMutableStoreItem)initWithRecord:(id)record
{
  recordCopy = record;
  if (!recordCopy)
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
  v5 = [(BCMutableCloudData *)&v9 initWithRecord:recordCopy];
  if (v5)
  {
    v6 = [BCCloudData localIdentifierFromRecord:recordCopy];
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
  configuredRecordFromAttributes = [(BCMutableCloudData *)&v4 configuredRecordFromAttributes];

  return configuredRecordFromAttributes;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = BCMutableStoreItem;
  [(BCMutableCloudData *)&v3 encodeWithCoder:coder];
}

- (BCMutableStoreItem)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = BCMutableStoreItem;
  v3 = [(BCMutableCloudData *)&v8 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    localRecordID = [(BCMutableCloudData *)v3 localRecordID];
    storeID = v4->_storeID;
    v4->_storeID = localRecordID;
  }

  return v4;
}

@end