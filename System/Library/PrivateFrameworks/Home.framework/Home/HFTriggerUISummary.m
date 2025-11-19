@interface HFTriggerUISummary
- (void)_getTriggerName:(id)a3 home:(id)a4;
- (void)_updateWithTrigger:(id)a3 inHome:(id)a4 forceDisabled:(BOOL)a5 ignoringDisabled:(BOOL)a6;
@end

@implementation HFTriggerUISummary

- (void)_updateWithTrigger:(id)a3 inHome:(id)a4 forceDisabled:(BOOL)a5 ignoringDisabled:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  [(HFTriggerUISummary *)self _getTriggerName:v10 home:v11];
  v12 = [v10 isEnabled];
  v13 = [HFTriggerActionSetsBuilder alloc];
  v14 = [v10 actionSets];
  v15 = [(HFTriggerActionSetsBuilder *)v13 initWithActionSets:v14 inHome:v11 filterEmptyActionSets:1];

  v16 = [(HFTriggerActionSetsBuilder *)v15 actionSetsSummary];
  objc_opt_class();
  v26 = v10;
  if (objc_opt_isKindOfClass())
  {
    v17 = v26;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = [v11 hf_remoteAccessState];
  if (v19 == 1 || [v18 triggerActivationState] == 1)
  {
    v20 = _HFLocalizedStringWithDefaultValue(@"HFTriggerDescriptionRemoteAccessStateNotCapable", @"HFTriggerDescriptionRemoteAccessStateNotCapable", 1);
  }

  else
  {
    v20 = [v16 summaryText:v12 & !v7 | v6];
  }

  triggerDescription = self->_triggerDescription;
  self->_triggerDescription = v20;

  v22 = [v16 summaryIconDescriptors];
  triggerSummaryIconDescriptors = self->_triggerSummaryIconDescriptors;
  self->_triggerSummaryIconDescriptors = v22;

  self->_triggerType = [v26 hf_triggerType];
  v24 = [HFTriggerIconFactory iconDescriptorForTrigger:v26];
  triggerIconDescriptor = self->_triggerIconDescriptor;
  self->_triggerIconDescriptor = v24;
}

- (void)_getTriggerName:(id)a3 home:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = [v15 configuredName];
  self->_triggerNameIsConfigured = v7 != 0;

  v8 = [v15 configuredName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v15 name];
  }

  triggerName = self->_triggerName;
  self->_triggerName = v10;

  v12 = [v15 hf_naturalLanguageNameWithHome:v6 type:2];

  triggerNaturalLanguageTitle = self->_triggerNaturalLanguageTitle;
  self->_triggerNaturalLanguageTitle = v12;

  v14 = 32;
  if (self->_triggerNameIsConfigured)
  {
    v14 = 24;
  }

  objc_storeStrong(&self->_triggerDisplayTitle, *(&self->super.isa + v14));
  objc_storeStrong(&self->_triggerTitle, self->_triggerDisplayTitle);
}

@end