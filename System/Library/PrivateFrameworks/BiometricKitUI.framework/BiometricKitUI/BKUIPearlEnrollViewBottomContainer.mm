@interface BKUIPearlEnrollViewBottomContainer
- (BKUIPearlBottomContainerDelegate)delegate;
- (BKUIPearlEnrollViewBottomContainer)initWithFrame:(CGRect)frame inBuddy:(BOOL)buddy scrollView:(id)view overlapScrollView:(id)scrollView delegate:(id)delegate squareNeedsPositionLayout:(BOOL)layout;
- (BKUIPearlInstructionView)instructionView;
- (double)_topPaddingForButtonTray:(id)tray;
- (id)_horizontalConstraintsForTagAlongTransitionView:(id)view state:(int)state position:(int64_t)position;
- (id)_locStateDetailedLabelNameForState:(int)state;
- (id)_locStateNameForState:(int)state;
- (id)_targetScrollViewForState:(int)state;
- (id)_updateTopPaddingAndReturnHorizontalConstraintsForScrollView:(id)view state:(int)state position:(int64_t)position;
- (id)bottomLinkButton;
- (id)buttonTray;
- (id)buttonTrayTopAnchor;
- (id)nextStateButton;
- (void)_updateButtonLayoutForScrollView:(id)view;
- (void)_updateButtonVisibilityForScrollView:(id)view;
- (void)escapeHatchButtonWasPressed:(id)pressed;
- (void)finalizeInstructionAnimation;
- (void)layoutSubviews;
- (void)nextStateButtonWasPressed:(id)pressed;
- (void)retryWasPressed:(id)pressed;
- (void)setupInitialUI;
- (void)updateButtonLayout;
- (void)updateButtonVisibility;
@end

@implementation BKUIPearlEnrollViewBottomContainer

- (BKUIPearlEnrollViewBottomContainer)initWithFrame:(CGRect)frame inBuddy:(BOOL)buddy scrollView:(id)view overlapScrollView:(id)scrollView delegate:(id)delegate squareNeedsPositionLayout:(BOOL)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  scrollViewCopy = scrollView;
  delegateCopy = delegate;
  v47.receiver = self;
  v47.super_class = BKUIPearlEnrollViewBottomContainer;
  height = [(BKUIPearlEnrollViewBottomContainer *)&v47 initWithFrame:x, y, width, height];
  v22 = height;
  if (height)
  {
    objc_storeStrong(&height->_scrollview, view);
    objc_storeStrong(&v22->_overlappingScrollview, scrollView);
    v22->_squareNeedsPositionLayout = layout;
    buttonTray = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
    willUseActionDelegate = [buttonTray willUseActionDelegate];

    if ((willUseActionDelegate & 1) == 0)
    {
      buttonTray2 = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
      nextStateButton = [buttonTray2 nextStateButton];
      [nextStateButton addTarget:v22 action:sel_nextStateButtonWasPressed_ forControlEvents:0x2000];

      buttonTray3 = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
      bottomLinkButton = [buttonTray3 bottomLinkButton];
      [bottomLinkButton addTarget:v22 action:sel_escapeHatchButtonWasPressed_ forControlEvents:0x2000];

      buttonTray4 = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
      topLinkButton = [buttonTray4 topLinkButton];
      [topLinkButton addTarget:v22 action:sel_retryWasPressed_ forControlEvents:0x2000];
    }

    buttonTray5 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
    willUseActionDelegate2 = [buttonTray5 willUseActionDelegate];

    if ((willUseActionDelegate2 & 1) == 0)
    {
      buttonTray6 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
      nextStateButton2 = [buttonTray6 nextStateButton];
      [nextStateButton2 addTarget:v22 action:sel_nextStateButtonWasPressed_ forControlEvents:0x2000];

      buttonTray7 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
      bottomLinkButton2 = [buttonTray7 bottomLinkButton];
      [bottomLinkButton2 addTarget:v22 action:sel_escapeHatchButtonWasPressed_ forControlEvents:0x2000];

      buttonTray8 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
      topLinkButton2 = [buttonTray8 topLinkButton];
      [topLinkButton2 addTarget:v22 action:sel_retryWasPressed_ forControlEvents:0x2000];
    }

    v22->_inBuddy = buddy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    customInstructionStrings = v22->_customInstructionStrings;
    v22->_customInstructionStrings = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    customDetailStrings = v22->_customDetailStrings;
    v22->_customDetailStrings = dictionary2;

    objc_storeWeak(&v22->_delegate, delegateCopy);
    v22->_overlapValue = 47.0;
    v43 = +[BKUIDevice sharedInstance];
    if ([v43 isZoomEnabled])
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (!userInterfaceIdiom)
      {
        v22->_overlapValue = v22->_overlapValue * 0.800000012;
      }
    }

    else
    {
    }
  }

  return v22;
}

