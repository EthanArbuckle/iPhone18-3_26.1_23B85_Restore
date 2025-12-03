@interface BCSFilterShardItem
- (BCSFilterShardItem)initWithBloomFilter:(id)filter bloomFilterString:(id)string startIndex:(int64_t)index shardCount:(int64_t)count type:(int64_t)type expirationDate:(id)date;
- (BCSFilterShardItem)initWithBloomFilterString:(id)string startIndex:(int64_t)index shardCount:(int64_t)count type:(int64_t)type expirationDate:(id)date;
- (BCSFilterShardItem)initWithBusinessCallerShardItem:(id)item;
- (BCSFilterShardItem)initWithBusinessEmailShardItem:(id)item;
- (BCSFilterShardItem)initWithBusinessLinkShardItem:(id)item;
- (BCSFilterShardItem)initWithChatSuggestShardItem:(id)item;
- (BCSFilterShardItem)initWithCoder:(id)coder;
- (BCSFilterShardItem)initWithJSONObj:(id)obj type:(int64_t)type;
- (BCSFilterShardItem)initWithRecord:(id)record type:(int64_t)type;
- (BCSFilterShardItem)initWithURL:(id)l type:(int64_t)type;
- (BOOL)isExpired;
- (NSString)description;
- (id)containsItemMatching:(id)matching;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_containsValue:(void *)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BCSFilterShardItem

- (BCSFilterShardItem)initWithBloomFilterString:(id)string startIndex:(int64_t)index shardCount:(int64_t)count type:(int64_t)type expirationDate:(id)date
{
  stringCopy = string;
  dateCopy = date;
  v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:stringCopy options:0];
  if (v14)
  {
    v15 = [MEMORY[0x277D42540] bloomFilterWithData:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(BCSFilterShardItem *)self initWithBloomFilter:v15 bloomFilterString:stringCopy startIndex:index shardCount:count type:type expirationDate:dateCopy];

  return v16;
}

- (BCSFilterShardItem)initWithBloomFilter:(id)filter bloomFilterString:(id)string startIndex:(int64_t)index shardCount:(int64_t)count type:(int64_t)type expirationDate:(id)date
{
  filterCopy = filter;
  v19.receiver = self;
  v19.super_class = BCSFilterShardItem;
  v16 = [(BCSShardItem *)&v19 initWithBase64EncodedString:string shardType:type startIndex:index shardCount:count expirationDate:date];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_bloomFilter, filter);
  }

  return v17;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = BCSFilterShardItem;
  v2 = [(BCSShardItem *)&v4 description];

  return v2;
}

- (BOOL)isExpired
{
  expirationDate = [(BCSShardItem *)self expirationDate];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [expirationDate compare:date] == -1;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = BCSFilterShardItem;
  v4 = [(BCSShardItem *)&v8 copyWithZone:zone];
  if (v4)
  {
    bloomFilter = [(BCSFilterShardItem *)self bloomFilter];
    v6 = v4[6];
    v4[6] = bloomFilter;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = BCSFilterShardItem;
  [(BCSShardItem *)&v3 encodeWithCoder:coder];
}

- (BCSFilterShardItem)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = BCSFilterShardItem;
  v3 = [(BCSShardItem *)&v9 initWithCoder:coder];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    base64EncodedString = [(BCSShardItem *)v3 base64EncodedString];
    v6 = [v4 initWithBase64EncodedString:base64EncodedString options:0];

    if (v6)
    {
      v7 = [MEMORY[0x277D42540] bloomFilterWithData:v6];
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&v3->_bloomFilter, v7);
    if (v6)
    {
    }
  }

  return v3;
}

- (void)_containsValue:(void *)value
{
  valueCopy = value;
  v10 = a2;
  if (value)
  {
    bloomFilter = [value bloomFilter];
    newHashesArray = [bloomFilter newHashesArray];

    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:8];
    bloomFilter2 = [valueCopy bloomFilter];
    v7 = [bloomFilter2 computeHashesWithSeed:1 forData:v5 reuse:newHashesArray];

    bloomFilter3 = [valueCopy bloomFilter];
    valueCopy = [bloomFilter3 getWithHashes:newHashesArray];
  }

  return valueCopy;
}

