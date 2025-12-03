@interface FM_Workaround_30408319_Button
- (void)setAttributedTitle:(id)title forState:(unint64_t)state;
- (void)setTitle:(id)title forState:(unint64_t)state;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation FM_Workaround_30408319_Button

- (void)updateConstraints
{
  [(FM_Workaround_30408319_Button *)self contentEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  fm_workaround_height_constraint = [(FM_Workaround_30408319_Button *)self fm_workaround_height_constraint];

  if (!fm_workaround_height_constraint)
  {
    heightAnchor = [(FM_Workaround_30408319_Button *)self heightAnchor];
    [(FM_Workaround_30408319_Button *)self bounds];
    v14 = [heightAnchor constraintEqualToConstant:v13];
    [(FM_Workaround_30408319_Button *)self setFm_workaround_height_constraint:v14];

    fm_workaround_height_constraint2 = [(FM_Workaround_30408319_Button *)self fm_workaround_height_constraint];
    [fm_workaround_height_constraint2 setIdentifier:@"fm_workaround_height_constraint"];

    fm_workaround_height_constraint3 = [(FM_Workaround_30408319_Button *)self fm_workaround_height_constraint];
    LODWORD(v17) = 1144750080;
    [fm_workaround_height_constraint3 setPriority:v17];

    fm_workaround_height_constraint4 = [(FM_Workaround_30408319_Button *)self fm_workaround_height_constraint];
    [fm_workaround_height_constraint4 setActive:1];
  }

  [(FM_Workaround_30408319_Button *)self bounds];
  v20 = v19 - (v6 + v10);
  titleLabel = [(FM_Workaround_30408319_Button *)self titleLabel];
  [titleLabel sizeThatFits:{v20, 1.79769313e308}];
  v23 = v22;

  fm_workaround_height_constraint5 = [(FM_Workaround_30408319_Button *)self fm_workaround_height_constraint];
  [fm_workaround_height_constraint5 setConstant:v8 + v4 + v23];

  v25.receiver = self;
  v25.super_class = FM_Workaround_30408319_Button;
  [(FM_Workaround_30408319_Button *)&v25 updateConstraints];
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  v6.receiver = self;
  v6.super_class = FM_Workaround_30408319_Button;
  [(FM_Workaround_30408319_Button *)&v6 setTitle:title forState:state];
  titleLabel = [(FM_Workaround_30408319_Button *)self titleLabel];
  [titleLabel invalidateIntrinsicContentSize];
}

- (void)setAttributedTitle:(id)title forState:(unint64_t)state
{
  v6.receiver = self;
  v6.super_class = FM_Workaround_30408319_Button;
  [(FM_Workaround_30408319_Button *)&v6 setAttributedTitle:title forState:state];
  titleLabel = [(FM_Workaround_30408319_Button *)self titleLabel];
  [titleLabel invalidateIntrinsicContentSize];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  titleLabel = [(FM_Workaround_30408319_Button *)self titleLabel];
  [titleLabel invalidateIntrinsicContentSize];

  [(FM_Workaround_30408319_Button *)self invalidateIntrinsicContentSize];
  [(FM_Workaround_30408319_Button *)self setNeedsLayout];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__FM_Workaround_30408319_Button_traitCollectionDidChange___block_invoke;
  block[3] = &unk_278FDB978;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v6.receiver = self;
  v6.super_class = FM_Workaround_30408319_Button;
  [(FM_Workaround_30408319_Button *)&v6 traitCollectionDidChange:changeCopy];
}

@end