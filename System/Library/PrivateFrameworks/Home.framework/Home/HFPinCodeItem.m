@interface HFPinCodeItem
+ (id)na_identity;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGuest;
- (BOOL)isUnknownGuest;
- (BOOL)isUnknownGuestFromMatter;
- (HFPinCodeItem)initWithPinCode:(id)a3 inHome:(id)a4 onAccessory:(id)a5;
- (HMUser)user;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)_userHandle;
- (id)_userName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)updateFromPinCode:(id)a3;
@end

@implementation HFPinCodeItem

- (HFPinCodeItem)initWithPinCode:(id)a3 inHome:(id)a4 onAccessory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HFPinCodeItem;
  v11 = [(HFPinCodeItem *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, a4);
    [(HFPinCodeItem *)v12 updateFromPinCode:v8];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__HFPinCodeItem_initWithPinCode_inHome_onAccessory___block_invoke;
    aBlock[3] = &unk_277DF9B10;
    v17 = v10;
    v13 = _Block_copy(aBlock);
    isEnabledOnAccessory = v12->_isEnabledOnAccessory;
    v12->_isEnabledOnAccessory = v13;

    objc_storeStrong(&v12->_onAccessory, a5);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(HFPinCodeItem *)self home];
  v6 = v4[11];
  v4[11] = v5;

  v7 = [(HFPinCodeItem *)self userLabel];
  v8 = v4[12];
  v4[12] = v7;

  v9 = [(HFPinCodeItem *)self pinCodeValue];
  v10 = [v9 copy];
  v11 = v4[8];
  v4[8] = v10;

  v12 = [(HFPinCodeItem *)self accessories];
  v13 = [v12 copy];
  v14 = v4[9];
  v4[9] = v13;

  *(v4 + 56) = [(HFPinCodeItem *)self hasRestrictions];
  v15 = [(HFPinCodeItem *)self isEnabledOnAccessory];
  v16 = [v15 copy];
  v17 = v4[13];
  v4[13] = v16;

  v18 = [(HFPinCodeItem *)self unknownMatterGuestUniqueID];
  v19 = [v18 copy];
  v20 = v4[10];
  v4[10] = v19;

  return v4;
}

+ (id)na_identity
{
  if (_MergedGlobals_5_1 != -1)
  {
    dispatch_once(&_MergedGlobals_5_1, &__block_literal_global_4_3);
  }

  v3 = qword_280E023C8;

  return v3;
}

void __28__HFPinCodeItem_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_10_4];
  v2 = [v0 appendCharacteristic:&__block_literal_global_12_1];
  v3 = [v0 appendCharacteristic:&__block_literal_global_14_3];
  v4 = [v0 appendCharacteristic:&__block_literal_global_16_2 withRole:3 comparatorBlock:0 hashBlock:&__block_literal_global_19_1];
  v5 = [v0 build];

  v6 = qword_280E023C8;
  qword_280E023C8 = v5;
}

id __28__HFPinCodeItem_na_identity__block_invoke_4(uint64_t a1, void *a2)
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

uint64_t __28__HFPinCodeItem_na_identity__block_invoke_8(uint64_t a1, void *a2)
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

- (void)updateFromPinCode:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Updating HFPinCodeItem with values from new HFPinCode. item: %@ PinCode: %@", &v12, 0x16u);
  }

  v6 = [v4 userLabel];
  [(HFPinCodeItem *)self setUserLabel:v6];

  v7 = [v4 pinCodeValue];
  [(HFPinCodeItem *)self setPinCodeValue:v7];

  -[HFPinCodeItem setHasRestrictions:](self, "setHasRestrictions:", [v4 hasRestrictions]);
  v8 = [v4 accessories];
  v9 = [v8 allObjects];
  [(HFPinCodeItem *)self setAccessories:v9];

  v10 = [v4 unknownMatterGuestUniqueID];
  [(HFPinCodeItem *)self setUnknownMatterGuestUniqueID:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFPinCodeItem *)self accessories];
  v5 = [v3 appendObject:v4 withName:@"accessories"];

  v6 = [(HFPinCodeItem *)self userLabel];
  v7 = [v6 user];
  v8 = [v3 appendObject:v7 withName:@"user"];

  v9 = [(HFPinCodeItem *)self userLabel];
  v10 = [v9 simpleLabel];
  v11 = [v3 appendBool:v10 != 0 withName:@"hasSimpleLabel"];

  v12 = [v3 appendBool:-[HFPinCodeItem hasRestrictions](self withName:{"hasRestrictions"), @"hasRestrictions"}];
  v13 = [(HFPinCodeItem *)self userLabel];
  v14 = [v13 removedUserInfo];
  v15 = [v14 userUUID];
  v16 = [v3 appendObject:v15 withName:@"removedUserUUID"];

  v17 = [(HFPinCodeItem *)self user];
  v18 = [v3 appendObject:v17 withName:@"user"];

  v19 = [(HFPinCodeItem *)self unknownMatterGuestUniqueID];
  v20 = [v3 appendObject:v19 withName:@"unknownMatterGuestUniqueID"];

  v21 = [v3 build];

  return v21;
}