- (void)setupInitialUI
{
  v50[8] = *MEMORY[0x277D85DE8];
  scrollview = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self addSubview:scrollview];

  overlappingScrollview = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self addSubview:overlappingScrollview];

  scrollview2 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  topAnchor = [scrollview2 topAnchor];
  topAnchor2 = [(BKUIPearlEnrollViewBottomContainer *)self topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  scrollview3 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [scrollview3 setTopToSuperViewConstraint:v8];

  overlappingScrollview2 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  topAnchor3 = [overlappingScrollview2 topAnchor];
  topAnchor4 = [(BKUIPearlEnrollViewBottomContainer *)self topAnchor];
  v13 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  overlappingScrollview3 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [overlappingScrollview3 setTopToSuperViewConstraint:v13];

  v37 = MEMORY[0x277CCAAD0];
  overlappingScrollview4 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  topToSuperViewConstraint = [overlappingScrollview4 topToSuperViewConstraint];
  v50[0] = topToSuperViewConstraint;
  overlappingScrollview5 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  bottomAnchor = [overlappingScrollview5 bottomAnchor];
  bottomAnchor2 = [(BKUIPearlEnrollViewBottomContainer *)self bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v50[1] = v44;
  overlappingScrollview6 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  leadingAnchor = [overlappingScrollview6 leadingAnchor];
  leadingAnchor2 = [(BKUIPearlEnrollViewBottomContainer *)self leadingAnchor];
  v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v50[2] = v40;
  overlappingScrollview7 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  trailingAnchor = [overlappingScrollview7 trailingAnchor];
  trailingAnchor2 = [(BKUIPearlEnrollViewBottomContainer *)self trailingAnchor];
  v35 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v50[3] = v35;
  scrollview4 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  topToSuperViewConstraint2 = [scrollview4 topToSuperViewConstraint];
  v50[4] = topToSuperViewConstraint2;
  scrollview5 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  bottomAnchor3 = [scrollview5 bottomAnchor];
  bottomAnchor4 = [(BKUIPearlEnrollViewBottomContainer *)self bottomAnchor];
  v29 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v50[5] = v29;
  scrollview6 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  leadingAnchor3 = [scrollview6 leadingAnchor];
  leadingAnchor4 = [(BKUIPearlEnrollViewBottomContainer *)self leadingAnchor];
  v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v50[6] = v18;
  scrollview7 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  trailingAnchor3 = [scrollview7 trailingAnchor];
  trailingAnchor4 = [(BKUIPearlEnrollViewBottomContainer *)self trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v50[7] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:8];
  [v37 activateConstraints:v23];

  overlappingScrollview8 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self setOnScreenScrollview:overlappingScrollview8];

  scrollview8 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self setOffScreenScrollview:scrollview8];

  overlappingScrollview9 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  instructionView = [overlappingScrollview9 instructionView];
  [(BKUIPearlEnrollViewBottomContainer *)self _configureInstructionView:instructionView forState:2 substate:0];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_horizontalConstraintsForTagAlongTransitionView:(id)view state:(int)state position:(int64_t)position
{
  viewCopy = view;
  v8 = viewCopy;
  switch(position)
  {
    case 2:
      leftAnchor = [viewCopy leftAnchor];
      goto LABEL_7;
    case 1:
      leftAnchor = [viewCopy rightAnchor];
LABEL_7:
      rightAnchor2 = leftAnchor;
      rightAnchor = [(BKUIPearlEnrollViewBottomContainer *)self rightAnchor];
      goto LABEL_8;
    case 0:
      rightAnchor2 = [viewCopy rightAnchor];
      rightAnchor = [(BKUIPearlEnrollViewBottomContainer *)self leftAnchor];
LABEL_8:
      v12 = rightAnchor;
      v13 = [rightAnchor2 constraintEqualToAnchor:rightAnchor];

      goto LABEL_10;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (id)_updateTopPaddingAndReturnHorizontalConstraintsForScrollView:(id)view state:(int)state position:(int64_t)position
{
  v25[1] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  horizontalConstraint = [viewCopy horizontalConstraint];
  [horizontalConstraint setActive:0];

  scrollContentView = [viewCopy scrollContentView];
  v11 = scrollContentView;
  if (position == 1)
  {
    rightAnchor = [scrollContentView rightAnchor];
  }

  else
  {
    if (!position)
    {
      rightAnchor2 = [scrollContentView rightAnchor];
      leftAnchor = [(BKUIPearlEnrollViewBottomContainer *)self leftAnchor];
      goto LABEL_7;
    }

    rightAnchor = [scrollContentView leftAnchor];
  }

  rightAnchor2 = rightAnchor;
  leftAnchor = [(BKUIPearlEnrollViewBottomContainer *)self rightAnchor];
LABEL_7:
  v15 = leftAnchor;
  v16 = [rightAnchor2 constraintEqualToAnchor:leftAnchor];

  [viewCopy setHorizontalConstraint:v16];
  squareNeedsPositionLayout = [(BKUIPearlEnrollViewBottomContainer *)self squareNeedsPositionLayout];
  if ((state - 5) < 0xFFFFFFFE || squareNeedsPositionLayout)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 47.0;
  }

  topToSuperViewConstraint = [viewCopy topToSuperViewConstraint];
  [topToSuperViewConstraint setConstant:v19];

  if (state == 10)
  {
    topToSuperViewConstraint2 = [viewCopy topToSuperViewConstraint];
    [topToSuperViewConstraint2 setConstant:0.0];
  }

  v25[0] = v16;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __84__BKUIPearlEnrollViewBottomContainer_updateInstructionViewContentForState_substate___block_invoke(id *a1)
{
  [a1[4] setNeedsLayout];
  [a1[5] setNeedsLayout];
  [a1[6] updateButtonLayout];
  [a1[6] layoutIfNeeded];
  v2 = [a1[6] delegate];
  v3 = [v2 view];
  [v3 setNeedsLayout];

  v5 = [a1[6] delegate];
  v4 = [v5 view];
  [v4 layoutIfNeeded];
}

- (id)_locStateDetailedLabelNameForState:(int)state
{
  v4 = [(BKUIPearlEnrollViewBottomContainer *)self _locStateNameForState:?];
  if (state == 9)
  {

    v4 = @"PARTIAL_CAPTURE";
  }

  return v4;
}

- (id)_locStateNameForState:(int)state
{
  v4 = 0;
  if (state <= 5)
  {
    if ((state - 1) < 2)
    {
      delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      enrollmentConfiguration = [delegate enrollmentConfiguration];

      if (enrollmentConfiguration == 4)
      {
        v4 = 0;
      }

      else
      {
        v4 = @"TUTORIAL";
      }
    }

    else
    {
      v5 = @"FIRST_SCAN";
      if (state != 5)
      {
        v5 = 0;
      }

      if ((state - 3) >= 2)
      {
        v4 = v5;
      }

      else
      {
        v4 = @"POSITIONING";
      }
    }

    goto LABEL_76;
  }

  if (state > 7)
  {
    if (state != 8)
    {
      if (state != 9)
      {
        if (state != 10)
        {
          goto LABEL_76;
        }

        delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        currentOperationHandler = [delegate2 currentOperationHandler];
        if ([currentOperationHandler supportsPeriocularEnrollment] && -[BKUIPearlEnrollViewBottomContainer inBuddy](self, "inBuddy"))
        {
          delegate3 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
          currentOperationHandler2 = [delegate3 currentOperationHandler];
          identity = [currentOperationHandler2 identity];
          if ([identity hasPeriocularEnrollment])
          {
            delegate4 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
            currentOperationHandler3 = [delegate4 currentOperationHandler];
            identity2 = [currentOperationHandler3 identity];
            canAddPeriocularEnrollment = [identity2 canAddPeriocularEnrollment];

            if (canAddPeriocularEnrollment)
            {
              v4 = @"PERIOCULAR_ENROLL_FINISHED_BUDDY";
              goto LABEL_76;
            }

            goto LABEL_67;
          }
        }

LABEL_67:
        v4 = @"ENROLL_FINISHED";
        goto LABEL_76;
      }

      delegate5 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      currentOperationHandler4 = [delegate5 currentOperationHandler];

      enrollmentType = [currentOperationHandler4 enrollmentType];
      switch(enrollmentType)
      {
        case 3:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            isEnrollmentAugmentationOnly = [currentOperationHandler4 isEnrollmentAugmentationOnly];
            v61 = @"SECOND_SCAN_COMPLETE";
            if (isEnrollmentAugmentationOnly)
            {
              v61 = @"FIRST_SCAN_COMPLETE";
            }

            v4 = v61;
            goto LABEL_71;
          }

          enrollmentConfiguration2 = [currentOperationHandler4 enrollmentConfiguration];
          v4 = 0;
          if (enrollmentConfiguration2 <= 2)
          {
            if (enrollmentConfiguration2 == 1)
            {
              v4 = @"THIRD_SCAN_COMPLETE";
            }

            else if (!enrollmentConfiguration2)
            {
              [BKUIPearlEnrollViewBottomContainer _locStateNameForState:];
            }

            goto LABEL_71;
          }

          if (enrollmentConfiguration2 != 3)
          {
            if (enrollmentConfiguration2 != 4)
            {
              goto LABEL_71;
            }

LABEL_31:
            v4 = @"FIRST_SCAN_COMPLETE";
LABEL_71:

            goto LABEL_76;
          }

          break;
        case 2:
          break;
        case 1:
          goto LABEL_31;
        default:
          v4 = 0;
          goto LABEL_71;
      }

      v4 = @"SECOND_SCAN_COMPLETE";
      goto LABEL_71;
    }

    delegate6 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    currentOperationHandler5 = [delegate6 currentOperationHandler];
    if ([currentOperationHandler5 isEnrollmentAugmentationOnly])
    {
      delegate7 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      if ([delegate7 isFinalEnrollment])
      {
        delegate8 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        if ([delegate8 isFinalEnrollment])
        {
          delegate9 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
          currentOperationHandler6 = [delegate9 currentOperationHandler];
          enrollOperation = [currentOperationHandler6 enrollOperation];
          v28 = enrollOperation == 0;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 1;
      }
    }

    else
    {
      v28 = 0;
    }

    delegate10 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    currentOperationHandler7 = [delegate10 currentOperationHandler];
    if ([currentOperationHandler7 isEnrollmentAugmentationOnly])
    {
      delegate11 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      currentOperationHandler8 = [delegate11 currentOperationHandler];
      v49 = [currentOperationHandler8 glassesFound] ^ 1;
    }

    else
    {
      v49 = 0;
    }

    delegate12 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    enrollmentConfiguration3 = [delegate12 enrollmentConfiguration];

    if (enrollmentConfiguration3 == 4)
    {
      v4 = @"FACEID_SCAN_COMPLETE";
      goto LABEL_76;
    }

    if ((v49 | v28))
    {
LABEL_57:
      v4 = @"FIRST_SCAN_COMPLETE";
      goto LABEL_76;
    }

    delegate13 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    if ([delegate13 isFinalEnrollment])
    {
      delegate14 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      currentOperationHandler9 = [delegate14 currentOperationHandler];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        delegate15 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        currentOperationHandler10 = [delegate15 currentOperationHandler];
        centerBinComplete = [currentOperationHandler10 centerBinComplete];

        v4 = @"SECOND_SCAN_COMPLETE";
        if (!centerBinComplete)
        {
          goto LABEL_76;
        }

        delegate16 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        currentOperationHandler11 = [delegate16 currentOperationHandler];
        isEnrollmentAugmentationOnly2 = [currentOperationHandler11 isEnrollmentAugmentationOnly];

        v43 = @"THIRD_SCAN_COMPLETE";
        goto LABEL_62;
      }
    }

    v4 = @"SECOND_SCAN_COMPLETE";
    goto LABEL_76;
  }

  if (state == 6)
  {
    goto LABEL_57;
  }

  delegate17 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  currentOperationHandler12 = [delegate17 currentOperationHandler];
  if ([currentOperationHandler12 isEnrollmentAugmentationOnly])
  {
    delegate18 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    isFinalEnrollment = [delegate18 isFinalEnrollment];

    if (!isFinalEnrollment)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  delegate19 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  enrollmentConfiguration4 = [delegate19 enrollmentConfiguration];

  if (enrollmentConfiguration4 == 4)
  {
LABEL_34:
    v4 = @"FIRST_SCAN";
    goto LABEL_76;
  }

  delegate20 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  if (([delegate20 isFinalEnrollment] & 1) == 0)
  {
LABEL_73:

    v4 = @"SECOND_SCAN";
    goto LABEL_76;
  }

  delegate21 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  currentOperationHandler13 = [delegate21 currentOperationHandler];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_73;
  }

  delegate22 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  currentOperationHandler14 = [delegate22 currentOperationHandler];
  centerBinComplete2 = [currentOperationHandler14 centerBinComplete];

  v4 = @"SECOND_SCAN";
  if (!centerBinComplete2)
  {
    goto LABEL_76;
  }

  delegate23 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  currentOperationHandler15 = [delegate23 currentOperationHandler];
  isEnrollmentAugmentationOnly2 = [currentOperationHandler15 isEnrollmentAugmentationOnly];

  v43 = @"THIRD_SCAN";
LABEL_62:
  if (!isEnrollmentAugmentationOnly2)
  {
    v4 = v43;
  }

LABEL_76:

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = BKUIPearlEnrollViewBottomContainer;
  [(BKUIPearlEnrollViewBottomContainer *)&v4 layoutSubviews];
  instructionView = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  [instructionView layoutIfNeeded];
}

- (double)_topPaddingForButtonTray:(id)tray
{
  trayCopy = tray;
  displayState = [trayCopy displayState];
  if (displayState > 2)
  {
    if (displayState != 3)
    {
      if (displayState == 4)
      {
        [trayCopy size];
        v3 = v8;
      }

      goto LABEL_12;
    }

LABEL_8:
    nextStateButton = [trayCopy nextStateButton];
    [nextStateButton alpha];
    if (v9 == 0.0)
    {
      v3 = 25.0;
    }

    else
    {
      v3 = 0.0;
    }

    goto LABEL_11;
  }

  if (displayState == 1)
  {
    goto LABEL_8;
  }

  if (displayState == 2)
  {
    nextStateButton = [trayCopy bottomLinkButton];
    [nextStateButton origin];
    v3 = v7;
LABEL_11:
  }

LABEL_12:

  return v3;
}

- (void)finalizeInstructionAnimation
{
  buttonTray = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
  [buttonTray updateButtonLayout];

  scrollview = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [scrollview setShowsVerticalScrollIndicator:0];

  overlappingScrollview = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [overlappingScrollview setShowsVerticalScrollIndicator:0];

  instructionView = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  superview = [instructionView superview];

  v11Superview = [superview superview];
  [(BKUIPearlEnrollViewBottomContainer *)self bringSubviewToFront:v11Superview];
  [(BKUIPearlEnrollViewBottomContainer *)self setNeedsLayout];
  [(BKUIPearlEnrollViewBottomContainer *)self layoutIfNeeded];
  [v11Superview contentSize];
  v9 = v8;
  [v11Superview bounds];
  if (v9 > v10)
  {
    [v11Superview setShowsVerticalScrollIndicator:1];
    [v11Superview flashScrollIndicators];
  }
}

- (id)_targetScrollViewForState:(int)state
{
  if (state == 2)
  {
    [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  }

  else
  {
    [(BKUIPearlEnrollViewBottomContainer *)self offScreenScrollview];
  }
  v3 = ;

  return v3;
}

- (id)buttonTray
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  buttonTray = [onScreenScrollview buttonTray];

  return buttonTray;
}

- (void)updateButtonLayout
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self _updateButtonVisibilityForScrollView:onScreenScrollview];
}

