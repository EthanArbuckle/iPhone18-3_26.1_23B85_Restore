@interface ICAttributionSidebarController
+ (id)keyPathsForValuesAffectingAttributionSidebarVisibility;
- (ICAttributionSidebarController)init;
- (ICAttributionSidebarController)initWithTextView:(id)view;
- (ICAttributionSidebarView)attributionSidebarView;
- (ICNAEventReporter)eventReporter;
- (ICTTTextEditFilter)filter;
- (ICTextView)textView;
- (int64_t)attributionSidebarVisibility;
- (void)cancelActiveGestures;
- (void)dealloc;
- (void)handlePanGesture:(id)gesture;
- (void)hideSidebarAnimated:(BOOL)animated contextPath:(int64_t)path;
- (void)noteDidUpdateShare:(id)share;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setEnabled:(BOOL)enabled;
- (void)setFilter:(id)filter;
- (void)setFilter:(id)filter animated:(BOOL)animated;
- (void)setTextViewController:(id)controller;
- (void)showSidebarAnimated:(BOOL)animated;
@end

@implementation ICAttributionSidebarController

- (int64_t)attributionSidebarVisibility
{
  attributionSidebarView = [(ICAttributionSidebarController *)self attributionSidebarView];
  [attributionSidebarView visibleContentWidth];
  v5 = v4;

  attributionSidebarView2 = [(ICAttributionSidebarController *)self attributionSidebarView];
  [attributionSidebarView2 fullContentWidth];
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
    textView = [(ICAttributionSidebarController *)self textView];
    v4 = ICDynamicCast();
    attributionSidebarView = [v4 attributionSidebarView];
  }

  else
  {
    textView = [(ICAttributionSidebarController *)self textViewController];
    attributionSidebarView = [textView attributionSidebarView];
  }

  return attributionSidebarView;
}

- (ICTextView)textView
{
  textView = self->_textView;
  if (textView)
  {
    textView = textView;
  }

  else
  {
    textViewController = [(ICAttributionSidebarController *)self textViewController];
    textView = [textViewController textView];
  }

  return textView;
}

- (ICAttributionSidebarController)initWithTextView:(id)view
{
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = ICAttributionSidebarController;
  v6 = [(ICAttributionSidebarController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_textView, view);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_noteDidUpdateShare_ name:*MEMORY[0x277D364D8] object:0];

    v9 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v7 action:sel_handlePanGesture_];
    [(ICAttributionSidebarController *)v7 setPanGestureRecognizer:v9];

    panGestureRecognizer = [(ICAttributionSidebarController *)v7 panGestureRecognizer];
    [panGestureRecognizer setAllowedScrollTypesMask:2];

    panGestureRecognizer2 = [(ICAttributionSidebarController *)v7 panGestureRecognizer];
    [viewCopy addGestureRecognizer:panGestureRecognizer2];

    isEnabled = [(ICAttributionSidebarController *)v7 isEnabled];
    panGestureRecognizer3 = [(ICAttributionSidebarController *)v7 panGestureRecognizer];
    [panGestureRecognizer3 setEnabled:isEnabled];
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_noteDidUpdateShare_ name:*MEMORY[0x277D364D8] object:0];
  }

  return v2;
}

