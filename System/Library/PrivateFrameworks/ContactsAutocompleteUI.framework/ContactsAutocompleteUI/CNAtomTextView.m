@interface CNAtomTextView
- (BOOL)_hasContent;
- (BOOL)_showViewWithMode:(int64_t)a3 alwaysDefinition:(BOOL)a4;
- (BOOL)_showsClearButton;
- (BOOL)_showsLeadingView;
- (BOOL)_showsTrailingView;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (CGPoint)_firstGlyphBaselineLeftPointWithLayoutManager:(id)a3;
- (CGRect)_rectForBounds:(CGRect)a3 sizingView:(id)a4 isLeft:(BOOL)a5;
- (CGRect)_usedRectWithLayoutManager:(id)a3 textContainer:(id)a4;
- (CGRect)_visibleAtomsRect;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)clearButtonFrameForBounds:(CGRect)a3;
- (CGRect)firstRectForRange:(id)a3;
- (CGRect)leadingViewFrameForBounds:(CGRect)a3;
- (CGRect)placeholderFrameForBounds:(CGRect)a3;
- (CGRect)trailingViewFrameForBounds:(CGRect)a3;
- (CGSize)_clearButtonSize;
- (CNAtomTextView)initWithFrame:(CGRect)a3;
- (CNAtomTextViewDelegate)delegate;
- (NSArray)representedObjects;
- (NSArray)selectedRepresentedObjects;
- (NSDirectionalEdgeInsets)clearButtonInsets;
- (NSDirectionalEdgeInsets)leadingViewInsets;
- (NSDirectionalEdgeInsets)placeholderInsets;
- (NSDirectionalEdgeInsets)textInsets;
- (NSDirectionalEdgeInsets)trailingViewInsets;
- (UIButton)clearButton;
- (UIEdgeInsets)_edgeInsetsForDirectionalInsets:(NSDirectionalEdgeInsets)a3;
- (UIEdgeInsets)edgeInsets;
- (UILabel)placeholderLabel;
- (_NSRange)_characterRangeForAtomView:(id)a3;
- (_NSRange)selectionRange;
- (id)_atomLayoutViewForRepresentedObject:(id)a3;
- (id)_attachmentAtCharacterIndex:(unint64_t)a3;
- (id)_baseAttributedStringWithRepresentedObject:(id)a3;
- (id)_clearButtonImageForState:(unint64_t)a3;
- (id)_representedObjectsFromPasteboard:(id)a3;
- (id)_representedObjectsInRange:(_NSRange)a3 ranges:(id *)a4;
- (id)_supportedPasteboardTypes;
- (id)baseAttributesWithRepresentedObject:(id)a3;
- (id)currentEditingString:(_NSRange *)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)keyCommands;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)paragraphStyle;
- (id)textInputTraits;
- (id)viewForLastBaselineLayout;
- (void)_clearButtonTapped:(id)a3;
- (void)_createBaselineLayoutStrutIfNecessary;
- (void)_deleteCharactersInStorage:(id)a3 ranges:(id)a4 rangeToAdjust:(_NSRange *)a5;
- (void)_insertRepresentedObjects:(id)a3 atCharacterRange:(_NSRange)a4;
- (void)_layoutButtons;
- (void)_layoutPlaceholder;
- (void)_removeRepresentedObjectsInCharacterRange:(_NSRange)a3;
- (void)_scrollToSelectionIfNeeded;
- (void)_setDrawsDebugBaselines:(BOOL)a3;
- (void)_setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)_storeRepresentedObjects:(id)a3 onPasteboard:(id)a4;
- (void)_tapRecognized:(id)a3;
- (void)_textStorageDidProcessEditing:(id)a3;
- (void)_updateAtomMasksInRect:(CGRect)a3;
- (void)_updateBaselineConstraintIfNecessaryUsingTextViewFrame:(CGRect)a3;
- (void)addRepresentedObject:(id)a3;
- (void)dealloc;
- (void)escKeyPressed:(id)a3;
- (void)insertRepresentedObject:(id)a3 atIndex:(unint64_t)a4;
- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5;
- (void)layoutSubviews;
- (void)removeRepresentedObject:(id)a3;
- (void)removeRepresentedObjectAtIndex:(unint64_t)a3;
- (void)removeRepresentedObjects:(id)a3;
- (void)removeRepresentedObjectsAtIndexes:(id)a3;
- (void)replaceCurrentEditingStringWithRepresentedObject:(id)a3 autoSelect:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setClearButtonInsets:(NSDirectionalEdgeInsets)a3;
- (void)setDelegate:(id)a3;
- (void)setFont:(id)a3;
- (void)setLeadingViewInsets:(NSDirectionalEdgeInsets)a3;
- (void)setPlaceholder:(id)a3;
- (void)setPlaceholderColor:(id)a3;
- (void)setPlaceholderInsets:(NSDirectionalEdgeInsets)a3;
- (void)setRepresentedObjects:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTextInsets:(NSDirectionalEdgeInsets)a3;
- (void)setTrailingViewInsets:(NSDirectionalEdgeInsets)a3;
- (void)takeTraitsFrom:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation CNAtomTextView

- (CNAtomTextView)initWithFrame:(CGRect)a3
{
  v33.receiver = self;
  v33.super_class = CNAtomTextView;
  v3 = [(CNAtomTextView *)&v33 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNAtomTextView *)v3 _setHostsLayoutEngine:1];
    v5 = [objc_opt_class() defaultFont];
    font = v4->_font;
    v4->_font = v5;

    v7 = [objc_opt_class() defaultTextColor];
    textColor = v4->_textColor;
    v4->_textColor = v7;

    v9 = [objc_opt_class() defaultPlaceholderColor];
    placeholderColor = v4->_placeholderColor;
    v4->_placeholderColor = v9;

    v11 = objc_alloc([objc_opt_class() _backgroundViewClass]);
    v12 = *MEMORY[0x1E695F058];
    v13 = *(MEMORY[0x1E695F058] + 8);
    v14 = *(MEMORY[0x1E695F058] + 16);
    v15 = *(MEMORY[0x1E695F058] + 24);
    v16 = [v11 initWithFrame:1 active:{*MEMORY[0x1E695F058], v13, v14, v15}];
    background = v4->_background;
    v4->_background = v16;

    [(_UITextFieldRoundedRectBackgroundViewNeue *)v4->_background setAutoresizingMask:0];
    v18 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{v12, v13, v14, v15}];
    scrollView = v4->_scrollView;
    v4->_scrollView = v18;

    [(UIScrollView *)v4->_scrollView setDelegate:v4];
    [(UIScrollView *)v4->_scrollView setScrollsToTop:0];
    [(UIScrollView *)v4->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v4->_scrollView setShowsVerticalScrollIndicator:0];
    v20 = [objc_alloc(objc_msgSend(objc_opt_class() "_fieldEditorClass"))];
    textView = v4->_textView;
    v4->_textView = v20;

    [(_CNAtomFieldEditor *)v4->_textView setAutoresizingMask:0];
    [(_CNAtomFieldEditor *)v4->_textView setBackgroundColor:0];
    v22 = [(CNAtomTextView *)v4 font];
    [(_CNAtomFieldEditor *)v4->_textView setFont:v22];

    [(_CNAtomFieldEditor *)v4->_textView setScrollEnabled:0];
    [(_CNAtomFieldEditor *)v4->_textView setScrollsToTop:0];
    [(_CNAtomFieldEditor *)v4->_textView setTextAlignment:4];
    v23 = [(CNAtomTextView *)v4 baseAttributes];
    [(_CNAtomFieldEditor *)v4->_textView setTypingAttributes:v23];

    v24 = [(_CNAtomFieldEditor *)v4->_textView layoutManager];
    [v24 setAllowsNonContiguousLayout:1];

    [(_CNAtomFieldEditor *)v4->_textView setDelegate:v4];
    v25 = [(_CNAtomFieldEditor *)v4->_textView layoutManager];
    [v25 setDelegate:v4];

    v26 = [MEMORY[0x1E696AD88] defaultCenter];
    v27 = *MEMORY[0x1E69DB738];
    v28 = [(_CNAtomFieldEditor *)v4->_textView textStorage];
    [v26 addObserver:v4 selector:sel__textStorageDidProcessEditing_ name:v27 object:v28];

    if (v4->_background)
    {
      [(CNAtomTextView *)v4 addSubview:?];
    }

    [(CNAtomTextView *)v4 addSubview:v4->_scrollView];
    [(UIScrollView *)v4->_scrollView addSubview:v4->_textView];
    v29 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__tapRecognized_];
    [v29 setCancelsTouchesInView:0];
    [(CNAtomTextView *)v4 addGestureRecognizer:v29];
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    atomViews = v4->_atomViews;
    v4->_atomViews = v30;
  }

  return v4;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(UIScrollView *)self->_scrollView setDelegate:0];
  [(_CNAtomFieldEditor *)self->_textView setDelegate:0];
  v3 = [(_CNAtomFieldEditor *)self->_textView layoutManager];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = CNAtomTextView;
  [(CNAtomTextView *)&v4 dealloc];
}

