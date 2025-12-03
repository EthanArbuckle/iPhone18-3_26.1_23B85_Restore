@interface ICASCloudSyncableItemData
- (ICASCloudSyncableItemData)initWithSyncableDataType:(id)type count:(id)count;
- (id)toDict;
@end

@implementation ICASCloudSyncableItemData

- (ICASCloudSyncableItemData)initWithSyncableDataType:(id)type count:(id)count
{
  typeCopy = type;
  countCopy = count;
  v12.receiver = self;
  v12.super_class = ICASCloudSyncableItemData;
  v9 = [(ICASCloudSyncableItemData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_syncableDataType, type);
    objc_storeStrong(&v10->_count, count);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"syncableDataType";
  syncableDataType = [(ICASCloudSyncableItemData *)self syncableDataType];
  if (syncableDataType)
  {
    syncableDataType2 = [(ICASCloudSyncableItemData *)self syncableDataType];
  }

  else
  {
    syncableDataType2 = objc_opt_new();
  }

  v5 = syncableDataType2;
  v12[1] = @"count";
  v13[0] = syncableDataType2;
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