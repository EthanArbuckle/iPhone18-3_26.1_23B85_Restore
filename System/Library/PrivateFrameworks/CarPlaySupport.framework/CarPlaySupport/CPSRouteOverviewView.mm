@interface CPSRouteOverviewView
+ (id)_multilineLabel;
+ (id)_nameForMapItem:(id)item;
+ (id)_shortenedAddressForAddress:(id)address;
+ (void)_applySemiBoldText:(id)text fontSize:(double)size color:(id)color toLabel:(id)label;
+ (void)_applyText:(id)text fontSize:(double)size color:(id)color toLabel:(id)label;
- (CPSRouteOverviewView)initWithFrame:(CGRect)frame;
- (void)_updateTripEstimateStyle;
- (void)label:(id)label hidden:(BOOL)hidden;
- (void)setCurrentTravelEstimates:(id)estimates;
- (void)setRepresentedTrip:(id)trip;
- (void)setRouteNote:(id)note;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSRouteOverviewView

+ (id)_multilineLabel
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(MEMORY[0x277D756B8]);
  [v4[0] setNumberOfLines:0];
  [v4[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

+ (void)_applySemiBoldText:(id)text fontSize:(double)size color:(id)color toLabel:(id)label
{
  v20[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  sizeCopy = size;
  v16 = 0;
  objc_storeStrong(&v16, color);
  v15 = 0;
  objc_storeStrong(&v15, label);
  if (location[0])
  {
    v8 = objc_alloc(MEMORY[0x277CCA898]);
    v7 = location[0];
    v19[0] = *MEMORY[0x277D740A8];
    v10 = [MEMORY[0x277D74300] systemFontOfSize:sizeCopy weight:*MEMORY[0x277D74420]];
    v20[0] = v10;
    v19[1] = *MEMORY[0x277D740C0];
    v20[1] = v16;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v14 = [v8 initWithString:v7 attributes:?];
    MEMORY[0x277D82BD8](v9);
    *&v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    [v15 setAttributedText:{v14, v6}];
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

+ (void)_applyText:(id)text fontSize:(double)size color:(id)color toLabel:(id)label
{
  v20[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  sizeCopy = size;
  v16 = 0;
  objc_storeStrong(&v16, color);
  v15 = 0;
  objc_storeStrong(&v15, label);
  if (location[0])
  {
    v8 = objc_alloc(MEMORY[0x277CCA898]);
    v7 = location[0];
    v19[0] = *MEMORY[0x277D740A8];
    v10 = [MEMORY[0x277D74300] systemFontOfSize:sizeCopy];
    v20[0] = v10;
    v19[1] = *MEMORY[0x277D740C0];
    v20[1] = v16;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v14 = [v8 initWithString:v7 attributes:?];
    MEMORY[0x277D82BD8](v9);
    *&v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    [v15 setAttributedText:{v14, v6}];
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

+ (id)_shortenedAddressForAddress:(id)address
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, address);
  v5 = [location[0] mutableCopy];
  [v5 setSubAdministrativeArea:?];
  [v5 setState:&stru_2855A5FC8];
  [v5 setPostalCode:&stru_2855A5FC8];
  [v5 setCountry:&stru_2855A5FC8];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)_nameForMapItem:(id)item
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  name = [location[0] name];
  *&v3 = MEMORY[0x277D82BD8](0).n128_u64[0];
  if (!name)
  {
    placemark = [location[0] placemark];
    name = [placemark name];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](placemark);
  }

  v5 = MEMORY[0x277D82BE0](name);
  objc_storeStrong(&name, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (CPSRouteOverviewView)initWithFrame:(CGRect)frame
{
  v58[13] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v55 = a2;
  v56 = 0;
  v54.receiver = self;
  v54.super_class = CPSRouteOverviewView;
  v56 = [(CPSRouteOverviewView *)&v54 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v56, v56);
  if (v56)
  {
    [(CPSRouteOverviewView *)v56 setTranslatesAutoresizingMaskIntoConstraints:0];
    _multilineLabel = [objc_opt_class() _multilineLabel];
    [(CPSRouteOverviewView *)v56 addSubview:_multilineLabel];
    [_multilineLabel setContentCompressionResistancePriority:? forAxis:?];
    objc_storeStrong(&v56->_destinationName, _multilineLabel);
    v52 = objc_alloc_init(CPSHidingLabel);
    [(CPSHidingLabel *)v52 setNumberOfLines:?];
    [(CPSHidingLabel *)v52 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v3) = 1132134400;
    [(CPSHidingLabel *)v52 setContentCompressionResistancePriority:1 forAxis:v3];
    [(CPSRouteOverviewView *)v56 addSubview:v52];
    objc_storeStrong(&v56->_destinationAddress, v52);
    [(CPSHidingLabel *)v56->_destinationAddress setHidingLabelDelegate:v56];
    v51 = objc_alloc_init(CPSHidingLabel);
    [(CPSHidingLabel *)v51 setNumberOfLines:0];
    [(CPSHidingLabel *)v51 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v4) = 1132068864;
    [(CPSHidingLabel *)v51 setContentCompressionResistancePriority:1 forAxis:v4];
    [(CPSRouteOverviewView *)v56 addSubview:v51];
    objc_storeStrong(&v56->_routeNoteLabel, v51);
    [(CPSHidingLabel *)v56->_routeNoteLabel setHidingLabelDelegate:v56];
    v5 = [[CPSRouteEstimatesView alloc] initWithStyle:1];
    LODWORD(v6) = 1148846080;
    v50 = v5;
    [(CPSRouteEstimatesView *)v5 setContentCompressionResistancePriority:1 forAxis:v6];
    [(CPSRouteOverviewView *)v56 addSubview:v50];
    objc_storeStrong(&v56->_estimatesView, v50);
    [(CPSRouteOverviewView *)v56 _updateTripEstimateStyle];
    v9 = MEMORY[0x277CCAAD0];
    leadingAnchor = [_multilineLabel leadingAnchor];
    leadingAnchor2 = [(CPSRouteOverviewView *)v56 leadingAnchor];
    v47 = [leadingAnchor constraintEqualToAnchor:? constant:?];
    v58[0] = v47;
    trailingAnchor = [(CPSRouteOverviewView *)v56 trailingAnchor];
    trailingAnchor2 = [_multilineLabel trailingAnchor];
    v44 = [trailingAnchor constraintEqualToAnchor:6.0 constant:?];
    v58[1] = v44;
    leadingAnchor3 = [(CPSHidingLabel *)v52 leadingAnchor];
    leadingAnchor4 = [(CPSRouteOverviewView *)v56 leadingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:6.0 constant:?];
    v58[2] = v41;
    trailingAnchor3 = [(CPSRouteOverviewView *)v56 trailingAnchor];
    trailingAnchor4 = [(CPSHidingLabel *)v52 trailingAnchor];
    v38 = [trailingAnchor3 constraintEqualToAnchor:6.0 constant:?];
    v58[3] = v38;
    leadingAnchor5 = [(CPSHidingLabel *)v51 leadingAnchor];
    leadingAnchor6 = [(CPSRouteOverviewView *)v56 leadingAnchor];
    v35 = [leadingAnchor5 constraintEqualToAnchor:6.0 constant:?];
    v58[4] = v35;
    trailingAnchor5 = [(CPSRouteOverviewView *)v56 trailingAnchor];
    trailingAnchor6 = [(CPSHidingLabel *)v51 trailingAnchor];
    v32 = [trailingAnchor5 constraintEqualToAnchor:6.0 constant:?];
    v58[5] = v32;
    leadingAnchor7 = [(CPSRouteEstimatesView *)v50 leadingAnchor];
    leadingAnchor8 = [(CPSRouteOverviewView *)v56 leadingAnchor];
    v29 = [leadingAnchor7 constraintEqualToAnchor:?];
    v58[6] = v29;
    trailingAnchor7 = [(CPSRouteOverviewView *)v56 trailingAnchor];
    trailingAnchor8 = [(CPSRouteEstimatesView *)v50 trailingAnchor];
    v26 = [trailingAnchor7 constraintEqualToAnchor:?];
    v58[7] = v26;
    topAnchor = [_multilineLabel topAnchor];
    topAnchor2 = [(CPSRouteOverviewView *)v56 topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:?];
    v58[8] = v23;
    topAnchor3 = [(CPSHidingLabel *)v52 topAnchor];
    bottomAnchor = [_multilineLabel bottomAnchor];
    v20 = [topAnchor3 constraintEqualToAnchor:? constant:?];
    v58[9] = v20;
    topAnchor4 = [(CPSHidingLabel *)v51 topAnchor];
    bottomAnchor2 = [(CPSHidingLabel *)v52 bottomAnchor];
    v17 = [topAnchor4 constraintEqualToAnchor:2.0 constant:?];
    v58[10] = v17;
    topAnchor5 = [(CPSRouteEstimatesView *)v50 topAnchor];
    bottomAnchor3 = [(CPSHidingLabel *)v51 bottomAnchor];
    v14 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:?];
    v58[11] = v14;
    bottomAnchor4 = [(CPSRouteOverviewView *)v56 bottomAnchor];
    bottomAnchor5 = [(CPSRouteEstimatesView *)v50 bottomAnchor];
    v11 = [bottomAnchor4 constraintEqualToAnchor:?];
    v58[12] = v11;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:13];
    [v9 activateConstraints:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](bottomAnchor5);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](topAnchor5);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](trailingAnchor8);
    MEMORY[0x277D82BD8](trailingAnchor7);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](leadingAnchor8);
    MEMORY[0x277D82BD8](leadingAnchor7);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](trailingAnchor6);
    MEMORY[0x277D82BD8](trailingAnchor5);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](leadingAnchor6);
    MEMORY[0x277D82BD8](leadingAnchor5);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    objc_storeStrong(&v50, 0);
    objc_storeStrong(&v51, 0);
    objc_storeStrong(&v52, 0);
    objc_storeStrong(&_multilineLabel, 0);
  }

  v8 = MEMORY[0x277D82BE0](v56);
  objc_storeStrong(&v56, 0);
  return v8;
}

