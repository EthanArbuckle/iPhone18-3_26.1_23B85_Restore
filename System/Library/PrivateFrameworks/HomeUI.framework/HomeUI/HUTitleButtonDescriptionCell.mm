@interface HUTitleButtonDescriptionCell
- (HUTitleButtonDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUTitleButtonDescriptionCellDelegate)delegate;
- (void)_updateButtonHidden;
- (void)handleRemoveAction:(id)action;
- (void)prepareForReuse;
- (void)setButtonColorFollowsTintColor:(BOOL)color;
- (void)setButtonFont:(id)font;
- (void)setButtonText:(id)text;
- (void)setHideButton:(BOOL)button;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUTitleButtonDescriptionCell

- (HUTitleButtonDescriptionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = HUTitleButtonDescriptionCell;
  v7 = [(HUTitleDescriptionCell *)&v21 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    buttonFont = v7->_buttonFont;
    v7->_buttonFont = v8;

    [(HUTitleDescriptionCell *)v7 setMaxNumberOfTitleLines:0];
    [(HUTitleDescriptionCell *)v7 setMaxNumberOfDescriptionLines:1];
    [(HUTitleButtonDescriptionCell *)v7 setButtonText:&stru_2823E0EE8];
    plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
    valueButton = v7->_valueButton;
    v7->_valueButton = v11;

    objc_initWeak(&location, v7);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __62__HUTitleButtonDescriptionCell_initWithStyle_reuseIdentifier___block_invoke;
    v18 = &unk_277DC0CF8;
    objc_copyWeak(&v19, &location);
    [(UIButton *)v7->_valueButton setConfigurationUpdateHandler:&v15];
    [(UIButton *)v7->_valueButton setConfiguration:plainButtonConfiguration, v15, v16, v17, v18];
    [(UIButton *)v7->_valueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v7->_valueButton addTarget:v7 action:sel_handleRemoveAction_ forControlEvents:64];
    contentView = [(HUTitleButtonDescriptionCell *)v7 contentView];
    [contentView addSubview:v7->_valueButton];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __62__HUTitleButtonDescriptionCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x277D75230];
  v5 = a2;
  v17 = [v4 plainButtonConfiguration];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained isDisabled];
  if ((v7 & 1) != 0 || (v2 = objc_loadWeakRetained((a1 + 32)), ![v2 buttonColorFollowsTintColor]))
  {
    v9 = [MEMORY[0x277D75348] systemGrayColor];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 tintColor];
  }

LABEL_6:
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = objc_loadWeakRetained((a1 + 32));
  v12 = [v11 titleFont];
  [v10 setObject:v12 forKey:*MEMORY[0x277D740A8]];

  [v10 setObject:v9 forKey:*MEMORY[0x277D740C0]];
  v13 = objc_alloc(MEMORY[0x277CCAB48]);
  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 buttonText];
  v16 = [v13 initWithString:v15 attributes:v10];
  [v17 setAttributedTitle:v16];

  [v17 setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  [v5 setConfiguration:v17];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUTitleButtonDescriptionCell;
  [(HUTitleDescriptionCell *)&v4 prepareForReuse];
  [(HUTitleButtonDescriptionCell *)self setHideButton:0];
  [(HUTitleButtonDescriptionCell *)self setButtonText:0];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [(HUTitleButtonDescriptionCell *)self setButtonFont:v3];

  [(HUTitleButtonDescriptionCell *)self setButtonColorFollowsTintColor:0];
}

- (void)setHideButton:(BOOL)button
{
  if (self->_hideButton != button)
  {
    self->_hideButton = button;
    [(HUTitleButtonDescriptionCell *)self _updateButtonHidden];
  }
}

