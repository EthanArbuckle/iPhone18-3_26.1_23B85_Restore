@interface CPSDashboardEstimatesView
- (CPSDashboardEstimatesView)initWithFrame:(CGRect)frame;
- (id)_labelFont;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
- (void)updateTripEstimates:(id)estimates;
@end

@implementation CPSDashboardEstimatesView

- (CPSDashboardEstimatesView)initWithFrame:(CGRect)frame
{
  v47[3] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v44 = a2;
  v45 = 0;
  v43.receiver = self;
  v43.super_class = CPSDashboardEstimatesView;
  v45 = [(CPSDashboardEstimatesView *)&v43 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v45, v45);
  if (v45)
  {
    v3 = objc_alloc_init(CPSTravelEstimatesStringFormatter);
    travelEstimatesStringFormatter = v45->_travelEstimatesStringFormatter;
    v45->_travelEstimatesStringFormatter = v3;
    *&v5 = MEMORY[0x277D82BD8](travelEstimatesStringFormatter).n128_u64[0];
    _labelFont = [(CPSDashboardEstimatesView *)v45 _labelFont];
    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v30 = MEMORY[0x277CBF3A0];
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    etaLabel = v45->_etaLabel;
    v45->_etaLabel = v7;
    *&v9 = MEMORY[0x277D82BD8](etaLabel).n128_u64[0];
    v24 = v45->_etaLabel;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v24 setTextColor:?];
    *&v10 = MEMORY[0x277D82BD8](labelColor).n128_u64[0];
    [(UILabel *)v45->_etaLabel setFont:_labelFont, v10];
    [(UILabel *)v45->_etaLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{*v30, v30[1], v30[2], v30[3]}];
    timeRemainingLabel = v45->_timeRemainingLabel;
    v45->_timeRemainingLabel = v11;
    *&v13 = MEMORY[0x277D82BD8](timeRemainingLabel).n128_u64[0];
    v26 = v45->_timeRemainingLabel;
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v26 setTextColor:?];
    *&v14 = MEMORY[0x277D82BD8](labelColor2).n128_u64[0];
    [(UILabel *)v45->_timeRemainingLabel setFont:_labelFont, v14];
    [(UILabel *)v45->_timeRemainingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{*v30, v30[1], v30[2], v30[3]}];
    distanceRemainingLabel = v45->_distanceRemainingLabel;
    v45->_distanceRemainingLabel = v15;
    *&v17 = MEMORY[0x277D82BD8](distanceRemainingLabel).n128_u64[0];
    v28 = v45->_distanceRemainingLabel;
    labelColor3 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v28 setTextColor:?];
    *&v18 = MEMORY[0x277D82BD8](labelColor3).n128_u64[0];
    [(UILabel *)v45->_distanceRemainingLabel setFont:_labelFont, v18];
    [(UILabel *)v45->_distanceRemainingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{*v30, v30[1], v30[2], v30[3]}];
    stackView = v45->_stackView;
    v45->_stackView = v19;
    *&v21 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
    [(UIStackView *)v45->_stackView setTranslatesAutoresizingMaskIntoConstraints:0, v21];
    [(UIStackView *)v45->_stackView setAxis:0];
    [(UIStackView *)v45->_stackView setSpacing:12.0];
    [(CPSDashboardEstimatesView *)v45 addSubview:v45->_stackView];
    [(UIStackView *)v45->_stackView addArrangedSubview:v45->_etaLabel];
    [(UIStackView *)v45->_stackView addArrangedSubview:v45->_timeRemainingLabel];
    [(UIStackView *)v45->_stackView addArrangedSubview:v45->_distanceRemainingLabel];
    v31 = MEMORY[0x277CCAAD0];
    topAnchor = [(CPSDashboardEstimatesView *)v45 topAnchor];
    topAnchor2 = [(UIStackView *)v45->_stackView topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:?];
    v47[0] = v39;
    bottomAnchor = [(CPSDashboardEstimatesView *)v45 bottomAnchor];
    bottomAnchor2 = [(UIStackView *)v45->_stackView bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:?];
    v47[1] = v36;
    centerXAnchor = [(CPSDashboardEstimatesView *)v45 centerXAnchor];
    centerXAnchor2 = [(UIStackView *)v45->_stackView centerXAnchor];
    v33 = [centerXAnchor constraintEqualToAnchor:?];
    v47[2] = v33;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
    [v31 activateConstraints:?];
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](centerXAnchor2);
    MEMORY[0x277D82BD8](centerXAnchor);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    objc_storeStrong(&_labelFont, 0);
  }

  v23 = MEMORY[0x277D82BE0](v45);
  objc_storeStrong(&v45, 0);
  return v23;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v9.receiver = selfCopy;
  v9.super_class = CPSDashboardEstimatesView;
  [(CPSDashboardEstimatesView *)&v9 traitCollectionDidChange:location[0]];
  _labelFont = [(CPSDashboardEstimatesView *)selfCopy _labelFont];
  etaLabel = [(CPSDashboardEstimatesView *)selfCopy etaLabel];
  [(UILabel *)etaLabel setFont:_labelFont];
  *&v3 = MEMORY[0x277D82BD8](etaLabel).n128_u64[0];
  timeRemainingLabel = [(CPSDashboardEstimatesView *)selfCopy timeRemainingLabel];
  [(UILabel *)timeRemainingLabel setFont:_labelFont];
  *&v4 = MEMORY[0x277D82BD8](timeRemainingLabel).n128_u64[0];
  distanceRemainingLabel = [(CPSDashboardEstimatesView *)selfCopy distanceRemainingLabel];
  [(UILabel *)distanceRemainingLabel setFont:_labelFont];
  MEMORY[0x277D82BD8](distanceRemainingLabel);
  objc_storeStrong(&_labelFont, 0);
  objc_storeStrong(location, 0);
}

