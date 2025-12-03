@interface CPSEmptyView
- (CPSEmptyView)initWithFrame:(CGRect)frame;
- (NSArray)subtitleVariants;
- (NSArray)titleVariants;
- (void)_updateLabelTraits;
- (void)setShowsSpinner:(BOOL)spinner;
- (void)setSubtitleVariants:(id)variants;
- (void)setTitleVariants:(id)variants;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSEmptyView

- (CPSEmptyView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v18 = a2;
  v19 = 0;
  v17.receiver = self;
  v17.super_class = CPSEmptyView;
  v13 = [(CPSEmptyView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v16 setColor:?];
    *&v3 = MEMORY[0x277D82BD8](labelColor).n128_u64[0];
    [(CPSEmptyView *)v19 setSpinnerView:v16, v3];
    v4 = [CPSAbridgableLabel alloc];
    v11 = MEMORY[0x277CBF3A0];
    v15 = [(CPSAbridgableLabel *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(CPSAbridgableLabel *)v15 setTextAlignment:1];
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [(CPSAbridgableLabel *)v15 setTextColor:?];
    *&v5 = MEMORY[0x277D82BD8](labelColor2).n128_u64[0];
    [(CPSAbridgableLabel *)v15 setNumberOfLines:1, v5];
    [(CPSEmptyView *)v19 setTitleLabel:v15];
    v14 = [[CPSAbridgableLabel alloc] initWithFrame:*v11, v11[1], v11[2], v11[3]];
    [(CPSAbridgableLabel *)v14 setTextAlignment:1];
    labelColor3 = [MEMORY[0x277D75348] labelColor];
    [(CPSAbridgableLabel *)v14 setTextColor:?];
    *&v6 = MEMORY[0x277D82BD8](labelColor3).n128_u64[0];
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

- (void)setShowsSpinner:(BOOL)spinner
{
  if (self->_showsSpinner != spinner)
  {
    self->_showsSpinner = spinner;
    if (spinner)
    {
      spinnerView = [(CPSEmptyView *)self spinnerView];
      [CPSEmptyView insertArrangedSubview:"insertArrangedSubview:atIndex:" atIndex:?];
      spinnerView2 = [(CPSEmptyView *)self spinnerView];
      [(UIActivityIndicatorView *)spinnerView2 startAnimating];
      MEMORY[0x277D82BD8](spinnerView2);
    }

    else
    {
      spinnerView3 = [(CPSEmptyView *)self spinnerView];
      [(UIActivityIndicatorView *)spinnerView3 stopAnimating];
      spinnerView4 = [(CPSEmptyView *)self spinnerView];
      [(CPSEmptyView *)self removeArrangedSubview:?];
      spinnerView5 = [(CPSEmptyView *)self spinnerView];
      [(UIActivityIndicatorView *)spinnerView5 removeFromSuperview];
      MEMORY[0x277D82BD8](spinnerView5);
    }
  }
}

- (void)setTitleVariants:(id)variants
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, variants);
  titleLabel = [(CPSEmptyView *)selfCopy titleLabel];
  [(CPUIAbridgableLabel *)titleLabel setTextVariants:location[0]];
  *&v3 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
  if ([location[0] count])
  {
    v8 = selfCopy;
    titleLabel2 = [(CPSEmptyView *)selfCopy titleLabel];
    [(CPSEmptyView *)v8 addArrangedSubview:?];
    MEMORY[0x277D82BD8](titleLabel2);
  }

  else
  {
    v5 = selfCopy;
    titleLabel3 = [(CPSEmptyView *)selfCopy titleLabel];
    [(CPSEmptyView *)v5 removeArrangedSubview:?];
    *&v4 = MEMORY[0x277D82BD8](titleLabel3).n128_u64[0];
    titleLabel4 = [(CPSEmptyView *)selfCopy titleLabel];
    [(CPSAbridgableLabel *)titleLabel4 removeFromSuperview];
    MEMORY[0x277D82BD8](titleLabel4);
  }

  objc_storeStrong(location, 0);
}

- (NSArray)titleVariants
{
  titleLabel = [(CPSEmptyView *)self titleLabel];
  textVariants = [(CPUIAbridgableLabel *)titleLabel textVariants];
  MEMORY[0x277D82BD8](titleLabel);

  return textVariants;
}

- (void)setSubtitleVariants:(id)variants
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, variants);
  subtitleLabel = [(CPSEmptyView *)selfCopy subtitleLabel];
  [(CPUIAbridgableLabel *)subtitleLabel setTextVariants:location[0]];
  *&v3 = MEMORY[0x277D82BD8](subtitleLabel).n128_u64[0];
  if ([location[0] count])
  {
    v8 = selfCopy;
    subtitleLabel2 = [(CPSEmptyView *)selfCopy subtitleLabel];
    [(CPSEmptyView *)v8 addArrangedSubview:?];
    MEMORY[0x277D82BD8](subtitleLabel2);
  }

  else
  {
    v5 = selfCopy;
    subtitleLabel3 = [(CPSEmptyView *)selfCopy subtitleLabel];
    [(CPSEmptyView *)v5 removeArrangedSubview:?];
    *&v4 = MEMORY[0x277D82BD8](subtitleLabel3).n128_u64[0];
    subtitleLabel4 = [(CPSEmptyView *)selfCopy subtitleLabel];
    [(CPSAbridgableLabel *)subtitleLabel4 removeFromSuperview];
    MEMORY[0x277D82BD8](subtitleLabel4);
  }

  objc_storeStrong(location, 0);
}

- (NSArray)subtitleVariants
{
  subtitleLabel = [(CPSEmptyView *)self subtitleLabel];
  textVariants = [(CPUIAbridgableLabel *)subtitleLabel textVariants];
  MEMORY[0x277D82BD8](subtitleLabel);

  return textVariants;
}

- (void)_updateLabelTraits
{
  v26[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v21[1] = a2;
  v8 = MEMORY[0x277D74310];
  v7 = *MEMORY[0x277D76A20];
  traitCollection = [(CPSEmptyView *)self traitCollection];
  v21[0] = [v8 preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](traitCollection);
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
  titleLabel = [(CPSEmptyView *)selfCopy titleLabel];
  [(CPSAbridgableLabel *)titleLabel setFont:v14];
  MEMORY[0x277D82BD8](titleLabel);
  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v16 = MEMORY[0x277D74300];
  v15 = *MEMORY[0x277D76920];
  traitCollection2 = [(CPSEmptyView *)selfCopy traitCollection];
  v18 = [v16 preferredFontForTextStyle:v15 compatibleWithTraitCollection:?];
  subtitleLabel = [(CPSEmptyView *)selfCopy subtitleLabel];
  [(CPSAbridgableLabel *)subtitleLabel setFont:v18];
  MEMORY[0x277D82BD8](subtitleLabel);
  MEMORY[0x277D82BD8](v18);
  *&v6 = MEMORY[0x277D82BD8](traitCollection2).n128_u64[0];
  [(CPSEmptyView *)selfCopy setNeedsDisplay];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v21, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSEmptyView;
  [(CPSEmptyView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSEmptyView *)selfCopy _updateLabelTraits];
  objc_storeStrong(location, 0);
}

@end