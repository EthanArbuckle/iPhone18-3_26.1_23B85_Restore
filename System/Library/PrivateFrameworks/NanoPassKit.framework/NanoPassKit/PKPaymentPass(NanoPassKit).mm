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
  deviceContactlessPaymentApplications = [self deviceContactlessPaymentApplications];
  allObjects = [deviceContactlessPaymentApplications allObjects];
  v4 = [self sortedPaymentApplications:allObjects ascending:1];

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
  devicePaymentApplications = [self devicePaymentApplications];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__PKPaymentPass_NanoPassKit__npkDevicePaymentApplicationForAID___block_invoke;
  v9[3] = &unk_279945580;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [devicePaymentApplications enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)npkHasUserSelectableContactlessPaymentApplications
{
  if ([self contactlessActivationGroupingType] != 2)
  {
    return 0;
  }

  deviceContactlessPaymentApplications = [self deviceContactlessPaymentApplications];
  v3 = [deviceContactlessPaymentApplications count] > 1;

  return v3;
}

- (id)npkUserSelectedPaymentApplication
{
  v2 = objc_alloc_init(MEMORY[0x277D380F0]);
  uniqueID = [self uniqueID];
  v4 = [v2 defaultPaymentApplicationForPassUniqueIdentifier:uniqueID];

  if (v4)
  {
    devicePrimaryContactlessPaymentApplication = v4;
  }

  else
  {
    devicePrimaryContactlessPaymentApplication = [self devicePrimaryContactlessPaymentApplication];
  }

  v6 = devicePrimaryContactlessPaymentApplication;

  return v6;
}

- (BOOL)npkHasMultiplePaymentApplications
{
  devicePaymentApplications = [self devicePaymentApplications];
  v2 = [devicePaymentApplications count] > 1;

  return v2;
}

- (id)npkPrimaryPaymentApplication
{
  v6[1] = *MEMORY[0x277D85DE8];
  devicePrimaryContactlessPaymentApplication = [self devicePrimaryContactlessPaymentApplication];
  v2 = devicePrimaryContactlessPaymentApplication;
  if (devicePrimaryContactlessPaymentApplication)
  {
    v6[0] = devicePrimaryContactlessPaymentApplication;
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
  contactlessActivationGroupingType = [self contactlessActivationGroupingType];
  switch(contactlessActivationGroupingType)
  {
    case 3:
      deviceContactlessPaymentApplications = [self deviceContactlessPaymentApplications];
      allObjects = [deviceContactlessPaymentApplications allObjects];
      goto LABEL_8;
    case 2:
      npkUserSelectedPaymentApplication = [self npkUserSelectedPaymentApplication];
      deviceContactlessPaymentApplications = npkUserSelectedPaymentApplication;
      if (!npkUserSelectedPaymentApplication)
      {
        npkPrimaryPaymentApplication = MEMORY[0x277CBEBF8];
        goto LABEL_9;
      }

      v9[0] = npkUserSelectedPaymentApplication;
      allObjects = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
LABEL_8:
      npkPrimaryPaymentApplication = allObjects;
LABEL_9:

      break;
    case 1:
      npkPrimaryPaymentApplication = [self npkPrimaryPaymentApplication];
      break;
    default:
      npkPrimaryPaymentApplication = MEMORY[0x277CBEBF8];
      break;
  }

  v7 = *MEMORY[0x277D85DE8];

  return npkPrimaryPaymentApplication;
}

- (void)npkSetPreferredPaymentApplication:()NanoPassKit
{
  v8 = a3;
  devicePaymentApplications = [self devicePaymentApplications];
  v5 = [devicePaymentApplications containsObject:v8];

  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277D380F0]);
    uniqueID = [self uniqueID];
    [v6 setDefaultPaymentApplication:v8 forPassUniqueIdentifier:uniqueID completion:0];
  }
}

- (uint64_t)npkHasTransitNetworkIdentifiers
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  devicePaymentApplications = [self devicePaymentApplications];
  v2 = [devicePaymentApplications countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        supportedTransitNetworkIdentifiers = [*(*(&v9 + 1) + 8 * i) supportedTransitNetworkIdentifiers];
        v6 = [supportedTransitNetworkIdentifiers count];

        if (v6)
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [devicePaymentApplications countByEnumeratingWithState:&v9 objects:v13 count:16];
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