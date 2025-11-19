@interface CPSRoutePreviewsCardView
- (CPSRoutePreviewsCardView)initWithTripDelegate:(id)a3 trips:(id)a4 textConfiguration:(id)a5;
- (id)_linearFocusItems;
- (id)preferredFocusEnvironments;
- (void)alternateRoutesView:(id)a3 didSelectRouteChoice:(id)a4;
- (void)setSelectedTrip:(id)a3;
@end

@implementation CPSRoutePreviewsCardView

- (CPSRoutePreviewsCardView)initWithTripDelegate:(id)a3 trips:(id)a4 textConfiguration:(id)a5
{
  v65[3] = *MEMORY[0x277D85DE8];
  v63 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v61 = 0;
  objc_storeStrong(&v61, a4);
  v60 = 0;
  objc_storeStrong(&v60, a5);
  v5 = v63;
  v63 = 0;
  v59.receiver = v5;
  v59.super_class = CPSRoutePreviewsCardView;
  v63 = [(CPSTripPreviewsCardView *)&v59 initWithTripDelegate:location[0] trips:v61 textConfiguration:v60];
  objc_storeStrong(&v63, v63);
  if (v63)
  {
    v58 = objc_alloc_init(CPSAlternateRoutesView);
    [(CPSAlternateRoutesView *)v58 setSelectionDelegate:v63];
    objc_storeStrong(&v63->_alternatesView, v58);
    v12 = [(CPSTripPreviewsCardView *)v63 containerView];
    [(UIView *)v12 addSubview:v58];
    *&v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v13 = MEMORY[0x277CCAAD0];
    v26 = [(CPSAlternateRoutesView *)v58 leadingAnchor];
    v25 = [(CPSTripPreviewsCardView *)v63 containerView];
    v24 = [(UIView *)v25 leadingAnchor];
    v23 = [v26 constraintEqualToAnchor:?];
    v65[0] = v23;
    v22 = [(CPSAlternateRoutesView *)v58 trailingAnchor];
    v21 = [(CPSTripPreviewsCardView *)v63 containerView];
    v20 = [(UIView *)v21 trailingAnchor];
    v19 = [v22 constraintEqualToAnchor:?];
    v65[1] = v19;
    v18 = [(CPSAlternateRoutesView *)v58 topAnchor];
    v17 = [(CPSTripPreviewsCardView *)v63 containerView];
    v16 = [(UIView *)v17 topAnchor];
    v15 = [v18 constraintEqualToAnchor:?];
    v65[2] = v15;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:3];
    [v13 activateConstraints:?];
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
    *&v7 = MEMORY[0x277D82BD8](v26).n128_u64[0];
    [(CPSTripPreviewsCardView *)v63 setupGoButton];
    v28 = [(CPSTripPreviewsCardView *)v63 containerView];
    v27 = [(CPSTripPreviewsCardView *)v63 goButton];
    [(UIView *)v28 addSubview:?];
    MEMORY[0x277D82BD8](v27);
    *&v8 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    v29 = MEMORY[0x277CCAAD0];
    v53 = [(CPSTripPreviewsCardView *)v63 goButton];
    v52 = [(UIButton *)v53 leadingAnchor];
    v51 = [(CPSTripPreviewsCardView *)v63 containerView];
    v50 = [(UIView *)v51 leadingAnchor];
    v49 = [v52 constraintEqualToAnchor:?];
    v64[0] = v49;
    v48 = [(CPSTripPreviewsCardView *)v63 goButton];
    v47 = [(UIButton *)v48 trailingAnchor];
    v46 = [(CPSTripPreviewsCardView *)v63 containerView];
    v45 = [(UIView *)v46 trailingAnchor];
    v44 = [v47 constraintEqualToAnchor:?];
    v64[1] = v44;
    v43 = [(CPSTripPreviewsCardView *)v63 goButton];
    v42 = [(UIButton *)v43 topAnchor];
    v41 = [(CPSRoutePreviewsCardView *)v63 alternatesView];
    v40 = [(CPSAlternateRoutesView *)v41 bottomAnchor];
    v39 = [v42 constraintEqualToAnchor:4.0 constant:?];
    v64[2] = v39;
    v38 = [(CPSTripPreviewsCardView *)v63 goButton];
    v37 = [(UIButton *)v38 heightAnchor];
    v36 = [v37 constraintEqualToConstant:36.0];
    v64[3] = v36;
    v35 = [(CPSTripPreviewsCardView *)v63 goButton];
    v34 = [(UIButton *)v35 bottomAnchor];
    v33 = [(CPSTripPreviewsCardView *)v63 containerView];
    v32 = [(UIView *)v33 bottomAnchor];
    v31 = [v34 constraintEqualToAnchor:?];
    v64[4] = v31;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:5];
    [v29 activateConstraints:?];
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
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    *&v9 = MEMORY[0x277D82BD8](v53).n128_u64[0];
    v54 = v63;
    v55 = [v61 firstObject];
    [(CPSRoutePreviewsCardView *)v54 setSelectedTrip:?];
    MEMORY[0x277D82BD8](v55);
    objc_storeStrong(&v58, 0);
  }

  v11 = MEMORY[0x277D82BE0](v63);
  objc_storeStrong(&v60, 0);
  objc_storeStrong(&v61, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v63, 0);
  return v11;
}

- (void)setSelectedTrip:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7.receiver = v9;
  v7.super_class = CPSRoutePreviewsCardView;
  [(CPSTripPreviewsCardView *)&v7 setSelectedTrip:location[0]];
  v4 = [(CPSRoutePreviewsCardView *)v9 alternatesView];
  [(CPSAlternateRoutesView *)v4 setIndexForSelectedRoute:0];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v6 = [(CPSRoutePreviewsCardView *)v9 alternatesView];
  v5 = [location[0] routeChoices];
  [(CPSAlternateRoutesView *)v6 setAvailableRouteChoices:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (void)alternateRoutesView:(id)a3 didSelectRouteChoice:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(CPSTripPreviewsCardView *)v7 setSelectedRouteChoice:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)preferredFocusEnvironments
{
  v11 = self;
  v10[1] = a2;
  v10[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(CPSRoutePreviewsCardView *)v11 alternatesView];
  v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v9)
  {
    v8 = [(CPSRoutePreviewsCardView *)v11 alternatesView];
    [v10[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  }

  v7 = [(CPSTripPreviewsCardView *)v11 goButton];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v7)
  {
    v6 = [(CPSTripPreviewsCardView *)v11 goButton];
    [v10[0] addObject:?];
    MEMORY[0x277D82BD8](v6);
  }

  v5 = MEMORY[0x277D82BE0](v10[0]);
  objc_storeStrong(v10, 0);

  return v5;
}

- (id)_linearFocusItems
{
  v15 = self;
  v14[1] = a2;
  v14[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [(CPSRoutePreviewsCardView *)v15 alternatesView];
  v2 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v11)
  {
    v10 = [(CPSRoutePreviewsCardView *)v15 alternatesView];
    v9 = [(CPSAlternateRoutesView *)v10 _linearFocusItems];
    [v14[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v9);
    v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  }

  v7 = [(CPSTripPreviewsCardView *)v15 goButton];
  v12 = 0;
  LOBYTE(v8) = 0;
  if (v7)
  {
    v13 = [(CPSTripPreviewsCardView *)v15 goButton];
    v12 = 1;
    v8 = [(UIButton *)v13 isHidden]^ 1;
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSTripPreviewsCardView *)v15 goButton];
    [v14[0] addObject:?];
    MEMORY[0x277D82BD8](v6);
  }

  v5 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);

  return v5;
}

@end