- (void)setButtonText:(id)text
{
  textCopy = text;
  buttonText = [(HUTitleButtonDescriptionCell *)self buttonText];
  v7 = textCopy;
  v12 = v7;
  if (buttonText == v7)
  {

LABEL_8:
    v9 = v12;
    goto LABEL_9;
  }

  if (!buttonText)
  {

    goto LABEL_7;
  }

  v8 = [buttonText isEqual:v7];

  v9 = v12;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_buttonText, text);
    valueButton = [(HUTitleButtonDescriptionCell *)self valueButton];
    buttonText = [valueButton configuration];

    [buttonText setTitle:v12];
    valueButton2 = [(HUTitleButtonDescriptionCell *)self valueButton];
    [valueButton2 setConfiguration:buttonText];

    [(HUTitleButtonDescriptionCell *)self _updateButtonHidden];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setButtonFont:(id)font
{
  fontCopy = font;
  if (([(UIFont *)self->_buttonFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_buttonFont, font);
    valueButton = [(HUTitleButtonDescriptionCell *)self valueButton];
    configuration = [valueButton configuration];

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v7 setObject:fontCopy forKey:*MEMORY[0x277D740A8]];
    v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:self->_buttonText attributes:v7];
    [configuration setAttributedTitle:v8];

    valueButton2 = [(HUTitleButtonDescriptionCell *)self valueButton];
    [valueButton2 setConfiguration:configuration];
  }
}

- (void)setButtonColorFollowsTintColor:(BOOL)color
{
  if ([(HUTitleButtonDescriptionCell *)self buttonColorFollowsTintColor]!= color)
  {
    self->_buttonColorFollowsTintColor = color;
  }
}

- (void)updateConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  v41.receiver = self;
  v41.super_class = HUTitleButtonDescriptionCell;
  [(HUTitleDescriptionCell *)&v41 updateConstraints];
  valueButton = [(HUTitleButtonDescriptionCell *)self valueButton];
  superview = [valueButton superview];

  if (superview)
  {
    valueButton2 = [(HUTitleButtonDescriptionCell *)self valueButton];
    centerYAnchor = [valueButton2 centerYAnchor];
    contentView = [(HUTitleButtonDescriptionCell *)self contentView];
    centerYAnchor2 = [contentView centerYAnchor];
    v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v10];

    contentView2 = [(HUTitleButtonDescriptionCell *)self contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide trailingAnchor];
    valueButton3 = [(HUTitleButtonDescriptionCell *)self valueButton];
    trailingAnchor2 = [valueButton3 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
    [array addObject:v16];

    valueButton4 = [(HUTitleButtonDescriptionCell *)self valueButton];
    LODWORD(v18) = 1144750080;
    [valueButton4 setContentCompressionResistancePriority:0 forAxis:v18];

    titleLabel = [(HUTitleDescriptionCell *)self titleLabel];
    trailingAnchor3 = [titleLabel trailingAnchor];
    constraintsAffectingLayout = [trailingAnchor3 constraintsAffectingLayout];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __49__HUTitleButtonDescriptionCell_updateConstraints__block_invoke;
    v40[3] = &unk_277DBF850;
    v40[4] = self;
    [constraintsAffectingLayout na_each:v40];

    descriptionLabel = [(HUTitleDescriptionCell *)self descriptionLabel];
    trailingAnchor4 = [descriptionLabel trailingAnchor];
    constraintsAffectingLayout2 = [trailingAnchor4 constraintsAffectingLayout];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __49__HUTitleButtonDescriptionCell_updateConstraints__block_invoke_2;
    v39[3] = &unk_277DBF850;
    v39[4] = self;
    [constraintsAffectingLayout2 na_each:v39];

    titleTrailingConstraint = [(HUTitleDescriptionCell *)self titleTrailingConstraint];
    [titleTrailingConstraint setActive:0];

    descriptionTrailingConstraint = [(HUTitleDescriptionCell *)self descriptionTrailingConstraint];
    [descriptionTrailingConstraint setActive:0];

    descriptionLabel2 = [(HUTitleDescriptionCell *)self descriptionLabel];
    LODWORD(v28) = 1132068864;
    [descriptionLabel2 setContentCompressionResistancePriority:0 forAxis:v28];

    valueButton5 = [(HUTitleButtonDescriptionCell *)self valueButton];
    leadingAnchor = [valueButton5 leadingAnchor];
    titleLabel2 = [(HUTitleDescriptionCell *)self titleLabel];
    trailingAnchor5 = [titleLabel2 trailingAnchor];
    v33 = [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor5 multiplier:1.0];
    [array addObject:v33];

    valueButton6 = [(HUTitleButtonDescriptionCell *)self valueButton];
    leadingAnchor2 = [valueButton6 leadingAnchor];
    descriptionLabel3 = [(HUTitleDescriptionCell *)self descriptionLabel];
    trailingAnchor6 = [descriptionLabel3 trailingAnchor];
    v38 = [leadingAnchor2 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor6 multiplier:1.0];
    [array addObject:v38];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

void __49__HUTitleButtonDescriptionCell_updateConstraints__block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 firstAnchor];
  v4 = [*(a1 + 32) titleLabel];
  v5 = [v4 trailingAnchor];
  if ([v3 isEqual:v5])
  {
    [v13 secondAnchor];
  }

  else
  {
    [v13 firstAnchor];
  }
  v6 = ;

  v7 = [*(a1 + 32) titleLabel];
  v8 = [v7 superview];
  v9 = [v8 trailingAnchor];
  if ([v6 isEqual:v9])
  {
  }

  else
  {
    v10 = [*(a1 + 32) containerView];
    v11 = [v10 trailingAnchor];
    v12 = [v6 isEqual:v11];

    if (!v12)
    {
      goto LABEL_8;
    }
  }

  [v13 setActive:0];
