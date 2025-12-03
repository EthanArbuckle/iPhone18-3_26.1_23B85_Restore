@interface SUUIOnboardingAffiliationCirclesViewController
- (CGSize)_circleSizeForAffinityCount:(int64_t)count;
- (SUUIOnboardingAffiliationCirclesDelegate)delegate;
- (SUUIOnboardingInstructionsView)instructionsView;
- (double)_circleImageAlphaForAffinityCount:(int64_t)count;
- (double)_topLayoutMargin;
- (double)maximumCircleDiameter;
- (id)circlesView:(id)view circleForIndex:(int64_t)index;
- (void)_cancelDeletionTimer;
- (void)_completeDeletionForCircleAtIndex:(int64_t)index;
- (void)_reloadRepellors;
- (void)_sendAffilationItemsDidChange;
- (void)addAffiliationItems:(id)items;
- (void)circleView:(id)view didBeginLongPressForCircleAtIndex:(int64_t)index;
- (void)circleView:(id)view didEndLongPressForCircleAtIndex:(int64_t)index;
- (void)circleView:(id)view didTapCircleAtIndex:(int64_t)index;
- (void)dealloc;
- (void)loadView;
- (void)performFinishAnimationWithCompletionBlock:(id)block;
- (void)removeAffiliationItemsInIndexSet:(id)set animated:(BOOL)animated completionBlock:(id)block;
- (void)resetWithAffiliationItems:(id)items animated:(BOOL)animated completionBlock:(id)block;
- (void)setAffiliationItems:(id)items;
- (void)setFooterView:(id)view animated:(BOOL)animated;
- (void)setImage:(id)image forAffiliationItem:(id)item;
- (void)setUserAffinityCount:(int64_t)count forAffiliationItemAtIndex:(int64_t)index animated:(BOOL)animated completionBlock:(id)block;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SUUIOnboardingAffiliationCirclesViewController

- (void)dealloc
{
  deletionTimer = self->_deletionTimer;
  if (deletionTimer)
  {
    dispatch_source_cancel(deletionTimer);
  }

  [(SUUIPhysicalCirclesView *)self->_circlesView setDataSource:0];
  [(SUUIPhysicalCirclesView *)self->_circlesView setDelegate:0];
  v4.receiver = self;
  v4.super_class = SUUIOnboardingAffiliationCirclesViewController;
  [(SUUIOnboardingAffiliationCirclesViewController *)&v4 dealloc];
}

- (void)addAffiliationItems:(id)items
{
  affiliationItems = self->_affiliationItems;
  itemsCopy = items;
  [(NSMutableArray *)affiliationItems addObjectsFromArray:itemsCopy];
  circlesView = self->_circlesView;
  v7 = [itemsCopy count];

  [(SUUIPhysicalCirclesView *)circlesView addCirclesWithCount:v7];
}

- (SUUIOnboardingInstructionsView)instructionsView
{
  instructionsView = self->_instructionsView;
  if (!instructionsView)
  {
    v4 = [SUUIOnboardingInstructionsView alloc];
    [(SUUIPhysicalCirclesView *)self->_circlesView bounds];
    v5 = [(SUUIOnboardingInstructionsView *)v4 initWithFrame:?];
    v6 = self->_instructionsView;
    self->_instructionsView = v5;

    [(SUUIOnboardingInstructionsView *)self->_instructionsView setAutoresizingMask:18];
    v7 = self->_instructionsView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIOnboardingInstructionsView *)v7 setBackgroundColor:clearColor];

    [(SUUIOnboardingInstructionsView *)self->_instructionsView setContentPosition:1];
    [(SUUIOnboardingInstructionsView *)self->_instructionsView setUserInteractionEnabled:0];
    instructionsView = self->_instructionsView;
  }

  return instructionsView;
}