- (void)_setDrawsDebugBaselines:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_drawsDebugBaselines != a3)
  {
    v3 = a3;
    self->_drawsDebugBaselines = a3;
    [(_CNAtomFieldEditor *)self->_textView _setDrawsDebugBaselines:?];
    [(UILabel *)self->_placeholderLabel _setDrawsDebugBaselines:v3];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_atomViews;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v11 + 1) + 8 * v9) viewForLastBaselineLayout];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 _setDrawsDebugBaselines:v3];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(CNAtomTextView *)self setNeedsLayout];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_flags = *&self->_flags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_flags = *&self->_flags & 0xFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_flags = *&self->_flags & 0xF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_flags = *&self->_flags & 0xEF | v8;
  }
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v4 = [objc_opt_class() defaultFont];
    v5 = v4;
  }

  if (self->_font != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_font, v5);
    [(_CNAtomFieldEditor *)self->_textView setFont:v6];
    [(UILabel *)self->_placeholderLabel setFont:v6];
    [(_CNAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setFont:v6];
    v4 = [(CNAtomTextView *)self setNeedsLayout];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_opt_class() defaultTextColor];
  }

  if (self->_textColor != v4)
  {
    objc_storeStrong(&self->_textColor, v4);
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __31__CNAtomTextView_setTextColor___block_invoke;
    v9 = &unk_1E7CD1E08;
    v10 = self;
    v11 = v4;
    v5 = MEMORY[0x1B8CB9350](&v6);
    if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
    {
      [MEMORY[0x1E69DD250] transitionWithView:self->_textView duration:5242880 options:v5 animations:0 completion:0.35];
    }

    else
    {
      v5[2](v5);
    }
  }
}

void __31__CNAtomTextView_setTextColor___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 488) setTextColor:*(a1 + 40)];
  v2 = [*(a1 + 32) baseAttributes];
  [*(*(a1 + 32) + 488) setTypingAttributes:v2];
}

- (void)_setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = CNAtomTextView;
  [(CNAtomTextView *)&v17 setEnabled:?];
  [(_UITextFieldRoundedRectBackgroundViewNeue *)self->_background setEnabled:v5 animated:v4];
  v7 = [(CNAtomTextView *)self clearButton];
  [v7 setEnabled:v5];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_atomViews;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setEnabled:v5 animated:{v4, v13}];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v10);
  }
}

- (id)paragraphStyle
{
  if (paragraphStyle_onceToken != -1)
  {
    [CNAtomTextView paragraphStyle];
  }

  v3 = paragraphStyle_sParagraphStyle;

  return v3;
}

void __32__CNAtomTextView_paragraphStyle__block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v2 setLineBreakMode:2];
  v0 = [v2 copy];
  v1 = paragraphStyle_sParagraphStyle;
  paragraphStyle_sParagraphStyle = v0;
}

- (id)baseAttributesWithRepresentedObject:(id)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16[0] = *MEMORY[0x1E69DB648];
  v5 = [(CNAtomTextView *)self font];
  v17[0] = v5;
  v16[1] = *MEMORY[0x1E69DB650];
  v6 = [(CNAtomTextView *)self textColor];
  v17[1] = v6;
  v7 = *MEMORY[0x1E69DB688];
  v16[2] = *MEMORY[0x1E69DB688];
  v8 = [(CNAtomTextView *)self paragraphStyle];
  v17[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = [(CNAtomTextView *)self _atomLayoutViewForRepresentedObject:v4];
    v12 = [_CNAtomAttachment attachmentWithAtomLayoutView:v11 representedObject:v4];
    v10 = [v9 mutableCopy];
    [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69DB5F8]];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v9 objectForKeyedSubscript:v7];
      v14 = [v13 mutableCopy];

      [v14 setBaseWritingDirection:{objc_msgSend(v11, "baseWritingDirection")}];
      [v10 setObject:v14 forKeyedSubscript:v7];
    }
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (id)_baseAttributedStringWithRepresentedObject:(id)a3
{
  v4 = a3;
  v5 = [(CNAtomTextView *)self baseAttributesWithRepresentedObject:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = objc_alloc(MEMORY[0x1E696AAB0]);
  v8 = v7;
  if (isKindOfClass)
  {
    v9 = [v7 initWithString:v4 attributes:v5];
  }

  else
  {
    v12 = -4;
    v10 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v12 length:1];
    v9 = [v8 initWithString:v10 attributes:v5];
  }

  return v9;
}

- (BOOL)_hasContent
{
  v2 = [(_CNAtomFieldEditor *)self->_textView textStorage];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)_representedObjectsInRange:(_NSRange)a3 ranges:(id *)a4
{
  length = a3.length;
  location = a3.location;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF70] array];
  v10 = [(_CNAtomFieldEditor *)self->_textView textStorage];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3010000000;
  v32[3] = &unk_1B815995B;
  v33 = xmmword_1B81555E0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __52__CNAtomTextView__representedObjectsInRange_ranges___block_invoke;
  v27[3] = &unk_1E7CD20D0;
  v31 = v32;
  v11 = v8;
  v28 = v11;
  v12 = v10;
  v29 = v12;
  v13 = v9;
  v30 = v13;
  v14 = MEMORY[0x1B8CB9350](v27);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __52__CNAtomTextView__representedObjectsInRange_ranges___block_invoke_2;
  v22[3] = &unk_1E7CD20F8;
  v15 = v14;
  v25 = v15;
  v16 = v11;
  v23 = v16;
  v17 = v13;
  v24 = v17;
  v26 = v32;
  [v12 enumerateAttributesInRange:location options:length usingBlock:{0, v22}];
  v15[2](v15);
  if (a4)
  {
    v18 = v17;
    *a4 = v17;
  }

  v19 = v24;
  v20 = v16;

  _Block_object_dispose(v32, 8);

  return v20;
}

double __52__CNAtomTextView__representedObjectsInRange_ranges___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 56) + 8) + 32) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = *(a1 + 32);
    v3 = [*(a1 + 40) string];
    v4 = [v3 substringWithRange:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];
    [v2 addObject:v4];

    v5 = *(a1 + 48);
    v6 = [MEMORY[0x1E696B098] valueWithRange:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40)}];
    [v5 addObject:v6];

    result = NAN;
    *(*(*(a1 + 56) + 8) + 32) = xmmword_1B81555E0;
  }

  return result;
}

void __52__CNAtomTextView__representedObjectsInRange_ranges___block_invoke_2(void *a1, void *a2, NSUInteger location, NSUInteger length)
{
  v16 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(a1[6] + 16))();
    v7 = a1[4];
    v8 = [v16 representedObject];
    [v7 addObject:v8];

    v9 = a1[5];
    v10 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
    [v9 addObject:v10];
  }

  else
  {
    v11 = v16;
    if (v16)
    {
      goto LABEL_10;
    }

    v12 = *(a1[7] + 8);
    v13.location = *(v12 + 32);
    if (v13.location == 0x7FFFFFFFFFFFFFFFLL || (v13.length = *(v12 + 40), v13.length + v13.location != location))
    {
      (*(a1[6] + 16))();
    }

    else
    {
      v18.location = location;
      v18.length = length;
      v14 = NSUnionRange(v13, v18);
      location = v14.location;
      length = v14.length;
    }

    v15 = *(a1[7] + 8);
    *(v15 + 32) = location;
    *(v15 + 40) = length;
  }

  v11 = v16;
LABEL_10:
}

- (id)currentEditingString:(_NSRange *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = xmmword_1B81555E0;
  }

  v5 = [(_CNAtomFieldEditor *)self->_textView textStorage];
  v6 = [(_CNAtomFieldEditor *)self->_textView selectedRange];
  v8 = v7;
  v34 = 0;
  v9 = -[CNAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v5 length], &v34);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = v34;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v28 = v9;
    v29 = v5;
    v13 = 0;
    v14 = v6 + v8;
    v15 = *v31;
    while (2)
    {
      v16 = 0;
      v17 = v13;
      v13 += v12;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v18 = [*(*(&v30 + 1) + 8 * v16) rangeValue];
        if (v14 - v18 < v19 && v14 >= v18 || v14 == v18 + v19)
        {
          v23 = v18;
          v24 = v19;
          v9 = v28;
          v25 = [v28 objectAtIndexedSubscript:v17];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v22 = [v28 objectAtIndexedSubscript:v17];
            if (a3)
            {
              a3->location = v23;
              a3->length = v24;
            }
          }

          else
          {
            v22 = 0;
          }

          v5 = v29;
          goto LABEL_24;
        }

        ++v17;
        ++v16;
      }

      while (v12 != v16);
      v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v22 = 0;
    v9 = v28;
  }

  else
  {
    v22 = 0;
  }

LABEL_24:

  return v22;
}

- (NSArray)representedObjects
{
  v3 = [(_CNAtomFieldEditor *)self->_textView textStorage];
  v4 = -[CNAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v3 length], 0);

  return v4;
}

- (NSArray)selectedRepresentedObjects
{
  v4 = [(_CNAtomFieldEditor *)self->_textView selectedRange];

  return [(CNAtomTextView *)self _representedObjectsInRange:v4 ranges:v3, 0];
}

- (void)insertRepresentedObject:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_CNAtomFieldEditor *)self->_textView textStorage];
  [v7 beginEditing];
  v14 = 0;
  v8 = -[CNAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v7 length], &v14);
  v9 = v14;

  if (v8)
  {
    v10 = [v9 objectAtIndexedSubscript:a4];
    v11 = [v10 rangeValue];

    v12 = [(CNAtomTextView *)self _baseAttributedStringWithRepresentedObject:v6];
    [v7 insertAttributedString:v12 atIndex:v11];
    v8 = [v12 length];
  }

  else
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v7 endEditing];
  if (v8)
  {
    v13 = [(_CNAtomFieldEditor *)self->_textView layoutManager];
    [v13 invalidateLayoutForCharacterRange:v11 actualCharacterRange:{v8, 0}];
  }

  [(CNAtomTextView *)self setNeedsLayout];
  [(CNAtomTextView *)self sendActionsForControlEvents:0x20000];
  [(_CNAtomFieldEditor *)self->_textView setSelectedRange:&v8[v11], 0];
}

- (void)_deleteCharactersInStorage:(id)a3 ranges:(id)a4 rangeToAdjust:(_NSRange *)a5
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [a4 reverseObjectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * v12) rangeValue];
        v15 = v14;
        [v7 deleteCharactersInRange:{v13, v14}];
        location = a5->location;
        length = a5->length;
        if (v13 < length + a5->location)
        {
          if (location >= v13 + v15)
          {
            a5->location = location - v15;
          }

          else
          {
            if (v13 <= location)
            {
              v19 = location - (v13 + v15) + length;
              a5->location = v13;
            }

            else
            {
              v18 = length >= v15;
              v19 = length - v15;
              if (!v18)
              {
                v19 = 0;
              }
            }

            a5->length = v19;
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }
}