- (id)containsItemMatching:(id)matching
{
  v20 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  if ([matchingCopy conformsToProtocol:&unk_285466448])
  {
    v5 = matchingCopy;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    truncatedHashes = [v5 truncatedHashes];
    v7 = [truncatedHashes countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(truncatedHashes);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (-[BCSFilterShardItem _containsValue:](self, [v11 longLongValue]))
          {
            v12 = -[BCSFilterMatchResult initWithMatch:itemIdentifier:matchingTruncatedHash:]([BCSFilterMatchResult alloc], "initWithMatch:itemIdentifier:matchingTruncatedHash:", 1, v5, [v11 longLongValue]);

            goto LABEL_13;
          }
        }

        v8 = [truncatedHashes countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = -[BCSFilterMatchResult initWithMatch:itemIdentifier:matchingTruncatedHash:]([BCSFilterMatchResult alloc], "initWithMatch:itemIdentifier:matchingTruncatedHash:", 0, v5, [v5 truncatedHash]);
LABEL_13:
  }

  else
  {
    v12 = -[BCSFilterMatchResult initWithMatch:itemIdentifier:matchingTruncatedHash:]([BCSFilterMatchResult alloc], "initWithMatch:itemIdentifier:matchingTruncatedHash:", -[BCSFilterShardItem _containsValue:](self, [matchingCopy truncatedHash]), matchingCopy, objc_msgSend(matchingCopy, "truncatedHash"));
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BCSFilterShardItem)initWithBusinessLinkShardItem:(id)item
{
  itemCopy = item;
  filter = [itemCopy filter];
  v6 = [filter base64EncodedStringWithOptions:0];

  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date dateByAddingTimeInterval:{objc_msgSend(itemCopy, "ttl")}];

  filter2 = [itemCopy filter];
  if (filter2)
  {
    v10 = [MEMORY[0x277D42540] bloomFilterWithData:filter2];
  }

  else
  {
    v10 = 0;
  }

  v11 = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:]([BCSFilterShardItem alloc], "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v10, v6, [itemCopy index], objc_msgSend(itemCopy, "count"), 2, v8);

  return v11;
}

- (BCSFilterShardItem)initWithChatSuggestShardItem:(id)item
{
  itemCopy = item;
  filter = [itemCopy filter];
  v6 = [filter base64EncodedStringWithOptions:0];

  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date dateByAddingTimeInterval:{objc_msgSend(itemCopy, "ttl")}];

  filter2 = [itemCopy filter];
  if (filter2)
  {
    v10 = [MEMORY[0x277D42540] bloomFilterWithData:filter2];
  }

  else
  {
    v10 = 0;
  }

  v11 = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:]([BCSFilterShardItem alloc], "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v10, v6, [itemCopy index], objc_msgSend(itemCopy, "count"), 1, v8);

  return v11;
}

- (BCSFilterShardItem)initWithBusinessCallerShardItem:(id)item
{
  itemCopy = item;
  filter = [itemCopy filter];
  v6 = [filter base64EncodedStringWithOptions:0];

  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date dateByAddingTimeInterval:{objc_msgSend(itemCopy, "ttl")}];

  filter2 = [itemCopy filter];
  if (filter2)
  {
    v10 = [MEMORY[0x277D42540] bloomFilterWithData:filter2];
  }

  else
  {
    v10 = 0;
  }

  v11 = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:]([BCSFilterShardItem alloc], "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v10, v6, [itemCopy index], objc_msgSend(itemCopy, "count"), 4, v8);

  return v11;
}

- (BCSFilterShardItem)initWithBusinessEmailShardItem:(id)item
{
  itemCopy = item;
  filter = [itemCopy filter];
  v6 = [filter base64EncodedStringWithOptions:0];

  date = [MEMORY[0x277CBEAA8] date];
  v8 = [date dateByAddingTimeInterval:{objc_msgSend(itemCopy, "ttl")}];

  filter2 = [itemCopy filter];
  if (filter2)
  {
    v10 = [MEMORY[0x277D42540] bloomFilterWithData:filter2];
  }

  else
  {
    v10 = 0;
  }

  v11 = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:]([BCSFilterShardItem alloc], "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v10, v6, [itemCopy index], objc_msgSend(itemCopy, "count"), 5, v8);

  return v11;
}

