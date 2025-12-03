@interface FTRegAppleIDSetupManager
+ (id)sharedInstance;
- (BOOL)_shouldAttemptAccountRegistration;
- (BOOL)_shouldShowAliasSelectionUI;
- (BOOL)aliasIsEnabled:(id)enabled;
- (BOOL)beginSetupWithCompletionHandler:(id)handler;
- (BOOL)shouldShowAliasSelectionUI;
- (BOOL)showsPhoneNumberDisplayString;
- (FTRegAppleIDSetupManager)init;
- (IDSAccountController)faceTimeAccountController;
- (IDSAccountController)iMessageAccountController;
- (id)_appleID;
- (id)accountControllerForService:(id)service;
- (id)phoneNumberDisplayString;
- (void)_cleanup;
- (void)_updateCandidateAliases;
- (void)_updateSelectionSummaryText;
- (void)addSetupDictionary:(id)dictionary forService:(int64_t)service;
- (void)setSelectedAliases:(id)aliases;
@end

@implementation FTRegAppleIDSetupManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FTRegAppleIDSetupManager sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __42__FTRegAppleIDSetupManager_sharedInstance__block_invoke()
{
  sharedInstance___instance = objc_alloc_init(FTRegAppleIDSetupManager);

  return MEMORY[0x2821F96F8]();
}

- (FTRegAppleIDSetupManager)init
{
  v6.receiver = self;
  v6.super_class = FTRegAppleIDSetupManager;
  v2 = [(FTRegAppleIDSetupManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    setupOperations = v2->_setupOperations;
    v2->_setupOperations = v3;
  }

  return v2;
}

- (IDSAccountController)iMessageAccountController
{
  iMessageAccountController = self->_iMessageAccountController;
  if (!iMessageAccountController)
  {
    v4 = objc_alloc(MEMORY[0x277D186C8]);
    v5 = [v4 initWithService:*MEMORY[0x277D186B0]];
    v6 = self->_iMessageAccountController;
    self->_iMessageAccountController = v5;

    iMessageAccountController = self->_iMessageAccountController;
  }

  return iMessageAccountController;
}

- (IDSAccountController)faceTimeAccountController
{
  faceTimeAccountController = self->_faceTimeAccountController;
  if (!faceTimeAccountController)
  {
    v4 = objc_alloc(MEMORY[0x277D186C8]);
    v5 = [v4 initWithService:*MEMORY[0x277D18698]];
    v6 = self->_faceTimeAccountController;
    self->_faceTimeAccountController = v5;

    faceTimeAccountController = self->_faceTimeAccountController;
  }

  return faceTimeAccountController;
}

- (id)accountControllerForService:(id)service
{
  if ([service isEqualToString:*MEMORY[0x277D186B0]])
  {
    [(FTRegAppleIDSetupManager *)self iMessageAccountController];
  }

  else
  {
    [(FTRegAppleIDSetupManager *)self faceTimeAccountController];
  }
  v4 = ;

  return v4;
}

- (void)_cleanup
{
  [(FTRegAppleIDSetupManager *)self setSetupOperations:0];
  [(FTRegAppleIDSetupManager *)self setCandidateAliases:0];
  [(FTRegAppleIDSetupManager *)self setSelectedAliases:0];

  [(FTRegAppleIDSetupManager *)self setHandler:0];
}

- (id)_appleID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  setupOperations = [(FTRegAppleIDSetupManager *)self setupOperations];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__FTRegAppleIDSetupManager__appleID__block_invoke;
  v5[3] = &unk_278DE8BB8;
  v5[4] = &v6;
  [setupOperations enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__FTRegAppleIDSetupManager__appleID__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = IDSParseAuthDictionary();
  v6 = [v7 objectForKey:*MEMORY[0x277D187C0]];
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
    if (a4)
    {
      *a4 = 1;
    }
  }
}