- (void)setTextViewController:(id)controller
{
  controllerCopy = controller;
  textViewController = self->_textViewController;
  if (textViewController)
  {
    textView = [(ICTextViewController *)textViewController textView];
    panGestureRecognizer = [(ICAttributionSidebarController *)self panGestureRecognizer];
    [textView removeGestureRecognizer:panGestureRecognizer];

    [(ICTextViewController *)self->_textViewController ic_removeObserver:self forKeyPath:@"textView" context:&compoundliteral_2];
  }

  objc_storeStrong(&self->_textViewController, controller);
  [controllerCopy ic_addObserver:self forKeyPath:@"textView" context:&compoundliteral_2];
  panGestureRecognizer2 = [(ICAttributionSidebarController *)self panGestureRecognizer];

  if (!panGestureRecognizer2)
  {
    v9 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handlePanGesture_];
    [(ICAttributionSidebarController *)self setPanGestureRecognizer:v9];

    panGestureRecognizer3 = [(ICAttributionSidebarController *)self panGestureRecognizer];
    [panGestureRecognizer3 setAllowedScrollTypesMask:2];
  }

  textView2 = [controllerCopy textView];
  panGestureRecognizer4 = [(ICAttributionSidebarController *)self panGestureRecognizer];
  [textView2 addGestureRecognizer:panGestureRecognizer4];

  isEnabled = [(ICAttributionSidebarController *)self isEnabled];
  panGestureRecognizer5 = [(ICAttributionSidebarController *)self panGestureRecognizer];
  [panGestureRecognizer5 setEnabled:isEnabled];
}

- (void)dealloc
{
  textViewController = [(ICAttributionSidebarController *)self textViewController];
  [textViewController ic_removeObserver:self forKeyPath:@"textView" context:&compoundliteral_2];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = ICAttributionSidebarController;
  [(ICAttributionSidebarController *)&v5 dealloc];
}

- (ICTTTextEditFilter)filter
{
  attributionSidebarView = [(ICAttributionSidebarController *)self attributionSidebarView];
  filter = [attributionSidebarView filter];

  return filter;
}

- (void)setFilter:(id)filter
{
  filterCopy = filter;
  attributionSidebarView = [(ICAttributionSidebarController *)self attributionSidebarView];
  [attributionSidebarView setFilter:filterCopy];
}

- (void)setFilter:(id)filter animated:(BOOL)animated
{
  animatedCopy = animated;
  filterCopy = filter;
  attributionSidebarView = [(ICAttributionSidebarController *)self attributionSidebarView];
  [attributionSidebarView setFilter:filterCopy animated:animatedCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_enabled = enabled;
  panGestureRecognizer = [(ICAttributionSidebarController *)self panGestureRecognizer];
  [panGestureRecognizer setEnabled:enabledCopy];
}

- (void)showSidebarAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(ICAttributionSidebarController *)self attributionSidebarVisibility]== 2)
  {
    return;
  }

  attributionSidebarView = [(ICAttributionSidebarController *)self attributionSidebarView];
  [attributionSidebarView fullContentWidth];
  v7 = v6;

  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    textViewController = [(ICAttributionSidebarController *)self textViewController];
    [textViewController setAttributionSidebarWidth:0 isGestureActive:animatedCopy animated:v7 currentVelocity:0.0];
    goto LABEL_6;
  }

  sidebarWidthDidChangeHandler = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];

  if (sidebarWidthDidChangeHandler)
  {
    textViewController = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];
    textViewController[2](textViewController, 0, animatedCopy, v7, 0.0);
LABEL_6:
  }

  textView = [(ICAttributionSidebarController *)self textView];
  editorController = [textView editorController];
  note = [editorController note];

  if (note)
  {
    eventReporter = [(ICAttributionSidebarController *)self eventReporter];
    [eventReporter startAttributionSideBarViewEventForNote:note];
  }
}

- (void)hideSidebarAnimated:(BOOL)animated contextPath:(int64_t)path
{
  animatedCopy = animated;
  if (![(ICAttributionSidebarController *)self attributionSidebarVisibility])
  {
    return;
  }

  if (!ICInternalSettingsIsTextKit2Enabled())
  {
    textViewController = [(ICAttributionSidebarController *)self textViewController];
    [textViewController setAttributionSidebarWidth:0 isGestureActive:animatedCopy animated:0.0 currentVelocity:0.0];
    goto LABEL_7;
  }

  sidebarWidthDidChangeHandler = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];

  if (sidebarWidthDidChangeHandler)
  {
    textViewController = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];
    textViewController[2](textViewController, 0, animatedCopy, 0.0, 0.0);
