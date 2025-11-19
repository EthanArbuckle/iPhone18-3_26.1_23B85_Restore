@interface HUTriggerListSubheadlineItem
- (HUTriggerListSubheadlineItem)init;
- (HUTriggerListSubheadlineItem)initWithRemoteAccessInfo:(id)a3;
- (id)_attributedDescriptionForNoRemoteAccess;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)resultsForRemoteAccessState:(unint64_t)a3;
@end

@implementation HUTriggerListSubheadlineItem

- (HUTriggerListSubheadlineItem)initWithRemoteAccessInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUTriggerListSubheadlineItem;
  v6 = [(HUTriggerListSubheadlineItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_remoteAccessInfo, a3);
  }

  return v7;
}

- (HUTriggerListSubheadlineItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HUTriggerListSubheadlineItem.m" lineNumber:31 description:@"Use -initWithHome:"];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HUTriggerListSubheadlineItem *)self remoteAccessInfo];

  if (!v4)
  {
    NSLog(&cfstr_Remoteaccessin.isa);
  }

  v5 = [(HUTriggerListSubheadlineItem *)self remoteAccessInfo];

  v6 = MEMORY[0x277D2C900];
  if (v5)
  {
    v7 = MEMORY[0x277D14780];
    v8 = [(HUTriggerListSubheadlineItem *)self remoteAccessInfo];
    v9 = -[HUTriggerListSubheadlineItem resultsForRemoteAccessState:](self, "resultsForRemoteAccessState:", [v8 hf_remoteAccessState]);
    v10 = [v7 outcomeWithResults:v9];
    v11 = [v6 futureWithResult:v10];
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v11 = [v6 futureWithError:v8];
  }

  return v11;
}

- (id)resultsForRemoteAccessState:(unint64_t)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
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
  v2 = [MEMORY[0x277D14C80] aboutResidentDeviceURL];
  v12[0] = v2;
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