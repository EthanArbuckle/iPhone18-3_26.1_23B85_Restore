@interface CPSNavigationETAView
+ (id)createPlatterView;
- (CPSNavigationETAView)initWithTrip:(id)trip style:(unint64_t)style;
- (id)backgroundColorFromEstimatesStyle;
- (void)_updateStyle;
- (void)setTripEstimateStyle:(unint64_t)style;
- (void)showManeuvers:(id)maneuvers;
- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver;
@end

@implementation CPSNavigationETAView

- (CPSNavigationETAView)initWithTrip:(id)trip style:(unint64_t)style
{
  v62[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, trip);
  styleCopy = style;
  v4 = selfCopy;
  selfCopy = 0;
  v57.receiver = v4;
  v57.super_class = CPSNavigationETAView;
  v52 = [(CPSNavigationETAView *)&v57 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  selfCopy = v52;
  objc_storeStrong(&selfCopy, v52);
  if (v52)
  {
    objc_storeStrong(&selfCopy->_trip, location[0]);
    selfCopy->_tripEstimateStyle = styleCopy;
    if (_UISolariumEnabled())
    {
      v56 = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
      layer = [v56 layer];
      [layer setCornerRadius:18.0];
      *&v5 = MEMORY[0x277D82BD8](layer).n128_u64[0];
      [v56 setTranslatesAutoresizingMaskIntoConstraints:{0, v5}];
      objc_storeStrong(&selfCopy->_contentView, v56);
      objc_storeStrong(&v56, 0);
    }

    else
    {
      createPlatterView = [objc_opt_class() createPlatterView];
      backgroundColorFromEstimatesStyle = [(CPSNavigationETAView *)selfCopy backgroundColorFromEstimatesStyle];
      [createPlatterView setPlatterBackgroundColor:?];
      MEMORY[0x277D82BD8](backgroundColorFromEstimatesStyle);
      [createPlatterView setShadowWithRadius:20.0 opacity:0.18];
      objc_storeStrong(&selfCopy->_contentView, createPlatterView);
      objc_storeStrong(&createPlatterView, 0);
    }

    [(CPSNavigationETAView *)selfCopy addSubview:selfCopy->_contentView];
    v35 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIView *)selfCopy->_contentView leadingAnchor];
    leadingAnchor2 = [(CPSNavigationETAView *)selfCopy leadingAnchor];
    v46 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:?];
    v62[0] = v46;
    topAnchor = [(UIView *)selfCopy->_contentView topAnchor];
    topAnchor2 = [(CPSNavigationETAView *)selfCopy topAnchor];
    v43 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:?];
    v62[1] = v43;
    trailingAnchor = [(UIView *)selfCopy->_contentView trailingAnchor];
    trailingAnchor2 = [(CPSNavigationETAView *)selfCopy trailingAnchor];
    v40 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:?];
    v62[2] = v40;
    bottomAnchor = [(UIView *)selfCopy->_contentView bottomAnchor];
    bottomAnchor2 = [(CPSNavigationETAView *)selfCopy bottomAnchor];
    v37 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:?];
    v62[3] = v37;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:4];
    [v35 activateConstraints:?];
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](leadingAnchor2);
    *&v6 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
    [(CPSNavigationETAView *)selfCopy setTranslatesAutoresizingMaskIntoConstraints:0, v6];
    destination = [location[0] destination];
    v7 = [CPSRouteEstimatesView alloc];
    v8 = [(CPSRouteEstimatesView *)v7 initWithStyle:styleCopy];
    routeEstimatesView = selfCopy->_routeEstimatesView;
    selfCopy->_routeEstimatesView = v8;
    timeZone = [destination timeZone];
    if (timeZone)
    {
      routeEstimatesView = [(CPSNavigationETAView *)selfCopy routeEstimatesView];
      [(CPSRouteEstimatesView *)routeEstimatesView setArrivalTimeZone:timeZone];
      MEMORY[0x277D82BD8](routeEstimatesView);
    }

    contentView = selfCopy->_contentView;
    routeEstimatesView2 = [(CPSNavigationETAView *)selfCopy routeEstimatesView];
    [(UIView *)contentView addSubview:?];
    *&v10 = MEMORY[0x277D82BD8](routeEstimatesView2).n128_u64[0];
    v16 = MEMORY[0x277CCAAD0];
    routeEstimatesView3 = [(CPSNavigationETAView *)selfCopy routeEstimatesView];
    leadingAnchor3 = [(CPSRouteEstimatesView *)routeEstimatesView3 leadingAnchor];
    leadingAnchor4 = [(UIView *)selfCopy->_contentView leadingAnchor];
    v30 = [leadingAnchor3 constraintEqualToAnchor:?];
    v61[0] = v30;
    routeEstimatesView4 = [(CPSNavigationETAView *)selfCopy routeEstimatesView];
    trailingAnchor3 = [(CPSRouteEstimatesView *)routeEstimatesView4 trailingAnchor];
    trailingAnchor4 = [(UIView *)selfCopy->_contentView trailingAnchor];
    v26 = [trailingAnchor3 constraintEqualToAnchor:?];
    v61[1] = v26;
    routeEstimatesView5 = [(CPSNavigationETAView *)selfCopy routeEstimatesView];
    centerYAnchor = [(CPSRouteEstimatesView *)routeEstimatesView5 centerYAnchor];
    centerYAnchor2 = [(UIView *)selfCopy->_contentView centerYAnchor];
    v22 = [centerYAnchor constraintEqualToAnchor:?];
    v61[2] = v22;
    routeEstimatesView6 = [(CPSNavigationETAView *)selfCopy routeEstimatesView];
    bottomAnchor3 = [(CPSRouteEstimatesView *)routeEstimatesView6 bottomAnchor];
    bottomAnchor4 = [(UIView *)selfCopy->_contentView bottomAnchor];
    v18 = [bottomAnchor3 constraintEqualToAnchor:8.0 constant:?];
    v61[3] = v18;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:4];
    [v16 activateConstraints:?];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](routeEstimatesView6);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](routeEstimatesView5);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](routeEstimatesView4);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](leadingAnchor3);
    *&v11 = MEMORY[0x277D82BD8](routeEstimatesView3).n128_u64[0];
    [(CPSNavigationETAView *)selfCopy _updateStyle];
    objc_storeStrong(&timeZone, 0);
    objc_storeStrong(&destination, 0);
  }

  v13 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v13;
}