- (void)label:(id)label hidden:(BOOL)hidden
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, label);
  isHidden = 0;
  if (([(CPSHidingLabel *)selfCopy->_destinationAddress isHidden]& 1) != 0)
  {
    isHidden = [(CPSHidingLabel *)selfCopy->_routeNoteLabel isHidden];
  }

  if (isHidden)
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  [(UILabel *)selfCopy->_destinationName setTextAlignment:v4];
  objc_storeStrong(location, 0);
}

- (void)_updateTripEstimateStyle
{
  traitCollection = [(CPSRouteOverviewView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  *&v2 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
  if (userInterfaceStyle == 1)
  {
    estimatesView = [(CPSRouteOverviewView *)self estimatesView];
    [(CPSRouteEstimatesView *)estimatesView setTripEstimateStyle:0];
    MEMORY[0x277D82BD8](estimatesView);
  }

  else
  {
    estimatesView2 = [(CPSRouteOverviewView *)self estimatesView];
    [(CPSRouteEstimatesView *)estimatesView2 setTripEstimateStyle:1];
    MEMORY[0x277D82BD8](estimatesView2);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSRouteOverviewView;
  [(CPSRouteOverviewView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSRouteOverviewView *)selfCopy _updateTripEstimateStyle];
  objc_storeStrong(location, 0);
}

- (void)setRepresentedTrip:(id)trip
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, trip);
  objc_storeStrong(&selfCopy->_representedTrip, location[0]);
  destination = [location[0] destination];
  v17 = [objc_opt_class() _nameForMapItem:destination];
  v5 = objc_opt_class();
  v4 = v17;
  labelColor = [MEMORY[0x277D75348] labelColor];
  destinationName = [(CPSRouteOverviewView *)selfCopy destinationName];
  [v5 _applySemiBoldText:v4 fontSize:labelColor color:16.0 toLabel:?];
  MEMORY[0x277D82BD8](destinationName);
  MEMORY[0x277D82BD8](labelColor);
  v8 = objc_opt_class();
  placemark = [destination placemark];
  postalAddress = [placemark postalAddress];
  v16 = [v8 _shortenedAddressForAddress:?];
  MEMORY[0x277D82BD8](postalAddress);
  *&v3 = MEMORY[0x277D82BD8](placemark).n128_u64[0];
  v15 = [MEMORY[0x277CBDB80] stringFromPostalAddress:v16 style:{0, v3}];
  v12 = objc_opt_class();
  v11 = v15;
  _carSystemSecondaryColor = [MEMORY[0x277D75348] _carSystemSecondaryColor];
  destinationAddress = [(CPSRouteOverviewView *)selfCopy destinationAddress];
  [v12 _applyText:v11 fontSize:_carSystemSecondaryColor color:12.0 toLabel:?];
  MEMORY[0x277D82BD8](destinationAddress);
  MEMORY[0x277D82BD8](_carSystemSecondaryColor);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&destination, 0);
  objc_storeStrong(location, 0);
}

