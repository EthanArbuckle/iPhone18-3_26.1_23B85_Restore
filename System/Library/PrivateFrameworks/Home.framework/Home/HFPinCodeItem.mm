@interface HFPinCodeItem
+ (id)na_identity;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGuest;
- (BOOL)isUnknownGuest;
- (BOOL)isUnknownGuestFromMatter;
- (HFPinCodeItem)initWithPinCode:(id)code inHome:(id)home onAccessory:(id)accessory;
- (HMUser)user;
- (id)_subclass_updateWithOptions:(id)options;
- (id)_userHandle;
- (id)_userName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)updateFromPinCode:(id)code;
@end

@implementation HFPinCodeItem

- (HFPinCodeItem)initWithPinCode:(id)code inHome:(id)home onAccessory:(id)accessory
{
  codeCopy = code;
  homeCopy = home;
  accessoryCopy = accessory;
  v18.receiver = self;
  v18.super_class = HFPinCodeItem;
  v11 = [(HFPinCodeItem *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, home);
    [(HFPinCodeItem *)v12 updateFromPinCode:codeCopy];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__HFPinCodeItem_initWithPinCode_inHome_onAccessory___block_invoke;
    aBlock[3] = &unk_277DF9B10;
    v17 = accessoryCopy;
    v13 = _Block_copy(aBlock);
    isEnabledOnAccessory = v12->_isEnabledOnAccessory;
    v12->_isEnabledOnAccessory = v13;

    objc_storeStrong(&v12->_onAccessory, accessory);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  home = [(HFPinCodeItem *)self home];
  v6 = v4[11];
  v4[11] = home;

  userLabel = [(HFPinCodeItem *)self userLabel];
  v8 = v4[12];
  v4[12] = userLabel;

  pinCodeValue = [(HFPinCodeItem *)self pinCodeValue];
  v10 = [pinCodeValue copy];
  v11 = v4[8];
  v4[8] = v10;

  accessories = [(HFPinCodeItem *)self accessories];
  v13 = [accessories copy];
  v14 = v4[9];
  v4[9] = v13;

  *(v4 + 56) = [(HFPinCodeItem *)self hasRestrictions];
  isEnabledOnAccessory = [(HFPinCodeItem *)self isEnabledOnAccessory];
  v16 = [isEnabledOnAccessory copy];
  v17 = v4[13];
  v4[13] = v16;

  unknownMatterGuestUniqueID = [(HFPinCodeItem *)self unknownMatterGuestUniqueID];
  v19 = [unknownMatterGuestUniqueID copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (void)updateFromPinCode:(id)code
{
  v16 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v5 = HFLogForCategory(0x37uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = codeCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Updating HFPinCodeItem with values from new HFPinCode. item: %@ PinCode: %@", &v12, 0x16u);
  }

  userLabel = [codeCopy userLabel];
  [(HFPinCodeItem *)self setUserLabel:userLabel];

  pinCodeValue = [codeCopy pinCodeValue];
  [(HFPinCodeItem *)self setPinCodeValue:pinCodeValue];

  -[HFPinCodeItem setHasRestrictions:](self, "setHasRestrictions:", [codeCopy hasRestrictions]);
  accessories = [codeCopy accessories];
  allObjects = [accessories allObjects];
  [(HFPinCodeItem *)self setAccessories:allObjects];

  unknownMatterGuestUniqueID = [codeCopy unknownMatterGuestUniqueID];
  [(HFPinCodeItem *)self setUnknownMatterGuestUniqueID:unknownMatterGuestUniqueID];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  accessories = [(HFPinCodeItem *)self accessories];
  v5 = [v3 appendObject:accessories withName:@"accessories"];

  userLabel = [(HFPinCodeItem *)self userLabel];
  user = [userLabel user];
  v8 = [v3 appendObject:user withName:@"user"];

  userLabel2 = [(HFPinCodeItem *)self userLabel];
  simpleLabel = [userLabel2 simpleLabel];
  v11 = [v3 appendBool:simpleLabel != 0 withName:@"hasSimpleLabel"];

  v12 = [v3 appendBool:-[HFPinCodeItem hasRestrictions](self withName:{"hasRestrictions"), @"hasRestrictions"}];
  userLabel3 = [(HFPinCodeItem *)self userLabel];
  removedUserInfo = [userLabel3 removedUserInfo];
  userUUID = [removedUserInfo userUUID];
  v16 = [v3 appendObject:userUUID withName:@"removedUserUUID"];

  user2 = [(HFPinCodeItem *)self user];
  v18 = [v3 appendObject:user2 withName:@"user"];

  unknownMatterGuestUniqueID = [(HFPinCodeItem *)self unknownMatterGuestUniqueID];
  v20 = [v3 appendObject:unknownMatterGuestUniqueID withName:@"unknownMatterGuestUniqueID"];

  build = [v3 build];

  return build;
}

- (HMUser)user
{
  userLabel = [(HFPinCodeItem *)self userLabel];
  user = [userLabel user];

  return user;
}

- (BOOL)isGuest
{
  userLabel = [(HFPinCodeItem *)self userLabel];
  user = [userLabel user];
  v4 = user == 0;

  return v4;
}

- (id)_userName
{
  userLabel = [(HFPinCodeItem *)self userLabel];
  simpleLabel = [userLabel simpleLabel];
  if (simpleLabel)
  {
    goto LABEL_2;
  }

  user = [(HFPinCodeItem *)self user];
  name = [user name];

  if (!name)
  {
    userLabel2 = [(HFPinCodeItem *)self userLabel];
    userLabel = [userLabel2 removedUserInfo];

    simpleLabel = [userLabel name];
LABEL_2:
    name = simpleLabel;
  }

  return name;
}

- (id)_userHandle
{
  userLabel = [(HFPinCodeItem *)self userLabel];
  user = [userLabel user];

  if (user)
  {
    home = [(HFPinCodeItem *)self home];
    userLabel2 = [(HFPinCodeItem *)self userLabel];
    user2 = [userLabel2 user];
    v8 = [home hf_handleForUser:user2];
  }

  else
  {
    userLabel3 = [(HFPinCodeItem *)self userLabel];
    removedUserInfo = [userLabel3 removedUserInfo];
    home = [removedUserInfo userID];

    if (home)
    {
      v8 = [[HFUserHandle alloc] initWithType:1 userID:home];
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

  _userName = [(HFPinCodeItem *)self _userName];
  v4 = [_userName length] == 0;

  return v4;
}

- (BOOL)isUnknownGuestFromMatter
{
  pinCodeValue = [(HFPinCodeItem *)self pinCodeValue];
  if ([pinCodeValue length])
  {
    v4 = 0;
  }

  else
  {
    userLabel = [(HFPinCodeItem *)self userLabel];
    if (userLabel)
    {
      v4 = 0;
    }

    else
    {
      unknownMatterGuestUniqueID = [(HFPinCodeItem *)self unknownMatterGuestUniqueID];
      v4 = unknownMatterGuestUniqueID != 0;
    }
  }

  return v4;
}

- (id)_subclass_updateWithOptions:(id)options
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _userName = [(HFPinCodeItem *)self _userName];
  if (![_userName length])
  {
    v6 = _HFLocalizedStringWithDefaultValue(@"HFPinCodeUnknownGuestPlaceholderLabel", @"HFPinCodeUnknownGuestPlaceholderLabel", 1);

    [dictionary setObject:@"Home.Locks.Pincodes.Guest.Unknown" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
    _userName = v6;
  }

  [dictionary setObject:_userName forKeyedSubscript:@"title"];
  [dictionary setObject:@"Home.Locks.Pincodes.Guest.Name" forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];
  _userHandle = [(HFPinCodeItem *)self _userHandle];
  if (!_userHandle)
  {
    v8 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"number.circle.fill" withConfiguration:v8];
    [dictionary setObject:v9 forKeyedSubscript:@"iconImage"];
  }

  [dictionary na_safeSetObject:_userHandle forKey:@"userID"];
  userLabel = [(HFPinCodeItem *)self userLabel];
  user = [userLabel user];

  if (user)
  {
    v12 = MEMORY[0x277CBEB98];
    userLabel2 = [(HFPinCodeItem *)self userLabel];
    user2 = [userLabel2 user];
    v15 = [v12 setWithObject:user2];

    [dictionary setObject:v15 forKeyedSubscript:@"dependentHomeKitObjects"];
  }

  v16 = MEMORY[0x277CCABB0];
  isEnabledOnAccessory = [(HFPinCodeItem *)self isEnabledOnAccessory];
  accessories = [(HFPinCodeItem *)self accessories];
  if ((isEnabledOnAccessory)[2](isEnabledOnAccessory, accessories))
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = [v16 numberWithInteger:v19];
  [dictionary setObject:v20 forKeyedSubscript:@"state"];

  v21 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [dictionary setObject:v21 forKeyedSubscript:@"dependentHomeKitClasses"];

  accessories2 = [(HFPinCodeItem *)self accessories];
  v23 = [accessories2 na_filter:&__block_literal_global_59_1];

  v24 = [v23 count];
  accessories3 = [(HFPinCodeItem *)self accessories];
  if (v24 == [accessories3 count])
  {
    accessories4 = [(HFPinCodeItem *)self accessories];
    v27 = [accessories4 count] != 0;
  }

  else
  {
    v27 = 0;
  }

  onAccessory = [(HFPinCodeItem *)self onAccessory];
  if (onAccessory)
  {
    onAccessory2 = [(HFPinCodeItem *)self onAccessory];
    v30 = [onAccessory2 isReachable] ^ 1;

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
  [dictionary setObject:v32 forKeyedSubscript:@"isDisabled"];

  v33 = _HFLocalizedStringWithDefaultValue(v31, v31, 1);
  [dictionary setObject:v33 forKeyedSubscript:@"detailText"];

  v34 = MEMORY[0x277D2C900];
  v35 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
  v36 = [v34 futureWithResult:v35];

  return v36;
}

@end