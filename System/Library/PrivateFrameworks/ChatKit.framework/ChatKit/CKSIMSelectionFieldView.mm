@interface CKSIMSelectionFieldView
- (CKComposeSubscriptionSelectorButtonDelegate)subscriptionButtonDelegate;
- (CKSIMSelectionFieldView)initWithFrame:(CGRect)a3;
- (unint64_t)currentTheme;
- (void)_commonViewSetup;
- (void)dismissContextMenu;
- (void)layoutSubviews;
- (void)setPreferredFont:(id)a3;
- (void)setSubscriptionButtonDelegate:(id)a3;
- (void)setSubscriptionSelectionMenu:(id)a3;
- (void)updateContentsWithTitle:(id)a3 badgeText:(id)a4 theme:(unint64_t)a5;
@end

@implementation CKSIMSelectionFieldView

- (CKSIMSelectionFieldView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKSIMSelectionFieldView;
  v3 = [(CKSIMSelectionFieldView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKSIMSelectionFieldView *)v3 _commonViewSetup];
  }

  return v4;
}

- (void)_commonViewSetup
{
  v18[2] = *MEMORY[0x1E69E9840];
  if (_commonViewSetup_onceToken != -1)
  {
    [CKSIMSelectionFieldView _commonViewSetup];
  }

  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setAttributedText:_commonViewSetup_fromText];
  [(CKSIMSelectionFieldView *)self setCaptionLabel:v3];
  v16 = objc_alloc_init(CKComposeSubscriptionSelectorButton);
  [(CKSIMSelectionFieldView *)self setSubscriptionSelectorButton:?];
  v4 = objc_alloc(MEMORY[0x1E69DCF90]);
  v18[0] = v3;
  v18[1] = v16;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v6 = [v4 initWithArrangedSubviews:v5];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setAlignment:3];
  [v6 setAxis:0];
  [v6 setDistribution:3];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 fromFieldMarginInsets];
  [v6 setLayoutMargins:?];

  [v6 setLayoutMarginsRelativeArrangement:1];
  [v6 setUserInteractionEnabled:1];
  [(CKSIMSelectionFieldView *)self addSubview:v6];
  [(CKSIMSelectionFieldView *)self setContentStackView:v6];
  v8 = MEMORY[0x1E696ACD8];
  v9 = [v6 topAnchor];
  v10 = [(CKSIMSelectionFieldView *)self topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v17[0] = v11;
  v12 = [v6 bottomAnchor];
  v13 = [(CKSIMSelectionFieldView *)self bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v17[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  [v8 activateConstraints:v15];
}

void __43__CKSIMSelectionFieldView__commonViewSetup__block_invoke()
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E69DB648];
  v0 = +[CKUIBehavior sharedBehaviors];
  v1 = [v0 navbarToLabelFont];
  v11[0] = v1;
  v10[1] = *MEMORY[0x1E69DB650];
  v2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v11[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v4 = _commonViewSetup_attributes;
  _commonViewSetup_attributes = v3;

  v5 = objc_alloc(MEMORY[0x1E696AAB0]);
  v6 = CKFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"FROM" value:&stru_1F04268F8 table:@"ChatKit"];
  v8 = [v5 initWithString:v7 attributes:_commonViewSetup_attributes];
  v9 = _commonViewSetup_fromText;
  _commonViewSetup_fromText = v8;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CKSIMSelectionFieldView;
  [(CKSIMSelectionFieldView *)&v14 layoutSubviews];
  [(CKSIMSelectionFieldView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 defaultSeparatorHeight];
  v9 = v6 - v8;
  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 defaultSeparatorHeight];
  v12 = v11;

  v13 = [(CKSIMSelectionFieldView *)self separatorView];
  [v13 setFrame:{0.0, v9, v4, v12}];
}

- (void)setPreferredFont:(id)a3
{
  v5 = a3;
  if (self->_preferredFont != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_preferredFont, a3);
    v6 = [(CKSIMSelectionFieldView *)self captionLabel];
    [v6 setFont:v8];

    v7 = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
    [v7 updateTitleFont:v8];

    v5 = v8;
  }
}

- (void)setSubscriptionButtonDelegate:(id)a3
{
  v4 = a3;
  v5 = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  [v5 setDelegate:v4];
}

- (CKComposeSubscriptionSelectorButtonDelegate)subscriptionButtonDelegate
{
  v2 = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  v3 = [v2 delegate];

  return v3;
}

- (void)setSubscriptionSelectionMenu:(id)a3
{
  objc_storeStrong(&self->_subscriptionSelectionMenu, a3);
  v5 = a3;
  v6 = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  [v6 setMenu:v5];
}

- (unint64_t)currentTheme
{
  v2 = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  v3 = [v2 theme];

  return v3;
}

- (void)dismissContextMenu
{
  v3 = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  v2 = [v3 contextMenuInteraction];
  [v2 dismissMenu];
}

- (void)updateContentsWithTitle:(id)a3 badgeText:(id)a4 theme:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  [v10 updateContentsWithTitle:v9 badgeText:v8 theme:a5];
}

@end