- (void)setRouteNote:(id)note
{
  v19[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, note);
  objc_storeStrong(&selfCopy->_routeNote, location[0]);
  v13 = 0;
  v11 = 0;
  v9 = 0;
  v7 = 0;
  if ([location[0] length])
  {
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v5 = location[0];
    v18[0] = *MEMORY[0x277D740A8];
    v14 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    v13 = 1;
    v19[0] = v14;
    v18[1] = *MEMORY[0x277D740C0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    v11 = 1;
    v19[1] = labelColor;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v9 = 1;
    v8 = [v6 initWithString:v5 attributes:?];
    v7 = 1;
    v3 = MEMORY[0x277D82BE0](v8);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](0);
  }

  v15 = v3;
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](labelColor);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  routeNoteLabel = [(CPSRouteOverviewView *)selfCopy routeNoteLabel];
  [(CPSHidingLabel *)routeNoteLabel setAttributedText:v15];
  MEMORY[0x277D82BD8](routeNoteLabel);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)setCurrentTravelEstimates:(id)estimates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  objc_storeStrong(&selfCopy->_currentTravelEstimates, location[0]);
  representedTrip = [(CPSRouteOverviewView *)selfCopy representedTrip];
  destination = [(CPTrip *)representedTrip destination];
  timeZone = [(MKMapItem *)destination timeZone];
  MEMORY[0x277D82BD8](destination);
  v3 = MEMORY[0x277D82BD8](representedTrip).n128_u64[0];
  if (timeZone)
  {
    estimatesView = [(CPSRouteOverviewView *)selfCopy estimatesView];
    [(CPSRouteEstimatesView *)estimatesView setArrivalTimeZone:timeZone];
    v3 = MEMORY[0x277D82BD8](estimatesView).n128_u64[0];
  }

  estimatesView2 = [(CPSRouteOverviewView *)selfCopy estimatesView];
  [(CPSRouteEstimatesView *)estimatesView2 setCurrentTravelEstimates:location[0]];
  MEMORY[0x277D82BD8](estimatesView2);
  objc_storeStrong(&timeZone, 0);
  objc_storeStrong(location, 0);
}

@end