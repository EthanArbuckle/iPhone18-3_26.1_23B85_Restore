@interface ICNoteEditorDateView
+ (id)newDateView;
- (BOOL)_accessibilityScrollToVisible;
- (BOOL)iconHidden;
- (UIFont)font;
- (UIImageView)lockImageView;
- (UILabel)label;
- (double)dateViewMaximumWidth;
- (double)preferredHeight;
- (id)accessibilityContainer;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)dateViewAttributes;
- (void)_updateLayout;
- (void)awakeFromNib;
- (void)contentSizeCategoryDidChange;
- (void)dateViewDidTap:(id)a3;
- (void)dealloc;
- (void)formatter:(id)a3 iconHiddenDidChange:(BOOL)a4;
- (void)formatter:(id)a3 iconImageDidChange:(id)a4;
- (void)formatter:(id)a3 textDidChange:(id)a4 fullText:(id)a5;
- (void)layoutSubviews;
- (void)reset;
- (void)setNote:(id)a3;
- (void)updateLayoutIfNecessary;
@end

@implementation ICNoteEditorDateView

- (void)awakeFromNib
{
  v25.receiver = self;
  v25.super_class = ICNoteEditorDateView;
  [(ICNoteEditorDateView *)&v25 awakeFromNib];
  [(ICNoteEditorDateView *)self setCachedHeight:0.0];
  v3 = [MEMORY[0x277D74300] ic_preferredFontForDateText];
  v4 = [(ICNoteEditorDateView *)self label];
  [v4 setFont:v3];

  v5 = [(ICNoteEditorDateView *)self label];
  v6 = [v5 font];
  v7 = [v6 ic_fontHasSingleLineA];

  if ((v7 & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[self.label.font ic_fontHasSingleLineA]" functionName:"-[ICNoteEditorDateView awakeFromNib]" simulateCrash:1 showAlert:0 format:@"font should have a single-line a attribute"];
  }

  v8 = [MEMORY[0x277D75348] ic_noteEditorSecondaryLabelColor];
  v9 = [(ICNoteEditorDateView *)self label];
  [v9 setTextColor:v8];

  v10 = [(ICNoteEditorDateView *)self label];
  [v10 setTextAlignment:1];

  v11 = [(ICNoteEditorDateView *)self label];
  [v11 setText:&stru_282757698];

  v12 = [(ICNoteEditorDateView *)self label];
  v13 = [v12 textColor];
  v14 = [(ICNoteEditorDateView *)self lockImageView];
  [v14 setTintColor:v13];

  v15 = [(ICNoteEditorDateView *)self lockImageView];
  [v15 setContentMode:1];

  v16 = MEMORY[0x277D755D0];
  v17 = [(ICNoteEditorDateView *)self label];
  v18 = [v17 font];
  v19 = [v16 configurationWithFont:v18 scale:1];
  v20 = [(ICNoteEditorDateView *)self lockImageView];
  [v20 setPreferredSymbolConfiguration:v19];

  v21 = objc_alloc_init(ICNoteDateFormatterController);
  [(ICNoteEditorDateView *)self setFormatterController:v21];

  v22 = [(ICNoteEditorDateView *)self formatterController];
  [v22 setDelegate:self];

  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 addObserver:self selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];

  v24 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_dateViewDidTap_];
  [(ICNoteEditorDateView *)self addGestureRecognizer:v24];
}

- (UIImageView)lockImageView
{
  WeakRetained = objc_loadWeakRetained(&self->_lockImageView);

  return WeakRetained;
}

- (double)dateViewMaximumWidth
{
  v2 = [(ICNoteEditorDateView *)self label];
  [v2 preferredMaxLayoutWidth];
  v4 = v3;

  return v4;
}

