@interface GKSwipeToEditStateMachine
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (GKSwipeToEditStateMachine)initWithCollectionView:(id)view;
- (void)didEnterAnimatingOpenState;
- (void)didEnterAnimatingShutState;
- (void)didEnterEditingState;
- (void)didEnterNothingState;
- (void)didExitAnimatingOpenState;
- (void)didExitNothingState;
- (void)handlePan:(id)pan;
- (void)setDelegate:(id)delegate;
- (void)shutActionPaneForEditingCellAnimated:(BOOL)animated;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation GKSwipeToEditStateMachine

- (GKSwipeToEditStateMachine)initWithCollectionView:(id)view
{
  v50[5] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v41.receiver = self;
  v41.super_class = GKSwipeToEditStateMachine;
  v5 = [(_GKStateMachine *)&v41 init];
  v6 = v5;
  if (v5)
  {
    [(GKSwipeToEditStateMachine *)v5 setCollectionView:viewCopy];
    dataSource = [viewCopy dataSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      dataSource2 = [viewCopy dataSource];
      [(GKSwipeToEditStateMachine *)v6 setGkDataSource:dataSource2];
    }

    v32 = viewCopy;
    [(_GKStateMachine *)v6 setCurrentState:@"NothingState"];
    v48 = @"TrackingState";
    v49[0] = @"NothingState";
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    v50[0] = v31;
    v49[1] = @"TrackingState";
    v47[0] = @"AnimatingOpenState";
    v47[1] = @"AnimatingShutState";
    v47[2] = @"TrackingState";
    v47[3] = @"NothingState";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
    v50[1] = v10;
    v49[2] = @"AnimatingOpenState";
    v46[0] = @"EditingState";
    v46[1] = @"AnimatingShutState";
    v46[2] = @"TrackingState";
    v46[3] = @"NothingState";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:4];
    v50[2] = v11;
    v49[3] = @"AnimatingShutState";
    v45 = @"NothingState";
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    v50[3] = v12;
    v49[4] = @"EditingState";
    v44[0] = @"TrackingState";
    v44[1] = @"AnimatingShutState";
    v44[2] = @"NothingState";
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:3];
    v50[4] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:5];
    [(_GKStateMachine *)v6 setValidTransitions:v14];

    v15 = [[GKCancelSwipeToEditGestureRecognizer alloc] initWithTarget:v6 action:sel_handleCancelTap_];
    editModeCancelRecognizer = v6->_editModeCancelRecognizer;
    v6->_editModeCancelRecognizer = v15;

    [(GKCancelSwipeToEditGestureRecognizer *)v6->_editModeCancelRecognizer setNumberOfTapsRequired:1];
    [(GKCancelSwipeToEditGestureRecognizer *)v6->_editModeCancelRecognizer setCancelsTouchesInView:1];
    [(GKCancelSwipeToEditGestureRecognizer *)v6->_editModeCancelRecognizer setDelegate:v6];
    v17 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v6 action:sel_handlePan_];
    panGestureRecognizer = v6->_panGestureRecognizer;
    v6->_panGestureRecognizer = v17;

    [(UIPanGestureRecognizer *)v6->_panGestureRecognizer setDelegate:v6];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    gestureRecognizers = [(UICollectionView *)v6->_collectionView gestureRecognizers];
    v20 = [gestureRecognizers countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        v23 = 0;
        do
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(gestureRecognizers);
          }

          v24 = *(*(&v37 + 1) + 8 * v23);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v24 requireGestureRecognizerToFail:v6->_panGestureRecognizer];
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [gestureRecognizers countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v21);
    }

    viewCopy = v32;
    [v32 addGestureRecognizer:v6->_panGestureRecognizer];
    gestureRecognizers2 = [(UICollectionView *)v6->_collectionView gestureRecognizers];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = [gestureRecognizers2 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        v29 = 0;
        do
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(gestureRecognizers2);
          }

          [*(*(&v33 + 1) + 8 * v29++) requireGestureRecognizerToFail:v6->_editModeCancelRecognizer];
        }

        while (v27 != v29);
        v27 = [gestureRecognizers2 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v27);
    }

    [(UICollectionView *)v6->_collectionView addGestureRecognizer:v6->_editModeCancelRecognizer];
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"you're not the boss of me"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKCollectionViewController+GKSwipeToEdit.m"];
  lastPathComponent = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKSwipeToEditStateMachine setDelegate:]", objc_msgSend(lastPathComponent, "UTF8String"), 112];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  state = [panCopy state];
  if (state == 4)
  {
    goto LABEL_13;
  }

  if (state != 3)
  {
    if (state == 2)
    {
      [panCopy translationInView:self->_editingCell];
      [(GKSwipeToEditStateMachine *)self xPositionForTranslation:?];
      [(GKCollectionViewCell *)self->_editingCell setEditingContentOriginX:?];
      [(_GKStateMachine *)self setCurrentState:@"TrackingState"];
    }

    goto LABEL_14;
  }

  [panCopy velocityInView:self->_editingCell];
  v7 = v6;
  [(GKCollectionViewCell *)self->_editingCell editingContentOriginX];
  v9 = v8;
  [(GKCollectionViewCell *)self->_editingCell contentViewOriginXWhileEditing];
  if (v7 >= 0.0 || ((v11 = v10, v7 >= -100.0) ? (v12 = v9 > v10) : (v12 = 0), v12))
  {
LABEL_13:
    [(GKSwipeToEditStateMachine *)self shutActionPaneForEditingCellAnimated:1];
    goto LABEL_14;
  }

  v13 = *MEMORY[0x277D773B0];
  v14 = objc_alloc(MEMORY[0x277D75F28]);
  v15 = [v14 initWithValue:v9 velocity:v7 unitSize:*MEMORY[0x277D773B8]];
  [v15 setFriction:v13];
  [v15 _setUsesNSTimer:1];
  v16 = [MEMORY[0x277D75F20] lowerBoundary:1 ofType:v11];
  [v15 addActiveValue:v16];
  if (v9 > v11)
  {
    v17 = [MEMORY[0x277D75F20] upperBoundary:0 ofType:v11];
    [v15 addActiveValue:v17];
  }

  [(_GKStateMachine *)self setCurrentState:@"AnimatingOpenState"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __39__GKSwipeToEditStateMachine_handlePan___block_invoke;
  v19[3] = &unk_27966A5C0;
  v19[4] = self;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __39__GKSwipeToEditStateMachine_handlePan___block_invoke_2;
  v18[3] = &unk_279669C90;
  v18[4] = self;
  [v15 runWithValueApplier:v19 completion:v18];
  [(GKSwipeToEditStateMachine *)self setOpenAnimation:v15];

LABEL_14:
}

