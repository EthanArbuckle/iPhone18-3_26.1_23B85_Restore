@interface PKPaymentPass(NanoPassKit)
- (BOOL)npkHasMultiplePaymentApplications;
- (BOOL)npkHasUserSelectableContactlessPaymentApplications;
- (id)npkDevicePaymentApplicationForAID:()NanoPassKit;
- (id)npkPreferredContactlessPaymentApplications;
- (id)npkPrimaryPaymentApplication;
- (id)npkSortedDeviceContactlessPaymentApplications;
- (id)npkUserSelectedPaymentApplication;
- (uint64_t)npkHasTransitNetworkIdentifiers;
- (void)npkSetPreferredPaymentApplication:()NanoPassKit;
@end

@implementation PKPaymentPass(NanoPassKit)

- (id)npkSortedDeviceContactlessPaymentApplications
{
  v2 = [a1 deviceContactlessPaymentApplications];
  v3 = [v2 allObjects];
  v4 = [a1 sortedPaymentApplications:v3 ascending:1];

  return v4;
}

- (id)npkDevicePaymentApplicationForAID:()NanoPassKit
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [a1 devicePaymentApplications];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__PKPaymentPass_NanoPassKit__npkDevicePaymentApplicationForAID___block_invoke;
  v9[3] = &unk_279945580;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)npkHasUserSelectableContactlessPaymentApplications
{
  if ([a1 contactlessActivationGroupingType] != 2)
  {
    return 0;
  }

  v2 = [a1 deviceContactlessPaymentApplications];
  v3 = [v2 count] > 1;

  return v3;
}

- (id)npkUserSelectedPaymentApplication
{
  v2 = objc_alloc_init(MEMORY[0x277D380F0]);
  v3 = [a1 uniqueID];
  v4 = [v2 defaultPaymentApplicationForPassUniqueIdentifier:v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [a1 devicePrimaryContactlessPaymentApplication];
  }

  v6 = v5;

  return v6;
}

- (BOOL)npkHasMultiplePaymentApplications
{
  v1 = [a1 devicePaymentApplications];
  v2 = [v1 count] > 1;

  return v2;
}

- (id)npkPrimaryPaymentApplication
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 devicePrimaryContactlessPaymentApplication];
  v2 = v1;
  if (v1)
  {
    v6[0] = v1;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)npkPreferredContactlessPaymentApplications
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 contactlessActivationGroupingType];
  switch(v2)
  {
    case 3:
      v5 = [a1 deviceContactlessPaymentApplications];
      v6 = [v5 allObjects];
      goto LABEL_8;
    case 2:
      v4 = [a1 npkUserSelectedPaymentApplication];
      v5 = v4;
      if (!v4)
      {
        v3 = MEMORY[0x277CBEBF8];
        goto LABEL_9;
      }

      v9[0] = v4;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
LABEL_8:
      v3 = v6;
LABEL_9:

      break;
    case 1:
      v3 = [a1 npkPrimaryPaymentApplication];
      break;
    default:
      v3 = MEMORY[0x277CBEBF8];
      break;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)npkSetPreferredPaymentApplication:()NanoPassKit
{
  v8 = a3;
  v4 = [a1 devicePaymentApplications];
  v5 = [v4 containsObject:v8];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D380F0]);
    v7 = [a1 uniqueID];
    [v6 setDefaultPaymentApplication:v8 forPassUniqueIdentifier:v7 completion:0];
  }
}

- (uint64_t)npkHasTransitNetworkIdentifiers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [a1 devicePaymentApplications];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = [*(*(&v9 + 1) + 8 * i) supportedTransitNetworkIdentifiers];
        v6 = [v5 count];

        if (v6)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

@end