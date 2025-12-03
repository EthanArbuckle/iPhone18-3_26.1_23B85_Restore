@interface ICInlineCanvasTextAttachment
- (id)imageForBounds:(CGRect)bounds attributes:(id)attributes location:(id)location textContainer:(id)container;
- (void)setViewSelected:(BOOL)selected inWindow:(id)window;
- (void)updatePaletteVisibility;
- (void)updatePaletteVisibilityToVisible:(BOOL)visible;
@end

@implementation ICInlineCanvasTextAttachment

- (void)updatePaletteVisibility
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  inlineViews = [(ICInlineCanvasTextAttachment *)self inlineViews];
  v3 = [inlineViews countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(inlineViews);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        window = [v7 window];
        v9 = [ICInkPaletteController sharedToolPickerForWindow:window];

        if ([v9 isVisible])
        {
          _isAnimatingToVisible = 1;
        }

        else
        {
          _isAnimatingToVisible = [v9 _isAnimatingToVisible];
        }

        [v9 setVisible:_isAnimatingToVisible forFirstResponder:v7];
      }

      v4 = [inlineViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)updatePaletteVisibilityToVisible:(BOOL)visible
{
  visibleCopy = visible;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  inlineViews = [(ICInlineCanvasTextAttachment *)self inlineViews];
  v5 = [inlineViews countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(inlineViews);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        window = [v9 window];
        v11 = [ICInkPaletteController sharedToolPickerForWindow:window];

        [v11 setVisible:visibleCopy forFirstResponder:v9];
      }

      v6 = [inlineViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)setViewSelected:(BOOL)selected inWindow:(id)window
{
  selectedCopy = selected;
  v20 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  attachmentViews = [(ICInlineCanvasTextAttachment *)self attachmentViews];
  v8 = [attachmentViews copy];

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

        window = [*(*(&v15 + 1) + 8 * v12) window];

        if (window == windowCopy)
        {
          objc_opt_class();
          v14 = ICCheckedDynamicCast();
          [v14 setAttachmentChromeVisible:selectedCopy animated:0 highlightBackground:0];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (id)imageForBounds:(CGRect)bounds attributes:(id)attributes location:(id)location textContainer:(id)container
{
  containerCopy = container;
  textView = [containerCopy textView];
  traitCollection = [textView traitCollection];

  v10 = -[ICBaseTextAttachment printableTextContentForAppearanceType:traitCollection:textContainer:](self, "printableTextContentForAppearanceType:traitCollection:textContainer:", [traitCollection ic_isDark], traitCollection, containerCopy);

  v11 = [v10 attribute:*MEMORY[0x1E69DB5F8] atIndex:0 effectiveRange:0];
  objc_opt_class();
  v12 = ICDynamicCast();
  image = [v12 image];

  return image;
}

@end