@interface UIViewController(MapsUILayoutMargins)
- (id)_mapsui_viewLayoutMarginsDescription;
- (void)_mapsui_resetViewLayoutMarginsWithPreservesSuperview:()MapsUILayoutMargins insetsFromSafeArea:respectsSystemMinimum:;
@end

@implementation UIViewController(MapsUILayoutMargins)

- (id)_mapsui_viewLayoutMarginsDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  [v2 appendFormat:@"{\n"];
  v3 = [a1 view];
  [v3 layoutMargins];
  v4 = NSStringFromUIEdgeInsets(v25);
  [v2 appendFormat:@"\tview.layoutMargins: %@, \n", v4];

  v5 = [a1 view];
  [v5 safeAreaInsets];
  v6 = NSStringFromUIEdgeInsets(v26);
  [v2 appendFormat:@"\tview.safeAreaInsets: %@, \n", v6];

  v7 = [a1 view];
  if ([v7 edgesPreservingSuperviewLayoutMargins])
  {
    v8 = [a1 view];
    v9 = [v8 edgesPreservingSuperviewLayoutMargins];

    if (v9 != 15)
    {
      v10 = [a1 view];
      v11 = MUStringFromUIRectEdge([v10 edgesPreservingSuperviewLayoutMargins]);
      [v2 appendFormat:@"\tview.edgesPreservingSuperviewLayoutMargins: (%@), \n", v11];

      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = [a1 view];
  if ([v10 preservesSuperviewLayoutMargins])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v2 appendFormat:@"\tview.preservesSuperviewLayoutMargins: %@, \n", v12];
LABEL_9:

  v13 = [a1 view];
  if ([v13 edgesInsettingLayoutMarginsFromSafeArea])
  {
    v14 = [a1 view];
    v15 = [v14 edgesInsettingLayoutMarginsFromSafeArea];

    if (v15 != 15)
    {
      v16 = [a1 view];
      v17 = MUStringFromUIRectEdge([v16 edgesInsettingLayoutMarginsFromSafeArea]);
      [v2 appendFormat:@"\tview.edgesInsettingLayoutMarginsFromSafeArea: (%@), \n", v17];

      goto LABEL_17;
    }
  }

  else
  {
  }

  v16 = [a1 view];
  if ([v16 insetsLayoutMarginsFromSafeArea])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v2 appendFormat:@"\tview.insetsLayoutMarginsFromSafeArea: %@, \n", v18];
LABEL_17:

  if ([a1 viewRespectsSystemMinimumLayoutMargins])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v2 appendFormat:@"\tviewRespectsSystemMinimumLayoutMargins: %@, \n", v19];
  [a1 systemMinimumLayoutMargins];
  v20 = NSStringFromDirectionalEdgeInsets(v27);
  [v2 appendFormat:@"\tsystemMinimumLayoutMargins: %@, \n", v20];

  [a1 additionalSafeAreaInsets];
  v21 = NSStringFromUIEdgeInsets(v28);
  [v2 appendFormat:@"\tadditionalSafeAreaInsets: %@, \n", v21];

  [v2 appendFormat:@"}"];
  v22 = [v2 copy];

  return v22;
}

- (void)_mapsui_resetViewLayoutMarginsWithPreservesSuperview:()MapsUILayoutMargins insetsFromSafeArea:respectsSystemMinimum:
{
  [a1 setViewRespectsSystemMinimumLayoutMargins:a5];
  v8 = [a1 view];
  [v8 _mapsui_resetLayoutMarginsWithPreservesSuperview:a3 insetsFromSafeArea:a4];
}

@end