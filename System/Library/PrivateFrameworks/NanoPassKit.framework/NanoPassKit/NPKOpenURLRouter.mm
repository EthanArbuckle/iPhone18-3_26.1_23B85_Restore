@interface NPKOpenURLRouter
+ (void)openURLInSafariForURL:(id)a3 fromPresentingController:(id)a4;
- (BOOL)_handleServiceModeRequestedForPassWithUniqueID:(id)a3;
- (BOOL)_handleShareForMailboxAddress:(id)a3 referralSource:(id)a4;
- (BOOL)_handleShareableCredentialsAcceptanceWithShareableCredentials:(id)a3 thumbnailImageData:(id)a4;
- (BOOL)_handleSubcredentialInvitationAcceptanceForLocalInvitationIdentifier:(id)a3 remoteInvitationIdentifier:(id)a4 contactName:(id)a5 thumbnailImageData:(id)a6;
- (BOOL)_handleUniversalLinkURLAsShoeboxURLForPathComponents:(id)a3 shouldParsePathComponents:(BOOL)a4 urlComponents:(id)a5;
- (BOOL)_isValidRelayServerURL:(id)a3 outPathComponents:(id *)a4;
- (BOOL)_presentEntitlementDetailsForPassUniqueID:(id)a3;
- (BOOL)_presentExpiredPassList;
- (BOOL)_presentListActionsMenu;
- (BOOL)_presentPassBalanceDetailsForPassWithUniqueID:(id)a3;
- (BOOL)_presentPassDetailsForPassWithUniqueID:(id)a3;
- (BOOL)_presentPassList;
- (BOOL)_presentPassListPreventAppUninstall;
- (BOOL)_presentProvisioningFlow;
- (BOOL)_presentSavingsDetailsWithPassUniqueID:(id)a3;
- (BOOL)_presentShareDetailsForPassUniqueID:(id)a3 shareIdentifier:(id)a4;
- (BOOL)_presentTransactionDetailsForPassWithUniqueID:(id)a3 transactionIdentifier:(id)a4;
- (BOOL)_presentTransactionDetailsForPassWithUniqueID:(id)a3 transactionServiceIdentifier:(id)a4 transactionSourceIdentifier:(id)a5;
- (BOOL)_processBalanceSummaryHostWithPathComponents:(id)a3 queryItems:(id)a4;
- (BOOL)_processCardHostWithPathComponents:(id)a3 queryItems:(id)a4;
- (BOOL)_processDailyCashHostWithPathComponents:(id)a3 queryItems:(id)a4;
- (BOOL)_processPassUpdateHostWithPathComponents:(id)a3;
- (BOOL)_processPassesHostWithPathComponents:(id)a3 urlComponents:(id)a4;
- (BOOL)_processProvisioningContinuityHostWithPathComponents:(id)a3;
- (BOOL)_processSavingsHostWithPathComponents:(id)a3;
- (BOOL)_processShareHostWithPathComponents:(id)a3 urlComponents:(id)a4;
- (BOOL)_processShareableCredentialsHostWithQueryItems:(id)a3;
- (BOOL)_processShoeboxSchemeForHost:(id)a3 pathComponents:(id)a4 urlComponents:(id)a5;
- (BOOL)_processShoeboxSchemeForURL:(id)a3;
- (BOOL)_processSubcredentialInvitationHostWithQueryItems:(id)a3;
- (BOOL)_processTransactionHostWithQueryItems:(id)a3;
- (BOOL)handleOpenURL:(id)a3;
- (BOOL)handleUniversalLinkWithURL:(id)a3;
- (BOOL)handleUniversalLinkWithUserActivity:(id)a3;
- (NPKOpenURLRouter)initWithDelegate:(id)a3;
- (NPKOpenURLRouterDelegate)delegate;
@end

@implementation NPKOpenURLRouter

