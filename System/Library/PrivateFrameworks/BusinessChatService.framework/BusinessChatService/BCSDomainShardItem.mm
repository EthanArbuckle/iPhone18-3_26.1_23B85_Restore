@interface BCSDomainShardItem
+ (id)shardItemWithFileURL:(id)a3;
- (BCSDomainShardItem)initWithCoder:(id)a3;
- (BCSDomainShardItem)initWithFileURL:(id)a3 startIndex:(int64_t)a4 shardCount:(int64_t)a5 type:(int64_t)a6 expirationDate:(id)a7;
- (BCSDomainShardItem)initWithJSONObj:(id)a3 type:(int64_t)a4;
- (BCSDomainShardItem)initWithRecord:(id)a3 type:(int64_t)a4;
- (BCSDomainShardItem)initWithURL:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSDomainShardItem

- (BCSDomainShardItem)initWithJSONObj:(id)a3 type:(int64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [a3 objectForKeyedSubscript:{@"records", a4}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 firstObject];
    v7 = [v6 objectForKeyedSubscript:@"fields"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        *buf = 136315394;
        v33 = "[BCSDomainShardItem(Conversion) initWithJSONObj:type:]";
        v34 = 2112;
        v35 = v27;
        _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "%s - Expected NSDictionary fields parameter. Got %@", buf, 0x16u);
      }

      v19 = 0;
      goto LABEL_24;
    }

    v8 = [v7 objectForKeyedSubscript:@"filter"];
    v9 = [v8 objectForKeyedSubscript:@"value"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = ABSLogCommon();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 136315394;
        v33 = "[BCSDomainShardItem(Conversion) initWithJSONObj:type:]";
        v34 = 2112;
        v35 = v29;
        _os_log_error_impl(&dword_242072000, v11, OS_LOG_TYPE_ERROR, "%s - Expected NSString domainShardString parameter. Got %@", buf, 0x16u);
      }

      v19 = 0;
      goto LABEL_23;
    }

    v10 = [v7 objectForKeyedSubscript:@"shard"];
    v11 = [v10 objectForKeyedSubscript:@"value"];

    v12 = [v7 objectForKeyedSubscript:@"index"];
    v13 = [v12 objectForKeyedSubscript:@"value"];

    v14 = [v7 objectForKeyedSubscript:@"count"];
    v15 = [v14 objectForKeyedSubscript:@"value"];

    v16 = [v7 objectForKeyedSubscript:@"ttl"];
    v17 = [v16 objectForKeyedSubscript:@"value"];

    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [MEMORY[0x277CBEAA8] date];
            [v17 doubleValue];
            v31 = [v18 dateByAddingTimeInterval:?];

            v30 = [v11 fileURL];
            self = -[BCSDomainShardItem initWithFileURL:startIndex:shardCount:type:expirationDate:](self, "initWithFileURL:startIndex:shardCount:type:expirationDate:", v30, [v13 longLongValue], objc_msgSend(v15, "longLongValue"), 3, v31);

            v19 = self;
LABEL_22:

LABEL_23:
LABEL_24:

            goto LABEL_25;
          }
        }
      }

      v20 = ABSLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v33 = "[BCSDomainShardItem(Conversion) initWithJSONObj:type:]";
        v21 = "%s - BCSDomainShardItem bloomFilter, startIndex, shardCount, or ttl is not correct class type";
LABEL_27:
        _os_log_error_impl(&dword_242072000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
      }
    }

    else
    {
      v20 = ABSLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v33 = "[BCSDomainShardItem(Conversion) initWithJSONObj:type:]";
        v21 = "%s - No asset found in record to download Domain Shard";
        goto LABEL_27;
      }
    }

    v19 = 0;
    goto LABEL_22;
  }

  v6 = ABSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    *buf = 136315394;
    v33 = "[BCSDomainShardItem(Conversion) initWithJSONObj:type:]";
    v34 = 2112;
    v35 = v25;
    _os_log_error_impl(&dword_242072000, v6, OS_LOG_TYPE_ERROR, "%s - Expected NSArray for records parameter. Got %@", buf, 0x16u);
  }

  v19 = 0;
