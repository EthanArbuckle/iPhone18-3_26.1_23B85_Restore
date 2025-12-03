@interface HUAboutResidentDeviceFooterView
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (CGSize)sizeThatFits:(CGSize)fits;
- (HUAboutResidentDeviceFooterView)initWithCoder:(id)coder;
- (HUAboutResidentDeviceFooterView)initWithFrame:(CGRect)frame;
- (HUAboutResidentDeviceFooterView)initWithReuseIdentifier:(id)identifier;
- (HUAboutResidentDeviceFooterViewDelegate)delegate;
- (UIEdgeInsets)messageInsets;
- (id)_linkTextAttributes;
- (id)_textAttributes;
- (void)_setupViews;
- (void)setMessageInsets:(UIEdgeInsets)insets;
- (void)updateConstraints;
@end

@implementation HUAboutResidentDeviceFooterView

- (HUAboutResidentDeviceFooterView)initWithReuseIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = HUAboutResidentDeviceFooterView;
  v3 = [(HUAboutResidentDeviceFooterView *)&v6 initWithReuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    [(HUAboutResidentDeviceFooterView *)v3 _setupViews];
  }

  return v4;
}

- (HUAboutResidentDeviceFooterView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = HUAboutResidentDeviceFooterView;
  v3 = [(HUAboutResidentDeviceFooterView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(HUAboutResidentDeviceFooterView *)v3 _setupViews];
  }

  return v4;
}

