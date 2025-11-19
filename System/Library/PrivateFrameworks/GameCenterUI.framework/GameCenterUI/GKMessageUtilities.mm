@interface GKMessageUtilities
+ (id)contactFromEmailOrPhoneNumber:(id)a3 fromContactStore:(id)a4;
+ (id)messagesRecipientHandleForContact:(id)a3;
+ (id)playerWithPhoneNumberOrEmail:(id)a3 givenName:(id)a4;
+ (id)predicateWithPhoneNumberOrEmail:(id)a3;
+ (void)linkMetadataWithPlayerRange:(_NSRange)a3 shareURL:(id)a4 completionHandler:(id)a5;
@end

@implementation GKMessageUtilities

+ (id)messagesRecipientHandleForContact:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CBEB38];
  v5 = [v3 phoneNumbers];
  v49 = [v4 dictionaryWithCapacity:{objc_msgSend(v5, "count")}];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v47 = v3;
  v6 = [v3 phoneNumbers];
  v7 = [v6 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v56;
    v10 = *MEMORY[0x277CBD8F8];
    v11 = *MEMORY[0x277CBD920];
    v12 = *MEMORY[0x277CBD910];
    v50 = *MEMORY[0x277CBD918];
    v48 = *MEMORY[0x277CBD910];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v56 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v55 + 1) + 8 * i);
        v15 = [v14 label];
        if (([v15 isEqualToString:v10] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", v11) & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", v12) & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", v50) & 1) == 0)
        {
          v16 = [v14 label];

          if (v16)
          {
            v17 = [v14 value];
            v18 = [v17 stringValue];
            v19 = [v14 label];
            [v49 setObject:v18 forKeyedSubscript:v19];

            v12 = v48;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v8);
  }

  v20 = v49;
  v21 = [v49 objectForKeyedSubscript:*MEMORY[0x277CBD928]];
  if (v21)
  {
    v22 = v21;
    v23 = v47;
  }

  else
  {
    v24 = [v49 objectForKeyedSubscript:*MEMORY[0x277CBD908]];
    v23 = v47;
    if (v24 || ([v49 objectForKeyedSubscript:*MEMORY[0x277CBD900]], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = v24;
    }

    else
    {
      v26 = [v47 phoneNumbers];
      v27 = [v26 firstObject];
      v28 = [v27 value];
      v22 = [v28 stringValue];

      if (!v22)
      {
        v29 = MEMORY[0x277CBEB38];
        v30 = [v47 emailAddresses];
        v31 = [v29 dictionaryWithCapacity:{objc_msgSend(v30, "count")}];

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v32 = [v47 emailAddresses];
        v33 = [v32 countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v52;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v52 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v51 + 1) + 8 * j);
              v38 = [v37 label];
              if (v38)
              {
                v39 = v38;
                v40 = [v37 value];

                if (v40)
                {
                  v41 = [v37 value];
                  v42 = [v37 label];
                  [v31 setObject:v41 forKeyedSubscript:v42];
                }
              }
            }

            v34 = [v32 countByEnumeratingWithState:&v51 objects:v59 count:16];
          }

          while (v34);
        }

        v43 = [v31 objectForKeyedSubscript:*MEMORY[0x277CBD8D8]];
        if (v43)
        {
          v22 = v43;
          v20 = v49;
        }

        else
        {
          v44 = [v31 objectForKeyedSubscript:*MEMORY[0x277CBD8E0]];
          v20 = v49;
          if (v44)
          {
            v22 = v44;
          }

          else
          {
            v45 = [v47 emailAddresses];
            v46 = [v45 firstObject];
            v22 = [v46 value];
          }
        }
      }
    }
  }

  return v22;
}

