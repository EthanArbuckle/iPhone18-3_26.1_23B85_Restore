@interface UIView(MapsUILayoutMargins)
- (id)_mapsui_layoutMarginsDescription;
- (id)_mapsui_preservedLayoutMarginsDescription;
- (id)_mapsui_recursiveLayoutMarginsDescription;
- (uint64_t)_mapsui_resetLayoutMarginsWithPreservesSuperview:()MapsUILayoutMargins insetsFromSafeArea:;
@end

@implementation UIView(MapsUILayoutMargins)

- (id)_mapsui_recursiveLayoutMarginsDescription
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 _mapsui_layoutMarginsDescription];
  v4 = [v2 stringWithFormat:@"%@\n%@", a1, v3];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [a1 subviews];
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v8);
        v11 = [v10 preservesSuperviewLayoutMargins];
        v12 = @"|";
        if (v11)
        {
          v12 = @"*";
        }

        v13 = MEMORY[0x1E696AEC0];
        v14 = v12;
        v15 = [v10 _mapsui_recursiveLayoutMarginsDescription];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n  %@ ", v14];
        v17 = [v15 stringByReplacingOccurrencesOfString:@"\n" withString:v16];
        v4 = [v13 stringWithFormat:@"%@\n  %@ %@", v9, v14, v17];

        ++v8;
        v9 = v4;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_mapsui_preservedLayoutMarginsDescription
{
  v1 = a1;
  v2 = MEMORY[0x1E696AEC0];
  v3 = [v1 _mapsui_layoutMarginsDescription];
  v4 = [v2 stringWithFormat:@"%@\n%@", v1, v3];

  v5 = [v1 superview];
  if (v5)
  {
    v6 = v5;
    while (1)
    {
      v7 = [v1 preservesSuperviewLayoutMargins];

      if (!v7)
      {
        break;
      }

      v8 = [v1 superview];

      v9 = MEMORY[0x1E696AEC0];
      v10 = [v8 _mapsui_layoutMarginsDescription];
      v11 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n  * "];
      v12 = [v9 stringWithFormat:@"%@\n%@\n  * %@", v8, v10, v11];

      v6 = [v8 superview];
      v4 = v12;
      v1 = v8;
      if (!v6)
      {
        goto LABEL_7;
      }
    }
  }

  v8 = v1;
  v12 = v4;
LABEL_7:

  return v12;
}

- (id)_mapsui_layoutMarginsDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  [v2 appendFormat:@"{\n"];
  [a1 layoutMargins];
  v3 = NSStringFromUIEdgeInsets(v12);
  [v2 appendFormat:@"\tlayoutMargins: %@, \n", v3];

  [a1 safeAreaInsets];
  v4 = NSStringFromUIEdgeInsets(v13);
  [v2 appendFormat:@"\tsafeAreaInsets: %@, \n", v4];

  if ([a1 edgesPreservingSuperviewLayoutMargins] && objc_msgSend(a1, "edgesPreservingSuperviewLayoutMargins") != 15)
  {
    v6 = MUStringFromUIRectEdge([a1 edgesPreservingSuperviewLayoutMargins]);
    [v2 appendFormat:@"\tedgesPreservingSuperviewLayoutMargins: (%@), \n", v6];
  }

  else
  {
    if ([a1 preservesSuperviewLayoutMargins])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    [v2 appendFormat:@"\tpreservesSuperviewLayoutMargins: %@, \n", v5];
  }

  if ([a1 edgesInsettingLayoutMarginsFromSafeArea] && objc_msgSend(a1, "edgesInsettingLayoutMarginsFromSafeArea") != 15)
  {
    v8 = MUStringFromUIRectEdge([a1 edgesInsettingLayoutMarginsFromSafeArea]);
    [v2 appendFormat:@"\tedgesInsettingLayoutMarginsFromSafeArea: (%@), \n", v8];
  }

  else
  {
    if ([a1 insetsLayoutMarginsFromSafeArea])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    [v2 appendFormat:@"\tinsetsLayoutMarginsFromSafeArea: %@, \n", v7];
  }

  [v2 appendFormat:@"}"];
  v9 = [v2 copy];

  return v9;
}

- (uint64_t)_mapsui_resetLayoutMarginsWithPreservesSuperview:()MapsUILayoutMargins insetsFromSafeArea:
{
  [a1 setLayoutMargins:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  if ([a1 preservesSuperviewLayoutMargins] != a3)
  {
    [a1 setPreservesSuperviewLayoutMargins:a3];
  }

  result = [a1 insetsLayoutMarginsFromSafeArea];
  if (result != a4)
  {

    return [a1 setInsetsLayoutMarginsFromSafeArea:a4];
  }

  return result;
}

@end