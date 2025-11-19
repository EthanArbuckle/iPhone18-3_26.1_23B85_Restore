@interface CPSNavigationETAView
+ (id)createPlatterView;
- (CPSNavigationETAView)initWithTrip:(id)a3 style:(unint64_t)a4;
- (id)backgroundColorFromEstimatesStyle;
- (void)_updateStyle;
- (void)setTripEstimateStyle:(unint64_t)a3;
- (void)showManeuvers:(id)a3;
- (void)updateEstimates:(id)a3 forManeuver:(id)a4;
@end

@implementation CPSNavigationETAView

- (CPSNavigationETAView)initWithTrip:(id)a3 style:(unint64_t)a4
{
  v62[4] = *MEMORY[0x277D85DE8];
  v60 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v58 = a4;
  v4 = v60;
  v60 = 0;
  v57.receiver = v4;
  v57.super_class = CPSNavigationETAView;
  v52 = [(CPSNavigationETAView *)&v57 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v60 = v52;
  objc_storeStrong(&v60, v52);
  if (v52)
  {
    objc_storeStrong(&v60->_trip, location[0]);
    v60->_tripEstimateStyle = v58;
    if (_UISolariumEnabled())
    {
      v56 = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
      v50 = [v56 layer];
      [v50 setCornerRadius:18.0];
      *&v5 = MEMORY[0x277D82BD8](v50).n128_u64[0];
      [v56 setTranslatesAutoresizingMaskIntoConstraints:{0, v5}];
      objc_storeStrong(&v60->_contentView, v56);
      objc_storeStrong(&v56, 0);
    }

    else
    {
      v55 = [objc_opt_class() createPlatterView];
      v49 = [(CPSNavigationETAView *)v60 backgroundColorFromEstimatesStyle];
      [v55 setPlatterBackgroundColor:?];
      MEMORY[0x277D82BD8](v49);
      [v55 setShadowWithRadius:20.0 opacity:0.18];
      objc_storeStrong(&v60->_contentView, v55);
      objc_storeStrong(&v55, 0);
    }

    [(CPSNavigationETAView *)v60 addSubview:v60->_contentView];
    v35 = MEMORY[0x277CCAAD0];
    v48 = [(UIView *)v60->_contentView leadingAnchor];
    v47 = [(CPSNavigationETAView *)v60 leadingAnchor];
    v46 = [(NSLayoutXAxisAnchor *)v48 constraintEqualToAnchor:?];
    v62[0] = v46;
    v45 = [(UIView *)v60->_contentView topAnchor];
    v44 = [(CPSNavigationETAView *)v60 topAnchor];
    v43 = [(NSLayoutYAxisAnchor *)v45 constraintEqualToAnchor:?];
    v62[1] = v43;
    v42 = [(UIView *)v60->_contentView trailingAnchor];
    v41 = [(CPSNavigationETAView *)v60 trailingAnchor];
    v40 = [(NSLayoutXAxisAnchor *)v42 constraintEqualToAnchor:?];
    v62[2] = v40;
    v39 = [(UIView *)v60->_contentView bottomAnchor];
    v38 = [(CPSNavigationETAView *)v60 bottomAnchor];
    v37 = [(NSLayoutYAxisAnchor *)v39 constraintEqualToAnchor:?];
    v62[3] = v37;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    [v35 activateConstraints:?];
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
    *&v6 = MEMORY[0x277D82BD8](v48).n128_u64[0];
    [(CPSNavigationETAView *)v60 setTranslatesAutoresizingMaskIntoConstraints:0, v6];
    v54 = [location[0] destination];
    v7 = [CPSRouteEstimatesView alloc];
    v8 = [(CPSRouteEstimatesView *)v7 initWithStyle:v58];
    routeEstimatesView = v60->_routeEstimatesView;
    v60->_routeEstimatesView = v8;
    v53 = [v54 timeZone];
    if (v53)
    {
      v34 = [(CPSNavigationETAView *)v60 routeEstimatesView];
      [(CPSRouteEstimatesView *)v34 setArrivalTimeZone:v53];
      MEMORY[0x277D82BD8](v34);
    }

    contentView = v60->_contentView;
    v15 = [(CPSNavigationETAView *)v60 routeEstimatesView];
    [(UIView *)contentView addSubview:?];
    *&v10 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    v16 = MEMORY[0x277CCAAD0];
    v33 = [(CPSNavigationETAView *)v60 routeEstimatesView];
    v32 = [(CPSRouteEstimatesView *)v33 leadingAnchor];
    v31 = [(UIView *)v60->_contentView leadingAnchor];
    v30 = [v32 constraintEqualToAnchor:?];
    v61[0] = v30;
    v29 = [(CPSNavigationETAView *)v60 routeEstimatesView];
    v28 = [(CPSRouteEstimatesView *)v29 trailingAnchor];
    v27 = [(UIView *)v60->_contentView trailingAnchor];
    v26 = [v28 constraintEqualToAnchor:?];
    v61[1] = v26;
    v25 = [(CPSNavigationETAView *)v60 routeEstimatesView];
    v24 = [(CPSRouteEstimatesView *)v25 centerYAnchor];
    v23 = [(UIView *)v60->_contentView centerYAnchor];
    v22 = [v24 constraintEqualToAnchor:?];
    v61[2] = v22;
    v21 = [(CPSNavigationETAView *)v60 routeEstimatesView];
    v20 = [(CPSRouteEstimatesView *)v21 bottomAnchor];
    v19 = [(UIView *)v60->_contentView bottomAnchor];
    v18 = [v20 constraintEqualToAnchor:8.0 constant:?];
    v61[3] = v18;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
    [v16 activateConstraints:?];
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
    *&v11 = MEMORY[0x277D82BD8](v33).n128_u64[0];
    [(CPSNavigationETAView *)v60 _updateStyle];
    objc_storeStrong(&v53, 0);
    objc_storeStrong(&v54, 0);
  }

  v13 = MEMORY[0x277D82BE0](v60);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v60, 0);
  return v13;
}

