@interface NDODeviceSection
- (NDODeviceSection)initWithCoder:(id)coder;
- (NDODeviceSection)initWithLabel:(id)label identifier:(id)identifier;
- (id)description;
- (id)deviceForSN:(id)n;
- (void)addDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NDODeviceSection

- (NDODeviceSection)initWithLabel:(id)label identifier:(id)identifier
{
  v10.receiver = self;
  v10.super_class = NDODeviceSection;
  identifierCopy = identifier;
  labelCopy = label;
  v7 = [(NDODeviceSection *)&v10 init];
  [(NDODeviceSection *)v7 setLabel:labelCopy, v10.receiver, v10.super_class];

  [(NDODeviceSection *)v7 setIdentifier:identifierCopy];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  [(NDODeviceSection *)v7 setPrivateDeviceList:v8];

  return v7;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  label = [(NDODeviceSection *)self label];
  identifier = [(NDODeviceSection *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ (%@):\n", label, identifier];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  deviceList = [(NDODeviceSection *)self deviceList];
  v8 = [deviceList countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      v12 = v6;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(deviceList);
        }

        v13 = MEMORY[0x277CCACA8];
        v14 = [*(*(&v18 + 1) + 8 * v11) description];
        v15 = [v13 stringWithFormat:@"%@\n", v14];
        v6 = [v12 stringByAppendingString:v15];

        ++v11;
        v12 = v6;
      }

      while (v9 != v11);
      v9 = [deviceList countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addDevice:(id)device
{
  deviceCopy = device;
  privateDeviceList = [(NDODeviceSection *)self privateDeviceList];
  [privateDeviceList addObject:deviceCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(NDODeviceSection *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  label = [(NDODeviceSection *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  v7 = MEMORY[0x277CCAAB0];
  privateDeviceList = [(NDODeviceSection *)self privateDeviceList];
  v8 = [v7 archivedDataWithRootObject:privateDeviceList requiringSecureCoding:1 error:0];
  [coderCopy encodeObject:v8 forKey:@"deviceList"];
}

- (NDODeviceSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = NDODeviceSection;
  v5 = [(NDODeviceSection *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    [(NDODeviceSection *)v5 setLabel:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(NDODeviceSection *)v5 setIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceList"];
    v9 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v8 error:0];
    v10 = [v9 mutableCopy];
    [(NDODeviceSection *)v5 setPrivateDeviceList:v10];
  }

  return v5;
}

- (id)deviceForSN:(id)n
{
  v19 = *MEMORY[0x277D85DE8];
  nCopy = n;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  privateDeviceList = [(NDODeviceSection *)self privateDeviceList];
  v6 = [privateDeviceList countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(privateDeviceList);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        serialNumber = [v9 serialNumber];
        v11 = [serialNumber isEqualToString:nCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [privateDeviceList countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end