- (NPKOpenURLRouter)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NPKOpenURLRouter;
  v5 = [(NPKOpenURLRouter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (BOOL)handleOpenURL:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Handling URL: %@", &v17, 0xCu);
    }
  }

  if ([(NPKOpenURLRouter *)self handleUniversalLinkWithURL:v4])
  {
    goto LABEL_10;
  }

  v8 = [v4 scheme];
  if ([v8 isEqualToString:@"shoebox"])
  {
  }

  else
  {
    v9 = [v4 scheme];
    v10 = [v9 isEqualToString:@"wallet"];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  if ([(NPKOpenURLRouter *)self _processShoeboxSchemeForURL:v4])
  {
LABEL_10:
    v11 = 1;
    goto LABEL_11;
  }

LABEL_12:
  v14 = pk_General_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  v11 = 0;
  if (v15)
  {
    v16 = pk_General_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v4;
      _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: Didn't understand URL: %@", &v17, 0xCu);
    }

    v11 = 0;
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)handleUniversalLinkWithUserActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [v5 isEqual:*MEMORY[0x277CCA850]];

  if (v6)
  {
    v7 = [v4 webpageURL];
    v8 = [(NPKOpenURLRouter *)self handleUniversalLinkWithURL:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)openURLInSafariForURL:(id)a3 fromPresentingController:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([a1 canOpenURLInSafariForURL:v5] & 1) == 0)
  {
    v6 = pk_General_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = pk_General_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v5;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: Unable to re-direct url: %@ to Safari.", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __62__NPKOpenURLRouter_openDeepLinkForURL_isSensitive_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Failed to open deep link for url: %@ with error: %@", &v13, 0x16u);
      }
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)handleUniversalLinkWithURL:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v4;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Attempting to handle URL: %@ as universal link", buf, 0xCu);
    }
  }

  v8 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v4 resolvingAgainstBaseURL:1];
  v9 = [v8 scheme];
  if ([&unk_286CE7558 containsObject:v9])
  {
    v10 = [v8 URL];
    v11 = [v10 pathComponents];

    v22 = v11;
    v12 = [(NPKOpenURLRouter *)self _isValidRelayServerURL:v4 outPathComponents:&v22];
    v13 = v22;

    if (!v12)
    {
      v14 = [v8 host];
      v15 = *MEMORY[0x277D38AF0];
      v16 = v14;
      v17 = v16;
      if (v16 == v15)
      {
      }

      else
      {
        if (!v16 || !v15)
        {

LABEL_16:
          v19 = 0;
          goto LABEL_17;
        }

        v18 = [v16 isEqualToString:v15];

        if (!v18)
        {
          goto LABEL_16;
        }
      }
    }

    v19 = [(NPKOpenURLRouter *)self _handleUniversalLinkURLAsShoeboxURLForPathComponents:v13 shouldParsePathComponents:!v12 urlComponents:v8];
LABEL_17:

    goto LABEL_18;
  }

  v19 = 0;
LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_processShoeboxSchemeForURL:(id)a3
{
  v4 = a3;
  v5 = [v4 host];
  v6 = [v4 pathComponents];
  v7 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v4 resolvingAgainstBaseURL:0];

  LOBYTE(self) = [(NPKOpenURLRouter *)self _processShoeboxSchemeForHost:v5 pathComponents:v6 urlComponents:v7];
  return self;
}

- (BOOL)_processShoeboxSchemeForHost:(id)a3 pathComponents:(id)a4 urlComponents:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 queryItems];
  if ([v8 isEqualToString:*MEMORY[0x277D38AC8]])
  {
    v12 = [(NPKOpenURLRouter *)self _processCardHostWithPathComponents:v9 queryItems:v11];
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D389A8]])
  {
    v12 = [(NPKOpenURLRouter *)self _processShareableCredentialsHostWithQueryItems:v11];
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D38588]])
  {
    v12 = [(NPKOpenURLRouter *)self _processSubcredentialInvitationHostWithQueryItems:v11];
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D38AD8]])
  {
    v12 = [(NPKOpenURLRouter *)self _processTransactionHostWithQueryItems:v11];
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D38A30]])
  {
    v12 = [(NPKOpenURLRouter *)self _processShareHostWithPathComponents:v9 urlComponents:v10];
  }

  else if ([v8 isEqualToString:@"passes"])
  {
    v12 = [(NPKOpenURLRouter *)self _processPassesHostWithPathComponents:v9 urlComponents:v10];
  }

  else if ([v8 isEqualToString:@"listActions"])
  {
    v12 = [(NPKOpenURLRouter *)self _processListActionsMenuHostWithPathComponents:v9];
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D38A38]])
  {
    v12 = [(NPKOpenURLRouter *)self _processExpiredPassListHostWithPathComponents:v9];
  }

  else if ([v8 isEqualToString:@"addCard"] || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D38A28]))
  {
    v12 = [(NPKOpenURLRouter *)self _processAddCardHostWithPathComponents:v9];
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D38AB8]])
  {
    v12 = [(NPKOpenURLRouter *)self _processDailyCashHostWithPathComponents:v9 queryItems:v11];
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D38AB0]])
  {
    v12 = [(NPKOpenURLRouter *)self _processBalanceSummaryHostWithPathComponents:v9 queryItems:v11];
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D38A20]])
  {
    v12 = [(NPKOpenURLRouter *)self _processSavingsHostWithPathComponents:v9];
  }

  else if ([v8 isEqualToString:*MEMORY[0x277D38AA8]])
  {
    v12 = [(NPKOpenURLRouter *)self _processPassUpdateHostWithPathComponents:v9];
  }

  else
  {
    if (![v8 isEqualToString:*MEMORY[0x277D38A18]])
    {
      v13 = 0;
      goto LABEL_21;
    }

    v12 = [(NPKOpenURLRouter *)self _processProvisioningContinuityHostWithPathComponents:v9];
  }

  v13 = v12;
