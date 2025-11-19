@interface HFPinCode
+ (id)na_identity;
- (BOOL)hasRestrictions;
- (BOOL)isEqual:(id)a3;
- (HFPinCode)initWithAccessoryAccessCode:(id)a3;
- (HFPinCode)initWithHomeAccessCode:(id)a3;
- (HFPinCode)initWithLabel:(id)a3 accessCodeValue:(id)a4 accessoryAccessCodes:(id)a5;
- (NSSet)accessories;
- (NSSet)accessoryAccessCodes;
- (id)copyWithNewPinCodeValue:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)addAccessories:(id)a3;
- (void)addAccessoryAccessCode:(id)a3;
- (void)removeAccessories:(id)a3;
@end

@implementation HFPinCode

- (HFPinCode)initWithHomeAccessCode:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HFPinCode;
  v5 = [(HFPinCode *)&v14 init];
  if (v5)
  {
    v6 = [v4 userInformation];
    userLabel = v5->_userLabel;
    v5->_userLabel = v6;

    v8 = [v4 accessCodeValue];
    v9 = [v8 stringValue];
    pinCodeValue = v5->_pinCodeValue;
    v5->_pinCodeValue = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    accessoryAccessCodes = v5->_accessoryAccessCodes;
    v5->_accessoryAccessCodes = v11;
  }

  return v5;
}

- (HFPinCode)initWithAccessoryAccessCode:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HFPinCode;
  v5 = [(HFPinCode *)&v18 init];
  if (v5)
  {
    v6 = [v4 accessCodeValue];
    v7 = [v6 stringValue];
    pinCodeValue = v5->_pinCodeValue;
    v5->_pinCodeValue = v7;

    v9 = [MEMORY[0x277CBEB58] setWithObject:v4];
    accessoryAccessCodes = v5->_accessoryAccessCodes;
    v5->_accessoryAccessCodes = v9;

    if (![(NSString *)v5->_pinCodeValue length])
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [v4 accessory];
      v13 = [v12 uniqueIdentifier];
      v14 = [v4 uniqueIdentifier];
      v15 = [v11 stringWithFormat:@"%@-%@", v13, v14];
      unknownMatterGuestUniqueID = v5->_unknownMatterGuestUniqueID;
      v5->_unknownMatterGuestUniqueID = v15;
    }
  }

  return v5;
}

- (HFPinCode)initWithLabel:(id)a3 accessCodeValue:(id)a4 accessoryAccessCodes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HFPinCode;
  v12 = [(HFPinCode *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userLabel, a3);
    objc_storeStrong(&v13->_pinCodeValue, a4);
    if (v11)
    {
      v14 = [v11 mutableCopy];
    }

    else
    {
      v14 = [MEMORY[0x277CBEB58] set];
    }

    accessoryAccessCodes = v13->_accessoryAccessCodes;
    v13->_accessoryAccessCodes = v14;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(HFPinCode *)self userLabel];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(HFPinCode *)self pinCodeValue];
  v8 = [v7 copy];
  v9 = v4[4];
  v4[4] = v8;

  v10 = [(HFPinCode *)self accessoryAccessCodes];
  v11 = [v10 mutableCopy];
  v12 = v4[1];
  v4[1] = v11;

  v13 = [(HFPinCode *)self unknownMatterGuestUniqueID];
  v14 = [v13 copy];
  v15 = v4[5];
  v4[5] = v14;

  return v4;
}

- (id)copyWithNewPinCodeValue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(HFPinCode *)self userLabel];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [v4 copy];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(HFPinCode *)self accessoryAccessCodes];
  v11 = [v10 mutableCopy];
  v12 = v5[1];
  v5[1] = v11;

  return v5;
}

+ (id)na_identity
{
  if (_MergedGlobals_313 != -1)
  {
    dispatch_once(&_MergedGlobals_313, &__block_literal_global_5_4);
  }

  v3 = qword_280E03C28;

  return v3;
}

