@interface MUPrivateExtensionViewController
+ (double)_maxImageDimensionInView;
+ (id)_exportedInterface;
+ (id)_remoteViewControllerInterface;
- (BOOL)_validateAnimationDictionary:(id)a3 isEntering:(BOOL)a4;
- (CGAffineTransform)_transformToHideContainerViewBehindBounds:(SEL)a3;
- (CGRect)_containerBounds;
- (CGRect)_rectBetweenNavAndToolbar;
- (CGSize)_minimumFormSheetDimensions;
- (void)_adjustFormSheetFrameToFitSize:(CGSize)a3;
- (void)_animateEnteringMarkupWithInfo:(id)a3;
- (void)_animateExitWithInfo:(id)a3;
- (void)_bailFailedAnimateEnterMarkup;
- (void)_setupContainerAndDimmingViews;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation MUPrivateExtensionViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MUPrivateExtensionViewController;
  [(MUPrivateExtensionViewController *)&v4 viewDidAppear:a3];
  [(MUPrivateExtensionViewController *)self becomeFirstResponder];
}

- (void)viewDidLoad
{
  v63.receiver = self;
  v63.super_class = MUPrivateExtensionViewController;
  [(MUPrivateExtensionViewController *)&v63 viewDidLoad];
  v48 = [(MUPrivateExtensionViewController *)self extensionContext];
  if (v48)
  {
    v2 = [NSBundle bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"Markup" value:&stru_1000084A8 table:@"MUPrivateExtensionViewController"];
    [(MUPrivateExtensionViewController *)self setTitle:v3];

    v4 = +[UIDevice currentDevice];
    -[MUPrivateExtensionViewController setShowAsFormSheet:](self, "setShowAsFormSheet:", [v4 userInterfaceIdiom] == 1);

    [(MUPrivateExtensionViewController *)self _containerBounds];
    if (v7 >= v8)
    {
      v7 = v8;
    }

    v9 = v7 + -50.0;
    v10 = v9;
    v11 = v9;
    if (!CGRectIsEmpty(*&v5))
    {
      [(MUPrivateExtensionViewController *)self setPreferredContentSize:v9, v9];
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = [v48 inputItems];
    v46 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v46)
    {
      v12 = *v60;
      v43 = *v60;
      do
      {
        v13 = 0;
        do
        {
          if (*v60 != v12)
          {
            v14 = v13;
            objc_enumerationMutation(obj);
            v13 = v14;
          }

          v15 = *(*(&v59 + 1) + 8 * v13);
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v44 = v13;
          v45 = v15;
          v16 = [v15 attachments];
          v17 = [v16 countByEnumeratingWithState:&v55 objects:v64 count:16];
          if (!v17)
          {
            goto LABEL_26;
          }

          v18 = *v56;
          while (2)
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v56 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v55 + 1) + 8 * i);
              v21 = [UTTypeFileURL identifier];
              v22 = [v20 hasItemConformingToTypeIdentifier:v21];

              v23 = UTTypeFileURL;
              if (v22)
              {
                goto LABEL_17;
              }

              v25 = [UTTypeData identifier];
              v26 = [v20 hasItemConformingToTypeIdentifier:v25];

              if ((v26 & 1) == 0)
              {
                v28 = [UTTypeImage identifier];
                v29 = [v20 hasItemConformingToTypeIdentifier:v28];

                v23 = UTTypeImage;
                if ((v29 & 1) == 0)
                {
                  v30 = [UTTypePDF identifier];
                  v31 = [v20 hasItemConformingToTypeIdentifier:v30];

                  v23 = UTTypePDF;
                  if (!v31)
                  {
                    continue;
                  }
                }

LABEL_17:
                v24 = v23;
                if (v24)
                {
                  v32 = v24;
LABEL_29:
                  [(MUPrivateExtensionViewController *)self _setupContainerAndDimmingViews];
                  if (([(MUPrivateExtensionViewController *)self useFancyTransition]& 1) == 0)
                  {
                    v33 = [(MUPrivateExtensionViewController *)self _effectiveBackgroundColor];
                    v34 = [(MUPrivateExtensionViewController *)self contentContainerView];
                    [v34 setBackgroundColor:v33];
                  }

                  objc_initWeak(&location, self);
                  v35 = [(UTType *)v32 identifier];
                  v50[0] = _NSConcreteStackBlock;
                  v50[1] = 3221225472;
                  v50[2] = sub_100001468;
                  v50[3] = &unk_100008378;
                  objc_copyWeak(&v53, &location);
                  v50[4] = v45;
                  v36 = v32;
                  v51 = v36;
                  v52 = self;
                  [v20 loadItemForTypeIdentifier:v35 options:0 completionHandler:v50];

                  objc_destroyWeak(&v53);
                  objc_destroyWeak(&location);

                  goto LABEL_32;
                }

                continue;
              }

              v27 = UTTypeData;
              if (UTTypeData)
              {
                v32 = v27;
                v37 = [v45 userInfo];
                v38 = [(MUPrivateExtensionViewController *)self _validateAnimationDictionary:v37 isEntering:1];

                if (v38)
                {
                  [(MUPrivateExtensionViewController *)self setUseFancyTransition:1];
                  v39 = [v45 userInfo];
                  v40 = [v39 valueForKey:MUDisplayAsFullScreen];

                  if (v40)
                  {
                    v41 = +[UIDevice currentDevice];
                    if ([v41 userInterfaceIdiom] == 1)
                    {
                      v42 = [v40 BOOLValue] ^ 1;
                    }

                    else
                    {
                      v42 = 0;
                    }

                    [(MUPrivateExtensionViewController *)self setShowAsFormSheet:v42];
                  }
                }

                goto LABEL_29;
              }
            }

            v17 = [v16 countByEnumeratingWithState:&v55 objects:v64 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }

LABEL_26:

          v12 = v43;
          v13 = v44 + 1;
        }

        while ((v44 + 1) != v46);
        v46 = [obj countByEnumeratingWithState:&v59 objects:v65 count:16];
        v12 = v43;
      }

      while (v46);
    }

