@interface ICAttributionSidebarController
+ (id)keyPathsForValuesAffectingAttributionSidebarVisibility;
- (ICAttributionSidebarController)init;
- (ICAttributionSidebarController)initWithTextView:(id)a3;
- (ICAttributionSidebarView)attributionSidebarView;
- (ICNAEventReporter)eventReporter;
- (ICTTTextEditFilter)filter;
- (ICTextView)textView;
- (int64_t)attributionSidebarVisibility;
- (void)cancelActiveGestures;
- (void)dealloc;
- (void)handlePanGesture:(id)a3;
- (void)hideSidebarAnimated:(BOOL)a3 contextPath:(int64_t)a4;
- (void)noteDidUpdateShare:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setEnabled:(BOOL)a3;
- (void)setFilter:(id)a3;
- (void)setFilter:(id)a3 animated:(BOOL)a4;
- (void)setTextViewController:(id)a3;
- (void)showSidebarAnimated:(BOOL)a3;
@end

@implementation ICAttributionSidebarController

- (int64_t)attributionSidebarVisibility
{
  v3 = [(ICAttributionSidebarController *)self attributionSidebarView];
  [v3 visibleContentWidth];
  v5 = v4;

  v6 = [(ICAttributionSidebarController *)self attributionSidebarView];
  [v6 fullContentWidth];
  v8 = v7;

  v9 = vabdd_f64(0.0, v5);
  v10 = v5 > 0.0;
  if (v5 >= v8)
  {
    v10 = 2;
  }

  if (v9 >= 0.00999999978)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

- (ICAttributionSidebarView)attributionSidebarView
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    objc_opt_class();
    v3 = [(ICAttributionSidebarController *)self textView];
    v4 = ICDynamicCast();
    v5 = [v4 attributionSidebarView];
  }

  else
  {
    v3 = [(ICAttributionSidebarController *)self textViewController];
    v5 = [v3 attributionSidebarView];
  }

  return v5;
}

- (ICTextView)textView
{
  textView = self->_textView;
  if (textView)
  {
    v3 = textView;
  }

  else
  {
    v4 = [(ICAttributionSidebarController *)self textViewController];
    v3 = [v4 textView];
  }

  return v3;
}

- (ICAttributionSidebarController)initWithTextView:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ICAttributionSidebarController;
  v6 = [(ICAttributionSidebarController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textView, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel_noteDidUpdateShare_ name:*MEMORY[0x277D364D8] object:0];

    v9 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v7 action:sel_handlePanGesture_];
    [(ICAttributionSidebarController *)v7 setPanGestureRecognizer:v9];

    v10 = [(ICAttributionSidebarController *)v7 panGestureRecognizer];
    [v10 setAllowedScrollTypesMask:2];

    v11 = [(ICAttributionSidebarController *)v7 panGestureRecognizer];
    [v5 addGestureRecognizer:v11];

    v12 = [(ICAttributionSidebarController *)v7 isEnabled];
    v13 = [(ICAttributionSidebarController *)v7 panGestureRecognizer];
    [v13 setEnabled:v12];
  }

  return v7;
}

- (ICAttributionSidebarController)init
{
  v5.receiver = self;
  v5.super_class = ICAttributionSidebarController;
  v2 = [(ICAttributionSidebarController *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_noteDidUpdateShare_ name:*MEMORY[0x277D364D8] object:0];
  }

  return v2;
}

- (void)setTextViewController:(id)a3
{
  v15 = a3;
  textViewController = self->_textViewController;
  if (textViewController)
  {
    v6 = [(ICTextViewController *)textViewController textView];
    v7 = [(ICAttributionSidebarController *)self panGestureRecognizer];
    [v6 removeGestureRecognizer:v7];

    [(ICTextViewController *)self->_textViewController ic_removeObserver:self forKeyPath:@"textView" context:&compoundliteral_2];
  }

  objc_storeStrong(&self->_textViewController, a3);
  [v15 ic_addObserver:self forKeyPath:@"textView" context:&compoundliteral_2];
  v8 = [(ICAttributionSidebarController *)self panGestureRecognizer];

  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handlePanGesture_];
    [(ICAttributionSidebarController *)self setPanGestureRecognizer:v9];

    v10 = [(ICAttributionSidebarController *)self panGestureRecognizer];
    [v10 setAllowedScrollTypesMask:2];
  }

  v11 = [v15 textView];
  v12 = [(ICAttributionSidebarController *)self panGestureRecognizer];
  [v11 addGestureRecognizer:v12];

  v13 = [(ICAttributionSidebarController *)self isEnabled];
  v14 = [(ICAttributionSidebarController *)self panGestureRecognizer];
  [v14 setEnabled:v13];
}

