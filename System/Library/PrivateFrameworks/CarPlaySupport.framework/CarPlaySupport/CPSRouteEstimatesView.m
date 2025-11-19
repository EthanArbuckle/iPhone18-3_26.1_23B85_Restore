@interface CPSRouteEstimatesView
- (CPSRouteEstimatesView)initWithStyle:(unint64_t)a3;
- (NSTimeZone)arrivalTimeZone;
- (void)_updateTextColors;
- (void)setArrivalTimeZone:(id)a3;
- (void)setCurrentTravelEstimates:(id)a3;
- (void)setTimeRemainingColor:(unint64_t)a3;
- (void)setTripEstimateStyle:(unint64_t)a3;
@end

@implementation CPSRouteEstimatesView

- (CPSRouteEstimatesView)initWithStyle:(unint64_t)a3
{
  v58[11] = *MEMORY[0x277D85DE8];
  v56 = a2;
  v55 = a3;
  v57 = 0;
  v54.receiver = self;
  v54.super_class = CPSRouteEstimatesView;
  v57 = [(CPSRouteEstimatesView *)&v54 init];
  objc_storeStrong(&v57, v57);
  if (v57)
  {
    v3 = objc_alloc_init(CPSTravelEstimatesStringFormatter);
    travelEstimatesStringFormatter = v57->_travelEstimatesStringFormatter;
    v57->_travelEstimatesStringFormatter = v3;
    *&v5 = MEMORY[0x277D82BD8](travelEstimatesStringFormatter).n128_u64[0];
    [(CPSRouteEstimatesView *)v57 setTripEstimateStyle:v55, v5];
    [(CPSRouteEstimatesView *)v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc_init(CPSLabeledValueView);
    arrivalTimeView = v57->_arrivalTimeView;
    v57->_arrivalTimeView = v6;
    *&v8 = MEMORY[0x277D82BD8](arrivalTimeView).n128_u64[0];
    [(CPSRouteEstimatesView *)v57 addSubview:v57->_arrivalTimeView, v8];
    v9 = objc_alloc_init(CPSLabeledValueView);
    timeRemainingView = v57->_timeRemainingView;
    v57->_timeRemainingView = v9;
    *&v11 = MEMORY[0x277D82BD8](timeRemainingView).n128_u64[0];
    [(CPSRouteEstimatesView *)v57 addSubview:v57->_timeRemainingView, v11];
    v12 = objc_alloc_init(CPSLabeledValueView);
    distanceRemainingView = v57->_distanceRemainingView;
    v57->_distanceRemainingView = v12;
    *&v14 = MEMORY[0x277D82BD8](distanceRemainingView).n128_u64[0];
    [(CPSRouteEstimatesView *)v57 addSubview:v57->_distanceRemainingView, v14];
    v53 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(CPSRouteEstimatesView *)v57 addLayoutGuide:v53];
    v52 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(CPSRouteEstimatesView *)v57 addLayoutGuide:v52];
    v18 = MEMORY[0x277CCAAD0];
    v51 = [v53 leftAnchor];
    v50 = [(CPSRouteEstimatesView *)v57 leftAnchor];
    v49 = [v51 constraintEqualToAnchor:?];
    v58[0] = v49;
    v48 = [v53 rightAnchor];
    v47 = [(CPSRouteEstimatesView *)v57 centerXAnchor];
    v46 = [v48 constraintEqualToAnchor:?];
    v58[1] = v46;
    v45 = [v52 leftAnchor];
    v44 = [(CPSRouteEstimatesView *)v57 centerXAnchor];
    v43 = [v45 constraintEqualToAnchor:?];
    v58[2] = v43;
    v42 = [v52 rightAnchor];
    v41 = [(CPSRouteEstimatesView *)v57 rightAnchor];
    v40 = [v42 constraintEqualToAnchor:?];
    v58[3] = v40;
    v39 = [(CPSLabeledValueView *)v57->_timeRemainingView centerXAnchor];
    v38 = [(CPSRouteEstimatesView *)v57 centerXAnchor];
    v37 = [v39 constraintEqualToAnchor:?];
    v58[4] = v37;
    v36 = [(CPSLabeledValueView *)v57->_arrivalTimeView centerXAnchor];
    v35 = [v53 centerXAnchor];
    v34 = [v36 constraintEqualToAnchor:-7.0 constant:?];
    v58[5] = v34;
    v33 = [(CPSLabeledValueView *)v57->_distanceRemainingView centerXAnchor];
    v32 = [v52 centerXAnchor];
    v31 = [v33 constraintEqualToAnchor:7.0 constant:?];
    v58[6] = v31;
    v30 = [(CPSLabeledValueView *)v57->_timeRemainingView centerYAnchor];
    v29 = [(CPSRouteEstimatesView *)v57 centerYAnchor];
    v28 = [v30 constraintEqualToAnchor:?];
    v58[7] = v28;
    v27 = [(CPSLabeledValueView *)v57->_arrivalTimeView centerYAnchor];
    v26 = [(CPSRouteEstimatesView *)v57 centerYAnchor];
    v25 = [v27 constraintEqualToAnchor:?];
    v58[8] = v25;
    v24 = [(CPSLabeledValueView *)v57->_distanceRemainingView centerYAnchor];
    v23 = [(CPSRouteEstimatesView *)v57 centerYAnchor];
    v22 = [v24 constraintEqualToAnchor:?];
    v58[9] = v22;
    v21 = [(CPSRouteEstimatesView *)v57 heightAnchor];
    v20 = [v21 constraintEqualToConstant:28.0];
    v58[10] = v20;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:11];
    [v18 activateConstraints:?];
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
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
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    *&v15 = MEMORY[0x277D82BD8](v51).n128_u64[0];
    [(CPSRouteEstimatesView *)v57 _updateTextColors];
    objc_storeStrong(&v52, 0);
    objc_storeStrong(&v53, 0);
  }

  v17 = MEMORY[0x277D82BE0](v57);
  objc_storeStrong(&v57, 0);
  return v17;
}

