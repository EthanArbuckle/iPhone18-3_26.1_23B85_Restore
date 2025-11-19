@interface HAPBLECharacteristicCache
- (BOOL)isEqual:(id)a3;
- (HAPBLECharacteristicCache)initWithCharacteristicUUID:(id)a3 instanceId:(id)a4 characteristicProperties:(unsigned __int16)a5 characteristicMetadata:(id)a6;
- (HAPBLECharacteristicCache)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithCharacteristic:(id)a3;
@end

@implementation HAPBLECharacteristicCache

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HAPBLECharacteristicCache *)self characteristicUUID];
  v5 = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  v6 = [(HAPBLECharacteristicCache *)self characteristicProperties];
  v7 = [MEMORY[0x277CCAB68] string];
  v8 = v7;
  if ((v6 & 0x40) != 0)
  {
    v13 = [v7 stringByAppendingString:@": Hidden"];

    v8 = v13;
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = [v8 stringByAppendingString:@": Notify"];

  v8 = v14;
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v15 = [v8 stringByAppendingString:@": Broadcast"];

  v8 = v15;
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v16 = [v8 stringByAppendingString:@": Read"];

  v8 = v16;
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v17 = [v8 stringByAppendingString:@": Write"];

  v8 = v17;
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v18 = [v8 stringByAppendingString:@": Timed Write"];

  v8 = v18;
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v19 = [v8 stringByAppendingString:@": AAD"];

  v8 = v19;
  if ((v6 & 0x100) != 0)
  {
LABEL_9:
    v9 = [v8 stringByAppendingString:@": ENC"];

    v8 = v9;
  }

LABEL_10:
  v10 = [(HAPBLECharacteristicCache *)self characteristicMetadata];
  v11 = [v3 stringWithFormat:@"\n\tCharacteristic Info:\n\t\tCharacteristic UUID: %@, \n\t\tInstanceId: %@, \n\t\tProperties: %@, \n\t\tMetadata: %@", v4, v5, v8, v10];

  return v11;
}

- (HAPBLECharacteristicCache)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HAPBLECharacteristicCache;
  v5 = [(HAPBLECharacteristicCache *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CUUI"];
    characteristicUUID = v5->_characteristicUUID;
    v5->_characteristicUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CI"];
    characteristicInstanceId = v5->_characteristicInstanceId;
    v5->_characteristicInstanceId = v8;

    v5->_characteristicProperties = [v4 decodeIntegerForKey:@"CP"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CM"];
    characteristicMetadata = v5->_characteristicMetadata;
    v5->_characteristicMetadata = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HAPBLECharacteristicCache *)self characteristicUUID];
  [v4 encodeObject:v5 forKey:@"CUUI"];

  v6 = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  [v4 encodeObject:v6 forKey:@"CI"];

  [v4 encodeInteger:-[HAPBLECharacteristicCache characteristicProperties](self forKey:{"characteristicProperties"), @"CP"}];
  v7 = [(HAPBLECharacteristicCache *)self characteristicMetadata];
  [v4 encodeObject:v7 forKey:@"CM"];
}

- (void)updateWithCharacteristic:(id)a3
{
  v4 = a3;
  -[HAPBLECharacteristicCache setCharacteristicProperties:](self, "setCharacteristicProperties:", [v4 characteristicProperties]);
  v5 = [v4 characteristicMetadata];

  [(HAPBLECharacteristicCache *)self setCharacteristicMetadata:v5];
}

- (unint64_t)hash
{
  v3 = [(HAPBLECharacteristicCache *)self characteristicUUID];
  v4 = [v3 hash];
  v5 = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HAPBLECharacteristicCache *)self characteristicUUID];
      v7 = [(HAPBLECharacteristicCache *)v5 characteristicUUID];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
        v10 = [(HAPBLECharacteristicCache *)v5 characteristicInstanceId];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HAPBLECharacteristicCache)initWithCharacteristicUUID:(id)a3 instanceId:(id)a4 characteristicProperties:(unsigned __int16)a5 characteristicMetadata:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HAPBLECharacteristicCache;
  v14 = [(HAPBLECharacteristicCache *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_characteristicUUID, a3);
    objc_storeStrong(&v15->_characteristicInstanceId, a4);
    v15->_characteristicProperties = a5;
    objc_storeStrong(&v15->_characteristicMetadata, a6);
  }

  return v15;
}

@end