- (double)maximumCircleDiameter
{
  traitCollection = [(SUUIOnboardingAffiliationCirclesViewController *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 1;

  return dbl_259FCAA50[v3];
}

- (void)performFinishAnimationWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  affiliationItems = self->_affiliationItems;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __92__SUUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke;
  v38[3] = &unk_2798F5D08;
  v8 = v5;
  v39 = v8;
  v9 = v6;
  v40 = v9;
  [(NSMutableArray *)affiliationItems enumerateObjectsUsingBlock:v38];
  if (self->_didPerformFinishAnimation)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy, v9);
    }
  }

  else
  {
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    v11 = MEMORY[0x277D75D18];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __92__SUUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_2;
    v37[3] = &unk_2798F5BE8;
    v37[4] = self;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __92__SUUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_3;
    v35[3] = &unk_2798F5D30;
    v12 = v10;
    v36 = v12;
    [v11 animateWithDuration:v37 animations:v35 completion:0.25];
    if ([v9 count])
    {
      [(UIView *)self->_footerView frame];
      *&v14 = v14 + v13 * 0.5;
      v15 = floorf(*&v14);
      *&v14 = v17 + v16 * 0.5;
      v18 = floorf(*&v14);
      circlesView = self->_circlesView;
      superview = [(UIView *)self->_footerView superview];
      [(SUUIPhysicalCirclesView *)circlesView convertPoint:superview fromView:v15, v18];
      v22 = v21;
      v24 = v23;

      dispatch_group_enter(v12);
      v25 = self->_circlesView;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __92__SUUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_4;
      v33[3] = &unk_2798F5D30;
      v34 = v12;
      [(SUUIPhysicalCirclesView *)v25 removeCirclesInIndexSet:v8 byAnimatingToPoint:v33 delay:v22 completionBlock:v24, 0.25];
    }

    dispatch_group_enter(v12);
    v26 = self->_circlesView;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __92__SUUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_5;
    v31[3] = &unk_2798F5D30;
    v32 = v12;
    v27 = v12;
    [(SUUIPhysicalCirclesView *)v26 removeAllCirclesAnimated:1 completionBlock:v31];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__SUUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_6;
    block[3] = &unk_2798F5D58;
    v30 = blockCopy;
    v29 = v9;
    dispatch_group_notify(v27, MEMORY[0x277D85CD0], block);
    self->_didPerformFinishAnimation = 1;
  }
}

void __92__SUUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([v5 userAffinityCount] >= 1)
  {
    [*(a1 + 32) addIndex:a3];
    [*(a1 + 40) addObject:v5];
  }
}

uint64_t __92__SUUIOnboardingAffiliationCirclesViewController_performFinishAnimationWithCompletionBlock___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)removeAffiliationItemsInIndexSet:(id)set animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  affiliationItems = self->_affiliationItems;
  blockCopy = block;
  setCopy = set;
  [(NSMutableArray *)affiliationItems removeObjectsAtIndexes:setCopy];
  [(SUUIPhysicalCirclesView *)self->_circlesView removeCirclesInIndexSet:setCopy animated:animatedCopy completionBlock:blockCopy];
}

- (void)resetWithAffiliationItems:(id)items animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  itemsCopy = items;
  blockCopy = block;
  v10 = blockCopy;
  if (self->_didPerformFinishAnimation)
  {
    if (blockCopy)
    {
      (*(blockCopy + 2))(blockCopy, 1);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    circlesView = self->_circlesView;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __101__SUUIOnboardingAffiliationCirclesViewController_resetWithAffiliationItems_animated_completionBlock___block_invoke;
    v12[3] = &unk_2798F5D80;
    objc_copyWeak(&v15, &location);
    v13 = itemsCopy;
    v14 = v10;
    [(SUUIPhysicalCirclesView *)circlesView removeAllCirclesAnimated:animatedCopy completionBlock:v12];
    self->_didPerformFinishAnimation = 1;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

uint64_t __101__SUUIOnboardingAffiliationCirclesViewController_resetWithAffiliationItems_animated_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  [WeakRetained setAffiliationItems:v4];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)setAffiliationItems:(id)items
{
  itemsCopy = items;
  affiliationItems = self->_affiliationItems;
  if (affiliationItems != itemsCopy)
  {
    v6 = itemsCopy;
    if (itemsCopy)
    {
      itemsCopy = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:itemsCopy copyItems:1];
      affiliationItems = self->_affiliationItems;
    }

    self->_affiliationItems = itemsCopy;

    [(SUUIPhysicalCirclesView *)self->_circlesView reloadData];
    self->_didPerformFinishAnimation = 0;
    itemsCopy = v6;
  }
}

