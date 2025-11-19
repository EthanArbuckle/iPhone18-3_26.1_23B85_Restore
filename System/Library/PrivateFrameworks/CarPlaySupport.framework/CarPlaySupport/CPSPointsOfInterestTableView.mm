@interface CPSPointsOfInterestTableView
- (CPSPointsOfInterestTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)accessoryViewAtEdge:(int64_t)a3;
- (id)visibleCells;
- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4;
@end

@implementation CPSPointsOfInterestTableView

- (CPSPointsOfInterestTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v10 = a3;
  v8 = a2;
  v7 = a4;
  v9 = 0;
  v6.receiver = self;
  v6.super_class = CPSPointsOfInterestTableView;
  v9 = [(CPSPointsOfInterestTableView *)&v6 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    [(CPSPointsOfInterestTableView *)v9 setScrollEnabled:1];
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4
{
  v39[4] = *MEMORY[0x277D85DE8];
  v37 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = a4;
  v34.receiver = v37;
  v34.super_class = CPSPointsOfInterestTableView;
  [(CPSPointsOfInterestTableView *)&v34 setAccessoryView:location[0] atEdge:4];
  if (location[0])
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v33 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = 0;
    v29 = 0;
    if (_UISolariumEnabled())
    {
      v32 = [MEMORY[0x277D75348] clearColor];
      v31 = 1;
      v25 = v32;
    }

    else
    {
      v30 = [MEMORY[0x277D75348] tableBackgroundColor];
      v29 = 1;
      v25 = v30;
    }

    [v33 setBackgroundColor:v25];
    if (v29)
    {
      MEMORY[0x277D82BD8](v30);
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](v32);
    }

    [location[0] insertSubview:v33 atIndex:0];
    v9 = location[0];
    v22 = [v33 topAnchor];
    v21 = [location[0] topAnchor];
    v20 = [v22 constraintEqualToAnchor:?];
    v39[0] = v20;
    v19 = [v33 leftAnchor];
    v18 = [location[0] leftAnchor];
    v17 = [v19 constraintEqualToAnchor:?];
    v39[1] = v17;
    v16 = [v33 rightAnchor];
    v15 = [location[0] rightAnchor];
    v14 = [v16 constraintEqualToAnchor:?];
    v39[2] = v14;
    v13 = [v33 bottomAnchor];
    v12 = [location[0] bottomAnchor];
    v11 = [v13 constraintEqualToAnchor:?];
    v39[3] = v11;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
    [v9 addConstraints:?];
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
    memset(__b, 0, sizeof(__b));
    obj = [location[0] _CPS_recursiveSubviewsWithClass:objc_opt_class()];
    v24 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
    if (v24)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v24;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(__b[1] + 8 * v7);
        [v28 setCharge:0.0];
        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v38 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    objc_storeStrong(&v33, 0);
  }

  objc_storeStrong(location, 0);
}

- (id)accessoryViewAtEdge:(int64_t)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = CPSPointsOfInterestTableView;
  return [(CPSPointsOfInterestTableView *)&v4 accessoryViewAtEdge:4];
}

- (id)visibleCells
{
  v35 = self;
  v34[1] = a2;
  v33.receiver = self;
  v33.super_class = CPSPointsOfInterestTableView;
  v34[0] = [(CPSPointsOfInterestTableView *)&v33 visibleCells];
  if (v34[0] && [v34[0] count])
  {
    v30 = 0u;
    v31 = 0u;
    [(CPSPointsOfInterestTableView *)v35 frame];
    v26 = v2;
    v27 = v3;
    v28 = v4;
    v29 = v5;
    [(CPSPointsOfInterestTableView *)v35 _sectionContentInset];
    v25[9] = v6;
    v25[10] = v7;
    v25[11] = v8;
    v25[12] = v9;
    *&v30 = UIEdgeInsetsInsetRect(v26, v27, v28, v29, *&v6, *&v7);
    *(&v30 + 1) = v10;
    *&v31 = v11;
    *(&v31 + 1) = v12;
    [(CPSPointsOfInterestTableView *)v35 contentOffset];
    v25[3] = v13;
    v25[4] = v14;
    [(CPSPointsOfInterestTableView *)v35 contentOffset];
    v25[1] = v15;
    v25[2] = v16;
    CGRectMake_6();
    v25[5] = v17;
    v25[6] = v18;
    v25[7] = v19;
    v25[8] = v20;
    v23 = v34[0];
    v24 = [v34[0] indexesOfObjectsPassingTest:?];
    v25[0] = [v23 objectsAtIndexes:?];
    MEMORY[0x277D82BD8](v24);
    v36 = MEMORY[0x277D82BE0](v25[0]);
    v32 = 1;
    objc_storeStrong(v25, 0);
  }

  else
  {
    v36 = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
    v32 = 1;
  }

  objc_storeStrong(v34, 0);
  v21 = v36;

  return v21;
}

BOOL __44__CPSPointsOfInterestTableView_visibleCells__block_invoke(CGRect *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] frame];
  v4 = CGRectIntersectsRect(v6, a1[1]);
  objc_storeStrong(location, 0);
  return v4;
}

@end