LABEL_21:

  return v13;
}

- (BOOL)_processCardHostWithPathComponents:(id)a3 queryItems:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 == 3)
  {
    v9 = [v6 objectAtIndexedSubscript:1];
    v14 = [v6 objectAtIndexedSubscript:2];
    v15 = pk_General_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v17 = pk_General_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v45 = v14;
        v46 = 2112;
        v47 = v9;
        _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_DEFAULT, "Notice: Handling action %@ for pass ID %@", buf, 0x16u);
      }
    }

    if ([v14 isEqualToString:@"persistent_emulation"])
    {
      v18 = [(NPKOpenURLRouter *)self _handleServiceModeRequestedForPassWithUniqueID:v9];
    }

    else
    {
      if ([v14 isEqualToString:*MEMORY[0x277D38AD0]])
      {
        v34 = v14;
        v35 = self;
        v36 = v9;
        v37 = v7;
        v38 = v6;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v19 = v7;
        v20 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = 0;
          v23 = *v40;
          v24 = *MEMORY[0x277D38A90];
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v40 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v26 = *(*(&v39 + 1) + 8 * i);
              v27 = [v26 name];
              v28 = [v27 isEqualToString:v24];

              if (v28)
              {
                v29 = [v26 value];
                v30 = [v29 componentsSeparatedByString:{@", "}];

                v22 = v30;
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v39 objects:v43 count:16];
          }

          while (v21);
        }

        else
        {
          v22 = 0;
        }

        if ([v22 count] > 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = [v22 firstObject];
        }

        v7 = v37;
        v6 = v38;
        v9 = v36;
        v14 = v34;
        v13 = [(NPKOpenURLRouter *)v35 _presentShareDetailsForPassUniqueID:v36 shareIdentifier:v31];

        goto LABEL_36;
      }

      if ([v14 isEqualToString:*MEMORY[0x277D38AC0]])
      {
        v18 = [(NPKOpenURLRouter *)self _presentEntitlementDetailsForPassUniqueID:v9];
      }

      else
      {
        if (!PKPaymentPassActionTypeFromString())
        {

          v13 = 0;
          goto LABEL_37;
        }

        v18 = [(NPKOpenURLRouter *)self _presentPassDetailsForPassWithUniqueID:v9];
      }
    }

    v13 = v18;
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  if (v8 == 2)
  {
    v9 = [v6 lastObject];
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v45 = v9;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Handling regular pass with pass ID %@", buf, 0xCu);
      }
    }

    v13 = [(NPKOpenURLRouter *)self _presentPassDetailsForPassWithUniqueID:v9];
    goto LABEL_37;
  }

  v13 = 0;
