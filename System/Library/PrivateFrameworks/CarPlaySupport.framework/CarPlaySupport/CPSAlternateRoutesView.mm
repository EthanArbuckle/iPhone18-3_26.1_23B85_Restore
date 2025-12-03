@interface CPSAlternateRoutesView
- (CPSAlternateRouteSelecting)selectionDelegate;
- (CPSAlternateRoutesView)initWithFrame:(CGRect)frame;
- (double)_calculateHeightForCellAtIndexPath:(id)path;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_linearFocusItems;
- (id)preferredFocusEnvironments;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_handlePanGesture:(id)gesture;
- (void)didSelectRow:(id)row representingRouteChoice:(id)choice;
- (void)setAvailableRouteChoices:(id)choices;
- (void)setIndexForSelectedRoute:(unint64_t)route;
@end

@implementation CPSAlternateRoutesView

- (CPSAlternateRoutesView)initWithFrame:(CGRect)frame
{
  v51[4] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v48 = a2;
  v49 = 0;
  v47.receiver = self;
  v47.super_class = CPSAlternateRoutesView;
  v49 = [(CPSAlternateRoutesView *)&v47 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v49, v49);
  if (v49)
  {
    [(CPSAlternateRoutesView *)v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPSAlternateRoutesView *)v49 setIndexForSelectedRoute:0x7FFFFFFFFFFFFFFFLL];
    v3 = [CPSAlternateRoutesScrollView alloc];
    v14 = [(CPSAlternateRoutesScrollView *)v3 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(CPSAlternateRoutesView *)v49 setScrollView:?];
    *&v4 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    v15 = v49;
    scrollView = [(CPSAlternateRoutesView *)v49 scrollView];
    [(CPSAlternateRoutesScrollView *)scrollView setDataSource:v15];
    *&v5 = MEMORY[0x277D82BD8](scrollView).n128_u64[0];
    v17 = v49;
    scrollView2 = [(CPSAlternateRoutesView *)v49 scrollView];
    [(CPSAlternateRoutesScrollView *)scrollView2 setDelegate:v17];
    *&v6 = MEMORY[0x277D82BD8](scrollView2).n128_u64[0];
    scrollView3 = [(CPSAlternateRoutesView *)v49 scrollView];
    v19 = objc_opt_class();
    v20 = +[CPSRouteRowCell identifier];
    [(CPSAlternateRoutesScrollView *)scrollView3 registerClass:v19 forCellReuseIdentifier:?];
    MEMORY[0x277D82BD8](v20);
    *&v7 = MEMORY[0x277D82BD8](scrollView3).n128_u64[0];
    scrollView4 = [(CPSAlternateRoutesView *)v49 scrollView];
    [(CPSAlternateRoutesScrollView *)scrollView4 setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v8 = MEMORY[0x277D82BD8](scrollView4).n128_u64[0];
    v23 = v49;
    scrollView5 = [(CPSAlternateRoutesView *)v49 scrollView];
    [(CPSAlternateRoutesView *)v23 addSubview:?];
    *&v9 = MEMORY[0x277D82BD8](scrollView5).n128_u64[0];
    scrollView6 = [(CPSAlternateRoutesView *)v49 scrollView];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPSAlternateRoutesScrollView *)scrollView6 setBackgroundColor:?];
    MEMORY[0x277D82BD8](clearColor);
    *&v10 = MEMORY[0x277D82BD8](scrollView6).n128_u64[0];
    v27 = MEMORY[0x277CCAAD0];
    scrollView7 = [(CPSAlternateRoutesView *)v49 scrollView];
    topAnchor = [(CPSAlternateRoutesScrollView *)scrollView7 topAnchor];
    safeAreaLayoutGuide = [(CPSAlternateRoutesView *)v49 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v41 = [topAnchor constraintEqualToAnchor:4.0 constant:?];
    v51[0] = v41;
    scrollView8 = [(CPSAlternateRoutesView *)v49 scrollView];
    leadingAnchor = [(CPSAlternateRoutesScrollView *)scrollView8 leadingAnchor];
    leadingAnchor2 = [(CPSAlternateRoutesView *)v49 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:?];
    v51[1] = v37;
    scrollView9 = [(CPSAlternateRoutesView *)v49 scrollView];
    trailingAnchor = [(CPSAlternateRoutesScrollView *)scrollView9 trailingAnchor];
    trailingAnchor2 = [(CPSAlternateRoutesView *)v49 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:?];
    v51[2] = v33;
    scrollView10 = [(CPSAlternateRoutesView *)v49 scrollView];
    bottomAnchor = [(CPSAlternateRoutesScrollView *)scrollView10 bottomAnchor];
    bottomAnchor2 = [(CPSAlternateRoutesView *)v49 bottomAnchor];
    v29 = [bottomAnchor constraintEqualToAnchor:?];
    v51[3] = v29;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
    [v27 activateConstraints:?];
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](scrollView10);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](scrollView9);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](scrollView8);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](safeAreaLayoutGuide);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](scrollView7);
    v11 = objc_alloc(MEMORY[0x277D757F8]);
    v46 = [v11 initWithTarget:v49 action:sel__handlePanGesture_];
    [(CPSAlternateRoutesView *)v49 addGestureRecognizer:v46];
    objc_storeStrong(&v46, 0);
  }

  v13 = MEMORY[0x277D82BE0](v49);
  objc_storeStrong(&v49, 0);
  return v13;
}