+ (void)linkMetadataWithPlayerRange:(_NSRange)a3 shareURL:(id)a4 completionHandler:(id)a5
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277D0C020];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMessageUtilities.m", 76, "+[GKMessageUtilities linkMetadataWithPlayerRange:shareURL:completionHandler:]"];
  v12 = [v10 dispatchGroupWithName:v11];

  v13 = [MEMORY[0x277D0C048] currentGame];
  v14 = [v13 bundleIdentifier];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __77__GKMessageUtilities_linkMetadataWithPlayerRange_shareURL_completionHandler___block_invoke;
  v29[3] = &unk_279669B00;
  v30 = v14;
  v15 = v12;
  v31 = v15;
  v16 = v13;
  v32 = v16;
  v17 = v14;
  [v15 perform:v29];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__GKMessageUtilities_linkMetadataWithPlayerRange_shareURL_completionHandler___block_invoke_4;
  v22[3] = &unk_279669B28;
  v23 = v16;
  v24 = v15;
  v27 = location;
  v28 = length;
  v25 = v8;
  v26 = v9;
  v18 = v9;
  v19 = v8;
  v20 = v15;
  v21 = v16;
  [v20 notifyOnMainQueueWithBlock:v22];
}

void __77__GKMessageUtilities_linkMetadataWithPlayerRange_shareURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0C010] proxyForLocalPlayer];
  v5 = [v4 bulletinServicePrivate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __77__GKMessageUtilities_linkMetadataWithPlayerRange_shareURL_completionHandler___block_invoke_2;
  v8[3] = &unk_279669AD8;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v3;
  v10 = *(a1 + 48);
  v7 = v3;
  [v5 fetchMessageImageForBundleID:v6 handler:v8];
}

void __77__GKMessageUtilities_linkMetadataWithPlayerRange_shareURL_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CD46B0]) initWithData:v3 MIMEType:@"image/png"];
    [*(a1 + 32) setResult:v4];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__GKMessageUtilities_linkMetadataWithPlayerRange_shareURL_completionHandler___block_invoke_3;
    v7[3] = &unk_279669AB0;
    v5 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v6 = [v5 loadIconForStyle:9 withCompletionHandler:v7];
  }
}

uint64_t __77__GKMessageUtilities_linkMetadataWithPlayerRange_shareURL_completionHandler___block_invoke_3(uint64_t a1, UIImage *image)
{
  if (image)
  {
    v3 = UIImagePNGRepresentation(image);
    v4 = [objc_alloc(MEMORY[0x277CD46B0]) initWithData:v3 MIMEType:@"image/png"];
    [*(a1 + 32) setResult:v4];
  }

  else
  {
    v5 = GKGameCenterUIFrameworkBundle();
    v3 = [v5 _gkPathForMessageImage];

    v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3];
    v6 = [objc_alloc(MEMORY[0x277CD46B0]) initWithData:v4 MIMEType:@"image/png"];
    [*(a1 + 32) setResult:v6];
  }

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __77__GKMessageUtilities_linkMetadataWithPlayerRange_shareURL_completionHandler___block_invoke_4(uint64_t a1)
{
  v11 = objc_alloc_init(MEMORY[0x277CD46A8]);
  v2 = [*(a1 + 32) name];
  [v11 setGame:v2];

  v3 = [*(a1 + 40) result];
  [v11 setImage:v3];

  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v5)
  {
    [v11 setMinimumNumberOfPlayers:*(a1 + 64)];
    [v11 setMaximumNumberOfPlayers:(v5 + v4)];
  }

  else
  {
    [v11 setNumberOfPlayers:*(a1 + 64)];
  }

  v6 = GKGameCenterUIFrameworkBundle();
  v7 = [v6 _gkPathForMessageImage];

  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7];
  v9 = [objc_alloc(MEMORY[0x277CD46B0]) initWithData:v8 MIMEType:@"image/png"];
  [v11 setIcon:v9];

  v10 = objc_alloc_init(MEMORY[0x277CD46C8]);
  [v10 setOriginalURL:*(a1 + 48)];
  [v10 setSpecialization:v11];
  (*(*(a1 + 56) + 16))();
}