- (void)setTripEstimateStyle:(unint64_t)a3
{
  if (self->_tripEstimateStyle != a3)
  {
    self->_tripEstimateStyle = a3;
    [(CPSNavigationETAView *)self _updateStyle];
  }
}

- (void)_updateStyle
{
  v5 = self;
  location[1] = a2;
  location[0] = [(CPSNavigationETAView *)self backgroundColorFromEstimatesStyle];
  if (_UISolariumEnabled())
  {
    [(UIView *)v5->_contentView setGlassTintColor:location[0]];
  }

  else
  {
    v3 = [(CPSNavigationETAView *)v5 contentView];
    [(UIView *)v3 setPlatterBackgroundColor:location[0]];
    MEMORY[0x277D82BD8](v3);
  }

  v2 = [(CPSNavigationETAView *)v5 routeEstimatesView];
  [(CPSRouteEstimatesView *)v2 setTripEstimateStyle:[(CPSNavigationETAView *)v5 tripEstimateStyle]];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(location, 0);
}

- (id)backgroundColorFromEstimatesStyle
{
  if ([(CPSNavigationETAView *)self tripEstimateStyle]== 1)
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    v5 = [v4 colorWithAlphaComponent:0.65];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
    v5 = [v3 colorWithAlphaComponent:0.75];
    MEMORY[0x277D82BD8](v3);
  }

  return v5;
}

- (void)showManeuvers:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)a3 forManeuver:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(CPSNavigationETAView *)v8 routeEstimatesView];
  [(CPSRouteEstimatesView *)v5 setCurrentTravelEstimates:location[0]];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

+ (id)createPlatterView
{
  v2 = [CPSCardPlatterView alloc];
  v3 = [(CPSCardPlatterView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v3;
}

@end