- (void)layoutSubviews
{
  selfCopy = self;
  v35 = a2;
  v34.receiver = self;
  v34.super_class = CPSDashboardEstimatesView;
  [(CPSDashboardEstimatesView *)&v34 layoutSubviews];
  [(CPSDashboardEstimatesView *)selfCopy bounds];
  v33 = v2 - 10.0;
  etaLabel = [(CPSDashboardEstimatesView *)selfCopy etaLabel];
  [(UILabel *)etaLabel setHidden:0];
  *&v3 = MEMORY[0x277D82BD8](etaLabel).n128_u64[0];
  timeRemainingLabel = [(CPSDashboardEstimatesView *)selfCopy timeRemainingLabel];
  [(UILabel *)timeRemainingLabel setHidden:0];
  *&v4 = MEMORY[0x277D82BD8](timeRemainingLabel).n128_u64[0];
  distanceRemainingLabel = [(CPSDashboardEstimatesView *)selfCopy distanceRemainingLabel];
  [(UILabel *)distanceRemainingLabel setHidden:0];
  *&v5 = MEMORY[0x277D82BD8](distanceRemainingLabel).n128_u64[0];
  etaLabel2 = [(CPSDashboardEstimatesView *)selfCopy etaLabel];
  [(UILabel *)etaLabel2 sizeToFit];
  *&v6 = MEMORY[0x277D82BD8](etaLabel2).n128_u64[0];
  timeRemainingLabel2 = [(CPSDashboardEstimatesView *)selfCopy timeRemainingLabel];
  [(UILabel *)timeRemainingLabel2 sizeToFit];
  *&v7 = MEMORY[0x277D82BD8](timeRemainingLabel2).n128_u64[0];
  distanceRemainingLabel2 = [(CPSDashboardEstimatesView *)selfCopy distanceRemainingLabel];
  [(UILabel *)distanceRemainingLabel2 sizeToFit];
  *&v8 = MEMORY[0x277D82BD8](distanceRemainingLabel2).n128_u64[0];
  etaLabel3 = [(CPSDashboardEstimatesView *)selfCopy etaLabel];
  [(UILabel *)etaLabel3 intrinsicContentSize];
  v26 = v9 + 12.0;
  timeRemainingLabel3 = [(CPSDashboardEstimatesView *)selfCopy timeRemainingLabel];
  [(UILabel *)timeRemainingLabel3 intrinsicContentSize];
  v28 = v26 + v10 + 12.0;
  distanceRemainingLabel3 = [(CPSDashboardEstimatesView *)selfCopy distanceRemainingLabel];
  [(UILabel *)distanceRemainingLabel3 intrinsicContentSize];
  v31 = v28 + v11;
  MEMORY[0x277D82BD8](distanceRemainingLabel3);
  MEMORY[0x277D82BD8](timeRemainingLabel3);
  MEMORY[0x277D82BD8](etaLabel3);
  v32 = v31;
  if (v31 > v33)
  {
    distanceRemainingLabel4 = [(CPSDashboardEstimatesView *)selfCopy distanceRemainingLabel];
    [(UILabel *)distanceRemainingLabel4 setHidden:1];
    *&v12 = MEMORY[0x277D82BD8](distanceRemainingLabel4).n128_u64[0];
    etaLabel4 = [(CPSDashboardEstimatesView *)selfCopy etaLabel];
    [(UILabel *)etaLabel4 intrinsicContentSize];
    v18 = v13 + 12.0;
    timeRemainingLabel4 = [(CPSDashboardEstimatesView *)selfCopy timeRemainingLabel];
    [(UILabel *)timeRemainingLabel4 intrinsicContentSize];
    v32 = v18 + v14;
    MEMORY[0x277D82BD8](timeRemainingLabel4);
    MEMORY[0x277D82BD8](etaLabel4);
  }

  if (v32 > v33)
  {
    timeRemainingLabel5 = [(CPSDashboardEstimatesView *)selfCopy timeRemainingLabel];
    [(UILabel *)timeRemainingLabel5 setHidden:1];
    MEMORY[0x277D82BD8](timeRemainingLabel5);
  }
}

