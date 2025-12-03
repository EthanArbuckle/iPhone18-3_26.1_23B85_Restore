@interface ICPencilKitAttachmentResizeHandleAccessibilityElement
- (BOOL)isAccessibilityElement;
- (BOOL)isEnabled;
- (BOOL)top;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (ICPencilKitAttachmentAccessibilityElement)attachmentElement;
- (ICPencilKitAttachmentResizeHandleAccessibilityElement)initWithAttachmentAccessibilityElement:(id)element drawingResizeView:(id)view;
- (UIView)drawingResizeView;
- (id)accessibilityContainer;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ICPencilKitAttachmentResizeHandleAccessibilityElement

- (ICPencilKitAttachmentResizeHandleAccessibilityElement)initWithAttachmentAccessibilityElement:(id)element drawingResizeView:(id)view
{
  elementCopy = element;
  viewCopy = view;
  textView = [elementCopy textView];
  accessibilityContainer = [textView accessibilityContainer];
  v10 = ICAccessibilityFindReparentingTarget(accessibilityContainer);

  v14.receiver = self;
  v14.super_class = ICPencilKitAttachmentResizeHandleAccessibilityElement;
  v11 = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)&v14 initWithAccessibilityContainer:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_attachmentElement, elementCopy);
    objc_storeWeak(&v12->_drawingResizeView, viewCopy);
  }

  return v12;
}

- (BOOL)top
{
  drawingResizeView = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)self drawingResizeView];
  [drawingResizeView accessibilityFrame];
  MidY = CGRectGetMidY(v8);
  attachmentElement = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)self attachmentElement];
  [attachmentElement accessibilityFrame];
  v6 = MidY < CGRectGetMidY(v9);

  return v6;
}

- (BOOL)isEnabled
{
  drawingResizeView = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)self drawingResizeView];
  v3 = [drawingResizeView safeBoolForKey:@"enabled"];

  return v3;
}

- (BOOL)isAccessibilityElement
{
  drawingResizeView = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)self drawingResizeView];
  if ([drawingResizeView safeBoolForKey:@"shown"])
  {
    drawingResizeView2 = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)self drawingResizeView];
    if ([drawingResizeView2 isHidden])
    {
      v5 = 0;
    }

    else
    {
      drawingResizeView3 = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)self drawingResizeView];
      [drawingResizeView3 alpha];
      v5 = v7 > 0.0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = ICPencilKitAttachmentResizeHandleAccessibilityElement;
  accessibilityTraits = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)&v7 accessibilityTraits];
  isEnabled = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)self isEnabled];
  v5 = *MEMORY[0x277D76580];
  if (isEnabled)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (id)accessibilityLabel
{
  v2 = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)self top];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = mainBundle;
  if (v2)
  {
    v5 = @"Handwriting area top resize handle";
  }

  else
  {
    v5 = @"Handwriting area bottom resize handle";
  }

  v6 = [mainBundle localizedStringForKey:v5 value:&stru_282757698 table:0];

  return v6;
}

- (id)accessibilityHint
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Double tap and hold value:then drag to resize handwriting area." table:{&stru_282757698, 0}];

  return v3;
}

- (CGRect)accessibilityFrame
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBF398];
  v3 = *(MEMORY[0x277CBF398] + 8);
  v4 = *(MEMORY[0x277CBF398] + 16);
  v5 = *(MEMORY[0x277CBF398] + 24);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  drawingResizeView = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)self drawingResizeView];
  subviews = [drawingResizeView subviews];

  v8 = [subviews countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = v2;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(subviews);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v32.origin.x = v14;
        v32.origin.y = v13;
        v32.size.width = v12;
        v32.size.height = v11;
        v34.origin.x = v2;
        v34.origin.y = v3;
        v34.size.width = v4;
        v34.size.height = v5;
        v17 = CGRectEqualToRect(v32, v34);
        [v16 accessibilityFrame];
        if (!v17)
        {
          v35.origin.x = v14;
          v35.origin.y = v13;
          v35.size.width = v12;
          v35.size.height = v11;
          *&v18 = CGRectUnion(*&v18, v35);
        }

        v14 = v18;
        v13 = v19;
        v12 = v20;
        v11 = v21;
      }

      v9 = [subviews countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = v2;
  }

  v22 = v14;
  v23 = v13;
  v24 = v12;
  v25 = v11;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  drawingResizeView = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)self drawingResizeView];
  v3 = [drawingResizeView safeValueForKey:@"knobView"];

  [v3 accessibilityActivationPoint];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (id)accessibilityContainer
{
  v5.receiver = self;
  v5.super_class = ICPencilKitAttachmentResizeHandleAccessibilityElement;
  accessibilityContainer = [(ICPencilKitAttachmentResizeHandleAccessibilityElement *)&v5 accessibilityContainer];
  v3 = ICAccessibilityFindReparentingTarget(accessibilityContainer);

  return v3;
}

- (ICPencilKitAttachmentAccessibilityElement)attachmentElement
{
  WeakRetained = objc_loadWeakRetained(&self->_attachmentElement);

  return WeakRetained;
}

- (UIView)drawingResizeView
{
  WeakRetained = objc_loadWeakRetained(&self->_drawingResizeView);

  return WeakRetained;
}

@end