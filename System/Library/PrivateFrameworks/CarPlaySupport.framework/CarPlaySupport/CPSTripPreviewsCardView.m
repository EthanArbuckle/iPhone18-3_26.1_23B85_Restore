@interface CPSTripPreviewsCardView
- (CPRouteChoice)selectedRouteChoice;
- (CPSTripInitiating)tripDelegate;
- (CPSTripPreviewsCardView)initWithTripDelegate:(id)a3 trips:(id)a4 textConfiguration:(id)a5;
- (CPTrip)selectedTrip;
- (id)_goPressedAndFocusedBackground;
- (id)_goPressedBackground;
- (id)_goPressedLabel;
- (void)_updateButtonColors;
- (void)notifyDidSelectRouteChoice:(id)a3;
- (void)setSelectedRouteChoice:(id)a3;
- (void)setSelectedTrip:(id)a3;
- (void)setupGoButton;
- (void)startTripButtonPressed:(id)a3;
- (void)updateEstimates:(id)a3 forTripIdentifier:(id)a4;
@end

@implementation CPSTripPreviewsCardView

- (CPSTripPreviewsCardView)initWithTripDelegate:(id)a3 trips:(id)a4 textConfiguration:(id)a5
{
  v57[4] = *MEMORY[0x277D85DE8];
  v54 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v52 = 0;
  objc_storeStrong(&v52, a4);
  v51 = 0;
  objc_storeStrong(&v51, a5);
  v5 = v54;
  v54 = 0;
  v50.receiver = v5;
  v50.super_class = CPSTripPreviewsCardView;
  v54 = [(CPSTripPreviewsCardView *)&v50 init];
  objc_storeStrong(&v54, v54);
  if (v54)
  {
    objc_storeWeak(&v54->_tripDelegate, location[0]);
    objc_storeStrong(&v54->_trips, v52);
    objc_storeStrong(&v54->_textConfiguration, v51);
    [(CPSTripPreviewsCardView *)v54 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
    backgroundPlatterView = v54->_backgroundPlatterView;
    v54->_backgroundPlatterView = v6;
    *&v8 = MEMORY[0x277D82BD8](backgroundPlatterView).n128_u64[0];
    [(UIView *)v54->_backgroundPlatterView setTranslatesAutoresizingMaskIntoConstraints:0, v8];
    [(CPSTripPreviewsCardView *)v54 addSubview:v54->_backgroundPlatterView];
    v15 = MEMORY[0x277CCAAD0];
    v28 = [(UIView *)v54->_backgroundPlatterView leadingAnchor];
    v27 = [(CPSTripPreviewsCardView *)v54 leadingAnchor];
    v26 = [(NSLayoutXAxisAnchor *)v28 constraintEqualToAnchor:?];
    v57[0] = v26;
    v25 = [(UIView *)v54->_backgroundPlatterView topAnchor];
    v24 = [(CPSTripPreviewsCardView *)v54 topAnchor];
    v23 = [(NSLayoutYAxisAnchor *)v25 constraintEqualToAnchor:?];
    v57[1] = v23;
    v22 = [(UIView *)v54->_backgroundPlatterView trailingAnchor];
    v21 = [(CPSTripPreviewsCardView *)v54 trailingAnchor];
    v20 = [(NSLayoutXAxisAnchor *)v22 constraintEqualToAnchor:?];
    v57[2] = v20;
    v19 = [(UIView *)v54->_backgroundPlatterView bottomAnchor];
    v18 = [(CPSTripPreviewsCardView *)v54 bottomAnchor];
    v17 = [(NSLayoutYAxisAnchor *)v19 constraintEqualToAnchor:?];
    v57[3] = v17;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:?];
    [v15 activateConstraints:?];
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
    v9 = objc_alloc(MEMORY[0x277D75D18]);
    v49 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v49 setClipsToBounds:0];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [MEMORY[0x277D75348] clearColor];
    [v49 setBackgroundColor:?];
    *&v10 = MEMORY[0x277D82BD8](v29).n128_u64[0];
    [(UIView *)v54->_backgroundPlatterView addSubview:v49, v10];
    objc_storeStrong(&v54->_containerView, v49);
    v30 = MEMORY[0x277CCAAD0];
    v43 = [v49 leadingAnchor];
    v42 = [(UIView *)v54->_backgroundPlatterView leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:? constant:?];
    v56[0] = v41;
    v40 = [v49 topAnchor];
    v39 = [(UIView *)v54->_backgroundPlatterView topAnchor];
    v38 = [v40 constraintEqualToAnchor:10.0 constant:?];
    v56[1] = v38;
    v37 = [v49 trailingAnchor];
    v36 = [(UIView *)v54->_backgroundPlatterView trailingAnchor];
    v35 = [v37 constraintEqualToAnchor:? constant:?];
    v56[2] = v35;
    v34 = [v49 bottomAnchor];
    v33 = [(UIView *)v54->_backgroundPlatterView bottomAnchor];
    v32 = [v34 constraintEqualToAnchor:-10.0 constant:?];
    v56[3] = v32;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
    [v30 activateConstraints:?];
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
    *&v11 = MEMORY[0x277D82BD8](v43).n128_u64[0];
    [v49 setClipsToBounds:{1, v11}];
    v44 = v54;
    v46 = objc_opt_self();
    v55 = v46;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    v12 = [CPSTripPreviewsCardView registerForTraitChanges:v44 withAction:"registerForTraitChanges:withAction:"];
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    objc_storeStrong(&v49, 0);
  }

  v14 = MEMORY[0x277D82BE0](v54);
  objc_storeStrong(&v51, 0);
  objc_storeStrong(&v52, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v54, 0);
  return v14;
}

