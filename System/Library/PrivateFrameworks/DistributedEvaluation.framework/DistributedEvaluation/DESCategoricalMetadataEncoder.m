@interface DESCategoricalMetadataEncoder
- (DESCategoricalMetadataEncoder)initWithSingleSchema:(id)a3;
- (id)encodeNumber:(id)a3 toLength:(unint64_t)a4;
- (id)encodeNumberVector:(id)a3 toLength:(unint64_t)a4;
- (id)encodeString:(id)a3 toLength:(unint64_t)a4;
- (id)encodeStringVector:(id)a3 toLength:(unint64_t)a4;
- (unint64_t)findBucketIndexOfNumber:(id)a3 inItems:(id)a4;
- (unint64_t)findBucketIndexOfString:(id)a3 inItems:(id)a4;
@end

@implementation DESCategoricalMetadataEncoder

- (DESCategoricalMetadataEncoder)initWithSingleSchema:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = DESCategoricalMetadataEncoder;
  v6 = [(DESCategoricalMetadataEncoder *)&v16 init];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = [v5 objectForKeyedSubscript:@"range"];
  if (!v7)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v5 objectForKeyedSubscript:@"range"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v10 = [v5 objectForKeyedSubscript:@"items"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  v11 = [v5 objectForKeyedSubscript:@"items"];
  v12 = [v11 count];

  if (!v12)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_schemaDict, a3);
  v13 = [(NSDictionary *)v6->_schemaDict objectForKeyedSubscript:@"range"];
  v6->_useRange = [v13 BOOLValue];

LABEL_7:
  v14 = v6;
LABEL_11:

  return v14;
}

- (id)encodeString:(id)a3 toLength:(unint64_t)a4
{
  v6 = MEMORY[0x277CBEB28];
  v7 = a3;
  v8 = [v6 dataWithLength:a4];
  v9 = [v8 mutableBytes];
  v10 = [(NSDictionary *)self->_schemaDict objectForKeyedSubscript:@"items"];
  v11 = [(DESCategoricalMetadataEncoder *)self findBucketIndexOfString:v7 inItems:v10];

  if (v11 >= a4 - 1 || v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v9;
  }

  else
  {
    v13 = (v9 + v11 + 1);
  }

  *v13 = 1;

  return v8;
}

- (id)encodeNumber:(id)a3 toLength:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB28] dataWithLength:a4];
  v8 = [v7 mutableBytes];
  [(NSDictionary *)self->_schemaDict objectForKeyedSubscript:@"items"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v18 + 1) + 8 * i) floatValue];
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  [v6 floatValue];
  v13 = [(DESCategoricalMetadataEncoder *)self findBucketIndexOfNumber:v6 inItems:v9];
  if (v13 >= a4 - 1 || v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v8;
  }

  else
  {
    v15 = (v8 + v13 + 1);
  }

  *v15 = 1;

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)encodeStringVector:(id)a3 toLength:(unint64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v19 = [MEMORY[0x277CBEB28] dataWithLength:a4];
  v7 = [v19 mutableBytes];
  v8 = [(NSDictionary *)self->_schemaDict objectForKeyedSubscript:@"items"];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = a4 - 1;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [(DESCategoricalMetadataEncoder *)self findBucketIndexOfString:*(*(&v21 + 1) + 8 * i) inItems:v8];
        v15 = v14 >= v12 || v14 == 0x7FFFFFFFFFFFFFFFLL;
        v16 = (v7 + 1 + v14);
        if (v15)
        {
          v16 = v7;
        }

        *v16 = 1;
      }

      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)encodeNumberVector:(id)a3 toLength:(unint64_t)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB28] dataWithLength:a4];
  v25 = self;
  v26 = [v7 mutableBytes];
  [(NSDictionary *)self->_schemaDict objectForKeyedSubscript:@"items"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v34 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v31 + 1) + 8 * i) floatValue];
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    v17 = a4 - 1;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v27 + 1) + 8 * j);
        [v19 floatValue];
        v20 = [(DESCategoricalMetadataEncoder *)v25 findBucketIndexOfNumber:v19 inItems:v8];
        v21 = v20 >= v17 || v20 == 0x7FFFFFFFFFFFFFFFLL;
        v22 = (v26 + 1 + v20);
        if (v21)
        {
          v22 = v26;
        }

        *v22 = 1;
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v15);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)findBucketIndexOfString:(id)a3 inItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(DESCategoricalMetadataEncoder *)self useRange])
  {
    v8 = [v7 indexOfObject:v6 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 256, &__block_literal_global_2}];
  }

  else
  {
    v8 = [v7 indexOfObject:v6];
  }

  v9 = v8;

  return v9;
}

uint64_t __65__DESCategoricalMetadataEncoder_findBucketIndexOfString_inItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 compare:a3 options:64] == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)findBucketIndexOfNumber:(id)a3 inItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(DESCategoricalMetadataEncoder *)self useRange])
  {
    v8 = [v7 indexOfObject:v6 inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 256, &__block_literal_global_4}];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__DESCategoricalMetadataEncoder_findBucketIndexOfNumber_inItems___block_invoke_2;
    v10[3] = &unk_278F83DB0;
    v11 = v6;
    v8 = [v7 indexOfObjectPassingTest:v10];
  }

  return v8;
}

uint64_t __65__DESCategoricalMetadataEncoder_findBucketIndexOfNumber_inItems___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 compare:?] == -1)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

BOOL __65__DESCategoricalMetadataEncoder_findBucketIndexOfNumber_inItems___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 floatValue];
  v4 = v3;
  [*(a1 + 32) floatValue];

  return almostEqual(v4, v5);
}

@end