@interface CPSTripPreviewsCardView
- (CPRouteChoice)selectedRouteChoice;
- (CPSTripInitiating)tripDelegate;
- (CPSTripPreviewsCardView)initWithTripDelegate:(id)delegate trips:(id)trips textConfiguration:(id)configuration;
- (CPTrip)selectedTrip;
- (id)_goPressedAndFocusedBackground;
- (id)_goPressedBackground;
- (id)_goPressedLabel;
- (void)_updateButtonColors;
- (void)notifyDidSelectRouteChoice:(id)choice;
- (void)setSelectedRouteChoice:(id)choice;
- (void)setSelectedTrip:(id)trip;
- (void)setupGoButton;
- (void)startTripButtonPressed:(id)pressed;
- (void)updateEstimates:(id)estimates forTripIdentifier:(id)identifier;
@end

@implementation CPSTripPreviewsCardView

- (CPSTripPreviewsCardView)initWithTripDelegate:(id)delegate trips:(id)trips textConfiguration:(id)configuration
{
  v57[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v52 = 0;
  objc_storeStrong(&v52, trips);
  v51 = 0;
  objc_storeStrong(&v51, configuration);
  v5 = selfCopy;
  selfCopy = 0;
  v50.receiver = v5;
  v50.super_class = CPSTripPreviewsCardView;
  selfCopy = [(CPSTripPreviewsCardView *)&v50 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_tripDelegate, location[0]);
    objc_storeStrong(&selfCopy->_trips, v52);
    objc_storeStrong(&selfCopy->_textConfiguration, v51);
    [(CPSTripPreviewsCardView *)selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
    backgroundPlatterView = selfCopy->_backgroundPlatterView;
    selfCopy->_backgroundPlatterView = v6;
    *&v8 = MEMORY[0x277D82BD8](backgroundPlatterView).n128_u64[0];
    [(UIView *)selfCopy->_backgroundPlatterView setTranslatesAutoresizingMaskIntoConstraints:0, v8];
    [(CPSTripPreviewsCardView *)selfCopy addSubview:selfCopy->_backgroundPlatterView];
    v15 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIView *)selfCopy->_backgroundPlatterView leadingAnchor];
    leadingAnchor2 = [(CPSTripPreviewsCardView *)selfCopy leadingAnchor];
    v26 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:?];
    v57[0] = v26;
    topAnchor = [(UIView *)selfCopy->_backgroundPlatterView topAnchor];
    topAnchor2 = [(CPSTripPreviewsCardView *)selfCopy topAnchor];
    v23 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:?];
    v57[1] = v23;
    trailingAnchor = [(UIView *)selfCopy->_backgroundPlatterView trailingAnchor];
    trailingAnchor2 = [(CPSTripPreviewsCardView *)selfCopy trailingAnchor];
    v20 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:?];
    v57[2] = v20;
    bottomAnchor = [(UIView *)selfCopy->_backgroundPlatterView bottomAnchor];
    bottomAnchor2 = [(CPSTripPreviewsCardView *)selfCopy bottomAnchor];
    v17 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:?];
    v57[3] = v17;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:?];
    [v15 activateConstraints:?];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    v9 = objc_alloc(MEMORY[0x277D75D18]);
    v49 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v49 setClipsToBounds:0];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v49 setBackgroundColor:?];
    *&v10 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
    [(UIView *)selfCopy->_backgroundPlatterView addSubview:v49, v10];
    objc_storeStrong(&selfCopy->_containerView, v49);
    v30 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [v49 leadingAnchor];
    leadingAnchor4 = [(UIView *)selfCopy->_backgroundPlatterView leadingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:? constant:?];
    v56[0] = v41;
    topAnchor3 = [v49 topAnchor];
    topAnchor4 = [(UIView *)selfCopy->_backgroundPlatterView topAnchor];
    v38 = [topAnchor3 constraintEqualToAnchor:10.0 constant:?];
    v56[1] = v38;
    trailingAnchor3 = [v49 trailingAnchor];
    trailingAnchor4 = [(UIView *)selfCopy->_backgroundPlatterView trailingAnchor];
    v35 = [trailingAnchor3 constraintEqualToAnchor:? constant:?];
    v56[2] = v35;
    bottomAnchor3 = [v49 bottomAnchor];
    bottomAnchor4 = [(UIView *)selfCopy->_backgroundPlatterView bottomAnchor];
    v32 = [bottomAnchor3 constraintEqualToAnchor:-10.0 constant:?];
    v56[3] = v32;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
    [v30 activateConstraints:?];
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](leadingAnchor4);
    *&v11 = MEMORY[0x277D82BD8](leadingAnchor3).n128_u64[0];
    [v49 setClipsToBounds:{1, v11}];
    v44 = selfCopy;
    v46 = objc_opt_self();
    v55 = v46;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    v12 = [CPSTripPreviewsCardView registerForTraitChanges:v44 withAction:"registerForTraitChanges:withAction:"];
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    objc_storeStrong(&v49, 0);
  }

  v14 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v14;
}

