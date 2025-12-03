@interface MSPSharedTripReceiverCapabilities
+ (id)allKnownReceiverCapabilities;
+ (id)legacyReceiverCapabilities;
+ (id)luckierReceiverCapabilities;
+ (id)starskyReceiverCapabilities;
+ (id)sydromeReceiverCapabilities;
+ (id)unrestrictedReceiverCapabilities;
+ (void)enumerateKnownReceiverCapabilityConfigurationsForState:(id)state withBlock:(id)block;
+ (void)enumerateReceiverCapabilityConfigurations:(id)configurations forState:(id)state withBlock:(id)block;
+ (void)fetchReceiverCapabilitiesForDestinations:(id)destinations completion:(id)completion;
- (BOOL)isEqual:(id)equal;
- (MSPSharedTripReceiverCapabilities)initWithIDSEndpointCapabilities:(id)capabilities;
- (MSPSharedTripReceiverCapabilities)initWithRegistrationPropertiesSupported:(id)supported propertiesUnsupported:(id)unsupported;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)idsSendMessageOptions;
- (unint64_t)hash;
@end

@implementation MSPSharedTripReceiverCapabilities

- (MSPSharedTripReceiverCapabilities)initWithRegistrationPropertiesSupported:(id)supported propertiesUnsupported:(id)unsupported
{
  supportedCopy = supported;
  unsupportedCopy = unsupported;
  v9 = [(MSPSharedTripReceiverCapabilities *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_supportedProperties, supported);
    objc_storeStrong(&v10->_unsupportedProperties, unsupported);
  }

  return v10;
}

- (MSPSharedTripReceiverCapabilities)initWithIDSEndpointCapabilities:(id)capabilities
{
  v26 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = *MEMORY[0x277D188D0];
  v24[0] = *MEMORY[0x277D188C0];
  v24[1] = v7;
  v24[2] = *MEMORY[0x277D188C8];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:{3, 0}];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([capabilitiesCopy valueForCapability:v13] == 1)
        {
          v14 = v5;
        }

        else
        {
          v14 = v6;
        }

        [v14 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  v15 = [v5 copy];
  v16 = [v6 copy];
  v17 = [(MSPSharedTripReceiverCapabilities *)self initWithRegistrationPropertiesSupported:v15 propertiesUnsupported:v16];

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = MSPSharedTripReceiverCapabilities;
  v3 = [(MSPSharedTripReceiverCapabilities *)&v6 hash];
  v4 = [(NSSet *)self->_supportedProperties hash];
  return v4 ^ [(NSSet *)self->_unsupportedProperties hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = v5[1];
    v7 = self->_supportedProperties;
    v8 = v6;
    if (v7 | v8 && (v9 = v8, v10 = [v7 isEqual:v8], v9, v7, !v10))
    {
      v15 = 0;
    }

    else
    {
      unsupportedProperties = self->_unsupportedProperties;
      v12 = v5[2];
      v13 = unsupportedProperties;
      v14 = v13;
      if (v13 | v12)
      {
        v15 = [v13 isEqual:v12];
      }

      else
      {
        v15 = 1;
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = MSPSharedTripReceiverCapabilities;
    v15 = [(MSPSharedTripReceiverCapabilities *)&v17 isEqual:equalCopy];
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->_supportedProperties);
  objc_storeStrong(v4 + 2, self->_unsupportedProperties);
  return v4;
}

+ (id)allKnownReceiverCapabilities
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB70]);
  luckierReceiverCapabilities = [self luckierReceiverCapabilities];
  v12[0] = luckierReceiverCapabilities;
  sydromeReceiverCapabilities = [self sydromeReceiverCapabilities];
  v12[1] = sydromeReceiverCapabilities;
  starskyReceiverCapabilities = [self starskyReceiverCapabilities];
  v12[2] = starskyReceiverCapabilities;
  legacyReceiverCapabilities = [self legacyReceiverCapabilities];
  v12[3] = legacyReceiverCapabilities;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v9 = [v3 initWithArray:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)luckierReceiverCapabilities
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D188C0], *MEMORY[0x277D188D0], *MEMORY[0x277D188C8], 0}];
  v4 = [[self alloc] initWithRegistrationPropertiesSupported:v3 propertiesUnsupported:0];

  return v4;
}

+ (id)sydromeReceiverCapabilities
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D188C0], *MEMORY[0x277D188D0], 0}];
  v4 = [[self alloc] initWithRegistrationPropertiesSupported:v3 propertiesUnsupported:0];

  return v4;
}

+ (id)starskyReceiverCapabilities
{
  v3 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D188C0]];
  v4 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D188D0], *MEMORY[0x277D188C8], 0}];
  v5 = [[self alloc] initWithRegistrationPropertiesSupported:v3 propertiesUnsupported:v4];

  return v5;
}

+ (id)legacyReceiverCapabilities
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D188C0], *MEMORY[0x277D188D0], *MEMORY[0x277D188D0], 0}];
  v4 = [[self alloc] initWithRegistrationPropertiesSupported:0 propertiesUnsupported:v3];

  return v4;
}

+ (id)unrestrictedReceiverCapabilities
{
  v2 = [[self alloc] initWithRegistrationPropertiesSupported:0 propertiesUnsupported:0];

  return v2;
}

+ (void)enumerateKnownReceiverCapabilityConfigurationsForState:(id)state withBlock:(id)block
{
  blockCopy = block;
  stateCopy = state;
  allKnownReceiverCapabilities = [objc_opt_class() allKnownReceiverCapabilities];
  [self enumerateReceiverCapabilityConfigurations:allKnownReceiverCapabilities forState:stateCopy withBlock:blockCopy];
}

