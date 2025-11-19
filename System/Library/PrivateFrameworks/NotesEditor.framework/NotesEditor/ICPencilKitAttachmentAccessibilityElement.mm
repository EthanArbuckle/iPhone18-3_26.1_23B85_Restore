@interface ICPencilKitAttachmentAccessibilityElement
- (BOOL)accessibilityActivate;
- (BOOL)isSelected;
- (BOOL)isShowingGenerationPrompt;
- (BOOL)selectTextRangeAction;
- (BOOL)showingResizeHandles;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (ICEditingTextView)textView;
- (ICInlineCanvasTextAttachment)textAttachment;
- (ICPencilKitAttachmentAccessibilityElement)initWithTextAttachment:(id)a3 textView:(id)a4;
- (NSArray)resizeHandleElements;
- (NSArray)supportedRotorTypes;
- (UIView)attachmentDrawingView;
- (_NSRange)rangeInTextStorage;
- (id)accessibilityContainer;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomRotors;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (id)canvasGenerationToolView;
@end

@implementation ICPencilKitAttachmentAccessibilityElement

- (ICPencilKitAttachmentAccessibilityElement)initWithTextAttachment:(id)a3 textView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 accessibilityContainer];
  v9 = ICAccessibilityFindReparentingTarget(v8);

  if (v9)
  {
    v13.receiver = self;
    v13.super_class = ICPencilKitAttachmentAccessibilityElement;
    v10 = [(ICPencilKitAttachmentAccessibilityElement *)&v13 initWithAccessibilityContainer:v9];
    v11 = v10;
    if (v10)
    {
      objc_storeWeak(&v10->_textAttachment, v6);
      objc_storeWeak(&v11->_textView, v7);
    }
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (BOOL)isShowingGenerationPrompt
{
  v2 = [(ICPencilKitAttachmentAccessibilityElement *)self canvasGenerationToolView];
  v3 = v2 != 0;

  return v3;
}

- (id)canvasGenerationToolView
{
  v2 = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
  v3 = [v2 subviews];
  v4 = [v3 ax_firstObjectUsingBlock:&__block_literal_global_8];

  return v4;
}

uint64_t __69__ICPencilKitAttachmentAccessibilityElement_canvasGenerationToolView__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 className];
  v3 = [v2 isEqualToString:@"PaperKit.CanvasGenerationTool"];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"handwriting attachment" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityValue
{
  v3 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  v4 = [v3 editorController];
  v5 = [v4 note];
  v6 = [v5 calculateAccessibilityController];
  v7 = [(ICPencilKitAttachmentAccessibilityElement *)self rangeInTextStorage];
  v9 = [v6 getValueForPencilKitAttachmentAtRange:{v7, v8}];

  if ([v9 length])
  {
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:@"Handwritten math: %@" value:&stru_282757698 table:0];

    v12 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v11, v9];
  }

  else
  {
    v13 = [(ICPencilKitAttachmentAccessibilityElement *)self textAttachment];
    v14 = [v13 attachment];
    v11 = [v14 handwritingSummary];

    if ([v11 length])
    {
      v15 = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [v15 localizedStringForKey:@"Possible handwriting: %@" value:&stru_282757698 table:0];

      v12 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v16, v11];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)accessibilityHint
{
  if ([(ICPencilKitAttachmentAccessibilityElement *)self showingResizeHandles])
  {
    v2 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v2 = [v3 localizedStringForKey:@"Double tap to show resize handles." value:&stru_282757698 table:0];
  }

  return v2;
}

- (BOOL)accessibilityActivate
{
  v3 = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
  v4 = [v3 isFirstResponder];

  if ((v4 & 1) == 0)
  {
    _UIAccessibilityBlockPostingOfNotification();
    v5 = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
    [v5 becomeFirstResponder];

    _UIAccessibilityUnblockPostingOfNotification();
    v6 = [(ICPencilKitAttachmentAccessibilityElement *)self resizeHandleElements];
    v7 = [v6 firstObject];
    v8 = [v7 isEnabled];

    if (v8)
    {
      v9 = *MEMORY[0x277D76488];
      v10 = [(ICPencilKitAttachmentAccessibilityElement *)self resizeHandleElements];
      v11 = [v10 firstObject];
      UIAccessibilityPostNotification(v9, v11);
    }
  }

  return v4 ^ 1;
}