- (id)bottomLinkButton
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  buttonTray = [onScreenScrollview buttonTray];
  bottomLinkButton = [buttonTray bottomLinkButton];

  return bottomLinkButton;
}

- (id)nextStateButton
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  buttonTray = [onScreenScrollview buttonTray];
  nextStateButton = [buttonTray nextStateButton];

  return nextStateButton;
}

- (id)buttonTrayTopAnchor
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  buttonTrayTopAnchor = [onScreenScrollview buttonTrayTopAnchor];

  return buttonTrayTopAnchor;
}

- (BKUIPearlInstructionView)instructionView
{
  onScreenScrollview = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  instructionView = [onScreenScrollview instructionView];

  return instructionView;
}

- (void)nextStateButtonWasPressed:(id)pressed
{
  pressedCopy = pressed;
  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  [delegate nextStateButtonPressed:pressedCopy];
}

- (void)escapeHatchButtonWasPressed:(id)pressed
{
  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  [delegate escapeHatchButtonPressed];
}

- (void)retryWasPressed:(id)pressed
{
  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  [delegate retryPressed];
}

- (void)updateButtonVisibility
{
  instructionView = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  overlappingScrollview = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  instructionView2 = [overlappingScrollview instructionView];
  if (instructionView == instructionView2)
  {
    [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  }

  else
  {
    [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  }
  v6 = ;

  [(BKUIPearlEnrollViewBottomContainer *)self _updateButtonVisibilityForScrollView:v6];
}

- (void)_updateButtonVisibilityForScrollView:(id)view
{
  viewCopy = view;
  delegate = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  state = [delegate state];
  delegate2 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  -[BKUIPearlEnrollViewBottomContainer _updateButtonVisibilityForScrollView:state:subState:](self, "_updateButtonVisibilityForScrollView:state:subState:", viewCopy, state, [delegate2 substate]);
}

- (void)_updateButtonLayoutForScrollView:(id)view
{
  viewCopy = view;
  buttonTray = [viewCopy buttonTray];
  [buttonTray updateButtonLayout];

  instructionView = [viewCopy instructionView];
  [instructionView layoutIfNeeded];

  buttonTray2 = [viewCopy buttonTray];
  [(BKUIPearlEnrollViewBottomContainer *)self _topPaddingForButtonTray:buttonTray2];
  v8 = v7;
  buttonTrayTopAnchor = [viewCopy buttonTrayTopAnchor];

  [buttonTrayTopAnchor setConstant:v8];
}

- (BKUIPearlBottomContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end