- (BOOL)_shouldAttemptAccountRegistration
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  setupOperations = [(FTRegAppleIDSetupManager *)self setupOperations];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__FTRegAppleIDSetupManager__shouldAttemptAccountRegistration__block_invoke;
  v5[3] = &unk_278DE8BE0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [setupOperations enumerateKeysAndObjectsUsingBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __61__FTRegAppleIDSetupManager__shouldAttemptAccountRegistration__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IDSParseAuthDictionary();
  v5 = [v4 objectForKey:*MEMORY[0x277D187C0]];
  v6 = [v3 intValue];

  v7 = MEMORY[0x277D186B0];
  if (v6 != 1)
  {
    v7 = MEMORY[0x277D18698];
  }

  v8 = *v7;
  v9 = [*(a1 + 32) accountControllerForService:v8];
  v10 = [v9 serviceName];
  v11 = [v9 accountWithLoginID:v5 service:v10];

  if (![v11 isActive] || objc_msgSend(v11, "registrationStatus") != 5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v12 = csui_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v15 = 138412546;
    v16 = v13;
    v17 = 2112;
    v18 = v11;
    _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, "Should attempt registration: %@ for account %@", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addSetupDictionary:(id)dictionary forService:(int64_t)service
{
  v13 = *MEMORY[0x277D85DE8];
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v7 = csui_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      serviceCopy = service;
      _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Adding setup dictionary for service type: %ld", &v11, 0xCu);
    }

    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:&__block_literal_global_57_0];
    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:service];
    setupOperations = [(FTRegAppleIDSetupManager *)self setupOperations];
    [setupOperations setObject:dictionaryCopy forKey:v8];

    [(FTRegAppleIDSetupManager *)self _updateCandidateAliases];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __58__FTRegAppleIDSetupManager_addSetupDictionary_forService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 isEqual:@"password"];
  v7 = csui_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v13) = 0;
      v9 = "  => password : REDACTED";
      v10 = v7;
      v11 = 2;
LABEL_6:
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    }
  }

  else if (v8)
  {
    v13 = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v5;
    v9 = "  => %@ : %@";
    v10 = v7;
    v11 = 22;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldShowAliasSelectionUI
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(FTRegAppleIDSetupManager *)self _shouldAttemptAccountRegistration])
  {
    candidateAliases = [(FTRegAppleIDSetupManager *)self candidateAliases];
    v4 = _IDSCopyOrderedAliases();
    v5 = [(__CFString *)v4 count];
    v6 = csui_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "  => Squashed sorted candidates: %@", &v14, 0xCu);
    }

    showsPhoneNumberDisplayString = [(FTRegAppleIDSetupManager *)self showsPhoneNumberDisplayString];
    v8 = 1;
    if (showsPhoneNumberDisplayString)
    {
      v8 = 2;
    }

    v9 = v5 > v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = csui_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v9)
    {
      v11 = @"YES";
    }

    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "shouldShowAliasSelectionUI: %@", &v14, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)shouldShowAliasSelectionUI
{
  [(FTRegAppleIDSetupManager *)self _updateCandidateAliases];

  return [(FTRegAppleIDSetupManager *)self _shouldShowAliasSelectionUI];
}