- (void)_handlePanGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  [location[0] translationInView:selfCopy];
  v18 = v3;
  scrollView = [(CPSAlternateRoutesView *)selfCopy scrollView];
  [(CPSAlternateRoutesScrollView *)scrollView contentOffset];
  v16 = v4;
  v17 = v5;
  MEMORY[0x277D82BD8](scrollView);
  scrollView2 = [(CPSAlternateRoutesView *)selfCopy scrollView];
  [(CPSAlternateRoutesScrollView *)scrollView2 contentSize];
  v13 = v6;
  scrollView3 = [(CPSAlternateRoutesView *)selfCopy scrollView];
  [(CPSAlternateRoutesScrollView *)scrollView3 bounds];
  v15 = v13 - v7;
  MEMORY[0x277D82BD8](scrollView3);
  MEMORY[0x277D82BD8](scrollView2);
  if (v17 - v18 >= v15)
  {
    v10 = v15;
  }

  else
  {
    v10 = v17 - v18;
  }

  if (v10 >= 0)
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  scrollView4 = [(CPSAlternateRoutesView *)selfCopy scrollView];
  [(CPSAlternateRoutesScrollView *)scrollView4 setContentOffset:v16, v9];
  MEMORY[0x277D82BD8](scrollView4);
  [location[0] setTranslation:selfCopy inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  objc_storeStrong(location, 0);
}

- (void)setAvailableRouteChoices:(id)choices
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choices);
  if ([location[0] count] <= 3)
  {
    objc_storeStrong(&selfCopy->_availableRouteChoices, location[0]);
  }

  else
  {
    v18 = 0;
    v17 = 3;
    v19 = 0;
    v20 = 3;
    v13[1] = 0;
    v13[2] = 3;
    v14 = [location[0] subarrayWithRange:{0, 3}];
    objc_storeStrong(&selfCopy->_availableRouteChoices, v14);
    objc_storeStrong(&v14, 0);
  }

  v5 = objc_opt_new();
  [(CPSAlternateRoutesView *)selfCopy setRouteRowViews:?];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  availableRouteChoices = [(CPSAlternateRoutesView *)selfCopy availableRouteChoices];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __51__CPSAlternateRoutesView_setAvailableRouteChoices___block_invoke;
  v12 = &unk_278D925A8;
  v13[0] = MEMORY[0x277D82BE0](selfCopy);
  [(NSArray *)availableRouteChoices enumerateObjectsUsingBlock:&v8];
  *&v4 = MEMORY[0x277D82BD8](availableRouteChoices).n128_u64[0];
  scrollView = [(CPSAlternateRoutesView *)selfCopy scrollView];
  [(CPSAlternateRoutesScrollView *)scrollView reloadData];
  MEMORY[0x277D82BD8](scrollView);
  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);
}

void __51__CPSAlternateRoutesView_setAvailableRouteChoices___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13[3] = a3;
  v13[2] = a4;
  v13[1] = a1;
  v13[0] = objc_alloc_init(CPSRouteRowView);
  [v13[0] setRepresentedRouteChoice:location[0]];
  [v13[0] setInteractionDelegate:a1[4]];
  [v13[0] setSelected:{a3 == objc_msgSend(a1[4], "indexForSelectedRoute")}];
  if (_UISolariumEnabled())
  {
    v9 = [MEMORY[0x277D75348] clearColor];
    [v13[0] setBackgroundColor:?];
    v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
    [v13[0] setBackgroundColor:?];
    v7 = [v13[0] layer];
    [v7 setCornerCurve:*MEMORY[0x277CDA138]];
    v8 = [v13[0] layer];
    [v8 setCornerRadius:14.0];
    v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  }

  v5 = [a1[4] routeRowViews];
  [v5 addObject:v13[0]];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);
}

