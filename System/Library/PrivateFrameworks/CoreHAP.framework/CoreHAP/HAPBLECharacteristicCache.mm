@interface HAPBLECharacteristicCache
- (BOOL)isEqual:(id)equal;
- (HAPBLECharacteristicCache)initWithCharacteristicUUID:(id)d instanceId:(id)id characteristicProperties:(unsigned __int16)properties characteristicMetadata:(id)metadata;
- (HAPBLECharacteristicCache)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithCharacteristic:(id)characteristic;
@end

@implementation HAPBLECharacteristicCache

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  characteristicUUID = [(HAPBLECharacteristicCache *)self characteristicUUID];
  characteristicInstanceId = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  characteristicProperties = [(HAPBLECharacteristicCache *)self characteristicProperties];
  string = [MEMORY[0x277CCAB68] string];
  v8 = string;
  if ((characteristicProperties & 0x40) != 0)
  {
    v13 = [string stringByAppendingString:@": Hidden"];

    v8 = v13;
    if ((characteristicProperties & 1) == 0)
    {
LABEL_3:
      if ((characteristicProperties & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((characteristicProperties & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = [v8 stringByAppendingString:@": Notify"];

  v8 = v14;
  if ((characteristicProperties & 8) == 0)
  {
LABEL_4:
    if ((characteristicProperties & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v15 = [v8 stringByAppendingString:@": Broadcast"];

  v8 = v15;
  if ((characteristicProperties & 2) == 0)
  {
LABEL_5:
    if ((characteristicProperties & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v16 = [v8 stringByAppendingString:@": Read"];

  v8 = v16;
  if ((characteristicProperties & 4) == 0)
  {
LABEL_6:
    if ((characteristicProperties & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v17 = [v8 stringByAppendingString:@": Write"];

  v8 = v17;
  if ((characteristicProperties & 0x20) == 0)
  {
LABEL_7:
    if ((characteristicProperties & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v18 = [v8 stringByAppendingString:@": Timed Write"];

  v8 = v18;
  if ((characteristicProperties & 0x10) == 0)
  {
LABEL_8:
    if ((characteristicProperties & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v19 = [v8 stringByAppendingString:@": AAD"];

  v8 = v19;
  if ((characteristicProperties & 0x100) != 0)
  {
LABEL_9:
    v9 = [v8 stringByAppendingString:@": ENC"];

    v8 = v9;
  }

LABEL_10:
  characteristicMetadata = [(HAPBLECharacteristicCache *)self characteristicMetadata];
  v11 = [v3 stringWithFormat:@"\n\tCharacteristic Info:\n\t\tCharacteristic UUID: %@, \n\t\tInstanceId: %@, \n\t\tProperties: %@, \n\t\tMetadata: %@", characteristicUUID, characteristicInstanceId, v8, characteristicMetadata];

  return v11;
}

- (HAPBLECharacteristicCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HAPBLECharacteristicCache;
  v5 = [(HAPBLECharacteristicCache *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CUUI"];
    characteristicUUID = v5->_characteristicUUID;
    v5->_characteristicUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CI"];
    characteristicInstanceId = v5->_characteristicInstanceId;
    v5->_characteristicInstanceId = v8;

    v5->_characteristicProperties = [coderCopy decodeIntegerForKey:@"CP"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CM"];
    characteristicMetadata = v5->_characteristicMetadata;
    v5->_characteristicMetadata = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  characteristicUUID = [(HAPBLECharacteristicCache *)self characteristicUUID];
  [coderCopy encodeObject:characteristicUUID forKey:@"CUUI"];

  characteristicInstanceId = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  [coderCopy encodeObject:characteristicInstanceId forKey:@"CI"];

  [coderCopy encodeInteger:-[HAPBLECharacteristicCache characteristicProperties](self forKey:{"characteristicProperties"), @"CP"}];
  characteristicMetadata = [(HAPBLECharacteristicCache *)self characteristicMetadata];
  [coderCopy encodeObject:characteristicMetadata forKey:@"CM"];
}

- (void)updateWithCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  -[HAPBLECharacteristicCache setCharacteristicProperties:](self, "setCharacteristicProperties:", [characteristicCopy characteristicProperties]);
  characteristicMetadata = [characteristicCopy characteristicMetadata];

  [(HAPBLECharacteristicCache *)self setCharacteristicMetadata:characteristicMetadata];
}

- (unint64_t)hash
{
  characteristicUUID = [(HAPBLECharacteristicCache *)self characteristicUUID];
  v4 = [characteristicUUID hash];
  characteristicInstanceId = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
  v6 = [characteristicInstanceId hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      characteristicUUID = [(HAPBLECharacteristicCache *)self characteristicUUID];
      characteristicUUID2 = [(HAPBLECharacteristicCache *)v5 characteristicUUID];
      v8 = [characteristicUUID isEqual:characteristicUUID2];

      if (v8)
      {
        characteristicInstanceId = [(HAPBLECharacteristicCache *)self characteristicInstanceId];
        characteristicInstanceId2 = [(HAPBLECharacteristicCache *)v5 characteristicInstanceId];
        v11 = [characteristicInstanceId isEqual:characteristicInstanceId2];
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

- (HAPBLECharacteristicCache)initWithCharacteristicUUID:(id)d instanceId:(id)id characteristicProperties:(unsigned __int16)properties characteristicMetadata:(id)metadata
{
  dCopy = d;
  idCopy = id;
  metadataCopy = metadata;
  v17.receiver = self;
  v17.super_class = HAPBLECharacteristicCache;
  v14 = [(HAPBLECharacteristicCache *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_characteristicUUID, d);
    objc_storeStrong(&v15->_characteristicInstanceId, id);
    v15->_characteristicProperties = properties;
    objc_storeStrong(&v15->_characteristicMetadata, metadata);
  }

  return v15;
}

@end