- (void)setTripEstimateStyle:(unint64_t)style
{
  if (self->_tripEstimateStyle != style)
  {
    self->_tripEstimateStyle = style;
    [(CPSNavigationETAView *)self _updateStyle];
  }
}

- (void)_updateStyle
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(CPSNavigationETAView *)self backgroundColorFromEstimatesStyle];
  if (_UISolariumEnabled())
  {
    [(UIView *)selfCopy->_contentView setGlassTintColor:location[0]];
  }

  else
  {
    contentView = [(CPSNavigationETAView *)selfCopy contentView];
    [(UIView *)contentView setPlatterBackgroundColor:location[0]];
    MEMORY[0x277D82BD8](contentView);
  }

  routeEstimatesView = [(CPSNavigationETAView *)selfCopy routeEstimatesView];
  [(CPSRouteEstimatesView *)routeEstimatesView setTripEstimateStyle:[(CPSNavigationETAView *)selfCopy tripEstimateStyle]];
  MEMORY[0x277D82BD8](routeEstimatesView);
  objc_storeStrong(location, 0);
}

- (id)backgroundColorFromEstimatesStyle
{
  if ([(CPSNavigationETAView *)self tripEstimateStyle]== 1)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    v5 = [blackColor colorWithAlphaComponent:0.65];
    MEMORY[0x277D82BD8](blackColor);
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v5 = [whiteColor colorWithAlphaComponent:0.75];
    MEMORY[0x277D82BD8](whiteColor);
  }

  return v5;
}

- (void)showManeuvers:(id)maneuvers
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, maneuvers);
  objc_storeStrong(location, 0);
}

- (void)updateEstimates:(id)estimates forManeuver:(id)maneuver
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  v6 = 0;
  objc_storeStrong(&v6, maneuver);
  routeEstimatesView = [(CPSNavigationETAView *)selfCopy routeEstimatesView];
  [(CPSRouteEstimatesView *)routeEstimatesView setCurrentTravelEstimates:location[0]];
  MEMORY[0x277D82BD8](routeEstimatesView);
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