- (CGRect)accessibilityFrame
{
  v3 = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
  [v3 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
  v13 = [v12 window];
  [v13 bounds];
  v29.origin.x = v14;
  v29.origin.y = v15;
  v29.size.width = v16;
  v29.size.height = v17;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v27 = CGRectIntersection(v26, v29);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;

  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  v3 = -1.0;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v5 = -1.0;
  if (!IsVoiceOverRunning)
  {
    v8.receiver = self;
    v8.super_class = ICPencilKitAttachmentAccessibilityElement;
    [(ICPencilKitAttachmentAccessibilityElement *)&v8 accessibilityActivationPoint];
    v3 = v6;
  }

  v7 = v3;
  result.y = v7;
  result.x = v5;
  return result;
}

- (id)accessibilityContainer
{
  v5.receiver = self;
  v5.super_class = ICPencilKitAttachmentAccessibilityElement;
  v2 = [(ICPencilKitAttachmentAccessibilityElement *)&v5 accessibilityContainer];
  v3 = ICAccessibilityFindReparentingTarget(v2);

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = MEMORY[0x277CBEB18];
  v12.receiver = self;
  v12.super_class = ICPencilKitAttachmentAccessibilityElement;
  v4 = [(ICPencilKitAttachmentAccessibilityElement *)&v12 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:v4];

  if (![(ICPencilKitAttachmentAccessibilityElement *)self isSelected])
  {
    v6 = objc_alloc(MEMORY[0x277D75088]);
    v7 = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [v7 localizedStringForKey:@"Select" value:&stru_282757698 table:0];
    v9 = [v6 initWithName:v8 target:self selector:sel_selectTextRangeAction];

    [v5 addObject:v9];
  }

  v10 = [v5 copy];

  return v10;
}

- (id)accessibilityCustomRotors
{
  v2 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  v3 = [v2 editorController];
  v4 = +[ICAccessibilityCustomRotorController sharedInstance];
  [v4 setNoteEditorViewController:v3];

  v5 = +[ICAccessibilityCustomRotorController sharedInstance];
  v6 = [v5 sharedTextViewRotors];

  return v6;
}

- (id)accessibilityDragSourceDescriptors
{
  if ([(ICPencilKitAttachmentAccessibilityElement *)self isSelected])
  {
    v3 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
    v4 = [v3 accessibilityDragSourceDescriptors];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIView)attachmentDrawingView
{
  v3 = [(ICPencilKitAttachmentAccessibilityElement *)self rangeInTextStorage];
  v4 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  v5 = [v4 superview];

  v6 = 0;
  if (v5 && v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      v7 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
      v8 = [(ICPencilKitAttachmentAccessibilityElement *)self textAttachment];
      v9 = [v7 _pk_viewProviderForAttachment:v8 atCharacterIndex:v3 createIfNeeded:1];
      v6 = [v9 view];
    }

    else
    {
      v7 = [(ICPencilKitAttachmentAccessibilityElement *)self textAttachment];
      v8 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
      v9 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
      v10 = [v9 layoutManager];
      v11 = [v7 viewProviderForParentView:v8 characterIndex:v3 layoutManager:v10];
      v6 = [v11 view];
    }
  }

  return v6;
}

- (_NSRange)rangeInTextStorage
{
  v3 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  v4 = [v3 textStorage];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v15 = &unk_21552D17E;
  v16 = xmmword_2154BBE70;
  v5 = [v4 length];
  v6 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__ICPencilKitAttachmentAccessibilityElement_rangeInTextStorage__block_invoke;
  v11[3] = &unk_2781AC9B8;
  v11[4] = self;
  v11[5] = &v12;
  [v4 enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v11}];
  v7 = v13[4];
  v8 = v13[5];
  _Block_object_dispose(&v12, 8);

  v9 = v7;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

void __63__ICPencilKitAttachmentAccessibilityElement_rangeInTextStorage__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 textAttachment];

  if (v11 == v10)
  {
    v12 = *(*(a1 + 40) + 8);
    *(v12 + 32) = a3;
    *(v12 + 40) = a4;
    *a5 = 1;
  }
}

