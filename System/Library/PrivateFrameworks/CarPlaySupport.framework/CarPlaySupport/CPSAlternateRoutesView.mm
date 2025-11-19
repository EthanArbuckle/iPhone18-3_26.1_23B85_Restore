@interface CPSAlternateRoutesView
- (CPSAlternateRouteSelecting)selectionDelegate;
- (CPSAlternateRoutesView)initWithFrame:(CGRect)a3;
- (double)_calculateHeightForCellAtIndexPath:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_linearFocusItems;
- (id)preferredFocusEnvironments;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_handlePanGesture:(id)a3;
- (void)didSelectRow:(id)a3 representingRouteChoice:(id)a4;
- (void)setAvailableRouteChoices:(id)a3;
- (void)setIndexForSelectedRoute:(unint64_t)a3;
@end

@implementation CPSAlternateRoutesView

- (CPSAlternateRoutesView)initWithFrame:(CGRect)a3
{
  v51[4] = *MEMORY[0x277D85DE8];
  v50 = a3;
  v48 = a2;
  v49 = 0;
  v47.receiver = self;
  v47.super_class = CPSAlternateRoutesView;
  v49 = [(CPSAlternateRoutesView *)&v47 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v16 = [(CPSAlternateRoutesView *)v49 scrollView];
    [(CPSAlternateRoutesScrollView *)v16 setDataSource:v15];
    *&v5 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    v17 = v49;
    v18 = [(CPSAlternateRoutesView *)v49 scrollView];
    [(CPSAlternateRoutesScrollView *)v18 setDelegate:v17];
    *&v6 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    v21 = [(CPSAlternateRoutesView *)v49 scrollView];
    v19 = objc_opt_class();
    v20 = +[CPSRouteRowCell identifier];
    [(CPSAlternateRoutesScrollView *)v21 registerClass:v19 forCellReuseIdentifier:?];
    MEMORY[0x277D82BD8](v20);
    *&v7 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    v22 = [(CPSAlternateRoutesView *)v49 scrollView];
    [(CPSAlternateRoutesScrollView *)v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v8 = MEMORY[0x277D82BD8](v22).n128_u64[0];
    v23 = v49;
    v24 = [(CPSAlternateRoutesView *)v49 scrollView];
    [(CPSAlternateRoutesView *)v23 addSubview:?];
    *&v9 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    v26 = [(CPSAlternateRoutesView *)v49 scrollView];
    v25 = [MEMORY[0x277D75348] clearColor];
    [(CPSAlternateRoutesScrollView *)v26 setBackgroundColor:?];
    MEMORY[0x277D82BD8](v25);
    *&v10 = MEMORY[0x277D82BD8](v26).n128_u64[0];
    v27 = MEMORY[0x277CCAAD0];
    v45 = [(CPSAlternateRoutesView *)v49 scrollView];
    v44 = [(CPSAlternateRoutesScrollView *)v45 topAnchor];
    v43 = [(CPSAlternateRoutesView *)v49 safeAreaLayoutGuide];
    v42 = [v43 topAnchor];
    v41 = [v44 constraintEqualToAnchor:4.0 constant:?];
    v51[0] = v41;
    v40 = [(CPSAlternateRoutesView *)v49 scrollView];
    v39 = [(CPSAlternateRoutesScrollView *)v40 leadingAnchor];
    v38 = [(CPSAlternateRoutesView *)v49 leadingAnchor];
    v37 = [v39 constraintEqualToAnchor:?];
    v51[1] = v37;
    v36 = [(CPSAlternateRoutesView *)v49 scrollView];
    v35 = [(CPSAlternateRoutesScrollView *)v36 trailingAnchor];
    v34 = [(CPSAlternateRoutesView *)v49 trailingAnchor];
    v33 = [v35 constraintEqualToAnchor:?];
    v51[2] = v33;
    v32 = [(CPSAlternateRoutesView *)v49 scrollView];
    v31 = [(CPSAlternateRoutesScrollView *)v32 bottomAnchor];
    v30 = [(CPSAlternateRoutesView *)v49 bottomAnchor];
    v29 = [v31 constraintEqualToAnchor:?];
    v51[3] = v29;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
    [v27 activateConstraints:?];
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
    v11 = objc_alloc(MEMORY[0x277D757F8]);
    v46 = [v11 initWithTarget:v49 action:sel__handlePanGesture_];
    [(CPSAlternateRoutesView *)v49 addGestureRecognizer:v46];
    objc_storeStrong(&v46, 0);
  }

  v13 = MEMORY[0x277D82BE0](v49);
  objc_storeStrong(&v49, 0);
  return v13;
}

- (void)_handlePanGesture:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] translationInView:v20];
  v18 = v3;
  v11 = [(CPSAlternateRoutesView *)v20 scrollView];
  [(CPSAlternateRoutesScrollView *)v11 contentOffset];
  v16 = v4;
  v17 = v5;
  MEMORY[0x277D82BD8](v11);
  v14 = [(CPSAlternateRoutesView *)v20 scrollView];
  [(CPSAlternateRoutesScrollView *)v14 contentSize];
  v13 = v6;
  v12 = [(CPSAlternateRoutesView *)v20 scrollView];
  [(CPSAlternateRoutesScrollView *)v12 bounds];
  v15 = v13 - v7;
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v14);
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

  v8 = [(CPSAlternateRoutesView *)v20 scrollView];
  [(CPSAlternateRoutesScrollView *)v8 setContentOffset:v16, v9];
  MEMORY[0x277D82BD8](v8);
  [location[0] setTranslation:v20 inView:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  objc_storeStrong(location, 0);
}