LABEL_38:

  v32 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_processShareableCredentialsHostWithQueryItems:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v37 = self;
    v7 = 0;
    v41 = 0;
    v8 = *v51;
    v9 = *MEMORY[0x277D389A0];
    v10 = *MEMORY[0x277CCA308];
    v44 = *MEMORY[0x277D389B0];
    v38 = v4;
    v39 = *MEMORY[0x277D389A0];
    v40 = *v51;
    do
    {
      v11 = 0;
      v42 = v6;
      do
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v50 + 1) + 8 * v11);
        v13 = [v12 name];
        if ([v9 isEqualToString:v13])
        {
          v14 = [v12 value];
          v15 = [v14 pk_decodeHexadecimal];

          if (v15)
          {
            v43 = v7;
            v16 = objc_alloc(MEMORY[0x277CCAAC8]);
            v49 = 0;
            v17 = [v16 initForReadingFromData:v15 error:&v49];
            v18 = v49;
            if (v17)
            {
              v19 = v18 == 0;
            }

            else
            {
              v19 = 0;
            }

            if (v19)
            {
              v21 = MEMORY[0x277CBEB98];
              v22 = objc_opt_class();
              v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
              v48 = 0;
              v24 = [v17 decodeTopLevelObjectOfClasses:v23 forKey:v10 error:&v48];
              v20 = v48;

              if (v24)
              {
                v41 = v24;
                v4 = v38;
              }

              else
              {
                v25 = MEMORY[0x277CBEB98];
                v26 = objc_opt_class();
                v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
                v47 = v20;
                v28 = [v17 decodeTopLevelObjectOfClasses:v27 forKey:v10 error:&v47];
                v29 = v47;

                if (v28)
                {
                  v41 = [v28 pk_arrayBySafelyApplyingBlock:&__block_literal_global_13];
                }

                else
                {
                  v41 = 0;
                }

                v4 = v38;

                v20 = v29;
              }
            }

            else
            {
              v20 = v18;
            }

            [v17 finishDecoding];

            v7 = v43;
            v9 = v39;
            v8 = v40;
          }

          v6 = v42;
        }

        if ([v44 isEqualToString:v13])
        {
          v30 = [v12 value];
          v31 = [v30 pk_decodeHexadecimal];

          v7 = v31;
        }

        ++v11;
      }

      while (v6 != v11);
      v6 = [v4 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v6);
    v32 = v41;
    if (v41)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __67__NPKOpenURLRouter__processShareableCredentialsHostWithQueryItems___block_invoke_2;
      v45[3] = &unk_279947330;
      v7 = v7;
      v46 = v7;
      v33 = [v41 pk_arrayByApplyingBlock:v45];
    }

    else
    {
      v33 = 0;
    }

    self = v37;
  }

  else
  {
    v32 = 0;
    v7 = 0;
    v33 = 0;
  }

  v34 = [(NPKOpenURLRouter *)self _handleShareableCredentialsAcceptanceWithShareableCredentials:v33 thumbnailImageData:v7];

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

id __67__NPKOpenURLRouter__processShareableCredentialsHostWithQueryItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D38128];
  v4 = a2;
  v5 = [[v3 alloc] initWithEncryptedProvisioningTarget:v4 provisioningSharingIdentifier:0 passThumbnailImageData:*(a1 + 32)];

  return v5;
}

