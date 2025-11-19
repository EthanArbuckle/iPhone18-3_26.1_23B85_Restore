@interface HAPBLEServiceCache
- (BOOL)isEqual:(id)a3;
- (HAPBLEServiceCache)initWithCoder:(id)a3;
- (HAPBLEServiceCache)initWithServiceUUID:(id)a3 instanceId:(id)a4 instanceOrder:(unint64_t)a5 serviceProperties:(unint64_t)a6 linkedServices:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithCharacteristic:(id)a3;
- (void)updateWithService:(id)a3;
@end

@implementation HAPBLEServiceCache

- (id)description
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v5 = [v3 stringWithFormat:@"\nList of Characteristics: %tu\n", objc_msgSend(v4, "count")];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      v11 = v5;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v5 = [v11 stringByAppendingFormat:@"%@", *(*(&v26 + 1) + 8 * v10)];

        ++v10;
        v11 = v5;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [(HAPBLEServiceCache *)self serviceUUID];
  v14 = [(HAPBLEServiceCache *)self serviceInstanceId];
  v15 = [(HAPBLEServiceCache *)self serviceInstanceOrder];
  v16 = [(HAPBLEServiceCache *)self serviceProperties];
  v17 = [MEMORY[0x277CCAB68] string];
  v18 = v17;
  if (v16)
  {
    v24 = [v17 stringByAppendingString:@": Primary"];

    v18 = v24;
    if ((v16 & 2) == 0)
    {
LABEL_10:
      if ((v16 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v16 & 2) == 0)
  {
    goto LABEL_10;
  }

  v25 = [v18 stringByAppendingString:@": Hidden"];

  v18 = v25;
  if ((v16 & 4) != 0)
  {
LABEL_11:
    v19 = [v18 stringByAppendingString:@": Configurable"];

    v18 = v19;
  }

LABEL_12:
  v20 = [(HAPBLEServiceCache *)self linkedServices];
  v21 = [v12 stringWithFormat:@"\n\nService Info:\n\tService UUID: %@, \n\tInstanceId: %@, \n\tOrder: %lu, \n\tProperties: %@, \n\tLinkedServices: %@, \n\t %@", v13, v14, v15, v18, v20, v5];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (HAPBLEServiceCache)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = HAPBLEServiceCache;
  v5 = [(HAPBLEServiceCache *)&v23 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUUI"];
  serviceUUID = v5->_serviceUUID;
  v5->_serviceUUID = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SI"];
  serviceInstanceId = v5->_serviceInstanceId;
  v5->_serviceInstanceId = v8;

  v5->_serviceInstanceOrder = [v4 decodeIntegerForKey:@"SO"];
  v5->_serviceProperties = [v4 decodeIntegerForKey:@"SP"];
  v10 = MEMORY[0x277CBEB98];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"LS"];
  linkedServices = v5->_linkedServices;
  v5->_linkedServices = v13;

  v15 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"CC"];
  cachedCharacteristics = v5->_cachedCharacteristics;
  v5->_cachedCharacteristics = v18;

  if (!v5->_serviceInstanceId)
  {
    goto LABEL_5;
  }

  if (v5->_serviceUUID)
  {
    v20 = v5;
  }

  else
  {
LABEL_5:
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAPBLEServiceCache *)self serviceUUID];
  [v4 encodeObject:v5 forKey:@"SUUI"];

  v6 = [(HAPBLEServiceCache *)self serviceInstanceId];
  [v4 encodeObject:v6 forKey:@"SI"];

  [v4 encodeInteger:-[HAPBLEServiceCache serviceInstanceOrder](self forKey:{"serviceInstanceOrder"), @"SO"}];
  [v4 encodeInteger:-[HAPBLEServiceCache serviceProperties](self forKey:{"serviceProperties"), @"SP"}];
  v7 = [(HAPBLEServiceCache *)self linkedServices];
  [v4 encodeObject:v7 forKey:@"LS"];

  v8 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  [v4 encodeObject:v8 forKey:@"CC"];
}

- (void)updateWithCharacteristic:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isEqual:v4])
        {
          [v10 updateWithCharacteristic:v4];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v5 = [(HAPBLEServiceCache *)self cachedCharacteristics];
  [v5 addObject:v4];
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateWithService:(id)a3
{
  v4 = a3;
  -[HAPBLEServiceCache setServiceInstanceOrder:](self, "setServiceInstanceOrder:", [v4 serviceInstanceOrder]);
  -[HAPBLEServiceCache setServiceProperties:](self, "setServiceProperties:", [v4 serviceProperties]);
  v5 = [v4 linkedServices];
  [(HAPBLEServiceCache *)self setLinkedServices:v5];

  v6 = [v4 cachedCharacteristics];

  [(HAPBLEServiceCache *)self setCachedCharacteristics:v6];
}

- (unint64_t)hash
{
  v3 = [(HAPBLEServiceCache *)self serviceUUID];
  v4 = [v3 hash];
  v5 = [(HAPBLEServiceCache *)self serviceInstanceId];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPBLEServiceCache *)self serviceUUID];
      v7 = [(HAPBLEServiceCache *)v5 serviceUUID];
      v8 = [v6 isEqual:v7];

      if (v8 && (-[HAPBLEServiceCache serviceInstanceId](self, "serviceInstanceId"), v9 = objc_claimAutoreleasedReturnValue(), -[HAPBLEServiceCache serviceInstanceId](v5, "serviceInstanceId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        v12 = [(HAPBLEServiceCache *)self serviceInstanceOrder];
        v13 = v12 == [(HAPBLEServiceCache *)v5 serviceInstanceOrder];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (HAPBLEServiceCache)initWithServiceUUID:(id)a3 instanceId:(id)a4 instanceOrder:(unint64_t)a5 serviceProperties:(unint64_t)a6 linkedServices:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = HAPBLEServiceCache;
  v16 = [(HAPBLEServiceCache *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_serviceUUID, a3);
    objc_storeStrong(&v17->_serviceInstanceId, a4);
    v17->_serviceInstanceOrder = a5;
    v17->_serviceProperties = a6;
    objc_storeStrong(&v17->_linkedServices, a7);
    v18 = [MEMORY[0x277CBEB18] array];
    cachedCharacteristics = v17->_cachedCharacteristics;
    v17->_cachedCharacteristics = v18;
  }

  return v17;
}

@end