- (void)dealloc
{
  v3 = [(ICAttributionSidebarController *)self textViewController];
  [v3 ic_removeObserver:self forKeyPath:@"textView" context:&compoundliteral_2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = ICAttributionSidebarController;
  [(ICAttributionSidebarController *)&v5 dealloc];
}

- (ICTTTextEditFilter)filter
{
  v2 = [(ICAttributionSidebarController *)self attributionSidebarView];
  v3 = [v2 filter];

  return v3;
}

- (void)setFilter:(id)a3
{
  v4 = a3;
  v5 = [(ICAttributionSidebarController *)self attributionSidebarView];
  [v5 setFilter:v4];
}

- (void)setFilter:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ICAttributionSidebarController *)self attributionSidebarView];
  [v7 setFilter:v6 animated:v4];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  self->_enabled = a3;
  v4 = [(ICAttributionSidebarController *)self panGestureRecognizer];
  [v4 setEnabled:v3];
}

- (void)showSidebarAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(ICAttributionSidebarController *)self attributionSidebarVisibility]== 2)
  {
    return;
  }

  v5 = [(ICAttributionSidebarController *)self attributionSidebarView];
  [v5 fullContentWidth];
  v7 = v6;

  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    v9 = [(ICAttributionSidebarController *)self textViewController];
    [v9 setAttributionSidebarWidth:0 isGestureActive:v3 animated:v7 currentVelocity:0.0];
    goto LABEL_6;
  }

  v8 = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];

  if (v8)
  {
    v9 = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];
    v9[2](v9, 0, v3, v7, 0.0);
LABEL_6:
  }

  v10 = [(ICAttributionSidebarController *)self textView];
  v11 = [v10 editorController];
  v13 = [v11 note];

  if (v13)
  {
    v12 = [(ICAttributionSidebarController *)self eventReporter];
    [v12 startAttributionSideBarViewEventForNote:v13];
  }
}

- (void)hideSidebarAnimated:(BOOL)a3 contextPath:(int64_t)a4
{
  v5 = a3;
  if (![(ICAttributionSidebarController *)self attributionSidebarVisibility])
  {
    return;
  }

  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    v8 = [(ICAttributionSidebarController *)self textViewController];
    [v8 setAttributionSidebarWidth:0 isGestureActive:v5 animated:0.0 currentVelocity:0.0];
    goto LABEL_7;
  }

  v7 = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];

  if (v7)
  {
    v8 = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];
    v8[2](v8, 0, v5, 0.0, 0.0);
LABEL_7:
  }

  v9 = [(ICAttributionSidebarController *)self textView];
  v10 = [v9 editorController];
  v12 = [v10 note];

  v11 = [(ICAttributionSidebarController *)self eventReporter];
  [v11 submitAttributionSideBarViewEventForNote:v12 contextPath:a4 startState:3 endState:1];
}

+ (id)keyPathsForValuesAffectingAttributionSidebarVisibility
{
  if (ICInternalSettingsIsTextKit2Enabled())
  {
    v2 = @"textView.attributionSidebarView.visibleWidth";
  }

  else
  {
    v2 = @"textViewController.attributionSidebarView.visibleWidth";
  }

  v3 = [MEMORY[0x277CBEB98] setWithObject:v2];

  return v3;
}

- (void)cancelActiveGestures
{
  v3 = [(ICAttributionSidebarController *)self panGestureRecognizer];
  [v3 setEnabled:0];

  v4 = [(ICAttributionSidebarController *)self isEnabled];
  v5 = [(ICAttributionSidebarController *)self panGestureRecognizer];
  [v5 setEnabled:v4];
}