- (BOOL)_processSubcredentialInvitationHostWithQueryItems:(id)a3
{
  v27 = self;
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v30 = 0;
    v29 = 0;
    v6 = 0;
    v7 = *v33;
    v8 = *MEMORY[0x277D38570];
    v9 = *MEMORY[0x277D38580];
    v28 = *MEMORY[0x277D38578];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v8 isEqualToString:v12];

        if (v13)
        {
          v14 = v6 == 0;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          v6 = [v11 value];
        }

        else
        {
          v15 = [v11 name];
          v16 = [v9 isEqualToString:v15];

          if (v16)
          {
            v17 = v5 == 0;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            v5 = [v11 value];
          }

          else
          {
            v18 = [v11 name];
            v19 = [@"contact_name" isEqualToString:v18];

            if (v19)
            {
              v20 = v30 == 0;
            }

            else
            {
              v20 = 0;
            }

            if (v20)
            {
              v30 = [v11 value];
            }

            else
            {
              v21 = [v11 name];
              v22 = [v28 isEqualToString:v21];

              if (v22 && !v29)
              {
                v23 = [v11 value];
                v29 = [v23 pk_decodeHexadecimal];
              }
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
    v30 = 0;
    v29 = 0;
    v6 = 0;
  }

  v24 = [(NPKOpenURLRouter *)v27 _handleSubcredentialInvitationAcceptanceForLocalInvitationIdentifier:v6 remoteInvitationIdentifier:v5 contactName:v30 thumbnailImageData:v29, v27];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)_processTransactionHostWithQueryItems:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__9;
  v48 = __Block_byref_object_dispose__9;
  v49 = 0;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  v32 = self;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (v4)
  {
    v8 = *v41;
    v9 = *MEMORY[0x277D38A80];
    v35 = *MEMORY[0x277D38A98];
    v34 = *MEMORY[0x277D38A88];
    v33 = *MEMORY[0x277D38AA0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v40 + 1) + 8 * i);
        if (v45[5] || ([*(*(&v40 + 1) + 8 * i) name], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v9, "isEqualToString:", v12), v12, !v13))
        {
          if (v7 || ([v11 name], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v35, "isEqualToString:", v16), v16, !v17))
          {
            if (v6 || ([v11 name], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v34, "isEqualToString:", v18), v18, !v19))
            {
              if (!v5)
              {
                v20 = [v11 name];
                v21 = [v33 isEqualToString:v20];

                if (v21)
                {
                  v5 = [v11 value];
                }

                else
                {
                  v5 = 0;
                }
              }
            }

            else
            {
              v6 = [v11 value];
            }
          }

          else
          {
            v7 = [v11 value];
          }
        }

        else
        {
          v14 = [v11 value];
          v15 = v45[5];
          v45[5] = v14;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v4);
  }

  v22 = dispatch_group_create();
  if (!v45[5])
  {
    if ([v7 length])
    {
      dispatch_group_enter(v22);
      v23 = objc_alloc_init(MEMORY[0x277D380F0]);
      v24 = v39;
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke;
      v39[3] = &unk_279947358;
      v39[5] = &v44;
      v39[4] = v22;
      [v23 passUniqueIdentifierForTransactionWithIdentifier:v7 completion:v39];
    }

    else
    {
      if (![v6 length])
      {
        v29 = 0;
        goto LABEL_34;
      }

      dispatch_group_enter(v22);
      v23 = objc_alloc_init(MEMORY[0x277D380F0]);
      if ([v5 length])
      {
        v24 = v38;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke_2;
        v38[3] = &unk_279947358;
        v38[5] = &v44;
        v38[4] = v22;
        [v23 passUniqueIdentifierForTransactionWithServiceIdentifier:v6 transactionSourceIdentifier:v5 completion:v38];
      }

      else
      {
        v24 = v37;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke_3;
        v37[3] = &unk_279947358;
        v37[5] = &v44;
        v37[4] = v22;
        [v23 ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:v6 completion:v37];
      }
    }
  }

  v25 = dispatch_time(0, 300000000000);
  dispatch_group_wait(v22, v25);
  if ([v7 length])
  {
    v26 = [(NPKOpenURLRouter *)v32 _presentTransactionDetailsForPassWithUniqueID:v45[5] transactionIdentifier:v7];
  }

  else
  {
    v27 = [v6 length];
    v28 = v45[5];
    if (v27)
    {
      v26 = [(NPKOpenURLRouter *)v32 _presentTransactionDetailsForPassWithUniqueID:v28 transactionServiceIdentifier:v6 transactionSourceIdentifier:v5];
    }

    else
    {
      v26 = [(NPKOpenURLRouter *)v32 _presentPassDetailsForPassWithUniqueID:v28];
    }
  }

  v29 = v26;
LABEL_34:

  _Block_object_dispose(&v44, 8);
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

void __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)_processShareHostWithPathComponents:(id)a3 urlComponents:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  if (v8 == 2)
  {
    v9 = [v6 objectAtIndexedSubscript:1];
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = v8;
    if (v8 < 3)
    {
      v9 = 0;
LABEL_17:
      v22 = 0;
      goto LABEL_18;
    }

    v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v12 = 1;
    do
    {
      v13 = [v6 objectAtIndexedSubscript:v12];
      v14 = v13;
      if (v13 == @"https:" || v13 && (v15 = [(__CFString *)v13 isEqualToString:@"https:"], v14, v15))
      {
        [v11 appendFormat:@"%@//", v14];
      }

      else
      {
        [v11 appendFormat:@"%@/", v14];
      }

      ++v12;
    }

    while (v10 != v12);
    v16 = [v7 fragment];
    [v11 appendFormat:@"#%@", v16];

    v9 = [v11 copy];
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  v17 = [v7 queryItems];
  v18 = [v17 pk_firstObjectPassingTest:&__block_literal_global_114];

  v19 = [v18 value];
  v20 = v19;
  v21 = *MEMORY[0x277D38510];
  if (v19)
  {
    v21 = v19;
  }

  v22 = v21;

LABEL_18:
  v23 = [(NPKOpenURLRouter *)self _handleShareForMailboxAddress:v9 referralSource:v22];

  return v23;
}

