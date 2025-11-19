@interface ICASCloudSyncableItemData
- (ICASCloudSyncableItemData)initWithSyncableDataType:(id)a3 count:(id)a4;
- (id)toDict;
@end

@implementation ICASCloudSyncableItemData

- (ICASCloudSyncableItemData)initWithSyncableDataType:(id)a3 count:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICASCloudSyncableItemData;
  v9 = [(ICASCloudSyncableItemData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_syncableDataType, a3);
    objc_storeStrong(&v10->_count, a4);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"syncableDataType";
  v3 = [(ICASCloudSyncableItemData *)self syncableDataType];
  if (v3)
  {
    v4 = [(ICASCloudSyncableItemData *)self syncableDataType];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v12[1] = @"count";
  v13[0] = v4;
  v6 = [(ICASCloudSyncableItemData *)self count];
  if (v6)
  {
    v7 = [(ICASCloudSyncableItemData *)self count];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end