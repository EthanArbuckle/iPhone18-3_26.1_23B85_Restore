@interface LUILogFilterPredicateCandidateCollectionViewCell
- (LUILogFilterPredicateCandidateCollectionViewCell)initWithFrame:(CGRect)a3;
- (id)_createTitleLabel;
- (void)_setupUI;
- (void)layoutSubViews;
- (void)setSelected:(BOOL)a3;
@end

@implementation LUILogFilterPredicateCandidateCollectionViewCell

- (LUILogFilterPredicateCandidateCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = LUILogFilterPredicateCandidateCollectionViewCell;
  v3 = [(LUILogFilterPredicateCandidateCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(LUILogFilterPredicateCandidateCollectionViewCell *)v3 _setupUI];
  }

  return v4;
}

- (void)_setupUI
{
  v3 = [(LUILogFilterPredicateCandidateCollectionViewCell *)self _createTitleLabel];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  v5 = [(LUILogFilterPredicateCandidateCollectionViewCell *)self contentView];
  [v5 addSubview:self->_titleLabel];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = LUILogFilterPredicateCandidateCollectionViewCell;
  [(LUILogFilterPredicateCandidateCollectionViewCell *)&v9 setSelected:?];
  if (v3)
  {
    v5 = [MEMORY[0x277D75348] lightGrayColor];
    [(LUILogFilterPredicateCandidateCollectionViewCell *)self setBackgroundColor:v5];

    [MEMORY[0x277D75348] darkGrayColor];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] clearColor];
    [(LUILogFilterPredicateCandidateCollectionViewCell *)self setBackgroundColor:v6];

    [MEMORY[0x277D75348] whiteColor];
  }
  v7 = ;
  v8 = [(LUILogFilterPredicateCandidateCollectionViewCell *)self titleLabel];
  [v8 setTextColor:v7];
}

- (void)layoutSubViews
{
  [(LUILogFilterPredicateCandidateCollectionViewCell *)self frame];
  v3 = CGRectGetWidth(v7) + -20.0;
  [(LUILogFilterPredicateCandidateCollectionViewCell *)self frame];
  Height = CGRectGetHeight(v8);
  v5 = [(LUILogFilterPredicateCandidateCollectionViewCell *)self titleLabel];
  [v5 setFrame:{10.0, 0.0, v3, Height}];
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

  v6 = [MEMORY[0x277D75348] whiteColor];
  [v3 setTextColor:v6];

  [v3 setTextAlignment:1];
  [v3 setAutoresizingMask:18];

  return v3;
}

@end