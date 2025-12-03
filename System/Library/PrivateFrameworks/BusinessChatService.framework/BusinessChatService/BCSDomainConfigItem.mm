@interface BCSDomainConfigItem
+ (id)keysRequestedForCloudKitFetch;
- (BCSDomainConfigItem)initWithBuckets:(int64_t)buckets domainShards:(int64_t)shards filterShards:(int64_t)filterShards expirationDate:(id)date filterMegaShardURL:(id)l domainMegaShardURL:(id)rL itemTTL:(id)tL;
- (BCSDomainConfigItem)initWithCoder:(id)coder;
- (BCSDomainConfigItem)initWithJSONObj:(id)obj;
- (BCSDomainConfigItem)initWithRecord:(id)record;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSDomainConfigItem

- (BCSDomainConfigItem)initWithBuckets:(int64_t)buckets domainShards:(int64_t)shards filterShards:(int64_t)filterShards expirationDate:(id)date filterMegaShardURL:(id)l domainMegaShardURL:(id)rL itemTTL:(id)tL
{
  rLCopy = rL;
  v20.receiver = self;
  v20.super_class = BCSDomainConfigItem;
  v17 = [(BCSConfigItem *)&v20 initWithBuckets:buckets shards:0 expirationDate:date filterMegaShardURL:l itemTTL:tL];
  v18 = v17;
  if (v17)
  {
    v17->_domainShardCount = shards;
    v17->_filterShardCount = filterShards;
    objc_storeStrong(&v17->_domainMegaShardURL, rL);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = BCSDomainConfigItem;
  v4 = [(BCSConfigItem *)&v12 description];
  buckets = [(BCSConfigItem *)self buckets];
  domainShardCount = [(BCSDomainConfigItem *)self domainShardCount];
  filterShardCount = [(BCSDomainConfigItem *)self filterShardCount];
  expirationDate = [(BCSConfigItem *)self expirationDate];
  itemTTL = [(BCSConfigItem *)self itemTTL];
  v10 = [v3 stringWithFormat:@"%@ - buckets:%lu - domainShards:%lu - filterShards:%lu - expirationDate:%@ - itemTTL:%@", v4, buckets, domainShardCount, filterShardCount, expirationDate, itemTTL];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = BCSDomainConfigItem;
  v4 = [(BCSConfigItem *)&v14 copyWithZone:zone];
  buckets = [(BCSConfigItem *)self buckets];
  domainShardCount = [(BCSDomainConfigItem *)self domainShardCount];
  filterShardCount = [(BCSDomainConfigItem *)self filterShardCount];
  expirationDate = [(BCSConfigItem *)self expirationDate];
  filterMegaShardURL = [(BCSConfigItem *)self filterMegaShardURL];
  domainMegaShardURL = [(BCSDomainConfigItem *)self domainMegaShardURL];
  itemTTL = [(BCSConfigItem *)self itemTTL];
  v12 = [v4 initWithBuckets:buckets domainShards:domainShardCount filterShards:filterShardCount expirationDate:expirationDate filterMegaShardURL:filterMegaShardURL domainMegaShardURL:domainMegaShardURL itemTTL:itemTTL];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BCSDomainConfigItem;
  coderCopy = coder;
  [(BCSConfigItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_domainShardCount forKey:{@"BCSDomainConfigItemDomainShardsCodingKey", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_filterShardCount forKey:@"BCSDomainConfigItemFilterShardsCodingKey"];
  [coderCopy encodeObject:self->_domainMegaShardURL forKey:@"BCSDomainConfigItemDomainMegaShardCodingKey"];
}

- (BCSDomainConfigItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BCSDomainConfigItem;
  v5 = [(BCSConfigItem *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_domainShardCount = [coderCopy decodeIntegerForKey:@"BCSDomainConfigItemDomainShardsCodingKey"];
    v5->_filterShardCount = [coderCopy decodeIntegerForKey:@"BCSDomainConfigItemFilterShardsCodingKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSDomainConfigItemDomainMegaShardCodingKey"];
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

- (BCSDomainConfigItem)initWithJSONObj:(id)obj
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [obj objectForKeyedSubscript:@"records"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v4 firstObject];
    v6 = [firstObject objectForKeyedSubscript:@"fields"];
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
        date = [MEMORY[0x277CBEAA8] date];
        [v14 doubleValue];
        v24 = [date dateByAddingTimeInterval:?];

        self = -[BCSDomainConfigItem initWithBuckets:domainShards:filterShards:expirationDate:](self, "initWithBuckets:domainShards:filterShards:expirationDate:", -[NSObject longLongValue](v8, "longLongValue"), [v10 longValue], objc_msgSend(v12, "longLongValue"), v24);
        selfCopy = self;
      }

      else
      {
        v17 = ABSLogCommon();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_242072000, v17, OS_LOG_TYPE_ERROR, "BCSDomainConfigItem buckets, domainShards, filterShards, or ttl is not an NSNumber", buf, 2u);
        }

        selfCopy = 0;
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

      selfCopy = 0;
    }
  }

  else
  {
    firstObject = ABSLogCommon();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 136315394;
      v26 = "[BCSDomainConfigItem(Conversion) initWithJSONObj:]";
      v27 = 2112;
      v28 = v21;
      _os_log_error_impl(&dword_242072000, firstObject, OS_LOG_TYPE_ERROR, "%s - Expected NSArray for records parameter. Got %@", buf, 0x16u);
    }

    selfCopy = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BCSDomainConfigItem)initWithRecord:(id)record
{
  v27 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"buckets"];
  v6 = [recordCopy objectForKeyedSubscript:@"domainShards"];
  v7 = [recordCopy objectForKeyedSubscript:@"filterShards"];
  v8 = [recordCopy objectForKeyedSubscript:@"ttl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [recordCopy objectForKeyedSubscript:@"filterArchive"];
    v10 = [recordCopy objectForKeyedSubscript:@"domainArchive"];
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

    date = [MEMORY[0x277CBEAA8] date];
    [v8 doubleValue];
    v24 = [date dateByAddingTimeInterval:?];

    longLongValue = [v5 longLongValue];
    longLongValue2 = [v6 longLongValue];
    longLongValue3 = [v7 longLongValue];
    fileURL = [v9 fileURL];
    [v10 fileURL];
    v15 = v23 = v10;
    v16 = [(BCSConfigItem *)self _extractItemTTLFromConfigRecord:recordCopy];
    self = [(BCSDomainConfigItem *)self initWithBuckets:longLongValue domainShards:longLongValue2 filterShards:longLongValue3 expirationDate:v24 filterMegaShardURL:fileURL domainMegaShardURL:v15 itemTTL:v16];

    selfCopy = self;
  }

  else
  {
    v9 = ABSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "BCSDomainConfigItem buckets, domainShards, filterShards, or ttl is not an NSNumber", buf, 2u);
    }

    selfCopy = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end