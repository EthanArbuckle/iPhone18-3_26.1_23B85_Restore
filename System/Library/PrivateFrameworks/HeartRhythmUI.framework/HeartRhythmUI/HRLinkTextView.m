@interface HRLinkTextView
- (HRLinkTextView)initWithLinkRange:(_NSRange)a3 URLIdentifier:(int64_t)a4 delegate:(id)a5 userInterfaceStyleChanged:(id)a6;
- (HRLinkTextViewDelegate)delegate;
- (_NSRange)linkRange;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateCurrentUserInterfaceStyleIfNeeded;
- (void)layoutSubviews;
@end

@implementation HRLinkTextView

- (HRLinkTextView)initWithLinkRange:(_NSRange)a3 URLIdentifier:(int64_t)a4 delegate:(id)a5 userInterfaceStyleChanged:(id)a6
{
  length = a3.length;
  location = a3.location;
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = HRLinkTextView;
  v13 = [(HRLinkTextView *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_linkRange.location = location;
    v13->_linkRange.length = length;
    v13->_URLIdentifier = a4;
    objc_storeWeak(&v13->_delegate, v11);
    v15 = MEMORY[0x25309CD70](v12);
    userInterfaceStyleChanged = v14->_userInterfaceStyleChanged;
    v14->_userInterfaceStyleChanged = v15;

    [(HRLinkTextView *)v14 _setUpUI];
    [(HRLinkTextView *)v14 _setUpConstraints];
  }

  return v14;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = HRLinkTextView;
  [(HRLinkTextView *)&v3 layoutSubviews];
  [(HRLinkTextView *)self _updateCurrentUserInterfaceStyleIfNeeded];
}

- (void)_updateCurrentUserInterfaceStyleIfNeeded
{
  v3 = [(HRLinkTextView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if ([(HRLinkTextView *)self currentUserInterfaceStyle]!= v4)
  {
    [(HRLinkTextView *)self setCurrentUserInterfaceStyle:v4];
    v5 = [(HRLinkTextView *)self userInterfaceStyleChanged];

    if (v5)
    {
      v6 = [(HRLinkTextView *)self userInterfaceStyleChanged];
      v6[2](v6, self, v4);
    }
  }
}

- (id)firstBaselineAnchor
{
  v2 = [(HRLinkTextView *)self textView];
  v3 = [v2 firstBaselineAnchor];

  return v3;
}

- (id)lastBaselineAnchor
{
  v2 = [(HRLinkTextView *)self textView];
  v3 = [v2 lastBaselineAnchor];

  return v3;
}

- (void)_setUpUI
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  [(HRLinkTextView *)self setTextView:v3];

  v4 = [(HRLinkTextView *)self textView];
  [v4 setScrollEnabled:0];

  v5 = [(HRLinkTextView *)self textView];
  [v5 setUserInteractionEnabled:1];

  v6 = [(HRLinkTextView *)self textView];
  [v6 setSelectable:1];

  v7 = [(HRLinkTextView *)self textView];
  [v7 setEditable:0];

  v8 = *MEMORY[0x277D768C8];
  v9 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 16);
  v11 = *(MEMORY[0x277D768C8] + 24);
  v12 = [(HRLinkTextView *)self textView];
  [v12 setTextContainerInset:{v8, v9, v10, v11}];

  v13 = [(HRLinkTextView *)self textView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v15 = [(HRLinkTextView *)self textView];
  [v15 setFont:v14];

  v16 = [(HRLinkTextView *)self textView];
  [v16 _setInteractiveTextSelectionDisabled:1];

  v17 = [(HRLinkTextView *)self textView];
  [v17 setDelegate:self];

  v18 = [(HRLinkTextView *)self textView];
  [(HRLinkTextView *)self addSubview:v18];
}

- (void)_setUpConstraints
{
  v3 = [(HRLinkTextView *)self textView];
  [v3 hk_alignConstraintsWithView:self];
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  [(HRLinkTextView *)self linkRange:a3];
  if (v6)
  {
    v7 = [(HRLinkTextView *)self delegate];
    v8 = [(HRLinkTextView *)self linkRange];
    [v7 linkTextView:self didTapOnLinkInRange:{v8, v9}];
  }

  return 0;
}

- (_NSRange)linkRange
{
  p_linkRange = &self->_linkRange;
  location = self->_linkRange.location;
  length = p_linkRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (HRLinkTextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end