- (void)setAvailableRouteChoices:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] count] <= 3)
  {
    objc_storeStrong(&v16->_availableRouteChoices, location[0]);
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
    objc_storeStrong(&v16->_availableRouteChoices, v14);
    objc_storeStrong(&v14, 0);
  }

  v5 = objc_opt_new();
  [(CPSAlternateRoutesView *)v16 setRouteRowViews:?];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = [(CPSAlternateRoutesView *)v16 availableRouteChoices];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __51__CPSAlternateRoutesView_setAvailableRouteChoices___block_invoke;
  v12 = &unk_278D925A8;
  v13[0] = MEMORY[0x277D82BE0](v16);
  [(NSArray *)v6 enumerateObjectsUsingBlock:&v8];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = [(CPSAlternateRoutesView *)v16 scrollView];
  [(CPSAlternateRoutesScrollView *)v7 reloadData];
  MEMORY[0x277D82BD8](v7);
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

- (void)setIndexForSelectedRoute:(unint64_t)a3
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  self->_indexForSelectedRoute = a3;
  v5 = [(CPSAlternateRoutesView *)v19 availableRouteChoices];
  v14 = 0;
  v12 = 0;
  if (v17 >= [(NSArray *)v5 count])
  {
    v3 = MEMORY[0x277D82BE0](0);
  }

  else
  {
    v15 = [(CPSAlternateRoutesView *)v19 availableRouteChoices];
    v14 = 1;
    v13 = [(NSArray *)v15 objectAtIndex:v17];
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
    MEMORY[0x277D82BD8](v15);
  }

  v4 = [(CPSAlternateRoutesView *)v19 routeRowViews];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __51__CPSAlternateRoutesView_setIndexForSelectedRoute___block_invoke;
  v10 = &unk_278D913C0;
  v11 = MEMORY[0x277D82BE0](v16);
  [(NSMutableArray *)v4 enumerateObjectsUsingBlock:&v6];
  MEMORY[0x277D82BD8](v4);
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

