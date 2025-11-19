@interface ICInlineCanvasTextAttachment
- (id)imageForBounds:(CGRect)a3 attributes:(id)a4 location:(id)a5 textContainer:(id)a6;
- (void)setViewSelected:(BOOL)a3 inWindow:(id)a4;
- (void)updatePaletteVisibility;
- (void)updatePaletteVisibilityToVisible:(BOOL)a3;
@end

@implementation ICInlineCanvasTextAttachment

- (void)updatePaletteVisibility
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(ICInlineCanvasTextAttachment *)self inlineViews];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 window];
        v9 = [ICInkPaletteController sharedToolPickerForWindow:v8];

        if ([v9 isVisible])
        {
          v10 = 1;
        }

        else
        {
          v10 = [v9 _isAnimatingToVisible];
        }

        [v9 setVisible:v10 forFirstResponder:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)updatePaletteVisibilityToVisible:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(ICInlineCanvasTextAttachment *)self inlineViews];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 window];
        v11 = [ICInkPaletteController sharedToolPickerForWindow:v10];

        [v11 setVisible:v3 forFirstResponder:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)setViewSelected:(BOOL)a3 inWindow:(id)a4
{
  v4 = a3;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(ICInlineCanvasTextAttachment *)self attachmentViews];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) window];

        if (v13 == v6)
        {
          objc_opt_class();
          v14 = ICCheckedDynamicCast();
          [v14 setAttachmentChromeVisible:v4 animated:0 highlightBackground:0];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (id)imageForBounds:(CGRect)a3 attributes:(id)a4 location:(id)a5 textContainer:(id)a6
{
  v7 = a6;
  v8 = [v7 textView];
  v9 = [v8 traitCollection];

  v10 = -[ICBaseTextAttachment printableTextContentForAppearanceType:traitCollection:textContainer:](self, "printableTextContentForAppearanceType:traitCollection:textContainer:", [v9 ic_isDark], v9, v7);

  v11 = [v10 attribute:*MEMORY[0x1E69DB5F8] atIndex:0 effectiveRange:0];
  objc_opt_class();
  v12 = ICDynamicCast();
  v13 = [v12 image];

  return v13;
}

@end