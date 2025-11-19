@interface FedStatsCategoricalTypeBloomFilter
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
- (FedStatsCategoricalTypeBloomFilter)initWithBloomFilter:(id)a3 transformVariant:(id)a4;
- (id)filter:(id)a3;
@end

@implementation FedStatsCategoricalTypeBloomFilter

- (FedStatsCategoricalTypeBloomFilter)initWithBloomFilter:(id)a3 transformVariant:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FedStatsCategoricalTypeBloomFilter;
  v9 = [(FedStatsCategoricalTypeBloomFilter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bloomFilter, a3);
    objc_storeStrong(&v10->_transformVariant, a4);
  }

  return v10;
}

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKey:@"fileName"];
  if (!v6)
  {
    if (a4)
      v10 = {;
      v13 = 100;
LABEL_11:
      [FedStatsError errorWithCode:v13 description:v10];
      *a4 = v12 = 0;
      goto LABEL_19;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
      v10 = {;
      v13 = 101;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v7 = MEMORY[0x277D42540];
  v8 = [v6 filePathURL];
  v9 = [v8 path];
  v10 = [v7 bloomFilterWithPathToFile:v9];

  if (v10)
  {
    v11 = [v5 objectForKey:@"transformVariant"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      if (a4)
        v14 = {;
        *a4 = [FedStatsError errorWithCode:101 description:v14];
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
    if (!a4)
    {
      v12 = 0;
      goto LABEL_19;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot load Bloom filter at '%@'", v6];
    [FedStatsError errorWithCode:101 description:v11];
    *a4 = v12 = 0;
  }

LABEL_19:
LABEL_20:

  return v12;
}

- (id)filter:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v14 = 0;
    goto LABEL_24;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v4];
  v6 = [(FedStatsCategoricalTypeBloomFilter *)self transformVariant];
  v7 = [v6 isEqualToString:@"extractHost"];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 host];
      v11 = [v9 host];
      v12 = [v11 length];

      if (v10)
      {
        if (v12)
        {
          v13 = [v9 host];
LABEL_13:

          v5 = v13;
          goto LABEL_14;
        }
      }
    }
  }

  else
  {
    v15 = [(FedStatsCategoricalTypeBloomFilter *)self transformVariant];
    v16 = [v15 isEqualToString:@"extractDomain"];

    if (!v16)
    {
LABEL_14:
      v22 = [v5 dataUsingEncoding:4];
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
        v26 = [(FedStatsCategoricalTypeBloomFilter *)self bloomFilter];
        v27 = [v26 computeHashesWithSeed:1 forData:v25 reuse:0];

        v28 = [(FedStatsCategoricalTypeBloomFilter *)self bloomFilter];
        LOBYTE(v26) = [v28 getWithHashes:v27];

        v14 = 0;
        if ((v26 & 1) == 0)
        {
          v14 = v4;
        }
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_23;
    }

    v17 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    v9 = v17;
    if (v17)
    {
      v18 = [v17 host];
      v19 = [v9 host];
      v20 = [v19 length];

      if (v18)
      {
        if (v20)
        {
          v21 = [v9 host];
          v13 = [v21 safari_highLevelDomainFromHost];

          v5 = v21;
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