- (void)handlePanGesture:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = [(ICAttributionSidebarController *)self attributionSidebarView];
    [v5 visibleContentWidth];
    [(ICAttributionSidebarController *)self setAttributionSidebarGestureBaselineX:?];

    [(ICAttributionSidebarController *)self setAttributionSidebarGestureAcceptedDistanceX:0.0];
    [(ICAttributionSidebarController *)self setAttributionSidebarGestureIgnoredDistanceX:0.0];
    v6 = [MEMORY[0x277CBEAA8] now];
    [(ICAttributionSidebarController *)self setAttributionSidebarGestureStartTime:v6];

    [(ICAttributionSidebarController *)self setAttributionSidebarGestureHasBegunToOpen:0];
  }

  v7 = [(ICAttributionSidebarController *)self textView];
  v8 = [v7 ic_isRTL];

  v9 = [(ICAttributionSidebarController *)self attributionSidebarView];
  [v4 translationInView:v9];
  v11 = v10;
  v12 = -v10;

  v13 = [(ICAttributionSidebarController *)self textViewController];
  v14 = [v13 view];
  [v4 velocityInView:v14];
  v16 = v15;
  v18 = v17;

  if (v18 >= 0.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = -v18;
  }

  if (v16 >= 0.0)
  {
    v20 = v16;
  }

  else
  {
    v20 = -v16;
  }

  if (v8)
  {
    v21 = v12;
  }

  else
  {
    v21 = v11;
  }

  v108 = v16;
  v109 = v21;
  if (v8)
  {
    v22 = v16 < 0.0;
  }

  else
  {
    v22 = v16 > 0.0;
  }

  v23 = [(ICAttributionSidebarController *)self attributionSidebarVisibility];
  v24 = 1.0;
  if (v23 != 1)
  {
    v24 = 3.0;
  }

  v25 = v19 * v24;
  v26 = [(ICAttributionSidebarController *)self textView];
  [v26 safeAreaInsets];
  v28 = v27;
  v29 = [(ICAttributionSidebarController *)self textView];
  v30 = [v29 userTitleView];
  [v30 frame];
  v32 = v31;
  v33 = [(ICAttributionSidebarController *)self textView];
  v34 = [v33 dateView];
  [v34 frame];
  v36 = v35;

  v37 = [v4 state] == 3 || objc_msgSend(v4, "state") == 4 || objc_msgSend(v4, "state") == 5;
  v38 = [(ICAttributionSidebarController *)self textView];
  [v4 locationInView:v38];
  v40 = v39;
  v42 = v41;

  v43 = [(ICAttributionSidebarController *)self textView];
  v44 = [v43 editorController];
  v45 = [v44 isPositionOnTodoItem:{v40, v42}];

  if (v20 > v25 || v37)
  {
    v46 = [(ICAttributionSidebarController *)self textView];
    [v46 contentOffset];
    if (v47 >= -(v28 + v32 + v36) && (v22 || [(ICAttributionSidebarController *)self attributionSidebarVisibility]> 0 || [(ICAttributionSidebarController *)self attributionSidebarGestureHasBegunToOpen]))
    {
      if ((([(ICAttributionSidebarController *)self attributionSidebarVisibility]< 1) & v45) == 0)
      {

        goto LABEL_46;
      }

      v55 = [(ICAttributionSidebarController *)self attributionSidebarGestureStartTime];
      [v55 timeIntervalSinceNow];
      v57 = v56;

      if (v57 >= 0.0)
      {
        v58 = v57;
      }

      else
      {
        v58 = -v57;
      }

      if (v58 > 0.1)
      {
LABEL_46:
        [(ICAttributionSidebarController *)self attributionSidebarGestureIgnoredDistanceX];
        [(ICAttributionSidebarController *)self setAttributionSidebarGestureAcceptedDistanceX:v109 - v59];
        [(ICAttributionSidebarController *)self setAttributionSidebarGestureHasBegunToOpen:1];
        v60 = [(ICAttributionSidebarController *)self attributionSidebarView];
        [v60 fullContentWidth];
        v62 = v61;
        [v60 previewContentWidth];
        v64 = v63;
        if ([(ICAttributionSidebarController *)self attributionSidebarVisibility]== 0 && v22 || [(ICAttributionSidebarController *)self attributionSidebarVisibility]== 2 && (v65 = v108, v108 < 0.0))
        {
          v66 = MEMORY[0x277CCABB0];
          v67 = [(ICAttributionSidebarController *)self textView];
          [v67 contentOffset];
          v69 = [v66 numberWithDouble:v68];
          [(ICAttributionSidebarController *)self setAttributionSidebarGestureBaselineContentOffsetY:v69];
        }

        [(ICAttributionSidebarController *)self attributionSidebarGestureBaselineX];
        if (!v37)
        {
          v73 = v70;
          if ([v4 state] == 2)
          {
            [(ICAttributionSidebarController *)self attributionSidebarGestureBaselineX];
            v75 = v74;
            [(ICAttributionSidebarController *)self attributionSidebarGestureAcceptedDistanceX];
            v73 = v75 + v76;
            if (v73 > v62 || v73 < 0.0)
            {
              if (v73 <= v62)
              {
                v73 = -((1.0 - 1.0 / (v73 / v62 * -0.55 + 1.0)) * v62);
              }

              else
              {
                v73 = v62 + (1.0 - 1.0 / ((v73 - v62) / v62 * 0.55 + 1.0)) * v62;
              }
            }
          }

          goto LABEL_72;
        }

        if (v20 <= 300.0)
        {
          v72 = 0;
        }

        else
        {
          v71 = [(ICAttributionSidebarController *)self textView];
          v72 = [v71 isScrolling] ^ 1;
        }

        v77 = [(ICAttributionSidebarController *)self attributionSidebarView];
        [v77 visibleContentWidth];
        v79 = v78;

        if (v22)
        {
          v80 = v79 > v64;
          v73 = 0.0;
          if (((v80 | v72) & 1) == 0)
          {
LABEL_66:
            if ([(ICAttributionSidebarController *)self attributionSidebarVisibility]>= 1)
            {
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __51__ICAttributionSidebarController_handlePanGesture___block_invoke;
              block[3] = &unk_2781ABCF8;
              v111 = v60;
              dispatch_async(MEMORY[0x277D85CD0], block);
            }

LABEL_68:
            [(ICAttributionSidebarController *)self setAttributionSidebarGestureBaselineContentOffsetY:0];
            [v60 visibleContentWidth];
            if (v82 == 0.0 && v73 <= 0.0)
            {
              [(ICAttributionSidebarController *)self setAttributionSidebarGestureHasBegunToOpen:0];
LABEL_97:

              goto LABEL_98;
            }

LABEL_72:
            v83 = [(ICAttributionSidebarController *)self textView];
            v84 = [v83 editorController];
            v85 = [v84 note];

            [v60 visibleContentWidth];
            if (v86 == 0.0 && v73 > 0.0 && v85)
            {
              v87 = [(ICAttributionSidebarController *)self eventReporter];
              [v87 startAttributionSideBarViewEventForNote:v85];
            }

            [v60 fullContentWidth];
            if (v73 >= v88)
            {
              [v60 visibleContentWidth];
              v91 = v90;
              [v60 fullContentWidth];
              v89 = v91 < v92;
            }

            else
            {
              v89 = 0;
            }

            if (v73 <= 0.0)
            {
              [v60 visibleContentWidth];
              v93 = v94 > 0.0;
            }

            else
            {
              v93 = 0;
            }

            if (!v89 && !v93)
            {
LABEL_91:
              v105 = [v4 state];
              if (ICInternalSettingsIsTextKit2Enabled())
              {
                v106 = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];

                if (!v106)
                {
LABEL_96:

                  goto LABEL_97;
                }

                v107 = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];
                (v107)[2](v107, !v37, v105 != 2, v73, v108);
              }

              else
              {
                v107 = [(ICAttributionSidebarController *)self textViewController];
                [v107 setAttributionSidebarWidth:!v37 isGestureActive:v105 != 2 animated:v73 currentVelocity:v108];
              }

              goto LABEL_96;
            }

            if (v85)
            {
              if (v89)
              {
                v95 = [(ICAttributionSidebarController *)self eventReporter];
                [v95 submitAttributionSideBarViewEventForNote:v85 contextPath:3 startState:2 endState:3];

                v96 = [(ICAttributionSidebarController *)self eventReporter];
                [v96 startAttributionSideBarViewEventForNote:v85];
              }

              else
              {
                if (!v93)
                {
                  goto LABEL_89;
                }

                v96 = [(ICAttributionSidebarController *)self eventReporter];
                [v96 submitAttributionSideBarViewEventForNote:v85 contextPath:3 startState:3 endState:1];
              }
            }

LABEL_89:
            v97 = [(ICAttributionSidebarController *)self attributionSidebarGestureBaselineContentOffsetY];

            if (v97)
            {
              v98 = [(ICAttributionSidebarController *)self textView];
              [v98 contentOffset];
              v100 = v99;
              v101 = [(ICAttributionSidebarController *)self attributionSidebarGestureBaselineContentOffsetY];
              [v101 floatValue];
              v103 = v102;
              v104 = [(ICAttributionSidebarController *)self textView];
              [v104 setContentOffset:{v100, v103}];
            }

            goto LABEL_91;
          }
        }

        else
        {
          v81 = v79 < v64;
          v73 = 0.0;
          if ((v81 | v72))
          {
            goto LABEL_66;
          }
        }

        v73 = v62;
        if (v62 > 0.0)
        {
          goto LABEL_68;
        }

        goto LABEL_66;
      }
    }

    else
    {
    }
  }

  [(ICAttributionSidebarController *)self attributionSidebarGestureAcceptedDistanceX];
  [(ICAttributionSidebarController *)self setAttributionSidebarGestureIgnoredDistanceX:v109 - v48];
  if (v19 > v20 * 3.0 && [(ICAttributionSidebarController *)self attributionSidebarVisibility]== 2)
  {
    v49 = [(ICAttributionSidebarController *)self textView];
    v50 = [v49 isEditing];

    if (v50)
    {
      if (v19 > 80.0)
      {
        v51 = [(ICAttributionSidebarController *)self textView];
        [v51 resignFirstResponder];
      }
    }
  }

  if (v37 && ![(ICAttributionSidebarController *)self attributionSidebarVisibility])
  {
    [(ICAttributionSidebarController *)self attributionSidebarGestureAcceptedDistanceX];
    if (v52 != 0.0)
    {
      if (!ICInternalSettingsIsTextKit2Enabled())
      {
        v54 = [(ICAttributionSidebarController *)self textViewController];
        [v54 setAttributionSidebarWidth:0 isGestureActive:0 animated:0.0 currentVelocity:v108];
        goto LABEL_59;
      }

      v53 = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];

      if (v53)
      {
        v54 = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];
        v54[2](v54, 0, 0, 0.0, v108);
LABEL_59:
      }
    }
  }