- (void)_updateButtonColors
{
  goButton = [(CPSTripPreviewsCardView *)self goButton];
  _goNormalBackground = [(CPSTripPreviewsCardView *)self _goNormalBackground];
  [UIButton cps_setBackgroundColor:goButton forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](_goNormalBackground);
  goButton2 = [(CPSTripPreviewsCardView *)self goButton];
  _goFocusedBackground = [(CPSTripPreviewsCardView *)self _goFocusedBackground];
  [UIButton cps_setBackgroundColor:goButton2 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](_goFocusedBackground);
  goButton3 = [(CPSTripPreviewsCardView *)self goButton];
  _goPressedBackground = [(CPSTripPreviewsCardView *)self _goPressedBackground];
  [UIButton cps_setBackgroundColor:goButton3 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](_goPressedBackground);
  goButton4 = [(CPSTripPreviewsCardView *)self goButton];
  _goPressedAndFocusedBackground = [(CPSTripPreviewsCardView *)self _goPressedAndFocusedBackground];
  [UIButton cps_setBackgroundColor:goButton4 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](_goPressedAndFocusedBackground);
  MEMORY[0x277D82BD8](goButton4);
}

- (void)setupGoButton
{
  v48[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v39[1] = a2;
  v39[0] = [MEMORY[0x277D75220] buttonWithType:0];
  [v39[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v2) = 1148846080;
  [v39[0] setContentHuggingPriority:1 forAxis:v2];
  startButtonTitle = [(CPTripPreviewTextConfiguration *)selfCopy->_textConfiguration startButtonTitle];
  v36 = 0;
  if (startButtonTitle)
  {
    v3 = MEMORY[0x277D82BE0](startButtonTitle);
  }

  else
  {
    v37 = CPSLocalizedStringForKey(@"GO");
    v36 = 1;
    v3 = MEMORY[0x277D82BE0](v37);
  }

  v38 = v3;
  if (v36)
  {
    MEMORY[0x277D82BD8](v37);
  }

  MEMORY[0x277D82BD8](startButtonTitle);
  v35 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
  v11 = objc_alloc(MEMORY[0x277CCA898]);
  v10 = v38;
  v22 = MEMORY[0x277D740A8];
  v47[0] = *MEMORY[0x277D740A8];
  v48[0] = v35;
  v23 = MEMORY[0x277D740C0];
  v47[1] = *MEMORY[0x277D740C0];
  _goNormalLabel = [(CPSTripPreviewsCardView *)selfCopy _goNormalLabel];
  v48[1] = _goNormalLabel;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:?];
  v34 = [v11 initWithString:v10 attributes:?];
  MEMORY[0x277D82BD8](v12);
  *&v4 = MEMORY[0x277D82BD8](_goNormalLabel).n128_u64[0];
  [v39[0] setAttributedTitle:v34 forState:{0, v4}];
  v15 = objc_alloc(MEMORY[0x277CCA898]);
  v14 = v38;
  v45[0] = *v22;
  v46[0] = v35;
  v45[1] = *v23;
  _goFocusedLabel = [(CPSTripPreviewsCardView *)selfCopy _goFocusedLabel];
  v46[1] = _goFocusedLabel;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v33 = [v15 initWithString:v14 attributes:?];
  MEMORY[0x277D82BD8](v16);
  *&v5 = MEMORY[0x277D82BD8](_goFocusedLabel).n128_u64[0];
  [v39[0] setAttributedTitle:v33 forState:{8, v5}];
  v19 = objc_alloc(MEMORY[0x277CCA898]);
  v18 = v38;
  v43[0] = *v22;
  v44[0] = v35;
  v43[1] = *v23;
  _goPressedLabel = [(CPSTripPreviewsCardView *)selfCopy _goPressedLabel];
  v44[1] = _goPressedLabel;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v32 = [v19 initWithString:v18 attributes:?];
  MEMORY[0x277D82BD8](v20);
  *&v6 = MEMORY[0x277D82BD8](_goPressedLabel).n128_u64[0];
  [v39[0] setAttributedTitle:v32 forState:{1, v6}];
  v25 = objc_alloc(MEMORY[0x277CCA898]);
  v24 = v38;
  v41[0] = *v22;
  v42[0] = v35;
  v41[1] = *v23;
  _goPressedAndFocusedLabel = [(CPSTripPreviewsCardView *)selfCopy _goPressedAndFocusedLabel];
  v42[1] = _goPressedAndFocusedLabel;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v31 = [v25 initWithString:v24 attributes:?];
  MEMORY[0x277D82BD8](v26);
  *&v7 = MEMORY[0x277D82BD8](_goPressedAndFocusedLabel).n128_u64[0];
  [v39[0] setAttributedTitle:v31 forState:{9, v7}];
  [v39[0] addTarget:selfCopy action:sel_startTripButtonPressed_ forControlEvents:0x2000];
  layer = [v39[0] layer];
  [layer setCornerRadius:18.0];
  *&v8 = MEMORY[0x277D82BD8](layer).n128_u64[0];
  layer2 = [v39[0] layer];
  [layer2 setCornerCurve:*MEMORY[0x277CDA138]];
  *&v9 = MEMORY[0x277D82BD8](layer2).n128_u64[0];
  [v39[0] setClipsToBounds:{1, v9}];
  objc_storeStrong(&selfCopy->_goButton, v39[0]);
  [(CPSTripPreviewsCardView *)selfCopy _updateButtonColors];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(v39, 0);
}

- (void)setSelectedTrip:(id)trip
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, trip);
  objc_storeWeak(&selfCopy->_selectedTrip, location[0]);
  routeChoices = [location[0] routeChoices];
  v3 = selfCopy;
  firstObject = [routeChoices firstObject];
  [(CPSTripPreviewsCardView *)v3 setSelectedRouteChoice:?];
  MEMORY[0x277D82BD8](firstObject);
  objc_storeStrong(&routeChoices, 0);
  objc_storeStrong(location, 0);
}

