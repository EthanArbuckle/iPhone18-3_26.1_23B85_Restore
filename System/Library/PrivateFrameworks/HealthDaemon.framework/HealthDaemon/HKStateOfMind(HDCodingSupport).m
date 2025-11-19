@interface HKStateOfMind(HDCodingSupport)
+ (id)createWithCodable:()HDCodingSupport;
- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport;
- (HDCodableStateOfMind)codableRepresentationForSync;
@end

@implementation HKStateOfMind(HDCodingSupport)

+ (id)createWithCodable:()HDCodingSupport
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [[a1 alloc] _init];
    if ([v5 applyToObject:v6])
    {
      v7 = HKObjectValidationConfigurationWithOptions();
      v9 = [v6 _validateWithConfiguration:{v7, v8}];
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v6;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HDCodableStateOfMind)codableRepresentationForSync
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(HDCodableStateOfMind);
  v26.receiver = a1;
  v26.super_class = &off_283D44F30;
  v3 = objc_msgSendSuper2(&v26, sel_codableRepresentationForSync);
  [(HDCodableStateOfMind *)v2 setSample:v3];

  -[HDCodableStateOfMind setReflectiveInterval:](v2, "setReflectiveInterval:", [a1 reflectiveInterval]);
  [a1 valence];
  [(HDCodableStateOfMind *)v2 setValence:?];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = [a1 labels];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        -[HDCodableStateOfMind addLabels:](v2, "addLabels:", [*(*(&v22 + 1) + 8 * i) longLongValue]);
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v6);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [a1 domains];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        -[HDCodableStateOfMind addDomains:](v2, "addDomains:", [*(*(&v18 + 1) + 8 * j) longLongValue]);
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v11);
  }

  v14 = [a1 context];

  if (v14)
  {
    v15 = [a1 context];
    [(HDCodableStateOfMind *)v2 setContext:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)addCodableRepresentationToCollection:()HDCodingSupport
{
  v4 = a3;
  v5 = [a1 codableRepresentationForSync];
  if (v5)
  {
    [v4 addStateOfMindLogs:v5];
  }

  return v5 != 0;
}

@end