uint64_t __39__GKSwipeToEditStateMachine_handlePan___block_invoke(uint64_t a1, double a2, double a3)
{
  v5 = [*(*(a1 + 32) + 80) staticContentView];
  [v5 frame];

  v6 = 0.0;
  if (a3 <= 0.0)
  {
    v6 = a3;
  }

  v7 = *(*(a1 + 32) + 80);

  return [v7 setEditingContentOriginX:v6];
}

uint64_t __39__GKSwipeToEditStateMachine_handlePan___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setCurrentState:@"EditingState"];
  }

  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = beginCopy;
  if (self->_panGestureRecognizer == beginCopy)
  {
    currentState = [(_GKStateMachine *)self currentState];
    if (([currentState isEqualToString:@"NothingState"] & 1) == 0)
    {
      currentState2 = [(_GKStateMachine *)self currentState];
      if (![currentState2 isEqualToString:@"EditingState"])
      {
        currentState3 = [(_GKStateMachine *)self currentState];
        v19 = [currentState3 isEqualToString:@"AnimatingOpenState"];

        if ((v19 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_10:
        collectionView = self->_collectionView;
        [(UIPanGestureRecognizer *)self->_panGestureRecognizer locationInView:collectionView];
        currentState5 = [(UICollectionView *)collectionView indexPathForItemAtPoint:?];
        [(UIPanGestureRecognizer *)self->_panGestureRecognizer velocityInView:self->_collectionView];
        v13 = v12;
        v15 = v14;
        v16 = [(UICollectionView *)self->_collectionView cellForItemAtIndexPath:currentState5];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          currentState4 = [(_GKStateMachine *)self currentState];
          if ([currentState4 isEqualToString:@"NothingState"])
          {
          }

          else
          {
            editingCell = self->_editingCell;

            if (v16 != editingCell)
            {
              goto LABEL_20;
            }
          }

          editActions = [(GKCollectionViewCell *)v16 editActions];
          v22 = [editActions count];

          v23 = fabs(v15);
          v24 = fabs(v13);
          if (v22)
          {
            v25 = v23 < v24;
          }

          else
          {
            v25 = 0;
          }

          if (v25)
          {
            [(GKCollectionViewCell *)v16 editingContentOriginX];
            self->_startTrackingX = v29;
            [(GKSwipeToEditStateMachine *)self setEditingCell:v16];
            [(_GKStateMachine *)self setCurrentState:@"TrackingState"];

            goto LABEL_25;
          }
        }

LABEL_20:

        goto LABEL_21;
      }
    }

    goto LABEL_10;
  }

  if (self->_editModeCancelRecognizer != beginCopy)
  {
LABEL_26:
    v28 = 1;
    goto LABEL_27;
  }

  currentState5 = [(_GKStateMachine *)self currentState];
  if ([currentState5 isEqualToString:@"EditingState"])
  {
LABEL_25:

    goto LABEL_26;
  }

  currentState6 = [(_GKStateMachine *)self currentState];
  v8 = [currentState6 isEqualToString:@"AnimatingOpenState"];

  if (v8)
  {
    goto LABEL_26;
  }

LABEL_21:
  currentState7 = [(_GKStateMachine *)self currentState];
  v27 = [currentState7 isEqualToString:@"NothingState"];

  if ((v27 & 1) == 0)
  {
    [(GKSwipeToEditStateMachine *)self shutActionPaneForEditingCellAnimated:1];
  }

  v28 = 0;
LABEL_27:

  return v28;
}

