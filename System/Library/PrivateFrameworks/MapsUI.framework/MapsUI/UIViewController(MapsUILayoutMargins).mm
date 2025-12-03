@interface UIViewController(MapsUILayoutMargins)
- (id)_mapsui_viewLayoutMarginsDescription;
- (void)_mapsui_resetViewLayoutMarginsWithPreservesSuperview:()MapsUILayoutMargins insetsFromSafeArea:respectsSystemMinimum:;
@end

@implementation UIViewController(MapsUILayoutMargins)

- (id)_mapsui_viewLayoutMarginsDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"{\n"];
  view = [self view];
  [view layoutMargins];
  v4 = NSStringFromUIEdgeInsets(v25);
  [string appendFormat:@"\tview.layoutMargins: %@, \n", v4];

  view2 = [self view];
  [view2 safeAreaInsets];
  v6 = NSStringFromUIEdgeInsets(v26);
  [string appendFormat:@"\tview.safeAreaInsets: %@, \n", v6];

  view3 = [self view];
  if ([view3 edgesPreservingSuperviewLayoutMargins])
  {
    view4 = [self view];
    edgesPreservingSuperviewLayoutMargins = [view4 edgesPreservingSuperviewLayoutMargins];

    if (edgesPreservingSuperviewLayoutMargins != 15)
    {
      view5 = [self view];
      v11 = MUStringFromUIRectEdge([view5 edgesPreservingSuperviewLayoutMargins]);
      [string appendFormat:@"\tview.edgesPreservingSuperviewLayoutMargins: (%@), \n", v11];

      goto LABEL_9;
    }
  }

  else
  {
  }

  view5 = [self view];
  if ([view5 preservesSuperviewLayoutMargins])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [string appendFormat:@"\tview.preservesSuperviewLayoutMargins: %@, \n", v12];
LABEL_9:

  view6 = [self view];
  if ([view6 edgesInsettingLayoutMarginsFromSafeArea])
  {
    view7 = [self view];
    edgesInsettingLayoutMarginsFromSafeArea = [view7 edgesInsettingLayoutMarginsFromSafeArea];

    if (edgesInsettingLayoutMarginsFromSafeArea != 15)
    {
      view8 = [self view];
      v17 = MUStringFromUIRectEdge([view8 edgesInsettingLayoutMarginsFromSafeArea]);
      [string appendFormat:@"\tview.edgesInsettingLayoutMarginsFromSafeArea: (%@), \n", v17];

      goto LABEL_17;
    }
  }

  else
  {
  }

  view8 = [self view];
  if ([view8 insetsLayoutMarginsFromSafeArea])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [string appendFormat:@"\tview.insetsLayoutMarginsFromSafeArea: %@, \n", v18];
LABEL_17:

  if ([self viewRespectsSystemMinimumLayoutMargins])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [string appendFormat:@"\tviewRespectsSystemMinimumLayoutMargins: %@, \n", v19];
  [self systemMinimumLayoutMargins];
  v20 = NSStringFromDirectionalEdgeInsets(v27);
  [string appendFormat:@"\tsystemMinimumLayoutMargins: %@, \n", v20];

  [self additionalSafeAreaInsets];
  v21 = NSStringFromUIEdgeInsets(v28);
  [string appendFormat:@"\tadditionalSafeAreaInsets: %@, \n", v21];

  [string appendFormat:@"}"];
  v22 = [string copy];

  return v22;
}

- (void)_mapsui_resetViewLayoutMarginsWithPreservesSuperview:()MapsUILayoutMargins insetsFromSafeArea:respectsSystemMinimum:
{
  [self setViewRespectsSystemMinimumLayoutMargins:a5];
  view = [self view];
  [view _mapsui_resetLayoutMarginsWithPreservesSuperview:a3 insetsFromSafeArea:a4];
}

@end