@interface CPSDashboardEstimatesView
- (CPSDashboardEstimatesView)initWithFrame:(CGRect)a3;
- (id)_labelFont;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateTripEstimates:(id)a3;
@end

@implementation CPSDashboardEstimatesView

- (CPSDashboardEstimatesView)initWithFrame:(CGRect)a3
{
  v47[3] = *MEMORY[0x277D85DE8];
  v46 = a3;
  v44 = a2;
  v45 = 0;
  v43.receiver = self;
  v43.super_class = CPSDashboardEstimatesView;
  v45 = [(CPSDashboardEstimatesView *)&v43 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v45, v45);
  if (v45)
  {
    v3 = objc_alloc_init(CPSTravelEstimatesStringFormatter);
    travelEstimatesStringFormatter = v45->_travelEstimatesStringFormatter;
    v45->_travelEstimatesStringFormatter = v3;
    *&v5 = MEMORY[0x277D82BD8](travelEstimatesStringFormatter).n128_u64[0];
    v42 = [(CPSDashboardEstimatesView *)v45 _labelFont];
    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v30 = MEMORY[0x277CBF3A0];
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    etaLabel = v45->_etaLabel;
    v45->_etaLabel = v7;
    *&v9 = MEMORY[0x277D82BD8](etaLabel).n128_u64[0];
    v24 = v45->_etaLabel;
    v25 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v24 setTextColor:?];
    *&v10 = MEMORY[0x277D82BD8](v25).n128_u64[0];
    [(UILabel *)v45->_etaLabel setFont:v42, v10];
    [(UILabel *)v45->_etaLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{*v30, v30[1], v30[2], v30[3]}];
    timeRemainingLabel = v45->_timeRemainingLabel;
    v45->_timeRemainingLabel = v11;
    *&v13 = MEMORY[0x277D82BD8](timeRemainingLabel).n128_u64[0];
    v26 = v45->_timeRemainingLabel;
    v27 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v26 setTextColor:?];
    *&v14 = MEMORY[0x277D82BD8](v27).n128_u64[0];
    [(UILabel *)v45->_timeRemainingLabel setFont:v42, v14];
    [(UILabel *)v45->_timeRemainingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{*v30, v30[1], v30[2], v30[3]}];
    distanceRemainingLabel = v45->_distanceRemainingLabel;
    v45->_distanceRemainingLabel = v15;
    *&v17 = MEMORY[0x277D82BD8](distanceRemainingLabel).n128_u64[0];
    v28 = v45->_distanceRemainingLabel;
    v29 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v28 setTextColor:?];
    *&v18 = MEMORY[0x277D82BD8](v29).n128_u64[0];
    [(UILabel *)v45->_distanceRemainingLabel setFont:v42, v18];
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
    v41 = [(CPSDashboardEstimatesView *)v45 topAnchor];
    v40 = [(UIStackView *)v45->_stackView topAnchor];
    v39 = [v41 constraintEqualToAnchor:?];
    v47[0] = v39;
    v38 = [(CPSDashboardEstimatesView *)v45 bottomAnchor];
    v37 = [(UIStackView *)v45->_stackView bottomAnchor];
    v36 = [v38 constraintEqualToAnchor:?];
    v47[1] = v36;
    v35 = [(CPSDashboardEstimatesView *)v45 centerXAnchor];
    v34 = [(UIStackView *)v45->_stackView centerXAnchor];
    v33 = [v35 constraintEqualToAnchor:?];
    v47[2] = v33;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
    [v31 activateConstraints:?];
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    objc_storeStrong(&v42, 0);
  }

  v23 = MEMORY[0x277D82BE0](v45);
  objc_storeStrong(&v45, 0);
  return v23;
}

