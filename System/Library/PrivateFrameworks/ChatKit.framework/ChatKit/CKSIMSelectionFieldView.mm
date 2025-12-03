@interface CKSIMSelectionFieldView
- (CKComposeSubscriptionSelectorButtonDelegate)subscriptionButtonDelegate;
- (CKSIMSelectionFieldView)initWithFrame:(CGRect)frame;
- (unint64_t)currentTheme;
- (void)_commonViewSetup;
- (void)dismissContextMenu;
- (void)layoutSubviews;
- (void)setPreferredFont:(id)font;
- (void)setSubscriptionButtonDelegate:(id)delegate;
- (void)setSubscriptionSelectionMenu:(id)menu;
- (void)updateContentsWithTitle:(id)title badgeText:(id)text theme:(unint64_t)theme;
@end

@implementation CKSIMSelectionFieldView

- (CKSIMSelectionFieldView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKSIMSelectionFieldView;
  v3 = [(CKSIMSelectionFieldView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  topAnchor = [v6 topAnchor];
  topAnchor2 = [(CKSIMSelectionFieldView *)self topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v17[0] = v11;
  bottomAnchor = [v6 bottomAnchor];
  bottomAnchor2 = [(CKSIMSelectionFieldView *)self bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

  separatorView = [(CKSIMSelectionFieldView *)self separatorView];
  [separatorView setFrame:{0.0, v9, v4, v12}];
}

- (void)setPreferredFont:(id)font
{
  fontCopy = font;
  if (self->_preferredFont != fontCopy)
  {
    v8 = fontCopy;
    objc_storeStrong(&self->_preferredFont, font);
    captionLabel = [(CKSIMSelectionFieldView *)self captionLabel];
    [captionLabel setFont:v8];

    subscriptionSelectorButton = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
    [subscriptionSelectorButton updateTitleFont:v8];

    fontCopy = v8;
  }
}

- (void)setSubscriptionButtonDelegate:(id)delegate
{
  delegateCopy = delegate;
  subscriptionSelectorButton = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  [subscriptionSelectorButton setDelegate:delegateCopy];
}

- (CKComposeSubscriptionSelectorButtonDelegate)subscriptionButtonDelegate
{
  subscriptionSelectorButton = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  delegate = [subscriptionSelectorButton delegate];

  return delegate;
}

- (void)setSubscriptionSelectionMenu:(id)menu
{
  objc_storeStrong(&self->_subscriptionSelectionMenu, menu);
  menuCopy = menu;
  subscriptionSelectorButton = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  [subscriptionSelectorButton setMenu:menuCopy];
}

- (unint64_t)currentTheme
{
  subscriptionSelectorButton = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  theme = [subscriptionSelectorButton theme];

  return theme;
}

- (void)dismissContextMenu
{
  subscriptionSelectorButton = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  contextMenuInteraction = [subscriptionSelectorButton contextMenuInteraction];
  [contextMenuInteraction dismissMenu];
}

- (void)updateContentsWithTitle:(id)title badgeText:(id)text theme:(unint64_t)theme
{
  textCopy = text;
  titleCopy = title;
  subscriptionSelectorButton = [(CKSIMSelectionFieldView *)self subscriptionSelectorButton];
  [subscriptionSelectorButton updateContentsWithTitle:titleCopy badgeText:textCopy theme:theme];
}

@end