LABEL_98:
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if (([(ICAttributionSidebarController *)self ic_didAddObserverForContext:a6 inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/Editor/Attributions/ICAttributionSidebarController.m"]& 1) != 0)
  {
    v13 = [(ICAttributionSidebarController *)self ic_shouldIgnoreObserveValue:v11 ofObject:v12 forKeyPath:v10];

    if (a6 == &compoundliteral_2 && (v13 & 1) == 0 && [v10 isEqualToString:@"textView"])
    {
      v14 = [(ICAttributionSidebarController *)self panGestureRecognizer];
      v15 = [v14 view];
      v16 = [(ICAttributionSidebarController *)self panGestureRecognizer];
      [v15 removeGestureRecognizer:v16];

      v17 = [(ICAttributionSidebarController *)self textViewController];
      v18 = [v17 textView];
      v19 = [(ICAttributionSidebarController *)self panGestureRecognizer];
      [v18 addGestureRecognizer:v19];
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = ICAttributionSidebarController;
    [(ICAttributionSidebarController *)&v20 observeValueForKeyPath:v10 ofObject:v12 change:v11 context:a6];
  }
}

- (void)noteDidUpdateShare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];

  v12 = ICCheckedDynamicCast();

  v6 = [(ICAttributionSidebarController *)self textView];
  v7 = [v6 editorController];
  v8 = [v7 note];

  v9 = [v8 objectID];
  v10 = [v12 objectID];
  if ([v9 isEqual:v10])
  {
    v11 = [v8 isSharedViaICloud];

    if ((v11 & 1) == 0)
    {
      [(ICAttributionSidebarController *)self hideSidebarAnimated:1];
    }
  }

  else
  {
  }
}

- (ICNAEventReporter)eventReporter
{
  v2 = [(ICAttributionSidebarController *)self textView];
  v3 = [v2 editorController];
  v4 = [v3 eventReporter];

  return v4;
}

@end