- (NSArray)resizeHandleElements
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(ICPencilKitAttachmentAccessibilityElement *)self cachedResizeHandleElements];

  if (v3)
  {
    goto LABEL_31;
  }

  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
  v6 = [(ICPencilKitAttachmentAccessibilityElement *)self textAttachment];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v27 = v5;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [v5 subviews];
    v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v13 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v8);
          }

          objc_opt_class();
          v15 = ICDynamicCast();
          v16 = v15;
          if (v15)
          {
            v17 = [v15 top];
            v18 = v16;
            if (v17)
            {
              v19 = v12;
            }

            else
            {
              v19 = v11;
            }

            if (v17)
            {
              v12 = v18;
            }

            else
            {
              v11 = v18;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v5 = v27;
    goto LABEL_24;
  }

  v20 = [(ICPencilKitAttachmentAccessibilityElement *)self textAttachment];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v12 = [v5 safeValueForKey:@"topResizeView"];
    v11 = [v5 safeValueForKey:@"bottomResizeView"];
LABEL_24:
    if (v12)
    {
      v22 = [[ICPencilKitAttachmentResizeHandleAccessibilityElement alloc] initWithAttachmentAccessibilityElement:self drawingResizeView:v12];
      [v4 addObject:v22];
    }

    if (v11)
    {
      v23 = [[ICPencilKitAttachmentResizeHandleAccessibilityElement alloc] initWithAttachmentAccessibilityElement:self drawingResizeView:v11];
      [v4 addObject:v23];
    }

    goto LABEL_28;
  }

  v11 = 0;
  v12 = 0;
LABEL_28:
  if ([v4 count])
  {
    v24 = [v4 copy];
    [(ICPencilKitAttachmentAccessibilityElement *)self setCachedResizeHandleElements:v24];
  }

LABEL_31:
  v25 = [(ICPencilKitAttachmentAccessibilityElement *)self cachedResizeHandleElements];

  return v25;
}

- (BOOL)showingResizeHandles
{
  v12 = *MEMORY[0x277D85DE8];
  [(ICPencilKitAttachmentAccessibilityElement *)self resizeHandleElements];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isAccessibilityElement])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)selectTextRangeAction
{
  _UIAccessibilityBlockPostingOfAllNotifications();
  v3 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  v4 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  [v3 select:v4];

  v5 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  v6 = [(ICPencilKitAttachmentAccessibilityElement *)self textRangeInNote];
  [v5 setSelectedRange:{v6, v7}];

  v8 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  v9 = [(ICPencilKitAttachmentAccessibilityElement *)self textRangeInNote];
  [v8 scrollRangeToVisible:{v9, v10}];

  _UIAccessibilityUnblockPostingOfAllNotifications();
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"Selected %@. Use the actions rotor to start dragging." value:&stru_282757698 table:0];

  v13 = MEMORY[0x277CCACA8];
  v14 = [(ICPencilKitAttachmentAccessibilityElement *)self accessibilityLabel];
  v15 = [v13 localizedStringWithFormat:v12, v14];

  UIAccessibilityPostNotification(*MEMORY[0x277D76438], v15);
  return 1;
}

- (NSArray)supportedRotorTypes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"ICAccessibilityRotorTypeAttachments";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (BOOL)isSelected
{
  v3 = [(ICPencilKitAttachmentAccessibilityElement *)self textRangeInNote];
  v5 = v4;
  v6 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  v9 = v3 == [v6 selectedRange] && v5 == v7;

  return v9;
}

- (ICInlineCanvasTextAttachment)textAttachment
{
  WeakRetained = objc_loadWeakRetained(&self->_textAttachment);

  return WeakRetained;
}

- (ICEditingTextView)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end