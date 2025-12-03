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
- (void)dateViewDidTap:(id)tap;
- (void)dealloc;
- (void)formatter:(id)formatter iconHiddenDidChange:(BOOL)change;
- (void)formatter:(id)formatter iconImageDidChange:(id)change;
- (void)formatter:(id)formatter textDidChange:(id)change fullText:(id)text;
- (void)layoutSubviews;
- (void)reset;
- (void)setNote:(id)note;
- (void)updateLayoutIfNecessary;
@end

@implementation ICNoteEditorDateView

- (void)awakeFromNib
{
  v25.receiver = self;
  v25.super_class = ICNoteEditorDateView;
  [(ICNoteEditorDateView *)&v25 awakeFromNib];
  [(ICNoteEditorDateView *)self setCachedHeight:0.0];
  ic_preferredFontForDateText = [MEMORY[0x277D74300] ic_preferredFontForDateText];
  label = [(ICNoteEditorDateView *)self label];
  [label setFont:ic_preferredFontForDateText];

  label2 = [(ICNoteEditorDateView *)self label];
  font = [label2 font];
  ic_fontHasSingleLineA = [font ic_fontHasSingleLineA];

  if ((ic_fontHasSingleLineA & 1) == 0)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[self.label.font ic_fontHasSingleLineA]" functionName:"-[ICNoteEditorDateView awakeFromNib]" simulateCrash:1 showAlert:0 format:@"font should have a single-line a attribute"];
  }

  ic_noteEditorSecondaryLabelColor = [MEMORY[0x277D75348] ic_noteEditorSecondaryLabelColor];
  label3 = [(ICNoteEditorDateView *)self label];
  [label3 setTextColor:ic_noteEditorSecondaryLabelColor];

  label4 = [(ICNoteEditorDateView *)self label];
  [label4 setTextAlignment:1];

  label5 = [(ICNoteEditorDateView *)self label];
  [label5 setText:&stru_282757698];

  label6 = [(ICNoteEditorDateView *)self label];
  textColor = [label6 textColor];
  lockImageView = [(ICNoteEditorDateView *)self lockImageView];
  [lockImageView setTintColor:textColor];

  lockImageView2 = [(ICNoteEditorDateView *)self lockImageView];
  [lockImageView2 setContentMode:1];

  v16 = MEMORY[0x277D755D0];
  label7 = [(ICNoteEditorDateView *)self label];
  font2 = [label7 font];
  v19 = [v16 configurationWithFont:font2 scale:1];
  lockImageView3 = [(ICNoteEditorDateView *)self lockImageView];
  [lockImageView3 setPreferredSymbolConfiguration:v19];

  v21 = objc_alloc_init(ICNoteDateFormatterController);
  [(ICNoteEditorDateView *)self setFormatterController:v21];

  formatterController = [(ICNoteEditorDateView *)self formatterController];
  [formatterController setDelegate:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x277D76810] object:0];

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
  label = [(ICNoteEditorDateView *)self label];
  [label preferredMaxLayoutWidth];
  v4 = v3;

  return v4;
}

+ (id)newDateView
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  v4 = NSStringFromClass(self);
  v5 = [v3 loadNibNamed:v4 owner:self options:0];

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
  label = [(ICNoteEditorDateView *)self label];
  font = [label font];
  v7[0] = font;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  return v4;
}

- (double)preferredHeight
{
  [(ICNoteEditorDateView *)self cachedHeight];
  if (v3 == 0.0)
  {
    superview = [(ICNoteEditorDateView *)self superview];
    [superview frame];
    v6 = v5;
    label = [(ICNoteEditorDateView *)self label];
    [label setPreferredMaxLayoutWidth:v6];

    label2 = [(ICNoteEditorDateView *)self label];
    [label2 intrinsicContentSize];
    v10 = v9;

    ic_isVision = [MEMORY[0x277D75418] ic_isVision];
    v12 = v10 + 20.0;
    if (!ic_isVision)
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
      dateViewLayoutUpdateDelayer = [(ICNoteEditorDateView *)self dateViewLayoutUpdateDelayer];

      if (!dateViewLayoutUpdateDelayer)
      {
        v7 = [objc_alloc(MEMORY[0x277D36258]) initWithTarget:self selector:sel__updateLayout delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:0.25];
        [(ICNoteEditorDateView *)self setDateViewLayoutUpdateDelayer:v7];
      }

      dateViewLayoutUpdateDelayer2 = [(ICNoteEditorDateView *)self dateViewLayoutUpdateDelayer];
      [dateViewLayoutUpdateDelayer2 requestFire];
    }
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorDateView;
  [(ICNoteEditorDateView *)&v7 layoutSubviews];
  superview = [(ICNoteEditorDateView *)self superview];
  [superview frame];
  v5 = v4;
  label = [(ICNoteEditorDateView *)self label];
  [label setPreferredMaxLayoutWidth:v5];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNoteEditorDateView;
  [(ICNoteEditorDateView *)&v4 dealloc];
}

- (void)reset
{
  [(ICNoteEditorDateView *)self setCachedHeight:0.0];
  formatterController = [(ICNoteEditorDateView *)self formatterController];
  [formatterController setNote:0];

  note = [(ICNoteEditorDateView *)self note];
  formatterController2 = [(ICNoteEditorDateView *)self formatterController];
  [formatterController2 setNote:note];

  label = [(ICNoteEditorDateView *)self label];
  [label setAccessibilityLabelBlock:0];
}

- (void)_updateLayout
{
  formatterController = [(ICNoteEditorDateView *)self formatterController];
  [formatterController updateDate];
}

