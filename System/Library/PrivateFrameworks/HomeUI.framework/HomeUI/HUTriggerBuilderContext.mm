@interface HUTriggerBuilderContext
- (HUTriggerBuilderContext)init;
- (HUTriggerBuilderContext)initWithTriggerBuilderContext:(id)a3;
@end

@implementation HUTriggerBuilderContext

- (HUTriggerBuilderContext)initWithTriggerBuilderContext:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerBuilderContext *)self init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v5->_showTriggerEnableSwitch = [v4 showTriggerEnableSwitch];
      v6->_showTriggerSummary = [v4 showTriggerSummary];
      v6->_showTriggerDeleteButton = [v4 showTriggerDeleteButton];
      v6->_showActionSetsInstructions = [v4 showActionSetsInstructions];
      v6->_showConditionTriggers = [v4 showConditionTriggers];
      v6->_allowDurationEditing = [v4 allowDurationEditing];
      allowConvertToShortcut = [v4 allowConvertToShortcut];
    }

    else
    {
      allowConvertToShortcut = v5->_allowConvertToShortcut;
    }

    v6->_allowConvertToShortcut = allowConvertToShortcut;
    v8 = [v4 testActionsInstructionDescription];
    if (v8)
    {
      [(HUTriggerBuilderContext *)v6 setTestActionsInstructionDescription:v8];
    }

    else
    {
      v9 = [(HUTriggerBuilderContext *)v6 testActionsInstructionDescription];
      [(HUTriggerBuilderContext *)v6 setTestActionsInstructionDescription:v9];
    }

    v10 = [v4 serviceActionsInstructionDescription];
    if (v10)
    {
      [(HUTriggerBuilderContext *)v6 setServiceActionsInstructionDescription:v10];
    }

    else
    {
      v11 = [(HUTriggerBuilderContext *)v6 serviceActionsInstructionDescription];
      [(HUTriggerBuilderContext *)v6 setServiceActionsInstructionDescription:v11];
    }

    v12 = [v4 deleteInstructionDescription];
    if (v12)
    {
      [(HUTriggerBuilderContext *)v6 setDeleteInstructionDescription:v12];
    }

    else
    {
      v13 = [(HUTriggerBuilderContext *)v6 deleteInstructionDescription];
      [(HUTriggerBuilderContext *)v6 setDeleteInstructionDescription:v13];
    }

    v14 = [v4 actionEditorInstructionsDescription];
    if (v14)
    {
      [(HUTriggerBuilderContext *)v6 setActionEditorInstructionsDescription:v14];
    }

    else
    {
      v15 = [(HUTriggerBuilderContext *)v6 actionEditorInstructionsDescription];
      [(HUTriggerBuilderContext *)v6 setActionEditorInstructionsDescription:v15];
    }

    v16 = [v4 triggerContextAwareTitle];
    if (v16)
    {
      [(HUTriggerBuilderContext *)v6 setTriggerContextAwareTitle:v16];
    }

    else
    {
      v17 = [(HUTriggerBuilderContext *)v6 triggerContextAwareTitle];
      [(HUTriggerBuilderContext *)v6 setTriggerContextAwareTitle:v17];
    }

    v18 = [v4 unsupportedTriggers];
    if (v18)
    {
      [(HUTriggerBuilderContext *)v6 setUnsupportedTriggers:v18];
    }

    else
    {
      v19 = [(HUTriggerBuilderContext *)v6 unsupportedTriggers];
      [(HUTriggerBuilderContext *)v6 setUnsupportedTriggers:v19];
    }

    v20 = [v4 deleteConfirmationAlertTitle];
    if (v20)
    {
      [(HUTriggerBuilderContext *)v6 setDeleteConfirmationAlertTitle:v20];
    }

    else
    {
      v21 = [(HUTriggerBuilderContext *)v6 deleteConfirmationAlertTitle];
      [(HUTriggerBuilderContext *)v6 setDeleteConfirmationAlertTitle:v21];
    }

    v22 = [v4 deleteConfirmationAlertMessage];
    if (v22)
    {
      [(HUTriggerBuilderContext *)v6 setDeleteConfirmationAlertMessage:v22];
    }

    else
    {
      v23 = [(HUTriggerBuilderContext *)v6 deleteConfirmationAlertMessage];
      [(HUTriggerBuilderContext *)v6 setDeleteConfirmationAlertMessage:v23];
    }

    v24 = [v4 doneButtonTitle];
    if (v24)
    {
      [(HUTriggerBuilderContext *)v6 setDoneButtonTitle:v24];
    }

    else
    {
      v25 = [(HUTriggerBuilderContext *)v6 doneButtonTitle];
      [(HUTriggerBuilderContext *)v6 setDoneButtonTitle:v25];
    }

    v26 = [v4 suggestionItem];
    if (v26)
    {
      [(HUTriggerBuilderContext *)v6 setSuggestionItem:v26];
    }

    else
    {
      v27 = [(HUTriggerBuilderContext *)v6 suggestionItem];
      [(HUTriggerBuilderContext *)v6 setSuggestionItem:v27];
    }
  }

  return v6;
}

