@interface CPSRouteEstimatesView
- (CPSRouteEstimatesView)initWithStyle:(unint64_t)style;
- (NSTimeZone)arrivalTimeZone;
- (void)_updateTextColors;
- (void)setArrivalTimeZone:(id)zone;
- (void)setCurrentTravelEstimates:(id)estimates;
- (void)setTimeRemainingColor:(unint64_t)color;
- (void)setTripEstimateStyle:(unint64_t)style;
@end

@implementation CPSRouteEstimatesView

- (CPSRouteEstimatesView)initWithStyle:(unint64_t)style
{
  v58[11] = *MEMORY[0x277D85DE8];
  v56 = a2;
  styleCopy = style;
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
    [(CPSRouteEstimatesView *)v57 setTripEstimateStyle:styleCopy, v5];
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
    leftAnchor = [v53 leftAnchor];
    leftAnchor2 = [(CPSRouteEstimatesView *)v57 leftAnchor];
    v49 = [leftAnchor constraintEqualToAnchor:?];
    v58[0] = v49;
    rightAnchor = [v53 rightAnchor];
    centerXAnchor = [(CPSRouteEstimatesView *)v57 centerXAnchor];
    v46 = [rightAnchor constraintEqualToAnchor:?];
    v58[1] = v46;
    leftAnchor3 = [v52 leftAnchor];
    centerXAnchor2 = [(CPSRouteEstimatesView *)v57 centerXAnchor];
    v43 = [leftAnchor3 constraintEqualToAnchor:?];
    v58[2] = v43;
    rightAnchor2 = [v52 rightAnchor];
    rightAnchor3 = [(CPSRouteEstimatesView *)v57 rightAnchor];
    v40 = [rightAnchor2 constraintEqualToAnchor:?];
    v58[3] = v40;
    centerXAnchor3 = [(CPSLabeledValueView *)v57->_timeRemainingView centerXAnchor];
    centerXAnchor4 = [(CPSRouteEstimatesView *)v57 centerXAnchor];
    v37 = [centerXAnchor3 constraintEqualToAnchor:?];
    v58[4] = v37;
    centerXAnchor5 = [(CPSLabeledValueView *)v57->_arrivalTimeView centerXAnchor];
    centerXAnchor6 = [v53 centerXAnchor];
    v34 = [centerXAnchor5 constraintEqualToAnchor:-7.0 constant:?];
    v58[5] = v34;
    centerXAnchor7 = [(CPSLabeledValueView *)v57->_distanceRemainingView centerXAnchor];
    centerXAnchor8 = [v52 centerXAnchor];
    v31 = [centerXAnchor7 constraintEqualToAnchor:7.0 constant:?];
    v58[6] = v31;
    centerYAnchor = [(CPSLabeledValueView *)v57->_timeRemainingView centerYAnchor];
    centerYAnchor2 = [(CPSRouteEstimatesView *)v57 centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:?];
    v58[7] = v28;
    centerYAnchor3 = [(CPSLabeledValueView *)v57->_arrivalTimeView centerYAnchor];
    centerYAnchor4 = [(CPSRouteEstimatesView *)v57 centerYAnchor];
    v25 = [centerYAnchor3 constraintEqualToAnchor:?];
    v58[8] = v25;
    centerYAnchor5 = [(CPSLabeledValueView *)v57->_distanceRemainingView centerYAnchor];
    centerYAnchor6 = [(CPSRouteEstimatesView *)v57 centerYAnchor];
    v22 = [centerYAnchor5 constraintEqualToAnchor:?];
    v58[9] = v22;
    heightAnchor = [(CPSRouteEstimatesView *)v57 heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:28.0];
    v58[10] = v20;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:11];
    [v18 activateConstraints:?];
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](centerYAnchor6);
    MEMORY[0x277D82BD8](centerYAnchor5);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](centerYAnchor4);
    MEMORY[0x277D82BD8](centerYAnchor3);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](centerXAnchor8);
    MEMORY[0x277D82BD8](centerXAnchor7);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](centerXAnchor6);
    MEMORY[0x277D82BD8](centerXAnchor5);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](centerXAnchor4);
    MEMORY[0x277D82BD8](centerXAnchor3);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](rightAnchor3);
    MEMORY[0x277D82BD8](rightAnchor2);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](centerXAnchor2);
    MEMORY[0x277D82BD8](leftAnchor3);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](centerXAnchor);
    MEMORY[0x277D82BD8](rightAnchor);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](leftAnchor2);
    *&v15 = MEMORY[0x277D82BD8](leftAnchor).n128_u64[0];
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
  selfCopy = self;
  v11[1] = a2;
  v11[0] = [MEMORY[0x277CBB188] timeRemainingColorForColor:{-[CPSRouteEstimatesView timeRemainingColor](self, "timeRemainingColor")}];
  timeRemainingView = [(CPSRouteEstimatesView *)selfCopy timeRemainingView];
  label = [(CPSLabeledValueView *)timeRemainingView label];
  [(UILabel *)label setTextColor:v11[0]];
  MEMORY[0x277D82BD8](label);
  *&v2 = MEMORY[0x277D82BD8](timeRemainingView).n128_u64[0];
  timeRemainingView2 = [(CPSRouteEstimatesView *)selfCopy timeRemainingView];
  valueText = [(CPSLabeledValueView *)timeRemainingView2 valueText];
  [(UILabel *)valueText setTextColor:v11[0]];
  MEMORY[0x277D82BD8](valueText);
  labelColor = [MEMORY[0x277D75348] labelColor];
  distanceRemainingView = [(CPSRouteEstimatesView *)selfCopy distanceRemainingView];
  [(CPSLabeledValueView *)distanceRemainingView setTextColor:labelColor];
  *&v3 = MEMORY[0x277D82BD8](distanceRemainingView).n128_u64[0];
  arrivalTimeView = [(CPSRouteEstimatesView *)selfCopy arrivalTimeView];
  [(CPSLabeledValueView *)arrivalTimeView setTextColor:labelColor];
  MEMORY[0x277D82BD8](arrivalTimeView);
  objc_storeStrong(&labelColor, 0);
  objc_storeStrong(v11, 0);
}