- (void)didEnterEditingState
{
  [(GKCollectionViewCell *)self->_editingCell setUserInteractionEnabled:1];
  editingCell = self->_editingCell;

  [(GKCollectionViewCell *)editingCell setUserInteractionEnabledForEditing:1];
}

- (void)didExitNothingState
{
  [(UICollectionView *)self->_collectionView setScrollEnabled:0];
  editingCell = self->_editingCell;

  [(GKCollectionViewCell *)editingCell beginEditing];
}

- (void)didEnterNothingState
{
  [(UICollectionView *)self->_collectionView setScrollEnabled:1];
  self->_startTrackingX = 0.0;
  [(GKCollectionViewCell *)self->_editingCell setUserInteractionEnabled:1];
  [(GKCollectionViewCell *)self->_editingCell finishEditing];

  [(GKSwipeToEditStateMachine *)self setEditingCell:0];
}

- (void)didEnterAnimatingShutState
{
  [(GKCollectionViewCell *)self->_editingCell setUserInteractionEnabled:0];
  editingCell = self->_editingCell;

  [(GKCollectionViewCell *)editingCell animateOutSwipeToEditAccessories];
}

- (void)didEnterAnimatingOpenState
{
  [(GKCollectionViewCell *)self->_editingCell setUserInteractionEnabled:0];
  editingCell = self->_editingCell;
  editModeCancelRecognizer = self->_editModeCancelRecognizer;

  [(GKCancelSwipeToEditGestureRecognizer *)editModeCancelRecognizer setCurrentEditingCell:editingCell];
}

- (void)didExitAnimatingOpenState
{
  [(_UIDynamicAnimation *)self->_openAnimation stop];

  [(GKSwipeToEditStateMachine *)self setOpenAnimation:0];
}

- (void)shutActionPaneForEditingCellAnimated:(BOOL)animated
{
  if (animated)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__GKSwipeToEditStateMachine_shutActionPaneForEditingCellAnimated___block_invoke;
    block[3] = &unk_2796699A8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    gk_dispatch_debounce();
  }
}

void __66__GKSwipeToEditStateMachine_shutActionPaneForEditingCellAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  v3 = [v2 isEqualToString:@"NothingState"];

  if ((v3 & 1) == 0)
  {
    [*(a1 + 32) setCurrentState:@"AnimatingShutState"];
    v4 = *(a1 + 32);
    v5 = *(v4 + 80);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__GKSwipeToEditStateMachine_shutActionPaneForEditingCellAnimated___block_invoke_3;
    v6[3] = &unk_279669C90;
    v6[4] = v4;
    [v5 shutActionPaneAnimated:1 completion:v6];
  }
}

uint64_t __66__GKSwipeToEditStateMachine_shutActionPaneForEditingCellAnimated___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setCurrentState:@"NothingState"];
  }

  return result;
}

uint64_t __66__GKSwipeToEditStateMachine_shutActionPaneForEditingCellAnimated___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 80) shutActionPaneAnimated:0 completion:0];
  v2 = *(a1 + 32);

  return [v2 setCurrentState:@"NothingState"];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  currentState = [(_GKStateMachine *)self currentState];
  v5 = [currentState isEqualToString:@"NothingState"];

  if ((v5 & 1) == 0)
  {

    [(GKSwipeToEditStateMachine *)self shutActionPaneForEditingCellAnimated:0];
  }
}

@end