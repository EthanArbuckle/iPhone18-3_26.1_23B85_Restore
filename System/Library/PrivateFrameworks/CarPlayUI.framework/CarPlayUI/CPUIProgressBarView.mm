@interface CPUIProgressBarView
- (CPUIProgressBarView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setProgress:(double)a3;
@end

@implementation CPUIProgressBarView

- (CPUIProgressBarView)initWithFrame:(CGRect)a3
{
  v52[8] = *MEMORY[0x277D85DE8];
  v46.receiver = self;
  v46.super_class = CPUIProgressBarView;
  v3 = [(CPUIProgressBarView *)&v46 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(CPUIProgressBarView *)v3 setBackgroundColor:v4];

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

    v14 = [(UIView *)v3->_overallBarView layer];
    [v14 setMasksToBounds:1];

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
    v19 = [(UIView *)v3->_progressBarView widthAnchor];
    v20 = [v19 constraintEqualToConstant:0.0];
    barWidthConstraint = v3->_barWidthConstraint;
    v3->_barWidthConstraint = v20;

    v36 = MEMORY[0x277CCAAD0];
    v45 = [(UIView *)v3->_overallBarView leadingAnchor];
    v44 = [(CPUIProgressBarView *)v3 leadingAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v52[0] = v43;
    v42 = [(UIView *)v3->_overallBarView trailingAnchor];
    v41 = [(CPUIProgressBarView *)v3 trailingAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v52[1] = v40;
    v39 = [(UIView *)v3->_overallBarView topAnchor];
    v38 = [(CPUIProgressBarView *)v3 topAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v52[2] = v37;
    v35 = [(UIView *)v3->_overallBarView bottomAnchor];
    v34 = [(CPUIProgressBarView *)v3 bottomAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v52[3] = v33;
    v32 = [(UIView *)v3->_progressBarView leftAnchor];
    v22 = [(UIView *)v3->_overallBarView leftAnchor];
    v23 = [v32 constraintEqualToAnchor:v22];
    v52[4] = v23;
    v24 = [(UIView *)v3->_progressBarView topAnchor];
    v25 = [(UIView *)v3->_overallBarView topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v52[5] = v26;
    v27 = [(UIView *)v3->_progressBarView bottomAnchor];
    v28 = [(UIView *)v3->_overallBarView bottomAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
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
  v4 = [(CPUIProgressBarView *)self overallBarView];
  v5 = [v4 layer];

  [v5 cornerRadius];
  if (vabdd_f64(v3, v6) > 0.1)
  {
    [v5 setCornerRadius:v3];
  }
}

- (void)setProgress:(double)a3
{
  progress = self->_progress;
  self->_progress = a3;
  [(UIView *)self->_overallBarView frame];
  v6 = CGRectGetWidth(v9) * a3;
  if (vabdd_f64(progress, a3) >= 0.00100000005 || ([(NSLayoutConstraint *)self->_barWidthConstraint constant], vabdd_f64(v6, v7) >= 0.00999999978))
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