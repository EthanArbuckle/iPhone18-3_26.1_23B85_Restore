@interface HRLinkTextView
- (HRLinkTextView)initWithLinkRange:(_NSRange)range URLIdentifier:(int64_t)identifier delegate:(id)delegate userInterfaceStyleChanged:(id)changed;
- (HRLinkTextViewDelegate)delegate;
- (_NSRange)linkRange;
- (id)firstBaselineAnchor;
- (id)lastBaselineAnchor;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)_setUpConstraints;
- (void)_setUpUI;
- (void)_updateCurrentUserInterfaceStyleIfNeeded;
- (void)layoutSubviews;
@end

@implementation HRLinkTextView

- (HRLinkTextView)initWithLinkRange:(_NSRange)range URLIdentifier:(int64_t)identifier delegate:(id)delegate userInterfaceStyleChanged:(id)changed
{
  length = range.length;
  location = range.location;
  delegateCopy = delegate;
  changedCopy = changed;
  v18.receiver = self;
  v18.super_class = HRLinkTextView;
  v13 = [(HRLinkTextView *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_linkRange.location = location;
    v13->_linkRange.length = length;
    v13->_URLIdentifier = identifier;
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v15 = MEMORY[0x25309CD70](changedCopy);
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
  traitCollection = [(HRLinkTextView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if ([(HRLinkTextView *)self currentUserInterfaceStyle]!= userInterfaceStyle)
  {
    [(HRLinkTextView *)self setCurrentUserInterfaceStyle:userInterfaceStyle];
    userInterfaceStyleChanged = [(HRLinkTextView *)self userInterfaceStyleChanged];

    if (userInterfaceStyleChanged)
    {
      userInterfaceStyleChanged2 = [(HRLinkTextView *)self userInterfaceStyleChanged];
      userInterfaceStyleChanged2[2](userInterfaceStyleChanged2, self, userInterfaceStyle);
    }
  }
}

- (id)firstBaselineAnchor
{
  textView = [(HRLinkTextView *)self textView];
  firstBaselineAnchor = [textView firstBaselineAnchor];

  return firstBaselineAnchor;
}

- (id)lastBaselineAnchor
{
  textView = [(HRLinkTextView *)self textView];
  lastBaselineAnchor = [textView lastBaselineAnchor];

  return lastBaselineAnchor;
}

- (void)_setUpUI
{
  v3 = objc_alloc_init(MEMORY[0x277D75C40]);
  [(HRLinkTextView *)self setTextView:v3];

  textView = [(HRLinkTextView *)self textView];
  [textView setScrollEnabled:0];

  textView2 = [(HRLinkTextView *)self textView];
  [textView2 setUserInteractionEnabled:1];

  textView3 = [(HRLinkTextView *)self textView];
  [textView3 setSelectable:1];

  textView4 = [(HRLinkTextView *)self textView];
  [textView4 setEditable:0];

  v8 = *MEMORY[0x277D768C8];
  v9 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 16);
  v11 = *(MEMORY[0x277D768C8] + 24);
  textView5 = [(HRLinkTextView *)self textView];
  [textView5 setTextContainerInset:{v8, v9, v10, v11}];

  textView6 = [(HRLinkTextView *)self textView];
  [textView6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  textView7 = [(HRLinkTextView *)self textView];
  [textView7 setFont:v14];

  textView8 = [(HRLinkTextView *)self textView];
  [textView8 _setInteractiveTextSelectionDisabled:1];

  textView9 = [(HRLinkTextView *)self textView];
  [textView9 setDelegate:self];

  textView10 = [(HRLinkTextView *)self textView];
  [(HRLinkTextView *)self addSubview:textView10];
}

- (void)_setUpConstraints
{
  textView = [(HRLinkTextView *)self textView];
  [textView hk_alignConstraintsWithView:self];
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  [(HRLinkTextView *)self linkRange:view];
  if (v6)
  {
    delegate = [(HRLinkTextView *)self delegate];
    linkRange = [(HRLinkTextView *)self linkRange];
    [delegate linkTextView:self didTapOnLinkInRange:{linkRange, v9}];
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