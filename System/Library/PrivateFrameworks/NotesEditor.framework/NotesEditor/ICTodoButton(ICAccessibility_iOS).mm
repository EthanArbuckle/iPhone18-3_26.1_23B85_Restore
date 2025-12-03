@interface ICTodoButton(ICAccessibility_iOS)
- (BOOL)isAccessibilityElement;
- (id)_icaxNote;
- (id)_icaxParentTextView;
- (id)accessibilityAttributedLabel;
- (id)accessibilityContainer;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomRotors;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityUserInputLabels;
- (id)icaxBaseAccessibilityLabel;
- (id)icaxDragSourceName;
- (id)supportedRotorTypes;
- (uint64_t)_accessibilitySupportsActivateAction;
- (uint64_t)_icaxBeginEditingAtEndOfCorrespondingParagraph;
- (uint64_t)accessibilityActivate;
- (uint64_t)textRangeInNote;
@end

@implementation ICTodoButton(ICAccessibility_iOS)

- (BOOL)isAccessibilityElement
{
  window = [self window];
  v2 = window != 0;

  return v2;
}

- (id)accessibilityContainer
{
  v6.receiver = self;
  v6.super_class = &off_282810170;
  v1 = objc_msgSendSuper2(&v6, sel_accessibilityContainer);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    while (![v3 conformsToProtocol:&unk_28282EDC0])
    {
      accessibilityContainer = [v3 accessibilityContainer];

      v3 = accessibilityContainer;
      if (!accessibilityContainer)
      {
        goto LABEL_8;
      }
    }

    v3 = v3;

    v2 = v3;
  }

  else
  {
    v3 = 0;
  }

LABEL_8:

  return v2;
}

- (id)icaxBaseAccessibilityLabel
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Checklist item" value:&stru_282757698 table:0];

  icaxCorrespondingParagraphText = [self icaxCorrespondingParagraphText];
  v4 = __ICAccessibilityStringForVariables();

  return v4;
}

- (id)accessibilityAttributedLabel
{
  isDone = [self isDone];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = mainBundle;
  if (isDone)
  {
    v5 = @"completed";
  }

  else
  {
    v5 = @"incomplete";
  }

  v6 = [mainBundle localizedStringForKey:v5 value:&stru_282757698 table:0];

  icaxBaseAccessibilityLabel = [self icaxBaseAccessibilityLabel];
  v8 = [icaxBaseAccessibilityLabel icaxAttributedStringWithLowPitchPrefix:v6];

  return v8;
}

- (id)accessibilityUserInputLabels
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = [v2 initWithArray:MEMORY[0x277CBEBF8]];
  icaxCorrespondingParagraphText = [self icaxCorrespondingParagraphText];
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" -"];
  v6 = [icaxCorrespondingParagraphText componentsSeparatedByCharactersInSet:v5];
  if ([v6 count] >= 5)
  {
    v7 = [v6 subarrayWithRange:{0, 4}];
    v8 = [v7 componentsJoinedByString:@" "];
    if (v8)
    {
      [v3 addObject:v8];
    }
  }

  if (icaxCorrespondingParagraphText)
  {
    [v3 addObject:icaxCorrespondingParagraphText];
  }

  accessibilityAttributedLabel = [self accessibilityAttributedLabel];
  string = [accessibilityAttributedLabel string];

  if ([string length])
  {
    [v3 addObject:string];
  }

  return v3;
}

- (id)icaxDragSourceName
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [mainBundle localizedStringForKey:@"Checklist item" value:&stru_282757698 table:0];

  return v1;
}

- (id)accessibilityDragSourceDescriptors
{
  _icaxParentTextView = [self _icaxParentTextView];
  accessibilityDragSourceDescriptors = [_icaxParentTextView accessibilityDragSourceDescriptors];

  return accessibilityDragSourceDescriptors;
}