- (void)setTripEstimateStyle:(unint64_t)style
{
  if (style == 1)
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
  travelEstimatesStringFormatter = [(CPSRouteEstimatesView *)self travelEstimatesStringFormatter];
  arrivalTimeFormatter = [(CPSTravelEstimatesStringFormatter *)travelEstimatesStringFormatter arrivalTimeFormatter];
  timeZone = [(NSDateFormatter *)arrivalTimeFormatter timeZone];
  MEMORY[0x277D82BD8](arrivalTimeFormatter);
  MEMORY[0x277D82BD8](travelEstimatesStringFormatter);

  return timeZone;
}

- (void)setArrivalTimeZone:(id)zone
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, zone);
  travelEstimatesStringFormatter = [(CPSRouteEstimatesView *)selfCopy travelEstimatesStringFormatter];
  arrivalTimeFormatter = [(CPSTravelEstimatesStringFormatter *)travelEstimatesStringFormatter arrivalTimeFormatter];
  [(NSDateFormatter *)arrivalTimeFormatter setTimeZone:location[0]];
  MEMORY[0x277D82BD8](arrivalTimeFormatter);
  MEMORY[0x277D82BD8](travelEstimatesStringFormatter);
  objc_storeStrong(location, 0);
}

- (void)setTimeRemainingColor:(unint64_t)color
{
  if (color != self->_timeRemainingColor)
  {
    self->_timeRemainingColor = color;
    [(CPSRouteEstimatesView *)self _updateTextColors];
  }
}

- (void)setCurrentTravelEstimates:(id)estimates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  travelEstimatesStringFormatter = [(CPSRouteEstimatesView *)selfCopy travelEstimatesStringFormatter];
  v29 = [(CPSTravelEstimatesStringFormatter *)travelEstimatesStringFormatter generateTravelEstimatesStringsForTravelEstimates:location[0]];
  *&v3 = MEMORY[0x277D82BD8](travelEstimatesStringFormatter).n128_u64[0];
  arrivalTimeView = [(CPSRouteEstimatesView *)selfCopy arrivalTimeView];
  valueText = [(CPSLabeledValueView *)arrivalTimeView valueText];
  arrivalTimeString = [v29 arrivalTimeString];
  [(UILabel *)valueText setText:?];
  MEMORY[0x277D82BD8](arrivalTimeString);
  MEMORY[0x277D82BD8](valueText);
  *&v4 = MEMORY[0x277D82BD8](arrivalTimeView).n128_u64[0];
  arrivalTimeView2 = [(CPSRouteEstimatesView *)selfCopy arrivalTimeView];
  label = [(CPSLabeledValueView *)arrivalTimeView2 label];
  localizedArrivalString = [v29 localizedArrivalString];
  [(UILabel *)label setText:?];
  MEMORY[0x277D82BD8](localizedArrivalString);
  MEMORY[0x277D82BD8](label);
  *&v5 = MEMORY[0x277D82BD8](arrivalTimeView2).n128_u64[0];
  timeRemainingView = [(CPSRouteEstimatesView *)selfCopy timeRemainingView];
  valueText2 = [(CPSLabeledValueView *)timeRemainingView valueText];
  timeRemainingString = [v29 timeRemainingString];
  [(UILabel *)valueText2 setText:?];
  MEMORY[0x277D82BD8](timeRemainingString);
  MEMORY[0x277D82BD8](valueText2);
  *&v6 = MEMORY[0x277D82BD8](timeRemainingView).n128_u64[0];
  timeRemainingView2 = [(CPSRouteEstimatesView *)selfCopy timeRemainingView];
  label2 = [(CPSLabeledValueView *)timeRemainingView2 label];
  localizedTimeRemainingUnit = [v29 localizedTimeRemainingUnit];
  [(UILabel *)label2 setText:?];
  MEMORY[0x277D82BD8](localizedTimeRemainingUnit);
  MEMORY[0x277D82BD8](label2);
  *&v7 = MEMORY[0x277D82BD8](timeRemainingView2).n128_u64[0];
  distanceRemainingView = [(CPSRouteEstimatesView *)selfCopy distanceRemainingView];
  valueText3 = [(CPSLabeledValueView *)distanceRemainingView valueText];
  distanceRemainingString = [v29 distanceRemainingString];
  [(UILabel *)valueText3 setText:?];
  MEMORY[0x277D82BD8](distanceRemainingString);
  MEMORY[0x277D82BD8](valueText3);
  *&v8 = MEMORY[0x277D82BD8](distanceRemainingView).n128_u64[0];
  distanceRemainingView2 = [(CPSRouteEstimatesView *)selfCopy distanceRemainingView];
  label3 = [(CPSLabeledValueView *)distanceRemainingView2 label];
  localizedDistanceRemainingUnit = [v29 localizedDistanceRemainingUnit];
  [(UILabel *)label3 setText:?];
  MEMORY[0x277D82BD8](localizedDistanceRemainingUnit);
  MEMORY[0x277D82BD8](label3);
  *&v9 = MEMORY[0x277D82BD8](distanceRemainingView2).n128_u64[0];
  -[CPSRouteEstimatesView setTimeRemainingColor:](selfCopy, "setTimeRemainingColor:", [location[0] timeRemainingColor]);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

@end