- (void)formatter:(id)formatter textDidChange:(id)change fullText:(id)text
{
  changeCopy = change;
  textCopy = text;
  label = [(ICNoteEditorDateView *)self label];
  text = [label text];
  v11 = [text isEqualToString:changeCopy];

  if ((v11 & 1) == 0)
  {
    if (changeCopy)
    {
      v12 = changeCopy;
    }

    else
    {
      v12 = &stru_282757698;
    }

    label2 = [(ICNoteEditorDateView *)self label];
    [label2 setText:v12];

    [(ICNoteEditorDateView *)self setCachedHeight:0.0];
    label3 = [(ICNoteEditorDateView *)self label];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __57__ICNoteEditorDateView_formatter_textDidChange_fullText___block_invoke;
    v18 = &unk_2781AF740;
    v19 = changeCopy;
    v20 = textCopy;
    [label3 setAccessibilityLabelBlock:&v15];
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

- (void)formatter:(id)formatter iconHiddenDidChange:(BOOL)change
{
  changeCopy = change;
  lockImageView = [(ICNoteEditorDateView *)self lockImageView];
  [lockImageView setHidden:changeCopy];
}

- (void)formatter:(id)formatter iconImageDidChange:(id)change
{
  changeCopy = change;
  lockImageView = [(ICNoteEditorDateView *)self lockImageView];
  [lockImageView setImage:changeCopy];
}

- (void)setNote:(id)note
{
  noteCopy = note;
  [(ICNoteEditorDateView *)self setCachedHeight:0.0];
  note = self->_note;
  self->_note = noteCopy;
  v6 = noteCopy;

  formatterController = [(ICNoteEditorDateView *)self formatterController];
  [formatterController setNote:v6];

  [(ICNoteEditorDateView *)self setHidden:v6 == 0];

  [(ICNoteEditorDateView *)self setNeedsLayout];
}

- (void)dateViewDidTap:(id)tap
{
  tapCopy = tap;
  label = [(ICNoteEditorDateView *)self label];
  [tapCopy locationInView:label];
  v7 = v6;

  label2 = [(ICNoteEditorDateView *)self label];
  [label2 bounds];
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
      formatterController = [(ICNoteEditorDateView *)self formatterController];
      [formatterController toggleVisibleDateType];
    }
  }
}

- (BOOL)iconHidden
{
  formatterController = [(ICNoteEditorDateView *)self formatterController];
  iconHidden = [formatterController iconHidden];

  return iconHidden;
}

- (UIFont)font
{
  label = [(ICNoteEditorDateView *)self label];
  font = [label font];

  return font;
}

- (id)accessibilityContainer
{
  v7.receiver = self;
  v7.super_class = ICNoteEditorDateView;
  accessibilityContainer = [(ICNoteEditorDateView *)&v7 accessibilityContainer];
  v3 = accessibilityContainer;
  if (accessibilityContainer)
  {
    v4 = accessibilityContainer;
    while (![v4 conformsToProtocol:&unk_28282EDC0])
    {
      accessibilityContainer2 = [v4 accessibilityContainer];

      v4 = accessibilityContainer2;
      if (!accessibilityContainer2)
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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v3 = [mainBundle localizedStringForKey:@"Locked Note" value:&stru_282757698 table:0];
  }

  label = [(ICNoteEditorDateView *)self label];
  accessibilityLabel = [label accessibilityLabel];
  v7 = __ICAccessibilityStringForVariables();

  return v7;
}

- (id)accessibilityUserInputLabels
{
  v12[4] = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [mainBundle localizedStringForKey:@"Timestamp" value:&stru_282757698 table:0];
  v12[0] = v4;
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [mainBundle2 localizedStringForKey:@"Created" value:&stru_282757698 table:0];
  v12[1] = v6;
  mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = [mainBundle3 localizedStringForKey:@"Edited" value:&stru_282757698 table:0];
  v12[2] = v8;
  accessibilityLabel = [(ICNoteEditorDateView *)self accessibilityLabel];
  v12[3] = accessibilityLabel;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  return v10;
}

- (BOOL)_accessibilityScrollToVisible
{
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  if (IsVoiceOverRunning)
  {
    nextResponder = [(ICNoteEditorDateView *)self nextResponder];
    if (nextResponder)
    {
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v4NextResponder = [nextResponder nextResponder];

        nextResponder = v4NextResponder;
        if (!v4NextResponder)
        {
          goto LABEL_7;
        }
      }

      nextResponder = nextResponder;
    }

LABEL_7:
    [nextResponder showOverscrollContentAndScrollToTop];
  }

  return IsVoiceOverRunning;
}

- (void)contentSizeCategoryDidChange
{
  [(ICNoteEditorDateView *)self setCachedHeight:0.0];
  ic_preferredFontForDateText = [MEMORY[0x277D74300] ic_preferredFontForDateText];
  label = [(ICNoteEditorDateView *)self label];
  [label setFont:ic_preferredFontForDateText];

  label2 = [(ICNoteEditorDateView *)self label];
  font = [label2 font];
  LOBYTE(label) = [font ic_fontHasSingleLineA];

  if ((label & 1) == 0)
  {
    v7 = MEMORY[0x277D36198];

    [v7 handleFailedAssertWithCondition:"[self.label.font ic_fontHasSingleLineA]" functionName:"-[ICNoteEditorDateView contentSizeCategoryDidChange]" simulateCrash:1 showAlert:0 format:@"font should have a single-line a attribute"];
  }
}

@end