- (HUTriggerBuilderContext)init
{
  v12.receiver = self;
  v12.super_class = HUTriggerBuilderContext;
  v2 = [(HUTriggerBuilderContext *)&v12 init];
  v3 = v2;
  if (v2)
  {
    [(HUTriggerBuilderContext *)v2 setShowTriggerSummary:1];
    [(HUTriggerBuilderContext *)v3 setShowTriggerEnableSwitch:1];
    [(HUTriggerBuilderContext *)v3 setShowTriggerDeleteButton:1];
    [(HUTriggerBuilderContext *)v3 setShowActionSetsInstructions:1];
    [(HUTriggerBuilderContext *)v3 setShowConditionTriggers:1];
    [(HUTriggerBuilderContext *)v3 setAllowDurationEditing:1];
    [(HUTriggerBuilderContext *)v3 setAllowConvertToShortcut:1];
    [(HUTriggerBuilderContext *)v3 setFiltersEmptyActionSets:0];
    v4 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryTestTriggerButtonTitle", @"HUTriggerSummaryTestTriggerButtonTitle", 1);
    [(HUTriggerBuilderContext *)v3 setTestActionsInstructionDescription:v4];

    v5 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryAddActionButtonTitle", @"HUTriggerSummaryAddActionButtonTitle", 1);
    [(HUTriggerBuilderContext *)v3 setServiceActionsInstructionDescription:v5];

    v6 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryDeleteTriggerButtonTitle", @"HUTriggerSummaryDeleteTriggerButtonTitle", 1);
    [(HUTriggerBuilderContext *)v3 setDeleteInstructionDescription:v6];

    v7 = _HULocalizedStringWithDefaultValue(@"HUTriggerActionEditorInstructionsDescription", @"HUTriggerActionEditorInstructionsDescription", 1);
    [(HUTriggerBuilderContext *)v3 setActionEditorInstructionsDescription:v7];

    v8 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryDeleteTriggerConfirmationAlertTitleMac", @"HUTriggerSummaryDeleteTriggerConfirmationAlertTitleMac", 1);
    [(HUTriggerBuilderContext *)v3 setDeleteConfirmationAlertTitle:v8];

    v9 = _HULocalizedStringWithDefaultValue(@"HUTriggerSummaryDeleteTriggerConfirmationAlertMessageMac", @"HUTriggerSummaryDeleteTriggerConfirmationAlertMessageMac", 1);
    [(HUTriggerBuilderContext *)v3 setDeleteConfirmationAlertMessage:v9];

    v10 = [MEMORY[0x277CBEB98] set];
    [(HUTriggerBuilderContext *)v3 setUnsupportedTriggers:v10];
  }

  return v3;
}

@end