- (void)_updateButtonColors
{
  v3 = [(CPSTripPreviewsCardView *)self goButton];
  v2 = [(CPSTripPreviewsCardView *)self _goNormalBackground];
  [UIButton cps_setBackgroundColor:v3 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](v2);
  v5 = [(CPSTripPreviewsCardView *)self goButton];
  v4 = [(CPSTripPreviewsCardView *)self _goFocusedBackground];
  [UIButton cps_setBackgroundColor:v5 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](v4);
  v7 = [(CPSTripPreviewsCardView *)self goButton];
  v6 = [(CPSTripPreviewsCardView *)self _goPressedBackground];
  [UIButton cps_setBackgroundColor:v7 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](v6);
  v9 = [(CPSTripPreviewsCardView *)self goButton];
  v8 = [(CPSTripPreviewsCardView *)self _goPressedAndFocusedBackground];
  [UIButton cps_setBackgroundColor:v9 forState:"cps_setBackgroundColor:forState:"];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
}

- (void)setupGoButton
{
  v48[2] = *MEMORY[0x277D85DE8];
  v40 = self;
  v39[1] = a2;
  v39[0] = [MEMORY[0x277D75220] buttonWithType:0];
  [v39[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v2) = 1148846080;
  [v39[0] setContentHuggingPriority:1 forAxis:v2];
  v30 = [(CPTripPreviewTextConfiguration *)v40->_textConfiguration startButtonTitle];
  v36 = 0;
  if (v30)
  {
    v3 = MEMORY[0x277D82BE0](v30);
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

  MEMORY[0x277D82BD8](v30);
  v35 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74420]];
  v11 = objc_alloc(MEMORY[0x277CCA898]);
  v10 = v38;
  v22 = MEMORY[0x277D740A8];
  v47[0] = *MEMORY[0x277D740A8];
  v48[0] = v35;
  v23 = MEMORY[0x277D740C0];
  v47[1] = *MEMORY[0x277D740C0];
  v13 = [(CPSTripPreviewsCardView *)v40 _goNormalLabel];
  v48[1] = v13;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:?];
  v34 = [v11 initWithString:v10 attributes:?];
  MEMORY[0x277D82BD8](v12);
  *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  [v39[0] setAttributedTitle:v34 forState:{0, v4}];
  v15 = objc_alloc(MEMORY[0x277CCA898]);
  v14 = v38;
  v45[0] = *v22;
  v46[0] = v35;
  v45[1] = *v23;
  v17 = [(CPSTripPreviewsCardView *)v40 _goFocusedLabel];
  v46[1] = v17;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v33 = [v15 initWithString:v14 attributes:?];
  MEMORY[0x277D82BD8](v16);
  *&v5 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  [v39[0] setAttributedTitle:v33 forState:{8, v5}];
  v19 = objc_alloc(MEMORY[0x277CCA898]);
  v18 = v38;
  v43[0] = *v22;
  v44[0] = v35;
  v43[1] = *v23;
  v21 = [(CPSTripPreviewsCardView *)v40 _goPressedLabel];
  v44[1] = v21;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v32 = [v19 initWithString:v18 attributes:?];
  MEMORY[0x277D82BD8](v20);
  *&v6 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  [v39[0] setAttributedTitle:v32 forState:{1, v6}];
  v25 = objc_alloc(MEMORY[0x277CCA898]);
  v24 = v38;
  v41[0] = *v22;
  v42[0] = v35;
  v41[1] = *v23;
  v27 = [(CPSTripPreviewsCardView *)v40 _goPressedAndFocusedLabel];
  v42[1] = v27;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v31 = [v25 initWithString:v24 attributes:?];
  MEMORY[0x277D82BD8](v26);
  *&v7 = MEMORY[0x277D82BD8](v27).n128_u64[0];
  [v39[0] setAttributedTitle:v31 forState:{9, v7}];
  [v39[0] addTarget:v40 action:sel_startTripButtonPressed_ forControlEvents:0x2000];
  v28 = [v39[0] layer];
  [v28 setCornerRadius:18.0];
  *&v8 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  v29 = [v39[0] layer];
  [v29 setCornerCurve:*MEMORY[0x277CDA138]];
  *&v9 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  [v39[0] setClipsToBounds:{1, v9}];
  objc_storeStrong(&v40->_goButton, v39[0]);
  [(CPSTripPreviewsCardView *)v40 _updateButtonColors];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(v39, 0);
}

