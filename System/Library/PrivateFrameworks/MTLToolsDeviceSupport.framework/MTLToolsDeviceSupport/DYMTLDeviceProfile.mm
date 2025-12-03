@interface DYMTLDeviceProfile
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsCapabilitiesOfGraphicsAPI:(id)i;
- (DYMTLDeviceProfile)initWithCoder:(id)coder;
- (DYMTLDeviceProfile)initWithDevice:(id)device;
- (NSString)description;
- (NSString)descriptionForBugReport;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DYMTLDeviceProfile

- (DYMTLDeviceProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = DYMTLDeviceProfile;
  v5 = [(DYMTLDeviceProfile *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"registryID"];
    registryID = v5->_registryID;
    v5->_registryID = v8;

    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"supportedFeatureSets"];
    supportedFeatureSets = v5->_supportedFeatureSets;
    v5->_supportedFeatureSets = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"supportedGPUFamilies"];
    supportedGPUFamilies = v5->_supportedGPUFamilies;
    v5->_supportedGPUFamilies = v18;

    v20 = MEMORY[0x277CBEB98];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [v20 setWithObjects:{v21, v22, v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"defaultSamplePositions"];
    defaultSamplePositions = v5->_defaultSamplePositions;
    v5->_defaultSamplePositions = v25;

    v27 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInt64:self->_streamRef forKey:@"streamRef"];
  [coderCopy encodeObject:self->_supportedFeatureSets forKey:@"supportedFeatureSets"];
  [coderCopy encodeObject:self->_supportedGPUFamilies forKey:@"supportedGPUFamilies"];
  [coderCopy encodeObject:self->_defaultSamplePositions forKey:@"defaultSamplePositions"];
  [coderCopy encodeObject:self->_registryID forKey:@"registryID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(NSString *)self->_name copy];
    v6 = *(v4 + 40);
    *(v4 + 40) = v5;

    *(v4 + 8) = self->_streamRef;
    v7 = [(NSArray *)self->_supportedFeatureSets copy];
    v8 = *(v4 + 16);
    *(v4 + 16) = v7;

    v9 = [(NSDictionary *)self->_defaultSamplePositions copy];
    v10 = *(v4 + 32);
    *(v4 + 32) = v9;

    objc_storeStrong((v4 + 48), self->_registryID);
    v11 = v4;
  }

  return v4;
}