- (void)setIndexForSelectedRoute:(unint64_t)route
{
  selfCopy = self;
  v18 = a2;
  routeCopy = route;
  self->_indexForSelectedRoute = route;
  availableRouteChoices = [(CPSAlternateRoutesView *)selfCopy availableRouteChoices];
  v14 = 0;
  v12 = 0;
  if (routeCopy >= [(NSArray *)availableRouteChoices count])
  {
    v3 = MEMORY[0x277D82BE0](0);
  }

  else
  {
    availableRouteChoices2 = [(CPSAlternateRoutesView *)selfCopy availableRouteChoices];
    v14 = 1;
    v13 = [(NSArray *)availableRouteChoices2 objectAtIndex:routeCopy];
    v12 = 1;
    v3 = MEMORY[0x277D82BE0](v13);
  }

  v16 = v3;
  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](availableRouteChoices2);
  }

  routeRowViews = [(CPSAlternateRoutesView *)selfCopy routeRowViews];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __51__CPSAlternateRoutesView_setIndexForSelectedRoute___block_invoke;
  v10 = &unk_278D913C0;
  v11 = MEMORY[0x277D82BE0](v16);
  [(NSMutableArray *)routeRowViews enumerateObjectsUsingBlock:&v6];
  MEMORY[0x277D82BD8](routeRowViews);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v16, 0);
}

void __51__CPSAlternateRoutesView_setIndexForSelectedRoute___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[3] = a3;
  v11[2] = a4;
  v11[1] = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    v11[0] = CPSSafeCast_9(v4, location[0]);
    v6 = [v11[0] representedRouteChoice];
    v7 = [v6 isEqual:a1[4]];
    *&v5 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    [v11[0] setSelected:{v7 & 1, v5}];
    objc_storeStrong(v11, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)didSelectRow:(id)row representingRouteChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, row);
  v12 = 0;
  objc_storeStrong(&v12, choice);
  availableRouteChoices = [(CPSAlternateRoutesView *)selfCopy availableRouteChoices];
  v8 = [(NSArray *)availableRouteChoices indexOfObjectIdenticalTo:v12];
  *&v4 = MEMORY[0x277D82BD8](availableRouteChoices).n128_u64[0];
  v11 = v8;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CPSAlternateRoutesView *)selfCopy setIndexForSelectedRoute:v11, v4];
    selectionDelegate = [(CPSAlternateRoutesView *)selfCopy selectionDelegate];
    if (objc_opt_respondsToSelector())
    {
      [selectionDelegate alternateRoutesView:selfCopy didSelectRouteChoice:v12];
    }

    v9 = [MEMORY[0x277CCAA70] indexPathForRow:v11 inSection:0];
    scrollView = [(CPSAlternateRoutesView *)selfCopy scrollView];
    [(CPSAlternateRoutesScrollView *)scrollView selectRowAtIndexPath:v9 animated:1 scrollPosition:2];
    MEMORY[0x277D82BD8](scrollView);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&selectionDelegate, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x277D85DE8];
  scrollView = [(CPSAlternateRoutesView *)self scrollView];
  v5[0] = scrollView;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  MEMORY[0x277D82BD8](scrollView);

  return v4;
}

- (id)_linearFocusItems
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  routeRowViews = [(CPSAlternateRoutesView *)selfCopy routeRowViews];
  v5 = MEMORY[0x277D82BE0](v6[0]);
  [(NSMutableArray *)routeRowViews enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](routeRowViews);
  v4 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

