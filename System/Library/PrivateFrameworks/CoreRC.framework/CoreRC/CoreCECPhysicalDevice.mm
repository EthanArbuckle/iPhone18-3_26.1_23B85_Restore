@interface CoreCECPhysicalDevice
+ (id)physicalDeviceTreeWithLogicalDevices:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CoreCECPhysicalDevice)init;
- (CoreCECPhysicalDevice)initWithLogicalDevice:(id)a3;
- (CoreCECPhysicalDevice)initWithPhysicalAddress:(unsigned __int16)a3;
- (id)description;
- (id)propertyList;
- (int64_t)compare:(id)a3;
- (void)addChild:(id)a3;
- (void)dealloc;
@end

@implementation CoreCECPhysicalDevice

- (CoreCECPhysicalDevice)init
{
  v5.receiver = self;
  v5.super_class = CoreCECPhysicalDevice;
  v2 = [(CoreCECPhysicalDevice *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_physicalAddress = -1;
    v2->_logicalDevices = objc_opt_new();
    v3->_children = objc_opt_new();
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CoreCECPhysicalDevice;
  [(CoreCECPhysicalDevice *)&v3 dealloc];
}

- (id)description
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v17.receiver = self;
  v17.super_class = CoreCECPhysicalDevice;
  v4 = [(CoreCECPhysicalDevice *)&v17 description];
  v19[0] = CECPhysicalAddressStringWithAddress(self->_physicalAddress);
  v5 = objc_msgSend(v3, "stringWithFormat:", @"%@ %s ("), v4, v19;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(CoreCECPhysicalDevice *)self logicalDevices];
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 appendFormat:@" %u", objc_msgSend(*(*(&v13 + 1) + 8 * v10++), "logicalAddress")];
      }

      while (v8 != v10);
      v8 = [(NSSet *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  [v5 appendString:@""]);
  result = [MEMORY[0x277CCACA8] stringWithString:v5];
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(CoreCECPhysicalDevice *)self physicalAddress];
  return v5 == [a3 physicalAddress];
}

- (CoreCECPhysicalDevice)initWithPhysicalAddress:(unsigned __int16)a3
{
  if (CECPhysicalAddressIsValid(a3))
  {
    result = [(CoreCECPhysicalDevice *)self init];
    if (result)
    {
      result->_physicalAddress = a3;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

- (CoreCECPhysicalDevice)initWithLogicalDevice:(id)a3
{
  v4 = -[CoreCECPhysicalDevice initWithPhysicalAddress:](self, "initWithPhysicalAddress:", [a3 physicalAddress]);
  v5 = v4;
  if (v4)
  {
    [(CoreCECPhysicalDevice *)v4 addLogicalDevice:a3];
  }

  return v5;
}

- (void)addChild:(id)a3
{
  if (([(NSMutableArray *)self->_children containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->_children addObject:a3];
    [(NSMutableArray *)self->_children sortUsingSelector:sel_compare_];

    [a3 setParent:self];
  }
}

- (int64_t)compare:(id)a3
{
  v4 = [(CoreCECPhysicalDevice *)self physicalAddress];
  v5 = [a3 physicalAddress];
  v6 = -1;
  if (v4 >= v5)
  {
    v6 = 1;
  }

  if (v4 == v5)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

+ (id)physicalDeviceTreeWithLogicalDevices:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = [[CoreCECPhysicalDevice alloc] initWithPhysicalAddress:0];
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v26, 0}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        if ([v9 physicalAddress] != 0xFFFF)
        {
          v10 = [v4 physicalDeviceWithAddress:{objc_msgSend(v9, "physicalAddress")}];
          if (!v10)
          {
            v11 = [[CoreCECPhysicalDevice alloc] initWithLogicalDevice:v9];
            if (!v11)
            {
              continue;
            }

            v10 = v11;
            [v4 addObject:v11];
          }

          [(CoreCECPhysicalDevice *)v10 addLogicalDevice:v9];
        }
      }

      v6 = [a3 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [MEMORY[0x277CBEB98] setWithSet:v4];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v27 + 1) + 8 * j);
        v18 = [(CoreCECPhysicalDevice *)v17 physicalAddress];
        if (v18)
        {
          v19 = 15;
          do
          {
            v20 = v19;
            v19 *= 16;
          }

          while ((v20 & v18) == 0);
          v21 = v18 & ~v20;
          if ((v18 & ~v20) != 0)
          {
            do
            {
              v22 = [v4 physicalDeviceWithAddress:v21];
              if (!v22)
              {
                v23 = [[CoreCECPhysicalDevice alloc] initWithPhysicalAddress:v21];
                if (!v23)
                {
                  goto LABEL_29;
                }

                v22 = v23;
                [v4 addObject:v23];
              }

              [(CoreCECPhysicalDevice *)v22 addChild:v17];
              v21 &= ~(16 * v20);
              v20 *= 16;
              v17 = v22;
            }

            while (v21);
          }

          else
          {
            v22 = v17;
          }

          [(CoreCECPhysicalDevice *)v26 addChild:v22];
        }

LABEL_29:
        ;
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v14);
  }

  result = v26;
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)propertyList
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCACA8];
  v7[0] = CECPhysicalAddressStringWithAddress(self->_physicalAddress);
  [v3 setValue:objc_msgSend(v4 forKey:{"stringWithUTF8String:", v7), @"physical address"}];
  [v3 setValue:-[NSArray valueForKey:](-[CoreCECPhysicalDevice children](self forKey:{"children"), "valueForKey:", @"propertyList", @"children"}];
  [v3 setValue:objc_msgSend(-[NSSet valueForKey:](-[CoreCECPhysicalDevice logicalDevices](self forKey:{"logicalDevices"), "valueForKey:", @"logicalAddress", "allObjects"), @"logical addresses"}];
  result = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end