void __24__HFPinCode_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_12_9];
  v2 = [v0 appendCharacteristic:&__block_literal_global_14_11];
  v3 = [v0 appendCharacteristic:&__block_literal_global_16_8];
  v4 = [v0 appendCharacteristic:&__block_literal_global_18_11 withRole:3 comparatorBlock:0 hashBlock:&__block_literal_global_21_6];
  v5 = [v0 build];

  v6 = qword_280E03C28;
  qword_280E03C28 = v5;
}

id __24__HFPinCode_na_identity__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 userLabel];
  v4 = [v3 simpleLabel];

  if (!v4)
  {
    v5 = [v2 userLabel];
    v6 = [v5 user];
    v4 = [v6 uniqueIdentifier];

    if (!v4)
    {
      v7 = [v2 userLabel];
      v8 = [v7 removedUserInfo];
      v4 = [v8 userUUID];
    }
  }

  return v4;
}

uint64_t __24__HFPinCode_na_identity__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v7 handleFailureInFunction:v8 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v3, objc_opt_class()}];

LABEL_7:
    v6 = 0;
  }

  v9 = [v6 computeHashFromContents];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFPinCode *)self accessories];
  v5 = [v3 appendObject:v4 withName:@"accessories"];

  v6 = [(HFPinCode *)self userLabel];
  v7 = [v6 user];
  v8 = [v3 appendObject:v7 withName:@"user"];

  v9 = [(HFPinCode *)self userLabel];
  v10 = [v9 simpleLabel];
  v11 = [v3 appendBool:v10 != 0 withName:@"hasSimpleLabel"];

  v12 = [(HFPinCode *)self userLabel];
  v13 = [v12 removedUserInfo];
  v14 = [v13 userUUID];
  v15 = [v3 appendObject:v14 withName:@"removedUserUUID"];

  v16 = [v3 appendBool:-[HFPinCode hasRestrictions](self withName:{"hasRestrictions"), @"hasRestrictions"}];
  v17 = [(HFPinCode *)self unknownMatterGuestUniqueID];
  v18 = [v3 appendObject:v17 withName:@"unknownMatterGuestUniqueID"];

  v19 = [v3 build];

  return v19;
}

- (NSSet)accessoryAccessCodes
{
  v2 = [(NSMutableSet *)self->_accessoryAccessCodes copy];

  return v2;
}

- (void)addAccessoryAccessCode:(id)a3
{
  accessoryAccessCodes = self->_accessoryAccessCodes;
  v5 = a3;
  [(NSMutableSet *)accessoryAccessCodes addObject:v5];
  accessories = self->_accessories;
  v7 = [v5 accessory];

  [(NSMutableSet *)accessories removeObject:v7];
}

- (BOOL)hasRestrictions
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_accessoryAccessCodes;
  v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasRestrictions])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSMutableSet *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)addAccessories:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_accessories)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    accessories = self->_accessories;
    self->_accessories = v5;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        accessoryAccessCodes = self->_accessoryAccessCodes;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __28__HFPinCode_addAccessories___block_invoke;
        v15[3] = &unk_277DFCE48;
        v15[4] = v12;
        if (([(NSMutableSet *)accessoryAccessCodes na_any:v15]& 1) == 0)
        {
          [(NSMutableSet *)self->_accessories addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __28__HFPinCode_addAccessories___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)removeAccessories:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v3;
  v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v19)
  {
    v17 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v24 + 1) + 8 * i);
        [(NSMutableSet *)self->_accessories removeObject:v6];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v7 = self->_accessoryAccessCodes;
        v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v21;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v21 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v20 + 1) + 8 * j);
              v13 = [v12 accessory];
              v14 = [v13 isEqual:v6];

              if (v14)
              {
                [v4 addObject:v12];
              }
            }

            v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v9);
        }
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  [(NSMutableSet *)self->_accessoryAccessCodes minusSet:v4];
  v15 = *MEMORY[0x277D85DE8];
}

- (NSSet)accessories
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(HFPinCode *)self accessoryAccessCodes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) accessory];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v3 unionSet:self->_accessories];
  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

@end