- (void)setFooterView:(id)view animated:(BOOL)animated
{
  viewCopy = view;
  footerView = self->_footerView;
  v9 = viewCopy;
  if (footerView != viewCopy)
  {
    [(UIView *)footerView removeFromSuperview];
    objc_storeStrong(&self->_footerView, view);
    if (self->_footerView)
    {
      view = [(SUUIOnboardingAffiliationCirclesViewController *)self view];
      [view addSubview:self->_footerView];
      [view setNeedsLayout];
    }
  }
}

- (void)setImage:(id)image forAffiliationItem:(id)item
{
  imageCopy = image;
  itemCopy = item;
  v7 = [(NSMutableArray *)self->_affiliationItems indexOfObject:itemCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(SUUIPhysicalCirclesView *)self->_circlesView circleViewAtIndex:v7];
    [v8 setBackgroundImage:imageCopy];
    images = self->_images;
    if (imageCopy)
    {
      if (!images)
      {
        v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
        v11 = self->_images;
        self->_images = v10;

        images = self->_images;
      }

      [NSMapTable setObject:"setObject:forKey:" forKey:?];
    }

    else
    {
      [(NSMapTable *)images removeObjectForKey:itemCopy];
    }
  }
}

- (void)setUserAffinityCount:(int64_t)count forAffiliationItemAtIndex:(int64_t)index animated:(BOOL)animated completionBlock:(id)block
{
  blockCopy = block;
  v11 = [(NSMutableArray *)self->_affiliationItems objectAtIndex:index];
  [v11 setUserAffinityCount:count];
  [(SUUIOnboardingAffiliationCirclesViewController *)self _circleSizeForAffinityCount:count];
  v13 = v12;
  v15 = v14;
  [(SUUIPhysicalCirclesView *)self->_circlesView setSize:index forCircleAtIndex:?];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __122__SUUIOnboardingAffiliationCirclesViewController_setUserAffinityCount_forAffiliationItemAtIndex_animated_completionBlock___block_invoke;
  aBlock[3] = &unk_2798F5DA8;
  aBlock[4] = self;
  aBlock[5] = index;
  aBlock[6] = v13;
  aBlock[7] = v15;
  aBlock[8] = count;
  v16 = _Block_copy(aBlock);
  v17 = v16;
  if (animated)
  {
    v18 = +[SUUISimpleAnimationFactory backOutTimingFunction];
    v19 = [SUUISimpleAnimationFactory factoryWithTimingFunction:v18];

    v20 = MEMORY[0x277D75D18];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __122__SUUIOnboardingAffiliationCirclesViewController_setUserAffinityCount_forAffiliationItemAtIndex_animated_completionBlock___block_invoke_2;
    v21[3] = &unk_2798F5DD0;
    v22 = blockCopy;
    [v20 _animateWithDuration:0 delay:v19 options:v17 factory:v21 animations:0.3 completion:0.1];
  }

  else
  {
    (*(v16 + 2))(v16);
  }
}