+ (id)newDateView
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v4 = NSStringFromClass(a1);
  v5 = [v3 loadNibNamed:v4 owner:a1 options:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v11;

    if (v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"result != ((void*)0)" functionName:"+[ICNoteEditorDateView newDateView]" simulateCrash:1 showAlert:0 format:{@"Unable to load date view", v14}];
  v12 = 0;
LABEL_12:
  [v12 setTranslatesAutoresizingMaskIntoConstraints:{1, v14}];

  return v12;
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

- (id)dateViewAttributes
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D740A8];
  v2 = [(ICNoteEditorDateView *)self label];
  v3 = [v2 font];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (double)preferredHeight
{
  [(ICNoteEditorDateView *)self cachedHeight];
  if (v3 == 0.0)
  {
    v4 = [(ICNoteEditorDateView *)self superview];
    [v4 frame];
    v6 = v5;
    v7 = [(ICNoteEditorDateView *)self label];
    [v7 setPreferredMaxLayoutWidth:v6];

    v8 = [(ICNoteEditorDateView *)self label];
    [v8 intrinsicContentSize];
    v10 = v9;

    v11 = [MEMORY[0x277D75418] ic_isVision];
    v12 = v10 + 20.0;
    if (!v11)
    {
      v12 = v10;
    }

    [(ICNoteEditorDateView *)self setCachedHeight:v12];
  }

  [(ICNoteEditorDateView *)self cachedHeight];
  return result;
}

- (void)updateLayoutIfNecessary
{
  if (([MEMORY[0x277D361D0] isRunningUnitTests] & 1) == 0)
  {
    [(ICNoteEditorDateView *)self dateViewMaximumWidth];
    v4 = v3;
    [(ICNoteEditorDateView *)self dateViewMaximumWidthOnPreviousTextChange];
    if (v4 != v5)
    {
      v6 = [(ICNoteEditorDateView *)self dateViewLayoutUpdateDelayer];

      if (!v6)
      {
        v7 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel__updateLayout delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:0.25];
        [(ICNoteEditorDateView *)self setDateViewLayoutUpdateDelayer:v7];
      }

      v8 = [(ICNoteEditorDateView *)self dateViewLayoutUpdateDelayer];
      [v8 requestFire];
    }
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorDateView;
  [(ICNoteEditorDateView *)&v7 layoutSubviews];
  v3 = [(ICNoteEditorDateView *)self superview];
  [v3 frame];
  v5 = v4;
  v6 = [(ICNoteEditorDateView *)self label];
  [v6 setPreferredMaxLayoutWidth:v5];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNoteEditorDateView;
  [(ICNoteEditorDateView *)&v4 dealloc];
}

- (void)reset
{
  [(ICNoteEditorDateView *)self setCachedHeight:0.0];
  v3 = [(ICNoteEditorDateView *)self formatterController];
  [v3 setNote:0];

  v4 = [(ICNoteEditorDateView *)self note];
  v5 = [(ICNoteEditorDateView *)self formatterController];
  [v5 setNote:v4];

  v6 = [(ICNoteEditorDateView *)self label];
  [v6 setAccessibilityLabelBlock:0];
}

- (void)_updateLayout
{
  v2 = [(ICNoteEditorDateView *)self formatterController];
  [v2 updateDate];
}

- (void)formatter:(id)a3 textDidChange:(id)a4 fullText:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(ICNoteEditorDateView *)self label];
  v10 = [v9 text];
  v11 = [v10 isEqualToString:v7];

  if ((v11 & 1) == 0)
  {
    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = &stru_282757698;
    }

    v13 = [(ICNoteEditorDateView *)self label];
    [v13 setText:v12];

    [(ICNoteEditorDateView *)self setCachedHeight:0.0];
    v14 = [(ICNoteEditorDateView *)self label];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __57__ICNoteEditorDateView_formatter_textDidChange_fullText___block_invoke;
    v18 = &unk_2781AF740;
    v19 = v7;
    v20 = v8;
    [v14 setAccessibilityLabelBlock:&v15];
  }

  [(ICNoteEditorDateView *)self dateViewMaximumWidth:v15];
  [(ICNoteEditorDateView *)self setDateViewMaximumWidthOnPreviousTextChange:?];
}

id __57__ICNoteEditorDateView_formatter_textDidChange_fullText___block_invoke(uint64_t a1)
{
  v10[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CB8898];
  v10[0] = *MEMORY[0x277CB8880];
  v10[1] = v2;
  v3 = *MEMORY[0x277CB88A8];
  v10[2] = *MEMORY[0x277CB88A0];
  v10[3] = v3;
  v10[4] = *MEMORY[0x277CB88B0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:5];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CB88F8] currentRequest];
  v7 = [v6 technology];
  if ([v4 containsObject:v7])
  {
    v8 = [*(a1 + 40) length];

    if (!v8)
    {
      goto LABEL_6;
    }

    v6 = v5;
    v5 = *(a1 + 40);
  }

  else
  {
  }

LABEL_6:

  return v5;
}

