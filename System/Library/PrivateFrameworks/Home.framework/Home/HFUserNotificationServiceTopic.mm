@interface HFUserNotificationServiceTopic
+ (NAIdentity)na_identity;
+ (id)_activityHistoryTopic;
+ (id)_announceTopic;
+ (id)_applianceTopic;
+ (id)_cameraTopic;
+ (id)_energyTopic;
+ (id)_safetyAndSecurityTopic;
- (BOOL)isEqual:(id)equal;
- (BOOL)isMatter;
- (HFAccessoryType)accessoryType;
- (HFUserNotificationServiceTopic)init;
- (HFUserNotificationServiceTopic)initWithServiceType:(id)type topicNameLocalizationKey:(id)key;
- (HFUserNotificationServiceTopic)initWithServiceTypes:(id)types accessoryCategoryTypes:(id)categoryTypes topicNameLocalizationKey:(id)key accessoryType:(id)type;
- (HFUserNotificationServiceTopic)initWithServiceTypes:(id)types accessoryCategoryTypes:(id)categoryTypes topicNameLocalizationKey:(id)key iconDescriptor:(id)descriptor;
- (HFUserNotificationServiceTopic)initWithTopicNameLocalizationKey:(id)key accessoryType:(id)type;
- (NSString)identifier;
- (unint64_t)hash;
@end

@implementation HFUserNotificationServiceTopic

- (HFUserNotificationServiceTopic)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithServiceTypes_accessoryCategoryTypes_topicNameLocalizationKey_iconDescriptor_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFUserNotificationServiceTopic.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HFUserNotificationServiceTopic init]", v5}];

  return 0;
}

- (HFUserNotificationServiceTopic)initWithServiceType:(id)type topicNameLocalizationKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v7 = MEMORY[0x277D755D0];
  keyCopy = key;
  v9 = [v7 configurationWithPointSize:26.0];
  v10 = [HFServiceIconFactory defaultSymbolIconIdentifierForServiceType:typeCopy];
  v11 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v10 configuration:v9];
  if (!v11)
  {
    v12 = HFLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = typeCopy;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "HFUserNotificationServiceTopic: Couldn't find SF Symbol for service type: %@", &v18, 0xCu);
    }

    v11 = [HFServiceIconFactory defaultIconDescriptorForServiceType:typeCopy serviceSubtype:0];
  }

  v13 = [MEMORY[0x277CBEB98] setWithObject:typeCopy];
  v14 = [MEMORY[0x277CBEB98] set];
  v15 = [(HFUserNotificationServiceTopic *)self initWithServiceTypes:v13 accessoryCategoryTypes:v14 topicNameLocalizationKey:keyCopy iconDescriptor:v11];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (HFUserNotificationServiceTopic)initWithServiceTypes:(id)types accessoryCategoryTypes:(id)categoryTypes topicNameLocalizationKey:(id)key iconDescriptor:(id)descriptor
{
  typesCopy = types;
  categoryTypesCopy = categoryTypes;
  keyCopy = key;
  descriptorCopy = descriptor;
  v20.receiver = self;
  v20.super_class = HFUserNotificationServiceTopic;
  v15 = [(HFUserNotificationServiceTopic *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_serviceTypes, types);
    objc_storeStrong(&v16->_accessoryCategoryTypes, categoryTypes);
    objc_storeStrong(&v16->_topicNameLocalizationKey, key);
    v17 = _HFLocalizedStringWithDefaultValue(keyCopy, keyCopy, 1);
    topicName = v16->_topicName;
    v16->_topicName = v17;

    objc_storeStrong(&v16->_iconDescriptor, descriptor);
  }

  return v16;
}

- (HFUserNotificationServiceTopic)initWithServiceTypes:(id)types accessoryCategoryTypes:(id)categoryTypes topicNameLocalizationKey:(id)key accessoryType:(id)type
{
  typesCopy = types;
  categoryTypesCopy = categoryTypes;
  keyCopy = key;
  typeCopy = type;
  objc_opt_class();
  v13 = typeCopy;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    serviceType = [v15 serviceType];
    v17 = [HFServiceIconFactory defaultSymbolIconIdentifierForServiceType:serviceType];

    v18 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
    v19 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:v17 configuration:v18];
  }

  else
  {
    v19 = 0;
  }

  objc_opt_class();
  v20 = v13;
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (v22)
  {
    v23 = [HFServiceIconFactory iconDescriptorForAccessoryCategoryOrServiceType:0 matterDeviceType:v22];

    v19 = v23;
  }

  v24 = [(HFUserNotificationServiceTopic *)self initWithServiceTypes:typesCopy accessoryCategoryTypes:categoryTypesCopy topicNameLocalizationKey:keyCopy iconDescriptor:v19];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_accessoryType, type);
  }

  return v25;
}