LABEL_32:

    [(MUPrivateExtensionViewController *)self _createCancelDoneNavBar];
  }

  [(MUPrivateExtensionViewController *)self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = MUPrivateExtensionViewController;
  [(MUPrivateExtensionViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ([(MUPrivateExtensionViewController *)self showAsFormSheet]&& [(MUPrivateExtensionViewController *)self useFancyTransition])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000019C4;
    v8[3] = &unk_1000083A0;
    v8[4] = self;
    [v7 animateAlongsideTransition:v8 completion:0];
  }
}

+ (double)_maxImageDimensionInView
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MUPrivateExtensionViewController;
  objc_msgSendSuper2(&v4, "_maxImageDimensionInView");
  return fmin(v2, 1400.0);
}

+ (id)_remoteViewControllerInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MURemoteViewProtocol];
  v3 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v2 setClasses:v3 forSelector:"serviceDidFinishwithResults:andSandboxExtension:" argumentIndex:0 ofReply:0];

  v4 = [NSSet setWithObjects:objc_opt_class(), 0];
  [v2 setClasses:v4 forSelector:"serviceDidFinishwithResults:andSandboxExtension:" argumentIndex:1 ofReply:0];

  return v2;
}

+ (id)_exportedInterface
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MUExtensionViewProtocol];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v3, v4, v5, objc_opt_class(), 0];
  [v2 setClasses:v6 forSelector:"animateExitWithInfo:" argumentIndex:0 ofReply:0];

  return v2;
}

- (BOOL)_validateAnimationDictionary:(id)a3 isEntering:(BOOL)a4
{
  v4 = &MUAnimationSourceRect;
  if (!a4)
  {
    v4 = &MUAnimationTargetRect;
  }

  v5 = *v4;
  v6 = a3;
  v7 = [v6 valueForKey:v5];
  v8 = [v6 valueForKey:MUAnimationMaskRect];

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;

  return v10;
}

