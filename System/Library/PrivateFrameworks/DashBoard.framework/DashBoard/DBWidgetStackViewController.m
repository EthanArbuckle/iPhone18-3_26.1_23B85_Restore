@interface DBWidgetStackViewController
- (id)linearFocusItems;
- (unint64_t)visibleCount;
- (void)_reloadConstraints;
- (void)_setAnchorPoint:(CGPoint)a3 forView:(id)a4;
- (void)animateUpdateForWidgetViewController:(id)a3 withOldUserInterfaceStyle:(int64_t)a4 newUserInterfaceStyle:(int64_t)a5 updateBlock:(id)a6 completion:(id)a7;
- (void)animateWithUpdates:(id)a3 completion:(id)a4;
- (void)setWidgetViewControllers:(id)a3;
- (void)viewDidLoad;
@end

@implementation DBWidgetStackViewController

- (void)_reloadConstraints
{
  v2 = self;
  v3 = [(DBWidgetStackViewController *)self currentConstraints];

  if (v3)
  {
    v4 = MEMORY[0x277CCAAD0];
    v5 = [(DBWidgetStackViewController *)v2 currentConstraints];
    [v4 deactivateConstraints:v5];

    [(DBWidgetStackViewController *)v2 setCurrentConstraints:0];
  }

  v6 = objc_opt_new();
  v48 = objc_opt_new();
  v47 = objc_opt_new();
  v7 = [(DBWidgetStackViewController *)v2 widgetViewControllers];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    v49 = v2;
    v50 = 0;
    v10 = 0;
    do
    {
      v11 = [(DBWidgetStackViewController *)v2 widgetViewControllers];
      v12 = [v11 objectAtIndexedSubscript:v10];

      LODWORD(v11) = [v12 isHidden];
      v13 = [v12 view];
      v14 = [v13 topAnchor];
      if (v11)
      {
        if (v9)
        {
          v15 = [v9 view];
          [v15 bottomAnchor];
        }

        else
        {
          v15 = [(DBWidgetStackViewController *)v2 view];
          [v15 topAnchor];
        }
        v18 = ;
        v19 = [v14 constraintEqualToAnchor:v18];
        [v6 addObject:v19];

        v20 = [v12 view];
        v21 = [v20 heightAnchor];
        v22 = [v21 constraintEqualToConstant:0.0];
        [v6 addObject:v22];
      }

      else
      {
        if (v50)
        {
          v16 = [v50 view];
          v17 = [v16 bottomAnchor];
          [v14 constraintEqualToAnchor:v17 constant:4.0];
        }

        else
        {
          v16 = [(DBWidgetStackViewController *)v49 view];
          v17 = [v16 topAnchor];
          [v14 constraintEqualToAnchor:v17];
        }
        v23 = ;
        [v6 addObject:v23];

        if ([v12 wantsLargeSize])
        {
          v24 = v47;
        }

        else
        {
          v24 = v48;
        }

        [v24 addObject:v12];
        v20 = v50;
        v50 = v12;
        v2 = v49;
      }

      v25 = [v12 view];
      v26 = [v25 leadingAnchor];
      v27 = [(DBWidgetStackViewController *)v2 view];
      v28 = [v27 leadingAnchor];
      v29 = [v26 constraintEqualToAnchor:v28];
      [v6 addObject:v29];

      v30 = [v12 view];
      v31 = [v30 trailingAnchor];
      v32 = [(DBWidgetStackViewController *)v2 view];
      v33 = [v32 trailingAnchor];
      v34 = [v31 constraintEqualToAnchor:v33];
      [v6 addObject:v34];

      ++v10;
      v35 = [(DBWidgetStackViewController *)v2 widgetViewControllers];
      v36 = [v35 count];

      v9 = v12;
    }

    while (v10 < v36);
  }

  else
  {
    v50 = 0;
    v12 = 0;
  }

  v37 = [v48 firstObject];
  if (v37)
  {
    v38 = [(DBWidgetStackViewController *)v2 widgetViewControllers];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __49__DBWidgetStackViewController__reloadConstraints__block_invoke;
    v54[3] = &unk_278F02CD0;
    v55 = v37;
    v56 = v6;
    [v38 enumerateObjectsUsingBlock:v54];

    v39 = v55;
  }

  else
  {
    v40 = [v47 firstObject];
    v41 = [(DBWidgetStackViewController *)v2 widgetViewControllers];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __49__DBWidgetStackViewController__reloadConstraints__block_invoke_2;
    v51[3] = &unk_278F02CD0;
    v52 = v40;
    v53 = v6;
    v39 = v40;
    [v41 enumerateObjectsUsingBlock:v51];
  }

  if (v12)
  {
    v42 = [(DBWidgetStackViewController *)v2 view];
    v43 = [v42 bottomAnchor];
    v44 = [v12 view];
    v45 = [v44 bottomAnchor];
    v46 = [v43 constraintEqualToAnchor:v45];
    [v6 addObject:v46];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v6];
  [(DBWidgetStackViewController *)v2 setCurrentConstraints:v6];
}