- (HFUserNotificationServiceTopic)initWithTopicNameLocalizationKey:(id)key accessoryType:(id)type
{
  v6 = MEMORY[0x277CBEB98];
  typeCopy = type;
  keyCopy = key;
  v9 = [v6 set];
  v10 = [MEMORY[0x277CBEB98] set];
  v11 = [(HFUserNotificationServiceTopic *)self initWithServiceTypes:v9 accessoryCategoryTypes:v10 topicNameLocalizationKey:keyCopy accessoryType:typeCopy];

  return v11;
}

- (NSString)identifier
{
  serviceTypes = [(HFUserNotificationServiceTopic *)self serviceTypes];
  allObjects = [serviceTypes allObjects];
  v5 = [allObjects sortedArrayUsingComparator:&__block_literal_global_145];
  v6 = [v5 componentsJoinedByString:{@", "}];

  v7 = MEMORY[0x277CCACA8];
  topicName = [(HFUserNotificationServiceTopic *)self topicName];
  v9 = [v7 stringWithFormat:@"service-{%@} topicName-%@", v6, topicName];

  return v9;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_278 != -1)
  {
    dispatch_once(&_MergedGlobals_278, &__block_literal_global_25_11);
  }

  v3 = qword_280E03378;

  return v3;
}

void __45__HFUserNotificationServiceTopic_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_32_2];
  v2 = [v0 appendCharacteristic:&__block_literal_global_34_5];
  v3 = [v0 build];

  v4 = qword_280E03378;
  qword_280E03378 = v3;
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

- (HFAccessoryType)accessoryType
{
  accessoryType = self->_accessoryType;
  if (accessoryType)
  {
    v3 = accessoryType;
  }

  else
  {
    serviceTypes = [(HFUserNotificationServiceTopic *)self serviceTypes];
    anyObject = [serviceTypes anyObject];

    if (anyObject)
    {
      v3 = [HFAccessoryType serviceType:anyObject];
    }

    else
    {
      accessoryCategoryTypes = [(HFUserNotificationServiceTopic *)self accessoryCategoryTypes];
      anyObject2 = [accessoryCategoryTypes anyObject];

      if (anyObject2)
      {
        v3 = [HFAccessoryType categoryType:anyObject2];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

- (BOOL)isMatter
{
  accessoryType = self->_accessoryType;
  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

+ (id)_announceTopic
{
  if (qword_280E03380 != -1)
  {
    dispatch_once(&qword_280E03380, &__block_literal_global_39_1);
  }

  v3 = qword_280E03388;

  return v3;
}

void __48__HFUserNotificationServiceTopic__announceTopic__block_invoke_2()
{
  v0 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
  v1 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"waveform" configuration:v0];
  if (qword_280E03390 != -1)
  {
    dispatch_once(&qword_280E03390, &__block_literal_global_52_2);
  }

  v2 = qword_280E03398;
  v3 = [HFUserNotificationServiceTopic alloc];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFUserNotificationServiceTopic *)v3 initWithServiceTypes:v4 accessoryCategoryTypes:v2 topicNameLocalizationKey:@"HFUserNotificationServiceTopicName_Announce" iconDescriptor:v1];

  v6 = qword_280E03388;
  qword_280E03388 = v5;
}

void __48__HFUserNotificationServiceTopic__announceTopic__block_invoke_5()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = *MEMORY[0x277CCE8B0];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E03398;
  qword_280E03398 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)_safetyAndSecurityTopic
{
  if (qword_280E033A0 != -1)
  {
    dispatch_once(&qword_280E033A0, &__block_literal_global_58_1);
  }

  v3 = qword_280E033A8;

  return v3;
}

void __57__HFUserNotificationServiceTopic__safetyAndSecurityTopic__block_invoke_2()
{
  v0 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
  v1 = [MEMORY[0x277D755B8] hf_safetyAndSecurityImage];
  v2 = [v1 configuration];
  v3 = [v2 configurationByApplyingConfiguration:v0];

  v4 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"house.badge.shield.half.filled.fill" configuration:v3];
  if (qword_280E033B0 != -1)
  {
    dispatch_once(&qword_280E033B0, &__block_literal_global_71_3);
  }

  v5 = qword_280E033B8;
  v6 = [HFUserNotificationServiceTopic alloc];
  v7 = [MEMORY[0x277CBEB98] set];
  v8 = [(HFUserNotificationServiceTopic *)v6 initWithServiceTypes:v7 accessoryCategoryTypes:v5 topicNameLocalizationKey:@"HFUserNotificationServiceTopicName_SafetyAndSecurity" iconDescriptor:v4];

  v9 = qword_280E033A8;
  qword_280E033A8 = v8;
}