- (void)_setupContainerAndDimmingViews
{
  if ([(MUPrivateExtensionViewController *)self showAsFormSheet]&& [(MUPrivateExtensionViewController *)self useFancyTransition])
  {
    v3 = [[UIView alloc] initWithFrame:{100.0, 40.0, 800.0, 720.0}];
    [(MUPrivateExtensionViewController *)self setContentContainerView:v3];

    v4 = [(MUPrivateExtensionViewController *)self contentContainerView];
    v5 = [v4 layer];
    [v5 setCornerRadius:13.0];

    v6 = [(MUPrivateExtensionViewController *)self contentContainerView];
    v7 = [v6 layer];
    [v7 setMasksToBounds:1];

    firstValue = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [firstValue setTranslatesAutoresizingMaskIntoConstraints:0];
    [firstValue setAlpha:0.0];
    [(MUPrivateExtensionViewController *)self setTransitionDimmingView:firstValue];
    v8 = +[UIColor blackColor];
    v9 = [(MUPrivateExtensionViewController *)self transitionDimmingView];
    [v9 setBackgroundColor:v8];

    v10 = [(MUPrivateExtensionViewController *)self view];
    [v10 addSubview:firstValue];

    v11 = _NSDictionaryOfVariableBindings(@"transitionDimmingView", firstValue, 0);
    v12 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[transitionDimmingView]|" options:0 metrics:0 views:v11];
    [NSLayoutConstraint activateConstraints:v12];

    v13 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[transitionDimmingView]|" options:0 metrics:0 views:v11];
    [NSLayoutConstraint activateConstraints:v13];

    v14 = [(MUPrivateExtensionViewController *)self view];
    v15 = [(MUPrivateExtensionViewController *)self contentContainerView];
    [v14 addSubview:v15];
  }

  else
  {
    firstValue = [(MUPrivateExtensionViewController *)self view];
    [(MUPrivateExtensionViewController *)self setContentContainerView:?];
  }
}

- (void)_adjustFormSheetFrameToFitSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(MUPrivateExtensionViewController *)self showAsFormSheet]&& [(MUPrivateExtensionViewController *)self useFancyTransition])
  {
    v6 = [(MUPrivateExtensionViewController *)self contentContainerView];
    [v6 frame];
    v47 = v8;
    v48 = v7;
    v45 = v10;
    v46 = v9;

    v11 = [(MUPrivateExtensionViewController *)self navBar];
    [v11 bounds];
    v12 = height + CGRectGetHeight(v50);
    v13 = [(MUPrivateExtensionViewController *)self toolbar];
    [v13 bounds];
    v14 = v12 + CGRectGetHeight(v51);

    [(MUPrivateExtensionViewController *)self _containerBounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    [(MUPrivateExtensionViewController *)self _minimumFormSheetDimensions];
    v24 = v23;
    v26 = v25;
    v52.origin.x = 0.0;
    v52.origin.y = 0.0;
    v52.size.width = width;
    v52.size.height = v14;
    v27 = CGRectGetWidth(v52);
    v28 = v27 >= v24 ? v27 : v24;
    v53.origin.x = 0.0;
    v53.origin.y = 0.0;
    v53.size.width = v28;
    v53.size.height = v14;
    v29 = CGRectGetHeight(v53);
    v30 = v29 >= v26 ? v29 : v26;
    v54.origin.x = 0.0;
    v54.origin.y = 0.0;
    v54.size.width = v28;
    v54.size.height = v30;
    v31 = CGRectGetWidth(v54);
    v55.origin.x = v16;
    v55.origin.y = v18;
    v55.size.width = v20;
    v55.size.height = v22;
    v32 = CGRectGetWidth(v55) + -50.0;
    v33 = v31 >= v32 ? v32 : v31;
    v56.origin.x = 0.0;
    v56.origin.y = 0.0;
    v56.size.width = v33;
    v56.size.height = v30;
    v34 = CGRectGetHeight(v56);
    v57.origin.x = v16;
    v57.origin.y = v18;
    v57.size.width = v20;
    v57.size.height = v22;
    v35 = CGRectGetHeight(v57) + -50.0;
    v36 = v34 >= v35 ? v35 : v34;
    v58.origin.x = v16;
    v58.origin.y = v18;
    v58.size.width = v20;
    v58.size.height = v22;
    MidX = CGRectGetMidX(v58);
    v59.origin.x = 0.0;
    v59.origin.y = 0.0;
    v59.size.width = v33;
    v59.size.height = v36;
    v38 = MidX + CGRectGetWidth(v59) * -0.5;
    v60.origin.x = v16;
    v60.origin.y = v18;
    v60.size.width = v20;
    v60.size.height = v22;
    MidY = CGRectGetMidY(v60);
    v61.origin.x = 0.0;
    v61.origin.y = 0.0;
    v61.size.width = v33;
    v61.size.height = v36;
    v40 = MidY + CGRectGetHeight(v61) * -0.5;
    v62.origin.y = v47;
    v62.origin.x = v48;
    v62.size.height = v45;
    v62.size.width = v46;
    v65.origin.x = v38;
    v65.origin.y = v40;
    v65.size.width = v33;
    v65.size.height = v36;
    if (!CGRectEqualToRect(v62, v65))
    {
      v63.origin.x = v38;
      v63.origin.y = v40;
      v63.size.width = v33;
      v63.size.height = v36;
      if (!CGRectIsEmpty(v63))
      {
        v64.origin.x = v38;
        v64.origin.y = v40;
        v64.size.width = v33;
        v64.size.height = v36;
        if (!CGRectIsInfinite(v64))
        {
          v41 = CGSizeZero.height;
          if (CGSizeZero.width != v33 || v41 != v36)
          {
            v43 = [(MUPrivateExtensionViewController *)self contentContainerView:CGSizeZero.width];
            [v43 setFrame:{v38, v40, v33, v36}];

            if ([(MUPrivateExtensionViewController *)self showAsFormSheet])
            {
              if ([(MUPrivateExtensionViewController *)self useFancyTransition]&& ([(MUPrivateExtensionViewController *)self isAnimatingMarkupExtensionTransition]& 1) == 0)
              {
                v44 = [(MUPrivateExtensionViewController *)self whiteView];
                [v44 removeFromSuperview];

                [(MUPrivateExtensionViewController *)self setWhiteView:0];
              }
            }
          }
        }
      }
    }
  }
}