uint64_t __70__NPKOpenURLRouter__processShareHostWithPathComponents_urlComponents___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = *MEMORY[0x277D38A48];
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [v4 isEqualToString:v5];
    }
  }

  return v7;
}

- (BOOL)_processPassesHostWithPathComponents:(id)a3 urlComponents:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 count] == 2)
  {
    v6 = [v5 lastObject];
    if ([v6 isEqualToString:@"preventAppUninstall"])
    {
      v7 = [(NPKOpenURLRouter *)self _presentPassListPreventAppUninstall];
    }

    else
    {
      v9 = pk_General_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v10)
      {
        v11 = pk_General_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v14 = 138412290;
          v15 = v6;
          _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: Cannot handle unsupported pass list action: %@. Presenting pass list.", &v14, 0xCu);
        }
      }

      v7 = [(NPKOpenURLRouter *)self _presentPassList];
    }

    v8 = v7;
  }

  else
  {
    v8 = [(NPKOpenURLRouter *)self _presentPassList];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_processDailyCashHostWithPathComponents:(id)a3 queryItems:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] < 2)
  {
    v9 = [v7 npkFindFirstObjectMatchingCondition:&__block_literal_global_116];
    v10 = v9;
    if (v9)
    {
      v8 = [v9 value];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:1];
  }

  v11 = [(NPKOpenURLRouter *)self _presentPassBalanceDetailsForPassWithUniqueID:v8];

  return v11;
}

uint64_t __71__NPKOpenURLRouter__processDailyCashHostWithPathComponents_queryItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:*MEMORY[0x277D38A80]];

  return v3;
}

- (BOOL)_processBalanceSummaryHostWithPathComponents:(id)a3 queryItems:(id)a4
{
  v5 = [a4 npkFindFirstObjectMatchingCondition:&__block_literal_global_118];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 value];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NPKOpenURLRouter *)self _presentPassBalanceDetailsForPassWithUniqueID:v7];

  return v8;
}

uint64_t __76__NPKOpenURLRouter__processBalanceSummaryHostWithPathComponents_queryItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:*MEMORY[0x277D38A80]];

  return v3;
}

- (BOOL)_processSavingsHostWithPathComponents:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  v5 = [MEMORY[0x277D37CD0] sharedInstance];
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __58__NPKOpenURLRouter__processSavingsHostWithPathComponents___block_invoke;
  v13 = &unk_2799473A0;
  v15 = &v16;
  v7 = v6;
  v14 = v7;
  [v5 defaultAccountForFeature:2 completion:&v10];
  v8 = dispatch_time(0, 300000000000);
  dispatch_group_wait(v7, v8);
  LOBYTE(self) = [(NPKOpenURLRouter *)self _presentSavingsDetailsWithPassUniqueID:v17[5], v10, v11, v12, v13];

  _Block_object_dispose(&v16, 8);
  return self;
}