void __49__DBWidgetStackViewController__reloadConstraints__block_invoke(uint64_t a1, void *a2)
{
  v23 = a2;
  if (([v23 isHidden] & 1) == 0 && *(a1 + 32) != v23)
  {
    if ([v23 wantsLargeSize])
    {
      v3 = 2.0;
    }

    else
    {
      v3 = 1.0;
    }

    if ([v23 wantsLargeSize])
    {
      v4 = 8.0;
    }

    else
    {
      v4 = 0.0;
    }

    v5 = [v23 view];
    v6 = [v5 heightAnchor];
    v7 = [*(a1 + 32) view];
    v8 = [v7 heightAnchor];
    v9 = [v6 constraintEqualToAnchor:v8 multiplier:v3 constant:v4];

    LODWORD(v10) = 1144750080;
    [v9 setPriority:v10];
    [*(a1 + 40) addObject:v9];
    [v23 minimumHeight];
    if (v11 > 0.0)
    {
      v12 = v11;
      v13 = [v23 view];
      v14 = [v13 heightAnchor];
      v15 = [v14 constraintGreaterThanOrEqualToConstant:v12];

      LODWORD(v16) = 1148846080;
      [v15 setPriority:v16];
      [*(a1 + 40) addObject:v15];
    }

    [v23 maximumHeight];
    v18 = v17;
    v19 = [v23 view];
    v20 = [v19 heightAnchor];
    v21 = [v20 constraintLessThanOrEqualToConstant:v18];

    LODWORD(v22) = 1148846080;
    [v21 setPriority:v22];
    [*(a1 + 40) addObject:v21];
  }
}

- (unint64_t)visibleCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(DBWidgetStackViewController *)self widgetViewControllers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__DBWidgetStackViewController_visibleCount__block_invoke;
  v5[3] = &unk_278F02CA8;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __43__DBWidgetStackViewController_visibleCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isHidden];
  if ((result & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (void)setWidgetViewControllers:(id)a3
{
  v5 = a3;
  if (([v5 isEqualToArray:self->_widgetViewControllers] & 1) == 0)
  {
    [(NSArray *)self->_widgetViewControllers enumerateObjectsUsingBlock:&__block_literal_global_9];
    objc_storeStrong(&self->_widgetViewControllers, a3);
    widgetViewControllers = self->_widgetViewControllers;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__DBWidgetStackViewController_setWidgetViewControllers___block_invoke_2;
    v7[3] = &unk_278F02BC0;
    v7[4] = self;
    [(NSArray *)widgetViewControllers enumerateObjectsUsingBlock:v7];
    [(DBWidgetStackViewController *)self _reloadConstraints];
  }
}

void __56__DBWidgetStackViewController_setWidgetViewControllers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 willMoveToParentViewController:0];
  v2 = [v3 view];
  [v2 removeFromSuperview];

  [v3 removeFromParentViewController];
}