- (void)traitCollectionDidChange:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9.receiver = v11;
  v9.super_class = CPSDashboardEstimatesView;
  [(CPSDashboardEstimatesView *)&v9 traitCollectionDidChange:location[0]];
  v8 = [(CPSDashboardEstimatesView *)v11 _labelFont];
  v5 = [(CPSDashboardEstimatesView *)v11 etaLabel];
  [(UILabel *)v5 setFont:v8];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = [(CPSDashboardEstimatesView *)v11 timeRemainingLabel];
  [(UILabel *)v6 setFont:v8];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = [(CPSDashboardEstimatesView *)v11 distanceRemainingLabel];
  [(UILabel *)v7 setFont:v8];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)layoutSubviews
{
  v36 = self;
  v35 = a2;
  v34.receiver = self;
  v34.super_class = CPSDashboardEstimatesView;
  [(CPSDashboardEstimatesView *)&v34 layoutSubviews];
  [(CPSDashboardEstimatesView *)v36 bounds];
  v33 = v2 - 10.0;
  v20 = [(CPSDashboardEstimatesView *)v36 etaLabel];
  [(UILabel *)v20 setHidden:0];
  *&v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  v21 = [(CPSDashboardEstimatesView *)v36 timeRemainingLabel];
  [(UILabel *)v21 setHidden:0];
  *&v4 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v22 = [(CPSDashboardEstimatesView *)v36 distanceRemainingLabel];
  [(UILabel *)v22 setHidden:0];
  *&v5 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v23 = [(CPSDashboardEstimatesView *)v36 etaLabel];
  [(UILabel *)v23 sizeToFit];
  *&v6 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  v24 = [(CPSDashboardEstimatesView *)v36 timeRemainingLabel];
  [(UILabel *)v24 sizeToFit];
  *&v7 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  v25 = [(CPSDashboardEstimatesView *)v36 distanceRemainingLabel];
  [(UILabel *)v25 sizeToFit];
  *&v8 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  v30 = [(CPSDashboardEstimatesView *)v36 etaLabel];
  [(UILabel *)v30 intrinsicContentSize];
  v26 = v9 + 12.0;
  v29 = [(CPSDashboardEstimatesView *)v36 timeRemainingLabel];
  [(UILabel *)v29 intrinsicContentSize];
  v28 = v26 + v10 + 12.0;
  v27 = [(CPSDashboardEstimatesView *)v36 distanceRemainingLabel];
  [(UILabel *)v27 intrinsicContentSize];
  v31 = v28 + v11;
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v32 = v31;
  if (v31 > v33)
  {
    v16 = [(CPSDashboardEstimatesView *)v36 distanceRemainingLabel];
    [(UILabel *)v16 setHidden:1];
    *&v12 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    v19 = [(CPSDashboardEstimatesView *)v36 etaLabel];
    [(UILabel *)v19 intrinsicContentSize];
    v18 = v13 + 12.0;
    v17 = [(CPSDashboardEstimatesView *)v36 timeRemainingLabel];
    [(UILabel *)v17 intrinsicContentSize];
    v32 = v18 + v14;
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v19);
  }

  if (v32 > v33)
  {
    v15 = [(CPSDashboardEstimatesView *)v36 timeRemainingLabel];
    [(UILabel *)v15 setHidden:1];
    MEMORY[0x277D82BD8](v15);
  }
}

- (void)updateTripEstimates:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [(CPSDashboardEstimatesView *)v30 travelEstimatesStringFormatter];
  v28 = [(CPSTravelEstimatesStringFormatter *)v10 generateTravelEstimatesStringsForTravelEstimates:location[0]];
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v11 = MEMORY[0x277CCACA8];
  v13 = [v28 arrivalTimeString];
  v12 = CPSLocalizedStringForKey(@"ETA");
  v27 = [v11 stringWithFormat:v13, v12];
  MEMORY[0x277D82BD8](v12);
  *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v14 = [(CPSDashboardEstimatesView *)v30 etaLabel];
  [(UILabel *)v14 setText:v27];
  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v15 = MEMORY[0x277CCACA8];
  v17 = [v28 timeRemainingString];
  v16 = [v28 localizedTimeRemainingUnit];
  v26 = [v15 stringWithFormat:@"%@ %@", v17, v16];
  MEMORY[0x277D82BD8](v16);
  *&v6 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v18 = [(CPSDashboardEstimatesView *)v30 timeRemainingLabel];
  [(UILabel *)v18 setText:v26];
  *&v7 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v19 = MEMORY[0x277CCACA8];
  v21 = [v28 distanceRemainingString];
  v20 = [v28 localizedDistanceRemainingUnit];
  v25 = [v19 stringWithFormat:@"%@ %@", v21, v20];
  MEMORY[0x277D82BD8](v20);
  *&v8 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v22 = [(CPSDashboardEstimatesView *)v30 distanceRemainingLabel];
  [(UILabel *)v22 setText:v25];
  *&v9 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v24 = [MEMORY[0x277CBB188] timeRemainingColorForColor:{objc_msgSend(location[0], "timeRemainingColor", v9)}];
  v23 = [(CPSDashboardEstimatesView *)v30 timeRemainingLabel];
  [(UILabel *)v23 setTextColor:v24];
  MEMORY[0x277D82BD8](v23);
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
  v8 = [(CPSDashboardEstimatesView *)self traitCollection];
  v15[0] = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](v8);
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