- (BCSFilterShardItem)initWithJSONObj:(id)obj type:(int64_t)type
{
  v26 = *MEMORY[0x277D85DE8];
  objCopy = obj;
  v7 = [objCopy objectForKeyedSubscript:@"records"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = [v7 firstObject];
    v9 = [firstObject objectForKeyedSubscript:@"fields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x277D42540]) initWithJSONObj:objCopy];
      v11 = [v9 objectForKeyedSubscript:@"index"];
      v23 = [v11 objectForKeyedSubscript:@"value"];

      v12 = [v9 objectForKeyedSubscript:@"count"];
      v22 = [v12 objectForKeyedSubscript:@"value"];

      v13 = [v9 objectForKeyedSubscript:@"ttl"];
      v14 = [v13 objectForKeyedSubscript:@"value"];

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        date = [MEMORY[0x277CBEAA8] date];
        [v14 doubleValue];
        v21 = [date dateByAddingTimeInterval:?];

        v16 = [v10 _bloomFilterStringWithJSONObj:objCopy];
        self = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:](self, "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v10, v16, [v23 longLongValue], objc_msgSend(v22, "longLongValue"), type, v21);

        selfCopy = self;
      }

      else
      {
        v18 = ABSLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v25 = "[BCSFilterShardItem(Conversion) initWithJSONObj:type:]";
          _os_log_error_impl(&dword_242072000, v18, OS_LOG_TYPE_ERROR, "%s - BCSFilterShardItem bloomFilter, startIndex, shardCount, or ttl is not correct class type", buf, 0xCu);
        }

        selfCopy = 0;
      }
    }

    else
    {
      v10 = ABSLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v25 = "[BCSFilterShardItem(Conversion) initWithJSONObj:type:]";
        _os_log_error_impl(&dword_242072000, v10, OS_LOG_TYPE_ERROR, "%s - BCSFilterShardItem fields parameter is not an NSDictioanry", buf, 0xCu);
      }

      selfCopy = 0;
    }
  }

  else
  {
    firstObject = ABSLogCommon();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[BCSFilterShardItem(Conversion) initWithJSONObj:type:]";
      _os_log_error_impl(&dword_242072000, firstObject, OS_LOG_TYPE_ERROR, "%s - BCSFilterShardItem records parameter is not an NSArray", buf, 0xCu);
    }

    selfCopy = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BCSFilterShardItem)initWithRecord:(id)record type:(int64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v7 = [recordCopy objectForKeyedSubscript:@"filter"];
  if (v7)
  {
    v8 = [MEMORY[0x277D42540] bloomFilterWithData:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [recordCopy objectForKeyedSubscript:@"index"];
  v10 = [recordCopy objectForKeyedSubscript:@"count"];
  v11 = [recordCopy objectForKeyedSubscript:@"ttl"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    date = [MEMORY[0x277CBEAA8] date];
    [v11 doubleValue];
    v13 = [date dateByAddingTimeInterval:?];

    v14 = [v7 base64EncodedStringWithOptions:0];
    self = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:](self, "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v8, v14, [v9 longLongValue], objc_msgSend(v10, "longLongValue"), type, v13);

    selfCopy = self;
  }

  else
  {
    v16 = ABSLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315138;
      v20 = "[BCSFilterShardItem(Conversion) initWithRecord:type:]";
      _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "%s - BCSFilterShardItem bloomFilter, startIndex, shardCount, or ttl is not correct class type", &v19, 0xCu);
    }

    selfCopy = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BCSFilterShardItem)initWithURL:(id)l type:(int64_t)type
{
  v6 = MEMORY[0x277CBEA90];
  lCopy = l;
  v8 = [[v6 alloc] initWithContentsOfURL:lCopy];

  v9 = 0;
  if (type > 3)
  {
    if (type == 4)
    {
      v10 = [[BCSCallerIdShardItem alloc] initWithData:v8];
      v11 = [[BCSFilterShardItem alloc] initWithBusinessCallerShardItem:v10];
      goto LABEL_10;
    }

    if (type == 5)
    {
      v10 = [[BCSCallerIdShardItem alloc] initWithData:v8];
      v11 = [[BCSFilterShardItem alloc] initWithBusinessEmailShardItem:v10];
      goto LABEL_10;
    }
  }

  else
  {
    if (type == 1)
    {
      v10 = [[BCSChatSuggestShardItem alloc] initWithData:v8];
      v11 = [[BCSFilterShardItem alloc] initWithChatSuggestShardItem:v10];
      goto LABEL_10;
    }

    if (type == 2)
    {
      v10 = [[BCSBusinessLinkShardItem alloc] initWithData:v8];
      v11 = [[BCSFilterShardItem alloc] initWithBusinessLinkShardItem:v10];
LABEL_10:
      v9 = v11;
    }
  }

  return v9;
}

@end