void __122__SUUIOnboardingAffiliationCirclesViewController_setUserAffinityCount_forAffiliationItemAtIndex_animated_completionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1000) circleViewAtIndex:*(a1 + 40)];
  [v2 bounds];
  [v2 setBounds:?];
  [v2 setTitlePosition:{objc_msgSend(*(a1 + 32), "_titlePositionForAffinityCount:", *(a1 + 64))}];
  [*(a1 + 32) _circleImageAlphaForAffinityCount:*(a1 + 64)];
  [v2 setBackgroundImageAlpha:?];
  [v2 layoutIfNeeded];
  [v2 setNeedsDisplay];
}

uint64_t __122__SUUIOnboardingAffiliationCirclesViewController_setUserAffinityCount_forAffiliationItemAtIndex_animated_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v3 setBackgroundColor:whiteColor];

  if (!self->_circlesView)
  {
    v5 = objc_alloc_init(SUUIPhysicalCirclesView);
    circlesView = self->_circlesView;
    self->_circlesView = v5;

    [(SUUIPhysicalCirclesView *)self->_circlesView setAutoresizingMask:18];
    v7 = self->_circlesView;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(SUUIPhysicalCirclesView *)v7 setBackgroundColor:whiteColor2];

    [(SUUIPhysicalCirclesView *)self->_circlesView setDataSource:self];
    [(SUUIPhysicalCirclesView *)self->_circlesView setDelegate:self];
    self->_needsReloadOnDidAppear = 1;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  traitCollection = [(SUUIOnboardingAffiliationCirclesViewController *)self traitCollection];
  SUUIPhysicalCircleConstantsWithTraitCollection(traitCollection, &v16);

  [(SUUIOnboardingAffiliationCirclesViewController *)self _circleSizeForAffinityCount:0];
  *(&v17 + 1) = v10;
  [(SUUIOnboardingAffiliationCirclesViewController *)self _circleSizeForAffinityCount:2];
  *&v17 = v11;
  v12 = self->_circlesView;
  v15[0] = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  [(SUUIPhysicalCirclesView *)v12 setConstants:v15];
  v13 = self->_circlesView;
  [v3 bounds];
  [(SUUIPhysicalCirclesView *)v13 setFrame:?];
  [v3 addSubview:self->_circlesView];
  instructionsView = [(SUUIOnboardingAffiliationCirclesViewController *)self instructionsView];
  [v3 bounds];
  [instructionsView setFrame:?];
  [v3 addSubview:instructionsView];
  [(SUUIOnboardingAffiliationCirclesViewController *)self setView:v3];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUUIOnboardingAffiliationCirclesViewController *)self _reloadRepellors];
  [(SUUIPhysicalCirclesView *)self->_circlesView startPhysics];
  self->_didPerformFinishAnimation = 0;
  if (self->_needsReloadOnDidAppear)
  {
    [(SUUIPhysicalCirclesView *)self->_circlesView reloadData];
    self->_needsReloadOnDidAppear = 0;
  }

  v5.receiver = self;
  v5.super_class = SUUIOnboardingAffiliationCirclesViewController;
  [(SUUIOnboardingAffiliationCirclesViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SUUIPhysicalCirclesView *)self->_circlesView stopPhysics];
  v5.receiver = self;
  v5.super_class = SUUIOnboardingAffiliationCirclesViewController;
  [(SUUIOnboardingAffiliationCirclesViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  view = [(SUUIOnboardingAffiliationCirclesViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;

  [(SUUIOnboardingAffiliationCirclesViewController *)self _topLayoutMargin];
  v9 = v8;
  footerView = self->_footerView;
  if (footerView)
  {
    [(UIView *)footerView frame];
    [(UIView *)self->_footerView sizeThatFits:v5, 1.79769313e308];
    v12 = v11;
    v14 = fmax(v13, 375.0);
    if (v5 >= 375.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v5;
    }

    v16 = (v5 - v15) * 0.5;
    v17 = floorf(v16);
    v18 = v7 + -20.0 - v11;
    v19 = self->_footerView;
    v21 = CGRectIntegral(*(&v12 - 3));
    [(UIView *)v19 setFrame:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
  }

  [(SUUIOnboardingInstructionsView *)self->_instructionsView setContentInset:v9, 20.0, 20.0, 20.0];
  [(SUUIOnboardingAffiliationCirclesViewController *)self _reloadRepellors];
  v20.receiver = self;
  v20.super_class = SUUIOnboardingAffiliationCirclesViewController;
  [(SUUIOnboardingAffiliationCirclesViewController *)&v20 viewDidLayoutSubviews];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUUIOnboardingInstructionsView *)self->_instructionsView setAlpha:1.0];
  v5.receiver = self;
  v5.super_class = SUUIOnboardingAffiliationCirclesViewController;
  [(SUUIOnboardingAffiliationCirclesViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  transitionCoordinator = [(SUUIOnboardingAffiliationCirclesViewController *)self transitionCoordinator];

  self->_needsReloadOnDidAppear = transitionCoordinator != 0;
  v6.receiver = self;
  v6.super_class = SUUIOnboardingAffiliationCirclesViewController;
  [(SUUIOnboardingAffiliationCirclesViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (id)circlesView:(id)view circleForIndex:(int64_t)index
{
  viewCopy = view;
  v7 = [(NSMutableArray *)self->_affiliationItems objectAtIndex:index];
  userAffinityCount = [v7 userAffinityCount];
  [(SUUIOnboardingAffiliationCirclesViewController *)self _circleSizeForAffinityCount:userAffinityCount];
  v11 = [[SUUIOnboardingCircleView alloc] initWithFrame:0.0, 0.0, v9, v10];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SUUIOnboardingCircleView *)v11 setBackgroundColor:clearColor];

  [(SUUIOnboardingCircleView *)v11 setEdgeInsets:1.0, 1.0, 1.0, 1.0];
  [(SUUIOnboardingAffiliationCirclesViewController *)self _circleSizeForAffinityCount:0];
  [(SUUIOnboardingCircleView *)v11 setMinimumDiameter:?];
  [(SUUIOnboardingCircleView *)v11 setTitlePosition:[(SUUIOnboardingAffiliationCirclesViewController *)self _titlePositionForAffinityCount:userAffinityCount]];
  fillColor = [v7 fillColor];
  if (fillColor)
  {
    [(SUUIOnboardingCircleView *)v11 setFillColor:fillColor];
  }

  else
  {
    tintColor = [viewCopy tintColor];
    [(SUUIOnboardingCircleView *)v11 setFillColor:tintColor];
  }

  [(SUUIOnboardingAffiliationCirclesViewController *)self _circleImageAlphaForAffinityCount:userAffinityCount];
  [(SUUIOnboardingCircleView *)v11 setBackgroundImageAlpha:?];
  v15 = [(NSMapTable *)self->_images objectForKey:v7];
  [(SUUIOnboardingCircleView *)v11 setBackgroundImage:v15];

  titleLabel = [(SUUIOnboardingCircleView *)v11 titleLabel];
  title = [v7 title];
  [titleLabel setText:title];

  return v11;
}

- (void)circleView:(id)view didBeginLongPressForCircleAtIndex:(int64_t)index
{
  [(SUUIOnboardingAffiliationCirclesViewController *)self _cancelDeletionTimer];
  v6 = self->_instructionsView;
  [(SUUIOnboardingInstructionsView *)v6 pushLabelState];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  deletionTimer = self->_deletionTimer;
  self->_deletionTimer = v7;

  dispatch_source_set_timer(self->_deletionTimer, 0, 0x3B9ACA00uLL, 0);
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 2;
  objc_initWeak(&location, self);
  v9 = self->_deletionTimer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__SUUIOnboardingAffiliationCirclesViewController_circleView_didBeginLongPressForCircleAtIndex___block_invoke;
  v11[3] = &unk_2798F5DF8;
  v13 = v16;
  objc_copyWeak(v14, &location);
  v14[1] = index;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  dispatch_source_set_event_handler(v9, v11);
  dispatch_resume(self->_deletionTimer);

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(v16, 8);
}

void __95__SUUIOnboardingAffiliationCirclesViewController_circleView_didBeginLongPressForCircleAtIndex___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    WeakRetained = objc_alloc_init(MEMORY[0x277CCABB8]);
    [WeakRetained setNumberStyle:1];
    v2 = *(*(a1 + 32) + 1008);
    if (v2)
    {
      [v2 localizedStringForKey:@"REMOVE_ITEM_%@" inTable:@"Onboarding"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"REMOVE_ITEM_%@" inBundles:0 inTable:@"Onboarding"];
    }
    v3 = ;
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(*(a1 + 48) + 8) + 24)];
    v6 = [WeakRetained stringFromNumber:v5];
    v7 = [v4 stringWithValidatedFormat:v3 validFormatSpecifiers:@"%@" error:0, v6];

    v8 = [*(a1 + 40) titleLabel];
    v9 = [objc_opt_class() titleAttributedStringWithString:v7];
    [v8 setAttributedText:v9];

    [*(a1 + 40) setNeedsLayout];
    --*(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _completeDeletionForCircleAtIndex:*(a1 + 64)];
  }
}

- (void)circleView:(id)view didEndLongPressForCircleAtIndex:(int64_t)index
{
  [(SUUIOnboardingInstructionsView *)self->_instructionsView popLabelState:view];
  view = [(SUUIOnboardingAffiliationCirclesViewController *)self view];
  [view setNeedsLayout];

  [(SUUIOnboardingAffiliationCirclesViewController *)self _cancelDeletionTimer];
}

- (void)circleView:(id)view didTapCircleAtIndex:(int64_t)index
{
  delegate = [(SUUIOnboardingAffiliationCirclesViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();
  v7 = [(NSMutableArray *)self->_affiliationItems objectAtIndex:index];
  v8 = v7;
  if (v6)
  {
    [delegate onboardingCircles:self didSelectAffiliationItem:v7 atIndex:index];
  }

  else
  {
    -[SUUIOnboardingAffiliationCirclesViewController setUserAffinityCount:forAffiliationItemAtIndex:animated:completionBlock:](self, "setUserAffinityCount:forAffiliationItemAtIndex:animated:completionBlock:", ([v7 userAffinityCount] + 1) % 3, index, 1, 0);
    [(SUUIOnboardingAffiliationCirclesViewController *)self _reloadRepellors];
    [(SUUIOnboardingAffiliationCirclesViewController *)self _sendAffilationItemsDidChange];
  }
}

- (void)_cancelDeletionTimer
{
  deletionTimer = self->_deletionTimer;
  if (deletionTimer)
  {
    dispatch_source_cancel(deletionTimer);
    v4 = self->_deletionTimer;
    self->_deletionTimer = 0;
  }
}

- (double)_circleImageAlphaForAffinityCount:(int64_t)count
{
  result = 0.0;
  if (count == 1)
  {
    result = 0.5;
  }

  if (count == 2)
  {
    return 1.0;
  }

  return result;
}

- (CGSize)_circleSizeForAffinityCount:(int64_t)count
{
  traitCollection = [(SUUIOnboardingAffiliationCirclesViewController *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if (horizontalSizeClass == 2)
  {
    if (count == 2)
    {
      v6 = 180.0;
      goto LABEL_11;
    }

    if (count != 1)
    {
      v6 = 120.0;
      goto LABEL_11;
    }

LABEL_8:
    v6 = 150.0;
    goto LABEL_11;
  }

  if (count == 2)
  {
    goto LABEL_8;
  }

  if (count == 1)
  {
    v6 = 110.0;
  }

  else
  {
    v6 = 78.0;
  }

LABEL_11:
  v7 = v6;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)_completeDeletionForCircleAtIndex:(int64_t)index
{
  v7 = [(NSMutableArray *)self->_affiliationItems objectAtIndex:?];
  [(NSMapTable *)self->_images removeObjectForKey:?];
  [(NSMutableArray *)self->_affiliationItems removeObjectAtIndex:index];
  [(SUUIPhysicalCirclesView *)self->_circlesView removeCircleAtIndex:index animated:1 completionBlock:0];
  [(SUUIOnboardingInstructionsView *)self->_instructionsView popLabelState];
  view = [(SUUIOnboardingAffiliationCirclesViewController *)self view];
  [view setNeedsLayout];

  [(SUUIOnboardingAffiliationCirclesViewController *)self _cancelDeletionTimer];
  delegate = [(SUUIOnboardingAffiliationCirclesViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate onboardingCircles:self didRemoveAffiliationItem:v7];
  }

  [(SUUIOnboardingAffiliationCirclesViewController *)self _sendAffilationItemsDidChange];
}

- (void)_reloadRepellors
{
  [(SUUIPhysicalCirclesView *)self->_circlesView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SUUIPhysicalCirclesView *)self->_circlesView removeAllRepellors];
  footerView = self->_footerView;
  if (footerView)
  {
    [(UIView *)footerView frame];
    if (v12 > 0.00000011920929)
    {
      v13 = v12;
      v37.origin.x = v4;
      v37.origin.y = v6;
      v37.size.width = v8;
      v37.size.height = v10;
      v14 = floor(CGRectGetWidth(v37) * 0.5);
      v38.origin.x = v4;
      v38.origin.y = v6;
      v38.size.width = v8;
      v38.size.height = v10;
      Height = CGRectGetHeight(v38);
      bottomLayoutGuide = [(SUUIOnboardingAffiliationCirclesViewController *)self bottomLayoutGuide];
      [bottomLayoutGuide length];
      v18 = Height - v17 + 90.0;

      v19 = [(SUUIPhysicalCirclesView *)self->_circlesView addRepellorWithCenter:v14 radius:v18 bufferSize:ceil(v13 * 0.600000024), 20.0];
    }
  }

  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  v35 = ceil(CGRectGetWidth(v39) * 1.79999995);
  explanationLabel = [(SUUIOnboardingInstructionsView *)self->_instructionsView explanationLabel];
  [explanationLabel frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  rect = v10;
  v27 = v4;
  v29 = v28;

  v40.origin.x = v22;
  v40.origin.y = v24;
  v40.size.width = v26;
  v40.size.height = v29;
  Width = CGRectGetWidth(v40);
  *&Width = v35 * v35 - Width * 0.5 * (Width * 0.5);
  v31 = v8;
  v32 = sqrtf(*&Width);
  v41.origin.x = v22;
  v41.origin.y = v24;
  v41.size.width = v26;
  v41.size.height = v29;
  v33 = CGRectGetMaxY(v41) - v32;
  v42.origin.x = v27;
  v42.origin.y = v6;
  v42.size.width = v31;
  v42.size.height = rect;
  v34 = [(SUUIPhysicalCirclesView *)self->_circlesView addRepellorWithCenter:floor(CGRectGetWidth(v42) * 0.5) radius:v33 bufferSize:v35, 20.0];
}

- (void)_sendAffilationItemsDidChange
{
  delegate = [(SUUIOnboardingAffiliationCirclesViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate onboardingCirclesDidChangeAffiliationItems:self];
  }
}

- (double)_topLayoutMargin
{
  navigationController = [(SUUIOnboardingAffiliationCirclesViewController *)self navigationController];
  v3 = 13.0;
  if (navigationController)
  {
    v4 = [SUUINavigationControllerAssistant existingAssistantForNavigationController:navigationController];
    if (v4)
    {
      v5 = v4;
      hidesShadow = [v4 hidesShadow];

      if (hidesShadow)
      {
        v3 = 0.0;
      }

      else
      {
        v3 = 13.0;
      }
    }
  }

  return v3;
}

- (SUUIOnboardingAffiliationCirclesDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end