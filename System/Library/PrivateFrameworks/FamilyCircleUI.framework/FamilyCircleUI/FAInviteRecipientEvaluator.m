@interface FAInviteRecipientEvaluator
- (id)parseRecipientAddresses:(id)a3;
- (id)recipientAlreadyInFamily:(id)a3 emailOnly:(BOOL)a4 recipients:(id)a5;
- (void)showAlreadyFamilyMember:(id)a3 presenter:(id)a4;
- (void)validateRecipients:(id)a3 inviteContext:(id)a4 presenter:(id)a5 completion:(id)a6;
@end

@implementation FAInviteRecipientEvaluator

- (id)parseRecipientAddresses:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = objc_alloc_init(MEMORY[0x277CFBE00]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 firstEmailAddressInString:{*(*(&v14 + 1) + 8 * i), v14}];
        if (v11)
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)recipientAlreadyInFamily:(id)a3 emailOnly:(BOOL)a4 recipients:(id)a5
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v37 = a5;
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v29 = v6;
  obj = [v6 members];
  v34 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v34)
  {
    v33 = *v54;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v53 + 1) + 8 * i);
        v35 = [v9 appleID];
        if (!v35)
        {
          goto LABEL_20;
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v10 = v37;
        v11 = [v10 countByEnumeratingWithState:&v49 objects:v59 count:16];
        if (v11)
        {
          v12 = *v50;
          while (2)
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v50 != v12)
              {
                objc_enumerationMutation(v10);
              }

              if ([v35 ea_isEqualToEmailAddress:*(*(&v49 + 1) + 8 * j)])
              {
                v14 = [v9 fullName];

                if (v14)
                {
                  v11 = [v9 fullName];
                  [v7 addObject:v11];

                  LOBYTE(v11) = 1;
                  goto LABEL_19;
                }
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v49 objects:v59 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

LABEL_19:

        if ((v11 & 1) == 0)
        {
LABEL_20:
          if (!a4)
          {
            v32 = i;
            v15 = [v9 memberPhoneNumbers];
            v16 = [v15 componentsSeparatedByString:{@", "}];

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v36 = v16;
            v39 = [v36 countByEnumeratingWithState:&v45 objects:v58 count:16];
            if (v39)
            {
              v38 = *v46;
              do
              {
                for (k = 0; k != v39; ++k)
                {
                  if (*v46 != v38)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v18 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:*(*(&v45 + 1) + 8 * k)];
                  if (v18)
                  {
                    v40 = k;
                    v43 = 0u;
                    v44 = 0u;
                    v41 = 0u;
                    v42 = 0u;
                    v19 = v37;
                    v20 = [v19 countByEnumeratingWithState:&v41 objects:v57 count:16];
                    if (v20)
                    {
                      v21 = v20;
                      v22 = *v42;
                      do
                      {
                        for (m = 0; m != v21; ++m)
                        {
                          if (*v42 != v22)
                          {
                            objc_enumerationMutation(v19);
                          }

                          v24 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:*(*(&v41 + 1) + 8 * m)];
                          if ([v18 isEqual:v24])
                          {
                            v25 = [v9 fullName];

                            if (v25)
                            {
                              v26 = [v9 fullName];
                              [v7 addObject:v26];
                            }
                          }
                        }

                        v21 = [v19 countByEnumeratingWithState:&v41 objects:v57 count:16];
                      }

                      while (v21);
                    }

                    k = v40;
                  }
                }

                v39 = [v36 countByEnumeratingWithState:&v45 objects:v58 count:16];
              }

              while (v39);
            }

            i = v32;
          }
        }
      }

      v34 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v34);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)showAlreadyFamilyMember:(id)a3 presenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__FAInviteRecipientEvaluator_showAlreadyFamilyMember_presenter___block_invoke;
  block[3] = &unk_2782F3190;
  v11 = v6;
  v12 = self;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __64__FAInviteRecipientEvaluator_showAlreadyFamilyMember_presenter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v2 <= 1)
  {
    v6 = @"FAMILY_INVITE_ALREADY_FAMILY_MEMBER";
  }

  else
  {
    v6 = @"FAMILY_INVITE_ALREADY_FAMILY_MEMBERS";
  }

  v16 = [v4 localizedStringForKey:v6 value:&stru_282D9AA68 table:@"Localizable"];

  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x277CCAAF0];
  v9 = [*(a1 + 32) allObjects];
  v10 = [v8 localizedStringByJoiningStrings:v9];
  v11 = [v7 stringWithFormat:v16, v10];

  v12 = *(a1 + 40);
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"OK" value:&stru_282D9AA68 table:@"Localizable"];

  v15 = [MEMORY[0x277D75110] alertWithTitle:v11 message:0 buttonTitle:v14 actionHandler:&__block_literal_global_7];
  [*(a1 + 48) presentViewController:v15 animated:1 completion:0];
}

- (void)validateRecipients:(id)a3 inviteContext:(id)a4 presenter:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count])
  {
    if ([v11 validation])
    {
      v14 = objc_alloc_init(MEMORY[0x277D08280]);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __84__FAInviteRecipientEvaluator_validateRecipients_inviteContext_presenter_completion___block_invoke;
      v15[3] = &unk_2782F31B8;
      v15[4] = self;
      v16 = v10;
      v18 = v13;
      v17 = v12;
      [v14 startRequestWithCompletionHandler:v15];
    }

    else
    {
      (*(v13 + 2))(v13, 1);
    }
  }

  else
  {
    (*(v13 + 2))(v13, 0);
  }
}

void __84__FAInviteRecipientEvaluator_validateRecipients_inviteContext_presenter_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) recipientAlreadyInFamily:a2 emailOnly:0 recipients:*(a1 + 40)];
  v3 = [v5 count];
  v4 = *(*(a1 + 56) + 16);
  if (v3)
  {
    v4();
    [*(a1 + 32) showAlreadyFamilyMember:v5 presenter:*(a1 + 48)];
  }

  else
  {
    v4();
  }
}

@end