- (void)removeRepresentedObjectsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(_CNAtomFieldEditor *)self->_textView textStorage];
  [v5 beginEditing];
  v11 = [(_CNAtomFieldEditor *)self->_textView selectedRange];
  v12 = v6;
  v10 = 0;
  v7 = -[CNAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v5 length], &v10);
  v8 = v10;

  if (v7)
  {
    v9 = [v8 objectsAtIndexes:v4];
    [(CNAtomTextView *)self _deleteCharactersInStorage:v5 ranges:v9 rangeToAdjust:&v11];
  }

  [v5 endEditing];
  [(CNAtomTextView *)self setNeedsLayout];
  [(CNAtomTextView *)self sendActionsForControlEvents:0x20000];
  [(_CNAtomFieldEditor *)self->_textView setSelectedRange:v11, v12];
}

- (void)removeRepresentedObjects:(id)a3
{
  v4 = a3;
  v5 = [(_CNAtomFieldEditor *)self->_textView textStorage];
  [v5 beginEditing];
  v18 = [(_CNAtomFieldEditor *)self->_textView selectedRange];
  v19 = v6;
  v17 = 0;
  v7 = -[CNAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v5 length], &v17);
  v8 = v17;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __43__CNAtomTextView_removeRepresentedObjects___block_invoke;
  v15 = &unk_1E7CD2120;
  v16 = v4;
  v9 = v4;
  v10 = [v7 indexesOfObjectsPassingTest:&v12];
  v11 = [v8 objectsAtIndexes:{v10, v12, v13, v14, v15}];
  [(CNAtomTextView *)self _deleteCharactersInStorage:v5 ranges:v11 rangeToAdjust:&v18];

  [v5 endEditing];
  [(CNAtomTextView *)self setNeedsLayout];
  [(CNAtomTextView *)self sendActionsForControlEvents:0x20000];
  [(_CNAtomFieldEditor *)self->_textView setSelectedRange:v18, v19];
}

- (void)removeRepresentedObjectAtIndex:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  [(CNAtomTextView *)self removeRepresentedObjectsAtIndexes:v4];
}

- (void)removeRepresentedObject:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v7 count:1];

    [(CNAtomTextView *)self removeRepresentedObjects:v6, v7, v8];
  }
}

- (void)setRepresentedObjects:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CNAtomFieldEditor *)self->_textView textStorage];
  [v5 beginEditing];
  [v5 deleteCharactersInRange:{0, objc_msgSend(v5, "length")}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CNAtomTextView *)self _baseAttributedStringWithRepresentedObject:*(*(&v13 + 1) + 8 * v10), v13];
        [v5 appendAttributedString:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [v5 endEditing];
  v12 = [(_CNAtomFieldEditor *)self->_textView layoutManager];
  [v12 invalidateLayoutForCharacterRange:0 actualCharacterRange:{objc_msgSend(v5, "length"), 0}];

  [(CNAtomTextView *)self setNeedsLayout];
  [(CNAtomTextView *)self sendActionsForControlEvents:0x20000];
  -[_CNAtomFieldEditor setSelectedRange:](self->_textView, "setSelectedRange:", [v5 length], 0);
}

- (void)addRepresentedObject:(id)a3
{
  textView = self->_textView;
  v5 = a3;
  v10 = [(_CNAtomFieldEditor *)textView textStorage];
  [v10 beginEditing];
  v6 = [(CNAtomTextView *)self _baseAttributedStringWithRepresentedObject:v5];

  v7 = [v10 length];
  v8 = [v6 length];
  [v10 appendAttributedString:v6];
  [v10 endEditing];
  if (v8)
  {
    v9 = [(_CNAtomFieldEditor *)self->_textView layoutManager];
    [v9 invalidateLayoutForCharacterRange:v7 actualCharacterRange:{v8, 0}];
  }

  [(CNAtomTextView *)self setNeedsLayout];
  [(CNAtomTextView *)self sendActionsForControlEvents:0x20000];
  -[_CNAtomFieldEditor setSelectedRange:](self->_textView, "setSelectedRange:", [v10 length], 0);
}

- (void)replaceCurrentEditingStringWithRepresentedObject:(id)a3 autoSelect:(BOOL)a4
{
  v4 = a4;
  textView = self->_textView;
  v7 = a3;
  v8 = [(_CNAtomFieldEditor *)textView textStorage];
  [v8 beginEditing];
  v16 = 0;
  v17 = 0;
  v9 = [(CNAtomTextView *)self currentEditingString:&v16];
  v10 = [(CNAtomTextView *)self _baseAttributedStringWithRepresentedObject:v7];

  if (!v9 || v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [v8 length];
    v17 = 0;
    [v8 appendAttributedString:v10];
  }

  else
  {
    [v8 replaceCharactersInRange:v16 withAttributedString:{v17, v10}];
  }

  [v8 endEditing];
  v11 = v16;
  v12 = [v10 length];
  if (v12)
  {
    v13 = [(_CNAtomFieldEditor *)self->_textView layoutManager];
    [v13 invalidateLayoutForCharacterRange:v11 actualCharacterRange:{v12, 0}];
  }

  [(CNAtomTextView *)self setNeedsLayout];
  [(CNAtomTextView *)self sendActionsForControlEvents:0x20000];
  v14 = v12 + v11;
  if (v4)
  {
    [(CNAtomTextView *)self becomeFirstResponder];
    --v14;
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  [(_CNAtomFieldEditor *)self->_textView setSelectedRange:v14, v15];
}

- (id)_atomLayoutViewForRepresentedObject:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained atomTextView:self atomViewForRepresentedObject:v4];

  [v6 setEnabled:{-[CNAtomTextView isEnabled](self, "isEnabled")}];
  v7 = [v6 viewForLastBaselineLayout];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 _setDrawsDebugBaselines:{-[CNAtomTextView _drawsDebugBaselines](self, "_drawsDebugBaselines")}];
  }

  v8 = [_CNAtomLayoutView layoutViewWithDelegateView:v6];

  return v8;
}

- (id)_supportedPasteboardTypes
{
  if ((*&self->_flags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v2 = [WeakRetained supportedPasteboardTypesForAtomTextView:self];
  }

  else
  {
    v2 = 0;
  }

  if ([v2 count])
  {
    v5 = v2;
  }

  else
  {
    v5 = *MEMORY[0x1E69DE2A8];
  }

  v6 = v5;

  return v5;
}

- (id)_representedObjectsFromPasteboard:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((*&self->_flags & 4) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), [WeakRetained atomTextView:self representedObjectsFromPasteboard:v4], v6 = objc_claimAutoreleasedReturnValue(), WeakRetained, !v6))
  {
    v7 = [v4 string];
    v8 = v7;
    if (v7)
    {
      v10[0] = v7;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }
  }

  return v6;
}

- (void)_storeRepresentedObjects:(id)a3 onPasteboard:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((*&self->_flags & 8) == 0 || (WeakRetained = objc_loadWeakRetained(&self->_delegate), v9 = [WeakRetained atomTextView:self storeRepresentedObjects:v6 onPasteboard:v7], WeakRetained, (v9 & 1) == 0))
  {
    v18 = v7;
    v10 = [MEMORY[0x1E696AD60] string];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v10 length])
            {
              v17 = @" ";
            }

            else
            {
              v17 = &stru_1F3002C60;
            }

            [v10 appendFormat:@"%@%@", v17, v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v7 = v18;
    [v18 setString:v10];
  }
}

