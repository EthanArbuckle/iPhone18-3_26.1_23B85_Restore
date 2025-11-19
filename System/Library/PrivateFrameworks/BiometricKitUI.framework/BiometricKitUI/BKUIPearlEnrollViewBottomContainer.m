@interface BKUIPearlEnrollViewBottomContainer
- (BKUIPearlBottomContainerDelegate)delegate;
- (BKUIPearlEnrollViewBottomContainer)initWithFrame:(CGRect)a3 inBuddy:(BOOL)a4 scrollView:(id)a5 overlapScrollView:(id)a6 delegate:(id)a7 squareNeedsPositionLayout:(BOOL)a8;
- (BKUIPearlInstructionView)instructionView;
- (double)_topPaddingForButtonTray:(id)a3;
- (id)_horizontalConstraintsForTagAlongTransitionView:(id)a3 state:(int)a4 position:(int64_t)a5;
- (id)_locStateDetailedLabelNameForState:(int)a3;
- (id)_locStateNameForState:(int)a3;
- (id)_targetScrollViewForState:(int)a3;
- (id)_updateTopPaddingAndReturnHorizontalConstraintsForScrollView:(id)a3 state:(int)a4 position:(int64_t)a5;
- (id)bottomLinkButton;
- (id)buttonTray;
- (id)buttonTrayTopAnchor;
- (id)nextStateButton;
- (void)_updateButtonLayoutForScrollView:(id)a3;
- (void)_updateButtonVisibilityForScrollView:(id)a3;
- (void)escapeHatchButtonWasPressed:(id)a3;
- (void)finalizeInstructionAnimation;
- (void)layoutSubviews;
- (void)nextStateButtonWasPressed:(id)a3;
- (void)retryWasPressed:(id)a3;
- (void)setupInitialUI;
- (void)updateButtonLayout;
- (void)updateButtonVisibility;
@end

@implementation BKUIPearlEnrollViewBottomContainer