void __56__DBWidgetStackViewController_setWidgetViewControllers___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addChildViewController:v4];
  v5 = [*(a1 + 32) view];
  v6 = [v4 view];
  [v5 addSubview:v6];

  [v4 didMoveToParentViewController:*(a1 + 32)];
  v7 = [v4 view];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)animateWithUpdates:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(DBWidgetStackViewController *)self widgetViewControllers];
  v9 = [v8 db_map:&__block_literal_global_20];

  if (v6)
  {
    v6[2](v6);
  }

  v10 = [(DBWidgetStackViewController *)self widgetViewControllers];
  v11 = [v10 db_map:&__block_literal_global_20];

  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = [v9 count];
  if (v12 == [v11 count])
  {
    v42.a = 0.0;
    *&v42.b = &v42;
    *&v42.c = 0x2020000000;
    LOBYTE(v42.d) = 0;
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_2;
    v47[3] = &unk_278F02C08;
    v13 = v11;
    v48 = v13;
    v49 = &v42;
    [v9 enumerateObjectsUsingBlock:v47];
    if ((*(*&v42.b + 24) & 1) == 0)
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_3;
      v44[3] = &unk_278F02C08;
      v45 = v13;
      v46 = &v50;
      [v9 enumerateObjectsUsingBlock:v44];
    }

    _Block_object_dispose(&v42, 8);
  }

  if (v51[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = MEMORY[0x277D75D18];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_8;
    v32[3] = &unk_278F01580;
    v32[4] = self;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_10;
    v30[3] = &unk_278F02C58;
    v31 = v7;
    [v14 _animateUsingSpringWithDuration:0 delay:v32 options:v30 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:350.0 animations:42.0 completion:0.0];
  }

  else
  {
    v15 = [v9 objectAtIndexedSubscript:?];
    v16 = [v15 view];

    v17 = [v11 objectAtIndexedSubscript:v51[3]];
    v18 = [v17 view];

    v19 = [v16 snapshotViewAfterScreenUpdates:0];
    v20 = [(DBWidgetStackViewController *)self view];
    [v20 addSubview:v19];

    [v16 frame];
    [v19 setFrame:?];
    v21 = [v19 layer];
    v22 = *MEMORY[0x277CDA2E0];
    [v21 setMinificationFilter:*MEMORY[0x277CDA2E0]];

    v23 = [v19 layer];
    [v23 setMagnificationFilter:v22];

    [v16 setAlpha:0.0];
    [(DBWidgetStackViewController *)self _reloadConstraints];
    v24 = [(DBWidgetStackViewController *)self view];
    [v24 layoutIfNeeded];

    [(DBWidgetStackViewController *)self _setAnchorPoint:v19 forView:0.5, 0.0];
    [(DBWidgetStackViewController *)self _setAnchorPoint:v18 forView:0.5, 1.0];
    CGAffineTransformMakeScale(&v43, 0.01, 0.01);
    v25 = [v18 layer];
    v42 = v43;
    [v25 setAffineTransform:&v42];

    [v18 setAlpha:0.0];
    v26 = MEMORY[0x277D75D18];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_4;
    v40[3] = &unk_278F01580;
    v41 = v18;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_5;
    v37[3] = &unk_278F02C30;
    v27 = v41;
    v38 = v27;
    v39 = v7;
    [v26 _animateUsingSpringWithDuration:0 delay:v40 options:v37 mass:0.78 stiffness:0.02 damping:2.0 initialVelocity:350.0 animations:42.0 completion:0.0];
    v28 = MEMORY[0x277D75D18];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_6;
    v35[3] = &unk_278F01580;
    v36 = v19;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_7;
    v33[3] = &unk_278F01690;
    v29 = v36;
    v34 = v29;
    [v28 _animateUsingSpringWithDuration:0 delay:v35 options:v33 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:350.0 animations:42.0 completion:0.0];
  }

  _Block_object_dispose(&v50, 8);
}

id __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHidden])
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_new();
    v4 = [v2 view];
    [v3 setView:v4];

    [v3 setWantsLargeSize:{objc_msgSend(v2, "wantsLargeSize")}];
  }

  return v3;
}

void __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectAtIndexedSubscript:a3];
  LODWORD(a3) = [v8 wantsLargeSize];

  if (a3 != [v9 wantsLargeSize])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v11 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 view];

  v10 = [v11 view];

  if (v9 != v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }
}

uint64_t __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_4(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) layer];
  v4 = v5;
  [v2 setAffineTransform:&v4];

  return [*(a1 + 32) setAlpha:1.0];
}

uint64_t __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setAnchorPoint:{0.5, 0.5}];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_6(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.01, 0.01);
  v2 = [*(a1 + 32) layer];
  v4 = v5;
  [v2 setAffineTransform:&v4];

  return [*(a1 + 32) setAlpha:0.0];
}

void __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) _reloadConstraints];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];

  v3 = [*(a1 + 32) widgetViewControllers];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_26];
}

void __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isHidden])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [v2 view];

  [v4 setAlpha:v3];
}

