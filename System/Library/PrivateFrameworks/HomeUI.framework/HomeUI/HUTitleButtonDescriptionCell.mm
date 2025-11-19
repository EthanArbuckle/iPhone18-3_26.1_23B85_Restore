@interface HUTitleButtonDescriptionCell
- (HUTitleButtonDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (HUTitleButtonDescriptionCellDelegate)delegate;
- (void)_updateButtonHidden;
- (void)handleRemoveAction:(id)a3;
- (void)prepareForReuse;
- (void)setButtonColorFollowsTintColor:(BOOL)a3;
- (void)setButtonFont:(id)a3;
- (void)setButtonText:(id)a3;
- (void)setHideButton:(BOOL)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUTitleButtonDescriptionCell

- (HUTitleButtonDescriptionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = HUTitleButtonDescriptionCell;
  v7 = [(HUTitleDescriptionCell *)&v21 initWithStyle:a3 reuseIdentifier:v6];
  if (v7)
  {
    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    buttonFont = v7->_buttonFont;
    v7->_buttonFont = v8;

    [(HUTitleDescriptionCell *)v7 setMaxNumberOfTitleLines:0];
    [(HUTitleDescriptionCell *)v7 setMaxNumberOfDescriptionLines:1];
    [(HUTitleButtonDescriptionCell *)v7 setButtonText:&stru_2823E0EE8];
    v10 = [MEMORY[0x277D75230] plainButtonConfiguration];
    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:v10 primaryAction:0];
    valueButton = v7->_valueButton;
    v7->_valueButton = v11;

    objc_initWeak(&location, v7);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __62__HUTitleButtonDescriptionCell_initWithStyle_reuseIdentifier___block_invoke;
    v18 = &unk_277DC0CF8;
    objc_copyWeak(&v19, &location);
    [(UIButton *)v7->_valueButton setConfigurationUpdateHandler:&v15];
    [(UIButton *)v7->_valueButton setConfiguration:v10, v15, v16, v17, v18];
    [(UIButton *)v7->_valueButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v7->_valueButton addTarget:v7 action:sel_handleRemoveAction_ forControlEvents:64];
    v13 = [(HUTitleButtonDescriptionCell *)v7 contentView];
    [v13 addSubview:v7->_valueButton];

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

- (void)setHideButton:(BOOL)a3
{
  if (self->_hideButton != a3)
  {
    self->_hideButton = a3;
    [(HUTitleButtonDescriptionCell *)self _updateButtonHidden];
  }
}

- (void)setButtonText:(id)a3
{
  v5 = a3;
  v6 = [(HUTitleButtonDescriptionCell *)self buttonText];
  v7 = v5;
  v12 = v7;
  if (v6 == v7)
  {

LABEL_8:
    v9 = v12;
    goto LABEL_9;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v8 = [v6 isEqual:v7];

  v9 = v12;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_buttonText, a3);
    v10 = [(HUTitleButtonDescriptionCell *)self valueButton];
    v6 = [v10 configuration];

    [v6 setTitle:v12];
    v11 = [(HUTitleButtonDescriptionCell *)self valueButton];
    [v11 setConfiguration:v6];

    [(HUTitleButtonDescriptionCell *)self _updateButtonHidden];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)setButtonFont:(id)a3
{
  v10 = a3;
  if (([(UIFont *)self->_buttonFont isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_buttonFont, a3);
    v5 = [(HUTitleButtonDescriptionCell *)self valueButton];
    v6 = [v5 configuration];

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v7 setObject:v10 forKey:*MEMORY[0x277D740A8]];
    v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:self->_buttonText attributes:v7];
    [v6 setAttributedTitle:v8];

    v9 = [(HUTitleButtonDescriptionCell *)self valueButton];
    [v9 setConfiguration:v6];
  }
}

- (void)setButtonColorFollowsTintColor:(BOOL)a3
{
  if ([(HUTitleButtonDescriptionCell *)self buttonColorFollowsTintColor]!= a3)
  {
    self->_buttonColorFollowsTintColor = a3;
  }
}

- (void)updateConstraints
{
  v3 = [MEMORY[0x277CBEB18] array];
  v41.receiver = self;
  v41.super_class = HUTitleButtonDescriptionCell;
  [(HUTitleDescriptionCell *)&v41 updateConstraints];
  v4 = [(HUTitleButtonDescriptionCell *)self valueButton];
  v5 = [v4 superview];

  if (v5)
  {
    v6 = [(HUTitleButtonDescriptionCell *)self valueButton];
    v7 = [v6 centerYAnchor];
    v8 = [(HUTitleButtonDescriptionCell *)self contentView];
    v9 = [v8 centerYAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    [v3 addObject:v10];

    v11 = [(HUTitleButtonDescriptionCell *)self contentView];
    v12 = [v11 layoutMarginsGuide];
    v13 = [v12 trailingAnchor];
    v14 = [(HUTitleButtonDescriptionCell *)self valueButton];
    v15 = [v14 trailingAnchor];
    v16 = [v13 constraintEqualToSystemSpacingAfterAnchor:v15 multiplier:1.0];
    [v3 addObject:v16];

    v17 = [(HUTitleButtonDescriptionCell *)self valueButton];
    LODWORD(v18) = 1144750080;
    [v17 setContentCompressionResistancePriority:0 forAxis:v18];

    v19 = [(HUTitleDescriptionCell *)self titleLabel];
    v20 = [v19 trailingAnchor];
    v21 = [v20 constraintsAffectingLayout];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __49__HUTitleButtonDescriptionCell_updateConstraints__block_invoke;
    v40[3] = &unk_277DBF850;
    v40[4] = self;
    [v21 na_each:v40];

    v22 = [(HUTitleDescriptionCell *)self descriptionLabel];
    v23 = [v22 trailingAnchor];
    v24 = [v23 constraintsAffectingLayout];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __49__HUTitleButtonDescriptionCell_updateConstraints__block_invoke_2;
    v39[3] = &unk_277DBF850;
    v39[4] = self;
    [v24 na_each:v39];

    v25 = [(HUTitleDescriptionCell *)self titleTrailingConstraint];
    [v25 setActive:0];

    v26 = [(HUTitleDescriptionCell *)self descriptionTrailingConstraint];
    [v26 setActive:0];

    v27 = [(HUTitleDescriptionCell *)self descriptionLabel];
    LODWORD(v28) = 1132068864;
    [v27 setContentCompressionResistancePriority:0 forAxis:v28];

    v29 = [(HUTitleButtonDescriptionCell *)self valueButton];
    v30 = [v29 leadingAnchor];
    v31 = [(HUTitleDescriptionCell *)self titleLabel];
    v32 = [v31 trailingAnchor];
    v33 = [v30 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v32 multiplier:1.0];
    [v3 addObject:v33];

    v34 = [(HUTitleButtonDescriptionCell *)self valueButton];
    v35 = [v34 leadingAnchor];
    v36 = [(HUTitleDescriptionCell *)self descriptionLabel];
    v37 = [v36 trailingAnchor];
    v38 = [v35 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v37 multiplier:1.0];
    [v3 addObject:v38];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v3];
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

- (void)updateUIWithAnimation:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = HUTitleButtonDescriptionCell;
  [(HUTitleDescriptionCell *)&v9 updateUIWithAnimation:a3];
  [(HUTitleButtonDescriptionCell *)self setSelectionStyle:0];
  objc_opt_class();
  v4 = [(HUIconCell *)self item];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13E30]];
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
    v4 = [(HUTitleButtonDescriptionCell *)self buttonText];
    v3 = [v4 length] == 0;
  }

  v5 = [(HUTitleButtonDescriptionCell *)self valueButton];
  v6 = [v5 superview];

  if (((v3 ^ (v6 != 0)) & 1) == 0)
  {
    if (v3)
    {
      v7 = [(HUTitleButtonDescriptionCell *)self valueButton];
      [v7 removeFromSuperview];
    }

    else
    {
      v7 = [(HUTitleButtonDescriptionCell *)self contentView];
      v8 = [(HUTitleButtonDescriptionCell *)self valueButton];
      [v7 addSubview:v8];
    }

    [(HUTitleButtonDescriptionCell *)self setNeedsUpdateConstraints];

    [(HUTitleDescriptionCell *)self updateTitle];
  }
}

- (void)handleRemoveAction:(id)a3
{
  v5 = [(HUTitleButtonDescriptionCell *)self delegate];
  v4 = [(HUIconCell *)self item];
  [v5 buttonTappedForCell:self withItem:v4];
}

- (HUTitleButtonDescriptionCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end