@interface JFXTextEffectEditorView
- (BOOL)indirectScribbleInteraction:(id)interaction isElementFocused:(id)focused;
- (CGRect)indirectScribbleInteraction:(id)interaction frameForElement:(id)element;
- (JFXTextEffectEditorView)initWithFrame:(CGRect)frame textEditingProperties:(id)properties textContainer:(id)container;
- (NSString)text;
- (void)applyTextEditingProperties:(id)properties;
- (void)endEditing;
- (void)indirectScribbleInteraction:(id)interaction focusElementIfNeeded:(id)needed referencePoint:(CGPoint)point completion:(id)completion;
- (void)indirectScribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)selectAll;
@end

@implementation JFXTextEffectEditorView

- (JFXTextEffectEditorView)initWithFrame:(CGRect)frame textEditingProperties:(id)properties textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  propertiesCopy = properties;
  containerCopy = container;
  [propertiesCopy frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v69.receiver = self;
  v69.super_class = JFXTextEffectEditorView;
  height = [(JFXTextEffectEditorView *)&v69 initWithFrame:x, y, width, height];
  v22 = height;
  if (height)
  {
    [(JFXTextEffectEditorView *)height setTextEditingProperties:propertiesCopy];
    if ([propertiesCopy useFullTransform])
    {
      v23 = [JFXTextEffectEditorTransformView alloc];
      editField = [(JFXTextEffectEditorView *)v22 editField];
      v25 = [(JFXTextEffectEditorTransformView *)v23 initWithFrame:editField textView:v14, v16, v18, v20];
      [(JFXTextEffectEditorView *)v22 setTransformView:v25];
    }

    else
    {
      editField = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v14, v16, v18, v20}];
      [(JFXTextEffectEditorView *)v22 setTransformView:editField];
    }

    v26 = [[JFXTextEffectEditorTextView alloc] initWithTextEditingProperties:propertiesCopy editorView:v22 textContainer:containerCopy];
    [(JFXTextEffectEditorView *)v22 setEditField:v26];

    transformView = [(JFXTextEffectEditorView *)v22 transformView];
    [(JFXTextEffectEditorView *)v22 addSubview:transformView];

    transformView2 = [(JFXTextEffectEditorView *)v22 transformView];
    editField2 = [(JFXTextEffectEditorView *)v22 editField];
    [transformView2 addSubview:editField2];

    v30 = JFX_getDrawOverlayBoundsOptionsDictionary();
    v31 = [JFXOverlayEffectDebugViewOptions debugViewOptionsWithDictionary:v30];
    [(JFXTextEffectEditorView *)v22 setDebugOptions:v31];

    if (JFX_isDrawOverlayBoundsEnabled())
    {
      debugOptions = [(JFXTextEffectEditorView *)v22 debugOptions];
      showTextBoundingBoxes = [debugOptions showTextBoundingBoxes];

      if (showTextBoundingBoxes)
      {
        transformView3 = [(JFXTextEffectEditorView *)v22 transformView];
        layer = [transformView3 layer];
        [layer setBorderWidth:2.0];

        magentaColor = [MEMORY[0x277D75348] magentaColor];
        cGColor = [magentaColor CGColor];
        transformView4 = [(JFXTextEffectEditorView *)v22 transformView];
        layer2 = [transformView4 layer];
        [layer2 setBorderColor:cGColor];

        layer3 = [(JFXTextEffectEditorView *)v22 layer];
        [layer3 setBorderWidth:4.0];

        purpleColor = [MEMORY[0x277D75348] purpleColor];
        cGColor2 = [purpleColor CGColor];
        layer4 = [(JFXTextEffectEditorView *)v22 layer];
        [layer4 setBorderColor:cGColor2];

        debugView = [(JFXTextEffectEditorView *)v22 debugView];
        [debugView removeFromSuperview];

        v45 = objc_alloc(MEMORY[0x277D75D18]);
        [(JFXTextEffectEditorView *)v22 frame];
        v46 = [v45 initWithFrame:?];
        [(JFXTextEffectEditorView *)v22 setDebugView:v46];

        debugView2 = [(JFXTextEffectEditorView *)v22 debugView];
        [debugView2 setUserInteractionEnabled:0];

        debugView3 = [(JFXTextEffectEditorView *)v22 debugView];
        layer5 = [debugView3 layer];
        [layer5 setBorderWidth:2.0];

        yellowColor = [MEMORY[0x277D75348] yellowColor];
        cGColor3 = [yellowColor CGColor];
        debugView4 = [(JFXTextEffectEditorView *)v22 debugView];
        layer6 = [debugView4 layer];
        [layer6 setBorderColor:cGColor3];

        transformView5 = [(JFXTextEffectEditorView *)v22 transformView];
        debugView5 = [(JFXTextEffectEditorView *)v22 debugView];
        [transformView5 addSubview:debugView5];

        layer7 = [MEMORY[0x277CD9ED0] layer];
        grayColor = [MEMORY[0x277D75348] grayColor];
        [layer7 setBorderColor:{objc_msgSend(grayColor, "CGColor")}];

        [layer7 setBorderWidth:3.0];
        v58 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.25];
        [layer7 setBackgroundColor:{objc_msgSend(v58, "CGColor")}];

        debugView6 = [(JFXTextEffectEditorView *)v22 debugView];
        layer8 = [debugView6 layer];
        [layer8 addSublayer:layer7];

        layer9 = [MEMORY[0x277CD9ED0] layer];
        whiteColor = [MEMORY[0x277D75348] whiteColor];
        [layer9 setBorderColor:{objc_msgSend(whiteColor, "CGColor")}];

        [layer9 setBorderWidth:2.0];
        debugView7 = [(JFXTextEffectEditorView *)v22 debugView];
        layer10 = [debugView7 layer];
        [layer10 addSublayer:layer9];
      }
    }

    textEditingProperties = [(JFXTextEffectEditorView *)v22 textEditingProperties];
    [(JFXTextEffectEditorView *)v22 applyTextEditingProperties:textEditingProperties];

    v66 = [objc_alloc(MEMORY[0x277D755F8]) initWithDelegate:v22];
    [(JFXTextEffectEditorView *)v22 addInteraction:v66];
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(JFXTextEffectEditorView *)v22 setPencilTextEditingElementID:uUID];
  }

  return v22;
}