void __43__CPSAlternateRoutesView__linearFocusItems__block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[3] = a3;
  v10[2] = a4;
  v10[1] = a1;
  v4 = objc_opt_class();
  v10[0] = CPSSafeCast_9(v4, location[0]);
  if (v10[0])
  {
    v5 = a1[4];
    v6 = [v10[0] rowButton];
    [v5 addObject:?];
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v7 = 0;
  objc_storeStrong(&v7, path);
  [(CPSAlternateRoutesView *)selfCopy _calculateHeightForCellAtIndexPath:v7];
  if (v4 <= *&tableView_heightForRowAtIndexPath__maxHeight)
  {
    v10 = v4;
  }

  else
  {
    v10 = *&tableView_heightForRowAtIndexPath__maxHeight;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (double)_calculateHeightForCellAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v38 = 44.0;
  for (i = 0; ; ++i)
  {
    v30 = i;
    routeRowViews = [(CPSAlternateRoutesView *)selfCopy routeRowViews];
    v29 = [(NSMutableArray *)routeRowViews count];
    *&v3 = MEMORY[0x277D82BD8](routeRowViews).n128_u64[0];
    if (v30 >= v29)
    {
      break;
    }

    v36 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:{0, v3}];
    routeRowViews2 = [(CPSAlternateRoutesView *)selfCopy routeRowViews];
    v35 = -[NSMutableArray objectAtIndex:](routeRowViews2, "objectAtIndex:", [v36 item]);
    *&v4 = MEMORY[0x277D82BD8](routeRowViews2).n128_u64[0];
    scrollView = [(CPSAlternateRoutesView *)selfCopy scrollView];
    [(CPSAlternateRoutesScrollView *)scrollView frame];
    scrollView2 = [(CPSAlternateRoutesView *)selfCopy scrollView];
    [(CPSAlternateRoutesScrollView *)scrollView2 frame];
    CGSizeMake_5();
    v33 = v5;
    v34 = v6;
    MEMORY[0x277D82BD8](scrollView2);
    MEMORY[0x277D82BD8](scrollView);
    title = [v35 title];
    text = [title text];
    title2 = [v35 title];
    font = [title2 font];
    fontDescriptor = [font fontDescriptor];
    fontAttributes = [fontDescriptor fontAttributes];
    [text boundingRectWithSize:v33 options:v34 attributes:? context:?];
    v32 = v7;
    MEMORY[0x277D82BD8](fontAttributes);
    MEMORY[0x277D82BD8](fontDescriptor);
    MEMORY[0x277D82BD8](font);
    MEMORY[0x277D82BD8](title2);
    MEMORY[0x277D82BD8](text);
    MEMORY[0x277D82BD8](title);
    detail = [v35 detail];
    text2 = [detail text];
    detail2 = [v35 detail];
    font2 = [detail2 font];
    fontDescriptor2 = [font2 fontDescriptor];
    fontAttributes2 = [fontDescriptor2 fontAttributes];
    [text2 boundingRectWithSize:3 options:v33 attributes:v34 context:?];
    v31 = v8;
    MEMORY[0x277D82BD8](fontAttributes2);
    MEMORY[0x277D82BD8](fontDescriptor2);
    MEMORY[0x277D82BD8](font2);
    MEMORY[0x277D82BD8](detail2);
    MEMORY[0x277D82BD8](text2);
    MEMORY[0x277D82BD8](detail);
    v9 = _UISolariumEnabled();
    v10 = 16.0;
    if ((v9 & 1) == 0)
    {
      v10 = 20.0;
    }

    v38 = fmax(v32 + v31 + v10, v38);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  v12 = v38;
  objc_storeStrong(location, 0);
  return v12;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v42[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v39 = 0;
  objc_storeStrong(&v39, path);
  v14 = location[0];
  v15 = +[CPSRouteRowCell identifier];
  v38 = [v14 dequeueReusableCellWithIdentifier:? forIndexPath:?];
  *&v4 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  contentView = [v38 contentView];
  subviews = [contentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];
  MEMORY[0x277D82BD8](subviews);
  *&v5 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
  [v38 setSelectionStyle:{0, v5}];
  routeRowViews = [(CPSAlternateRoutesView *)selfCopy routeRowViews];
  v37 = -[NSMutableArray objectAtIndex:](routeRowViews, "objectAtIndex:", [v39 item]);
  *&v6 = MEMORY[0x277D82BD8](routeRowViews).n128_u64[0];
  contentView2 = [v38 contentView];
  [contentView2 addSubview:v37];
  *&v7 = MEMORY[0x277D82BD8](contentView2).n128_u64[0];
  v20 = v38;
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v20 setBackgroundColor:?];
  MEMORY[0x277D82BD8](clearColor);
  UIEdgeInsetsMake_0();
  [v38 setSeparatorInset:{v8, v9, v10, v11}];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = MEMORY[0x277CCAAD0];
  topAnchor = [v37 topAnchor];
  topAnchor2 = [v38 topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:?];
  v42[0] = v33;
  leadingAnchor = [v37 leadingAnchor];
  leadingAnchor2 = [v38 leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:?];
  v42[1] = v30;
  trailingAnchor = [v37 trailingAnchor];
  trailingAnchor2 = [v38 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:?];
  v42[2] = v27;
  bottomAnchor = [v37 bottomAnchor];
  bottomAnchor2 = [v38 bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:?];
  v42[3] = v24;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v22 activateConstraints:?];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  v36 = MEMORY[0x277D82BE0](v38);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);

  return v36;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  routeRowViews = [(CPSAlternateRoutesView *)selfCopy routeRowViews];
  v6 = [(NSMutableArray *)routeRowViews count];
  MEMORY[0x277D82BD8](routeRowViews);
  objc_storeStrong(location, 0);
  return v6;
}

- (CPSAlternateRouteSelecting)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end