- (BOOL)aliasIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = CommunicationsSetupUIBundle();
  v6 = CNFRegStringTableName();
  v7 = [v5 localizedStringForKey:@"YOUR_NUMBER_STRING" value:&stru_2856D3978 table:v6];
  v8 = [enabledCopy isEqualToString:v7];

  if (v8)
  {
    v9 = 0;
  }

  else if ([(FTRegAppleIDSetupManager *)self showsPhoneNumberDisplayString])
  {
    phoneNumberDisplayString = [(FTRegAppleIDSetupManager *)self phoneNumberDisplayString];
    v11 = [enabledCopy isEqualToString:phoneNumberDisplayString];

    v9 = v11 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

- (BOOL)showsPhoneNumberDisplayString
{
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  supportsSMSIdentification = [mEMORY[0x277D07DB0] supportsSMSIdentification];

  return supportsSMSIdentification;
}

- (id)phoneNumberDisplayString
{
  if ([(FTRegAppleIDSetupManager *)self showsPhoneNumberDisplayString])
  {
    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    telephoneNumber = [mEMORY[0x277D07DB0] telephoneNumber];
    _stripFZIDPrefix = [telephoneNumber _stripFZIDPrefix];

    if ([_stripFZIDPrefix length])
    {
      CNFRegFormattedPhoneNumberForString(_stripFZIDPrefix);
    }

    else
    {
      CNFRegLocalPhoneNumberDisplayString();
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateSelectionSummaryText
{
  v46 = *MEMORY[0x277D85DE8];
  _appleID = [(FTRegAppleIDSetupManager *)self _appleID];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  selectedAliases = [(FTRegAppleIDSetupManager *)self selectedAliases];
  v4 = [selectedAliases countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (!v4)
  {

LABEL_27:
    [(FTRegAppleIDSetupManager *)selfCopy setSelectionSummaryText:0];
    v7 = 0;
    goto LABEL_38;
  }

  v5 = v4;
  _appearsToBePhoneNumber = 0;
  v7 = 0;
  v8 = *v42;
  obj = selectedAliases;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v42 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v41 + 1) + 8 * i);
      v11 = CommunicationsSetupUIBundle();
      v12 = CNFRegStringTableName();
      v13 = [v11 localizedStringForKey:@"YOUR_NUMBER_STRING" value:&stru_2856D3978 table:v12];
      v14 = [v10 isEqualToString:v13];

      if (v14)
      {
        v20 = v10;

LABEL_22:
        v7 = v20;
        v19 = obj;
        goto LABEL_23;
      }

      if ([(FTRegAppleIDSetupManager *)selfCopy showsPhoneNumberDisplayString])
      {
        phoneNumberDisplayString = [(FTRegAppleIDSetupManager *)selfCopy phoneNumberDisplayString];
        v16 = [v10 isEqualToString:phoneNumberDisplayString];

        if (v16)
        {
          v20 = v10;

          _appearsToBePhoneNumber = [v20 _appearsToBePhoneNumber];
          goto LABEL_22;
        }
      }

      if (((v7 != 0) & _appearsToBePhoneNumber) != 0)
      {
        _appearsToBePhoneNumber = 1;
        continue;
      }

      _appearsToBePhoneNumber2 = [v10 _appearsToBePhoneNumber];
      if ((_appearsToBePhoneNumber2 & 1) == 0 && v7)
      {
        if (![v10 isEqualToString:_appleID])
        {
          continue;
        }

        _appearsToBePhoneNumber2 = 0;
      }

      v18 = v10;

      _appearsToBePhoneNumber = _appearsToBePhoneNumber2;
      v7 = v18;
    }

    v19 = obj;
    v5 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_23:

  if (!v7)
  {
    goto LABEL_27;
  }

  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  callingAvailable = [mEMORY[0x277D07DB0] callingAvailable];

  if (v14)
  {
    v23 = CommunicationsSetupUIBundle();
    v24 = CNFRegStringTableName();
    if (callingAvailable)
    {
      v25 = @"BUDDY_CALLERID_GENERIC_PHONE";
    }

    else
    {
      v25 = @"BUDDY_CALLERID_GENERIC_PHONE_NO_FACETIME_AUDIO";
    }

    v36 = [v23 localizedStringForKey:v25 value:&stru_2856D3978 table:v24];
    [(FTRegAppleIDSetupManager *)selfCopy setSelectionSummaryText:v36];
  }

  else
  {
    v26 = [v7 _appearsToBePhoneNumber] | _appearsToBePhoneNumber;
    v27 = MEMORY[0x277CCACA8];
    v28 = CommunicationsSetupUIBundle();
    v29 = @"BUDDY_CALLERID_UNQUOTED_NO_FACETIME_AUDIO";
    if (callingAvailable)
    {
      v29 = @"BUDDY_CALLERID_UNQUOTED";
    }

    v30 = @"BUDDY_CALLERID_QUOTED";
    if (!callingAvailable)
    {
      v30 = @"BUDDY_CALLERID_QUOTED_NO_FACETIME_AUDIO";
    }

    if (v26)
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    v32 = CNFStringKeyForIdiom(v31);
    v33 = CNFRegStringTableName();
    v34 = [v28 localizedStringForKey:v32 value:&stru_2856D3978 table:v33];
    v35 = [v27 stringWithFormat:v34, v7];

    [(FTRegAppleIDSetupManager *)selfCopy setSelectionSummaryText:v35];
  }

LABEL_38:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_updateCandidateAliases
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = csui_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Updating candidate aliases", buf, 2u);
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__2;
  v31 = __Block_byref_object_dispose__2;
  v32 = 0;
  v4 = objc_autoreleasePoolPush();
  setupOperations = [(FTRegAppleIDSetupManager *)self setupOperations];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __51__FTRegAppleIDSetupManager__updateCandidateAliases__block_invoke;
  v26[3] = &unk_278DE8BB8;
  v26[4] = buf;
  [setupOperations enumerateKeysAndObjectsUsingBlock:v26];

  objc_autoreleasePoolPop(v4);
  allObjects = [*(v28 + 5) allObjects];
  v7 = _IDSCopyOrderedAliases();

  v8 = csui_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(v28 + 5);
    *v34 = 138412290;
    v35 = v9;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Candidates: %@", v34, 0xCu);
  }

  v10 = csui_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 138412290;
    v35 = v7;
    _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "Sorted candidate aliases: %@", v34, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(FTRegAppleIDSetupManager *)self showsPhoneNumberDisplayString])
  {
    phoneNumberDisplayString = [(FTRegAppleIDSetupManager *)self phoneNumberDisplayString];
    [v11 addObject:phoneNumberDisplayString];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v33 count:16];
  if (v14)
  {
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v13);
        }

        _stripFZIDPrefix = [*(*(&v22 + 1) + 8 * v16) _stripFZIDPrefix];
        if ([_stripFZIDPrefix _appearsToBePhoneNumber])
        {
          v18 = CNFRegFormattedPhoneNumberForString(_stripFZIDPrefix);
          if ([v18 length] && (objc_msgSend(v11, "containsObject:", v18) & 1) == 0)
          {
            [v11 addObject:v18];
          }
        }

        else if (([v11 containsObject:_stripFZIDPrefix] & 1) == 0)
        {
          [v11 addObject:_stripFZIDPrefix];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v33 count:16];
    }

    while (v14);
  }

  v19 = csui_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 138412290;
    v35 = v11;
    _os_log_impl(&dword_243BE5000, v19, OS_LOG_TYPE_DEFAULT, "Setting candidate aliases to: %@", v34, 0xCu);
  }

  [(FTRegAppleIDSetupManager *)self setCandidateAliases:v11];
  [(FTRegAppleIDSetupManager *)self setSelectedAliases:v11];
  v20 = csui_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *v34 = 0;
    _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_DEFAULT, "...Done", v34, 2u);
  }

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __51__FTRegAppleIDSetupManager__updateCandidateAliases__block_invoke(uint64_t a1)
{
  v8 = IDSParseAuthDictionary();
  v2 = [v8 objectForKey:*MEMORY[0x277D187C8]];
  v3 = [v2 __imArrayByApplyingBlock:&__block_literal_global_87_0];

  if (v3)
  {
    v4 = *(*(*(a1 + 32) + 8) + 40);
    if (v4)
    {
      v5 = [MEMORY[0x277CBEB98] setWithArray:v3];
      [v4 intersectSet:v5];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v3];
      v7 = *(*(a1 + 32) + 8);
      v5 = *(v7 + 40);
      *(v7 + 40) = v6;
    }
  }
}

