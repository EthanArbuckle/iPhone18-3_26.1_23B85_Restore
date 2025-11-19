@interface HUAboutResidentDeviceFooterView
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (CGSize)sizeThatFits:(CGSize)a3;
- (HUAboutResidentDeviceFooterView)initWithCoder:(id)a3;
- (HUAboutResidentDeviceFooterView)initWithFrame:(CGRect)a3;
- (HUAboutResidentDeviceFooterView)initWithReuseIdentifier:(id)a3;
- (HUAboutResidentDeviceFooterViewDelegate)delegate;
- (UIEdgeInsets)messageInsets;
- (id)_linkTextAttributes;
- (id)_textAttributes;
- (void)_setupViews;
- (void)setMessageInsets:(UIEdgeInsets)a3;
- (void)updateConstraints;
@end

@implementation HUAboutResidentDeviceFooterView

- (HUAboutResidentDeviceFooterView)initWithReuseIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUAboutResidentDeviceFooterView;
  v3 = [(HUAboutResidentDeviceFooterView *)&v6 initWithReuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(HUAboutResidentDeviceFooterView *)v3 _setupViews];
  }

  return v4;
}

- (HUAboutResidentDeviceFooterView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = HUAboutResidentDeviceFooterView;
  v3 = [(HUAboutResidentDeviceFooterView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(HUAboutResidentDeviceFooterView *)v3 _setupViews];
  }

  return v4;
}

- (HUAboutResidentDeviceFooterView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUAboutResidentDeviceFooterView;
  v3 = [(HUAboutResidentDeviceFooterView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUAboutResidentDeviceFooterView *)v3 _setupViews];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(HUAboutResidentDeviceFooterView *)self messageInsets];
  v7 = v6;
  [(HUAboutResidentDeviceFooterView *)self messageInsets];
  v9 = width - (v7 + v8);
  v10 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [v10 sizeThatFits:{v9, height}];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (void)setMessageInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_messageInsets.top), vceqq_f64(v4, *&self->_messageInsets.bottom)))) & 1) == 0)
  {
    self->_messageInsets = a3;
    [(HUAboutResidentDeviceFooterView *)self setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  v3 = [(HUAboutResidentDeviceFooterView *)self constraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(HUAboutResidentDeviceFooterView *)self constraints];
    [v4 deactivateConstraints:v5];

    v6 = [(HUAboutResidentDeviceFooterView *)self constraints];
    [v6 removeAllObjects];
  }

  else
  {
    v6 = objc_opt_new();
    [(HUAboutResidentDeviceFooterView *)self setConstraints:v6];
  }

  v7 = [(HUAboutResidentDeviceFooterView *)self constraints];
  v8 = [(HUAboutResidentDeviceFooterView *)self messageView];
  v9 = [v8 leadingAnchor];
  v10 = [(HUAboutResidentDeviceFooterView *)self contentView];
  v11 = [v10 leadingAnchor];
  [(HUAboutResidentDeviceFooterView *)self messageInsets];
  v13 = [v9 constraintEqualToAnchor:v11 constant:v12];
  [v7 addObject:v13];

  v14 = [(HUAboutResidentDeviceFooterView *)self constraints];
  v15 = [(HUAboutResidentDeviceFooterView *)self messageView];
  v16 = [v15 trailingAnchor];
  v17 = [(HUAboutResidentDeviceFooterView *)self contentView];
  v18 = [v17 trailingAnchor];
  [(HUAboutResidentDeviceFooterView *)self messageInsets];
  v20 = [v16 constraintEqualToAnchor:v18 constant:-v19];
  [v14 addObject:v20];

  v21 = [(HUAboutResidentDeviceFooterView *)self constraints];
  v22 = [(HUAboutResidentDeviceFooterView *)self messageView];
  v23 = [v22 topAnchor];
  v24 = [(HUAboutResidentDeviceFooterView *)self contentView];
  v25 = [v24 topAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v21 addObject:v26];

  v27 = [(HUAboutResidentDeviceFooterView *)self constraints];
  v28 = [(HUAboutResidentDeviceFooterView *)self messageView];
  v29 = [v28 bottomAnchor];
  v30 = [(HUAboutResidentDeviceFooterView *)self contentView];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];
  [v27 addObject:v32];

  v33 = MEMORY[0x277CCAAD0];
  v34 = [(HUAboutResidentDeviceFooterView *)self constraints];
  [v33 activateConstraints:v34];

  v35.receiver = self;
  v35.super_class = HUAboutResidentDeviceFooterView;
  [(HUAboutResidentDeviceFooterView *)&v35 updateConstraints];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = HFLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v7;
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

  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [v6 setBackgroundColor:v5];

  v7 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v9 = *(MEMORY[0x277D768C8] + 16);
  v10 = *(MEMORY[0x277D768C8] + 24);
  v11 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [v11 setContentInset:{v7, v8, v9, v10}];

  v12 = [(HUAboutResidentDeviceFooterView *)self messageView];
  v13 = [v12 textContainer];
  [v13 setLineFragmentPadding:0.0];

  v14 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [v14 setEditable:0];

  v15 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [v15 setScrollEnabled:0];

  v16 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [v16 setDelegate:self];

  v17 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [v18 _setInteractiveTextSelectionDisabled:1];

  v28 = _HULocalizedStringWithDefaultValue(@"HUUsersAccessWithoutRemoteCapabilityFooter", @"HUUsersAccessWithoutRemoteCapabilityFooter", 1);
  v19 = _HULocalizedStringWithDefaultValue(@"HUUsersAccessWithoutRemoteCapabilityFooterLearnMore", @"HUUsersAccessWithoutRemoteCapabilityFooterLearnMore", 1);
  v20 = [(HUAboutResidentDeviceFooterView *)self _textAttributes];
  v21 = [v20 mutableCopy];

  v22 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v28 attributes:v21];
  v23 = [(HUAboutResidentDeviceFooterView *)self _linkTextAttributes];
  [v21 addEntriesFromDictionary:v23];
  v24 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v19 attributes:v21];
  [v22 appendAttributedString:v24];
  [(UITextView *)self->_messageView setAttributedText:v22];
  v25 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [v25 setLinkTextAttributes:v23];

  v26 = [(HUAboutResidentDeviceFooterView *)self contentView];
  v27 = [(HUAboutResidentDeviceFooterView *)self messageView];
  [v26 addSubview:v27];
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
  v6 = [MEMORY[0x277D75348] systemGrayColor];
  v10[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

- (id)_linkTextAttributes
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277D740C0];
  v2 = [MEMORY[0x277D75348] hf_keyColor];
  v3 = *MEMORY[0x277D741F0];
  v9[0] = v2;
  v9[1] = &unk_282491970;
  v4 = *MEMORY[0x277D740E8];
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x277D14C80] aboutResidentDeviceURL];
  v9[2] = v5;
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