- (CGAffineTransform)_transformToHideContainerViewBehindBounds:(SEL)a3
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [(MUPrivateExtensionViewController *)self contentContainerView];
  [v10 frame];
  v11 = width / CGRectGetWidth(v24);

  v12 = [(MUPrivateExtensionViewController *)self contentContainerView];
  [v12 frame];
  v13 = height / CGRectGetHeight(v25);

  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeScale(&v23, v11, v13);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MidX = CGRectGetMidX(v26);
  v15 = [(MUPrivateExtensionViewController *)self contentContainerView];
  [v15 frame];
  v16 = MidX - CGRectGetMidX(v27);
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  MidY = CGRectGetMidY(v28);
  v18 = [(MUPrivateExtensionViewController *)self contentContainerView];
  [v18 frame];
  v19 = CGRectGetMidY(v29);
  CGAffineTransformMakeTranslation(&t2, v16, MidY - v19);
  v21 = v23;
  CGAffineTransformConcat(retstr, &v21, &t2);

  return result;
}

- (CGRect)_rectBetweenNavAndToolbar
{
  v3 = [(MUPrivateExtensionViewController *)self contentContainerView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(MUPrivateExtensionViewController *)self navBar];
  [v12 bounds];
  v13 = v7 + CGRectGetHeight(v22);

  v14 = [(MUPrivateExtensionViewController *)self navBar];
  [v14 bounds];
  Height = CGRectGetHeight(v23);
  v16 = [(MUPrivateExtensionViewController *)self toolbar];
  [v16 bounds];
  v17 = v11 - (Height + CGRectGetHeight(v24));

  v18 = v5;
  v19 = v13;
  v20 = v9;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_containerBounds
{
  v3 = [(MUPrivateExtensionViewController *)self view];
  v4 = [v3 window];

  if (v4)
  {
    v5 = [(MUPrivateExtensionViewController *)self view];
    v6 = [v5 window];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v5 = +[UIScreen mainScreen];
    [v5 bounds];
    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  v19 = v8;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGSize)_minimumFormSheetDimensions
{
  v2 = 800.0;
  v3 = 590.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_animateEnteringMarkupWithInfo:(id)a3
{
  v4 = a3;
  [(MUPrivateExtensionViewController *)self setIsAnimatingMarkupExtensionTransition:1];
  if ([(MUPrivateExtensionViewController *)self showAsFormSheet])
  {
    v5 = [(MUPrivateExtensionViewController *)self contentViewController];
    [v5 visibleContentRect];
    [(MUPrivateExtensionViewController *)self _adjustFormSheetFrameToFitSize:v6, v7];
  }

  memset(&rect, 0, sizeof(rect));
  CGRectMakeWithDictionaryRepresentation([v4 valueForKey:MUAnimationSourceRect], &rect);
  v8 = [UIView alloc];
  v9 = [(MUPrivateExtensionViewController *)self contentContainerView];
  [v9 bounds];
  v10 = [v8 initWithFrame:?];

  v11 = [(MUPrivateExtensionViewController *)self _effectiveBackgroundColor];
  [v10 setBackgroundColor:v11];

  v12 = [(MUPrivateExtensionViewController *)self contentViewController];
  v13 = [v12 view];
  [v13 addSubview:v10];

  v14 = [UIView alloc];
  v15 = [(MUPrivateExtensionViewController *)self contentViewController];
  v16 = [v15 view];
  v17 = [(MUPrivateExtensionViewController *)self contentViewController];
  [v17 visibleContentRect];
  [v16 convertRect:0 fromView:?];
  v18 = [v14 initWithFrame:?];

  v19 = [(MUPrivateExtensionViewController *)self _effectiveBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = [(MUPrivateExtensionViewController *)self contentViewController];
  v21 = [v20 view];
  [v21 addSubview:v18];

  memset(&v84, 0, sizeof(v84));
  CGRectMakeWithDictionaryRepresentation([v4 valueForKey:MUAnimationMaskRect], &v84);
  if (CGRectContainsRect(v84, rect))
  {
    v84 = rect;
  }

  v22 = [(MUPrivateExtensionViewController *)self view];
  [v22 convertRect:0 fromView:{v84.origin.x, v84.origin.y, v84.size.width, v84.size.height}];
  v84.origin.x = v23;
  v84.origin.y = v24;
  v84.size.width = v25;
  v84.size.height = v26;

  v27 = [UIView alloc];
  v28 = [v27 initWithFrame:{v84.origin.x, v84.origin.y, v84.size.width, v84.size.height}];
  v29 = [(MUPrivateExtensionViewController *)self view];
  if (([(MUPrivateExtensionViewController *)self showAsFormSheet]& 1) != 0)
  {
    v30 = [(MUPrivateExtensionViewController *)self contentContainerView];
    [v29 insertSubview:v28 aboveSubview:v30];
  }

  else
  {
    v30 = [(MUPrivateExtensionViewController *)self contentViewController];
    v31 = [v30 view];
    [v29 insertSubview:v28 aboveSubview:v31];
  }

  [v28 setClipsToBounds:1];
  v32 = [(MUPrivateExtensionViewController *)self contentViewController];
  v33 = [v32 contentSnapshot];

  [v28 convertRect:0 fromView:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  [v33 setFrame:?];
  [v28 addSubview:v33];
  v34 = [v4 valueForKey:MUAnimationIconImage];
  if (v34)
  {
    v35 = [UIImageView alloc];
    [v33 bounds];
    v36 = [v35 initWithFrame:?];
    [v36 setImage:v34];
    [v33 addSubview:v36];
  }

  else
  {
    v36 = 0;
  }

  v37 = [UIView alloc];
  [v28 frame];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = [(MUPrivateExtensionViewController *)self view];
  [v46 convertRect:0 fromView:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  v89.origin.x = v47;
  v89.origin.y = v48;
  v89.size.width = v49;
  v89.size.height = v50;
  v86.origin.x = v39;
  v86.origin.y = v41;
  v86.size.width = v43;
  v86.size.height = v45;
  v87 = CGRectIntersection(v86, v89);
  v51 = [v37 initWithFrame:{v87.origin.x, v87.origin.y, v87.size.width, v87.size.height}];
  [(MUPrivateExtensionViewController *)self setWhiteView:v51];

  v52 = +[UIColor whiteColor];
  v53 = [(MUPrivateExtensionViewController *)self whiteView];
  [v53 setBackgroundColor:v52];

  v54 = [(MUPrivateExtensionViewController *)self view];
  v55 = [(MUPrivateExtensionViewController *)self whiteView];
  [v54 insertSubview:v55 atIndex:0];

  if ([(MUPrivateExtensionViewController *)self showAsFormSheet])
  {
    v56 = [(MUPrivateExtensionViewController *)self view];
    [v56 convertRect:0 fromView:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
    v90.origin.x = v57;
    v90.origin.y = v58;
    v90.size.width = v59;
    v90.size.height = v60;
    v88 = CGRectIntersection(v84, v90);
    x = v88.origin.x;
    y = v88.origin.y;
    width = v88.size.width;
    height = v88.size.height;

    [(MUPrivateExtensionViewController *)self _transformToHideContainerViewBehindBounds:x, y, width, height];
    v65 = [(MUPrivateExtensionViewController *)self contentContainerView];
    v83[0] = v83[3];
    v83[1] = v83[4];
    v83[2] = v83[5];
    [v65 setTransform:v83];
  }

  v66 = [(MUPrivateExtensionViewController *)self view];
  [v66 layoutIfNeeded];

  v77[0] = _NSConcreteStackBlock;
  v77[1] = 3221225472;
  v77[2] = sub_100002C1C;
  v77[3] = &unk_1000083F0;
  v77[4] = self;
  v78 = v28;
  v79 = v10;
  v80 = v33;
  v81 = v36;
  v82 = v18;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_100002FD4;
  v72[3] = &unk_100008418;
  v73 = v78;
  v74 = v79;
  v75 = v82;
  v76 = self;
  v67 = v82;
  v68 = v79;
  v69 = v78;
  v70 = v36;
  v71 = v33;
  [UIView animateKeyframesWithDuration:0 delay:v77 options:v72 animations:0.5 completion:0.0];
}

- (void)_animateExitWithInfo:(id)a3
{
  v4 = a3;
  if ([(MUPrivateExtensionViewController *)self _validateAnimationDictionary:v4 isEntering:0])
  {
    memset(&rect, 0, sizeof(rect));
    CGRectMakeWithDictionaryRepresentation([v4 valueForKey:MUAnimationTargetRect], &rect);
    v78 = 0;
    v79 = &v78;
    v80 = 0x4010000000;
    v81 = &unk_100005F89;
    v82 = 0u;
    v83 = 0u;
    v5 = [v4 valueForKey:MUAnimationMaskRect];
    CGRectMakeWithDictionaryRepresentation(v5, v79 + 1);
    v6 = [(MUPrivateExtensionViewController *)self view];
    [v6 convertRect:0 fromView:{v79[1].origin.x, v79[1].origin.y, v79[1].size.width, v79[1].size.height}];
    p_x = &v79->origin.x;
    v79[1].origin.x = v8;
    p_x[5] = v9;
    p_x[6] = v10;
    p_x[7] = v11;

    v12 = [UIView alloc];
    v13 = [v12 initWithFrame:{v79[1].origin.x, v79[1].origin.y, v79[1].size.width, v79[1].size.height}];
    v14 = [(MUPrivateExtensionViewController *)self view];
    v15 = [(MUPrivateExtensionViewController *)self showAsFormSheet];
    if (v15)
    {
      v16 = [(MUPrivateExtensionViewController *)self contentContainerView];
      v17 = v16;
    }

    else
    {
      v17 = [(MUPrivateExtensionViewController *)self contentViewController];
      v16 = [v17 view];
    }

    [v14 insertSubview:v13 aboveSubview:v16];
    if ((v15 & 1) == 0)
    {
    }

    [v13 setClipsToBounds:1];
    v18 = [(MUPrivateExtensionViewController *)self contentViewController];
    [v18 visibleContentRect];
    [v13 convertRect:0 fromView:?];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v13 bounds];
    v87.origin.x = v20;
    v87.origin.y = v22;
    v87.size.width = v24;
    v87.size.height = v26;
    if (!CGRectContainsRect(v85, v87))
    {
      v27 = [(MUPrivateExtensionViewController *)self showAsFormSheet];
      v28 = v27;
      if (v27)
      {
        [(MUPrivateExtensionViewController *)self _rectBetweenNavAndToolbar];
      }

      else
      {
        v15 = [(MUPrivateExtensionViewController *)self view];
        [v15 bounds];
      }

      [v13 setFrame:?];
      if ((v28 & 1) == 0)
      {
      }

      v29 = [(MUPrivateExtensionViewController *)self contentViewController];
      [v29 visibleContentRect];
      [v13 convertRect:0 fromView:?];
      v20 = v30;
      v22 = v31;
      v24 = v32;
      v26 = v33;
    }

    v34 = [(MUPrivateExtensionViewController *)self contentViewController];
    v35 = [v34 contentSnapshot];

    [v35 setFrame:{v20, v22, v24, v26}];
    [v13 addSubview:v35];
    v36 = [v4 valueForKey:MUAnimationIconImage];
    if (v36)
    {
      v37 = [UIImageView alloc];
      [v35 bounds];
      v38 = [v37 initWithFrame:?];
      [v38 setImage:v36];
      [v38 setAlpha:0.0];
      [v35 addSubview:v38];
    }

    else
    {
      v38 = 0;
    }

    v69 = v36;
    v39 = [UIView alloc];
    v40 = [(MUPrivateExtensionViewController *)self view];
    [v40 bounds];
    v41 = [v39 initWithFrame:?];

    v42 = [(MUPrivateExtensionViewController *)self _effectiveBackgroundColor];
    [v41 setBackgroundColor:v42];

    v43 = [(MUPrivateExtensionViewController *)self contentViewController];
    v44 = [v43 view];
    [v44 addSubview:v41];

    [v41 setAlpha:0.0];
    v45 = [UIView alloc];
    v46 = [(MUPrivateExtensionViewController *)self contentViewController];
    v47 = [v46 view];
    v48 = [(MUPrivateExtensionViewController *)self contentViewController];
    [v48 visibleContentRect];
    [v47 convertRect:0 fromView:?];
    v49 = [v45 initWithFrame:?];

    v50 = [(MUPrivateExtensionViewController *)self _effectiveBackgroundColor];
    [v49 setBackgroundColor:v50];

    v51 = [(MUPrivateExtensionViewController *)self contentViewController];
    v52 = [v51 view];
    [v52 addSubview:v49];

    v53 = [UIView alloc];
    v54 = v79;
    v55 = [(MUPrivateExtensionViewController *)self view];
    [v55 convertRect:0 fromView:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
    v88.origin.x = v56;
    v88.origin.y = v57;
    v88.size.width = v58;
    v88.size.height = v59;
    v86 = CGRectIntersection(v54[1], v88);
    v60 = [v53 initWithFrame:{v86.origin.x, v86.origin.y, v86.size.width, v86.size.height}];

    v61 = +[UIColor whiteColor];
    [v60 setBackgroundColor:v61];

    v62 = [(MUPrivateExtensionViewController *)self view];
    [v62 insertSubview:v60 atIndex:0];

    v63 = +[UIColor clearColor];
    v64 = [(MUPrivateExtensionViewController *)self contentContainerView];
    [v64 setBackgroundColor:v63];

    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v77 = rect;
    v71[2] = sub_100003754;
    v71[3] = &unk_100008440;
    v71[4] = self;
    v76 = &v78;
    v65 = v41;
    v72 = v65;
    v66 = v13;
    v73 = v66;
    v67 = v35;
    v74 = v67;
    v68 = v38;
    v75 = v68;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100003B74;
    v70[3] = &unk_100008468;
    v70[4] = self;
    [UIView animateKeyframesWithDuration:0 delay:v71 options:v70 animations:0.5 completion:0.0];

    _Block_object_dispose(&v78, 8);
  }

  else
  {
    [(MUPrivateExtensionViewController *)self documentDidCloseTeardown];
  }
}

- (void)_bailFailedAnimateEnterMarkup
{
  v3 = [(MUPrivateExtensionViewController *)self contentContainerView];
  v4 = *&CGAffineTransformIdentity.c;
  v15[0] = *&CGAffineTransformIdentity.a;
  v15[1] = v4;
  v15[2] = *&CGAffineTransformIdentity.tx;
  [v3 setTransform:v15];

  v5 = [(MUPrivateExtensionViewController *)self toolbar];
  [v5 setAlpha:1.0];

  v6 = [(MUPrivateExtensionViewController *)self navBar];
  [v6 setAlpha:1.0];

  v7 = [(MUPrivateExtensionViewController *)self contentViewController];
  v8 = [v7 view];
  [v8 setAlpha:1.0];

  v9 = [(MUPrivateExtensionViewController *)self _effectiveBackgroundColor];
  v10 = [(MUPrivateExtensionViewController *)self contentContainerView];
  [v10 setBackgroundColor:v9];

  if ([(MUPrivateExtensionViewController *)self showAsFormSheet])
  {
    v11 = [(MUPrivateExtensionViewController *)self transitionDimmingView];
    [v11 setAlpha:0.37];
  }

  v12 = [(MUPrivateExtensionViewController *)self annotationController];
  v13 = [v12 toolbarViewController];

  v14 = [v13 floatingAttributeToolbarContainer];
  [v14 setAlpha:1.0];
}

@end