@interface BCSFilterShardItem
- (BCSFilterShardItem)initWithBloomFilter:(id)a3 bloomFilterString:(id)a4 startIndex:(int64_t)a5 shardCount:(int64_t)a6 type:(int64_t)a7 expirationDate:(id)a8;
- (BCSFilterShardItem)initWithBloomFilterString:(id)a3 startIndex:(int64_t)a4 shardCount:(int64_t)a5 type:(int64_t)a6 expirationDate:(id)a7;
- (BCSFilterShardItem)initWithBusinessCallerShardItem:(id)a3;
- (BCSFilterShardItem)initWithBusinessEmailShardItem:(id)a3;
- (BCSFilterShardItem)initWithBusinessLinkShardItem:(id)a3;
- (BCSFilterShardItem)initWithChatSuggestShardItem:(id)a3;
- (BCSFilterShardItem)initWithCoder:(id)a3;
- (BCSFilterShardItem)initWithJSONObj:(id)a3 type:(int64_t)a4;
- (BCSFilterShardItem)initWithRecord:(id)a3 type:(int64_t)a4;
- (BCSFilterShardItem)initWithURL:(id)a3 type:(int64_t)a4;
- (BOOL)isExpired;
- (NSString)description;
- (id)containsItemMatching:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_containsValue:(void *)a1;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BCSFilterShardItem

- (BCSFilterShardItem)initWithBloomFilterString:(id)a3 startIndex:(int64_t)a4 shardCount:(int64_t)a5 type:(int64_t)a6 expirationDate:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v12 options:0];
  if (v14)
  {
    v15 = [MEMORY[0x277D42540] bloomFilterWithData:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(BCSFilterShardItem *)self initWithBloomFilter:v15 bloomFilterString:v12 startIndex:a4 shardCount:a5 type:a6 expirationDate:v13];

  return v16;
}

- (BCSFilterShardItem)initWithBloomFilter:(id)a3 bloomFilterString:(id)a4 startIndex:(int64_t)a5 shardCount:(int64_t)a6 type:(int64_t)a7 expirationDate:(id)a8
{
  v15 = a3;
  v19.receiver = self;
  v19.super_class = BCSFilterShardItem;
  v16 = [(BCSShardItem *)&v19 initWithBase64EncodedString:a4 shardType:a7 startIndex:a5 shardCount:a6 expirationDate:a8];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_bloomFilter, a3);
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
  v2 = [(BCSShardItem *)self expirationDate];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 compare:v3] == -1;

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = BCSFilterShardItem;
  v4 = [(BCSShardItem *)&v8 copyWithZone:a3];
  if (v4)
  {
    v5 = [(BCSFilterShardItem *)self bloomFilter];
    v6 = v4[6];
    v4[6] = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = BCSFilterShardItem;
  [(BCSShardItem *)&v3 encodeWithCoder:a3];
}

- (BCSFilterShardItem)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = BCSFilterShardItem;
  v3 = [(BCSShardItem *)&v9 initWithCoder:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    v5 = [(BCSShardItem *)v3 base64EncodedString];
    v6 = [v4 initWithBase64EncodedString:v5 options:0];

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

- (void)_containsValue:(void *)a1
{
  v2 = a1;
  v10 = a2;
  if (a1)
  {
    v3 = [a1 bloomFilter];
    v4 = [v3 newHashesArray];

    v5 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:8];
    v6 = [v2 bloomFilter];
    v7 = [v6 computeHashesWithSeed:1 forData:v5 reuse:v4];

    v8 = [v2 bloomFilter];
    v2 = [v8 getWithHashes:v4];
  }

  return v2;
}