+ (id)playerWithPhoneNumberOrEmail:(id)a3 givenName:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBDB38]);
  if ([v5 containsString:@"@"])
  {
    v8 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:&stru_28612D290 value:v5];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v7 setEmailAddresses:v9];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v5];
    v9 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:&stru_28612D290 value:v8];
    v13 = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [v7 setPhoneNumbers:v10];
  }

  if ([v6 length])
  {
    [v7 setGivenName:v6];
  }

  v11 = [objc_alloc(MEMORY[0x277D0C170]) initWithContact:v7];

  return v11;
}

+ (id)predicateWithPhoneNumberOrEmail:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_6;
  }

  if (IMStringIsEmail())
  {
    v4 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:v3];
    goto LABEL_7;
  }

  if (MEMORY[0x25303FEE0](v3))
  {
    v5 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v3];
    v4 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v5];
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

LABEL_7:

  return v4;
}

+ (id)contactFromEmailOrPhoneNumber:(id)a3 fromContactStore:(id)a4
{
  v30[14] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [GKMessageUtilities predicateWithPhoneNumberOrEmail:v5];
  if (v7)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    v8 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
    v9 = *MEMORY[0x277CBD018];
    v30[0] = v8;
    v30[1] = v9;
    v10 = *MEMORY[0x277CBD098];
    v30[2] = *MEMORY[0x277CBCFC0];
    v30[3] = v10;
    v11 = *MEMORY[0x277CBD000];
    v30[4] = *MEMORY[0x277CBD068];
    v30[5] = v11;
    v12 = *MEMORY[0x277CBCFF8];
    v30[6] = *MEMORY[0x277CBD058];
    v30[7] = v12;
    v13 = *MEMORY[0x277CBD070];
    v30[8] = *MEMORY[0x277CBD0E0];
    v30[9] = v13;
    v14 = *MEMORY[0x277CBD160];
    v30[10] = *MEMORY[0x277CBD078];
    v30[11] = v14;
    v15 = *MEMORY[0x277CBD158];
    v30[12] = *MEMORY[0x277CBD028];
    v30[13] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:14];

    v17 = [objc_alloc(MEMORY[0x277CBDA70]) initWithKeysToFetch:v16];
    [v17 setPredicate:v7];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__GKMessageUtilities_contactFromEmailOrPhoneNumber_fromContactStore___block_invoke;
    v23[3] = &unk_279669B50;
    v23[4] = &v24;
    [v6 enumerateContactsWithFetchRequest:v17 error:0 usingBlock:v23];
    v18 = v25[5];

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v19 = MEMORY[0x277D0C2A0];
    v20 = *MEMORY[0x277D0C2A0];
    if (!*MEMORY[0x277D0C2A0])
    {
      v21 = GKOSLoggers();
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [GKMessageUtilities contactFromEmailOrPhoneNumber:v5 fromContactStore:v20];
    }

    v18 = 0;
  }

  return v18;
}

uint64_t __69__GKMessageUtilities_contactFromEmailOrPhoneNumber_fromContactStore___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = a2;
  if (![v15 contactType])
  {
    v7 = [v15 givenName];
    v8 = [v7 length];
    v9 = v15;
    v10 = v8;
    if (!v8)
    {
      v3 = [v15 familyName];
      if (![v3 length])
      {

        goto LABEL_13;
      }

      v9 = v15;
    }

    v11 = [v9 emailAddresses];
    if ([v11 count])
    {

      if (!v10)
      {
      }

LABEL_12:
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a3 = 1;
      goto LABEL_13;
    }

    v12 = [v15 phoneNumbers];
    v13 = [v12 count];

    if (!v10)
    {
    }

    if (v13)
    {
      goto LABEL_12;
    }
  }

LABEL_13:

  return MEMORY[0x2821F96F8]();
}

+ (void)contactFromEmailOrPhoneNumber:(uint64_t)a1 fromContactStore:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_24DE53000, a2, OS_LOG_TYPE_DEBUG, "Could not create predicate for handle: %@", &v2, 0xCu);
}

@end