- (void)setSelectedRouteChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  objc_storeWeak(&selfCopy->_selectedRouteChoice, location[0]);
  [(CPSTripPreviewsCardView *)selfCopy notifyDidSelectRouteChoice:location[0]];
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)estimates forTripIdentifier:(id)identifier
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  v5 = 0;
  objc_storeStrong(&v5, identifier);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)startTripButtonPressed:(id)pressed
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  selectedTrip = [(CPSTripPreviewsCardView *)selfCopy selectedTrip];
  selectedRouteChoice = [(CPSTripPreviewsCardView *)selfCopy selectedRouteChoice];
  oslog = CarPlaySupportGeneralLogging();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v10, selectedTrip, selectedRouteChoice);
    _os_log_impl(&dword_242FE8000, oslog, type, "start selected trip: %@ route: %@", v10, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  tripDelegate = [(CPSTripPreviewsCardView *)selfCopy tripDelegate];
  if (objc_opt_respondsToSelector())
  {
    [tripDelegate tripView:selfCopy startedTrip:selectedTrip routeChoice:selectedRouteChoice];
  }

  objc_storeStrong(&tripDelegate, 0);
  objc_storeStrong(&selectedRouteChoice, 0);
  objc_storeStrong(&selectedTrip, 0);
  objc_storeStrong(location, 0);
}

- (void)notifyDidSelectRouteChoice:(id)choice
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  v7 = CarPlaySupportGeneralLogging();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v10, location[0]);
    _os_log_impl(&dword_242FE8000, v7, v6, "route selected: %@", v10, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  tripDelegate = [(CPSTripPreviewsCardView *)selfCopy tripDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = selfCopy;
    selectedTrip = [(CPSTripPreviewsCardView *)selfCopy selectedTrip];
    [tripDelegate tripView:v3 selectedTrip:? routeChoice:?];
    MEMORY[0x277D82BD8](selectedTrip);
  }

  objc_storeStrong(&tripDelegate, 0);
  objc_storeStrong(location, 0);
}

id __42__CPSTripPreviewsCardView__goFocusedLabel__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([location[0] userInterfaceStyle] == 2)
  {
    v5 = [MEMORY[0x277D75348] systemBlackColor];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] systemWhiteColor];
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

- (id)_goPressedLabel
{
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  v4 = [systemWhiteColor colorWithAlphaComponent:0.5];
  MEMORY[0x277D82BD8](systemWhiteColor);

  return v4;
}

id __52__CPSTripPreviewsCardView__goPressedAndFocusedLabel__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([location[0] userInterfaceStyle] == 2)
  {
    v5 = [MEMORY[0x277D75348] systemBlackColor];
    v7 = [v5 colorWithAlphaComponent:0.5];
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v4 = [MEMORY[0x277D75348] systemWhiteColor];
    v7 = [v4 colorWithAlphaComponent:0.5];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
  v2 = v7;

  return v2;
}

- (id)_goPressedBackground
{
  _greenColor = [(CPSTripPreviewsCardView *)self _greenColor];
  v4 = [_greenColor colorWithAlphaComponent:0.5];
  MEMORY[0x277D82BD8](_greenColor);

  return v4;
}

- (id)_goPressedAndFocusedBackground
{
  _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
  v4 = [_carSystemFocusColor colorWithAlphaComponent:0.5];
  MEMORY[0x277D82BD8](_carSystemFocusColor);

  return v4;
}

- (CPTrip)selectedTrip
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedTrip);

  return WeakRetained;
}

- (CPRouteChoice)selectedRouteChoice
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedRouteChoice);

  return WeakRetained;
}

- (CPSTripInitiating)tripDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tripDelegate);

  return WeakRetained;
}

@end