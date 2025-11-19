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
  v1 = [a1 window];
  v2 = v1 != 0;

  return v2;
}

- (id)accessibilityContainer
{
  v6.receiver = a1;
  v6.super_class = &off_282810170;
  v1 = objc_msgSendSuper2(&v6, sel_accessibilityContainer);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    while (![v3 conformsToProtocol:&unk_28282EDC0])
    {
      v4 = [v3 accessibilityContainer];

      v3 = v4;
      if (!v4)
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
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Checklist item" value:&stru_282757698 table:0];

  v6 = [a1 icaxCorrespondingParagraphText];
  v4 = __ICAccessibilityStringForVariables();

  return v4;
}

- (id)accessibilityAttributedLabel
{
  v2 = [a1 isDone];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = v3;
  if (v2)
  {
    v5 = @"completed";
  }

  else
  {
    v5 = @"incomplete";
  }

  v6 = [v3 localizedStringForKey:v5 value:&stru_282757698 table:0];

  v7 = [a1 icaxBaseAccessibilityLabel];
  v8 = [v7 icaxAttributedStringWithLowPitchPrefix:v6];

  return v8;
}

- (id)accessibilityUserInputLabels
{
  v2 = objc_alloc(MEMORY[0x277CBEB18]);
  v3 = [v2 initWithArray:MEMORY[0x277CBEBF8]];
  v4 = [a1 icaxCorrespondingParagraphText];
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" -"];
  v6 = [v4 componentsSeparatedByCharactersInSet:v5];
  if ([v6 count] >= 5)
  {
    v7 = [v6 subarrayWithRange:{0, 4}];
    v8 = [v7 componentsJoinedByString:@" "];
    if (v8)
    {
      [v3 addObject:v8];
    }
  }

  if (v4)
  {
    [v3 addObject:v4];
  }

  v9 = [a1 accessibilityAttributedLabel];
  v10 = [v9 string];

  if ([v10 length])
  {
    [v3 addObject:v10];
  }

  return v3;
}

- (id)icaxDragSourceName
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 localizedStringForKey:@"Checklist item" value:&stru_282757698 table:0];

  return v1;
}

- (id)accessibilityDragSourceDescriptors
{
  v1 = [a1 _icaxParentTextView];
  v2 = [v1 accessibilityDragSourceDescriptors];

  return v2;
}

- (id)accessibilityDropPointDescriptors
{
  v1 = [a1 _icaxParentTextView];
  v2 = [v1 accessibilityDropPointDescriptors];

  return v2;
}

- (uint64_t)_accessibilitySupportsActivateAction
{
  v1 = [a1 _icaxNote];
  v2 = [v1 isEditable];

  return v2;
}

- (uint64_t)accessibilityActivate
{
  v2 = [a1 _icaxParentTextView];
  v3 = [a1 _icaxNote];
  v4 = [v3 isEditable];

  if (v4)
  {
    if (([a1 accessibilityElementIsFocused] & 1) != 0 || objc_msgSend(v2, "isFirstResponder"))
    {
      v5 = [a1 isDone];
      v6 = [MEMORY[0x277CCA8D8] mainBundle];
      v7 = v6;
      if (v5)
      {
        v8 = @"incomplete: %@";
      }

      else
      {
        v8 = @"completed: %@";
      }

      v9 = [v6 localizedStringForKey:v8 value:&stru_282757698 table:0];

      v10 = MEMORY[0x277CCACA8];
      v11 = [a1 icaxCorrespondingParagraphText];
      v12 = [v10 localizedStringWithFormat:v9, v11];

      [a1 sendActionsForControlEvents:64];
      ICAccessibilityPostHighPriorityAnnouncementNotification();
    }

    else if (UIAccessibilityIsSwitchControlRunning())
    {
      [a1 sendActionsForControlEvents:64];
    }

    else
    {
      [a1 _icaxBeginEditingAtEndOfCorrespondingParagraph];
    }
  }

  return v4;
}

- (id)accessibilityCustomActions
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [a1 _icaxNote];
  v4 = [v3 isEditable];

  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 localizedStringForKey:@"Edit checklist item" value:&stru_282757698 table:0];

    v7 = [objc_alloc(MEMORY[0x277D75088]) initWithName:v6 target:a1 selector:sel__icaxBeginEditingAtEndOfCorrespondingParagraph];
    [v2 addObject:v7];
  }

  v8 = [v2 copy];

  return v8;
}

- (id)accessibilityCustomRotors
{
  v1 = [a1 _icaxParentTextView];
  v2 = [v1 editorController];
  v3 = +[ICAccessibilityCustomRotorController sharedInstance];
  [v3 setNoteEditorViewController:v2];

  v4 = +[ICAccessibilityCustomRotorController sharedInstance];
  v5 = [v4 sharedTextViewRotors];

  return v5;
}

- (id)_icaxParentTextView
{
  v1 = [a1 superview];
  objc_opt_class();
  while ((objc_opt_isKindOfClass() & 1) == 0 && v1)
  {
    v2 = v1;
    v1 = [v1 superview];

    objc_opt_class();
  }

  return v1;
}

- (uint64_t)_icaxBeginEditingAtEndOfCorrespondingParagraph
{
  v2 = [a1 _icaxParentTextView];
  v3 = [a1 trackedParagraph];
  v4 = [v3 characterRange];
  v6 = v5;

  if ([v2 isFirstResponder])
  {
    [v2 setSelectedRange:{v6 + v4 - 1, 0}];
  }

  else
  {
    [v2 icaxBeginEditingInStorageRange:{v6 + v4 - 1, 0}];
  }

  return 1;
}

- (id)_icaxNote
{
  v1 = [a1 _icaxParentTextView];
  v2 = [v1 editorController];
  v3 = [v2 note];

  return v3;
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
  v1 = [a1 trackedParagraph];
  v2 = [v1 characterRange];

  return v2;
}

@end