+ (void)enumerateReceiverCapabilityConfigurations:(id)configurations forState:(id)state withBlock:(id)block
{
  stateCopy = state;
  blockCopy = block;
  v9 = MEMORY[0x277CBEB38];
  configurationsCopy = configurations;
  v11 = [[v9 alloc] initWithCapacity:3];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__MSPSharedTripReceiverCapabilities_enumerateReceiverCapabilityConfigurations_forState_withBlock___block_invoke;
  v15[3] = &unk_279868758;
  v16 = v11;
  v17 = stateCopy;
  v18 = blockCopy;
  v12 = blockCopy;
  v13 = stateCopy;
  v14 = v11;
  [configurationsCopy enumerateObjectsUsingBlock:v15];
}

void __98__MSPSharedTripReceiverCapabilities_enumerateReceiverCapabilityConfigurations_forState_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v3)
  {
    v3 = [*(a1 + 40) instanceCompatibleWithReceiverCapabilities:v4];
    [*(a1 + 32) setObject:v3 forKey:v4];
  }

  (*(*(a1 + 48) + 16))();
}

+ (void)fetchReceiverCapabilitiesForDestinations:(id)destinations completion:(id)completion
{
  v42 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  completionCopy = completion;
  if ([destinationsCopy count])
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__8;
    v39 = __Block_byref_object_dispose__8;
    v40 = 0;
    v8 = objc_alloc_init(MEMORY[0x277D18728]);
    v9 = v36[5];
    v36[5] = v8;

    v10 = v36[5];
    v11 = NSStringFromClass(self);
    [v10 addListenerID:v11 forService:@"com.apple.private.alloy.maps.eta"];

    v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(destinationsCopy, "count")}];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = destinationsCopy;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v14)
    {
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          v19 = IDSCopyAddressDestinationForDestination();
          [v12 addObject:v19];

          objc_autoreleasePoolPop(v18);
        }

        v14 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v14);
    }

    v20 = dispatch_get_global_queue(25, 0);
    v21 = v36[5];
    allObjects = [v12 allObjects];
    refreshIDInfo = [MEMORY[0x277D189C8] refreshIDInfo];
    v24 = NSStringFromClass(self);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __89__MSPSharedTripReceiverCapabilities_fetchReceiverCapabilitiesForDestinations_completion___block_invoke;
    v26[3] = &unk_2798687A8;
    v27 = v13;
    v29 = &v35;
    selfCopy = self;
    v28 = completionCopy;
    [v21 idInfoForDestinations:allObjects service:@"com.apple.private.alloy.maps.eta" infoTypes:1 options:refreshIDInfo listenerID:v24 queue:v20 completionBlock:v26];

    _Block_object_dispose(&v35, 8);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEC10]);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __89__MSPSharedTripReceiverCapabilities_fetchReceiverCapabilitiesForDestinations_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __89__MSPSharedTripReceiverCapabilities_fetchReceiverCapabilitiesForDestinations_completion___block_invoke_2;
  v16[3] = &unk_279868780;
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v17 = v6;
  v19 = v7;
  v8 = v5;
  v18 = v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v16];

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__MSPSharedTripReceiverCapabilities_fetchReceiverCapabilitiesForDestinations_completion___block_invoke_3;
  block[3] = &unk_2798674D8;
  v11 = *(a1 + 40);
  v14 = v8;
  v15 = v11;
  v12 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __89__MSPSharedTripReceiverCapabilities_fetchReceiverCapabilitiesForDestinations_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v23 = v5;
  if ([*(a1 + 32) containsObject:v5])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:3];
  }

  else
  {
    v7 = 0;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v6 endpoints];
  v27 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v27)
  {
    v25 = *v33;
    v26 = v7;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * i);
        v10 = objc_alloc(*(a1 + 48));
        v11 = [v9 capabilities];
        v12 = [v10 initWithIDSEndpointCapabilities:v11];

        [v7 addObject:v12];
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v13 = [v9 destinationURIs];
        v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v29;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v29 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v28 + 1) + 8 * j);
              if ([*(a1 + 32) containsObject:v18])
              {
                v36 = v12;
                v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
                [*(a1 + 40) setObject:v19 forKeyedSubscript:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
          }

          while (v15);
        }

        v7 = v26;
      }

      v27 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v27);
  }

  if (*(a1 + 40))
  {
    v20 = [v7 array];
    [*(a1 + 40) setObject:v20 forKeyedSubscript:v23];
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __89__MSPSharedTripReceiverCapabilities_fetchReceiverCapabilitiesForDestinations_completion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

- (id)idsSendMessageOptions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = *MEMORY[0x277D18638];
  supportedProperties = self->_supportedProperties;
  v4 = supportedProperties;
  if (!supportedProperties)
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v11[0] = v4;
  v10[1] = *MEMORY[0x277D18640];
  unsupportedProperties = self->_unsupportedProperties;
  v6 = unsupportedProperties;
  if (!unsupportedProperties)
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (unsupportedProperties)
  {
    if (supportedProperties)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (supportedProperties)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MSPSharedTripReceiverCapabilities;
  v4 = [(MSPSharedTripReceiverCapabilities *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ (supports: %@, lacks: %@)", v4, self->_supportedProperties, self->_unsupportedProperties];

  return v5;
}

@end