- (id)containsItemMatching:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_285466448])
  {
    v5 = v4;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v5 truncatedHashes];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if (-[BCSFilterShardItem _containsValue:](self, [v11 longLongValue]))
          {
            v12 = -[BCSFilterMatchResult initWithMatch:itemIdentifier:matchingTruncatedHash:]([BCSFilterMatchResult alloc], "initWithMatch:itemIdentifier:matchingTruncatedHash:", 1, v5, [v11 longLongValue]);

            goto LABEL_13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v12 = -[BCSFilterMatchResult initWithMatch:itemIdentifier:matchingTruncatedHash:]([BCSFilterMatchResult alloc], "initWithMatch:itemIdentifier:matchingTruncatedHash:", -[BCSFilterShardItem _containsValue:](self, [v4 truncatedHash]), v4, objc_msgSend(v4, "truncatedHash"));
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BCSFilterShardItem)initWithBusinessLinkShardItem:(id)a3
{
  v4 = a3;
  v5 = [v4 filter];
  v6 = [v5 base64EncodedStringWithOptions:0];

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v7 dateByAddingTimeInterval:{objc_msgSend(v4, "ttl")}];

  v9 = [v4 filter];
  if (v9)
  {
    v10 = [MEMORY[0x277D42540] bloomFilterWithData:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:]([BCSFilterShardItem alloc], "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v10, v6, [v4 index], objc_msgSend(v4, "count"), 2, v8);

  return v11;
}

- (BCSFilterShardItem)initWithChatSuggestShardItem:(id)a3
{
  v4 = a3;
  v5 = [v4 filter];
  v6 = [v5 base64EncodedStringWithOptions:0];

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v7 dateByAddingTimeInterval:{objc_msgSend(v4, "ttl")}];

  v9 = [v4 filter];
  if (v9)
  {
    v10 = [MEMORY[0x277D42540] bloomFilterWithData:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:]([BCSFilterShardItem alloc], "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v10, v6, [v4 index], objc_msgSend(v4, "count"), 1, v8);

  return v11;
}

- (BCSFilterShardItem)initWithBusinessCallerShardItem:(id)a3
{
  v4 = a3;
  v5 = [v4 filter];
  v6 = [v5 base64EncodedStringWithOptions:0];

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v7 dateByAddingTimeInterval:{objc_msgSend(v4, "ttl")}];

  v9 = [v4 filter];
  if (v9)
  {
    v10 = [MEMORY[0x277D42540] bloomFilterWithData:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:]([BCSFilterShardItem alloc], "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v10, v6, [v4 index], objc_msgSend(v4, "count"), 4, v8);

  return v11;
}

- (BCSFilterShardItem)initWithBusinessEmailShardItem:(id)a3
{
  v4 = a3;
  v5 = [v4 filter];
  v6 = [v5 base64EncodedStringWithOptions:0];

  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v7 dateByAddingTimeInterval:{objc_msgSend(v4, "ttl")}];

  v9 = [v4 filter];
  if (v9)
  {
    v10 = [MEMORY[0x277D42540] bloomFilterWithData:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:]([BCSFilterShardItem alloc], "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v10, v6, [v4 index], objc_msgSend(v4, "count"), 5, v8);

  return v11;
}

- (BCSFilterShardItem)initWithJSONObj:(id)a3 type:(int64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"records"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 firstObject];
    v9 = [v8 objectForKeyedSubscript:@"fields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [objc_alloc(MEMORY[0x277D42540]) initWithJSONObj:v6];
      v11 = [v9 objectForKeyedSubscript:@"index"];
      v23 = [v11 objectForKeyedSubscript:@"value"];

      v12 = [v9 objectForKeyedSubscript:@"count"];
      v22 = [v12 objectForKeyedSubscript:@"value"];

      v13 = [v9 objectForKeyedSubscript:@"ttl"];
      v14 = [v13 objectForKeyedSubscript:@"value"];

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v15 = [MEMORY[0x277CBEAA8] date];
        [v14 doubleValue];
        v21 = [v15 dateByAddingTimeInterval:?];

        v16 = [v10 _bloomFilterStringWithJSONObj:v6];
        self = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:](self, "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v10, v16, [v23 longLongValue], objc_msgSend(v22, "longLongValue"), a4, v21);

        v17 = self;
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

        v17 = 0;
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

      v17 = 0;
    }
  }

  else
  {
    v8 = ABSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[BCSFilterShardItem(Conversion) initWithJSONObj:type:]";
      _os_log_error_impl(&dword_242072000, v8, OS_LOG_TYPE_ERROR, "%s - BCSFilterShardItem records parameter is not an NSArray", buf, 0xCu);
    }

    v17 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BCSFilterShardItem)initWithRecord:(id)a3 type:(int64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"filter"];
  if (v7)
  {
    v8 = [MEMORY[0x277D42540] bloomFilterWithData:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"index"];
  v10 = [v6 objectForKeyedSubscript:@"count"];
  v11 = [v6 objectForKeyedSubscript:@"ttl"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v12 = [MEMORY[0x277CBEAA8] date];
    [v11 doubleValue];
    v13 = [v12 dateByAddingTimeInterval:?];

    v14 = [v7 base64EncodedStringWithOptions:0];
    self = -[BCSFilterShardItem initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:](self, "initWithBloomFilter:bloomFilterString:startIndex:shardCount:type:expirationDate:", v8, v14, [v9 longLongValue], objc_msgSend(v10, "longLongValue"), a4, v13);

    v15 = self;
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

    v15 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BCSFilterShardItem)initWithURL:(id)a3 type:(int64_t)a4
{
  v6 = MEMORY[0x277CBEA90];
  v7 = a3;
  v8 = [[v6 alloc] initWithContentsOfURL:v7];

  v9 = 0;
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      v10 = [[BCSCallerIdShardItem alloc] initWithData:v8];
      v11 = [[BCSFilterShardItem alloc] initWithBusinessCallerShardItem:v10];
      goto LABEL_10;
    }

    if (a4 == 5)
    {
      v10 = [[BCSCallerIdShardItem alloc] initWithData:v8];
      v11 = [[BCSFilterShardItem alloc] initWithBusinessEmailShardItem:v10];
      goto LABEL_10;
    }
  }

  else
  {
    if (a4 == 1)
    {
      v10 = [[BCSChatSuggestShardItem alloc] initWithData:v8];
      v11 = [[BCSFilterShardItem alloc] initWithChatSuggestShardItem:v10];
      goto LABEL_10;
    }

    if (a4 == 2)
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