- (void)_insertRepresentedObjects:(id)a3 atCharacterRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v58[1] = *MEMORY[0x1E69E9840];
  v55 = a4;
  v7 = a3;
  v8 = 488;
  v9 = [(_CNAtomFieldEditor *)self->_textView textStorage];
  [v9 beginEditing];
  if (length)
  {
    v10 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
    v58[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
    [(CNAtomTextView *)self _deleteCharactersInStorage:v9 ranges:v11 rangeToAdjust:&v55];
  }

  v12 = [v7 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v45 = self;
  if ((isKindOfClass & 1) == 0)
  {
    v54 = 0;
    v14 = -[CNAtomTextView _representedObjectsInRange:ranges:](self, "_representedObjectsInRange:ranges:", 0, [v9 length], &v54);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v15 = v54;
    v16 = [v15 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v16)
    {
      v43 = v9;
      v17 = 0;
      v18 = *v51;
      do
      {
        v19 = 0;
        v20 = v17;
        v17 += v16;
        do
        {
          if (*v51 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = [*(*(&v50 + 1) + 8 * v19) rangeValue];
          if (v55.location >= v21 && v55.location - v21 < v22)
          {
            v16 = [v14 objectAtIndexedSubscript:v20];
            goto LABEL_17;
          }

          ++v20;
          ++v19;
        }

        while (v16 != v19);
        v16 = [v15 countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v16);
      v20 = v17;
LABEL_17:
      v9 = v43;
    }

    else
    {
      v20 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 objectAtIndexedSubscript:v20];
      v25 = v24 = v9;
      v26 = [v25 rangeValue];
      v28 = v27;

      v9 = v24;
      if (v55.location != v26)
      {
        v55.location = v26 + v28;
        v55.length = 0;
      }
    }

    self = v45;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = v7;
  v30 = [v29 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v30)
  {
    v31 = v30;
    v44 = 488;
    v32 = 0;
    v33 = *v47;
    v34 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v36 = [(CNAtomTextView *)self _baseAttributedStringWithRepresentedObject:*(*(&v46 + 1) + 8 * i), v44];
        v37 = v9;
        [v9 insertAttributedString:v36 atIndex:v55.location];
        v38 = v55.location;
        v39 = [v36 length];
        v40 = v39;
        if (v34 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v34 = v38;
          v32 = v39;
        }

        else
        {
          v59.location = v38;
          v59.length = v40;
          v60.location = v34;
          v60.length = v32;
          v41 = NSUnionRange(v59, v60);
          v34 = v41.location;
          v32 = v41.length;
        }

        v55.location = v40 + v38;
        v55.length = 0;

        self = v45;
        v9 = v37;
      }

      v31 = [v29 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v31);

    [v37 endEditing];
    v8 = v44;
    if (v32)
    {
      v42 = [*(&v45->super.super.super.super.isa + v44) layoutManager];
      [v42 invalidateLayoutForCharacterRange:v34 actualCharacterRange:{v32, 0}];
    }
  }

  else
  {

    [v9 endEditing];
  }

  [(CNAtomTextView *)self setNeedsLayout];
  [(CNAtomTextView *)self sendActionsForControlEvents:0x20000];
  [*(&self->super.super.super.super.isa + v8) setSelectedRange:{v55.location, v55.length}];
}

- (void)_removeRepresentedObjectsInCharacterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = [(_CNAtomFieldEditor *)self->_textView textStorage];
  [v6 beginEditing];
  v10 = [(_CNAtomFieldEditor *)self->_textView selectedRange];
  v11 = v7;
  v8 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [(CNAtomTextView *)self _deleteCharactersInStorage:v6 ranges:v9 rangeToAdjust:&v10];

  [v6 endEditing];
  [(CNAtomTextView *)self setNeedsLayout];
  [(CNAtomTextView *)self sendActionsForControlEvents:0x20000];
  [(_CNAtomFieldEditor *)self->_textView setSelectedRange:v10, v11];
}

- (UIEdgeInsets)_edgeInsetsForDirectionalInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v7 = [(CNAtomTextView *)self _shouldReverseLayoutDirection];
  if (v7)
  {
    v8 = trailing;
  }

  else
  {
    v8 = leading;
  }

  if (v7)
  {
    v9 = leading;
  }

  else
  {
    v9 = trailing;
  }

  v10 = top;
  v11 = bottom;
  result.right = v9;
  result.bottom = v11;
  result.left = v8;
  result.top = v10;
  return result;
}

- (CGRect)_visibleAtomsRect
{
  [(UIScrollView *)self->_scrollView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self->_scrollView contentInset];
  scrollView = self->_scrollView;

  [(CNAtomTextView *)self convertRect:scrollView fromView:v4 + v12, v6 + v11, v8 - (v12 + v14), v10 - (v11 + v13)];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_clearButtonImageForState:(unint64_t)a3
{
  v6 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UITextFieldClearButton"];
  v7 = [(CNAtomTextView *)self tintColor];
  if (!v7 || ([MEMORY[0x1E69DC888] systemBlueColor], v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v7, "isEqual:", v3) & 1) != 0))
  {
    v8 = [MEMORY[0x1E69DC888] colorWithRed:0.047 green:0.455 blue:0.867 alpha:1.0];
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = v7;
  }

LABEL_6:
  if (a3 == 1)
  {
    v10 = v8;
  }

  else
  {
    if (a3 == 2)
    {
      v9 = 0.1;
    }

    else
    {
      v9 = 0.275;
    }

    v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v9];
  }

  v11 = v10;
  v12 = MEMORY[0x1E69DCAB8];
  [v6 size];
  v13 = [v12 _tintedImageForSize:v11 withTint:0 effectsImage:v6 maskImage:0 style:?];

  return v13;
}

- (UIButton)clearButton
{
  clearButton = self->_clearButton;
  if (!clearButton)
  {
    v4 = objc_alloc(MEMORY[0x1E69DC738]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_clearButton;
    self->_clearButton = v5;

    [(UIButton *)self->_clearButton addTarget:self action:sel__clearButtonTapped_ forControlEvents:64];
    v7 = self->_clearButton;
    v8 = [(CNAtomTextView *)self _clearButtonImageForState:0];
    [(UIButton *)v7 setImage:v8 forState:0];

    v9 = self->_clearButton;
    v10 = [(CNAtomTextView *)self _clearButtonImageForState:1];
    [(UIButton *)v9 setImage:v10 forState:1];

    v11 = self->_clearButton;
    v12 = [(CNAtomTextView *)self _clearButtonImageForState:2];
    [(UIButton *)v11 setImage:v12 forState:2];

    [(UIButton *)self->_clearButton setOpaque:0];
    [(UIButton *)self->_clearButton setBackgroundColor:0];
    [(UIButton *)self->_clearButton _setTouchInsets:-12.5, -12.5, -12.5, -12.5];
    clearButton = self->_clearButton;
  }

  return clearButton;
}

- (CGSize)_clearButtonSize
{
  v2 = 19.0;
  v3 = 19.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)clearButtonFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = MEMORY[0x1E695F058];
  rect = *(MEMORY[0x1E695F058] + 8);
  [(CNAtomTextView *)self _clearButtonSize];
  v10 = v9;
  v12 = v11;
  [(UIView *)self cnaui_currentScreenScale];
  if ([(CNAtomTextView *)self _shouldReverseLayoutDirection])
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    CGRectGetMinX(v31);
  }

  else
  {
    v29 = v10;
    v13 = v12;
    v14 = *v8;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    CGRectGetMaxX(v32);
    v33.origin.x = v14;
    v12 = v13;
    v10 = v29;
    v33.origin.y = rect;
    v33.size.width = v29;
    v33.size.height = v12;
    CGRectGetWidth(v33);
  }

  UIRoundToViewScale();
  v16 = v15;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  CGRectGetMidY(v34);
  v35.origin.x = v16;
  v35.origin.y = rect;
  v35.size.width = v10;
  v35.size.height = v12;
  CGRectGetHeight(v35);
  UIRoundToViewScale();
  v18 = v17;
  [(CNAtomTextView *)self clearButtonInsets];
  [(CNAtomTextView *)self _edgeInsetsForDirectionalInsets:?];
  v20 = v18 + v19;
  v23 = v10 - (v21 + v22);
  v25 = v12 - (v19 + v24);
  v26 = v16 + v21;
  v27 = v20;
  v28 = v23;
  result.size.height = v25;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (CGRect)_rectForBounds:(CGRect)a3 sizingView:(id)a4 isLeft:(BOOL)a5
{
  v5 = a5;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  [a4 systemLayoutSizeFittingSize:{a3.size.width, a3.size.height}];
  v13 = v12;
  v15 = v14;
  if (v5)
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    CGRectGetMinX(v25);
  }

  else
  {
    v24 = v11;
    v16 = *v10;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    CGRectGetMaxX(v26);
    v27.origin.x = v16;
    v11 = v24;
    v27.origin.y = v24;
    v27.size.width = v13;
    v27.size.height = v15;
    CGRectGetWidth(v27);
  }

  UIRoundToViewScale();
  v18 = v17;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  CGRectGetMidY(v28);
  v29.origin.x = v18;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  CGRectGetHeight(v29);
  UIRoundToViewScale();
  v20 = v19;
  v21 = v18;
  v22 = v13;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v20;
  result.origin.x = v21;
  return result;
}

