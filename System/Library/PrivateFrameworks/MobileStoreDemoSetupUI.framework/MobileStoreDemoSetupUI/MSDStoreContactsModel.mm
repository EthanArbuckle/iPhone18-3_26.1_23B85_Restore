@interface MSDStoreContactsModel
+ (MSDStoreContactsModel)sharedInstance;
- (MSDStoreContactsModel)init;
- (id)contactNumberForCountryCode:(id)a3;
@end

@implementation MSDStoreContactsModel

+ (MSDStoreContactsModel)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[MSDStoreContactsModel sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

uint64_t __39__MSDStoreContactsModel_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_1 = objc_alloc_init(MSDStoreContactsModel);

  return MEMORY[0x2821F96F8]();
}

- (MSDStoreContactsModel)init
{
  v48 = *MEMORY[0x277D85DE8];
  v45.receiver = self;
  v45.super_class = MSDStoreContactsModel;
  v36 = [(MSDStoreContactsModel *)&v45 init];
  if (v36)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 URLForResource:@"contact" withExtension:@"json"];

    v29 = v3;
    v28 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3];
    v27 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
    v4 = [v27 objectForKey:@"area_ar"];
    v5 = objc_opt_new();
    [(MSDStoreContactsModel *)v36 setCountryCodeToNumbers:v5];

    v6 = objc_opt_new();
    regionToCountryCode = v36->_regionToCountryCode;
    v36->_regionToCountryCode = v6;

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v4;
    v32 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (!v32)
    {
      goto LABEL_23;
    }

    v31 = *v42;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v8;
        v9 = *(*(&v41 + 1) + 8 * v8);
        v10 = objc_opt_new();
        v33 = [v9 objectForKey:@"label"];
        v11 = [v9 objectForKey:@"phone_ar"];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v35 = v11;
        v12 = [v11 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v38;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v38 != v14)
              {
                objc_enumerationMutation(v35);
              }

              v16 = *(*(&v37 + 1) + 8 * i);
              v17 = [v16 objectForKey:@"country_code"];
              v18 = [v16 objectForKey:@"phone"];
              v19 = [v16 objectForKey:@"toll_free"];
              if (([v10 containsObject:v17] & 1) == 0)
              {
                [v10 addObject:v17];
              }

              v20 = [(MSDStoreContactsModel *)v36 countryCodeToNumbers];
              v21 = [v20 objectForKey:v17];
              if (!v21)
              {

LABEL_18:
                v24 = [(MSDStoreContactsModel *)v36 countryCodeToNumbers];
                [v24 setObject:v18 forKey:v17];

                goto LABEL_19;
              }

              v22 = v21;
              v23 = [v19 BOOLValue];

              if (v23)
              {
                goto LABEL_18;
              }

LABEL_19:
            }

            v13 = [v35 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v13);
        }

        [(NSDictionary *)v36->_regionToCountryCode setValue:v10 forKey:v33];

        v8 = v34 + 1;
      }

      while (v34 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (!v32)
      {
LABEL_23:

        break;
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)contactNumberForCountryCode:(id)a3
{
  v4 = a3;
  v5 = [(MSDStoreContactsModel *)self countryCodeToNumbers];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end