LABEL_7:
  }

  textView = [(ICAttributionSidebarController *)self textView];
  editorController = [textView editorController];
  note = [editorController note];

  eventReporter = [(ICAttributionSidebarController *)self eventReporter];
  [eventReporter submitAttributionSideBarViewEventForNote:note contextPath:path startState:3 endState:1];
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
  panGestureRecognizer = [(ICAttributionSidebarController *)self panGestureRecognizer];
  [panGestureRecognizer setEnabled:0];

  isEnabled = [(ICAttributionSidebarController *)self isEnabled];
  panGestureRecognizer2 = [(ICAttributionSidebarController *)self panGestureRecognizer];
  [panGestureRecognizer2 setEnabled:isEnabled];
}

- (void)handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    attributionSidebarView = [(ICAttributionSidebarController *)self attributionSidebarView];
    [attributionSidebarView visibleContentWidth];
    [(ICAttributionSidebarController *)self setAttributionSidebarGestureBaselineX:?];

    [(ICAttributionSidebarController *)self setAttributionSidebarGestureAcceptedDistanceX:0.0];
    [(ICAttributionSidebarController *)self setAttributionSidebarGestureIgnoredDistanceX:0.0];
    v6 = [MEMORY[0x277CBEAA8] now];
    [(ICAttributionSidebarController *)self setAttributionSidebarGestureStartTime:v6];

    [(ICAttributionSidebarController *)self setAttributionSidebarGestureHasBegunToOpen:0];
  }

  textView = [(ICAttributionSidebarController *)self textView];
  ic_isRTL = [textView ic_isRTL];

  attributionSidebarView2 = [(ICAttributionSidebarController *)self attributionSidebarView];
  [gestureCopy translationInView:attributionSidebarView2];
  v11 = v10;
  v12 = -v10;

  textViewController = [(ICAttributionSidebarController *)self textViewController];
  view = [textViewController view];
  [gestureCopy velocityInView:view];
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

  if (ic_isRTL)
  {
    v21 = v12;
  }

  else
  {
    v21 = v11;
  }

  v108 = v16;
  v109 = v21;
  if (ic_isRTL)
  {
    v22 = v16 < 0.0;
  }

  else
  {
    v22 = v16 > 0.0;
  }

  attributionSidebarVisibility = [(ICAttributionSidebarController *)self attributionSidebarVisibility];
  v24 = 1.0;
  if (attributionSidebarVisibility != 1)
  {
    v24 = 3.0;
  }

  v25 = v19 * v24;
  textView2 = [(ICAttributionSidebarController *)self textView];
  [textView2 safeAreaInsets];
  v28 = v27;
  textView3 = [(ICAttributionSidebarController *)self textView];
  userTitleView = [textView3 userTitleView];
  [userTitleView frame];
  v32 = v31;
  textView4 = [(ICAttributionSidebarController *)self textView];
  dateView = [textView4 dateView];
  [dateView frame];
  v36 = v35;

  v37 = [gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4 || objc_msgSend(gestureCopy, "state") == 5;
  textView5 = [(ICAttributionSidebarController *)self textView];
  [gestureCopy locationInView:textView5];
  v40 = v39;
  v42 = v41;

  textView6 = [(ICAttributionSidebarController *)self textView];
  editorController = [textView6 editorController];
  v45 = [editorController isPositionOnTodoItem:{v40, v42}];

  if (v20 > v25 || v37)
  {
    textView7 = [(ICAttributionSidebarController *)self textView];
    [textView7 contentOffset];
    if (v47 >= -(v28 + v32 + v36) && (v22 || [(ICAttributionSidebarController *)self attributionSidebarVisibility]> 0 || [(ICAttributionSidebarController *)self attributionSidebarGestureHasBegunToOpen]))
    {
      if ((([(ICAttributionSidebarController *)self attributionSidebarVisibility]< 1) & v45) == 0)
      {

        goto LABEL_46;
      }

      attributionSidebarGestureStartTime = [(ICAttributionSidebarController *)self attributionSidebarGestureStartTime];
      [attributionSidebarGestureStartTime timeIntervalSinceNow];
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
        attributionSidebarView3 = [(ICAttributionSidebarController *)self attributionSidebarView];
        [attributionSidebarView3 fullContentWidth];
        v62 = v61;
        [attributionSidebarView3 previewContentWidth];
        v64 = v63;
        if ([(ICAttributionSidebarController *)self attributionSidebarVisibility]== 0 && v22 || [(ICAttributionSidebarController *)self attributionSidebarVisibility]== 2 && (v65 = v108, v108 < 0.0))
        {
          v66 = MEMORY[0x277CCABB0];
          textView8 = [(ICAttributionSidebarController *)self textView];
          [textView8 contentOffset];
          v69 = [v66 numberWithDouble:v68];
          [(ICAttributionSidebarController *)self setAttributionSidebarGestureBaselineContentOffsetY:v69];
        }

        [(ICAttributionSidebarController *)self attributionSidebarGestureBaselineX];
        if (!v37)
        {
          v73 = v70;
          if ([gestureCopy state] == 2)
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
          textView9 = [(ICAttributionSidebarController *)self textView];
          v72 = [textView9 isScrolling] ^ 1;
        }

        attributionSidebarView4 = [(ICAttributionSidebarController *)self attributionSidebarView];
        [attributionSidebarView4 visibleContentWidth];
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
              v111 = attributionSidebarView3;
              dispatch_async(MEMORY[0x277D85CD0], block);
            }

LABEL_68:
            [(ICAttributionSidebarController *)self setAttributionSidebarGestureBaselineContentOffsetY:0];
            [attributionSidebarView3 visibleContentWidth];
            if (v82 == 0.0 && v73 <= 0.0)
            {
              [(ICAttributionSidebarController *)self setAttributionSidebarGestureHasBegunToOpen:0];
LABEL_97:

              goto LABEL_98;
            }

LABEL_72:
            textView10 = [(ICAttributionSidebarController *)self textView];
            editorController2 = [textView10 editorController];
            note = [editorController2 note];

            [attributionSidebarView3 visibleContentWidth];
            if (v86 == 0.0 && v73 > 0.0 && note)
            {
              eventReporter = [(ICAttributionSidebarController *)self eventReporter];
              [eventReporter startAttributionSideBarViewEventForNote:note];
            }

            [attributionSidebarView3 fullContentWidth];
            if (v73 >= v88)
            {
              [attributionSidebarView3 visibleContentWidth];
              v91 = v90;
              [attributionSidebarView3 fullContentWidth];
              v89 = v91 < v92;
            }

            else
            {
              v89 = 0;
            }

            if (v73 <= 0.0)
            {
              [attributionSidebarView3 visibleContentWidth];
              v93 = v94 > 0.0;
            }

            else
            {
              v93 = 0;
            }

            if (!v89 && !v93)
            {
LABEL_91:
              state = [gestureCopy state];
              if (ICInternalSettingsIsTextKit2Enabled())
              {
                sidebarWidthDidChangeHandler = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];

                if (!sidebarWidthDidChangeHandler)
                {
LABEL_96:

                  goto LABEL_97;
                }

                sidebarWidthDidChangeHandler2 = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];
                (sidebarWidthDidChangeHandler2)[2](sidebarWidthDidChangeHandler2, !v37, state != 2, v73, v108);
              }

              else
              {
                sidebarWidthDidChangeHandler2 = [(ICAttributionSidebarController *)self textViewController];
                [sidebarWidthDidChangeHandler2 setAttributionSidebarWidth:!v37 isGestureActive:state != 2 animated:v73 currentVelocity:v108];
              }

              goto LABEL_96;
            }

            if (note)
            {
              if (v89)
              {
                eventReporter2 = [(ICAttributionSidebarController *)self eventReporter];
                [eventReporter2 submitAttributionSideBarViewEventForNote:note contextPath:3 startState:2 endState:3];

                eventReporter3 = [(ICAttributionSidebarController *)self eventReporter];
                [eventReporter3 startAttributionSideBarViewEventForNote:note];
              }

              else
              {
                if (!v93)
                {
                  goto LABEL_89;
                }

                eventReporter3 = [(ICAttributionSidebarController *)self eventReporter];
                [eventReporter3 submitAttributionSideBarViewEventForNote:note contextPath:3 startState:3 endState:1];
              }
            }