- (void)applyTextEditingProperties:(id)properties
{
  propertiesCopy = properties;
  [(JFXTextEffectEditorView *)self setTextEditingProperties:propertiesCopy];
  editField = [(JFXTextEffectEditorView *)self editField];
  [editField applyTextEditingProperties:propertiesCopy];

  if (JFX_isDrawOverlayBoundsEnabled())
  {
    debugOptions = [(JFXTextEffectEditorView *)self debugOptions];
    showTextBoundingBoxes = [debugOptions showTextBoundingBoxes];

    if (showTextBoundingBoxes)
    {
      editField2 = [(JFXTextEffectEditorView *)self editField];
      [editField2 textFrameWithoutFudge];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      debugView = [(JFXTextEffectEditorView *)self debugView];
      [debugView setFrame:{v10, v12, v14, v16}];

      editField3 = [(JFXTextEffectEditorView *)self editField];
      [editField3 frame];
      v20 = v19;
      v22 = v21;

      v24 = *MEMORY[0x277CBF348];
      v23 = *(MEMORY[0x277CBF348] + 8);
      debugView2 = [(JFXTextEffectEditorView *)self debugView];
      layer = [debugView2 layer];
      sublayers = [layer sublayers];
      v28 = [sublayers objectAtIndexedSubscript:1];
      [v28 setFrame:{v24, v23, v20, v22}];

      editField4 = [(JFXTextEffectEditorView *)self editField];
      [editField4 textContainerInset];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      debugView3 = [(JFXTextEffectEditorView *)self debugView];
      layer2 = [debugView3 layer];
      sublayers2 = [layer2 sublayers];
      v40 = [sublayers2 objectAtIndexedSubscript:0];
      [v40 setFrame:{v24 + v33, v23 + v31, v20 - (v33 + v37), v22 - (v31 + v35)}];
    }
  }
}

- (void)selectAll
{
  editField = [(JFXTextEffectEditorView *)self editField];
  [editField selectAll:0];
}

- (void)endEditing
{
  editField = [(JFXTextEffectEditorView *)self editField];
  [editField resignFirstResponder];
}

- (NSString)text
{
  editField = [(JFXTextEffectEditorView *)self editField];
  text = [editField text];

  return text;
}

- (void)indirectScribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(JFXTextEffectEditorView *)self bounds];
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (CGRectContainsRect(v14, v15))
  {
    pencilTextEditingElementID = [(JFXTextEffectEditorView *)self pencilTextEditingElementID];
    v13[0] = pencilTextEditingElementID;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    completionCopy[2](completionCopy, v12);
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x277CBEBF8]);
  }
}

- (void)indirectScribbleInteraction:(id)interaction focusElementIfNeeded:(id)needed referencePoint:(CGPoint)point completion:(id)completion
{
  completionCopy = completion;
  neededCopy = needed;
  pencilTextEditingElementID = [(JFXTextEffectEditorView *)self pencilTextEditingElementID];
  v10 = [neededCopy isEqual:pencilTextEditingElementID];

  if (v10)
  {
    editField = [(JFXTextEffectEditorView *)self editField];
    completionCopy[2](completionCopy, editField);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)indirectScribbleInteraction:(id)interaction isElementFocused:(id)focused
{
  focusedCopy = focused;
  pencilTextEditingElementID = [(JFXTextEffectEditorView *)self pencilTextEditingElementID];
  v7 = [focusedCopy isEqual:pencilTextEditingElementID];

  return v7;
}

- (CGRect)indirectScribbleInteraction:(id)interaction frameForElement:(id)element
{
  elementCopy = element;
  pencilTextEditingElementID = [(JFXTextEffectEditorView *)self pencilTextEditingElementID];
  v7 = [elementCopy isEqual:pencilTextEditingElementID];

  if (v7)
  {
    [(JFXTextEffectEditorView *)self bounds];
  }

  else
  {
    v8 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v10 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
  }

  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

@end