id __51__FTRegAppleIDSetupManager__updateCandidateAliases__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"uri"];
  v4 = [v2 objectForKey:@"status"];

  LODWORD(v2) = [v4 intValue];
  if (v2 == 5051)
  {
    v5 = [v3 _stripFZIDPrefix];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSelectedAliases:(id)aliases
{
  v12 = *MEMORY[0x277D85DE8];
  aliasesCopy = aliases;
  v5 = aliasesCopy;
  if (self->_selectedAliases != aliasesCopy)
  {
    v6 = [(NSArray *)aliasesCopy copy];
    selectedAliases = self->_selectedAliases;
    self->_selectedAliases = v6;

    v8 = csui_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Set selected aliases: %@", &v10, 0xCu);
    }

    [(FTRegAppleIDSetupManager *)self _updateSelectionSummaryText];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)beginSetupWithCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  [(FTRegAppleIDSetupManager *)self setHandler:handler];
  setupOperations = [(FTRegAppleIDSetupManager *)self setupOperations];
  v5 = [setupOperations count];

  if (v5)
  {
    v6 = csui_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if ([(FTRegAppleIDSetupManager *)self _shouldShowAliasSelectionUI])
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      selectedAliases = [(FTRegAppleIDSetupManager *)self selectedAliases];
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = selectedAliases;
      _os_log_impl(&dword_243BE5000, v6, OS_LOG_TYPE_DEFAULT, "Starting setup operation. Should show selection UI:%@  selectedAliases: %@", buf, 0x16u);
    }

    setupOperations2 = [(FTRegAppleIDSetupManager *)self setupOperations];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_97;
    v15[3] = &unk_278DE8C58;
    v15[4] = self;
    [setupOperations2 enumerateKeysAndObjectsUsingBlock:v15];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_104;
    v14[3] = &unk_278DE7E08;
    v14[4] = self;
    v10 = MEMORY[0x277D85CD0];
    v11 = v14;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke;
    block[3] = &unk_278DE7E08;
    block[4] = self;
    v10 = MEMORY[0x277D85CD0];
    v11 = block;
  }

  dispatch_async(v10, v11);
  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

