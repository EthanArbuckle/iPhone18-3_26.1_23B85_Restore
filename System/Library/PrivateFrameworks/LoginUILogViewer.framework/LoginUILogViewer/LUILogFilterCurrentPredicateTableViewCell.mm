@interface LUILogFilterCurrentPredicateTableViewCell
- (LUILogFilterCurrentPredicateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (LUILogFilterCurrentPredicateTableViewCellDelegate)delegate;
- (id)_createDeleteButton;
- (id)_createTitleLabel;
- (void)_deleteButtonTapped:(id)tapped;
- (void)_setupUI;
- (void)layoutSubviews;
@end

@implementation LUILogFilterCurrentPredicateTableViewCell

- (LUILogFilterCurrentPredicateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = LUILogFilterCurrentPredicateTableViewCell;
  v4 = [(LUILogFilterCurrentPredicateTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(LUILogFilterCurrentPredicateTableViewCell *)v4 _setupUI];
  }

  return v5;
}

- (void)_setupUI
{
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(LUILogFilterCurrentPredicateTableViewCell *)self setBackgroundColor:clearColor];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  cGColor = [whiteColor CGColor];
  layer = [(LUILogFilterCurrentPredicateTableViewCell *)self layer];
  [layer setBorderColor:cGColor];

  layer2 = [(LUILogFilterCurrentPredicateTableViewCell *)self layer];
  [layer2 setBorderWidth:1.5];

  layer3 = [(LUILogFilterCurrentPredicateTableViewCell *)self layer];
  [layer3 setCornerRadius:15.0];

  _createTitleLabel = [(LUILogFilterCurrentPredicateTableViewCell *)self _createTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = _createTitleLabel;

  _createDeleteButton = [(LUILogFilterCurrentPredicateTableViewCell *)self _createDeleteButton];
  deleteButton = self->_deleteButton;
  self->_deleteButton = _createDeleteButton;

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
  titleLabel = [(LUILogFilterCurrentPredicateTableViewCell *)self titleLabel];
  [titleLabel setFrame:{20.0, 0.0, v3, Height}];

  titleLabel2 = [(LUILogFilterCurrentPredicateTableViewCell *)self titleLabel];
  [titleLabel2 frame];
  v6 = CGRectGetMaxX(v13) + 20.0;
  [(LUILogFilterCurrentPredicateTableViewCell *)self frame];
  v7 = CGRectGetHeight(v14) + -10.0;
  deleteButton = [(LUILogFilterCurrentPredicateTableViewCell *)self deleteButton];
  [deleteButton setFrame:{v6, 5.0, 20.0, v7}];
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

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v3 setTextColor:whiteColor];

  [v3 setTextAlignment:0];

  return v3;
}

- (id)_createDeleteButton
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D755B8] imageNamed:@"DeleteIcon"];
  v4 = [v3 imageWithRenderingMode:2];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  imageView = [v2 imageView];
  [imageView setTintColor:whiteColor];

  [v2 setImage:v4 forState:0];

  return v2;
}

- (void)_deleteButtonTapped:(id)tapped
{
  delegate = [(LUILogFilterCurrentPredicateTableViewCell *)self delegate];
  [delegate predicateTableViewCellDeleteButtonTapped:self];
}

- (LUILogFilterCurrentPredicateTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end