@interface BCSConfigItem
+ (id)keysRequestedForCloudKitFetch;
- (BCSConfigItem)initWithBuckets:(int64_t)a3 shards:(int64_t)a4 expirationDate:(id)a5 filterMegaShardURL:(id)a6 itemTTL:(id)a7;
- (BCSConfigItem)initWithCoder:(id)a3;
- (BCSConfigItem)initWithJSONObj:(id)a3;
- (BCSConfigItem)initWithRecord:(id)a3;
- (BOOL)isExpired;
- (NSString)description;
- (id)_extractItemTTLFromConfigRecord:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSConfigItem

+ (id)keysRequestedForCloudKitFetch
{
  v5[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"buckets";
  v5[1] = @"shards";
  v5[2] = @"ttl";
  v5[3] = @"itemTtl";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BCSConfigItem)initWithJSONObj:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"records"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 firstObject];
    v6 = [v5 objectForKeyedSubscript:@"fields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKeyedSubscript:@"buckets"];
      v8 = [v7 objectForKeyedSubscript:@"value"];

      v9 = [v6 objectForKeyedSubscript:@"shards"];
      v10 = [v9 objectForKeyedSubscript:@"value"];

      v11 = [v6 objectForKeyedSubscript:@"ttl"];
      v12 = [v11 objectForKeyedSubscript:@"value"];

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v13 = [MEMORY[0x277CBEAA8] date];
        [v12 doubleValue];
        v14 = [v13 dateByAddingTimeInterval:?];

        self = -[BCSConfigItem initWithBuckets:shards:expirationDate:](self, "initWithBuckets:shards:expirationDate:", -[NSObject longLongValue](v8, "longLongValue"), [v10 longLongValue], v14);
        v15 = self;
      }

      else
      {
        v16 = ABSLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v18 = 0;
          _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "BCSConfigItem buckets, shards, or ttl is not an NSNumber", v18, 2u);
        }

        v15 = 0;
      }
    }

    else
    {
      v8 = ABSLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v19 = 0;
        _os_log_error_impl(&dword_242072000, v8, OS_LOG_TYPE_ERROR, "BCSConfigItem fields parameter is not an NSDictionary", v19, 2u);
      }

      v15 = 0;
    }
  }

  else
  {
    v5 = ABSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, v5, OS_LOG_TYPE_ERROR, "BCSConfigItem records parameter is not an NSArray", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (BCSConfigItem)initWithRecord:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"buckets"];
  v6 = [v4 objectForKeyedSubscript:@"shards"];
  v7 = [v4 objectForKeyedSubscript:@"ttl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [v4 objectForKeyedSubscript:@"filterArchive"];
    if (!v8)
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v20 = "[BCSConfigItem(Conversion) initWithRecord:]";
        _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "%s - No Chat Suggest Filter Megashard to download", buf, 0xCu);
      }
    }

    v10 = [MEMORY[0x277CBEAA8] date];
    [v7 doubleValue];
    v18 = [v10 dateByAddingTimeInterval:?];

    v11 = [v5 longLongValue];
    v12 = [v6 longLongValue];
    v13 = [v8 fileURL];
    v14 = [(BCSConfigItem *)self _extractItemTTLFromConfigRecord:v4];
    self = [(BCSConfigItem *)self initWithBuckets:v11 shards:v12 expirationDate:v18 filterMegaShardURL:v13 itemTTL:v14];

    v15 = self;
  }

  else
  {
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, v8, OS_LOG_TYPE_ERROR, "BCSConfigItem buckets, shards, or ttl is not an NSNumber", buf, 2u);
    }

    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_extractItemTTLFromConfigRecord:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"itemTtl"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = ABSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_242072000, v5, OS_LOG_TYPE_ERROR, "itemTTL exists but is not an NSNumber", v7, 2u);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (BCSConfigItem)initWithBuckets:(int64_t)a3 shards:(int64_t)a4 expirationDate:(id)a5 filterMegaShardURL:(id)a6 itemTTL:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = BCSConfigItem;
  v16 = [(BCSConfigItem *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_buckets = a3;
    v16->_filterShardCount = a4;
    objc_storeStrong(&v16->_expirationDate, a5);
    objc_storeStrong(&v17->_filterMegaShardURL, a6);
    objc_storeStrong(&v17->_itemTTL, a7);
  }

  return v17;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = BCSConfigItem;
  v4 = [(BCSConfigItem *)&v11 description];
  v5 = [(BCSConfigItem *)self buckets];
  v6 = [(BCSConfigItem *)self filterShardCount];
  v7 = [(BCSConfigItem *)self expirationDate];
  v8 = [(BCSConfigItem *)self itemTTL];
  v9 = [v3 stringWithFormat:@"%@ - buckets:%lu - shards:%lu - expirationDate:%@ - itemTTL:%@", v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isExpired
{
  v2 = [(BCSConfigItem *)self expirationDate];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v4)
  {
    v4[1] = [(BCSConfigItem *)self buckets];
    v4[2] = [(BCSConfigItem *)self filterShardCount];
    v5 = [(BCSConfigItem *)self expirationDate];
    v6 = v4[5];
    v4[5] = v5;

    v7 = [(BCSConfigItem *)self filterMegaShardURL];
    v8 = v4[4];
    v4[4] = v7;

    v9 = [(BCSConfigItem *)self itemTTL];
    v10 = v4[3];
    v4[3] = v9;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  buckets = self->_buckets;
  v5 = a3;
  [v5 encodeInteger:buckets forKey:@"BCSConfigItemBucketsCodingKey"];
  [v5 encodeInteger:self->_filterShardCount forKey:@"BCSConfigItemShardsCodingKey"];
  [v5 encodeObject:self->_expirationDate forKey:@"BCSConfigItemExpirationDateCodingKey"];
  [v5 encodeObject:self->_filterMegaShardURL forKey:@"BCSConfigItemFilterMegaShardCoding"];
  [v5 encodeObject:self->_itemTTL forKey:@"BCSConfigItemItemTTLCodingKey"];
}

- (BCSConfigItem)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BCSConfigItem;
  v5 = [(BCSConfigItem *)&v13 init];
  if (v5)
  {
    v5->_buckets = [v4 decodeIntegerForKey:@"BCSConfigItemBucketsCodingKey"];
    v5->_filterShardCount = [v4 decodeIntegerForKey:@"BCSConfigItemShardsCodingKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSConfigItemExpirationDateCodingKey"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSConfigItemFilterMegaShardCoding"];
    filterMegaShardURL = v5->_filterMegaShardURL;
    v5->_filterMegaShardURL = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSConfigItemItemTTLCodingKey"];
    itemTTL = v5->_itemTTL;
    v5->_itemTTL = v10;
  }

  return v5;
}

@end