LABEL_89:
            attributionSidebarGestureBaselineContentOffsetY = [(ICAttributionSidebarController *)self attributionSidebarGestureBaselineContentOffsetY];

            if (attributionSidebarGestureBaselineContentOffsetY)
            {
              textView11 = [(ICAttributionSidebarController *)self textView];
              [textView11 contentOffset];
              v100 = v99;
              attributionSidebarGestureBaselineContentOffsetY2 = [(ICAttributionSidebarController *)self attributionSidebarGestureBaselineContentOffsetY];
              [attributionSidebarGestureBaselineContentOffsetY2 floatValue];
              v103 = v102;
              textView12 = [(ICAttributionSidebarController *)self textView];
              [textView12 setContentOffset:{v100, v103}];
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
    textView13 = [(ICAttributionSidebarController *)self textView];
    isEditing = [textView13 isEditing];

    if (isEditing)
    {
      if (v19 > 80.0)
      {
        textView14 = [(ICAttributionSidebarController *)self textView];
        [textView14 resignFirstResponder];
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
        textViewController2 = [(ICAttributionSidebarController *)self textViewController];
        [textViewController2 setAttributionSidebarWidth:0 isGestureActive:0 animated:0.0 currentVelocity:v108];
        goto LABEL_59;
      }

      sidebarWidthDidChangeHandler3 = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];

      if (sidebarWidthDidChangeHandler3)
      {
        textViewController2 = [(ICAttributionSidebarController *)self sidebarWidthDidChangeHandler];
        textViewController2[2](textViewController2, 0, 0, 0.0, v108);
LABEL_59:
      }
    }
  }

