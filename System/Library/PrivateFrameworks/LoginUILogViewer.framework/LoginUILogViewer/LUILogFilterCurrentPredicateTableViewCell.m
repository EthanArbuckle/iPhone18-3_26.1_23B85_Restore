@interface LUILogFilterCurrentPredicateTableViewCell
- (LUILogFilterCurrentPredicateTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (LUILogFilterCurrentPredicateTableViewCellDelegate)delegate;
- (id)_createDeleteButton;
- (id)_createTitleLabel;
- (void)_deleteButtonTapped:(id)a3;
- (void)_setupUI;
- (void)layoutSubviews;
@end

@implementation LUILogFilterCurrentPredicateTableViewCell

- (LUILogFilterCurrentPredicateTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = LUILogFilterCurrentPredicateTableViewCell;
  v4 = [(LUILogFilterCurrentPredicateTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(LUILogFilterCurrentPredicateTableViewCell *)v4 _setupUI];
  }

  return v5;
}

- (void)_setupUI
{
  v3 = [MEMORY[0x277D75348] clearColor];
  [(LUILogFilterCurrentPredicateTableViewCell *)self setBackgroundColor:v3];

  v4 = [MEMORY[0x277D75348] whiteColor];
  v5 = [v4 CGColor];
  v6 = [(LUILogFilterCurrentPredicateTableViewCell *)self layer];
  [v6 setBorderColor:v5];

  v7 = [(LUILogFilterCurrentPredicateTableViewCell *)self layer];
  [v7 setBorderWidth:1.5];

  v8 = [(LUILogFilterCurrentPredicateTableViewCell *)self layer];
  [v8 setCornerRadius:15.0];

  v9 = [(LUILogFilterCurrentPredicateTableViewCell *)self _createTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  v11 = [(LUILogFilterCurrentPredicateTableViewCell *)self _createDeleteButton];
  deleteButton = self->_deleteButton;
  self->_deleteButton = v11;

  [(UIButton *)self->_deleteButton addTarget:self action:sel__deleteButtonTapped_ forControlEvents:64];
  [(LUILogFilterCurrentPredicateTableViewCell *)self addSubview:self->_titleLabel];
  v13 = self->_deleteButton;

  [(LUILogFilterCurrentPredicateTableViewCell *)self addSubview:v13];
}

- (void)layoutSubviews
{
  [(LUILogFilterCurrentPredicateTableViewCell *)self frame];
  v3 = CGRectGetWidth(v11) + -80.0;
  [(LUILogFilterCurrentPredicateTableViewCell *)self frame];
  Height = CGRectGetHeight(v12);
  v5 = [(LUILogFilterCurrentPredicateTableViewCell *)self titleLabel];
  [v5 setFrame:{20.0, 0.0, v3, Height}];

  v9 = [(LUILogFilterCurrentPredicateTableViewCell *)self titleLabel];
  [v9 frame];
  v6 = CGRectGetMaxX(v13) + 20.0;
  [(LUILogFilterCurrentPredicateTableViewCell *)self frame];
  v7 = CGRectGetHeight(v14) + -10.0;
  v8 = [(LUILogFilterCurrentPredicateTableViewCell *)self deleteButton];
  [v8 setFrame:{v6, 5.0, 20.0, v7}];
}

- (id)_createTitleLabel
{
  v3 = objc_opt_new();
  [(LUILogFilterCurrentPredicateTableViewCell *)self frame];
  v4 = CGRectGetWidth(v9) + -80.0;
  [(LUILogFilterCurrentPredicateTableViewCell *)self frame];
  [v3 setFrame:{20.0, 0.0, v4, CGRectGetHeight(v10)}];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
  [v3 setFont:v5];

  v6 = [MEMORY[0x277D75348] whiteColor];
  [v3 setTextColor:v6];

  [v3 setTextAlignment:0];

  return v3;
}

- (id)_createDeleteButton
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D755B8] imageNamed:@"DeleteIcon"];
  v4 = [v3 imageWithRenderingMode:2];

  v5 = [MEMORY[0x277D75348] whiteColor];
  v6 = [v2 imageView];
  [v6 setTintColor:v5];

  [v2 setImage:v4 forState:0];

  return v2;
}

- (void)_deleteButtonTapped:(id)a3
{
  v4 = [(LUILogFilterCurrentPredicateTableViewCell *)self delegate];
  [v4 predicateTableViewCellDeleteButtonTapped:self];
}

- (LUILogFilterCurrentPredicateTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end