- (void)_updateTextColors
{
  v12 = self;
  v11[1] = a2;
  v11[0] = [MEMORY[0x277CBB188] timeRemainingColorForColor:{-[CPSRouteEstimatesView timeRemainingColor](self, "timeRemainingColor")}];
  v5 = [(CPSRouteEstimatesView *)v12 timeRemainingView];
  v4 = [(CPSLabeledValueView *)v5 label];
  [(UILabel *)v4 setTextColor:v11[0]];
  MEMORY[0x277D82BD8](v4);
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v7 = [(CPSRouteEstimatesView *)v12 timeRemainingView];
  v6 = [(CPSLabeledValueView *)v7 valueText];
  [(UILabel *)v6 setTextColor:v11[0]];
  MEMORY[0x277D82BD8](v6);
  v10 = [MEMORY[0x277D75348] labelColor];
  v8 = [(CPSRouteEstimatesView *)v12 distanceRemainingView];
  [(CPSLabeledValueView *)v8 setTextColor:v10];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = [(CPSRouteEstimatesView *)v12 arrivalTimeView];
  [(CPSLabeledValueView *)v9 setTextColor:v10];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v11, 0);
}

- (void)setTripEstimateStyle:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [(CPSRouteEstimatesView *)self setOverrideUserInterfaceStyle:v3];
  [(CPSRouteEstimatesView *)self _updateTextColors];
}

- (NSTimeZone)arrivalTimeZone
{
  v4 = [(CPSRouteEstimatesView *)self travelEstimatesStringFormatter];
  v3 = [(CPSTravelEstimatesStringFormatter *)v4 arrivalTimeFormatter];
  v5 = [(NSDateFormatter *)v3 timeZone];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)setArrivalTimeZone:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSRouteEstimatesView *)v6 travelEstimatesStringFormatter];
  v3 = [(CPSTravelEstimatesStringFormatter *)v4 arrivalTimeFormatter];
  [(NSDateFormatter *)v3 setTimeZone:location[0]];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)setTimeRemainingColor:(unint64_t)a3
{
  if (a3 != self->_timeRemainingColor)
  {
    self->_timeRemainingColor = a3;
    [(CPSRouteEstimatesView *)self _updateTextColors];
  }
}

- (void)setCurrentTravelEstimates:(id)a3
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [(CPSRouteEstimatesView *)v31 travelEstimatesStringFormatter];
  v29 = [(CPSTravelEstimatesStringFormatter *)v10 generateTravelEstimatesStringsForTravelEstimates:location[0]];
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v13 = [(CPSRouteEstimatesView *)v31 arrivalTimeView];
  v12 = [(CPSLabeledValueView *)v13 valueText];
  v11 = [v29 arrivalTimeString];
  [(UILabel *)v12 setText:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v16 = [(CPSRouteEstimatesView *)v31 arrivalTimeView];
  v15 = [(CPSLabeledValueView *)v16 label];
  v14 = [v29 localizedArrivalString];
  [(UILabel *)v15 setText:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  *&v5 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v19 = [(CPSRouteEstimatesView *)v31 timeRemainingView];
  v18 = [(CPSLabeledValueView *)v19 valueText];
  v17 = [v29 timeRemainingString];
  [(UILabel *)v18 setText:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  *&v6 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v22 = [(CPSRouteEstimatesView *)v31 timeRemainingView];
  v21 = [(CPSLabeledValueView *)v22 label];
  v20 = [v29 localizedTimeRemainingUnit];
  [(UILabel *)v21 setText:?];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  *&v7 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  v25 = [(CPSRouteEstimatesView *)v31 distanceRemainingView];
  v24 = [(CPSLabeledValueView *)v25 valueText];
  v23 = [v29 distanceRemainingString];
  [(UILabel *)v24 setText:?];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  *&v8 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  v28 = [(CPSRouteEstimatesView *)v31 distanceRemainingView];
  v27 = [(CPSLabeledValueView *)v28 label];
  v26 = [v29 localizedDistanceRemainingUnit];
  [(UILabel *)v27 setText:?];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  *&v9 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  -[CPSRouteEstimatesView setTimeRemainingColor:](v31, "setTimeRemainingColor:", [location[0] timeRemainingColor]);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

@end