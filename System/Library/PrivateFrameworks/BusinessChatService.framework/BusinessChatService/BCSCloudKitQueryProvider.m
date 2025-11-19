@interface BCSCloudKitQueryProvider
- (id)_shardRecordNameForType:(int64_t)a3 index:(int64_t)a4 count:(int64_t)a5;
- (id)_shardRecordTypeForType:(int64_t)a3;
- (id)queryForFetchConfigItemWithType:(int64_t)a3;
- (id)queryForFetchItemsWithStartIndex:(int64_t)a3 endIndex:(int64_t)a4 type:(int64_t)a5;
- (id)queryForFetchShardIdentifier:(id)a3;
@end

@implementation BCSCloudKitQueryProvider

- (id)queryForFetchConfigItemWithType:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      v4 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:@"config-v1"];
      v5 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v4 action:0];
      v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"recordID", v5];
      v7 = objc_alloc(MEMORY[0x277CBC578]);
      v8 = @"ChatSuggestConfig";
    }

    else
    {
      if (a3 != 2)
      {
        goto LABEL_13;
      }

      v4 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:@"config-v2"];
      v5 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v4 action:0];
      v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"recordID", v5];
      v7 = objc_alloc(MEMORY[0x277CBC578]);
      v8 = @"DomainLinkConfig";
    }
  }

  else
  {
    switch(a3)
    {
      case 3:
        v4 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:@"caller-id-config-v1"];
        v5 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v4 action:0];
        v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"recordID", v5];
        v7 = objc_alloc(MEMORY[0x277CBC578]);
        v8 = @"CallerIdConfig";
        break;
      case 4:
        v4 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:@"BrandedEmail-config-v1"];
        v5 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v4 action:0];
        v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ AND %K == %@", @"recordID", v5, @"assetType", @"BrandedEmail"];
        v7 = objc_alloc(MEMORY[0x277CBC578]);
        v8 = @"BcaConfig";
        break;
      case 5:
        v4 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:@"WebPresentment-config-v1"];
        v5 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v4 action:0];
        v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@ AND %K == %@", @"recordID", v5, @"assetType", @"WebPresentment"];
        v7 = objc_alloc(MEMORY[0x277CBC578]);
        v8 = @"WebPresentmentConfig";
        break;
      default:
        goto LABEL_13;
    }
  }

  v3 = [v7 initWithRecordType:v8 predicate:v6];

LABEL_13:

  return v3;
}

- (id)queryForFetchShardIdentifier:(id)a3
{
  v4 = a3;
  v5 = -[BCSCloudKitQueryProvider _shardRecordNameForType:index:count:](self, "_shardRecordNameForType:index:count:", [v4 type], objc_msgSend(v4, "startIndex"), objc_msgSend(v4, "shardCount"));
  v6 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v5];
  v7 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v6 action:0];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"recordID", v7];
  v9 = objc_alloc(MEMORY[0x277CBC578]);
  v10 = [v4 type];

  v11 = [(BCSCloudKitQueryProvider *)self _shardRecordTypeForType:v10];
  v12 = [v9 initWithRecordType:v11 predicate:v8];

  return v12;
}

- (id)queryForFetchItemsWithStartIndex:(int64_t)a3 endIndex:(int64_t)a4 type:(int64_t)a5
{
  switch(a5)
  {
    case 3:
      v15 = MEMORY[0x277CCAC30];
      v16 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
      v9 = [v15 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"hash", v16, @"hash", v17];

      v10 = objc_alloc(MEMORY[0x277CBC578]);
      v11 = @"CallerId";
      goto LABEL_7;
    case 2:
      v12 = MEMORY[0x277CCAC30];
      v13 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
      v9 = [v12 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"hashPrefix", v13, @"hashPrefix", v14];

      v10 = objc_alloc(MEMORY[0x277CBC578]);
      v11 = @"BusinessLink";
      goto LABEL_7;
    case 1:
      v6 = MEMORY[0x277CCAC30];
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
      v8 = [MEMORY[0x277CCABB0] numberWithLongLong:a4];
      v9 = [v6 predicateWithFormat:@"%K >= %@ AND %K <= %@", @"hash", v7, @"hash", v8];

      v10 = objc_alloc(MEMORY[0x277CBC578]);
      v11 = @"ChatSuggest";
LABEL_7:
      v18 = [v10 initWithRecordType:v11 predicate:v9];

      goto LABEL_9;
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (id)_shardRecordNameForType:(int64_t)a3 index:(int64_t)a4 count:(int64_t)a5
{
  if ((a3 - 1) <= 5)
  {
    self = [MEMORY[0x277CCACA8] stringWithFormat:off_278D39D48[a3 - 1], a4, a5, v5];
  }

  return self;
}

- (id)_shardRecordTypeForType:(int64_t)a3
{
  if ((a3 - 2) > 4)
  {
    return @"ChatSuggestFilter";
  }

  else
  {
    return off_278D39D78[a3 - 2];
  }
}

@end