uint64_t __61__DBWidgetStackViewController_animateWithUpdates_completion___block_invoke_10(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)animateUpdateForWidgetViewController:(id)a3 withOldUserInterfaceStyle:(int64_t)a4 newUserInterfaceStyle:(int64_t)a5 updateBlock:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v36 = a7;
  v14 = [v12 snapshotViewAfterScreenUpdates:0];
  [v14 setOverrideUserInterfaceStyle:a4];
  v38 = [MEMORY[0x277D75210] effectWithBlurRadius:20.0];
  v15 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
  [v14 bounds];
  [v15 setFrame:?];
  v16 = [v14 layer];
  [v16 setMasksToBounds:1];

  [v14 addSubview:v15];
  v17 = [(DBWidgetStackViewController *)self view];
  [v17 addSubview:v14];

  v18 = [v12 view];
  [v18 frame];
  [v14 setFrame:?];

  if (v13)
  {
    v13[2](v13);
  }

  [v12 snapshotViewAfterScreenUpdates:1];
  v19 = v37 = v13;
  [v19 setOverrideUserInterfaceStyle:a5];
  v20 = [MEMORY[0x277D75210] effectWithBlurRadius:20.0];
  v21 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v20];
  [v19 bounds];
  [v21 setFrame:?];
  [v19 addSubview:v21];
  v22 = [v19 layer];
  [v22 setMasksToBounds:1];

  v23 = [(DBWidgetStackViewController *)self view];
  [v23 addSubview:v19];

  v24 = [v12 view];
  [v24 frame];
  [v19 setFrame:?];

  CGAffineTransformMakeScale(&v53, 0.8, 0.8);
  v25 = [v19 layer];
  v52 = v53;
  [v25 setAffineTransform:&v52];

  [v19 setAlpha:0.0];
  v26 = [v12 view];
  [v26 setHidden:1];

  v27 = MEMORY[0x277D75D18];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __139__DBWidgetStackViewController_animateUpdateForWidgetViewController_withOldUserInterfaceStyle_newUserInterfaceStyle_updateBlock_completion___block_invoke;
  v49[3] = &unk_278F014B8;
  v50 = v19;
  v51 = v21;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __139__DBWidgetStackViewController_animateUpdateForWidgetViewController_withOldUserInterfaceStyle_newUserInterfaceStyle_updateBlock_completion___block_invoke_2;
  v45[3] = &unk_278F02C80;
  v46 = v50;
  v47 = v12;
  v48 = v36;
  v28 = v36;
  v29 = v12;
  v30 = v50;
  v31 = v21;
  [v27 _animateUsingSpringWithDuration:0 delay:v49 options:v45 mass:0.6 stiffness:0.02 damping:2.0 initialVelocity:219.325 animations:33.51 completion:0.0];
  v32 = MEMORY[0x277D75D18];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __139__DBWidgetStackViewController_animateUpdateForWidgetViewController_withOldUserInterfaceStyle_newUserInterfaceStyle_updateBlock_completion___block_invoke_3;
  v41[3] = &unk_278F015F8;
  v42 = v14;
  v43 = v15;
  v44 = v38;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __139__DBWidgetStackViewController_animateUpdateForWidgetViewController_withOldUserInterfaceStyle_newUserInterfaceStyle_updateBlock_completion___block_invoke_4;
  v39[3] = &unk_278F01690;
  v40 = v42;
  v33 = v42;
  v34 = v38;
  v35 = v15;
  [v32 _animateUsingSpringWithDuration:0 delay:v41 options:v39 mass:0.6 stiffness:0.0 damping:2.0 initialVelocity:219.325 animations:33.51 completion:0.0];
}

uint64_t __139__DBWidgetStackViewController_animateUpdateForWidgetViewController_withOldUserInterfaceStyle_newUserInterfaceStyle_updateBlock_completion___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) layer];
  v4 = v5;
  [v2 setAffineTransform:&v4];

  [*(a1 + 32) setAlpha:1.0];
  return [*(a1 + 40) setEffect:0];
}

