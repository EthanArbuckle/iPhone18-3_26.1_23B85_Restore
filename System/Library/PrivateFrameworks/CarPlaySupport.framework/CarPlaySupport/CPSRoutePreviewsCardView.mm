@interface CPSRoutePreviewsCardView
- (CPSRoutePreviewsCardView)initWithTripDelegate:(id)delegate trips:(id)trips textConfiguration:(id)configuration;
- (id)_linearFocusItems;
- (id)preferredFocusEnvironments;
- (void)alternateRoutesView:(id)view didSelectRouteChoice:(id)choice;
- (void)setSelectedTrip:(id)trip;
@end

@implementation CPSRoutePreviewsCardView

- (CPSRoutePreviewsCardView)initWithTripDelegate:(id)delegate trips:(id)trips textConfiguration:(id)configuration
{
  v65[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v61 = 0;
  objc_storeStrong(&v61, trips);
  v60 = 0;
  objc_storeStrong(&v60, configuration);
  v5 = selfCopy;
  selfCopy = 0;
  v59.receiver = v5;
  v59.super_class = CPSRoutePreviewsCardView;
  selfCopy = [(CPSTripPreviewsCardView *)&v59 initWithTripDelegate:location[0] trips:v61 textConfiguration:v60];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v58 = objc_alloc_init(CPSAlternateRoutesView);
    [(CPSAlternateRoutesView *)v58 setSelectionDelegate:selfCopy];
    objc_storeStrong(&selfCopy->_alternatesView, v58);
    containerView = [(CPSTripPreviewsCardView *)selfCopy containerView];
    [(UIView *)containerView addSubview:v58];
    *&v6 = MEMORY[0x277D82BD8](containerView).n128_u64[0];
    v13 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(CPSAlternateRoutesView *)v58 leadingAnchor];
    containerView2 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    leadingAnchor2 = [(UIView *)containerView2 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:?];
    v65[0] = v23;
    trailingAnchor = [(CPSAlternateRoutesView *)v58 trailingAnchor];
    containerView3 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    trailingAnchor2 = [(UIView *)containerView3 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:?];
    v65[1] = v19;
    topAnchor = [(CPSAlternateRoutesView *)v58 topAnchor];
    containerView4 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    topAnchor2 = [(UIView *)containerView4 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:?];
    v65[2] = v15;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
    [v13 activateConstraints:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](containerView4);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](containerView3);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](containerView2);
    *&v7 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
    [(CPSTripPreviewsCardView *)selfCopy setupGoButton];
    containerView5 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    goButton = [(CPSTripPreviewsCardView *)selfCopy goButton];
    [(UIView *)containerView5 addSubview:?];
    MEMORY[0x277D82BD8](goButton);
    *&v8 = MEMORY[0x277D82BD8](containerView5).n128_u64[0];
    v29 = MEMORY[0x277CCAAD0];
    goButton2 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    leadingAnchor3 = [(UIButton *)goButton2 leadingAnchor];
    containerView6 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    leadingAnchor4 = [(UIView *)containerView6 leadingAnchor];
    v49 = [leadingAnchor3 constraintEqualToAnchor:?];
    v64[0] = v49;
    goButton3 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    trailingAnchor3 = [(UIButton *)goButton3 trailingAnchor];
    containerView7 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    trailingAnchor4 = [(UIView *)containerView7 trailingAnchor];
    v44 = [trailingAnchor3 constraintEqualToAnchor:?];
    v64[1] = v44;
    goButton4 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    topAnchor3 = [(UIButton *)goButton4 topAnchor];
    alternatesView = [(CPSRoutePreviewsCardView *)selfCopy alternatesView];
    bottomAnchor = [(CPSAlternateRoutesView *)alternatesView bottomAnchor];
    v39 = [topAnchor3 constraintEqualToAnchor:4.0 constant:?];
    v64[2] = v39;
    goButton5 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    heightAnchor = [(UIButton *)goButton5 heightAnchor];
    v36 = [heightAnchor constraintEqualToConstant:36.0];
    v64[3] = v36;
    goButton6 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    bottomAnchor2 = [(UIButton *)goButton6 bottomAnchor];
    containerView8 = [(CPSTripPreviewsCardView *)selfCopy containerView];
    bottomAnchor3 = [(UIView *)containerView8 bottomAnchor];
    v31 = [bottomAnchor2 constraintEqualToAnchor:?];
    v64[4] = v31;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:5];
    [v29 activateConstraints:?];
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](containerView8);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](goButton6);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](goButton5);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](alternatesView);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](goButton4);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](containerView7);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](goButton3);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](containerView6);
    MEMORY[0x277D82BD8](leadingAnchor3);
    *&v9 = MEMORY[0x277D82BD8](goButton2).n128_u64[0];
    v54 = selfCopy;
    firstObject = [v61 firstObject];
    [(CPSRoutePreviewsCardView *)v54 setSelectedTrip:?];
    MEMORY[0x277D82BD8](firstObject);
    objc_storeStrong(&v58, 0);
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)setSelectedTrip:(id)trip
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, trip);
  v7.receiver = selfCopy;
  v7.super_class = CPSRoutePreviewsCardView;
  [(CPSTripPreviewsCardView *)&v7 setSelectedTrip:location[0]];
  alternatesView = [(CPSRoutePreviewsCardView *)selfCopy alternatesView];
  [(CPSAlternateRoutesView *)alternatesView setIndexForSelectedRoute:0];
  *&v3 = MEMORY[0x277D82BD8](alternatesView).n128_u64[0];
  alternatesView2 = [(CPSRoutePreviewsCardView *)selfCopy alternatesView];
  routeChoices = [location[0] routeChoices];
  [(CPSAlternateRoutesView *)alternatesView2 setAvailableRouteChoices:?];
  MEMORY[0x277D82BD8](routeChoices);
  MEMORY[0x277D82BD8](alternatesView2);
  objc_storeStrong(location, 0);
}