- (CGRect)leadingViewFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CNAtomTextView *)self _shouldReverseLayoutDirection];
  v9 = [(CNAtomTextView *)self leadingView];
  [(CNAtomTextView *)self _rectForBounds:v9 sizingView:v8 ^ 1u isLeft:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(CNAtomTextView *)self leadingViewInsets];
  [(CNAtomTextView *)self _edgeInsetsForDirectionalInsets:?];
  v19 = v13 + v18;
  v22 = v15 - (v20 + v21);
  v24 = v17 - (v18 + v23);
  v25 = v11 + v20;
  v26 = v19;
  v27 = v22;
  result.size.height = v24;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)trailingViewFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CNAtomTextView *)self trailingView];
  [(CNAtomTextView *)self _rectForBounds:v8 sizingView:[(CNAtomTextView *)self _shouldReverseLayoutDirection] isLeft:x, y, width, height];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(CNAtomTextView *)self trailingViewInsets];
  [(CNAtomTextView *)self _edgeInsetsForDirectionalInsets:?];
  v18 = v12 + v17;
  v21 = v14 - (v19 + v20);
  v23 = v16 - (v17 + v22);
  v24 = v10 + v19;
  v25 = v18;
  v26 = v21;
  result.size.height = v23;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (BOOL)_showViewWithMode:(int64_t)a3 alwaysDefinition:(BOOL)a4
{
  v7 = [(CNAtomTextView *)self isFirstResponder];
  v8 = v7 & [(CNAtomTextView *)self _hasContent];
  v9 = !v8;
  v10 = a3 == 3 && a4;
  if (a3 != 2)
  {
    v9 = v10;
  }

  if (a3 == 1)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

- (BOOL)_showsClearButton
{
  v3 = [(CNAtomTextView *)self clearButtonMode];
  v4 = [(CNAtomTextView *)self _hasContent];

  return [(CNAtomTextView *)self _showViewWithMode:v3 alwaysDefinition:v4];
}

- (BOOL)_showsLeadingView
{
  v3 = [(CNAtomTextView *)self leadingView];
  if (v3)
  {
    v4 = [(CNAtomTextView *)self _showViewWithMode:[(CNAtomTextView *)self leadingViewMode] alwaysDefinition:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_showsTrailingView
{
  v3 = [(CNAtomTextView *)self trailingView];
  v4 = v3 && ![(CNAtomTextView *)self _showsClearButton]&& [(CNAtomTextView *)self _showViewWithMode:[(CNAtomTextView *)self trailingViewMode] alwaysDefinition:1];

  return v4;
}

- (void)_layoutButtons
{
  [(CNAtomTextView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(CNAtomTextView *)self _showsClearButton])
  {
    v11 = [(CNAtomTextView *)self clearButton];
    [(CNAtomTextView *)self clearButtonFrameForBounds:v4, v6, v8, v10];
    [v11 setFrame:?];
    [(CNAtomTextView *)self addSubview:v11];
  }

  else
  {
    clearButton = self->_clearButton;
    if (clearButton)
    {
      [(UIButton *)clearButton removeFromSuperview];
    }
  }

  if ([(CNAtomTextView *)self _showsLeadingView])
  {
    v13 = [(CNAtomTextView *)self leadingView];
    [(CNAtomTextView *)self leadingViewFrameForBounds:v4, v6, v8, v10];
    [v13 setFrame:?];
    [(CNAtomTextView *)self addSubview:v13];
  }

  else
  {
    leadingView = self->_leadingView;
    if (leadingView)
    {
      [(UIView *)leadingView removeFromSuperview];
    }
  }

  if ([(CNAtomTextView *)self _showsTrailingView])
  {
    v16 = [(CNAtomTextView *)self trailingView];
    [(CNAtomTextView *)self trailingViewFrameForBounds:v4, v6, v8, v10];
    [v16 setFrame:?];
    [(CNAtomTextView *)self addSubview:v16];
  }

  else
  {
    trailingView = self->_trailingView;
    if (trailingView)
    {

      [(UIView *)trailingView removeFromSuperview];
    }
  }
}

- (void)setPlaceholderColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_opt_class() defaultPlaceholderColor];
  }

  if (self->_placeholderColor != v4)
  {
    objc_storeStrong(&self->_placeholderColor, v4);
    if (self->_placeholderLabel)
    {
      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __38__CNAtomTextView_setPlaceholderColor___block_invoke;
      v9 = &unk_1E7CD1E08;
      v10 = self;
      v11 = v4;
      v5 = MEMORY[0x1B8CB9350](&v6);
      if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
      {
        [MEMORY[0x1E69DD250] transitionWithView:self->_placeholderLabel duration:5242880 options:v5 animations:0 completion:0.35];
      }

      else
      {
        v5[2](v5);
      }
    }
  }
}

- (UILabel)placeholderLabel
{
  placeholderLabel = self->_placeholderLabel;
  if (!placeholderLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_placeholderLabel;
    self->_placeholderLabel = v5;

    [(UILabel *)self->_placeholderLabel _setDrawsDebugBaselines:[(CNAtomTextView *)self _drawsDebugBaselines]];
    v7 = [(CNAtomTextView *)self font];
    [(UILabel *)self->_placeholderLabel setFont:v7];

    v8 = [(CNAtomTextView *)self placeholderColor];
    [(UILabel *)self->_placeholderLabel setTextColor:v8];

    v9 = [(CNAtomTextView *)self placeholder];
    [(UILabel *)self->_placeholderLabel setText:v9];

    placeholderLabel = self->_placeholderLabel;
  }

  return placeholderLabel;
}

- (void)setPlaceholder:(id)a3
{
  if (self->_placeholder != a3)
  {
    v4 = [a3 copy];
    placeholder = self->_placeholder;
    self->_placeholder = v4;

    [(UILabel *)self->_placeholderLabel setText:self->_placeholder];

    [(CNAtomTextView *)self setNeedsLayout];
  }
}

- (CGRect)placeholderFrameForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UILabel *)self->_placeholderLabel sizeThatFits:a3.size.width, a3.size.height];
  [(UIView *)self cnaui_currentScreenScale];
  v37 = v8;
  UIRectCenteredYInRectScale();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v38 = v15;
  v16 = [(CNAtomTextView *)self _shouldReverseLayoutDirection];
  v17 = [(CNAtomTextView *)self _showsLeadingView];
  v18 = [(CNAtomTextView *)self _showsTrailingView];
  v19 = [(CNAtomTextView *)self _showsClearButton];
  v20 = v18 || v19;
  if ((v16 & 1) == 0 && v17)
  {
    [(CNAtomTextView *)self leadingViewFrameForBounds:x, y, width, height];
    v22 = v21 + 16.0;
    v23 = v14 - (v21 + 16.0);
    if (!v20)
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if ((v16 & 1) == 0)
  {
    v23 = v14 + -8.0;
    v22 = 8.0;
    if (v20)
    {
LABEL_10:
      if (v19)
      {
        [(CNAtomTextView *)self clearButtonFrameForBounds:x, y, width, height];
      }

      else
      {
        [(CNAtomTextView *)self trailingViewFrameForBounds:x, y, width, height];
      }

      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (v20)
  {
    if (v19)
    {
      [(CNAtomTextView *)self clearButtonFrameForBounds:x, y, width, height];
    }

    else
    {
      [(CNAtomTextView *)self trailingViewFrameForBounds:x, y, width, height];
    }

    v22 = v24 + 16.0;
    v23 = v14 - (v24 + 16.0);
    if (!v17)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v23 = v14 + -8.0;
  v22 = 8.0;
  if (!v17)
  {
LABEL_18:
    v26 = v23 + -8.0;
    goto LABEL_19;
  }

LABEL_14:
  [(CNAtomTextView *)self leadingViewFrameForBounds:x, y, width, height];
LABEL_15:
  v26 = v23 - (v25 + 16.0);
LABEL_19:
  [(CNAtomTextView *)self placeholderInsets];
  [(CNAtomTextView *)self _edgeInsetsForDirectionalInsets:?];
  v28 = v12 + v27;
  v31 = v26 - (v29 + v30);
  v33 = v38 - (v27 + v32);
  v34 = v10 + v22 + v29;
  v35 = v28;
  v36 = v31;
  result.size.height = v33;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

- (void)_layoutPlaceholder
{
  if ([(CNAtomTextView *)self _showsPlaceholder])
  {
    v4 = [(CNAtomTextView *)self placeholderLabel];
    [(CNAtomTextView *)self bounds];
    [(CNAtomTextView *)self placeholderFrameForBounds:?];
    [v4 setFrame:?];
    [(CNAtomTextView *)self addSubview:v4];
  }

  else
  {
    placeholderLabel = self->_placeholderLabel;
    if (placeholderLabel)
    {

      [(UILabel *)placeholderLabel removeFromSuperview];
    }
  }
}

- (UIEdgeInsets)edgeInsets
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x4010000000;
  v32 = &unk_1B815995B;
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  v33 = *MEMORY[0x1E69DDCE0];
  v34 = v3;
  [(CNAtomTextView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CNAtomTextView *)self _shouldReverseLayoutDirection];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __28__CNAtomTextView_edgeInsets__block_invoke;
  v28[3] = &unk_1E7CD2148;
  v28[4] = &v29;
  *&v28[5] = v5;
  *&v28[6] = v7;
  *&v28[7] = v9;
  *&v28[8] = v11;
  v13 = MEMORY[0x1B8CB9350](v28);
  if ([(CNAtomTextView *)self _showsClearButton])
  {
    [(CNAtomTextView *)self clearButtonFrameForBounds:v5, v7, v9, v11];
    v13[2](v13, v12);
    v14 = 7;
    if (v12)
    {
      v14 = 5;
    }

    v30[v14] = v30[v14] + 7.0;
  }

  if ([(CNAtomTextView *)self _showsLeadingView])
  {
    [(CNAtomTextView *)self leadingViewFrameForBounds:v5, v7, v9, v11];
    v13[2](v13, v12 ^ 1);
  }

  if ([(CNAtomTextView *)self _showsTrailingView])
  {
    [(CNAtomTextView *)self trailingViewFrameForBounds:v5, v7, v9, v11];
    v13[2](v13, v12);
  }

  [(CNAtomTextView *)self textInsets];
  [(CNAtomTextView *)self _edgeInsetsForDirectionalInsets:?];
  UIEdgeInsetsAdd();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = v30;
  v30[4] = v15;
  v23[5] = v17;
  v23[6] = v19;
  v23[7] = v21;

  _Block_object_dispose(&v29, 8);
  v24 = v16;
  v25 = v18;
  v26 = v20;
  v27 = v22;
  result.right = v27;
  result.bottom = v26;
  result.left = v25;
  result.top = v24;
  return result;
}

double __28__CNAtomTextView_edgeInsets__block_invoke(uint64_t a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2)
  {
    MaxX = CGRectGetMaxX(*&a3);
    v12 = 40;
  }

  else
  {
    v13 = CGRectGetMaxX(*(a1 + 40));
    v16.origin.x = a3;
    v16.origin.y = a4;
    v16.size.width = a5;
    v16.size.height = a6;
    MaxX = v13 - CGRectGetMinX(v16);
    v12 = 56;
  }

  v14 = *(*(a1 + 32) + 8);
  result = MaxX + *(v14 + v12);
  *(v14 + v12) = result;
  return result;
}

- (void)layoutSubviews
{
  [(CNAtomTextView *)self _layoutPlaceholder];
  [(CNAtomTextView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CNAtomTextView *)self edgeInsets];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(_UITextFieldRoundedRectBackgroundViewNeue *)self->_background setFrame:v4, v6, v8, v10];
  v19 = v4 + v14;
  v20 = v6 + v12;
  v21 = v8 - (v14 + v18);
  v22 = v10 - (v12 + v16);
  v23 = v19;
  [(UIScrollView *)self->_scrollView setFrame:v19, v6 + v12, v21, v22];
  v24 = *MEMORY[0x1E695F058];
  v25 = *(MEMORY[0x1E695F058] + 8);
  *&self->_flags |= 0x20u;
  v39.origin.x = v23;
  v39.origin.y = v20;
  v39.size.width = v21;
  v39.size.height = v22;
  [(_CNAtomFieldEditor *)self->_textView sizeThatFits:1.79769313e308, CGRectGetHeight(v39)];
  v40.size.width = v26;
  v40.size.height = v27;
  *&self->_flags &= ~0x20u;
  v40.origin.x = v24;
  v40.origin.y = v25;
  CGRectGetWidth(v40);
  v41.origin.x = v23;
  v41.origin.y = v20;
  v41.size.width = v21;
  v41.size.height = v22;
  CGRectGetWidth(v41);
  [(UILabel *)self->_placeholderLabel bounds];
  CGRectGetHeight(v42);
  [(UIView *)self cnaui_currentScreenScale];
  v37 = v28;
  UIRectCenteredYInRectScale();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [(_CNAtomFieldEditor *)self->_textView frame];
  v44.origin.x = v30;
  v44.origin.y = v32;
  v44.size.width = v34;
  v44.size.height = v36;
  if (!CGRectEqualToRect(v43, v44))
  {
    [(_CNAtomFieldEditor *)self->_textView setFrame:v30, v32, v34, v36];
  }

  [(CNAtomTextView *)self _layoutButtons];
  [(CNAtomTextView *)self _updateBaselineConstraintIfNecessaryUsingTextViewFrame:v30, v32, v34, v36];

  [(CNAtomTextView *)self _scrollToSelectionIfNeeded];
}

- (void)setTextInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_textInsets.top, v3), vceqq_f64(*&self->_textInsets.bottom, v4)))) & 1) == 0)
  {
    self->_textInsets = a3;
    [(CNAtomTextView *)self setNeedsLayout];
  }
}

