@interface CPSEmptyView
- (CPSEmptyView)initWithFrame:(CGRect)a3;
- (NSArray)subtitleVariants;
- (NSArray)titleVariants;
- (void)_updateLabelTraits;
- (void)setShowsSpinner:(BOOL)a3;
- (void)setSubtitleVariants:(id)a3;
- (void)setTitleVariants:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSEmptyView

- (CPSEmptyView)initWithFrame:(CGRect)a3
{
  v20 = a3;
  v18 = a2;
  v19 = 0;
  v17.receiver = self;
  v17.super_class = CPSEmptyView;
  v13 = [(CPSEmptyView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v19 = v13;
  objc_storeStrong(&v19, v13);
  if (v13)
  {
    [(CPSEmptyView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSEmptyView *)v19 setAxis:?];
    [(CPSEmptyView *)v19 setDistribution:?];
    [(CPSEmptyView *)v19 setAlignment:3];
    [(CPSEmptyView *)v19 setSpacing:12.0];
    v16 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:21];
    v9 = [MEMORY[0x277D75348] labelColor];
    [v16 setColor:?];
    *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    [(CPSEmptyView *)v19 setSpinnerView:v16, v3];
    v4 = [CPSAbridgableLabel alloc];
    v11 = MEMORY[0x277CBF3A0];
    v15 = [(CPSAbridgableLabel *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(CPSAbridgableLabel *)v15 setTextAlignment:1];
    v10 = [MEMORY[0x277D75348] labelColor];
    [(CPSAbridgableLabel *)v15 setTextColor:?];
    *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    [(CPSAbridgableLabel *)v15 setNumberOfLines:1, v5];
    [(CPSEmptyView *)v19 setTitleLabel:v15];
    v14 = [[CPSAbridgableLabel alloc] initWithFrame:*v11, v11[1], v11[2], v11[3]];
    [(CPSAbridgableLabel *)v14 setTextAlignment:1];
    v12 = [MEMORY[0x277D75348] labelColor];
    [(CPSAbridgableLabel *)v14 setTextColor:?];
    *&v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    [(CPSAbridgableLabel *)v14 setNumberOfLines:2, v6];
    [(CPSEmptyView *)v19 setSubtitleLabel:v14];
    [(CPSEmptyView *)v19 setNeedsUpdateConstraints];
    [(CPSEmptyView *)v19 _updateLabelTraits];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  v8 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&v19, 0);
  return v8;
}

- (void)setShowsSpinner:(BOOL)a3
{
  if (self->_showsSpinner != a3)
  {
    self->_showsSpinner = a3;
    if (a3)
    {
      v6 = [(CPSEmptyView *)self spinnerView];
      [CPSEmptyView insertArrangedSubview:"insertArrangedSubview:atIndex:" atIndex:?];
      v7 = [(CPSEmptyView *)self spinnerView];
      [(UIActivityIndicatorView *)v7 startAnimating];
      MEMORY[0x277D82BD8](v7);
    }

    else
    {
      v3 = [(CPSEmptyView *)self spinnerView];
      [(UIActivityIndicatorView *)v3 stopAnimating];
      v4 = [(CPSEmptyView *)self spinnerView];
      [(CPSEmptyView *)self removeArrangedSubview:?];
      v5 = [(CPSEmptyView *)self spinnerView];
      [(UIActivityIndicatorView *)v5 removeFromSuperview];
      MEMORY[0x277D82BD8](v5);
    }
  }
}

- (void)setTitleVariants:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [(CPSEmptyView *)v12 titleLabel];
  [(CPUIAbridgableLabel *)v10 setTextVariants:location[0]];
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if ([location[0] count])
  {
    v8 = v12;
    v9 = [(CPSEmptyView *)v12 titleLabel];
    [(CPSEmptyView *)v8 addArrangedSubview:?];
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v5 = v12;
    v6 = [(CPSEmptyView *)v12 titleLabel];
    [(CPSEmptyView *)v5 removeArrangedSubview:?];
    *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    v7 = [(CPSEmptyView *)v12 titleLabel];
    [(CPSAbridgableLabel *)v7 removeFromSuperview];
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
}

- (NSArray)titleVariants
{
  v3 = [(CPSEmptyView *)self titleLabel];
  v4 = [(CPUIAbridgableLabel *)v3 textVariants];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)setSubtitleVariants:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [(CPSEmptyView *)v12 subtitleLabel];
  [(CPUIAbridgableLabel *)v10 setTextVariants:location[0]];
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if ([location[0] count])
  {
    v8 = v12;
    v9 = [(CPSEmptyView *)v12 subtitleLabel];
    [(CPSEmptyView *)v8 addArrangedSubview:?];
    MEMORY[0x277D82BD8](v9);
  }

  else
  {
    v5 = v12;
    v6 = [(CPSEmptyView *)v12 subtitleLabel];
    [(CPSEmptyView *)v5 removeArrangedSubview:?];
    *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    v7 = [(CPSEmptyView *)v12 subtitleLabel];
    [(CPSAbridgableLabel *)v7 removeFromSuperview];
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
}

- (NSArray)subtitleVariants
{
  v3 = [(CPSEmptyView *)self subtitleLabel];
  v4 = [(CPUIAbridgableLabel *)v3 textVariants];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)_updateLabelTraits
{
  v26[1] = *MEMORY[0x277D85DE8];
  v22 = self;
  v21[1] = a2;
  v8 = MEMORY[0x277D74310];
  v7 = *MEMORY[0x277D76A20];
  v9 = [(CPSEmptyView *)self traitCollection];
  v21[0] = [v8 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](v9);
  v25 = *MEMORY[0x277D74430];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v26[0] = v10;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:?];
  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v11 = v21[0];
  v23 = *MEMORY[0x277D74380];
  v24 = v20;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:{1, v2}];
  v3 = [v11 fontDescriptorByAddingAttributes:?];
  v4 = v21[0];
  v21[0] = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v12);
  v14 = [MEMORY[0x277D74300] fontWithDescriptor:v21[0] size:0.0];
  v13 = [(CPSEmptyView *)v22 titleLabel];
  [(CPSAbridgableLabel *)v13 setFont:v14];
  MEMORY[0x277D82BD8](v13);
  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v16 = MEMORY[0x277D74300];
  v15 = *MEMORY[0x277D76920];
  v19 = [(CPSEmptyView *)v22 traitCollection];
  v18 = [v16 preferredFontForTextStyle:v15 compatibleWithTraitCollection:?];
  v17 = [(CPSEmptyView *)v22 subtitleLabel];
  [(CPSAbridgableLabel *)v17 setFont:v18];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  *&v6 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  [(CPSEmptyView *)v22 setNeedsDisplay];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSEmptyView;
  [(CPSEmptyView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSEmptyView *)v5 _updateLabelTraits];
  objc_storeStrong(location, 0);
}

@end