- (HMUser)user
{
  v2 = [(HFPinCodeItem *)self userLabel];
  v3 = [v2 user];

  return v3;
}

- (BOOL)isGuest
{
  v2 = [(HFPinCodeItem *)self userLabel];
  v3 = [v2 user];
  v4 = v3 == 0;

  return v4;
}

- (id)_userName
{
  v3 = [(HFPinCodeItem *)self userLabel];
  v4 = [v3 simpleLabel];
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = [(HFPinCodeItem *)self user];
  v5 = [v6 name];

  if (!v5)
  {
    v8 = [(HFPinCodeItem *)self userLabel];
    v3 = [v8 removedUserInfo];

    v4 = [v3 name];
LABEL_2:
    v5 = v4;
  }

  return v5;
}

- (id)_userHandle
{
  v3 = [(HFPinCodeItem *)self userLabel];
  v4 = [v3 user];

  if (v4)
  {
    v5 = [(HFPinCodeItem *)self home];
    v6 = [(HFPinCodeItem *)self userLabel];
    v7 = [v6 user];
    v8 = [v5 hf_handleForUser:v7];
  }

  else
  {
    v9 = [(HFPinCodeItem *)self userLabel];
    v10 = [v9 removedUserInfo];
    v5 = [v10 userID];

    if (v5)
    {
      v8 = [[HFUserHandle alloc] initWithType:1 userID:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isUnknownGuest
{
  if (![(HFPinCodeItem *)self isGuest])
  {
    return 0;
  }

  v3 = [(HFPinCodeItem *)self _userName];
  v4 = [v3 length] == 0;

  return v4;
}

- (BOOL)isUnknownGuestFromMatter
{
  v3 = [(HFPinCodeItem *)self pinCodeValue];
  if ([v3 length])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(HFPinCodeItem *)self userLabel];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(HFPinCodeItem *)self unknownMatterGuestUniqueID];
      v4 = v6 != 0;
    }
  }

  return v4;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HFPinCodeItem *)self _userName];
  if (![v5 length])
  {
    v6 = _HFLocalizedStringWithDefaultValue(@"HFPinCodeUnknownGuestPlaceholderLabel", @"HFPinCodeUnknownGuestPlaceholderLabel", 1);

    [v4 setObject:@"Home.Locks.Pincodes.Guest.Unknown" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
    v5 = v6;
  }

  [v4 setObject:v5 forKeyedSubscript:@"title"];
  [v4 setObject:@"Home.Locks.Pincodes.Guest.Name" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  v7 = [(HFPinCodeItem *)self _userHandle];
  if (!v7)
  {
    v8 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"number.circle.fill" withConfiguration:v8];
    [v4 setObject:v9 forKeyedSubscript:@"iconImage"];
  }

  [v4 na_safeSetObject:v7 forKey:@"userID"];
  v10 = [(HFPinCodeItem *)self userLabel];
  v11 = [v10 user];

  if (v11)
  {
    v12 = MEMORY[0x277CBEB98];
    v13 = [(HFPinCodeItem *)self userLabel];
    v14 = [v13 user];
    v15 = [v12 setWithObject:v14];

    [v4 setObject:v15 forKeyedSubscript:@"dependentHomeKitObjects"];
  }

  v16 = MEMORY[0x277CCABB0];
  v17 = [(HFPinCodeItem *)self isEnabledOnAccessory];
  v18 = [(HFPinCodeItem *)self accessories];
  if ((v17)[2](v17, v18))
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = [v16 numberWithInteger:v19];
  [v4 setObject:v20 forKeyedSubscript:@"state"];

  v21 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v4 setObject:v21 forKeyedSubscript:@"dependentHomeKitClasses"];

  v22 = [(HFPinCodeItem *)self accessories];
  v23 = [v22 na_filter:&__block_literal_global_59_1];

  v24 = [v23 count];
  v25 = [(HFPinCodeItem *)self accessories];
  if (v24 == [v25 count])
  {
    v26 = [(HFPinCodeItem *)self accessories];
    v27 = [v26 count] != 0;
  }

  else
  {
    v27 = 0;
  }

  v28 = [(HFPinCodeItem *)self onAccessory];
  if (v28)
  {
    v29 = [(HFPinCodeItem *)self onAccessory];
    v30 = [v29 isReachable] ^ 1;

    v27 |= v30;
  }

  if (v27)
  {
    v31 = @"HFStatusDescriptionActivityEvents_Error";
  }

  else
  {
    v31 = @"HFPinCodeGuestAccessDescription";
  }

  v32 = [MEMORY[0x277CCABB0] numberWithBool:v27 & 1];
  [v4 setObject:v32 forKeyedSubscript:@"isDisabled"];

  v33 = _HFLocalizedStringWithDefaultValue(v31, v31, 1);
  [v4 setObject:v33 forKeyedSubscript:@"detailText"];

  v34 = MEMORY[0x277D2C900];
  v35 = [HFItemUpdateOutcome outcomeWithResults:v4];
  v36 = [v34 futureWithResult:v35];

  return v36;
}

@end