LABEL_98:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  objectCopy = object;
  if (([(ICAttributionSidebarController *)self ic_didAddObserverForContext:context inScope:"/Library/Caches/com.apple.xbs/Sources/MobileNotes/Ironcade/iOS/Editor/Attributions/ICAttributionSidebarController.m"]& 1) != 0)
  {
    v13 = [(ICAttributionSidebarController *)self ic_shouldIgnoreObserveValue:changeCopy ofObject:objectCopy forKeyPath:pathCopy];

    if (context == &compoundliteral_2 && (v13 & 1) == 0 && [pathCopy isEqualToString:@"textView"])
    {
      panGestureRecognizer = [(ICAttributionSidebarController *)self panGestureRecognizer];
      view = [panGestureRecognizer view];
      panGestureRecognizer2 = [(ICAttributionSidebarController *)self panGestureRecognizer];
      [view removeGestureRecognizer:panGestureRecognizer2];

      textViewController = [(ICAttributionSidebarController *)self textViewController];
      textView = [textViewController textView];
      panGestureRecognizer3 = [(ICAttributionSidebarController *)self panGestureRecognizer];
      [textView addGestureRecognizer:panGestureRecognizer3];
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = ICAttributionSidebarController;
    [(ICAttributionSidebarController *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)noteDidUpdateShare:(id)share
{
  shareCopy = share;
  objc_opt_class();
  object = [shareCopy object];

  v12 = ICCheckedDynamicCast();

  textView = [(ICAttributionSidebarController *)self textView];
  editorController = [textView editorController];
  note = [editorController note];

  objectID = [note objectID];
  objectID2 = [v12 objectID];
  if ([objectID isEqual:objectID2])
  {
    isSharedViaICloud = [note isSharedViaICloud];

    if ((isSharedViaICloud & 1) == 0)
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
  textView = [(ICAttributionSidebarController *)self textView];
  editorController = [textView editorController];
  eventReporter = [editorController eventReporter];

  return eventReporter;
}

@end