uint64_t __139__DBWidgetStackViewController_animateUpdateForWidgetViewController_withOldUserInterfaceStyle_newUserInterfaceStyle_updateBlock_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = [*(a1 + 40) view];
  [v2 setHidden:0];

  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __139__DBWidgetStackViewController_animateUpdateForWidgetViewController_withOldUserInterfaceStyle_newUserInterfaceStyle_updateBlock_completion___block_invoke_3(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 0.8, 0.8);
  v2 = [*(a1 + 32) layer];
  v4 = v5;
  [v2 setAffineTransform:&v4];

  [*(a1 + 32) setAlpha:0.0];
  return [*(a1 + 40) setEffect:*(a1 + 48)];
}

- (id)linearFocusItems
{
  v3 = objc_opt_new();
  v4 = [(DBWidgetStackViewController *)self widgetViewControllers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__DBWidgetStackViewController_linearFocusItems__block_invoke;
  v7[3] = &unk_278F02BC0;
  v5 = v3;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __47__DBWidgetStackViewController_linearFocusItems__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isHidden] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v5 linearFocusItems];
    [v3 addObjectsFromArray:v4];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = DBWidgetStackViewController;
  [(DBWidgetStackViewController *)&v5 viewDidLoad];
  v3 = [(DBWidgetStackViewController *)self widgetViewControllers];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__DBWidgetStackViewController_viewDidLoad__block_invoke;
  v4[3] = &unk_278F02BC0;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];

  [(DBWidgetStackViewController *)self _reloadConstraints];
}

void __42__DBWidgetStackViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addChildViewController:v4];
  v5 = [*(a1 + 32) view];
  v6 = [v4 view];
  [v5 addSubview:v6];

  [v4 didMoveToParentViewController:*(a1 + 32)];
  v7 = [v4 view];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
}

uint64_t __49__DBWidgetStackViewController__reloadConstraints__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = a2;
  if (([v16 isHidden] & 1) == 0 && *(a1 + 32) != v16)
  {
    v3 = [v16 view];
    v4 = [v3 heightAnchor];
    v5 = [*(a1 + 32) view];
    v6 = [v5 heightAnchor];
    v7 = [v4 constraintEqualToAnchor:v6 multiplier:1.0];

    LODWORD(v8) = 1144750080;
    [v7 setPriority:v8];
    [*(a1 + 40) addObject:v7];
    [v16 minimumHeight];
    if (v9 > 0.0)
    {
      v10 = v9;
      v11 = [v16 view];
      v12 = [v11 heightAnchor];
      v13 = [v12 constraintGreaterThanOrEqualToConstant:v10];

      LODWORD(v14) = 1148846080;
      [v13 setPriority:v14];
      [*(a1 + 40) addObject:v13];
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_setAnchorPoint:(CGPoint)a3 forView:(id)a4
{
  y = a3.y;
  x = a3.x;
  v5 = a4;
  [v5 bounds];
  v7 = v6;
  [v5 bounds];
  v41 = v8;
  [v5 bounds];
  v42 = v9;
  v10 = [v5 layer];
  [v10 anchorPoint];
  v40 = v11;
  [v5 bounds];
  v39 = v12;
  v13 = [v5 layer];
  [v13 anchorPoint];
  v38 = v14;

  if (v5)
  {
    [v5 transform];
    v15 = v44;
    v16 = v45;
    v17 = v46;
    v18 = v47;
    v19 = v48;
    v20 = v49;
    [v5 transform];
    v22 = v44;
    v21 = v45;
    v24 = v46;
    v23 = v47;
    v26 = v48;
    v25 = v49;
  }

  else
  {
    v15 = 0.0;
    v17 = 0.0;
    v19 = 0.0;
    v16 = 0.0;
    v18 = 0.0;
    v20 = 0.0;
    v25 = 0.0;
    v23 = 0.0;
    v21 = 0.0;
    v26 = 0.0;
    v24 = 0.0;
    v22 = 0.0;
  }

  v27 = v20 + y * v41 * v18 + v16 * (x * v7);
  v28 = v19 + y * v41 * v17 + v15 * (x * v7);
  v29 = v26 + v39 * v38 * v24 + v22 * (v42 * v40);
  v30 = v25 + v39 * v38 * v23 + v21 * (v42 * v40);
  v31 = [v5 layer];
  [v31 position];
  v33 = v32;
  v35 = v34;

  v36 = [v5 layer];
  [v36 setPosition:{v28 + v33 - v29, v27 + v35 - v30}];

  v37 = [v5 layer];
  [v37 setAnchorPoint:{x, y}];
}

@end