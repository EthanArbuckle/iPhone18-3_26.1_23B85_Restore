@interface HAPKeychainItem
+ (BOOL)isQueryResultValid:(__CFDictionary *)a3 shouldIncludeData:(BOOL)a4;
- (BOOL)matchesPublicKeyData:(id)a3;
- (HAPKeychainItem)initWithQueryResult:(__CFDictionary *)a3 shouldIncludeData:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation HAPKeychainItem

- (BOOL)matchesPublicKeyData:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a3 bytes])
  {
    DataToHexCStringEx();
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:64];
    v7 = [(HAPKeychainItem *)self valueData];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)dealloc
{
  platformReference = self->_platformReference;
  if (platformReference)
  {
    CFRelease(platformReference);
    self->_platformReference = 0;
  }

  v4.receiver = self;
  v4.super_class = HAPKeychainItem;
  [(HAPKeychainItem *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(HAPKeychainItem *)self accessGroup];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(HAPKeychainItem *)self type];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(HAPKeychainItem *)self account];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(HAPKeychainItem *)self valueData];
  v12 = v4[5];
  v4[5] = v11;

  *(v4 + 8) = [(HAPKeychainItem *)self isSyncable];
  v13 = [(HAPKeychainItem *)self viewHint];
  v14 = v4[8];
  v4[8] = v13;

  v15 = [(HAPKeychainItem *)self label];
  v16 = v4[6];
  v4[6] = v15;

  v17 = [(HAPKeychainItem *)self itemDescription];
  v18 = v4[7];
  v4[7] = v17;

  v19 = [(HAPKeychainItem *)self creationDate];
  v20 = v4[9];
  v4[9] = v19;

  v21 = [(HAPKeychainItem *)self genericData];
  v22 = v4[10];
  v4[10] = v21;

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HAPMutableKeychainItem);
  v5 = [(HAPKeychainItem *)self accessGroup];
  [(HAPKeychainItem *)v4 setAccessGroup:v5];

  v6 = [(HAPKeychainItem *)self type];
  [(HAPKeychainItem *)v4 setType:v6];

  v7 = [(HAPKeychainItem *)self account];
  [(HAPKeychainItem *)v4 setAccount:v7];

  v8 = [(HAPKeychainItem *)self valueData];
  [(HAPKeychainItem *)v4 setValueData:v8];

  [(HAPKeychainItem *)v4 setSyncable:[(HAPKeychainItem *)self isSyncable]];
  v9 = [(HAPKeychainItem *)self viewHint];
  [(HAPKeychainItem *)v4 setViewHint:v9];

  v10 = [(HAPKeychainItem *)self label];
  [(HAPKeychainItem *)v4 setLabel:v10];

  v11 = [(HAPKeychainItem *)self itemDescription];
  [(HAPKeychainItem *)v4 setItemDescription:v11];

  v12 = [(HAPKeychainItem *)self creationDate];
  [(HAPKeychainItem *)v4 setCreationDate:v12];

  v13 = [(HAPKeychainItem *)self genericData];
  [(HAPKeychainItem *)v4 setGenericData:v13];

  return v4;
}

+ (BOOL)isQueryResultValid:(__CFDictionary *)a3 shouldIncludeData:(BOOL)a4
{
  v4 = a4;
  Value = CFDictionaryGetValue(a3, *MEMORY[0x277CDBEC8]);
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 != CFStringGetTypeID())
    {
      goto LABEL_17;
    }

    Value = CFDictionaryGetValue(a3, *MEMORY[0x277CDC188]);
    if (!Value)
    {
      return Value;
    }

    v8 = CFGetTypeID(Value);
    if (v8 != CFNumberGetTypeID())
    {
      goto LABEL_17;
    }

    Value = CFDictionaryGetValue(a3, *MEMORY[0x277CDC080]);
    if (!Value)
    {
      return Value;
    }

    v9 = CFGetTypeID(Value);
    if (v9 != CFStringGetTypeID())
    {
      goto LABEL_17;
    }

    Value = CFDictionaryGetValue(a3, *MEMORY[0x277CDBFA0]);
    if (!Value)
    {
      return Value;
    }

    v10 = CFGetTypeID(Value);
    if (v10 != CFStringGetTypeID())
    {
      goto LABEL_17;
    }

    Value = CFDictionaryGetValue(a3, *MEMORY[0x277CDBF20]);
    if (!Value)
    {
      return Value;
    }

    v11 = CFGetTypeID(Value);
    if (v11 != CFStringGetTypeID())
    {
      goto LABEL_17;
    }

    Value = CFDictionaryGetValue(a3, *MEMORY[0x277CDC5F0]);
    if (Value)
    {
      if (!v4)
      {
LABEL_15:
        LOBYTE(Value) = 1;
        return Value;
      }

      Value = CFDictionaryGetValue(a3, *MEMORY[0x277CDC5E8]);
      if (Value)
      {
        v12 = CFGetTypeID(Value);
        if (v12 == CFDataGetTypeID())
        {
          goto LABEL_15;
        }

LABEL_17:
        LOBYTE(Value) = 0;
      }
    }
  }

  return Value;
}

