@interface HUTriggerBuilderContext
- (HUTriggerBuilderContext)init;
- (HUTriggerBuilderContext)initWithTriggerBuilderContext:(id)context;
@end

@implementation HUTriggerBuilderContext

- (HUTriggerBuilderContext)initWithTriggerBuilderContext:(id)context
{
  contextCopy = context;
  v5 = [(HUTriggerBuilderContext *)self init];
  v6 = v5;
  if (v5)
  {
    if (contextCopy)
    {
      v5->_showTriggerEnableSwitch = [contextCopy showTriggerEnableSwitch];
      v6->_showTriggerSummary = [contextCopy showTriggerSummary];
      v6->_showTriggerDeleteButton = [contextCopy showTriggerDeleteButton];
      v6->_showActionSetsInstructions = [contextCopy showActionSetsInstructions];
      v6->_showConditionTriggers = [contextCopy showConditionTriggers];
      v6->_allowDurationEditing = [contextCopy allowDurationEditing];
      allowConvertToShortcut = [contextCopy allowConvertToShortcut];
    }

    else
    {
      allowConvertToShortcut = v5->_allowConvertToShortcut;
    }

    v6->_allowConvertToShortcut = allowConvertToShortcut;
    testActionsInstructionDescription = [contextCopy testActionsInstructionDescription];
    if (testActionsInstructionDescription)
    {
      [(HUTriggerBuilderContext *)v6 setTestActionsInstructionDescription:testActionsInstructionDescription];
    }

    else
    {
      testActionsInstructionDescription2 = [(HUTriggerBuilderContext *)v6 testActionsInstructionDescription];
      [(HUTriggerBuilderContext *)v6 setTestActionsInstructionDescription:testActionsInstructionDescription2];
    }

    serviceActionsInstructionDescription = [contextCopy serviceActionsInstructionDescription];
    if (serviceActionsInstructionDescription)
    {
      [(HUTriggerBuilderContext *)v6 setServiceActionsInstructionDescription:serviceActionsInstructionDescription];
    }

    else
    {
      serviceActionsInstructionDescription2 = [(HUTriggerBuilderContext *)v6 serviceActionsInstructionDescription];
      [(HUTriggerBuilderContext *)v6 setServiceActionsInstructionDescription:serviceActionsInstructionDescription2];
    }

    deleteInstructionDescription = [contextCopy deleteInstructionDescription];
    if (deleteInstructionDescription)
    {
      [(HUTriggerBuilderContext *)v6 setDeleteInstructionDescription:deleteInstructionDescription];
    }

    else
    {
      deleteInstructionDescription2 = [(HUTriggerBuilderContext *)v6 deleteInstructionDescription];
      [(HUTriggerBuilderContext *)v6 setDeleteInstructionDescription:deleteInstructionDescription2];
    }

    actionEditorInstructionsDescription = [contextCopy actionEditorInstructionsDescription];
    if (actionEditorInstructionsDescription)
    {
      [(HUTriggerBuilderContext *)v6 setActionEditorInstructionsDescription:actionEditorInstructionsDescription];
    }

    else
    {
      actionEditorInstructionsDescription2 = [(HUTriggerBuilderContext *)v6 actionEditorInstructionsDescription];
      [(HUTriggerBuilderContext *)v6 setActionEditorInstructionsDescription:actionEditorInstructionsDescription2];
    }

    triggerContextAwareTitle = [contextCopy triggerContextAwareTitle];
    if (triggerContextAwareTitle)
    {
      [(HUTriggerBuilderContext *)v6 setTriggerContextAwareTitle:triggerContextAwareTitle];
    }

    else
    {
      triggerContextAwareTitle2 = [(HUTriggerBuilderContext *)v6 triggerContextAwareTitle];
      [(HUTriggerBuilderContext *)v6 setTriggerContextAwareTitle:triggerContextAwareTitle2];
    }

    unsupportedTriggers = [contextCopy unsupportedTriggers];
    if (unsupportedTriggers)
    {
      [(HUTriggerBuilderContext *)v6 setUnsupportedTriggers:unsupportedTriggers];
    }

    else
    {
      unsupportedTriggers2 = [(HUTriggerBuilderContext *)v6 unsupportedTriggers];
      [(HUTriggerBuilderContext *)v6 setUnsupportedTriggers:unsupportedTriggers2];
    }

    deleteConfirmationAlertTitle = [contextCopy deleteConfirmationAlertTitle];
    if (deleteConfirmationAlertTitle)
    {
      [(HUTriggerBuilderContext *)v6 setDeleteConfirmationAlertTitle:deleteConfirmationAlertTitle];
    }

    else
    {
      deleteConfirmationAlertTitle2 = [(HUTriggerBuilderContext *)v6 deleteConfirmationAlertTitle];
      [(HUTriggerBuilderContext *)v6 setDeleteConfirmationAlertTitle:deleteConfirmationAlertTitle2];
    }

    deleteConfirmationAlertMessage = [contextCopy deleteConfirmationAlertMessage];
    if (deleteConfirmationAlertMessage)
    {
      [(HUTriggerBuilderContext *)v6 setDeleteConfirmationAlertMessage:deleteConfirmationAlertMessage];
    }

    else
    {
      deleteConfirmationAlertMessage2 = [(HUTriggerBuilderContext *)v6 deleteConfirmationAlertMessage];
      [(HUTriggerBuilderContext *)v6 setDeleteConfirmationAlertMessage:deleteConfirmationAlertMessage2];
    }

    doneButtonTitle = [contextCopy doneButtonTitle];
    if (doneButtonTitle)
    {
      [(HUTriggerBuilderContext *)v6 setDoneButtonTitle:doneButtonTitle];
    }

    else
    {
      doneButtonTitle2 = [(HUTriggerBuilderContext *)v6 doneButtonTitle];
      [(HUTriggerBuilderContext *)v6 setDoneButtonTitle:doneButtonTitle2];
    }

    suggestionItem = [contextCopy suggestionItem];
    if (suggestionItem)
    {
      [(HUTriggerBuilderContext *)v6 setSuggestionItem:suggestionItem];
    }

    else
    {
      suggestionItem2 = [(HUTriggerBuilderContext *)v6 suggestionItem];
      [(HUTriggerBuilderContext *)v6 setSuggestionItem:suggestionItem2];
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