void __58__NPKOpenURLRouter__processSavingsHostWithPathComponents___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) fetched account %@", &v15, 0xCu);
    }
  }

  if (v3)
  {
    v7 = [v3 associatedPassUniqueID];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(*(a1 + 40) + 8) + 40);
        v15 = 138412290;
        v16 = v13;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Found account with card unique id %@ ", &v15, 0xCu);
      }
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_processPassUpdateHostWithPathComponents:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] == 2)
  {
    v5 = [v4 lastObject];
    v6 = [MEMORY[0x277D37FC0] sharedInstance];
    v7 = [v6 diffForPassUpdateUserNotificationWithIdentifier:v5];
    v8 = [v7 passUniqueID];
    if ([v8 length])
    {
      v9 = pk_General_log();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v10)
      {
        v11 = pk_General_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v8;
          _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Successfully retrieved passUniqueID from notificationID: %@", &v19, 0xCu);
        }
      }

      v12 = [(NPKOpenURLRouter *)self _presentPassDetailsForPassWithUniqueID:v8];
    }

    else
    {
      v12 = [(NPKOpenURLRouter *)self _presentPassList];
    }

    v16 = v12;
  }

  else
  {
    v13 = pk_General_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (v14)
    {
      v15 = pk_General_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Unsupported pass update notification. Presenting pass list instead.", &v19, 2u);
      }
    }

    v16 = [(NPKOpenURLRouter *)self _presentPassList];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_processProvisioningContinuityHostWithPathComponents:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 count];
  if (v4 == 2)
  {
    v5 = [v3 lastObject];
    v6 = objc_alloc_init(MEMORY[0x277D380F0]);
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__NPKOpenURLRouter__processProvisioningContinuityHostWithPathComponents___block_invoke;
    v14[3] = &unk_279944F98;
    v15 = v7;
    v8 = v7;
    [v6 userNotificationActionPerformed:2 notificationIdentifier:v5 completion:v14];
    v9 = dispatch_time(0, 300000000000);
    dispatch_group_wait(v8, v9);
  }

  else
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (!v11)
    {
      goto LABEL_7;
    }

    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Unable to handle provisioningContinuity url with path components: %@", buf, 0xCu);
    }
  }

LABEL_7:
  v12 = *MEMORY[0x277D85DE8];
  return v4 == 2;
}

- (BOOL)_presentPassDetailsForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = [(NPKOpenURLRouter *)self delegate];
    [v6 urlRouter:self requestPassDetailsPresentationForPassWithUniqueID:v4];
  }

  return v5 != 0;
}

- (BOOL)_handleServiceModeRequestedForPassWithUniqueID:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = [(NPKOpenURLRouter *)self delegate];
    [v6 urlRouter:self requestServiceModeForPassWithUniqueID:v4];
  }

  return v5 != 0;
}

- (BOOL)_presentShareDetailsForPassUniqueID:(id)a3 shareIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  if (v8)
  {
    v9 = [(NPKOpenURLRouter *)self delegate];
    [v9 urlRouter:self requestShareDetailsPresentationForPassWithUniqueID:v6 shareIdentifier:v7];
  }

  return v8 != 0;
}

- (BOOL)_presentEntitlementDetailsForPassUniqueID:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = [(NPKOpenURLRouter *)self delegate];
    [v6 urlRouter:self requestEntitlementDetailsPresentationForPassWithUniqueID:v4];
  }

  return v5 != 0;
}

- (BOOL)_handleShareableCredentialsAcceptanceWithShareableCredentials:(id)a3 thumbnailImageData:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(NPKOpenURLRouter *)self delegate];
    [v8 urlRouter:self requestShareableCredentialAcceptanceFlowPresentationWithShareableCredentials:v7 thumbnailImageData:v6];
  }

  return a3 != 0;
}

- (BOOL)_handleSubcredentialInvitationAcceptanceForLocalInvitationIdentifier:(id)a3 remoteInvitationIdentifier:(id)a4 contactName:(id)a5 thumbnailImageData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 length];
  if (v14)
  {
    v15 = [(NPKOpenURLRouter *)self delegate];
    [v15 urlRouter:self requestSubcredentialInvitationAcceptanceFlowPresentationWithLocalInvitationIdentifier:v10 remoteInvitationIdentifier:v11 contactName:v12 thumbnailImageData:v13];
  }

  return v14 != 0;
}

- (BOOL)_handleShareForMailboxAddress:(id)a3 referralSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  if (v8)
  {
    v9 = [(NPKOpenURLRouter *)self delegate];
    [v9 urlRouter:self requestSharedInvitationAcceptanceFlowPresentationWithMailboxAddress:v6 referralSource:v7];
  }

  return v8 != 0;
}

- (BOOL)_presentTransactionDetailsForPassWithUniqueID:(id)a3 transactionServiceIdentifier:(id)a4 transactionSourceIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 length];
  if (v11)
  {
    v12 = [(NPKOpenURLRouter *)self delegate];
    [v12 urlRouter:self requestTransactionDetailsForPassWithUniqueID:v8 transactionServiceIdentifier:v9 transactionSourceIdentifier:v10];
  }

  return v11 != 0;
}

- (BOOL)_presentTransactionDetailsForPassWithUniqueID:(id)a3 transactionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  if (v8)
  {
    v9 = [(NPKOpenURLRouter *)self delegate];
    [v9 urlRouter:self requestTransactionDetailsForPassWithUniqueID:v6 transactionIdentifier:v7];
  }

  return v8 != 0;
}