- (BKUIPearlEnrollViewBottomContainer)initWithFrame:(CGRect)a3 inBuddy:(BOOL)a4 scrollView:(id)a5 overlapScrollView:(id)a6 delegate:(id)a7 squareNeedsPositionLayout:(BOOL)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v47.receiver = self;
  v47.super_class = BKUIPearlEnrollViewBottomContainer;
  v21 = [(BKUIPearlEnrollViewBottomContainer *)&v47 initWithFrame:x, y, width, height];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_scrollview, a5);
    objc_storeStrong(&v22->_overlappingScrollview, a6);
    v22->_squareNeedsPositionLayout = a8;
    v23 = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
    v24 = [v23 willUseActionDelegate];

    if ((v24 & 1) == 0)
    {
      v25 = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
      v26 = [v25 nextStateButton];
      [v26 addTarget:v22 action:sel_nextStateButtonWasPressed_ forControlEvents:0x2000];

      v27 = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
      v28 = [v27 bottomLinkButton];
      [v28 addTarget:v22 action:sel_escapeHatchButtonWasPressed_ forControlEvents:0x2000];

      v29 = [(BKUIScrollableContainer *)v22->_scrollview buttonTray];
      v30 = [v29 topLinkButton];
      [v30 addTarget:v22 action:sel_retryWasPressed_ forControlEvents:0x2000];
    }

    v31 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
    v32 = [v31 willUseActionDelegate];

    if ((v32 & 1) == 0)
    {
      v33 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
      v34 = [v33 nextStateButton];
      [v34 addTarget:v22 action:sel_nextStateButtonWasPressed_ forControlEvents:0x2000];

      v35 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
      v36 = [v35 bottomLinkButton];
      [v36 addTarget:v22 action:sel_escapeHatchButtonWasPressed_ forControlEvents:0x2000];

      v37 = [(BKUIScrollableContainer *)v22->_overlappingScrollview buttonTray];
      v38 = [v37 topLinkButton];
      [v38 addTarget:v22 action:sel_retryWasPressed_ forControlEvents:0x2000];
    }

    v22->_inBuddy = a4;
    v39 = [MEMORY[0x277CBEB38] dictionary];
    customInstructionStrings = v22->_customInstructionStrings;
    v22->_customInstructionStrings = v39;

    v41 = [MEMORY[0x277CBEB38] dictionary];
    customDetailStrings = v22->_customDetailStrings;
    v22->_customDetailStrings = v41;

    objc_storeWeak(&v22->_delegate, v20);
    v22->_overlapValue = 47.0;
    v43 = +[BKUIDevice sharedInstance];
    if ([v43 isZoomEnabled])
    {
      v44 = [MEMORY[0x277D75418] currentDevice];
      v45 = [v44 userInterfaceIdiom];

      if (!v45)
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
  v3 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self addSubview:v3];

  v4 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self addSubview:v4];

  v5 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  v6 = [v5 topAnchor];
  v7 = [(BKUIPearlEnrollViewBottomContainer *)self topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v9 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [v9 setTopToSuperViewConstraint:v8];

  v10 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  v11 = [v10 topAnchor];
  v12 = [(BKUIPearlEnrollViewBottomContainer *)self topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v14 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [v14 setTopToSuperViewConstraint:v13];

  v37 = MEMORY[0x277CCAAD0];
  v49 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  v48 = [v49 topToSuperViewConstraint];
  v50[0] = v48;
  v47 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  v46 = [v47 bottomAnchor];
  v45 = [(BKUIPearlEnrollViewBottomContainer *)self bottomAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v50[1] = v44;
  v43 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  v42 = [v43 leadingAnchor];
  v41 = [(BKUIPearlEnrollViewBottomContainer *)self leadingAnchor];
  v40 = [v42 constraintEqualToAnchor:v41];
  v50[2] = v40;
  v39 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  v38 = [v39 trailingAnchor];
  v36 = [(BKUIPearlEnrollViewBottomContainer *)self trailingAnchor];
  v35 = [v38 constraintEqualToAnchor:v36];
  v50[3] = v35;
  v34 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  v33 = [v34 topToSuperViewConstraint];
  v50[4] = v33;
  v32 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  v31 = [v32 bottomAnchor];
  v30 = [(BKUIPearlEnrollViewBottomContainer *)self bottomAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v50[5] = v29;
  v15 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  v16 = [v15 leadingAnchor];
  v17 = [(BKUIPearlEnrollViewBottomContainer *)self leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v50[6] = v18;
  v19 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  v20 = [v19 trailingAnchor];
  v21 = [(BKUIPearlEnrollViewBottomContainer *)self trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v50[7] = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:8];
  [v37 activateConstraints:v23];

  v24 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self setOnScreenScrollview:v24];

  v25 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self setOffScreenScrollview:v25];

  v26 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  v27 = [v26 instructionView];
  [(BKUIPearlEnrollViewBottomContainer *)self _configureInstructionView:v27 forState:2 substate:0];

  v28 = *MEMORY[0x277D85DE8];
}

- (id)_horizontalConstraintsForTagAlongTransitionView:(id)a3 state:(int)a4 position:(int64_t)a5
{
  v7 = a3;
  v8 = v7;
  switch(a5)
  {
    case 2:
      v11 = [v7 leftAnchor];
      goto LABEL_7;
    case 1:
      v11 = [v7 rightAnchor];
LABEL_7:
      v9 = v11;
      v10 = [(BKUIPearlEnrollViewBottomContainer *)self rightAnchor];
      goto LABEL_8;
    case 0:
      v9 = [v7 rightAnchor];
      v10 = [(BKUIPearlEnrollViewBottomContainer *)self leftAnchor];
LABEL_8:
      v12 = v10;
      v13 = [v9 constraintEqualToAnchor:v10];

      goto LABEL_10;
  }

  v13 = 0;
LABEL_10:

  return v13;
}

- (id)_updateTopPaddingAndReturnHorizontalConstraintsForScrollView:(id)a3 state:(int)a4 position:(int64_t)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 horizontalConstraint];
  [v9 setActive:0];

  v10 = [v8 scrollContentView];
  v11 = v10;
  if (a5 == 1)
  {
    v14 = [v10 rightAnchor];
  }

  else
  {
    if (!a5)
    {
      v12 = [v10 rightAnchor];
      v13 = [(BKUIPearlEnrollViewBottomContainer *)self leftAnchor];
      goto LABEL_7;
    }

    v14 = [v10 leftAnchor];
  }

  v12 = v14;
  v13 = [(BKUIPearlEnrollViewBottomContainer *)self rightAnchor];
LABEL_7:
  v15 = v13;
  v16 = [v12 constraintEqualToAnchor:v13];

  [v8 setHorizontalConstraint:v16];
  v17 = [(BKUIPearlEnrollViewBottomContainer *)self squareNeedsPositionLayout];
  if ((a4 - 5) < 0xFFFFFFFE || v17)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 47.0;
  }

  v20 = [v8 topToSuperViewConstraint];
  [v20 setConstant:v19];

  if (a4 == 10)
  {
    v21 = [v8 topToSuperViewConstraint];
    [v21 setConstant:0.0];
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

- (id)_locStateDetailedLabelNameForState:(int)a3
{
  v4 = [(BKUIPearlEnrollViewBottomContainer *)self _locStateNameForState:?];
  if (a3 == 9)
  {

    v4 = @"PARTIAL_CAPTURE";
  }

  return v4;
}

- (id)_locStateNameForState:(int)a3
{
  v4 = 0;
  if (a3 <= 5)
  {
    if ((a3 - 1) < 2)
    {
      v19 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      v20 = [v19 enrollmentConfiguration];

      if (v20 == 4)
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
      if (a3 != 5)
      {
        v5 = 0;
      }

      if ((a3 - 3) >= 2)
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

  if (a3 > 7)
  {
    if (a3 != 8)
    {
      if (a3 != 9)
      {
        if (a3 != 10)
        {
          goto LABEL_76;
        }

        v6 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        v7 = [v6 currentOperationHandler];
        if ([v7 supportsPeriocularEnrollment] && -[BKUIPearlEnrollViewBottomContainer inBuddy](self, "inBuddy"))
        {
          v8 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
          v9 = [v8 currentOperationHandler];
          v10 = [v9 identity];
          if ([v10 hasPeriocularEnrollment])
          {
            v11 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
            v12 = [v11 currentOperationHandler];
            v13 = [v12 identity];
            v14 = [v13 canAddPeriocularEnrollment];

            if (v14)
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

      v29 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      v30 = [v29 currentOperationHandler];

      v31 = [v30 enrollmentType];
      switch(v31)
      {
        case 3:
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v60 = [v30 isEnrollmentAugmentationOnly];
            v61 = @"SECOND_SCAN_COMPLETE";
            if (v60)
            {
              v61 = @"FIRST_SCAN_COMPLETE";
            }

            v4 = v61;
            goto LABEL_71;
          }

          v44 = [v30 enrollmentConfiguration];
          v4 = 0;
          if (v44 <= 2)
          {
            if (v44 == 1)
            {
              v4 = @"THIRD_SCAN_COMPLETE";
            }

            else if (!v44)
            {
              [BKUIPearlEnrollViewBottomContainer _locStateNameForState:];
            }

            goto LABEL_71;
          }

          if (v44 != 3)
          {
            if (v44 != 4)
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

    v21 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    v22 = [v21 currentOperationHandler];
    if ([v22 isEnrollmentAugmentationOnly])
    {
      v23 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      if ([v23 isFinalEnrollment])
      {
        v24 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        if ([v24 isFinalEnrollment])
        {
          v25 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
          v26 = [v25 currentOperationHandler];
          v27 = [v26 enrollOperation];
          v28 = v27 == 0;
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

    v45 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    v46 = [v45 currentOperationHandler];
    if ([v46 isEnrollmentAugmentationOnly])
    {
      v47 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      v48 = [v47 currentOperationHandler];
      v49 = [v48 glassesFound] ^ 1;
    }

    else
    {
      v49 = 0;
    }

    v50 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    v51 = [v50 enrollmentConfiguration];

    if (v51 == 4)
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

    v52 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    if ([v52 isFinalEnrollment])
    {
      v53 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
      v54 = [v53 currentOperationHandler];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        v56 = [v55 currentOperationHandler];
        v57 = [v56 centerBinComplete];

        v4 = @"SECOND_SCAN_COMPLETE";
        if (!v57)
        {
          goto LABEL_76;
        }

        v58 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
        v59 = [v58 currentOperationHandler];
        v42 = [v59 isEnrollmentAugmentationOnly];

        v43 = @"THIRD_SCAN_COMPLETE";
        goto LABEL_62;
      }
    }

    v4 = @"SECOND_SCAN_COMPLETE";
    goto LABEL_76;
  }

  if (a3 == 6)
  {
    goto LABEL_57;
  }

  v15 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v16 = [v15 currentOperationHandler];
  if ([v16 isEnrollmentAugmentationOnly])
  {
    v17 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
    v18 = [v17 isFinalEnrollment];

    if (!v18)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v32 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v33 = [v32 enrollmentConfiguration];

  if (v33 == 4)
  {
LABEL_34:
    v4 = @"FIRST_SCAN";
    goto LABEL_76;
  }

  v34 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  if (([v34 isFinalEnrollment] & 1) == 0)
  {
LABEL_73:

    v4 = @"SECOND_SCAN";
    goto LABEL_76;
  }

  v35 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v36 = [v35 currentOperationHandler];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_73;
  }

  v37 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v38 = [v37 currentOperationHandler];
  v39 = [v38 centerBinComplete];

  v4 = @"SECOND_SCAN";
  if (!v39)
  {
    goto LABEL_76;
  }

  v40 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v41 = [v40 currentOperationHandler];
  v42 = [v41 isEnrollmentAugmentationOnly];

  v43 = @"THIRD_SCAN";
LABEL_62:
  if (!v42)
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
  v3 = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  [v3 layoutIfNeeded];
}

- (double)_topPaddingForButtonTray:(id)a3
{
  v4 = a3;
  v5 = [v4 displayState];
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        [v4 size];
        v3 = v8;
      }

      goto LABEL_12;
    }

LABEL_8:
    v6 = [v4 nextStateButton];
    [v6 alpha];
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

  if (v5 == 1)
  {
    goto LABEL_8;
  }

  if (v5 == 2)
  {
    v6 = [v4 bottomLinkButton];
    [v6 origin];
    v3 = v7;
LABEL_11:
  }

LABEL_12:

  return v3;
}

- (void)finalizeInstructionAnimation
{
  v3 = [(BKUIPearlEnrollViewBottomContainer *)self buttonTray];
  [v3 updateButtonLayout];

  v4 = [(BKUIPearlEnrollViewBottomContainer *)self scrollview];
  [v4 setShowsVerticalScrollIndicator:0];

  v5 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  [v5 setShowsVerticalScrollIndicator:0];

  v6 = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  v11 = [v6 superview];

  v7 = [v11 superview];
  [(BKUIPearlEnrollViewBottomContainer *)self bringSubviewToFront:v7];
  [(BKUIPearlEnrollViewBottomContainer *)self setNeedsLayout];
  [(BKUIPearlEnrollViewBottomContainer *)self layoutIfNeeded];
  [v7 contentSize];
  v9 = v8;
  [v7 bounds];
  if (v9 > v10)
  {
    [v7 setShowsVerticalScrollIndicator:1];
    [v7 flashScrollIndicators];
  }
}

- (id)_targetScrollViewForState:(int)a3
{
  if (a3 == 2)
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
  v2 = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  v3 = [v2 buttonTray];

  return v3;
}

- (void)updateButtonLayout
{
  v3 = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  [(BKUIPearlEnrollViewBottomContainer *)self _updateButtonVisibilityForScrollView:v3];
}

- (id)bottomLinkButton
{
  v2 = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  v3 = [v2 buttonTray];
  v4 = [v3 bottomLinkButton];

  return v4;
}

- (id)nextStateButton
{
  v2 = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  v3 = [v2 buttonTray];
  v4 = [v3 nextStateButton];

  return v4;
}

- (id)buttonTrayTopAnchor
{
  v2 = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  v3 = [v2 buttonTrayTopAnchor];

  return v3;
}

- (BKUIPearlInstructionView)instructionView
{
  v2 = [(BKUIPearlEnrollViewBottomContainer *)self onScreenScrollview];
  v3 = [v2 instructionView];

  return v3;
}

- (void)nextStateButtonWasPressed:(id)a3
{
  v4 = a3;
  v5 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  [v5 nextStateButtonPressed:v4];
}

- (void)escapeHatchButtonWasPressed:(id)a3
{
  v3 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  [v3 escapeHatchButtonPressed];
}

- (void)retryWasPressed:(id)a3
{
  v3 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  [v3 retryPressed];
}

- (void)updateButtonVisibility
{
  v3 = [(BKUIPearlEnrollViewBottomContainer *)self instructionView];
  v4 = [(BKUIPearlEnrollViewBottomContainer *)self overlappingScrollview];
  v5 = [v4 instructionView];
  if (v3 == v5)
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

- (void)_updateButtonVisibilityForScrollView:(id)a3
{
  v4 = a3;
  v7 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  v5 = [v7 state];
  v6 = [(BKUIPearlEnrollViewBottomContainer *)self delegate];
  -[BKUIPearlEnrollViewBottomContainer _updateButtonVisibilityForScrollView:state:subState:](self, "_updateButtonVisibilityForScrollView:state:subState:", v4, v5, [v6 substate]);
}

- (void)_updateButtonLayoutForScrollView:(id)a3
{
  v4 = a3;
  v5 = [v4 buttonTray];
  [v5 updateButtonLayout];

  v6 = [v4 instructionView];
  [v6 layoutIfNeeded];

  v10 = [v4 buttonTray];
  [(BKUIPearlEnrollViewBottomContainer *)self _topPaddingForButtonTray:v10];
  v8 = v7;
  v9 = [v4 buttonTrayTopAnchor];

  [v9 setConstant:v8];
}

- (BKUIPearlBottomContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end