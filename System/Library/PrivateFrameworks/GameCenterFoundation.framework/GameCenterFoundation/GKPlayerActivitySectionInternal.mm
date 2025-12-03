@interface GKPlayerActivitySectionInternal
+ (id)secureCodedPropertyKeys;
- (GKPlayerActivitySectionInternal)initWithDictionary:(id)dictionary;
- (id)description;
@end

@implementation GKPlayerActivitySectionInternal

- (GKPlayerActivitySectionInternal)initWithDictionary:(id)dictionary
{
  v28 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = GKPlayerActivitySectionInternal;
  v5 = [(GKPlayerActivitySectionInternal *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    [(GKPlayerActivitySectionInternal *)v5 setTitle:v6];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    v21 = v5;
    [(GKPlayerActivitySectionInternal *)v5 setInstrumentationKey:v7];

    array = [MEMORY[0x277CBEB18] array];
    v9 = [dictionaryCopy objectForKeyedSubscript:@"activity"];
    v10 = v9;
    if (v9)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            v16 = [v15 objectForKeyedSubscript:@"symbol"];

            if (v16)
            {
              v17 = off_2785DBC58;
            }

            else
            {
              v17 = off_2785DBC10;
            }

            v18 = [objc_alloc(*v17) initWithDictionary:v15];
            [array addObject:v18];
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v12);
      }
    }

    v5 = v21;
    [(GKPlayerActivitySectionInternal *)v21 setItems:array];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  title = [(GKPlayerActivitySectionInternal *)self title];
  items = [(GKPlayerActivitySectionInternal *)self items];
  instrumentationKey = [(GKPlayerActivitySectionInternal *)self instrumentationKey];
  v7 = [v3 stringWithFormat:@"title: %@            \n items: %@            \n instrumentationKey: %@", title, items, instrumentationKey];

  return v7;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_201 != -1)
  {
    +[GKPlayerActivitySectionInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_200;

  return v3;
}

void __58__GKPlayerActivitySectionInternal_secureCodedPropertyKeys__block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 setWithObjects:{v1, v2, objc_opt_class(), 0, @"title", @"instrumentationKey", @"items", v8, v9}];
  v10 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:3];

  v5 = secureCodedPropertyKeys_sSecureCodedKeys_200;
  secureCodedPropertyKeys_sSecureCodedKeys_200 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

@end