- (void)setPlaceholderInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_placeholderInsets.top, v3), vceqq_f64(*&self->_placeholderInsets.bottom, v4)))) & 1) == 0)
  {
    self->_placeholderInsets = a3;
    [(CNAtomTextView *)self setNeedsLayout];
  }
}

- (void)setLeadingViewInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_leadingViewInsets.top, v3), vceqq_f64(*&self->_leadingViewInsets.bottom, v4)))) & 1) == 0)
  {
    self->_leadingViewInsets = a3;
    [(CNAtomTextView *)self setNeedsLayout];
  }
}

- (void)setTrailingViewInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_trailingViewInsets.top, v3), vceqq_f64(*&self->_trailingViewInsets.bottom, v4)))) & 1) == 0)
  {
    self->_trailingViewInsets = a3;
    [(CNAtomTextView *)self setNeedsLayout];
  }
}

- (void)setClearButtonInsets:(NSDirectionalEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.leading;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_clearButtonInsets.top, v3), vceqq_f64(*&self->_clearButtonInsets.bottom, v4)))) & 1) == 0)
  {
    self->_clearButtonInsets = a3;
    [(CNAtomTextView *)self setNeedsLayout];
  }
}

- (CGPoint)_firstGlyphBaselineLeftPointWithLayoutManager:(id)a3
{
  v4 = a3;
  v5 = [v4 textStorage];
  v6 = [v5 length];
  if (!v6)
  {
    v7 = [(CNAtomTextView *)self _baseAttributedStringWithRepresentedObject:@"X"];
    [v5 appendAttributedString:v7];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__0;
  v35 = __Block_byref_object_dispose__0;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x4010000000;
  v28 = &unk_1B815995B;
  v29 = 0u;
  v30 = 0u;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __64__CNAtomTextView__firstGlyphBaselineLeftPointWithLayoutManager___block_invoke;
  v24[3] = &unk_1E7CD2170;
  v24[4] = &v25;
  v24[5] = &v31;
  [v4 enumerateLineFragmentsForGlyphRange:0 usingBlock:{1, v24}];
  v18 = 0;
  v19 = &v18;
  v20 = 0x4010000000;
  v21 = &unk_1B815995B;
  v22 = 0u;
  v23 = 0u;
  v8 = v32[5];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__CNAtomTextView__firstGlyphBaselineLeftPointWithLayoutManager___block_invoke_2;
  v17[3] = &unk_1E7CD2198;
  v17[4] = &v18;
  [v4 enumerateEnclosingRectsForGlyphRange:0 withinSelectedGlyphRange:1 inTextContainer:0x7FFFFFFFFFFFFFFFLL usingBlock:{0, v8, v17}];
  [v4 baselineOffsetForGlyphAtIndex:0];
  v10 = v9;
  MinX = CGRectGetMinX(v19[1]);
  v12 = v26[5];
  [(_CNAtomFieldEditor *)self->_textView textContainerInset];
  v14 = v13;
  if (!v6)
  {
    [v5 deleteCharactersInRange:{0, objc_msgSend(v5, "length")}];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  v15 = MinX;
  v16 = v10 + v12 + v14;
  result.y = v16;
  result.x = v15;
  return result;
}

void __64__CNAtomTextView__firstGlyphBaselineLeftPointWithLayoutManager___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, _BYTE *a13)
{
  v14 = *(*(a1 + 32) + 8);
  v14[4] = a7;
  v14[5] = a8;
  v14[6] = a9;
  v14[7] = a10;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  *a13 = 1;
}

uint64_t __64__CNAtomTextView__firstGlyphBaselineLeftPointWithLayoutManager___block_invoke_2(uint64_t result, _BYTE *a2, double a3, double a4, double a5, double a6)
{
  v6 = *(*(result + 32) + 8);
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  *a2 = 1;
  return result;
}

- (void)_createBaselineLayoutStrutIfNecessary
{
  if (!self->_baselineLayoutLabel)
  {
    v3 = [_CNAtomTextViewBaselineLayoutStrut alloc];
    v4 = [(_CNAtomTextViewBaselineLayoutStrut *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    baselineLayoutLabel = self->_baselineLayoutLabel;
    self->_baselineLayoutLabel = v4;

    v6 = [(CNAtomTextView *)self font];
    [(_CNAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setFont:v6];

    [(_CNAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_CNAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setHidden:1];
    [(CNAtomTextView *)self addSubview:self->_baselineLayoutLabel];
    LODWORD(v7) = 1148846080;
    [(_CNAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setContentCompressionResistancePriority:1 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(_CNAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setContentHuggingPriority:1 forAxis:v8];
    v9 = MEMORY[0x1E696ACD8];
    v10 = _NSDictionaryOfVariableBindings(&cfstr_Baselinelayout.isa, self->_baselineLayoutLabel, 0);
    v11 = [v9 constraintsWithVisualFormat:@"H:|[_baselineLayoutLabel(0)]" options:0 metrics:0 views:v10];
    [v9 activateConstraints:v11];

    v12 = [(_CNAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel topAnchor];
    v13 = [(CNAtomTextView *)self topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    baselineLayoutConstraint = self->_baselineLayoutConstraint;
    self->_baselineLayoutConstraint = v14;

    v16 = self->_baselineLayoutConstraint;

    [(NSLayoutConstraint *)v16 setActive:1];
  }
}

- (void)_updateBaselineConstraintIfNecessaryUsingTextViewFrame:(CGRect)a3
{
  if (self->_baselineLayoutConstraint)
  {
    baselineLayoutLabel = self->_baselineLayoutLabel;
    if (baselineLayoutLabel)
    {
      height = a3.size.height;
      width = a3.size.width;
      y = a3.origin.y;
      x = a3.origin.x;
      [(_CNAtomTextViewBaselineLayoutStrut *)baselineLayoutLabel frame];
      v10 = v9;
      v12 = v11;
      [(_CNAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel intrinsicContentSize];
      [(_CNAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel setFrame:v10, v12, v13, v14];
      v15 = [(_CNAtomFieldEditor *)self->_textView layoutManager];
      [(CNAtomTextView *)self _firstGlyphBaselineLeftPointWithLayoutManager:v15];

      UIRoundToViewScale();
      v17 = v16;
      v18 = [(_CNAtomFieldEditor *)self->_textView superview];
      [(CNAtomTextView *)self convertRect:v18 fromView:x, y, width, height];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v32.origin.x = v20;
      v32.origin.y = v22;
      v32.size.width = v24;
      v32.size.height = v26;
      v27 = v17 + CGRectGetMinY(v32);
      [(_CNAtomTextViewBaselineLayoutStrut *)self->_baselineLayoutLabel _firstLineBaselineOffsetFromBoundsTop];
      v29 = v27 - v28;
      baselineLayoutConstraint = self->_baselineLayoutConstraint;

      [(NSLayoutConstraint *)baselineLayoutConstraint setConstant:v29];
    }
  }
}

- (id)viewForLastBaselineLayout
{
  [(CNAtomTextView *)self _createBaselineLayoutStrutIfNecessary];
  baselineLayoutLabel = self->_baselineLayoutLabel;

  return baselineLayoutLabel;
}

- (id)_attachmentAtCharacterIndex:(unint64_t)a3
{
  v4 = [(_CNAtomFieldEditor *)self->_textView textStorage];
  v5 = [v4 attribute:*MEMORY[0x1E69DB5F8] atIndex:a3 effectiveRange:0];

  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  return v6;
}

- (_NSRange)_characterRangeForAtomView:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3010000000;
  v18 = &unk_1B815995B;
  v19 = xmmword_1B81555E0;
  if (v4)
  {
    v5 = [(_CNAtomFieldEditor *)self->_textView textStorage];
    v6 = [v5 length];
    v7 = *MEMORY[0x1E69DB5F8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__CNAtomTextView__characterRangeForAtomView___block_invoke;
    v12[3] = &unk_1E7CD21C0;
    v13 = v4;
    v14 = &v15;
    [v5 enumerateAttribute:v7 inRange:0 options:v6 usingBlock:{0, v12}];

    v9 = v16[4];
    v8 = v16[5];
  }

  else
  {
    v8 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  _Block_object_dispose(&v15, 8);

  v10 = v9;
  v11 = v8;
  result.length = v11;
  result.location = v10;
  return result;
}

void __45__CNAtomTextView__characterRangeForAtomView___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v12 atomView];
    v10 = *(a1 + 32);

    if (v9 == v10)
    {
      v11 = *(*(a1 + 40) + 8);
      *(v11 + 32) = a3;
      *(v11 + 40) = a4;
      *a5 = 1;
    }
  }
}

- (void)_updateAtomMasksInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_atomViews;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [v13 bounds];
        [(CNAtomTextView *)self convertRect:v13 fromView:?];
        v26.origin.x = v14;
        v26.origin.y = v15;
        v26.size.width = v16;
        v26.size.height = v17;
        v24.origin.x = x;
        v24.origin.y = y;
        v24.size.width = width;
        v24.size.height = height;
        v25 = CGRectIntersection(v24, v26);
        [(CNAtomTextView *)self convertRect:v13 toView:v25.origin.x, v25.origin.y, v25.size.width, v25.size.height];
        [v13 setMaskBounds:?];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)_tapRecognized:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 state] == 3)
  {
    [v4 locationInView:self];
    v6 = v5;
    v8 = v7;
    if (![(CNAtomTextView *)self isFirstResponder])
    {
      [(CNAtomTextView *)self becomeFirstResponder];
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = self->_atomViews;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          v15 = [v14 delegateView];
          [v15 bounds];
          [(CNAtomTextView *)self convertRect:v15 fromView:?];
          v24.x = v6;
          v24.y = v8;
          if (CGRectContainsPoint(v25, v24))
          {
            v16 = [(CNAtomTextView *)self _characterRangeForAtomView:v14];
            if (v16 != 0x7FFFFFFFFFFFFFFFLL)
            {
              [(_CNAtomFieldEditor *)self->_textView setSelectedRange:v16, v17];
            }

            goto LABEL_16;
          }
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }
}

- (void)_clearButtonTapped:(id)a3
{
  [(CNAtomTextView *)self setRepresentedObjects:0];

  [(CNAtomTextView *)self becomeFirstResponder];
}

- (void)escKeyPressed:(id)a3
{
  v4 = a3;
  if ([(CNAtomTextView *)self _showsClearButton])
  {
    [(CNAtomTextView *)self _clearButtonTapped:v4];
  }
}

- (CGRect)_usedRectWithLayoutManager:(id)a3 textContainer:(id)a4
{
  [a3 usedRectForTextContainer:a4];
  v6 = v5;
  v8 = v7;
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  [(_CNAtomFieldEditor *)self->_textView textContainerInset];
  v12 = v11;
  [(_CNAtomFieldEditor *)self->_textView textContainerInset];
  v14 = v8 - (v12 + v13);
  [(_CNAtomFieldEditor *)self->_textView textContainerInset];
  v16 = v15;
  [(_CNAtomFieldEditor *)self->_textView textContainerInset];
  v18 = v6 - (v16 + v17);
  v19 = v9;
  v20 = v10;
  v21 = v14;
  result.size.height = v21;
  result.size.width = v18;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)layoutManager:(id)a3 didCompleteLayoutForTextContainer:(id)a4 atEnd:(BOOL)a5
{
  v5 = a5;
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v5 && (*&self->_flags & 0x20) == 0)
  {
    v10 = [MEMORY[0x1E695DFA8] setWithArray:self->_atomViews];
    v11 = [v8 textStorage];
    v12 = [v11 length];
    v13 = *MEMORY[0x1E69DB5F8];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __72__CNAtomTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke;
    v36[3] = &unk_1E7CD21E8;
    v14 = v10;
    v37 = v14;
    v38 = self;
    v15 = v8;
    v39 = v15;
    v16 = v9;
    v40 = v16;
    v31 = v11;
    [v11 enumerateAttribute:v13 inRange:0 options:v12 usingBlock:{0, v36}];
    if ([v14 count])
    {
      atomViews = self->_atomViews;
      v18 = [v14 allObjects];
      [(NSMutableArray *)atomViews removeObjectsInArray:v18];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v19 = v14;
      v20 = [v19 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v33;
        do
        {
          v23 = 0;
          do
          {
            if (*v33 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [*(*(&v32 + 1) + 8 * v23++) removeFromSuperview];
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v21);
      }
    }

    [(CNAtomTextView *)self _usedRectWithLayoutManager:v15 textContainer:v16];
    [(UIView *)self cnaui_currentScreenScale];
    UIRectIntegralWithScale();
    v25 = v24;
    v27 = v26;
    [(UIScrollView *)self->_scrollView contentSize];
    if (v29 != v25 || v28 != v27)
    {
      [(UIScrollView *)self->_scrollView setContentSize:v25, v27];
    }

    [(CNAtomTextView *)self _visibleAtomsRect];
    [(CNAtomTextView *)self _updateAtomMasksInRect:?];
  }
}

uint64_t __72__CNAtomTextView_layoutManager_didCompleteLayoutForTextContainer_atEnd___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v27;
  if (isKindOfClass)
  {
    v9 = [v27 atomView];
    [*(a1 + 32) removeObject:v9];
    v10 = [v9 superview];

    if (!v10)
    {
      [*(*(a1 + 40) + 488) addSubview:v9];
      [*(*(a1 + 40) + 512) addObject:v9];
    }

    v11 = [*(a1 + 48) glyphRangeForCharacterRange:a3 actualCharacterRange:{a4, 0}];
    [*(a1 + 48) boundingRectForGlyphRange:v11 inTextContainer:{v12, *(a1 + 56)}];
    [*(*(a1 + 40) + 488) convertGlyphRect:?];
    [v9 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [*(a1 + 40) cnaui_currentScreenScale];
    UIRectIntegralWithScale();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v9 frame];
    if (v18 != v22 || v20 != v21)
    {
      [v9 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v18, v20}];
      [v9 layoutSubviews];
    }

    v24 = [v9 viewForLastBaselineLayout];
    [v24 frame];
    [v9 setFrame:{v14, v16 - v25, v18, v20}];

    v8 = v27;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v8);
}

- (void)scrollViewDidScroll:(id)a3
{
  if (self->_scrollView == a3)
  {
    [(CNAtomTextView *)self _visibleAtomsRect];

    [(CNAtomTextView *)self _updateAtomMasksInRect:?];
  }
}

- (void)_scrollToSelectionIfNeeded
{
  if ((*&self->_flags & 0x40) != 0)
  {
    textView = self->_textView;
    v4 = [(_CNAtomFieldEditor *)textView selectedRange];
    [(_CNAtomFieldEditor *)textView _rectForScrollToVisible:v4, v5];
    [(_CNAtomFieldEditor *)self->_textView scrollRectToVisible:1 animated:?];
    *&self->_flags &= ~0x40u;
  }
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [v4 textStorage];
  [v4 setSelectedRange:{objc_msgSend(v5, "length"), 0}];

  [(CNAtomTextView *)self sendActionsForControlEvents:0x40000];
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  if (([v10 isEqualToString:@"\n"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"\t"))
  {
    v11 = [v9 textStorage];
    [v9 setSelectedRange:{objc_msgSend(v11, "length"), 0}];

    [(CNAtomTextView *)self sendActionsForControlEvents:0x80000];
LABEL_4:
    v12 = 0;
    goto LABEL_5;
  }

  if ([v10 isEqualToString:&stru_1F3002C60] && length == 1)
  {
    v14 = [(CNAtomTextView *)self _attachmentAtCharacterIndex:location];
    v15 = [v14 atomView];

    if (v15 && ![v15 selectionStyle])
    {
      [v9 setSelectedRange:{location, 1}];
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
    if ((*&self->_flags & 0x10) != 0 && length == 1)
    {
      v16 = [(CNAtomTextView *)self _attachmentAtCharacterIndex:location];
      v17 = [v16 atomView];
      if ([v17 selectionStyle])
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v19 = [v16 representedObject];
        v20 = [WeakRetained _atomTextView:self shouldReplaceRepresentedObject:v19 replacementText:v10];

        if ((v20 & 1) == 0)
        {
          [v9 setSelectedRange:{location + 1, 0}];
          [v9 insertText:v10];

          goto LABEL_4;
        }
      }

      else
      {
      }

      v12 = 1;
    }
  }

LABEL_5:

  return v12;
}

- (void)textViewDidChange:(id)a3
{
  [(CNAtomTextView *)self setNeedsLayout];

  [(CNAtomTextView *)self sendActionsForControlEvents:0x20000];
}

- (void)textViewDidChangeSelection:(id)a3
{
  v4 = a3;
  v5 = [v4 textStorage];
  v6 = [v4 layoutManager];
  v7 = [v4 selectedRange];
  v9 = v8;
  v10 = [v6 glyphRangeForCharacterRange:0 actualCharacterRange:{objc_msgSend(v5, "length"), 0}];
  v12 = v11;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__0;
  v33 = __Block_byref_object_dispose__0;
  v34 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __45__CNAtomTextView_textViewDidChangeSelection___block_invoke;
  v22 = &unk_1E7CD2238;
  v13 = v6;
  v23 = v13;
  v14 = v5;
  v24 = v14;
  v27 = v7;
  v28 = v9;
  v15 = v4;
  v25 = v15;
  v26 = &v29;
  [v13 enumerateLineFragmentsForGlyphRange:v10 usingBlock:{v12, &v19}];
  v16 = v30[5];
  textView = self->_textView;
  if (v16)
  {
    [v16 bounds];
    [(_CNAtomFieldEditor *)textView convertRect:v30[5] fromView:?];
  }

  else
  {
    [(_CNAtomFieldEditor *)self->_textView _rectForScrollToVisible:v7, v9, v19, v20, v21, v22, v23, v24];
  }

  [(_CNAtomFieldEditor *)self->_textView scrollRectToVisible:1 animated:?];
  if (*&self->_flags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained atomTextViewDidChangeSelection:self];
  }

  _Block_object_dispose(&v29, 8);
}

void __45__CNAtomTextView_textViewDidChangeSelection___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) characterRangeForGlyphRange:a3 actualGlyphRange:{a4, 0}];
  v7 = v6;
  v8 = *MEMORY[0x1E69DB5F8];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__CNAtomTextView_textViewDidChangeSelection___block_invoke_2;
  v12[3] = &unk_1E7CD2210;
  v15 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13 = v10;
  v14 = v11;
  [v9 enumerateAttribute:v8 inRange:v5 options:v7 usingBlock:{0, v12}];
}

uint64_t __45__CNAtomTextView_textViewDidChangeSelection___block_invoke_2(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v28 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = v28;
  if (isKindOfClass)
  {
    v9 = [v28 atomView];
    v10 = a1[6];
    v11 = a1[7];
    if (a3 < v10 || a3 - v10 >= v11)
    {
      v13 = 0;
    }

    else
    {
      v14 = a3 == v10;
      v15 = a3 + a4 == v11 + v10;
      v16 = a1[4];
      v17 = [v16 beginningOfDocument];
      v18 = [v16 positionFromPosition:v17 offset:a3];
      v19 = [v16 baseWritingDirectionForPosition:v18 inDirection:0];

      if (v19 == 1)
      {
        v20 = v15;
      }

      else
      {
        v20 = v14;
      }

      if (v19 == 1)
      {
        v21 = v14;
      }

      else
      {
        v21 = v15;
      }

      v22 = v20 || v21;
      v23 = !v20;
      v24 = 4;
      if (v23)
      {
        v24 = 0;
      }

      v23 = !v21;
      v25 = 8;
      if (v23)
      {
        v25 = 0;
      }

      v26 = v24 | v25;
      if (v22)
      {
        v13 = v26;
      }

      else
      {
        v13 = 1;
      }

      objc_storeStrong((*(a1[5] + 8) + 40), v9);
    }

    [v9 setSelectionStyle:v13 animated:0];

    v8 = v28;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v8);
}

- (void)_textStorageDidProcessEditing:(id)a3
{
  if ([(_CNAtomFieldEditor *)self->_textView isSelectable])
  {
    if ([(CNAtomTextView *)self isFirstResponder])
    {
      *&self->_flags |= 0x40u;
    }
  }
}

- (_NSRange)selectionRange
{
  v2 = [(_CNAtomFieldEditor *)self->_textView selectionRange];
  result.length = v3;
  result.location = v2;
  return result;
}

- (CGRect)firstRectForRange:(id)a3
{
  [(_CNAtomFieldEditor *)self->_textView firstRectForRange:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  [(_CNAtomFieldEditor *)self->_textView caretRectForPosition:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)textInputTraits
{
  textInputTraits = self->_textInputTraits;
  if (!textInputTraits)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD108]);
    v5 = self->_textInputTraits;
    self->_textInputTraits = v4;

    textInputTraits = self->_textInputTraits;
  }

  return textInputTraits;
}

- (void)takeTraitsFrom:(id)a3
{
  v4 = a3;
  v5 = [(CNAtomTextView *)self textInputTraits];
  [v5 takeTraitsFrom:v4];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  if ([objc_opt_class() instancesRespondToSelector:a3])
  {
    v5 = [(CNAtomTextView *)self textInputTraits];
  }

  else if ([objc_opt_class() instancesRespondToSelector:a3])
  {
    v5 = self->_textView;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNAtomTextView;
    v5 = [(CNAtomTextView *)&v7 forwardingTargetForSelector:a3];
  }

  return v5;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
    }

    v6 = v9;
  }

  return v6;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = CNAtomTextView;
  if ([(CNAtomTextView *)&v7 respondsToSelector:?])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CNAtomTextView *)self textInputTraits];
    if (objc_opt_respondsToSelector())
    {
      v4 = 1;
    }

    else
    {
      v4 = objc_opt_respondsToSelector();
    }
  }

  return v4 & 1;
}

