@interface BCSConfigItem
+ (id)keysRequestedForCloudKitFetch;
- (BCSConfigItem)initWithBuckets:(int64_t)buckets shards:(int64_t)shards expirationDate:(id)date filterMegaShardURL:(id)l itemTTL:(id)tL;
- (BCSConfigItem)initWithCoder:(id)coder;
- (BCSConfigItem)initWithJSONObj:(id)obj;
- (BCSConfigItem)initWithRecord:(id)record;
- (BOOL)isExpired;
- (NSString)description;
- (id)_extractItemTTLFromConfigRecord:(id)record;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (BCSConfigItem)initWithJSONObj:(id)obj
{
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

      v9 = [v6 objectForKeyedSubscript:@"shards"];
      v10 = [v9 objectForKeyedSubscript:@"value"];

      v11 = [v6 objectForKeyedSubscript:@"ttl"];
      v12 = [v11 objectForKeyedSubscript:@"value"];

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        date = [MEMORY[0x277CBEAA8] date];
        [v12 doubleValue];
        v14 = [date dateByAddingTimeInterval:?];

        self = -[BCSConfigItem initWithBuckets:shards:expirationDate:](self, "initWithBuckets:shards:expirationDate:", -[NSObject longLongValue](v8, "longLongValue"), [v10 longLongValue], v14);
        selfCopy = self;
      }

      else
      {
        v16 = ABSLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v18 = 0;
          _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "BCSConfigItem buckets, shards, or ttl is not an NSNumber", v18, 2u);
        }

        selfCopy = 0;
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

      selfCopy = 0;
    }
  }

  else
  {
    firstObject = ABSLogCommon();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, firstObject, OS_LOG_TYPE_ERROR, "BCSConfigItem records parameter is not an NSArray", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (BCSConfigItem)initWithRecord:(id)record
{
  v21 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"buckets"];
  v6 = [recordCopy objectForKeyedSubscript:@"shards"];
  v7 = [recordCopy objectForKeyedSubscript:@"ttl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [recordCopy objectForKeyedSubscript:@"filterArchive"];
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

    date = [MEMORY[0x277CBEAA8] date];
    [v7 doubleValue];
    v18 = [date dateByAddingTimeInterval:?];

    longLongValue = [v5 longLongValue];
    longLongValue2 = [v6 longLongValue];
    fileURL = [v8 fileURL];
    v14 = [(BCSConfigItem *)self _extractItemTTLFromConfigRecord:recordCopy];
    self = [(BCSConfigItem *)self initWithBuckets:longLongValue shards:longLongValue2 expirationDate:v18 filterMegaShardURL:fileURL itemTTL:v14];

    selfCopy = self;
  }

  else
  {
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, v8, OS_LOG_TYPE_ERROR, "BCSConfigItem buckets, shards, or ttl is not an NSNumber", buf, 2u);
    }

    selfCopy = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)_extractItemTTLFromConfigRecord:(id)record
{
  v3 = [record objectForKeyedSubscript:@"itemTtl"];
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

- (BCSConfigItem)initWithBuckets:(int64_t)buckets shards:(int64_t)shards expirationDate:(id)date filterMegaShardURL:(id)l itemTTL:(id)tL
{
  dateCopy = date;
  lCopy = l;
  tLCopy = tL;
  v19.receiver = self;
  v19.super_class = BCSConfigItem;
  v16 = [(BCSConfigItem *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_buckets = buckets;
    v16->_filterShardCount = shards;
    objc_storeStrong(&v16->_expirationDate, date);
    objc_storeStrong(&v17->_filterMegaShardURL, l);
    objc_storeStrong(&v17->_itemTTL, tL);
  }

  return v17;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = BCSConfigItem;
  v4 = [(BCSConfigItem *)&v11 description];
  buckets = [(BCSConfigItem *)self buckets];
  filterShardCount = [(BCSConfigItem *)self filterShardCount];
  expirationDate = [(BCSConfigItem *)self expirationDate];
  itemTTL = [(BCSConfigItem *)self itemTTL];
  v9 = [v3 stringWithFormat:@"%@ - buckets:%lu - shards:%lu - expirationDate:%@ - itemTTL:%@", v4, buckets, filterShardCount, expirationDate, itemTTL];

  return v9;
}

- (BOOL)isExpired
{
  expirationDate = [(BCSConfigItem *)self expirationDate];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [expirationDate compare:date] == -1;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v4[1] = [(BCSConfigItem *)self buckets];
    v4[2] = [(BCSConfigItem *)self filterShardCount];
    expirationDate = [(BCSConfigItem *)self expirationDate];
    v6 = v4[5];
    v4[5] = expirationDate;

    filterMegaShardURL = [(BCSConfigItem *)self filterMegaShardURL];
    v8 = v4[4];
    v4[4] = filterMegaShardURL;

    itemTTL = [(BCSConfigItem *)self itemTTL];
    v10 = v4[3];
    v4[3] = itemTTL;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  buckets = self->_buckets;
  coderCopy = coder;
  [coderCopy encodeInteger:buckets forKey:@"BCSConfigItemBucketsCodingKey"];
  [coderCopy encodeInteger:self->_filterShardCount forKey:@"BCSConfigItemShardsCodingKey"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"BCSConfigItemExpirationDateCodingKey"];
  [coderCopy encodeObject:self->_filterMegaShardURL forKey:@"BCSConfigItemFilterMegaShardCoding"];
  [coderCopy encodeObject:self->_itemTTL forKey:@"BCSConfigItemItemTTLCodingKey"];
}

- (BCSConfigItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = BCSConfigItem;
  v5 = [(BCSConfigItem *)&v13 init];
  if (v5)
  {
    v5->_buckets = [coderCopy decodeIntegerForKey:@"BCSConfigItemBucketsCodingKey"];
    v5->_filterShardCount = [coderCopy decodeIntegerForKey:@"BCSConfigItemShardsCodingKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSConfigItemExpirationDateCodingKey"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSConfigItemFilterMegaShardCoding"];
    filterMegaShardURL = v5->_filterMegaShardURL;
    v5->_filterMegaShardURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSConfigItemItemTTLCodingKey"];
    itemTTL = v5->_itemTTL;
    v5->_itemTTL = v10;
  }

  return v5;
}

@end