void __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_97(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = IDSParseAuthDictionary();
  v5 = [v3 intValue];

  v6 = MEMORY[0x277D186B0];
  if (v5 != 1)
  {
    v6 = MEMORY[0x277D18698];
  }

  v7 = *v6;
  v8 = [*(a1 + 32) accountControllerForService:v7];
  v9 = [*(a1 + 32) selectedAliases];
  if (![*(a1 + 32) showsPhoneNumberDisplayString])
  {
    v10 = v9;
    goto LABEL_7;
  }

  if ([v9 count] >= 2)
  {
    v10 = [v9 subarrayWithRange:{1, objc_msgSend(v9, "count") - 1}];
LABEL_7:
    v11 = v10;
    goto LABEL_9;
  }

  v11 = 0;
LABEL_9:
  v12 = [v11 __imArrayByApplyingBlock:&__block_literal_global_99];
  v13 = [MEMORY[0x277D07DB0] sharedInstance];
  v14 = [v13 supportsSMSIdentification];

  if (v14)
  {
    if ([v12 count])
    {
      [v12 arrayByAddingObject:*MEMORY[0x277D18AB8]];
    }

    else
    {
      v15 = *MEMORY[0x277D18AB8];
      IMSingleObjectArray();
    }
    v16 = ;

    v12 = v16;
  }

  v17 = [v4 objectForKey:*MEMORY[0x277D187C0]];
  v18 = [v4 objectForKey:*MEMORY[0x277D187D0]];
  v19 = csui_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v34 = v7;
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    v39 = 2112;
    v40 = v12;
    _os_log_impl(&dword_243BE5000, v19, OS_LOG_TYPE_DEFAULT, " => Setting up service: %@   with apple id: %@  profile id: %@  aliases: %@", buf, 0x2Au);
  }

  v20 = [v8 serviceName];
  v21 = [v8 accountWithLoginID:v17 service:v20];

  if ([v21 isActive] && objc_msgSend(v21, "registrationStatus") == 5)
  {
    v22 = csui_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v21;
      v23 = " => Has existing registered account: %@";
      v24 = v22;
      v25 = 12;
LABEL_25:
      _os_log_impl(&dword_243BE5000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    }
  }

  else
  {
    v26 = csui_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v21;
      _os_log_impl(&dword_243BE5000, v26, OS_LOG_TYPE_DEFAULT, " => Existing account: %@", buf, 0xCu);
    }

    if (![v21 isUserDisabled])
    {
      v29 = v8;
      v30 = v4;
      v31 = v12;
      v32 = v7;
      v27 = dispatch_get_global_queue(21, 0);
      IDSRegistrationControlGetStateForRegistrationType();

      v22 = v29;
      goto LABEL_27;
    }

    v22 = csui_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v23 = " => Account was disabled by the user, not setting up...";
      v24 = v22;
      v25 = 2;
      goto LABEL_25;
    }
  }

LABEL_27:

  v28 = *MEMORY[0x277D85DE8];
}

void __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_100(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = csui_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, " => Do not have permission to use PhoneNumber, not setting up...", v7, 2u);
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) __imSetFromArray];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_2_101;
    v8[3] = &unk_278DE8C08;
    v9 = *(a1 + 56);
    [v4 setupAccountWithSetupParameters:v5 aliases:v6 completionHandler:v8];

    v2 = v9;
  }
}

void __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_2_101(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = csui_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = @"NO";
    v11 = 138412802;
    if (a3)
    {
      v9 = @"YES";
    }

    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_DEFAULT, "Got response from setup operation for service: %@. Success=%@, error=%@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end