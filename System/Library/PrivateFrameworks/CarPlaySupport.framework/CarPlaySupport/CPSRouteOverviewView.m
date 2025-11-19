@interface CPSRouteOverviewView
+ (id)_multilineLabel;
+ (id)_nameForMapItem:(id)a3;
+ (id)_shortenedAddressForAddress:(id)a3;
+ (void)_applySemiBoldText:(id)a3 fontSize:(double)a4 color:(id)a5 toLabel:(id)a6;
+ (void)_applyText:(id)a3 fontSize:(double)a4 color:(id)a5 toLabel:(id)a6;
- (CPSRouteOverviewView)initWithFrame:(CGRect)a3;
- (void)_updateTripEstimateStyle;
- (void)label:(id)a3 hidden:(BOOL)a4;
- (void)setCurrentTravelEstimates:(id)a3;
- (void)setRepresentedTrip:(id)a3;
- (void)setRouteNote:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSRouteOverviewView

+ (id)_multilineLabel
{
  v4[2] = a1;
  v4[1] = a2;
  v4[0] = objc_alloc_init(MEMORY[0x277D756B8]);
  [v4[0] setNumberOfLines:0];
  [v4[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

+ (void)_applySemiBoldText:(id)a3 fontSize:(double)a4 color:(id)a5 toLabel:(id)a6
{
  v20[2] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = 0;
  objc_storeStrong(&v15, a6);
  if (location[0])
  {
    v8 = objc_alloc(MEMORY[0x277CCA898]);
    v7 = location[0];
    v19[0] = *MEMORY[0x277D740A8];
    v10 = [MEMORY[0x277D74300] systemFontOfSize:v17 weight:*MEMORY[0x277D74420]];
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

+ (void)_applyText:(id)a3 fontSize:(double)a4 color:(id)a5 toLabel:(id)a6
{
  v20[2] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = a4;
  v16 = 0;
  objc_storeStrong(&v16, a5);
  v15 = 0;
  objc_storeStrong(&v15, a6);
  if (location[0])
  {
    v8 = objc_alloc(MEMORY[0x277CCA898]);
    v7 = location[0];
    v19[0] = *MEMORY[0x277D740A8];
    v10 = [MEMORY[0x277D74300] systemFontOfSize:v17];
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

+ (id)_shortenedAddressForAddress:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

+ (id)_nameForMapItem:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] name];
  *&v3 = MEMORY[0x277D82BD8](0).n128_u64[0];
  if (!v7)
  {
    v6 = [location[0] placemark];
    v7 = [v6 name];
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](v6);
  }

  v5 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

- (CPSRouteOverviewView)initWithFrame:(CGRect)a3
{
  v58[13] = *MEMORY[0x277D85DE8];
  v57 = a3;
  v55 = a2;
  v56 = 0;
  v54.receiver = self;
  v54.super_class = CPSRouteOverviewView;
  v56 = [(CPSRouteOverviewView *)&v54 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v56, v56);
  if (v56)
  {
    [(CPSRouteOverviewView *)v56 setTranslatesAutoresizingMaskIntoConstraints:0];
    v53 = [objc_opt_class() _multilineLabel];
    [(CPSRouteOverviewView *)v56 addSubview:v53];
    [v53 setContentCompressionResistancePriority:? forAxis:?];
    objc_storeStrong(&v56->_destinationName, v53);
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
    v49 = [v53 leadingAnchor];
    v48 = [(CPSRouteOverviewView *)v56 leadingAnchor];
    v47 = [v49 constraintEqualToAnchor:? constant:?];
    v58[0] = v47;
    v46 = [(CPSRouteOverviewView *)v56 trailingAnchor];
    v45 = [v53 trailingAnchor];
    v44 = [v46 constraintEqualToAnchor:6.0 constant:?];
    v58[1] = v44;
    v43 = [(CPSHidingLabel *)v52 leadingAnchor];
    v42 = [(CPSRouteOverviewView *)v56 leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:6.0 constant:?];
    v58[2] = v41;
    v40 = [(CPSRouteOverviewView *)v56 trailingAnchor];
    v39 = [(CPSHidingLabel *)v52 trailingAnchor];
    v38 = [v40 constraintEqualToAnchor:6.0 constant:?];
    v58[3] = v38;
    v37 = [(CPSHidingLabel *)v51 leadingAnchor];
    v36 = [(CPSRouteOverviewView *)v56 leadingAnchor];
    v35 = [v37 constraintEqualToAnchor:6.0 constant:?];
    v58[4] = v35;
    v34 = [(CPSRouteOverviewView *)v56 trailingAnchor];
    v33 = [(CPSHidingLabel *)v51 trailingAnchor];
    v32 = [v34 constraintEqualToAnchor:6.0 constant:?];
    v58[5] = v32;
    v31 = [(CPSRouteEstimatesView *)v50 leadingAnchor];
    v30 = [(CPSRouteOverviewView *)v56 leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:?];
    v58[6] = v29;
    v28 = [(CPSRouteOverviewView *)v56 trailingAnchor];
    v27 = [(CPSRouteEstimatesView *)v50 trailingAnchor];
    v26 = [v28 constraintEqualToAnchor:?];
    v58[7] = v26;
    v25 = [v53 topAnchor];
    v24 = [(CPSRouteOverviewView *)v56 topAnchor];
    v23 = [v25 constraintEqualToAnchor:?];
    v58[8] = v23;
    v22 = [(CPSHidingLabel *)v52 topAnchor];
    v21 = [v53 bottomAnchor];
    v20 = [v22 constraintEqualToAnchor:? constant:?];
    v58[9] = v20;
    v19 = [(CPSHidingLabel *)v51 topAnchor];
    v18 = [(CPSHidingLabel *)v52 bottomAnchor];
    v17 = [v19 constraintEqualToAnchor:2.0 constant:?];
    v58[10] = v17;
    v16 = [(CPSRouteEstimatesView *)v50 topAnchor];
    v15 = [(CPSHidingLabel *)v51 bottomAnchor];
    v14 = [v16 constraintGreaterThanOrEqualToAnchor:?];
    v58[11] = v14;
    v13 = [(CPSRouteOverviewView *)v56 bottomAnchor];
    v12 = [(CPSRouteEstimatesView *)v50 bottomAnchor];
    v11 = [v13 constraintEqualToAnchor:?];
    v58[12] = v11;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:13];
    [v9 activateConstraints:?];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
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
    objc_storeStrong(&v50, 0);
    objc_storeStrong(&v51, 0);
    objc_storeStrong(&v52, 0);
    objc_storeStrong(&v53, 0);
  }

  v8 = MEMORY[0x277D82BE0](v56);
  objc_storeStrong(&v56, 0);
  return v8;
}

- (void)label:(id)a3 hidden:(BOOL)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  if (([(CPSHidingLabel *)v7->_destinationAddress isHidden]& 1) != 0)
  {
    v5 = [(CPSHidingLabel *)v7->_routeNoteLabel isHidden];
  }

  if (v5)
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  [(UILabel *)v7->_destinationName setTextAlignment:v4];
  objc_storeStrong(location, 0);
}

- (void)_updateTripEstimateStyle
{
  v5 = [(CPSRouteOverviewView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  *&v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6 == 1)
  {
    v4 = [(CPSRouteOverviewView *)self estimatesView];
    [(CPSRouteEstimatesView *)v4 setTripEstimateStyle:0];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v3 = [(CPSRouteOverviewView *)self estimatesView];
    [(CPSRouteEstimatesView *)v3 setTripEstimateStyle:1];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSRouteOverviewView;
  [(CPSRouteOverviewView *)&v3 traitCollectionDidChange:location[0]];
  [(CPSRouteOverviewView *)v5 _updateTripEstimateStyle];
  objc_storeStrong(location, 0);
}

- (void)setRepresentedTrip:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v20->_representedTrip, location[0]);
  v18 = [location[0] destination];
  v17 = [objc_opt_class() _nameForMapItem:v18];
  v5 = objc_opt_class();
  v4 = v17;
  v7 = [MEMORY[0x277D75348] labelColor];
  v6 = [(CPSRouteOverviewView *)v20 destinationName];
  [v5 _applySemiBoldText:v4 fontSize:v7 color:16.0 toLabel:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v8 = objc_opt_class();
  v10 = [v18 placemark];
  v9 = [v10 postalAddress];
  v16 = [v8 _shortenedAddressForAddress:?];
  MEMORY[0x277D82BD8](v9);
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v15 = [MEMORY[0x277CBDB80] stringFromPostalAddress:v16 style:{0, v3}];
  v12 = objc_opt_class();
  v11 = v15;
  v14 = [MEMORY[0x277D75348] _carSystemSecondaryColor];
  v13 = [(CPSRouteOverviewView *)v20 destinationAddress];
  [v12 _applyText:v11 fontSize:v14 color:12.0 toLabel:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

- (void)setRouteNote:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v17->_routeNote, location[0]);
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
    v12 = [MEMORY[0x277D75348] labelColor];
    v11 = 1;
    v19[1] = v12;
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
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  v4 = [(CPSRouteOverviewView *)v17 routeNoteLabel];
  [(CPSHidingLabel *)v4 setAttributedText:v15];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)setCurrentTravelEstimates:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v10->_currentTravelEstimates, location[0]);
  v7 = [(CPSRouteOverviewView *)v10 representedTrip];
  v6 = [(CPTrip *)v7 destination];
  v8 = [(MKMapItem *)v6 timeZone];
  MEMORY[0x277D82BD8](v6);
  v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v5 = [(CPSRouteOverviewView *)v10 estimatesView];
    [(CPSRouteEstimatesView *)v5 setArrivalTimeZone:v8];
    v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  v4 = [(CPSRouteOverviewView *)v10 estimatesView];
  [(CPSRouteEstimatesView *)v4 setCurrentTravelEstimates:location[0]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

@end