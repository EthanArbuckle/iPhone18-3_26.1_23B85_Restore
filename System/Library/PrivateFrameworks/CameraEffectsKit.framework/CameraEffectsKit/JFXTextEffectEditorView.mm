@interface JFXTextEffectEditorView
- (BOOL)indirectScribbleInteraction:(id)a3 isElementFocused:(id)a4;
- (CGRect)indirectScribbleInteraction:(id)a3 frameForElement:(id)a4;
- (JFXTextEffectEditorView)initWithFrame:(CGRect)a3 textEditingProperties:(id)a4 textContainer:(id)a5;
- (NSString)text;
- (void)applyTextEditingProperties:(id)a3;
- (void)endEditing;
- (void)indirectScribbleInteraction:(id)a3 focusElementIfNeeded:(id)a4 referencePoint:(CGPoint)a5 completion:(id)a6;
- (void)indirectScribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5;
- (void)selectAll;
@end

@implementation JFXTextEffectEditorView

- (JFXTextEffectEditorView)initWithFrame:(CGRect)a3 textEditingProperties:(id)a4 textContainer:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  [v11 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v69.receiver = self;
  v69.super_class = JFXTextEffectEditorView;
  v21 = [(JFXTextEffectEditorView *)&v69 initWithFrame:x, y, width, height];
  v22 = v21;
  if (v21)
  {
    [(JFXTextEffectEditorView *)v21 setTextEditingProperties:v11];
    if ([v11 useFullTransform])
    {
      v23 = [JFXTextEffectEditorTransformView alloc];
      v24 = [(JFXTextEffectEditorView *)v22 editField];
      v25 = [(JFXTextEffectEditorTransformView *)v23 initWithFrame:v24 textView:v14, v16, v18, v20];
      [(JFXTextEffectEditorView *)v22 setTransformView:v25];
    }

    else
    {
      v24 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v14, v16, v18, v20}];
      [(JFXTextEffectEditorView *)v22 setTransformView:v24];
    }

    v26 = [[JFXTextEffectEditorTextView alloc] initWithTextEditingProperties:v11 editorView:v22 textContainer:v12];
    [(JFXTextEffectEditorView *)v22 setEditField:v26];

    v27 = [(JFXTextEffectEditorView *)v22 transformView];
    [(JFXTextEffectEditorView *)v22 addSubview:v27];

    v28 = [(JFXTextEffectEditorView *)v22 transformView];
    v29 = [(JFXTextEffectEditorView *)v22 editField];
    [v28 addSubview:v29];

    v30 = JFX_getDrawOverlayBoundsOptionsDictionary();
    v31 = [JFXOverlayEffectDebugViewOptions debugViewOptionsWithDictionary:v30];
    [(JFXTextEffectEditorView *)v22 setDebugOptions:v31];

    if (JFX_isDrawOverlayBoundsEnabled())
    {
      v32 = [(JFXTextEffectEditorView *)v22 debugOptions];
      v33 = [v32 showTextBoundingBoxes];

      if (v33)
      {
        v34 = [(JFXTextEffectEditorView *)v22 transformView];
        v35 = [v34 layer];
        [v35 setBorderWidth:2.0];

        v36 = [MEMORY[0x277D75348] magentaColor];
        v37 = [v36 CGColor];
        v38 = [(JFXTextEffectEditorView *)v22 transformView];
        v39 = [v38 layer];
        [v39 setBorderColor:v37];

        v40 = [(JFXTextEffectEditorView *)v22 layer];
        [v40 setBorderWidth:4.0];

        v41 = [MEMORY[0x277D75348] purpleColor];
        v42 = [v41 CGColor];
        v43 = [(JFXTextEffectEditorView *)v22 layer];
        [v43 setBorderColor:v42];

        v44 = [(JFXTextEffectEditorView *)v22 debugView];
        [v44 removeFromSuperview];

        v45 = objc_alloc(MEMORY[0x277D75D18]);
        [(JFXTextEffectEditorView *)v22 frame];
        v46 = [v45 initWithFrame:?];
        [(JFXTextEffectEditorView *)v22 setDebugView:v46];

        v47 = [(JFXTextEffectEditorView *)v22 debugView];
        [v47 setUserInteractionEnabled:0];

        v48 = [(JFXTextEffectEditorView *)v22 debugView];
        v49 = [v48 layer];
        [v49 setBorderWidth:2.0];

        v50 = [MEMORY[0x277D75348] yellowColor];
        v51 = [v50 CGColor];
        v52 = [(JFXTextEffectEditorView *)v22 debugView];
        v53 = [v52 layer];
        [v53 setBorderColor:v51];

        v54 = [(JFXTextEffectEditorView *)v22 transformView];
        v55 = [(JFXTextEffectEditorView *)v22 debugView];
        [v54 addSubview:v55];

        v56 = [MEMORY[0x277CD9ED0] layer];
        v57 = [MEMORY[0x277D75348] grayColor];
        [v56 setBorderColor:{objc_msgSend(v57, "CGColor")}];

        [v56 setBorderWidth:3.0];
        v58 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.25];
        [v56 setBackgroundColor:{objc_msgSend(v58, "CGColor")}];

        v59 = [(JFXTextEffectEditorView *)v22 debugView];
        v60 = [v59 layer];
        [v60 addSublayer:v56];

        v61 = [MEMORY[0x277CD9ED0] layer];
        v62 = [MEMORY[0x277D75348] whiteColor];
        [v61 setBorderColor:{objc_msgSend(v62, "CGColor")}];

        [v61 setBorderWidth:2.0];
        v63 = [(JFXTextEffectEditorView *)v22 debugView];
        v64 = [v63 layer];
        [v64 addSublayer:v61];
      }
    }

    v65 = [(JFXTextEffectEditorView *)v22 textEditingProperties];
    [(JFXTextEffectEditorView *)v22 applyTextEditingProperties:v65];

    v66 = [objc_alloc(MEMORY[0x277D755F8]) initWithDelegate:v22];
    [(JFXTextEffectEditorView *)v22 addInteraction:v66];
    v67 = [MEMORY[0x277CCAD78] UUID];
    [(JFXTextEffectEditorView *)v22 setPencilTextEditingElementID:v67];
  }

  return v22;
}