- (HAPKeychainItem)initWithQueryResult:(__CFDictionary *)a3 shouldIncludeData:(BOOL)a4
{
  v4 = a4;
  v39.receiver = self;
  v39.super_class = HAPKeychainItem;
  v6 = [(HAPKeychainItem *)&v39 init];
  if (v6)
  {
    Value = CFDictionaryGetValue(a3, *MEMORY[0x277CDBEC8]);
    Copy = CFStringCreateCopy(0, Value);
    accessGroup = v6->_accessGroup;
    v6->_accessGroup = &Copy->isa;

    valuePtr = 0;
    v10 = CFDictionaryGetValue(a3, *MEMORY[0x277CDC188]);
    CFNumberGetValue(v10, kCFNumberIntType, &valuePtr);
    v11 = [MEMORY[0x277CCABB0] numberWithInt:valuePtr];
    type = v6->_type;
    v6->_type = v11;

    v13 = CFDictionaryGetValue(a3, *MEMORY[0x277CDC080]);
    v14 = CFStringCreateCopy(0, v13);
    label = v6->_label;
    v6->_label = &v14->isa;

    v16 = CFDictionaryGetValue(a3, *MEMORY[0x277CDBFA0]);
    v17 = CFStringCreateCopy(0, v16);
    itemDescription = v6->_itemDescription;
    v6->_itemDescription = &v17->isa;

    v19 = CFDictionaryGetValue(a3, *MEMORY[0x277CDC140]);
    if (v19)
    {
      v6->_syncable = CFBooleanGetValue(v19) != 0;
    }

    v20 = CFDictionaryGetValue(a3, *MEMORY[0x277CDBFC0]);
    if (v20)
    {
      v6->_invisible = CFBooleanGetValue(v20) != 0;
    }

    v21 = CFDictionaryGetValue(a3, *MEMORY[0x277CDBF20]);
    v22 = CFStringCreateCopy(0, v21);
    account = v6->_account;
    v6->_account = &v22->isa;

    v24 = CFDictionaryGetValue(a3, *MEMORY[0x277CDC5F0]);
    v6->_platformReference = CFRetain(v24);
    if (v4)
    {
      v25 = CFDictionaryGetValue(a3, *MEMORY[0x277CDC5E8]);
      v26 = CFDataCreateCopy(0, v25);
      valueData = v6->_valueData;
      v6->_valueData = v26;
    }

    v28 = *MEMORY[0x277CDBFB8];
    CFDataGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    if (TypedValue)
    {
      v30 = CFDataCreateCopy(0, TypedValue);
      genericData = v6->_genericData;
      v6->_genericData = v30;
    }

    v32 = CFDictionaryGetValue(a3, *MEMORY[0x277CDC138]);
    if (v32)
    {
      v33 = CFStringCreateCopy(0, v32);
      viewHint = v6->_viewHint;
      v6->_viewHint = &v33->isa;
    }

    v35 = *MEMORY[0x277CDBF90];
    CFDateGetTypeID();
    v36 = CFDictionaryGetTypedValue();
    if (v36)
    {
      objc_storeStrong(&v6->_creationDate, v36);
    }
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(HAPKeychainItem *)self genericData];
  v23 = [v3 getDictionaryFromGenericData:v4];

  v20 = MEMORY[0x277CCACA8];
  v22 = [(HAPKeychainItem *)self accessGroup];
  v21 = [(HAPKeychainItem *)self type];
  v19 = KeyTypeDescription(v21);
  v5 = [(HAPKeychainItem *)self account];
  if ([(HAPKeychainItem *)self isSyncable])
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  v7 = [(HAPKeychainItem *)self valueData];
  v8 = CUPrintNSObjectMasked();
  if ([(HAPKeychainItem *)self isInvisible])
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  v10 = [(HAPKeychainItem *)self viewHint];
  if (v10)
  {
    v11 = @", viewHint: ";
  }

  else
  {
    v11 = &stru_283E79C60;
  }

  v12 = [(HAPKeychainItem *)self viewHint];
  if (v12)
  {
    v13 = [(HAPKeychainItem *)self viewHint];
    v17 = v6;
    v14 = v22;
    v15 = [v20 stringWithFormat:@"agrp: %@, type: %s, acct: %@, sync: %@, hash: %@, invisible: %@%@%@, dictionary:%@", v22, v19, v5, v17, v8, v9, v11, v13, v23];
  }

  else
  {
    v18 = v6;
    v14 = v22;
    v15 = [v20 stringWithFormat:@"agrp: %@, type: %s, acct: %@, sync: %@, hash: %@, invisible: %@%@%@, dictionary:%@", v22, v19, v5, v18, v8, v9, v11, &stru_283E79C60, v23];
  }

  return v15;
}

@end