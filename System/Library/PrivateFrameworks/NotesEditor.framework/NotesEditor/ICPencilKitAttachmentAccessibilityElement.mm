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
- (ICPencilKitAttachmentAccessibilityElement)initWithTextAttachment:(id)attachment textView:(id)view;
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

- (ICPencilKitAttachmentAccessibilityElement)initWithTextAttachment:(id)attachment textView:(id)view
{
  attachmentCopy = attachment;
  viewCopy = view;
  accessibilityContainer = [viewCopy accessibilityContainer];
  v9 = ICAccessibilityFindReparentingTarget(accessibilityContainer);

  if (v9)
  {
    v13.receiver = self;
    v13.super_class = ICPencilKitAttachmentAccessibilityElement;
    v10 = [(ICPencilKitAttachmentAccessibilityElement *)&v13 initWithAccessibilityContainer:v9];
    v11 = v10;
    if (v10)
    {
      objc_storeWeak(&v10->_textAttachment, attachmentCopy);
      objc_storeWeak(&v11->_textView, viewCopy);
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
  canvasGenerationToolView = [(ICPencilKitAttachmentAccessibilityElement *)self canvasGenerationToolView];
  v3 = canvasGenerationToolView != 0;

  return v3;
}

- (id)canvasGenerationToolView
{
  attachmentDrawingView = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
  subviews = [attachmentDrawingView subviews];
  v4 = [subviews ax_firstObjectUsingBlock:&__block_literal_global_8];

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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"handwriting attachment" value:&stru_282757698 table:0];

  return v3;
}

- (id)accessibilityValue
{
  textView = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  editorController = [textView editorController];
  note = [editorController note];
  calculateAccessibilityController = [note calculateAccessibilityController];
  rangeInTextStorage = [(ICPencilKitAttachmentAccessibilityElement *)self rangeInTextStorage];
  v9 = [calculateAccessibilityController getValueForPencilKitAttachmentAtRange:{rangeInTextStorage, v8}];

  if ([v9 length])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    handwritingSummary = [mainBundle localizedStringForKey:@"Handwritten math: %@" value:&stru_282757698 table:0];

    v12 = [MEMORY[0x277CCACA8] localizedStringWithFormat:handwritingSummary, v9];
  }

  else
  {
    textAttachment = [(ICPencilKitAttachmentAccessibilityElement *)self textAttachment];
    attachment = [textAttachment attachment];
    handwritingSummary = [attachment handwritingSummary];

    if ([handwritingSummary length])
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v16 = [mainBundle2 localizedStringForKey:@"Possible handwriting: %@" value:&stru_282757698 table:0];

      v12 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v16, handwritingSummary];
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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v2 = [mainBundle localizedStringForKey:@"Double tap to show resize handles." value:&stru_282757698 table:0];
  }

  return v2;
}

- (BOOL)accessibilityActivate
{
  attachmentDrawingView = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
  isFirstResponder = [attachmentDrawingView isFirstResponder];

  if ((isFirstResponder & 1) == 0)
  {
    _UIAccessibilityBlockPostingOfNotification();
    attachmentDrawingView2 = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
    [attachmentDrawingView2 becomeFirstResponder];

    _UIAccessibilityUnblockPostingOfNotification();
    resizeHandleElements = [(ICPencilKitAttachmentAccessibilityElement *)self resizeHandleElements];
    firstObject = [resizeHandleElements firstObject];
    isEnabled = [firstObject isEnabled];

    if (isEnabled)
    {
      v9 = *MEMORY[0x277D76488];
      resizeHandleElements2 = [(ICPencilKitAttachmentAccessibilityElement *)self resizeHandleElements];
      firstObject2 = [resizeHandleElements2 firstObject];
      UIAccessibilityPostNotification(v9, firstObject2);
    }
  }

  return isFirstResponder ^ 1;
}