- (void)applyTextEditingProperties:(id)a3
{
  v4 = a3;
  [(JFXTextEffectEditorView *)self setTextEditingProperties:v4];
  v5 = [(JFXTextEffectEditorView *)self editField];
  [v5 applyTextEditingProperties:v4];

  if (JFX_isDrawOverlayBoundsEnabled())
  {
    v6 = [(JFXTextEffectEditorView *)self debugOptions];
    v7 = [v6 showTextBoundingBoxes];

    if (v7)
    {
      v8 = [(JFXTextEffectEditorView *)self editField];
      [v8 textFrameWithoutFudge];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [(JFXTextEffectEditorView *)self debugView];
      [v17 setFrame:{v10, v12, v14, v16}];

      v18 = [(JFXTextEffectEditorView *)self editField];
      [v18 frame];
      v20 = v19;
      v22 = v21;

      v24 = *MEMORY[0x277CBF348];
      v23 = *(MEMORY[0x277CBF348] + 8);
      v25 = [(JFXTextEffectEditorView *)self debugView];
      v26 = [v25 layer];
      v27 = [v26 sublayers];
      v28 = [v27 objectAtIndexedSubscript:1];
      [v28 setFrame:{v24, v23, v20, v22}];

      v29 = [(JFXTextEffectEditorView *)self editField];
      [v29 textContainerInset];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v41 = [(JFXTextEffectEditorView *)self debugView];
      v38 = [v41 layer];
      v39 = [v38 sublayers];
      v40 = [v39 objectAtIndexedSubscript:0];
      [v40 setFrame:{v24 + v33, v23 + v31, v20 - (v33 + v37), v22 - (v31 + v35)}];
    }
  }
}

- (void)selectAll
{
  v2 = [(JFXTextEffectEditorView *)self editField];
  [v2 selectAll:0];
}

- (void)endEditing
{
  v2 = [(JFXTextEffectEditorView *)self editField];
  [v2 resignFirstResponder];
}

- (NSString)text
{
  v2 = [(JFXTextEffectEditorView *)self editField];
  v3 = [v2 text];

  return v3;
}

- (void)indirectScribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  [(JFXTextEffectEditorView *)self bounds];
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (CGRectContainsRect(v14, v15))
  {
    v11 = [(JFXTextEffectEditorView *)self pencilTextEditingElementID];
    v13[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10[2](v10, v12);
  }

  else
  {
    v10[2](v10, MEMORY[0x277CBEBF8]);
  }
}

- (void)indirectScribbleInteraction:(id)a3 focusElementIfNeeded:(id)a4 referencePoint:(CGPoint)a5 completion:(id)a6
{
  v12 = a6;
  v8 = a4;
  v9 = [(JFXTextEffectEditorView *)self pencilTextEditingElementID];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [(JFXTextEffectEditorView *)self editField];
    v12[2](v12, v11);
  }

  else
  {
    v12[2](v12, 0);
  }
}

- (BOOL)indirectScribbleInteraction:(id)a3 isElementFocused:(id)a4
{
  v5 = a4;
  v6 = [(JFXTextEffectEditorView *)self pencilTextEditingElementID];
  v7 = [v5 isEqual:v6];

  return v7;
}

- (CGRect)indirectScribbleInteraction:(id)a3 frameForElement:(id)a4
{
  v5 = a4;
  v6 = [(JFXTextEffectEditorView *)self pencilTextEditingElementID];
  v7 = [v5 isEqual:v6];

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