- (void)setSelectedTrip:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v7->_selectedTrip, location[0]);
  v5 = [location[0] routeChoices];
  v3 = v7;
  v4 = [v5 firstObject];
  [(CPSTripPreviewsCardView *)v3 setSelectedRouteChoice:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)setSelectedRouteChoice:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeWeak(&v4->_selectedRouteChoice, location[0]);
  [(CPSTripPreviewsCardView *)v4 notifyDidSelectRouteChoice:location[0]];
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)a3 forTripIdentifier:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)startTripButtonPressed:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(CPSTripPreviewsCardView *)v9 selectedTrip];
  v6 = [(CPSTripPreviewsCardView *)v9 selectedRouteChoice];
  oslog = CarPlaySupportGeneralLogging();
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v10, v7, v6);
    _os_log_impl(&dword_242FE8000, oslog, type, "start selected trip: %@ route: %@", v10, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  v3 = [(CPSTripPreviewsCardView *)v9 tripDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 tripView:v9 startedTrip:v7 routeChoice:v6];
  }

  objc_storeStrong(&v3, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)notifyDidSelectRouteChoice:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = CarPlaySupportGeneralLogging();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v10, location[0]);
    _os_log_impl(&dword_242FE8000, v7, v6, "route selected: %@", v10, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  v5 = [(CPSTripPreviewsCardView *)v9 tripDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = v9;
    v4 = [(CPSTripPreviewsCardView *)v9 selectedTrip];
    [v5 tripView:v3 selectedTrip:? routeChoice:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(&v5, 0);
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
  v3 = [MEMORY[0x277D75348] systemWhiteColor];
  v4 = [v3 colorWithAlphaComponent:0.5];
  MEMORY[0x277D82BD8](v3);

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
  v3 = [(CPSTripPreviewsCardView *)self _greenColor];
  v4 = [v3 colorWithAlphaComponent:0.5];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_goPressedAndFocusedBackground
{
  v3 = [MEMORY[0x277D75348] _carSystemFocusColor];
  v4 = [v3 colorWithAlphaComponent:0.5];
  MEMORY[0x277D82BD8](v3);

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