- (CGRect)accessibilityFrame
{
  attachmentDrawingView = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
  [attachmentDrawingView accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  attachmentDrawingView2 = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
  window = [attachmentDrawingView2 window];
  [window bounds];
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
  accessibilityContainer = [(ICPencilKitAttachmentAccessibilityElement *)&v5 accessibilityContainer];
  v3 = ICAccessibilityFindReparentingTarget(accessibilityContainer);

  return v3;
}

- (id)accessibilityCustomActions
{
  v3 = MEMORY[0x277CBEB18];
  v12.receiver = self;
  v12.super_class = ICPencilKitAttachmentAccessibilityElement;
  accessibilityCustomActions = [(ICPencilKitAttachmentAccessibilityElement *)&v12 accessibilityCustomActions];
  v5 = [v3 arrayWithArray:accessibilityCustomActions];

  if (![(ICPencilKitAttachmentAccessibilityElement *)self isSelected])
  {
    v6 = objc_alloc(MEMORY[0x277D75088]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v8 = [mainBundle localizedStringForKey:@"Select" value:&stru_282757698 table:0];
    v9 = [v6 initWithName:v8 target:self selector:sel_selectTextRangeAction];

    [v5 addObject:v9];
  }

  v10 = [v5 copy];

  return v10;
}

- (id)accessibilityCustomRotors
{
  textView = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  editorController = [textView editorController];
  v4 = +[ICAccessibilityCustomRotorController sharedInstance];
  [v4 setNoteEditorViewController:editorController];

  v5 = +[ICAccessibilityCustomRotorController sharedInstance];
  sharedTextViewRotors = [v5 sharedTextViewRotors];

  return sharedTextViewRotors;
}

- (id)accessibilityDragSourceDescriptors
{
  if ([(ICPencilKitAttachmentAccessibilityElement *)self isSelected])
  {
    textView = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
    accessibilityDragSourceDescriptors = [textView accessibilityDragSourceDescriptors];
  }

  else
  {
    accessibilityDragSourceDescriptors = 0;
  }

  return accessibilityDragSourceDescriptors;
}

- (UIView)attachmentDrawingView
{
  rangeInTextStorage = [(ICPencilKitAttachmentAccessibilityElement *)self rangeInTextStorage];
  textView = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  superview = [textView superview];

  view = 0;
  if (superview && rangeInTextStorage != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (ICInternalSettingsIsTextKit2Enabled())
    {
      textView2 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
      textAttachment = [(ICPencilKitAttachmentAccessibilityElement *)self textAttachment];
      textView3 = [textView2 _pk_viewProviderForAttachment:textAttachment atCharacterIndex:rangeInTextStorage createIfNeeded:1];
      view = [textView3 view];
    }

    else
    {
      textView2 = [(ICPencilKitAttachmentAccessibilityElement *)self textAttachment];
      textAttachment = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
      textView3 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
      layoutManager = [textView3 layoutManager];
      v11 = [textView2 viewProviderForParentView:textAttachment characterIndex:rangeInTextStorage layoutManager:layoutManager];
      view = [v11 view];
    }
  }

  return view;
}

- (_NSRange)rangeInTextStorage
{
  textView = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  textStorage = [textView textStorage];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3010000000;
  v15 = &unk_21552D17E;
  v16 = xmmword_2154BBE70;
  v5 = [textStorage length];
  v6 = *MEMORY[0x277D74060];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__ICPencilKitAttachmentAccessibilityElement_rangeInTextStorage__block_invoke;
  v11[3] = &unk_2781AC9B8;
  v11[4] = self;
  v11[5] = &v12;
  [textStorage enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v11}];
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
  cachedResizeHandleElements = [(ICPencilKitAttachmentAccessibilityElement *)self cachedResizeHandleElements];

  if (cachedResizeHandleElements)
  {
    goto LABEL_31;
  }

  array = [MEMORY[0x277CBEB18] array];
  attachmentDrawingView = [(ICPencilKitAttachmentAccessibilityElement *)self attachmentDrawingView];
  textAttachment = [(ICPencilKitAttachmentAccessibilityElement *)self textAttachment];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v27 = attachmentDrawingView;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    subviews = [attachmentDrawingView subviews];
    v9 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(subviews);
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

        v10 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    attachmentDrawingView = v27;
    goto LABEL_24;
  }

  textAttachment2 = [(ICPencilKitAttachmentAccessibilityElement *)self textAttachment];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    v12 = [attachmentDrawingView safeValueForKey:@"topResizeView"];
    v11 = [attachmentDrawingView safeValueForKey:@"bottomResizeView"];
LABEL_24:
    if (v12)
    {
      v22 = [[ICPencilKitAttachmentResizeHandleAccessibilityElement alloc] initWithAttachmentAccessibilityElement:self drawingResizeView:v12];
      [array addObject:v22];
    }

    if (v11)
    {
      v23 = [[ICPencilKitAttachmentResizeHandleAccessibilityElement alloc] initWithAttachmentAccessibilityElement:self drawingResizeView:v11];
      [array addObject:v23];
    }

    goto LABEL_28;
  }

  v11 = 0;
  v12 = 0;
LABEL_28:
  if ([array count])
  {
    v24 = [array copy];
    [(ICPencilKitAttachmentAccessibilityElement *)self setCachedResizeHandleElements:v24];
  }

LABEL_31:
  cachedResizeHandleElements2 = [(ICPencilKitAttachmentAccessibilityElement *)self cachedResizeHandleElements];

  return cachedResizeHandleElements2;
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
  textView = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  textView2 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  [textView select:textView2];

  textView3 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  textRangeInNote = [(ICPencilKitAttachmentAccessibilityElement *)self textRangeInNote];
  [textView3 setSelectedRange:{textRangeInNote, v7}];

  textView4 = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  textRangeInNote2 = [(ICPencilKitAttachmentAccessibilityElement *)self textRangeInNote];
  [textView4 scrollRangeToVisible:{textRangeInNote2, v10}];

  _UIAccessibilityUnblockPostingOfAllNotifications();
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle localizedStringForKey:@"Selected %@. Use the actions rotor to start dragging." value:&stru_282757698 table:0];

  v13 = MEMORY[0x277CCACA8];
  accessibilityLabel = [(ICPencilKitAttachmentAccessibilityElement *)self accessibilityLabel];
  v15 = [v13 localizedStringWithFormat:v12, accessibilityLabel];

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
  textRangeInNote = [(ICPencilKitAttachmentAccessibilityElement *)self textRangeInNote];
  v5 = v4;
  textView = [(ICPencilKitAttachmentAccessibilityElement *)self textView];
  v9 = textRangeInNote == [textView selectedRange] && v5 == v7;

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