void __57__HFUserNotificationServiceTopic__safetyAndSecurityTopic__block_invoke_5()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = *MEMORY[0x277CCE8B0];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E033B8;
  qword_280E033B8 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)_activityHistoryTopic
{
  if (qword_280E033C0 != -1)
  {
    dispatch_once(&qword_280E033C0, &__block_literal_global_75_1);
  }

  v3 = qword_280E033C8;

  return v3;
}

void __55__HFUserNotificationServiceTopic__activityHistoryTopic__block_invoke_2()
{
  v0 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
  v1 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"house.fill" configuration:v0];
  v2 = [HFUserNotificationServiceTopic alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFUserNotificationServiceTopic *)v2 initWithServiceTypes:v3 accessoryCategoryTypes:v4 topicNameLocalizationKey:@"HFUserNotificationServiceTopicName_ActivityHistory" iconDescriptor:v1];

  v6 = qword_280E033C8;
  qword_280E033C8 = v5;
}

+ (id)_cameraTopic
{
  if (qword_280E033D0 != -1)
  {
    dispatch_once(&qword_280E033D0, &__block_literal_global_87);
  }

  v3 = qword_280E033D8;

  return v3;
}

void __46__HFUserNotificationServiceTopic__cameraTopic__block_invoke_2()
{
  v0 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
  v1 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"video.doorbell.fill" configuration:v0];
  if (qword_280E033E0 != -1)
  {
    dispatch_once(&qword_280E033E0, &__block_literal_global_99_1);
  }

  v2 = qword_280E033E8;
  v3 = [HFUserNotificationServiceTopic alloc];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFUserNotificationServiceTopic *)v3 initWithServiceTypes:v4 accessoryCategoryTypes:v2 topicNameLocalizationKey:@"HFUserNotificationServiceTopicName_Camera" iconDescriptor:v1];

  v6 = qword_280E033D8;
  qword_280E033D8 = v5;
}

void __46__HFUserNotificationServiceTopic__cameraTopic__block_invoke_5()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = *MEMORY[0x277CCE948];
  v6[0] = *MEMORY[0x277CCE8B8];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v3 = [v0 setWithArray:v2];
  v4 = qword_280E033E8;
  qword_280E033E8 = v3;

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)_energyTopic
{
  if (qword_280E033F0 != -1)
  {
    dispatch_once(&qword_280E033F0, &__block_literal_global_103_1);
  }

  v3 = qword_280E033F8;

  return v3;
}

void __46__HFUserNotificationServiceTopic__energyTopic__block_invoke_2()
{
  v0 = [MEMORY[0x277D755D0] configurationWithPointSize:26.0];
  v1 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"bolt.fill" configuration:v0];
  v2 = [HFUserNotificationServiceTopic alloc];
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [MEMORY[0x277CBEB98] set];
  v5 = [(HFUserNotificationServiceTopic *)v2 initWithServiceTypes:v3 accessoryCategoryTypes:v4 topicNameLocalizationKey:@"HFUserNotificationServiceTopicName_Energy" iconDescriptor:v1];

  v6 = qword_280E033F8;
  qword_280E033F8 = v5;
}

+ (id)_applianceTopic
{
  if (qword_280E03400 != -1)
  {
    dispatch_once(&qword_280E03400, &__block_literal_global_115_0);
  }

  v3 = qword_280E03408;

  return v3;
}

void __49__HFUserNotificationServiceTopic__applianceTopic__block_invoke_2()
{
  v0 = [MEMORY[0x277CCABB0] numberWithInt:116];
  v1 = [HFAccessoryType matterDeviceType:v0];

  v2 = [[HFUserNotificationServiceTopic alloc] initWithTopicNameLocalizationKey:@"HFUserNotificationServiceTopicName_Appliances" accessoryType:v1];
  v3 = qword_280E03408;
  qword_280E03408 = v2;
}

@end