- (id)accessibilityDropPointDescriptors
{
  _icaxParentTextView = [self _icaxParentTextView];
  accessibilityDropPointDescriptors = [_icaxParentTextView accessibilityDropPointDescriptors];

  return accessibilityDropPointDescriptors;
}

- (uint64_t)_accessibilitySupportsActivateAction
{
  _icaxNote = [self _icaxNote];
  isEditable = [_icaxNote isEditable];

  return isEditable;
}

- (uint64_t)accessibilityActivate
{
  _icaxParentTextView = [self _icaxParentTextView];
  _icaxNote = [self _icaxNote];
  isEditable = [_icaxNote isEditable];

  if (isEditable)
  {
    if (([self accessibilityElementIsFocused] & 1) != 0 || objc_msgSend(_icaxParentTextView, "isFirstResponder"))
    {
      isDone = [self isDone];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = mainBundle;
      if (isDone)
      {
        v8 = @"incomplete: %@";
      }

      else
      {
        v8 = @"completed: %@";
      }

      v9 = [mainBundle localizedStringForKey:v8 value:&stru_282757698 table:0];

      v10 = MEMORY[0x277CCACA8];
      icaxCorrespondingParagraphText = [self icaxCorrespondingParagraphText];
      v12 = [v10 localizedStringWithFormat:v9, icaxCorrespondingParagraphText];

      [self sendActionsForControlEvents:64];
      ICAccessibilityPostHighPriorityAnnouncementNotification();
    }

    else if (UIAccessibilityIsSwitchControlRunning())
    {
      [self sendActionsForControlEvents:64];
    }

    else
    {
      [self _icaxBeginEditingAtEndOfCorrespondingParagraph];
    }
  }

  return isEditable;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x277CBEB18] array];
  _icaxNote = [self _icaxNote];
  isEditable = [_icaxNote isEditable];

  if (isEditable)
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [mainBundle localizedStringForKey:@"Edit checklist item" value:&stru_282757698 table:0];

    v7 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v6 target:self selector:sel__icaxBeginEditingAtEndOfCorrespondingParagraph];
    [array addObject:v7];
  }

  v8 = [array copy];

  return v8;
}

- (id)accessibilityCustomRotors
{
  _icaxParentTextView = [self _icaxParentTextView];
  editorController = [_icaxParentTextView editorController];
  v3 = +[ICAccessibilityCustomRotorController sharedInstance];
  [v3 setNoteEditorViewController:editorController];

  v4 = +[ICAccessibilityCustomRotorController sharedInstance];
  sharedTextViewRotors = [v4 sharedTextViewRotors];

  return sharedTextViewRotors;
}

- (id)_icaxParentTextView
{
  superview = [self superview];
  objc_opt_class();
  while ((objc_opt_isKindOfClass() & 1) == 0 && superview)
  {
    v2 = superview;
    superview = [superview superview];

    objc_opt_class();
  }

  return superview;
}

- (uint64_t)_icaxBeginEditingAtEndOfCorrespondingParagraph
{
  _icaxParentTextView = [self _icaxParentTextView];
  trackedParagraph = [self trackedParagraph];
  characterRange = [trackedParagraph characterRange];
  v6 = v5;

  if ([_icaxParentTextView isFirstResponder])
  {
    [_icaxParentTextView setSelectedRange:{v6 + characterRange - 1, 0}];
  }

  else
  {
    [_icaxParentTextView icaxBeginEditingInStorageRange:{v6 + characterRange - 1, 0}];
  }

  return 1;
}

- (id)_icaxNote
{
  _icaxParentTextView = [self _icaxParentTextView];
  editorController = [_icaxParentTextView editorController];
  note = [editorController note];

  return note;
}

- (id)supportedRotorTypes
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = @"ICAccessibilityRotorTypeChecklist";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:1];

  return v0;
}

- (uint64_t)textRangeInNote
{
  trackedParagraph = [self trackedParagraph];
  characterRange = [trackedParagraph characterRange];

  return characterRange;
}

@end