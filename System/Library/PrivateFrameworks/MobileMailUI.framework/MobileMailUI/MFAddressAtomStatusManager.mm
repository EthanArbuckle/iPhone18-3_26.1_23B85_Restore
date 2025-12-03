@interface MFAddressAtomStatusManager
+ (BOOL)shouldDecorateAtomListForSender:(id)sender replyTo:(id)to;
- (BOOL)_atomContainsVIPSender:(id)sender;
- (MFAddressAtomProvider)atomProvider;
- (MFAddressAtomStatusManager)initWithAccount:(id)account;
- (id)otherSigners;
- (int)actionForTrustInformation:(id)information;
- (void)_commonInit;
- (void)_invalidateAtoms;
- (void)_legacyAccountsDidChange:(id)change;
- (void)_updateAtomsInList:(id)list;
- (void)_updateOtherSignersList:(id)list;
- (void)_updateVIPStatus;
- (void)dealloc;
- (void)setAtomProvider:(id)provider;
- (void)updateTrustForDisplayedAtoms;
- (void)updateWithReplyToInformation:(id)information;
- (void)updateWithSecurityInformation:(id)information;
@end

@implementation MFAddressAtomStatusManager

+ (BOOL)shouldDecorateAtomListForSender:(id)sender replyTo:(id)to
{
  senderCopy = sender;
  toCopy = to;
  if ([toCopy count] == 1 && objc_msgSend(senderCopy, "count"))
  {
    firstObject = [toCopy firstObject];
    emailAddressValue = [firstObject emailAddressValue];
    displayName = [emailAddressValue displayName];
    firstObject2 = [senderCopy firstObject];
    emailAddressValue2 = [firstObject2 emailAddressValue];
    displayName2 = [emailAddressValue2 displayName];
    v13 = [displayName isEqualToString:displayName2];

    firstObject3 = [toCopy firstObject];
    emailAddressValue3 = [firstObject3 emailAddressValue];
    simpleAddress = [emailAddressValue3 simpleAddress];
    firstObject4 = [senderCopy firstObject];
    emailAddressValue4 = [firstObject4 emailAddressValue];
    simpleAddress2 = [emailAddressValue4 simpleAddress];
    LOBYTE(displayName2) = [simpleAddress isEqualToString:simpleAddress2];

    v20 = v13 & (displayName2 ^ 1);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (MFAddressAtomStatusManager)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = MFAddressAtomStatusManager;
  v6 = [(MFAddressAtomStatusManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
    [(MFAddressAtomStatusManager *)v7 _commonInit];
  }

  return v7;
}

- (void)_commonInit
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__trustDidChange_ name:*MEMORY[0x277D28178] object:0];
  [defaultCenter addObserver:self selector:sel__legacyAccountsDidChange_ name:*MEMORY[0x277D06F30] object:0];
  v3 = +[VIPManager defaultInstance];
  [defaultCenter addObserver:self selector:sel__vipSendersDidChange_ name:*MEMORY[0x277D06D28] object:v3];

  mEMORY[0x277CD6848] = [MEMORY[0x277CD6848] sharedManager];
  [mEMORY[0x277CD6848] addClient:self];
}

- (void)dealloc
{
  mEMORY[0x277CD6848] = [MEMORY[0x277CD6848] sharedManager];
  [mEMORY[0x277CD6848] removeClient:self];

  v4.receiver = self;
  v4.super_class = MFAddressAtomStatusManager;
  [(MFAddressAtomStatusManager *)&v4 dealloc];
}

- (void)setAtomProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_atomProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_atomProvider, obj);
    [(MFAddressAtomStatusManager *)self updateTrustForDisplayedAtoms];
  }
}

- (void)_invalidateAtoms
{
  atomProvider = [(MFAddressAtomStatusManager *)self atomProvider];
  [atomProvider iterateDisplayedAtomListsWithBlock:&__block_literal_global_1];
}

- (void)updateWithSecurityInformation:(id)information
{
  informationCopy = information;
  [(MFAddressAtomStatusManager *)self setSecurityInformation:?];
  smimeError = [informationCopy smimeError];
  [(MFAddressAtomStatusManager *)self setSMIMEError:smimeError];

  [(MFAddressAtomStatusManager *)self updateTrustForDisplayedAtoms];
}