- (void)updateTripEstimates:(id)estimates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  travelEstimatesStringFormatter = [(CPSDashboardEstimatesView *)selfCopy travelEstimatesStringFormatter];
  v28 = [(CPSTravelEstimatesStringFormatter *)travelEstimatesStringFormatter generateTravelEstimatesStringsForTravelEstimates:location[0]];
  *&v3 = MEMORY[0x277D82BD8](travelEstimatesStringFormatter).n128_u64[0];
  v11 = MEMORY[0x277CCACA8];
  arrivalTimeString = [v28 arrivalTimeString];
  v12 = CPSLocalizedStringForKey(@"ETA");
  v27 = [v11 stringWithFormat:arrivalTimeString, v12];
  MEMORY[0x277D82BD8](v12);
  *&v4 = MEMORY[0x277D82BD8](arrivalTimeString).n128_u64[0];
  etaLabel = [(CPSDashboardEstimatesView *)selfCopy etaLabel];
  [(UILabel *)etaLabel setText:v27];
  *&v5 = MEMORY[0x277D82BD8](etaLabel).n128_u64[0];
  v15 = MEMORY[0x277CCACA8];
  timeRemainingString = [v28 timeRemainingString];
  localizedTimeRemainingUnit = [v28 localizedTimeRemainingUnit];
  v26 = [v15 stringWithFormat:@"%@ %@", timeRemainingString, localizedTimeRemainingUnit];
  MEMORY[0x277D82BD8](localizedTimeRemainingUnit);
  *&v6 = MEMORY[0x277D82BD8](timeRemainingString).n128_u64[0];
  timeRemainingLabel = [(CPSDashboardEstimatesView *)selfCopy timeRemainingLabel];
  [(UILabel *)timeRemainingLabel setText:v26];
  *&v7 = MEMORY[0x277D82BD8](timeRemainingLabel).n128_u64[0];
  v19 = MEMORY[0x277CCACA8];
  distanceRemainingString = [v28 distanceRemainingString];
  localizedDistanceRemainingUnit = [v28 localizedDistanceRemainingUnit];
  v25 = [v19 stringWithFormat:@"%@ %@", distanceRemainingString, localizedDistanceRemainingUnit];
  MEMORY[0x277D82BD8](localizedDistanceRemainingUnit);
  *&v8 = MEMORY[0x277D82BD8](distanceRemainingString).n128_u64[0];
  distanceRemainingLabel = [(CPSDashboardEstimatesView *)selfCopy distanceRemainingLabel];
  [(UILabel *)distanceRemainingLabel setText:v25];
  *&v9 = MEMORY[0x277D82BD8](distanceRemainingLabel).n128_u64[0];
  v24 = [MEMORY[0x277CBB188] timeRemainingColorForColor:{objc_msgSend(location[0], "timeRemainingColor", v9)}];
  timeRemainingLabel2 = [(CPSDashboardEstimatesView *)selfCopy timeRemainingLabel];
  [(UILabel *)timeRemainingLabel2 setTextColor:v24];
  MEMORY[0x277D82BD8](timeRemainingLabel2);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (id)_labelFont
{
  v19[1] = *MEMORY[0x277D85DE8];
  v15[2] = self;
  v15[1] = a2;
  v7 = MEMORY[0x277D74310];
  v6 = *MEMORY[0x277D76968];
  traitCollection = [(CPSDashboardEstimatesView *)self traitCollection];
  v15[0] = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](traitCollection);
  v18 = *MEMORY[0x277D74430];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D74420]];
  v19[0] = v9;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:?];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = v15[0];
  v16 = *MEMORY[0x277D74380];
  v17 = v14;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:{1, v2}];
  v3 = [v10 fontDescriptorByAddingAttributes:?];
  v4 = v15[0];
  v15[0] = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v11);
  v13 = [MEMORY[0x277D74300] fontWithDescriptor:v15[0] size:0.0];
  v12 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);

  return v12;
}

@end