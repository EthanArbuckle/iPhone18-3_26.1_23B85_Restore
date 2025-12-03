@interface HUTriggerListSubheadlineItem
- (HUTriggerListSubheadlineItem)init;
- (HUTriggerListSubheadlineItem)initWithRemoteAccessInfo:(id)info;
- (id)_attributedDescriptionForNoRemoteAccess;
- (id)_subclass_updateWithOptions:(id)options;
- (id)resultsForRemoteAccessState:(unint64_t)state;
@end

@implementation HUTriggerListSubheadlineItem

- (HUTriggerListSubheadlineItem)initWithRemoteAccessInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = HUTriggerListSubheadlineItem;
  v6 = [(HUTriggerListSubheadlineItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteAccessInfo, info);
  }

  return v7;
}

- (HUTriggerListSubheadlineItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUTriggerListSubheadlineItem.m" lineNumber:31 description:@"Use -initWithHome:"];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)options
{
  remoteAccessInfo = [(HUTriggerListSubheadlineItem *)self remoteAccessInfo];

  if (!remoteAccessInfo)
  {
    NSLog(&cfstr_Remoteaccessin.isa);
  }

  remoteAccessInfo2 = [(HUTriggerListSubheadlineItem *)self remoteAccessInfo];

  v6 = MEMORY[0x277D2C900];
  if (remoteAccessInfo2)
  {
    v7 = MEMORY[0x277D14780];
    remoteAccessInfo3 = [(HUTriggerListSubheadlineItem *)self remoteAccessInfo];
    v9 = -[HUTriggerListSubheadlineItem resultsForRemoteAccessState:](self, "resultsForRemoteAccessState:", [remoteAccessInfo3 hf_remoteAccessState]);
    v10 = [v7 outcomeWithResults:v9];
    v11 = [v6 futureWithResult:v10];
  }

  else
  {
    remoteAccessInfo3 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v11 = [v6 futureWithError:remoteAccessInfo3];
  }

  return v11;
}

- (id)resultsForRemoteAccessState:(unint64_t)state
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (state == 1)
  {
    [(HUTriggerListSubheadlineItem *)self _attributedDescriptionForNoRemoteAccess];
  }

  else
  {
    [(HUTriggerListSubheadlineItem *)self _attributedDescription];
  }
  v3 = ;
  v4 = *MEMORY[0x277D13F98];
  v7[0] = *MEMORY[0x277D13E20];
  v7[1] = v4;
  v8[0] = v3;
  v8[1] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)_attributedDescriptionForNoRemoteAccess
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277D740E8];
  aboutResidentDeviceURL = [MEMORY[0x277D14C80] aboutResidentDeviceURL];
  v12[0] = aboutResidentDeviceURL;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v4 = objc_alloc(MEMORY[0x277CCAB48]);
  v5 = _HULocalizedStringWithDefaultValue(@"HUTriggerListHeadlineDescriptionWithoutResident", @"HUTriggerListHeadlineDescriptionWithoutResident", 1);
  v6 = [v4 initWithString:v5];

  v7 = objc_alloc(MEMORY[0x277CCA898]);
  v8 = _HULocalizedStringWithDefaultValue(@"HUTriggerListHeadlineDescriptionLearnMore", @"HUTriggerListHeadlineDescriptionLearnMore", 1);
  v9 = [v7 initWithString:v8 attributes:v3];

  [v6 appendAttributedString:v9];

  return v6;
}

@end