- (id)keyCommands
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_escKeyPressed_];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = sel__clearButtonTapped_ == a3 || sel_escKeyPressed_ == a3 && [(CNAtomTextView *)self _showsClearButton]|| [(_CNAtomFieldEditor *)self->_textView canPerformAction:a3 withSender:v6];

  return v7;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = CNAtomTextView;
  v5 = [(CNAtomTextView *)&v10 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self || v5 == self->_textView)
  {
    v7 = [(UIButton *)self->_clearButton superview];
    if (v7 != self)
    {
      v8 = [(UIView *)self->_leadingView superview];
      if (v8 != self)
      {
        [(UIView *)self->_trailingView superview];
      }
    }
  }

  return v6;
}

- (CNAtomTextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSDirectionalEdgeInsets)textInsets
{
  top = self->_textInsets.top;
  leading = self->_textInsets.leading;
  bottom = self->_textInsets.bottom;
  trailing = self->_textInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)placeholderInsets
{
  top = self->_placeholderInsets.top;
  leading = self->_placeholderInsets.leading;
  bottom = self->_placeholderInsets.bottom;
  trailing = self->_placeholderInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)leadingViewInsets
{
  top = self->_leadingViewInsets.top;
  leading = self->_leadingViewInsets.leading;
  bottom = self->_leadingViewInsets.bottom;
  trailing = self->_leadingViewInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)trailingViewInsets
{
  top = self->_trailingViewInsets.top;
  leading = self->_trailingViewInsets.leading;
  bottom = self->_trailingViewInsets.bottom;
  trailing = self->_trailingViewInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)clearButtonInsets
{
  top = self->_clearButtonInsets.top;
  leading = self->_clearButtonInsets.leading;
  bottom = self->_clearButtonInsets.bottom;
  trailing = self->_clearButtonInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

uint64_t __25___CNAtomTextView_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.autocomplete.ui", "composerecipient");
  v1 = os_log_cn_once_object_13;
  os_log_cn_once_object_13 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __60___CNAtomTextView_enumerateAtomsInCharacterRange_withBlock___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 objectForKey:*MEMORY[0x1E69DB5F8]];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v6 atomView];

      if (v3)
      {
        v4 = *(a1 + 32);
        v5 = [v6 atomView];
        (*(v4 + 16))(v4, v5);
      }
    }
  }
}