LABEL_8:
}

void __49__HUTitleButtonDescriptionCell_updateConstraints__block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 firstAnchor];
  v4 = [*(a1 + 32) descriptionLabel];
  v5 = [v4 trailingAnchor];
  if ([v3 isEqual:v5])
  {
    [v13 secondAnchor];
  }

  else
  {
    [v13 firstAnchor];
  }
  v6 = ;

  v7 = [*(a1 + 32) descriptionLabel];
  v8 = [v7 superview];
  v9 = [v8 trailingAnchor];
  if ([v6 isEqual:v9])
  {
  }

  else
  {
    v10 = [*(a1 + 32) containerView];
    v11 = [v10 trailingAnchor];
    v12 = [v6 isEqual:v11];

    if (!v12)
    {
      goto LABEL_8;
    }
  }

  [v13 setActive:0];
LABEL_8:
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v9.receiver = self;
  v9.super_class = HUTitleButtonDescriptionCell;
  [(HUTitleDescriptionCell *)&v9 updateUIWithAnimation:animation];
  [(HUTitleButtonDescriptionCell *)self setSelectionStyle:0];
  objc_opt_class();
  item = [(HUIconCell *)self item];
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E30]];
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(HUTitleButtonDescriptionCell *)self setButtonText:v8];
}

- (void)_updateButtonHidden
{
  if ([(HUTitleButtonDescriptionCell *)self hideButton])
  {
    v3 = 1;
  }

  else
  {
    buttonText = [(HUTitleButtonDescriptionCell *)self buttonText];
    v3 = [buttonText length] == 0;
  }

  valueButton = [(HUTitleButtonDescriptionCell *)self valueButton];
  superview = [valueButton superview];

  if (((v3 ^ (superview != 0)) & 1) == 0)
  {
    if (v3)
    {
      valueButton2 = [(HUTitleButtonDescriptionCell *)self valueButton];
      [valueButton2 removeFromSuperview];
    }

    else
    {
      valueButton2 = [(HUTitleButtonDescriptionCell *)self contentView];
      valueButton3 = [(HUTitleButtonDescriptionCell *)self valueButton];
      [valueButton2 addSubview:valueButton3];
    }

    [(HUTitleButtonDescriptionCell *)self setNeedsUpdateConstraints];

    [(HUTitleDescriptionCell *)self updateTitle];
  }
}

- (void)handleRemoveAction:(id)action
{
  delegate = [(HUTitleButtonDescriptionCell *)self delegate];
  item = [(HUIconCell *)self item];
  [delegate buttonTappedForCell:self withItem:item];
}

- (HUTitleButtonDescriptionCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end