- (BOOL)_presentPassList
{
  v3 = [(NPKOpenURLRouter *)self delegate];
  [v3 requestPassListForURLRouter:self];

  return 1;
}

- (BOOL)_presentListActionsMenu
{
  v3 = [(NPKOpenURLRouter *)self delegate];
  [v3 requestListActionsMenuForURLRouter:self];

  return 1;
}

- (BOOL)_presentExpiredPassList
{
  v3 = [(NPKOpenURLRouter *)self delegate];
  [v3 requestExpiredPassListForURLRouter:self];

  return 1;
}

- (BOOL)_presentPassListPreventAppUninstall
{
  v3 = [(NPKOpenURLRouter *)self delegate];
  [v3 requestPassListPreventAppUninstallForURLRouter:self];

  return 1;
}

- (BOOL)_presentProvisioningFlow
{
  v3 = [(NPKOpenURLRouter *)self delegate];
  [v3 requestProvisioningFlowForURLRouter:self];

  return 1;
}

- (BOOL)_presentPassBalanceDetailsForPassWithUniqueID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = [(NPKOpenURLRouter *)self delegate];
    [v6 urlRouter:self requestPassBalanceDetailsPresentationForPassWithUniqueID:v4];
  }

  else
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: Could not find pass with uniqueID: %@", &v12, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (BOOL)_presentSavingsDetailsWithPassUniqueID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = [(NPKOpenURLRouter *)self delegate];
    [v6 urlRouter:self requestSavingsDetailsPresentationWithPassUniqueID:v4];
  }

  else
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: Could not find card with uniqueID: %@", &v12, 0xCu);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (BOOL)_isValidRelayServerURL:(id)a3 outPathComponents:(id *)a4
{
  v25[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277D380F0]);
  v7 = [v6 sharedPaymentWebServiceContext];
  v8 = [v7 configuration];
  v9 = PKCurrentRegion();
  v10 = [v8 allowedRelayServerHostsForRegion:v9];

  v11 = [v5 host];
  if ([v10 containsObject:v11])
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = *MEMORY[0x277D389C0];
    v14 = [v12 initWithFormat:@"/v%@/%@/", *MEMORY[0x277D389C0], *MEMORY[0x277D389B8]];
    v15 = *MEMORY[0x277D38AF0];
    v16 = v11;
    v17 = v16;
    if (v16 == v15)
    {
    }

    else
    {
      if (!v16 || !v15)
      {

        goto LABEL_12;
      }

      v18 = [v16 isEqualToString:v15];

      if (!v18)
      {
        goto LABEL_12;
      }
    }

    v20 = [v5 path];
    v21 = [v20 hasPrefix:v14];

    if (!v21)
    {
      v19 = 0;
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v25[0] = *MEMORY[0x277D38A30];
    v22 = [v5 absoluteString];
    v25[1] = v22;
    *a4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];

    v19 = 1;
    goto LABEL_13;
  }

  v19 = 0;
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_handleUniversalLinkURLAsShoeboxURLForPathComponents:(id)a3 shouldParsePathComponents:(BOOL)a4 urlComponents:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [v8 count];
  v11 = v10;
  if (!v6)
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (v10 < 1)
  {
    goto LABEL_14;
  }

  v12 = 0;
  while (1)
  {
    v13 = [v8 objectAtIndexedSubscript:v12];
    if (![v13 isEqualToString:@"/"])
    {
      break;
    }

LABEL_7:
    if (v11 == ++v12)
    {
      goto LABEL_14;
    }
  }

  v14 = [v13 isEqualToString:@"apple-card"];

  if (v14)
  {
    goto LABEL_7;
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v15 = [v8 objectAtIndexedSubscript:v12];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v16 addObject:@"/"];
  v17 = v12 + 1;
  if (v17 < v11)
  {
    do
    {
      v18 = [v8 objectAtIndexedSubscript:v17];
      [v16 addObject:v18];

      ++v17;
    }

    while (v11 != v17);
  }

  v19 = [(NPKOpenURLRouter *)self _processShoeboxSchemeForHost:v15 pathComponents:v16 urlComponents:v9];

LABEL_15:
  return v19;
}

- (NPKOpenURLRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end