- (void)formatter:(id)a3 iconHiddenDidChange:(BOOL)a4
{
  v4 = a4;
  v5 = [(ICNoteEditorDateView *)self lockImageView];
  [v5 setHidden:v4];
}

- (void)formatter:(id)a3 iconImageDidChange:(id)a4
{
  v5 = a4;
  v6 = [(ICNoteEditorDateView *)self lockImageView];
  [v6 setImage:v5];
}

- (void)setNote:(id)a3
{
  v4 = a3;
  [(ICNoteEditorDateView *)self setCachedHeight:0.0];
  note = self->_note;
  self->_note = v4;
  v6 = v4;

  v7 = [(ICNoteEditorDateView *)self formatterController];
  [v7 setNote:v6];

  [(ICNoteEditorDateView *)self setHidden:v6 == 0];

  [(ICNoteEditorDateView *)self setNeedsLayout];
}

- (void)dateViewDidTap:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteEditorDateView *)self label];
  [v4 locationInView:v5];
  v7 = v6;

  v8 = [(ICNoteEditorDateView *)self label];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v19.origin.x = v10;
  v19.origin.y = v12;
  v19.size.width = v14;
  v19.size.height = v16;
  if (v7 > CGRectGetMinX(v19) + -5.0)
  {
    v20.origin.x = v10;
    v20.origin.y = v12;
    v20.size.width = v14;
    v20.size.height = v16;
    if (v7 < CGRectGetMaxX(v20) + 5.0)
    {
      v17 = [(ICNoteEditorDateView *)self formatterController];
      [v17 toggleVisibleDateType];
    }
  }
}

- (BOOL)iconHidden
{
  v2 = [(ICNoteEditorDateView *)self formatterController];
  v3 = [v2 iconHidden];

  return v3;
}

- (UIFont)font
{
  v2 = [(ICNoteEditorDateView *)self label];
  v3 = [v2 font];

  return v3;
}

- (id)accessibilityContainer
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorDateView;
  v2 = [(ICNoteEditorDateView *)&v7 accessibilityContainer];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    while (![v4 conformsToProtocol:&unk_28282EDC0])
    {
      v5 = [v4 accessibilityContainer];

      v4 = v5;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v4 = v4;

    v3 = v4;
  }

  else
  {
    v4 = 0;
  }

LABEL_8:

  return v3;
}

- (id)accessibilityLabel
{
  if ([(ICNoteEditorDateView *)self iconHidden])
  {
    v3 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v3 = [v4 localizedStringForKey:@"Locked Note" value:&stru_282757698 table:0];
  }

  v5 = [(ICNoteEditorDateView *)self label];
  v6 = [v5 accessibilityLabel];
  v7 = __ICAccessibilityStringForVariables();

  return v7;
}

- (id)accessibilityUserInputLabels
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 localizedStringForKey:@"Timestamp" value:&stru_282757698 table:0];
  v12[0] = v4;
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 localizedStringForKey:@"Created" value:&stru_282757698 table:0];
  v12[1] = v6;
  v7 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [v7 localizedStringForKey:@"Edited" value:&stru_282757698 table:0];
  v12[2] = v8;
  v9 = [(ICNoteEditorDateView *)self accessibilityLabel];
  v12[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  return v10;
}

- (BOOL)_accessibilityScrollToVisible
{
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  if (IsVoiceOverRunning)
  {
    v4 = [(ICNoteEditorDateView *)self nextResponder];
    if (v4)
    {
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v5 = [v4 nextResponder];

        v4 = v5;
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v4 = v4;
    }

LABEL_7:
    [v4 showOverscrollContentAndScrollToTop];
  }

  return IsVoiceOverRunning;
}

- (void)contentSizeCategoryDidChange
{
  [(ICNoteEditorDateView *)self setCachedHeight:0.0];
  v3 = [MEMORY[0x277D74300] ic_preferredFontForDateText];
  v4 = [(ICNoteEditorDateView *)self label];
  [v4 setFont:v3];

  v5 = [(ICNoteEditorDateView *)self label];
  v6 = [v5 font];
  LOBYTE(v4) = [v6 ic_fontHasSingleLineA];

  if ((v4 & 1) == 0)
  {
    v7 = MEMORY[0x277D36198];

    [v7 handleFailedAssertWithCondition:"[self.label.font ic_fontHasSingleLineA]" functionName:"-[ICNoteEditorDateView contentSizeCategoryDidChange]" simulateCrash:1 showAlert:0 format:@"font should have a single-line a attribute"];
  }
}

@end