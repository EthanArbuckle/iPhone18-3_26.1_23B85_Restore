@interface LUILogFilterPredicateCandidateCollectionViewCell
- (LUILogFilterPredicateCandidateCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)_createTitleLabel;
- (void)_setupUI;
- (void)layoutSubViews;
- (void)setSelected:(BOOL)selected;
@end

@implementation LUILogFilterPredicateCandidateCollectionViewCell

- (LUILogFilterPredicateCandidateCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = LUILogFilterPredicateCandidateCollectionViewCell;
  v3 = [(LUILogFilterPredicateCandidateCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(LUILogFilterPredicateCandidateCollectionViewCell *)v3 _setupUI];
  }

  return v4;
}

- (void)_setupUI
{
  _createTitleLabel = [(LUILogFilterPredicateCandidateCollectionViewCell *)self _createTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = _createTitleLabel;

  contentView = [(LUILogFilterPredicateCandidateCollectionViewCell *)self contentView];
  [contentView addSubview:self->_titleLabel];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v9.receiver = self;
  v9.super_class = LUILogFilterPredicateCandidateCollectionViewCell;
  [(LUILogFilterPredicateCandidateCollectionViewCell *)&v9 setSelected:?];
  if (selectedCopy)
  {
    lightGrayColor = [MEMORY[0x277D75348] lightGrayColor];
    [(LUILogFilterPredicateCandidateCollectionViewCell *)self setBackgroundColor:lightGrayColor];

    [MEMORY[0x277D75348] darkGrayColor];
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(LUILogFilterPredicateCandidateCollectionViewCell *)self setBackgroundColor:clearColor];

    [MEMORY[0x277D75348] whiteColor];
  }
  v7 = ;
  titleLabel = [(LUILogFilterPredicateCandidateCollectionViewCell *)self titleLabel];
  [titleLabel setTextColor:v7];
}

- (void)layoutSubViews
{
  [(LUILogFilterPredicateCandidateCollectionViewCell *)self frame];
  v3 = CGRectGetWidth(v7) + -20.0;
  [(LUILogFilterPredicateCandidateCollectionViewCell *)self frame];
  Height = CGRectGetHeight(v8);
  titleLabel = [(LUILogFilterPredicateCandidateCollectionViewCell *)self titleLabel];
  [titleLabel setFrame:{10.0, 0.0, v3, Height}];
}

- (id)_createTitleLabel
{
  v3 = objc_opt_new();
  [(LUILogFilterPredicateCandidateCollectionViewCell *)self frame];
  v4 = CGRectGetWidth(v9) + -20.0;
  [(LUILogFilterPredicateCandidateCollectionViewCell *)self frame];
  [v3 setFrame:{10.0, 0.0, v4, CGRectGetHeight(v10)}];
  v5 = [MEMORY[0x277D74300] systemFontOfSize:17.0 weight:*MEMORY[0x277D74410]];
  [v3 setFont:v5];

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v3 setTextColor:whiteColor];

  [v3 setTextAlignment:1];
  [v3 setAutoresizingMask:18];

  return v3;
}

@end