@interface BCSDomainConfigItem
+ (id)keysRequestedForCloudKitFetch;
- (BCSDomainConfigItem)initWithBuckets:(int64_t)a3 domainShards:(int64_t)a4 filterShards:(int64_t)a5 expirationDate:(id)a6 filterMegaShardURL:(id)a7 domainMegaShardURL:(id)a8 itemTTL:(id)a9;
- (BCSDomainConfigItem)initWithCoder:(id)a3;
- (BCSDomainConfigItem)initWithJSONObj:(id)a3;
- (BCSDomainConfigItem)initWithRecord:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSDomainConfigItem

- (BCSDomainConfigItem)initWithBuckets:(int64_t)a3 domainShards:(int64_t)a4 filterShards:(int64_t)a5 expirationDate:(id)a6 filterMegaShardURL:(id)a7 domainMegaShardURL:(id)a8 itemTTL:(id)a9
{
  v16 = a8;
  v20.receiver = self;
  v20.super_class = BCSDomainConfigItem;
  v17 = [(BCSConfigItem *)&v20 initWithBuckets:a3 shards:0 expirationDate:a6 filterMegaShardURL:a7 itemTTL:a9];
  v18 = v17;
  if (v17)
  {
    v17->_domainShardCount = a4;
    v17->_filterShardCount = a5;
    objc_storeStrong(&v17->_domainMegaShardURL, a8);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = BCSDomainConfigItem;
  v4 = [(BCSConfigItem *)&v12 description];
  v5 = [(BCSConfigItem *)self buckets];
  v6 = [(BCSDomainConfigItem *)self domainShardCount];
  v7 = [(BCSDomainConfigItem *)self filterShardCount];
  v8 = [(BCSConfigItem *)self expirationDate];
  v9 = [(BCSConfigItem *)self itemTTL];
  v10 = [v3 stringWithFormat:@"%@ - buckets:%lu - domainShards:%lu - filterShards:%lu - expirationDate:%@ - itemTTL:%@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = BCSDomainConfigItem;
  v4 = [(BCSConfigItem *)&v14 copyWithZone:a3];
  v5 = [(BCSConfigItem *)self buckets];
  v6 = [(BCSDomainConfigItem *)self domainShardCount];
  v7 = [(BCSDomainConfigItem *)self filterShardCount];
  v8 = [(BCSConfigItem *)self expirationDate];
  v9 = [(BCSConfigItem *)self filterMegaShardURL];
  v10 = [(BCSDomainConfigItem *)self domainMegaShardURL];
  v11 = [(BCSConfigItem *)self itemTTL];
  v12 = [v4 initWithBuckets:v5 domainShards:v6 filterShards:v7 expirationDate:v8 filterMegaShardURL:v9 domainMegaShardURL:v10 itemTTL:v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BCSDomainConfigItem;
  v4 = a3;
  [(BCSConfigItem *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_domainShardCount forKey:{@"BCSDomainConfigItemDomainShardsCodingKey", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_filterShardCount forKey:@"BCSDomainConfigItemFilterShardsCodingKey"];
  [v4 encodeObject:self->_domainMegaShardURL forKey:@"BCSDomainConfigItemDomainMegaShardCodingKey"];
}

- (BCSDomainConfigItem)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BCSDomainConfigItem;
  v5 = [(BCSConfigItem *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_domainShardCount = [v4 decodeIntegerForKey:@"BCSDomainConfigItemDomainShardsCodingKey"];
    v5->_filterShardCount = [v4 decodeIntegerForKey:@"BCSDomainConfigItemFilterShardsCodingKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSDomainConfigItemDomainMegaShardCodingKey"];
    domainMegaShardURL = v5->_domainMegaShardURL;
    v5->_domainMegaShardURL = v6;
  }

  return v5;
}

+ (id)keysRequestedForCloudKitFetch
{
  v5[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"buckets";
  v5[1] = @"domainShards";
  v5[2] = @"filterShards";
  v5[3] = @"ttl";
  v5[4] = @"itemTtl";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BCSDomainConfigItem)initWithJSONObj:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
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

      v9 = [v6 objectForKeyedSubscript:@"domainShards"];
      v10 = [v9 objectForKeyedSubscript:@"value"];

      v11 = [v6 objectForKeyedSubscript:@"filterShards"];
      v12 = [v11 objectForKeyedSubscript:@"value"];

      v13 = [v6 objectForKeyedSubscript:@"ttl"];
      v14 = [v13 objectForKeyedSubscript:@"value"];

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v15 = [MEMORY[0x277CBEAA8] date];
        [v14 doubleValue];
        v24 = [v15 dateByAddingTimeInterval:?];

        self = -[BCSDomainConfigItem initWithBuckets:domainShards:filterShards:expirationDate:](self, "initWithBuckets:domainShards:filterShards:expirationDate:", -[NSObject longLongValue](v8, "longLongValue"), [v10 longValue], objc_msgSend(v12, "longLongValue"), v24);
        v16 = self;
      }

      else
      {
        v17 = ABSLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_242072000, v17, OS_LOG_TYPE_ERROR, "BCSDomainConfigItem buckets, domainShards, filterShards, or ttl is not an NSNumber", buf, 2u);
        }

        v16 = 0;
      }
    }

    else
    {
      v8 = ABSLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 136315394;
        v26 = "[BCSDomainConfigItem(Conversion) initWithJSONObj:]";
        v27 = 2112;
        v28 = v23;
        _os_log_error_impl(&dword_242072000, v8, OS_LOG_TYPE_ERROR, "%s - Expected NSDictionary fields parameter. Got %@", buf, 0x16u);
      }

      v16 = 0;
    }
  }

  else
  {
    v5 = ABSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 136315394;
      v26 = "[BCSDomainConfigItem(Conversion) initWithJSONObj:]";
      v27 = 2112;
      v28 = v21;
      _os_log_error_impl(&dword_242072000, v5, OS_LOG_TYPE_ERROR, "%s - Expected NSArray for records parameter. Got %@", buf, 0x16u);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BCSDomainConfigItem)initWithRecord:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"buckets"];
  v6 = [v4 objectForKeyedSubscript:@"domainShards"];
  v7 = [v4 objectForKeyedSubscript:@"filterShards"];
  v8 = [v4 objectForKeyedSubscript:@"ttl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [v4 objectForKeyedSubscript:@"filterArchive"];
    v10 = [v4 objectForKeyedSubscript:@"domainArchive"];
    if (!v9)
    {
      v11 = ABSLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v26 = "[BCSDomainConfigItem(Conversion) initWithRecord:]";
        _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s - No Filter Megashard to download", buf, 0xCu);
      }
    }

    if (!v10)
    {
      v12 = ABSLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v26 = "[BCSDomainConfigItem(Conversion) initWithRecord:]";
        _os_log_impl(&dword_242072000, v12, OS_LOG_TYPE_DEFAULT, "%s - No Domain Megashard to download", buf, 0xCu);
      }
    }

    v13 = [MEMORY[0x277CBEAA8] date];
    [v8 doubleValue];
    v24 = [v13 dateByAddingTimeInterval:?];

    v22 = [v5 longLongValue];
    v21 = [v6 longLongValue];
    v20 = [v7 longLongValue];
    v14 = [v9 fileURL];
    [v10 fileURL];
    v15 = v23 = v10;
    v16 = [(BCSConfigItem *)self _extractItemTTLFromConfigRecord:v4];
    self = [(BCSDomainConfigItem *)self initWithBuckets:v22 domainShards:v21 filterShards:v20 expirationDate:v24 filterMegaShardURL:v14 domainMegaShardURL:v15 itemTTL:v16];

    v17 = self;
  }

  else
  {
    v9 = ABSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "BCSDomainConfigItem buckets, domainShards, filterShards, or ttl is not an NSNumber", buf, 2u);
    }

    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

@end