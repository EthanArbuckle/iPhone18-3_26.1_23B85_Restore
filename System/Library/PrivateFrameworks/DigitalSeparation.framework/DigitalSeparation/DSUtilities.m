@interface DSUtilities
+ (BOOL)isContactsTCC:(id)a3;
+ (BOOL)isString:(id)a3 likeString:(id)a4;
+ (BOOL)shouldShowBioRatchetFlow;
+ (id)allApps;
+ (id)allUserVisibleApps;
+ (id)contactsServices;
+ (id)localizedDetailStringWithTruncationFromArray:(id)a3 withType:(id)a4;
+ (id)tccServices;
@end

@implementation DSUtilities

+ (id)localizedDetailStringWithTruncationFromArray:(id)a3 withType:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v7 count] == 2)
        {
          v26[0] = v6;
          v26[1] = @"DETAIL_TEXT_TRUNCATION";
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
          v15 = [v14 componentsJoinedByString:@"_"];

          v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v17 = [v16 localizedStringForKey:v15 value:&stru_285B9D7E0 table:0];

          v18 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v17, objc_msgSend(v8, "count") - 2];
          [v7 addObject:v18];

          goto LABEL_11;
        }

        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v19 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v7];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)allUserVisibleApps
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 developerType] == 3)
        {
          v9 = [v8 bundleIdentifier];
          [v2 addObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)allApps
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = SBSCopyDisplayIdentifiers();
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)tccServices
{
  if (tccServices_token != -1)
  {
    +[DSUtilities tccServices];
  }

  v3 = tccServices_tccServices;

  return v3;
}

uint64_t __26__DSUtilities_tccServices__block_invoke()
{
  tccServices_tccServices = [MEMORY[0x277CBEA60] arrayWithObjects:{@"DSLocationAlways", @"DSLocationWhenInUse", *MEMORY[0x277D6C110], *MEMORY[0x277D6C1A8], *MEMORY[0x277D6C120], *MEMORY[0x277D6C1D0], *MEMORY[0x277D6C1A0], *MEMORY[0x277D6C258], *MEMORY[0x277D6C118], *MEMORY[0x277D6C1E0], @"DSContacts", @"DSHealth", @"DSLocalNetwork", *MEMORY[0x277D6C1B8], *MEMORY[0x277D6C1F8], 0}];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isContactsTCC:(id)a3
{
  v3 = a3;
  v4 = +[DSUtilities contactsServices];
  v5 = [v4 containsObject:v3];

  return v5;
}

+ (id)contactsServices
{
  if (contactsServices_token != -1)
  {
    +[DSUtilities contactsServices];
  }

  v3 = contactsServices_contactsTCCs;

  return v3;
}

uint64_t __31__DSUtilities_contactsServices__block_invoke()
{
  contactsServices_contactsTCCs = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D6C100], *MEMORY[0x277D6C130], *MEMORY[0x277D6C138], 0}];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)shouldShowBioRatchetFlow
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = [MEMORY[0x277CD47B0] sharedInstance];
    v4 = [v3 isFeatureEnabled];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)isString:(id)a3 likeString:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\\s+" withString:&stru_285B9D7E0 options:1024 range:{0, objc_msgSend(v6, "length")}];

  v8 = [v7 lowercaseString];

  v9 = [v5 stringByReplacingOccurrencesOfString:@"\\s+" withString:&stru_285B9D7E0 options:1024 range:{0, objc_msgSend(v5, "length")}];

  v10 = [v9 lowercaseString];

  LOBYTE(v9) = [v8 isEqualToString:v10];
  return v9;
}

@end