- (void)didSelectRow:(id)a3 representingRouteChoice:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v7 = [(CPSAlternateRoutesView *)v14 availableRouteChoices];
  v8 = [(NSArray *)v7 indexOfObjectIdenticalTo:v12];
  *&v4 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v11 = v8;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(CPSAlternateRoutesView *)v14 setIndexForSelectedRoute:v11, v4];
    v10 = [(CPSAlternateRoutesView *)v14 selectionDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v10 alternateRoutesView:v14 didSelectRouteChoice:v12];
    }

    v9 = [MEMORY[0x277CCAA70] indexPathForRow:v11 inSection:0];
    v5 = [(CPSAlternateRoutesView *)v14 scrollView];
    [(CPSAlternateRoutesScrollView *)v5 selectRowAtIndexPath:v9 animated:1 scrollPosition:2];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)preferredFocusEnvironments
{
  v5[1] = *MEMORY[0x277D85DE8];
  v3 = [(CPSAlternateRoutesView *)self scrollView];
  v5[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)_linearFocusItems
{
  v7 = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [(CPSAlternateRoutesView *)v7 routeRowViews];
  v5 = MEMORY[0x277D82BE0](v6[0]);
  [(NSMutableArray *)v3 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v3);
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

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [(CPSAlternateRoutesView *)v9 _calculateHeightForCellAtIndexPath:v7];
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

- (double)_calculateHeightForCellAtIndexPath:(id)a3
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 44.0;
  for (i = 0; ; ++i)
  {
    v30 = i;
    v28 = [(CPSAlternateRoutesView *)v40 routeRowViews];
    v29 = [(NSMutableArray *)v28 count];
    *&v3 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    if (v30 >= v29)
    {
      break;
    }

    v36 = [MEMORY[0x277CCAA70] indexPathForRow:i inSection:{0, v3}];
    v13 = [(CPSAlternateRoutesView *)v40 routeRowViews];
    v35 = -[NSMutableArray objectAtIndex:](v13, "objectAtIndex:", [v36 item]);
    *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v15 = [(CPSAlternateRoutesView *)v40 scrollView];
    [(CPSAlternateRoutesScrollView *)v15 frame];
    v14 = [(CPSAlternateRoutesView *)v40 scrollView];
    [(CPSAlternateRoutesScrollView *)v14 frame];
    CGSizeMake_5();
    v33 = v5;
    v34 = v6;
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    v21 = [v35 title];
    v20 = [v21 text];
    v19 = [v35 title];
    v18 = [v19 font];
    v17 = [v18 fontDescriptor];
    v16 = [v17 fontAttributes];
    [v20 boundingRectWithSize:v33 options:v34 attributes:? context:?];
    v32 = v7;
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    v27 = [v35 detail];
    v26 = [v27 text];
    v25 = [v35 detail];
    v24 = [v25 font];
    v23 = [v24 fontDescriptor];
    v22 = [v23 fontAttributes];
    [v26 boundingRectWithSize:3 options:v33 attributes:v34 context:?];
    v31 = v8;
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v42[4] = *MEMORY[0x277D85DE8];
  v41 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v39 = 0;
  objc_storeStrong(&v39, a4);
  v14 = location[0];
  v15 = +[CPSRouteRowCell identifier];
  v38 = [v14 dequeueReusableCellWithIdentifier:? forIndexPath:?];
  *&v4 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  v17 = [v38 contentView];
  v16 = [v17 subviews];
  [v16 makeObjectsPerformSelector:sel_removeFromSuperview];
  MEMORY[0x277D82BD8](v16);
  *&v5 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  [v38 setSelectionStyle:{0, v5}];
  v18 = [(CPSAlternateRoutesView *)v41 routeRowViews];
  v37 = -[NSMutableArray objectAtIndex:](v18, "objectAtIndex:", [v39 item]);
  *&v6 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v19 = [v38 contentView];
  [v19 addSubview:v37];
  *&v7 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v20 = v38;
  v21 = [MEMORY[0x277D75348] clearColor];
  [v20 setBackgroundColor:?];
  MEMORY[0x277D82BD8](v21);
  UIEdgeInsetsMake_0();
  [v38 setSeparatorInset:{v8, v9, v10, v11}];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = MEMORY[0x277CCAAD0];
  v35 = [v37 topAnchor];
  v34 = [v38 topAnchor];
  v33 = [v35 constraintEqualToAnchor:?];
  v42[0] = v33;
  v32 = [v37 leadingAnchor];
  v31 = [v38 leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:?];
  v42[1] = v30;
  v29 = [v37 trailingAnchor];
  v28 = [v38 trailingAnchor];
  v27 = [v29 constraintEqualToAnchor:?];
  v42[2] = v27;
  v26 = [v37 bottomAnchor];
  v25 = [v38 bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:?];
  v42[3] = v24;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v22 activateConstraints:?];
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
  v36 = MEMORY[0x277D82BE0](v38);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);

  return v36;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(CPSAlternateRoutesView *)v8 routeRowViews];
  v6 = [(NSMutableArray *)v5 count];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
  return v6;
}

- (CPSAlternateRouteSelecting)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end