- (void)alternateRoutesView:(id)view didSelectRouteChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v5 = 0;
  objc_storeStrong(&v5, choice);
  [(CPSTripPreviewsCardView *)selfCopy setSelectedRouteChoice:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)preferredFocusEnvironments
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  alternatesView = [(CPSRoutePreviewsCardView *)selfCopy alternatesView];
  v2 = MEMORY[0x277D82BD8](alternatesView).n128_u64[0];
  if (alternatesView)
  {
    alternatesView2 = [(CPSRoutePreviewsCardView *)selfCopy alternatesView];
    [v10[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](alternatesView2).n128_u64[0];
  }

  goButton = [(CPSTripPreviewsCardView *)selfCopy goButton];
  *&v3 = MEMORY[0x277D82BD8](goButton).n128_u64[0];
  if (goButton)
  {
    goButton2 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    [v10[0] addObject:?];
    MEMORY[0x277D82BD8](goButton2);
  }

  v5 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);

  return v5;
}

- (id)_linearFocusItems
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  alternatesView = [(CPSRoutePreviewsCardView *)selfCopy alternatesView];
  v2 = MEMORY[0x277D82BD8](alternatesView).n128_u64[0];
  if (alternatesView)
  {
    alternatesView2 = [(CPSRoutePreviewsCardView *)selfCopy alternatesView];
    _linearFocusItems = [(CPSAlternateRoutesView *)alternatesView2 _linearFocusItems];
    [v14[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](_linearFocusItems);
    v2 = MEMORY[0x277D82BD8](alternatesView2).n128_u64[0];
  }

  goButton = [(CPSTripPreviewsCardView *)selfCopy goButton];
  v12 = 0;
  LOBYTE(v8) = 0;
  if (goButton)
  {
    goButton2 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    v12 = 1;
    v8 = [(UIButton *)goButton2 isHidden]^ 1;
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](goButton2);
  }

  *&v3 = MEMORY[0x277D82BD8](goButton).n128_u64[0];
  if (v8)
  {
    goButton3 = [(CPSTripPreviewsCardView *)selfCopy goButton];
    [v14[0] addObject:?];
    MEMORY[0x277D82BD8](goButton3);
  }

  v5 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);

  return v5;
}

@end