- (HUAboutResidentDeviceFooterView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUAboutResidentDeviceFooterView;
  v3 = [(HUAboutResidentDeviceFooterView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUAboutResidentDeviceFooterView *)v3 _setupViews];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(HUAboutResidentDeviceFooterView *)self messageInsets];
  v7 = v6;
  [(HUAboutResidentDeviceFooterView *)self messageInsets];
  v9 = width - (v7 + v8);
  messageView = [(HUAboutResidentDeviceFooterView *)self messageView];
  [messageView sizeThatFits:{v9, height}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)setMessageInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_messageInsets.top), vceqq_f64(v4, *&self->_messageInsets.bottom)))) & 1) == 0)
  {
    self->_messageInsets = insets;
    [(HUAboutResidentDeviceFooterView *)self setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  constraints = [(HUAboutResidentDeviceFooterView *)self constraints];

  if (constraints)
  {
    v4 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUAboutResidentDeviceFooterView *)self constraints];
    [v4 deactivateConstraints:constraints2];

    constraints3 = [(HUAboutResidentDeviceFooterView *)self constraints];
    [constraints3 removeAllObjects];
  }

  else
  {
    constraints3 = objc_opt_new();
    [(HUAboutResidentDeviceFooterView *)self setConstraints:constraints3];
  }

  constraints4 = [(HUAboutResidentDeviceFooterView *)self constraints];
  messageView = [(HUAboutResidentDeviceFooterView *)self messageView];
  leadingAnchor = [messageView leadingAnchor];
  contentView = [(HUAboutResidentDeviceFooterView *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  [(HUAboutResidentDeviceFooterView *)self messageInsets];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v12];
  [constraints4 addObject:v13];

  constraints5 = [(HUAboutResidentDeviceFooterView *)self constraints];
  messageView2 = [(HUAboutResidentDeviceFooterView *)self messageView];
  trailingAnchor = [messageView2 trailingAnchor];
  contentView2 = [(HUAboutResidentDeviceFooterView *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  [(HUAboutResidentDeviceFooterView *)self messageInsets];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v19];
  [constraints5 addObject:v20];

  constraints6 = [(HUAboutResidentDeviceFooterView *)self constraints];
  messageView3 = [(HUAboutResidentDeviceFooterView *)self messageView];
  topAnchor = [messageView3 topAnchor];
  contentView3 = [(HUAboutResidentDeviceFooterView *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [constraints6 addObject:v26];

  constraints7 = [(HUAboutResidentDeviceFooterView *)self constraints];
  messageView4 = [(HUAboutResidentDeviceFooterView *)self messageView];
  bottomAnchor = [messageView4 bottomAnchor];
  contentView4 = [(HUAboutResidentDeviceFooterView *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [constraints7 addObject:v32];

  v33 = MEMORY[0x277CCAAD0];
  constraints8 = [(HUAboutResidentDeviceFooterView *)self constraints];
  [v33 activateConstraints:constraints8];

  v35.receiver = self;
  v35.super_class = HUAboutResidentDeviceFooterView;
  [(HUAboutResidentDeviceFooterView *)&v35 updateConstraints];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = lCopy;
    _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@: User tapped URL: %@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained learnMoreLinkTapped:self];

  return 0;
}

- (void)_setupViews
{
  v3 = objc_alloc(MEMORY[0x277D75C40]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(HUAboutResidentDeviceFooterView *)self setMessageView:v4];

  clearColor = [MEMORY[0x277D75348] clearColor];
  messageView = [(HUAboutResidentDeviceFooterView *)self messageView];
  [messageView setBackgroundColor:clearColor];

  v7 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v9 = *(MEMORY[0x277D768C8] + 16);
  v10 = *(MEMORY[0x277D768C8] + 24);
  messageView2 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [messageView2 setContentInset:{v7, v8, v9, v10}];

  messageView3 = [(HUAboutResidentDeviceFooterView *)self messageView];
  textContainer = [messageView3 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  messageView4 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [messageView4 setEditable:0];

  messageView5 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [messageView5 setScrollEnabled:0];

  messageView6 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [messageView6 setDelegate:self];

  messageView7 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [messageView7 setTranslatesAutoresizingMaskIntoConstraints:0];

  messageView8 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [messageView8 _setInteractiveTextSelectionDisabled:1];

  v28 = _HULocalizedStringWithDefaultValue(@"HUUsersAccessWithoutRemoteCapabilityFooter", @"HUUsersAccessWithoutRemoteCapabilityFooter", 1);
  v19 = _HULocalizedStringWithDefaultValue(@"HUUsersAccessWithoutRemoteCapabilityFooterLearnMore", @"HUUsersAccessWithoutRemoteCapabilityFooterLearnMore", 1);
  _textAttributes = [(HUAboutResidentDeviceFooterView *)self _textAttributes];
  v21 = [_textAttributes mutableCopy];

  v22 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v28 attributes:v21];
  _linkTextAttributes = [(HUAboutResidentDeviceFooterView *)self _linkTextAttributes];
  [v21 addEntriesFromDictionary:_linkTextAttributes];
  v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v19 attributes:v21];
  [v22 appendAttributedString:v24];
  [(UITextView *)self->_messageView setAttributedText:v22];
  messageView9 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [messageView9 setLinkTextAttributes:_linkTextAttributes];

  contentView = [(HUAboutResidentDeviceFooterView *)self contentView];
  messageView10 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [contentView addSubview:messageView10];
}

- (id)_textAttributes
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  v9[0] = *MEMORY[0x277D740A8];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  v4 = *MEMORY[0x277D74118];
  v10[0] = v3;
  v10[1] = v2;
  v5 = *MEMORY[0x277D740C0];
  v9[1] = v4;
  v9[2] = v5;
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v10[2] = systemGrayColor;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (id)_linkTextAttributes
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277D740C0];
  hf_keyColor = [MEMORY[0x277D75348] hf_keyColor];
  v3 = *MEMORY[0x277D741F0];
  v9[0] = hf_keyColor;
  v9[1] = &unk_282491970;
  v4 = *MEMORY[0x277D740E8];
  v8[1] = v3;
  v8[2] = v4;
  aboutResidentDeviceURL = [MEMORY[0x277D14C80] aboutResidentDeviceURL];
  v9[2] = aboutResidentDeviceURL;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (HUAboutResidentDeviceFooterViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)messageInsets
{
  top = self->_messageInsets.top;
  left = self->_messageInsets.left;
  bottom = self->_messageInsets.bottom;
  right = self->_messageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end