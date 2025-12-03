@interface CPUIProgressBarView
- (CPUIProgressBarView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setProgress:(double)progress;
@end

@implementation CPUIProgressBarView

- (CPUIProgressBarView)initWithFrame:(CGRect)frame
{
  v52[8] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = CPUIProgressBarView;
  v3 = [(CPUIProgressBarView *)&v46 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPUIProgressBarView *)v3 setBackgroundColor:clearColor];

    v5 = objc_alloc(MEMORY[0x277D75D18]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    overallBarView = v3->_overallBarView;
    v3->_overallBarView = v10;

    v12 = v3->_overallBarView;
    v47 = MEMORY[0x277D85DD0];
    v48 = 3221225472;
    v49 = __CPUIBaseColorWithAlphaComponent_block_invoke;
    v50 = &__block_descriptor_40_e36___UIColor_16__0__UITraitCollection_8l;
    v51 = 0x3FC99999A0000000;
    v13 = [MEMORY[0x277D75348] colorWithDynamicProvider:&v47];
    [(UIView *)v12 setBackgroundColor:v13];

    layer = [(UIView *)v3->_overallBarView layer];
    [layer setMasksToBounds:1];

    [(UIView *)v3->_overallBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIProgressBarView *)v3 addSubview:v3->_overallBarView];
    v15 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v7, v8, v9}];
    progressBarView = v3->_progressBarView;
    v3->_progressBarView = v15;

    v17 = v3->_progressBarView;
    v47 = MEMORY[0x277D85DD0];
    v48 = 3221225472;
    v49 = __CPUIBaseColorWithAlphaComponent_block_invoke;
    v50 = &__block_descriptor_40_e36___UIColor_16__0__UITraitCollection_8l;
    v51 = 0x3FE0000000000000;
    v18 = [MEMORY[0x277D75348] colorWithDynamicProvider:&v47];
    [(UIView *)v17 setBackgroundColor:v18];

    [(UIView *)v3->_progressBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_overallBarView addSubview:v3->_progressBarView];
    v3->_progress = 0.0;
    widthAnchor = [(UIView *)v3->_progressBarView widthAnchor];
    v20 = [widthAnchor constraintEqualToConstant:0.0];
    barWidthConstraint = v3->_barWidthConstraint;
    v3->_barWidthConstraint = v20;

    v36 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIView *)v3->_overallBarView leadingAnchor];
    leadingAnchor2 = [(CPUIProgressBarView *)v3 leadingAnchor];
    v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v52[0] = v43;
    trailingAnchor = [(UIView *)v3->_overallBarView trailingAnchor];
    trailingAnchor2 = [(CPUIProgressBarView *)v3 trailingAnchor];
    v40 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v52[1] = v40;
    topAnchor = [(UIView *)v3->_overallBarView topAnchor];
    topAnchor2 = [(CPUIProgressBarView *)v3 topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52[2] = v37;
    bottomAnchor = [(UIView *)v3->_overallBarView bottomAnchor];
    bottomAnchor2 = [(CPUIProgressBarView *)v3 bottomAnchor];
    v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v52[3] = v33;
    leftAnchor = [(UIView *)v3->_progressBarView leftAnchor];
    leftAnchor2 = [(UIView *)v3->_overallBarView leftAnchor];
    v23 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v52[4] = v23;
    topAnchor3 = [(UIView *)v3->_progressBarView topAnchor];
    topAnchor4 = [(UIView *)v3->_overallBarView topAnchor];
    v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v52[5] = v26;
    bottomAnchor3 = [(UIView *)v3->_progressBarView bottomAnchor];
    bottomAnchor4 = [(UIView *)v3->_overallBarView bottomAnchor];
    v29 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v52[6] = v29;
    v52[7] = v3->_barWidthConstraint;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:8];
    [v36 activateConstraints:v30];
  }

  return v3;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CPUIProgressBarView;
  [(CPUIProgressBarView *)&v7 layoutSubviews];
  [(CPUIProgressBarView *)self bounds];
  v3 = CGRectGetHeight(v8) * 0.5;
  overallBarView = [(CPUIProgressBarView *)self overallBarView];
  layer = [overallBarView layer];

  [layer cornerRadius];
  if (vabdd_f64(v3, v6) > 0.1)
  {
    [layer setCornerRadius:v3];
  }
}

- (void)setProgress:(double)progress
{
  progress = self->_progress;
  self->_progress = progress;
  [(UIView *)self->_overallBarView frame];
  v6 = CGRectGetWidth(v9) * progress;
  if (vabdd_f64(progress, progress) >= 0.00100000005 || ([(NSLayoutConstraint *)self->_barWidthConstraint constant], vabdd_f64(v6, v7) >= 0.00999999978))
  {
    [(NSLayoutConstraint *)self->_barWidthConstraint setConstant:v6];
    [(CPUIProgressBarView *)self setNeedsLayout];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__CPUIProgressBarView_setProgress___block_invoke;
    v8[3] = &unk_278D9C2D8;
    v8[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:196612 delay:v8 options:0 animations:0.100000001 completion:0.0];
  }
}

@end