@interface NDODeviceSection
- (NDODeviceSection)initWithCoder:(id)a3;
- (NDODeviceSection)initWithLabel:(id)a3 identifier:(id)a4;
- (id)description;
- (id)deviceForSN:(id)a3;
- (void)addDevice:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NDODeviceSection

- (NDODeviceSection)initWithLabel:(id)a3 identifier:(id)a4
{
  v10.receiver = self;
  v10.super_class = NDODeviceSection;
  v5 = a4;
  v6 = a3;
  v7 = [(NDODeviceSection *)&v10 init];
  [(NDODeviceSection *)v7 setLabel:v6, v10.receiver, v10.super_class];

  [(NDODeviceSection *)v7 setIdentifier:v5];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  [(NDODeviceSection *)v7 setPrivateDeviceList:v8];

  return v7;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NDODeviceSection *)self label];
  v5 = [(NDODeviceSection *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ (%@):\n", v4, v5];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(NDODeviceSection *)self deviceList];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = MEMORY[0x277CCACA8];
        v14 = [*(*(&v18 + 1) + 8 * v11) description];
        v15 = [v13 stringWithFormat:@"%@\n", v14];
        v6 = [v12 stringByAppendingString:v15];

        ++v11;
        v12 = v6;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addDevice:(id)a3
{
  v4 = a3;
  v5 = [(NDODeviceSection *)self privateDeviceList];
  [v5 addObject:v4];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NDODeviceSection *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(NDODeviceSection *)self label];
  [v4 encodeObject:v6 forKey:@"label"];

  v7 = MEMORY[0x277CCAAB0];
  v9 = [(NDODeviceSection *)self privateDeviceList];
  v8 = [v7 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
  [v4 encodeObject:v8 forKey:@"deviceList"];
}

- (NDODeviceSection)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NDODeviceSection;
  v5 = [(NDODeviceSection *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    [(NDODeviceSection *)v5 setLabel:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(NDODeviceSection *)v5 setIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceList"];
    v9 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v8 error:0];
    v10 = [v9 mutableCopy];
    [(NDODeviceSection *)v5 setPrivateDeviceList:v10];
  }

  return v5;
}

- (id)deviceForSN:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NDODeviceSection *)self privateDeviceList];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 serialNumber];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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