void __44___CNAtomTextView_enumerateAtomAttachments___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*MEMORY[0x1E69DB5F8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __42___CNAtomTextView_selectionRectsForRange___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 objectForKey:*MEMORY[0x1E69DB5F8]];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56) + v8;
    v10 = a3 + a4;
    v11 = [v7 atomView];
    v12 = *(a1 + 32);
    [v11 selectionFrame];
    [v12 convertRect:v11 fromView:?];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    if (a3 == v8)
    {
      v21 = objc_alloc_init(_CNAtomTextSelectionRect);
      [(_CNAtomTextSelectionRect *)v21 setRect:v14, v16, 0.0, v20];
      [(_CNAtomTextSelectionRect *)v21 setContainsStart:1];
      [*(a1 + 40) addObject:v21];
    }

    if (v9 == v10)
    {
      v22 = objc_alloc_init(_CNAtomTextSelectionRect);
      [(_CNAtomTextSelectionRect *)v22 setRect:v14 + v18, v16, 0.0, v20];
      [(_CNAtomTextSelectionRect *)v22 setContainsEnd:1];
      [*(a1 + 40) addObject:v22];
    }
  }

  else
  {
    v23 = *(a1 + 32);
    v24 = [v23 beginningOfDocument];
    v25 = [v23 positionFromPosition:v24 offset:a3];

    v26 = [*(a1 + 32) positionFromPosition:v25 offset:a4];
    v27 = [*(a1 + 32) textRangeFromPosition:v25 toPosition:v26];
    v28 = *(a1 + 40);
    v30.receiver = *(a1 + 32);
    v30.super_class = _CNAtomTextView;
    v29 = objc_msgSendSuper2(&v30, sel_selectionRectsForRange_, v27);
    [v28 addObjectsFromArray:v29];
  }
}

uint64_t __25___CNAtomTextView_paste___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 canLoadObjectOfClass:objc_opt_class()];

  return v3;
}

uint64_t __26___CNAtomTextView_delete___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 recipient];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __30___CNAtomTextView_keyCommands__block_invoke(uint64_t a1)
{
  v17[8] = *MEMORY[0x1E69E9840];
  v15 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF30] modifierFlags:0 action:sel_upArrowPressed];
  [v15 setWantsPriorityOverSystemBehavior:1];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDE90] modifierFlags:0 action:sel_downArrowPressed];
  [v2 setWantsPriorityOverSystemBehavior:1];
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF10] modifierFlags:0 action:sel_leftArrowPressed];
  [v3 setWantsPriorityOverSystemBehavior:1];
  v4 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDF28] modifierFlags:0 action:sel_rightArrowPressed];
  [v4 setWantsPriorityOverSystemBehavior:1];
  v5 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_returnPressed];
  [v5 setWantsPriorityOverSystemBehavior:1];
  v6 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\t" modifierFlags:0 action:sel_tabPressed];
  [v6 setWantsPriorityOverSystemBehavior:1];
  v7 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@" modifierFlags:" action:{0, sel_commaPressed}];
  [v7 setWantsPriorityOverSystemBehavior:1];
  v8 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_escKeyPressed];
  [v8 setWantsPriorityOverSystemBehavior:1];
  v16.receiver = *(a1 + 32);
  v16.super_class = _CNAtomTextView;
  v9 = objc_msgSendSuper2(&v16, sel_keyCommands);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v17[0] = v15;
  v17[1] = v2;
  v17[2] = v3;
  v17[3] = v4;
  v17[4] = v5;
  v17[5] = v6;
  v17[6] = v7;
  v17[7] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:8];
  v13 = [v11 arrayByAddingObjectsFromArray:v12];
  v14 = keyCommands_keyCommands;
  keyCommands_keyCommands = v13;
}

@end