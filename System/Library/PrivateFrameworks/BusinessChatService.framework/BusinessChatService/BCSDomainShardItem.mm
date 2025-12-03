@interface BCSDomainShardItem
+ (id)shardItemWithFileURL:(id)l;
- (BCSDomainShardItem)initWithCoder:(id)coder;
- (BCSDomainShardItem)initWithFileURL:(id)l startIndex:(int64_t)index shardCount:(int64_t)count type:(int64_t)type expirationDate:(id)date;
- (BCSDomainShardItem)initWithJSONObj:(id)obj type:(int64_t)type;
- (BCSDomainShardItem)initWithRecord:(id)record type:(int64_t)type;
- (BCSDomainShardItem)initWithURL:(id)l;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSDomainShardItem

- (BCSDomainShardItem)initWithJSONObj:(id)obj type:(int64_t)type
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = [obj objectForKeyedSubscript:{@"records", type}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v5 firstObject];
    v7 = [firstObject objectForKeyedSubscript:@"fields"];
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

      selfCopy = 0;
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

      selfCopy = 0;
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
            date = [MEMORY[0x277CBEAA8] date];
            [v17 doubleValue];
            v31 = [date dateByAddingTimeInterval:?];

            fileURL = [v11 fileURL];
            self = -[BCSDomainShardItem initWithFileURL:startIndex:shardCount:type:expirationDate:](self, "initWithFileURL:startIndex:shardCount:type:expirationDate:", fileURL, [v13 longLongValue], objc_msgSend(v15, "longLongValue"), 3, v31);

            selfCopy = self;
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

    selfCopy = 0;
    goto LABEL_22;
  }

  firstObject = ABSLogCommon();
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    *buf = 136315394;
    v33 = "[BCSDomainShardItem(Conversion) initWithJSONObj:type:]";
    v34 = 2112;
    v35 = v25;
    _os_log_error_impl(&dword_242072000, firstObject, OS_LOG_TYPE_ERROR, "%s - Expected NSArray for records parameter. Got %@", buf, 0x16u);
  }

  selfCopy = 0;
LABEL_25:

  v22 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BCSDomainShardItem)initWithRecord:(id)record type:(int64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v6 = [recordCopy objectForKeyedSubscript:@"shard"];
  v7 = [recordCopy objectForKeyedSubscript:@"index"];
  v8 = [recordCopy objectForKeyedSubscript:@"count"];
  v9 = [recordCopy objectForKeyedSubscript:@"ttl"];

  date = [MEMORY[0x277CBEAA8] date];
  [v9 doubleValue];
  v11 = [date dateByAddingTimeInterval:?];

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

    selfCopy = 0;
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

  fileURL = [v6 fileURL];
  self = -[BCSDomainShardItem initWithFileURL:startIndex:shardCount:type:expirationDate:](self, "initWithFileURL:startIndex:shardCount:type:expirationDate:", fileURL, [v7 longLongValue], objc_msgSend(v8, "longLongValue"), 3, v11);

  selfCopy = self;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BCSDomainShardItem)initWithURL:(id)l
{
  v4 = [BCSDomainShardItem shardItemWithFileURL:l];

  return v4;
}

+ (id)shardItemWithFileURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = [[BCSLineReader alloc] initWithFileURL:lCopy];
  readLine = [(BCSLineReader *)v4 readLine];
  if ([readLine length])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:readLine options:0];
    if ([v6 length])
    {
      v7 = [[BCSDomainShardItemMetadata alloc] initWithData:v6];
      if (v7)
      {
        v8 = v7;
        date = [MEMORY[0x277CBEAA8] date];
        v10 = [date dateByAddingTimeInterval:{-[BCSDomainShardItemMetadata ttl](v8, "ttl")}];

        v11 = [[BCSDomainShardItem alloc] initWithFileURL:lCopy startIndex:[(BCSDomainShardItemMetadata *)v8 index] shardCount:[(BCSDomainShardItemMetadata *)v8 count] type:3 expirationDate:v10];
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
      v17 = lCopy;
      _os_log_error_impl(&dword_242072000, v6, OS_LOG_TYPE_ERROR, "%s Cannot create BCSDomainShardItem. Got nil metadata while reading file %@", &v14, 0x16u);
    }
  }

  v11 = 0;
LABEL_8:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BCSDomainShardItem)initWithFileURL:(id)l startIndex:(int64_t)index shardCount:(int64_t)count type:(int64_t)type expirationDate:(id)date
{
  lCopy = l;
  v17.receiver = self;
  v17.super_class = BCSDomainShardItem;
  v14 = [(BCSShardItem *)&v17 initWithBase64EncodedString:@"DS" shardType:type startIndex:index shardCount:count expirationDate:date];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fileURL, l);
  }

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSDomainShardItem;
  v4 = [(BCSShardItem *)&v8 description];
  fileURL = [(BCSDomainShardItem *)self fileURL];
  v6 = [v3 stringWithFormat:@"%@ - File URL %@", v4, fileURL];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = BCSDomainShardItem;
  v4 = [(BCSShardItem *)&v8 copyWithZone:zone];
  if (v4)
  {
    fileURL = [(BCSDomainShardItem *)self fileURL];
    v6 = v4[6];
    v4[6] = fileURL;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BCSDomainShardItem;
  coderCopy = coder;
  [(BCSShardItem *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_fileURL forKey:{@"BCSDomainShardItemFileURLCoding", v5.receiver, v5.super_class}];
}

- (BCSDomainShardItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BCSDomainShardItem;
  v5 = [(BCSShardItem *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BCSDomainShardItemFileURLCoding"];
    fileURL = v5->_fileURL;
    v5->_fileURL = v6;
  }

  return v5;
}

@end