@interface HUIDarkTextView
- (HUIDarkTextView)initWithFrame:(CGRect)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)updateLayout:(BOOL)a3;
@end

@implementation HUIDarkTextView

- (HUIDarkTextView)initWithFrame:(CGRect)a3
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = HUIDarkTextView;
  v3 = [(HUIDarkTextView *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(HACCCapsuleDarkBackground);
    darkBackgroundView = v3->_darkBackgroundView;
    v3->_darkBackgroundView = v4;

    [(HACCCapsuleDarkBackground *)v3->_darkBackgroundView setAutoresizingMask:18];
    [(HUIDarkTextView *)v3 addSubview:v3->_darkBackgroundView];
    [(HACCCapsuleDarkBackground *)v3->_darkBackgroundView setupBackgroundVisualStyle];
    v6 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = v3->_stackView;
    v3->_stackView = v6;

    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setLayoutMarginsRelativeArrangement:1];
    [(HUIDarkTextView *)v3 addSubview:v3->_stackView];
    v8 = HUICCMenuTextLabel();
    nameLabel = v3->_nameLabel;
    v3->_nameLabel = v8;

    [(UILabel *)v3->_nameLabel setTextAlignment:0];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_nameLabel];
    v10 = HUICCMenuTextLabel();
    valueLabel = v3->_valueLabel;
    v3->_valueLabel = v10;

    [(UILabel *)v3->_valueLabel setTextAlignment:2];
    [(UIStackView *)v3->_stackView addArrangedSubview:v3->_valueLabel];
    v23 = MEMORY[0x277CCAAD0];
    v27 = [(UIStackView *)v3->_stackView leadingAnchor];
    v26 = [(HUIDarkTextView *)v3 leadingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v29[0] = v25;
    v24 = [(UIStackView *)v3->_stackView trailingAnchor];
    v12 = [(HUIDarkTextView *)v3 trailingAnchor];
    v13 = [v24 constraintEqualToAnchor:v12];
    v29[1] = v13;
    v14 = [(UIStackView *)v3->_stackView topAnchor];
    v15 = [(HUIDarkTextView *)v3 topAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v29[2] = v16;
    v17 = [(UIStackView *)v3->_stackView bottomAnchor];
    v18 = [(HUIDarkTextView *)v3 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v29[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v23 activateConstraints:v20];

    [(HUIDarkTextView *)v3 updateLayout:HUICCLargeTextEnabled()];
    v21 = HUICCBackgroundVisualStylingProviderForCategory(1);
    [(HUIDarkTextView *)v3 setVisualStylingProvider:v21 forCategory:1];
  }

  return v3;
}

- (void)updateLayout:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUIDarkTextView *)self valueLabel];
  v6 = v5;
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  if (v3)
  {
    v8 = 10.0;
  }

  else
  {
    v8 = 0.0;
  }

  [v5 setTextAlignment:v7];

  [(UIStackView *)self->_stackView setAxis:v3];
  CCUILayoutGutter();
  v10 = v9;
  CCUILayoutGutter();
  stackView = self->_stackView;

  [(UIStackView *)stackView setLayoutMargins:v8, v10, v8, v11];
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUIDarkTextView *)self requiredVisualStyleCategories];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__HUIDarkTextView_setVisualStylingProvider_forCategory___block_invoke;
    v10[3] = &unk_2796F6CA8;
    v11 = v6;
    v12 = self;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __56__HUIDarkTextView_setVisualStylingProvider_forCategory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) nameLabel];
  [v2 automaticallyUpdateView:v3 withStyle:0];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) valueLabel];
  [v4 automaticallyUpdateView:v5 withStyle:1];
}

@end