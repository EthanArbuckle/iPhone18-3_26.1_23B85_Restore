@interface SUUIGiftCharity
- (SUUIGiftCharity)initWithCharityDictionary:(id)a3;
@end

@implementation SUUIGiftCharity

- (SUUIGiftCharity)initWithCharityDictionary:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v54.receiver = self;
  v54.super_class = SUUIGiftCharity;
  v5 = [(SUUIGiftCharity *)&v54 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"amountDisclaimer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      amountDisclaimer = v5->_amountDisclaimer;
      v5->_amountDisclaimer = v7;
    }

    v9 = [v4 objectForKey:@"description"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      description = v5->_description;
      v5->_description = v10;
    }

    v12 = [v4 objectForKey:@"id"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      identifier = v5->_identifier;
      v5->_identifier = v13;
    }

    v15 = [v4 objectForKey:@"legalText"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      legalText = v5->_legalText;
      v5->_legalText = v16;
    }

    v18 = [v4 objectForKey:@"legalText2"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      legalText2 = v5->_legalText2;
      v5->_legalText2 = v19;
    }

    v21 = [v4 objectForKey:@"name"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      name = v5->_name;
      v5->_name = v22;
    }

    v24 = [v4 objectForKey:@"logo"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [MEMORY[0x277D75418] currentDevice];
      v26 = [v25 userInterfaceIdiom];

      if (v26 == 1)
      {
        v27 = @"iPad";
      }

      else
      {
        v27 = @"iPhone";
      }

      v28 = [MEMORY[0x277D759A0] mainScreen];
      [v28 scale];
      v30 = v29;

      if (v30 == 2.0)
      {
        v27 = [(__CFString *)v27 stringByAppendingString:@"_2x"];
      }

      v31 = [MEMORY[0x277D759A0] mainScreen];
      [v31 scale];
      v33 = v32;

      if (v33 == 3.0)
      {
        v34 = [(__CFString *)v27 stringByAppendingString:@"_3x"];

        v27 = v34;
      }

      v35 = [v24 objectForKey:v27];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v36 = [[SUUIArtwork alloc] initWithArtworkDictionary:v35];
        logoArtwork = v5->_logoArtwork;
        v5->_logoArtwork = v36;
      }
    }

    v38 = [v4 objectForKey:@"amounts"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v4;
      v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v40 = v38;
      v41 = [v40 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v51;
        do
        {
          v44 = 0;
          do
          {
            if (*v51 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v50 + 1) + 8 * v44);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = [[SUUIGiftAmount alloc] initWithAmountDictionary:v45];
              [(NSArray *)v39 addObject:v46];
            }

            ++v44;
          }

          while (v42 != v44);
          v42 = [v40 countByEnumeratingWithState:&v50 objects:v55 count:16];
        }

        while (v42);
      }

      amounts = v5->_amounts;
      v5->_amounts = v39;

      v4 = v49;
    }
  }

  return v5;
}

@end