LABEL_25:

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BCSDomainShardItem)initWithRecord:(id)a3 type:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"shard"];
  v7 = [v5 objectForKeyedSubscript:@"index"];
  v8 = [v5 objectForKeyedSubscript:@"count"];
  v9 = [v5 objectForKeyedSubscript:@"ttl"];

  v10 = [MEMORY[0x277CBEAA8] date];
  [v9 doubleValue];
  v11 = [v10 dateByAddingTimeInterval:?];

  if (!v6)
  {
    v14 = ABSLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[BCSDomainShardItem(Conversion) initWithRecord:type:]";
      v15 = "%s - No asset found in record to download Domain Shard";
      goto LABEL_12;
    }

LABEL_9:

    v13 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = ABSLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315138;
      v19 = "[BCSDomainShardItem(Conversion) initWithRecord:type:]";
      v15 = "%s - BCSShardItem bloomFilter, startIndex, shardCount, or ttl is not correct class type";
LABEL_12:
      _os_log_error_impl(&dword_242072000, v14, OS_LOG_TYPE_ERROR, v15, &v18, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v12 = [v6 fileURL];
  self = -[BCSDomainShardItem initWithFileURL:startIndex:shardCount:type:expirationDate:](self, "initWithFileURL:startIndex:shardCount:type:expirationDate:", v12, [v7 longLongValue], objc_msgSend(v8, "longLongValue"), 3, v11);

  v13 = self;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BCSDomainShardItem)initWithURL:(id)a3
{
  v4 = [BCSDomainShardItem shardItemWithFileURL:a3];

  return v4;
}

+ (id)shardItemWithFileURL:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [[BCSLineReader alloc] initWithFileURL:v3];
  v5 = [(BCSLineReader *)v4 readLine];
  if ([v5 length])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v5 options:0];
    if ([v6 length])
    {
      v7 = [[BCSDomainShardItemMetadata alloc] initWithData:v6];
      if (v7)
      {
        v8 = v7;
        v9 = [MEMORY[0x277CBEAA8] date];
        v10 = [v9 dateByAddingTimeInterval:{-[BCSDomainShardItemMetadata ttl](v8, "ttl")}];

        v11 = [[BCSDomainShardItem alloc] initWithFileURL:v3 startIndex:[(BCSDomainShardItemMetadata *)v8 index] shardCount:[(BCSDomainShardItemMetadata *)v8 count] type:3 expirationDate:v10];
        goto LABEL_8;
      }
    }
  }

  else
  {
    v6 = ABSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "+[BCSDomainShardItem shardItemWithFileURL:]";
      v16 = 2112;
      v17 = v3;
      _os_log_error_impl(&dword_242072000, v6, OS_LOG_TYPE_ERROR, "%s Cannot create BCSDomainShardItem. Got nil metadata while reading file %@", &v14, 0x16u);
    }
  }

  v11 = 0;
LABEL_8:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BCSDomainShardItem)initWithFileURL:(id)a3 startIndex:(int64_t)a4 shardCount:(int64_t)a5 type:(int64_t)a6 expirationDate:(id)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = BCSDomainShardItem;
  v14 = [(BCSShardItem *)&v17 initWithBase64EncodedString:@"DS" shardType:a6 startIndex:a4 shardCount:a5 expirationDate:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fileURL, a3);
  }

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSDomainShardItem;
  v4 = [(BCSShardItem *)&v8 description];
  v5 = [(BCSDomainShardItem *)self fileURL];
  v6 = [v3 stringWithFormat:@"%@ - File URL %@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = BCSDomainShardItem;
  v4 = [(BCSShardItem *)&v8 copyWithZone:a3];
  if (v4)
  {
    v5 = [(BCSDomainShardItem *)self fileURL];
    v6 = v4[6];
    v4[6] = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BCSDomainShardItem;
  v4 = a3;
  [(BCSShardItem *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_fileURL forKey:{@"BCSDomainShardItemFileURLCoding", v5.receiver, v5.super_class}];
}

- (BCSDomainShardItem)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BCSDomainShardItem;
  v5 = [(BCSShardItem *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BCSDomainShardItemFileURLCoding"];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;
  }

  return v5;
}

@end