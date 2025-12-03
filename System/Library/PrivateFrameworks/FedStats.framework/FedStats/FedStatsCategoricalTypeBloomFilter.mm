@interface FedStatsCategoricalTypeBloomFilter
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
- (FedStatsCategoricalTypeBloomFilter)initWithBloomFilter:(id)filter transformVariant:(id)variant;
- (id)filter:(id)filter;
@end

@implementation FedStatsCategoricalTypeBloomFilter

- (FedStatsCategoricalTypeBloomFilter)initWithBloomFilter:(id)filter transformVariant:(id)variant
{
  filterCopy = filter;
  variantCopy = variant;
  v12.receiver = self;
  v12.super_class = FedStatsCategoricalTypeBloomFilter;
  v9 = [(FedStatsCategoricalTypeBloomFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bloomFilter, filter);
    objc_storeStrong(&v10->_transformVariant, variant);
  }

  return v10;
}

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v6 = [parametersCopy objectForKey:@"fileName"];
  if (!v6)
  {
    if (error)
      v10 = {;
      v13 = 100;
LABEL_11:
      [FedStatsError errorWithCode:v13 description:v10];
      *error = v12 = 0;
      goto LABEL_19;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
      v10 = {;
      v13 = 101;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v7 = MEMORY[0x277D42540];
  filePathURL = [v6 filePathURL];
  path = [filePathURL path];
  v10 = [v7 bloomFilterWithPathToFile:path];

  if (v10)
  {
    v11 = [parametersCopy objectForKey:@"transformVariant"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (error)
        v14 = {;
        *error = [FedStatsError errorWithCode:101 description:v14];
      }

      v12 = 0;
    }

    else
    {
      v12 = [[FedStatsCategoricalTypeBloomFilter alloc] initWithBloomFilter:v10 transformVariant:v11];
    }
  }

  else
  {
    if (!error)
    {
      v12 = 0;
      goto LABEL_19;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot load Bloom filter at '%@'", v6];
    [FedStatsError errorWithCode:101 description:v11];
    *error = v12 = 0;
  }

LABEL_19:
LABEL_20:

  return v12;
}

- (id)filter:(id)filter
{
  v33 = *MEMORY[0x277D85DE8];
  filterCopy = filter;
  if (!filterCopy)
  {
    v14 = 0;
    goto LABEL_24;
  }

  filterCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", filterCopy];
  transformVariant = [(FedStatsCategoricalTypeBloomFilter *)self transformVariant];
  v7 = [transformVariant isEqualToString:@"extractHost"];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:filterCopy];
    v9 = v8;
    if (v8)
    {
      host = [v8 host];
      host2 = [v9 host];
      v12 = [host2 length];

      if (host)
      {
        if (v12)
        {
          host3 = [v9 host];
LABEL_13:

          filterCopy = host3;
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    transformVariant2 = [(FedStatsCategoricalTypeBloomFilter *)self transformVariant];
    v16 = [transformVariant2 isEqualToString:@"extractDomain"];

    if (!v16)
    {
LABEL_14:
      v22 = [filterCopy dataUsingEncoding:4];
      v23 = v22;
      if (v22)
      {
        CC_SHA256([v22 bytes], objc_msgSend(v22, "length"), md);
        v24 = *md;
        if (*md < 0)
        {
          v24 = -*md;
        }

        v31 = v24;
        v25 = [MEMORY[0x277CBEA90] dataWithBytes:&v31 length:8];
        bloomFilter = [(FedStatsCategoricalTypeBloomFilter *)self bloomFilter];
        v27 = [bloomFilter computeHashesWithSeed:1 forData:v25 reuse:0];

        bloomFilter2 = [(FedStatsCategoricalTypeBloomFilter *)self bloomFilter];
        LOBYTE(bloomFilter) = [bloomFilter2 getWithHashes:v27];

        v14 = 0;
        if ((bloomFilter & 1) == 0)
        {
          v14 = filterCopy;
        }
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_23;
    }

    v17 = [MEMORY[0x277CBEBC0] URLWithString:filterCopy];
    v9 = v17;
    if (v17)
    {
      host4 = [v17 host];
      host5 = [v9 host];
      v20 = [host5 length];

      if (host4)
      {
        if (v20)
        {
          host6 = [v9 host];
          host3 = [host6 safari_highLevelDomainFromHost];

          filterCopy = host6;
          goto LABEL_13;
        }
      }
    }
  }

  v14 = 0;
LABEL_23:

LABEL_24:
  v29 = *MEMORY[0x277D85DE8];

  return v14;
}

@end