- (id)otherSigners
{
  securityInformation = [(MFAddressAtomStatusManager *)self securityInformation];
  signers = [securityInformation signers];

  if ([signers count] < 2)
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v4 = [signers subarrayWithRange:{1, objc_msgSend(signers, "count") - 1}];
  }

  return v4;
}

- (void)updateTrustForDisplayedAtoms
{
  atomProvider = [(MFAddressAtomStatusManager *)self atomProvider];
  securityInformation = [(MFAddressAtomStatusManager *)self securityInformation];
  signers = [securityInformation signers];

  if ([signers count] >= 2)
  {
    otherSigners = [(MFAddressAtomStatusManager *)self otherSigners];
    v7 = [otherSigners ef_map:&__block_literal_global_53];

    [atomProvider setOtherSigners:v7];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__MFAddressAtomStatusManager_updateTrustForDisplayedAtoms__block_invoke_2;
  v8[3] = &unk_278181980;
  v8[4] = self;
  [atomProvider iterateDisplayedAtomListsWithBlock:v8];
}

id __58__MFAddressAtomStatusManager_updateTrustForDisplayedAtoms__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 signingCertificateTrustInfo];
  v3 = [v2 sender];

  return v3;
}

- (void)_updateOtherSignersList:(id)list
{
  v38 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v29 = objc_alloc_init(MEMORY[0x277D07090]);
  [v29 setShouldIncludeDisplayName:1];
  addressAtoms = [listCopy addressAtoms];
  otherSigners = [(MFAddressAtomStatusManager *)self otherSigners];
  v5 = [otherSigners count];
  if (v5 != [addressAtoms count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFAddressAtomStatusManager.m" lineNumber:153 description:@"Signers do not match"];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = otherSigners;
  v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    LODWORD(v7) = 0;
    v30 = *v34;
    do
    {
      v8 = 0;
      v7 = v7;
      do
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * v8);
        signingCertificateTrustInfo = [v9 signingCertificateTrustInfo];
        firstEmailAddress = [signingCertificateTrustInfo firstEmailAddress];

        v12 = [addressAtoms objectAtIndexedSubscript:v7];
        if (firstEmailAddress)
        {
          v13 = MEMORY[0x277D07088];
          stringValue = [firstEmailAddress stringValue];
          v15 = [v13 componentsWithString:stringValue];

          signingCertificateTrustInfo2 = [v9 signingCertificateTrustInfo];
          commonName = [signingCertificateTrustInfo2 commonName];
          [v15 setDisplayName:commonName];

          emailAddressValue = [v15 emailAddressValue];
          v19 = emailAddressValue;
          if (!emailAddressValue)
          {
            stringValue2 = [firstEmailAddress stringValue];
            v19 = stringValue2;
          }

          v20 = [v29 stringFromEmailAddressConvertible:v19];
          if (!emailAddressValue)
          {
          }

          [v12 setAddress:v20];
        }

        signingCertificateTrustInfo3 = [v9 signingCertificateTrustInfo];
        v22 = [(MFAddressAtomStatusManager *)self actionForTrustInformation:signingCertificateTrustInfo3];

        if (v22 == 1)
        {
          v23 = 32;
        }

        else
        {
          v23 = 257;
        }

        [v12 setPresentationOptions:v23];

        ++v7;
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  [listCopy updateAtomsForVIP];
  v24 = *MEMORY[0x277D85DE8];
}

- (void)updateWithReplyToInformation:(id)information
{
  informationCopy = information;
  [(MFAddressAtomStatusManager *)self setReplyToList:informationCopy];
  atomProvider = [(MFAddressAtomStatusManager *)self atomProvider];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__MFAddressAtomStatusManager_updateWithReplyToInformation___block_invoke;
  v6[3] = &unk_278181980;
  v6[4] = self;
  [atomProvider iterateDisplayedAtomListsWithBlock:v6];
}

- (void)_updateAtomsInList:(id)list
{
  listCopy = list;
  title = [listCopy title];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"OTHER_SIGNERS_TITLE" value:&stru_2826D1AD8 table:@"Main"];
  v8 = [title isEqualToString:v7];

  if (v8)
  {
    [(MFAddressAtomStatusManager *)self _updateOtherSignersList:listCopy];
  }

  else
  {
    v9 = [MEMORY[0x277D071B8] globalAsyncSchedulerWithQualityOfService:25];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__MFAddressAtomStatusManager__updateAtomsInList___block_invoke;
    v10[3] = &unk_278181710;
    v11 = listCopy;
    selfCopy = self;
    [v9 performBlock:v10];
  }
}

void __49__MFAddressAtomStatusManager__updateAtomsInList___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) addressAtoms];
  v3 = [v2 firstObject];
  if (*(a1 + 32) && ([*(a1 + 40) atomProvider], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "shouldDecorateAtomListWithSMIMEStatus:", *(a1 + 32)), v4, v5))
  {
    v6 = [*(a1 + 40) securityInformation];
    v7 = [*(a1 + 40) smimeError];
    v8 = [v6 isSigned];
    v9 = [v6 isEncrypted];
    if (v7)
    {
      v10 = 257;
    }

    else
    {
      v11 = v9;
      if (v8)
      {
        v12 = [v6 signers];
        v13 = [v12 firstObject];

        v14 = *(a1 + 40);
        v15 = [v13 signingCertificateTrustInfo];
        v16 = [v14 actionForTrustInformation:v15];

        v10 = 257;
        if (v13 && v16 == 1)
        {
          if (v11)
          {
            v17 = 160;
          }

          else
          {
            v17 = 32;
          }

          v18 = [v13 signingCertificateTrustInfo];
          [v18 emailAddresses];
          v26 = v25 = v17;

          v19 = [v3 emailAddress];
          v35 = 0;
          v36 = &v35;
          v37 = 0x2020000000;
          v38 = 0;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __49__MFAddressAtomStatusManager__updateAtomsInList___block_invoke_2;
          v32[3] = &unk_2781819A8;
          v33 = v19;
          v34 = &v35;
          v20 = v19;
          [v26 enumerateObjectsUsingBlock:v32];
          if (*(v36 + 24))
          {
            v10 = v25;
          }

          else
          {
            v10 = 257;
          }

          _Block_object_dispose(&v35, 8);
        }
      }

      else if (v9)
      {
        v10 = 128;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __49__MFAddressAtomStatusManager__updateAtomsInList___block_invoke_3;
  v28[3] = &unk_2781819D0;
  v21 = v2;
  v29 = v21;
  v31 = v10;
  v27 = *(a1 + 32);
  v22 = v27.i64[0];
  v30 = vextq_s8(v27, v27, 8uLL);
  v23 = v28;
  v24 = [MEMORY[0x277D071B8] mainThreadScheduler];
  [v24 performBlock:v23];
}

void __49__MFAddressAtomStatusManager__updateAtomsInList___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 emailAddressValue];
  v9 = [v6 simpleAddress];

  v7 = v9;
  if (v9)
  {
    v8 = [v9 ef_caseInsensitiveIsEqualToString:*(a1 + 32)];
    v7 = v9;
    if (v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void __49__MFAddressAtomStatusManager__updateAtomsInList___block_invoke_3(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v2)
  {

    goto LABEL_24;
  }

  LOBYTE(v3) = 0;
  v23 = *v26;
  do
  {
    for (i = 0; i != v2; ++i)
    {
      if (*v26 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v25 + 1) + 8 * i);
      v24 = *(a1 + 56);
      if ([*(a1 + 40) _atomContainsVIPSender:v5])
      {
        v24 |= 0x10uLL;
      }

      v6 = [MEMORY[0x277D07148] currentDevice];
      if ([v6 isInternal])
      {
        v7 = [MEMORY[0x277CBEBD0] em_userDefaults];
        v8 = [v7 BOOLForKey:@"PresentationOptionsEncodedIntoAddress"];

        if (!v8)
        {
          goto LABEL_12;
        }

        v9 = MEMORY[0x277CFBC78];
        v6 = [v5 emailAddress];
        [v9 presentationOptions:&v24 encodedIntoAddress:v6];
      }

LABEL_12:
      if (v3)
      {
        v3 = 1;
        v10 = v24;
      }

      else
      {
        v11 = [v5 presentationOptions];
        v10 = v24;
        v3 = ((v24 ^ v11) & 0x1F0) != 0;
      }

      [v5 setPresentationOptions:v10];
      v12 = [*(a1 + 40) replyToList];
      if (v12)
      {
        v13 = [*(a1 + 32) lastObject];
        v14 = v5 == v13;

        if (v14)
        {
          v15 = [*(a1 + 40) replyToList];
          v16 = [v15 firstObject];
          v17 = [v16 emailAddressValue];
          v18 = [v17 simpleAddress];
          v19 = [v5 emailAddress];
          v20 = v18 == v19;

          if (v20)
          {
            [v5 setPresentationOptions:{objc_msgSend(v5, "presentationOptions") | 0x100}];
            v3 = 1;
          }
        }
      }
    }

    v2 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v2);

  if (v3)
  {
    [*(a1 + 48) updateAtomsForVIP];
  }

LABEL_24:
  v21 = *MEMORY[0x277D85DE8];
}

- (int)actionForTrustInformation:(id)information
{
  informationCopy = information;
  v4 = [objc_alloc(MEMORY[0x277D281F8]) initWithTrustInformation:informationCopy];
  action = [v4 action];

  return action;
}

- (void)_legacyAccountsDidChange:(id)change
{
  legacyAccount = [(MFAddressAtomStatusManager *)self legacyAccount];

  if (legacyAccount)
  {
    v5 = MEMORY[0x277D28280];
    legacyAccount2 = [(MFAddressAtomStatusManager *)self legacyAccount];
    uniqueID = [legacyAccount2 uniqueID];
    v8 = [v5 accountWithUniqueId:uniqueID];

    [(MFAddressAtomStatusManager *)self setLegacyAccount:v8];
    [(MFAddressAtomStatusManager *)self updateTrustForDisplayedAtoms];
  }
}

- (void)_updateVIPStatus
{
  atomProvider = [(MFAddressAtomStatusManager *)self atomProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__MFAddressAtomStatusManager__updateVIPStatus__block_invoke;
  v4[3] = &unk_278181980;
  v4[4] = self;
  [atomProvider iterateDisplayedAtomListsWithBlock:v4];
}

void __46__MFAddressAtomStatusManager__updateVIPStatus__block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 addressAtoms];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([*(a1 + 32) _atomContainsVIPSender:v8])
        {
          v9 = [v8 presentationOptions] | 0x10;
        }

        else
        {
          v9 = [v8 presentationOptions] & 0xFFFFFFFFFFFFFFEFLL;
        }

        [v8 setPresentationOptions:v9];
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [v3 updateAtomsForVIP];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_atomContainsVIPSender:(id)sender
{
  senderCopy = sender;
  v4 = objc_alloc_init(MEMORY[0x277D06F18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  aBPerson = [senderCopy ABPerson];
  if (aBPerson)
  {
    v7 = ABRecordCopyValue(aBPerson, *MEMORY[0x277CE9888]);
    v8 = v7;
    if (v7)
    {
      v9 = ABMultiValueCopyArrayOfAllValues(v7);
      [v4 addObjectsFromArray:v9];
      CFRelease(v8);
    }

    v10 = ABPersonCopyPreferredLinkedPersonForName();
    v11 = ABPersonCopyCompositeName();
    if (v11)
    {
      [v5 addObject:v11];
    }

    CFRelease(v10);
  }

  emailAddress = [senderCopy emailAddress];
  if (!emailAddress)
  {
    emailAddress = [senderCopy unmodifiedAddressString];
  }

  [v4 addObject:emailAddress];
  unmodifiedAddressString = [senderCopy unmodifiedAddressString];
  emailAddressValue = [unmodifiedAddressString emailAddressValue];
  displayName = [emailAddressValue displayName];
  v16 = displayName;
  if (displayName)
  {
    stringValue = displayName;
  }

  else
  {
    stringValue = [unmodifiedAddressString stringValue];
  }

  v18 = stringValue;

  if (v18)
  {
    [v5 addObject:v18];
  }

  v19 = +[VIPManager defaultInstance];
  allObjects = [v5 allObjects];
  v21 = [v19 vipForEmailAddresses:v4 andDisplayNames:allObjects];

  return v21 != 0;
}

- (MFAddressAtomProvider)atomProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_atomProvider);

  return WeakRetained;
}

@end