- (BOOL)supportsCapabilitiesOfGraphicsAPI:(id)i
{
  iCopy = i;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 1;
    v5 = iCopy;
    supportedGPUFamilies = [v5 supportedGPUFamilies];

    if (supportedGPUFamilies)
    {
      supportedGPUFamilies2 = [v5 supportedGPUFamilies];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __56__DYMTLDeviceProfile_supportsCapabilitiesOfGraphicsAPI___block_invoke;
      v11[3] = &unk_27984EC78;
      v11[4] = self;
      v11[5] = &v12;
      [supportedGPUFamilies2 enumerateObjectsUsingBlock:v11];
    }

    else
    {
      supportedGPUFamilies2 = [v5 supportedFeatureSets];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__DYMTLDeviceProfile_supportsCapabilitiesOfGraphicsAPI___block_invoke_2;
      v10[3] = &unk_27984EC78;
      v10[4] = self;
      v10[5] = &v12;
      [supportedGPUFamilies2 enumerateObjectsUsingBlock:v10];
    }

    v8 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t __56__DYMTLDeviceProfile_supportsCapabilitiesOfGraphicsAPI___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(*(a1 + 32) + 24) containsObject:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t __56__DYMTLDeviceProfile_supportsCapabilitiesOfGraphicsAPI___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(*(a1 + 32) + 16) containsObject:a2];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (DYMTLDeviceProfile)initWithDevice:(id)device
{
  deviceCopy = device;
  v35.receiver = self;
  v35.super_class = DYMTLDeviceProfile;
  v5 = [(DYMTLDeviceProfile *)&v35 init];
  if (v5)
  {
    name = [deviceCopy name];
    name = v5->_name;
    v5->_name = name;

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(deviceCopy, "registryID")}];
    registryID = v5->_registryID;
    v5->_registryID = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    supportedFeatureSets = v5->_supportedFeatureSets;
    v5->_supportedFeatureSets = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    supportedGPUFamilies = v5->_supportedGPUFamilies;
    v5->_supportedGPUFamilies = v12;

    for (i = 0; i != 17; ++i)
    {
      v15 = [DYMTLDeviceProfile initWithDevice:]::availableFeatures[i];
      if ([deviceCopy supportsFeatureSet:v15])
      {
        v16 = v5->_supportedFeatureSets;
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
        [(NSArray *)v16 addObject:v17];
      }
    }

    if (objc_opt_respondsToSelector())
    {
      for (j = 0; j != 18; ++j)
      {
        v19 = [DYMTLDeviceProfile initWithDevice:]::availableGPUFamilies[j];
        if ([deviceCopy supportsFamily:v19])
        {
          v20 = v5->_supportedGPUFamilies;
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v19];
          [(NSArray *)v20 addObject:v21];
        }
      }
    }

    else
    {
      v22 = v5->_supportedGPUFamilies;
      v5->_supportedGPUFamilies = 0;
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (objc_opt_respondsToSelector())
    {
      for (k = 1; k <= [deviceCopy maxCustomSamplePositions]; ++k)
      {
        if ([deviceCopy supportsTextureSampleCount:k])
        {
          v24 = malloc_type_calloc(k, 8uLL, 0x100004000313F17uLL);
          [deviceCopy getDefaultSamplePositions:v24 count:k];
          v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (k)
          {
            v26 = v24 + 1;
            v27 = k;
            do
            {
              v28 = [MEMORY[0x277CCAE60] valueWithCGPoint:{*(v26 - 1), *v26}];
              [v25 addObject:v28];

              v26 += 2;
              --v27;
            }

            while (v27);
          }

          free(v24);
          v29 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:k];
          [dictionary setObject:v29 forKey:v30];
        }
      }
    }

    v31 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
    defaultSamplePositions = v5->_defaultSamplePositions;
    v5->_defaultSamplePositions = v31;
  }

  return v5;
}

- (NSString)description
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v32.receiver = self;
  v32.super_class = DYMTLDeviceProfile;
  v4 = [(DYMTLDeviceProfile *)&v32 description];
  v5 = [v3 stringWithFormat:@"%@ name=%@ featureProfile=", v4, self->_name];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = self->_supportedFeatureSets;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v8 = *v29;
    do
    {
      v9 = 0;
      v10 = v5;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu ", objc_msgSend(*(*(&v28 + 1) + 8 * v9), "unsignedLongValue")];
        v5 = [v10 stringByAppendingString:v11];

        ++v9;
        v10 = v5;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v5];
  if (self->_supportedGPUFamilies)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"GPUFamilies="];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = self->_supportedGPUFamilies;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v14)
    {
      v15 = *v25;
      do
      {
        v16 = 0;
        v17 = v12;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu ", objc_msgSend(*(*(&v24 + 1) + 8 * v16), "unsignedLongValue")];
          v12 = [v17 stringByAppendingString:v18];

          ++v16;
          v17 = v12;
        }

        while (v14 != v16);
        v14 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v14);
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v12];
    v20 = [v23 stringByAppendingString:v19];

    v23 = v20;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v23;
}

- (NSString)descriptionForBugReport
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"Metal device: %@\n", self->_name];
  if (self->_supportedGPUFamilies)
  {
    [v3 appendString:@"    Supported GPU families:"];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = self->_supportedGPUFamilies;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

          v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{GPUTools::MTL::GetMTLGPUFamilyAsString(objc_msgSend(*(*(&v11 + 1) + 8 * i), "unsignedLongLongValue"), 1)}];
          [v3 appendFormat:@" %@", v8];
        }

        v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    registryID = self->_registryID;
    if (registryID)
    {
      v8 = [(NSNumber *)registryID isEqual:equalCopy[6]];
    }

    else
    {
      v8 = [(NSString *)self->_name isEqualToString:equalCopy[5]];
    }

    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end