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
  _mapsui_layoutMarginsDescription = [self _mapsui_layoutMarginsDescription];
  v4 = [v2 stringWithFormat:@"%@\n%@", self, _mapsui_layoutMarginsDescription];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [self subviews];
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
        preservesSuperviewLayoutMargins = [v10 preservesSuperviewLayoutMargins];
        v12 = @"|";
        if (preservesSuperviewLayoutMargins)
        {
          v12 = @"*";
        }

        v13 = MEMORY[0x1E696AEC0];
        v14 = v12;
        _mapsui_recursiveLayoutMarginsDescription = [v10 _mapsui_recursiveLayoutMarginsDescription];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n  %@ ", v14];
        v17 = [_mapsui_recursiveLayoutMarginsDescription stringByReplacingOccurrencesOfString:@"\n" withString:v16];
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
  selfCopy = self;
  v2 = MEMORY[0x1E696AEC0];
  _mapsui_layoutMarginsDescription = [selfCopy _mapsui_layoutMarginsDescription];
  v4 = [v2 stringWithFormat:@"%@\n%@", selfCopy, _mapsui_layoutMarginsDescription];

  superview = [selfCopy superview];
  if (superview)
  {
    v8Superview = superview;
    while (1)
    {
      preservesSuperviewLayoutMargins = [selfCopy preservesSuperviewLayoutMargins];

      if (!preservesSuperviewLayoutMargins)
      {
        break;
      }

      superview2 = [selfCopy superview];

      v9 = MEMORY[0x1E696AEC0];
      _mapsui_layoutMarginsDescription2 = [superview2 _mapsui_layoutMarginsDescription];
      v11 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n  * "];
      v12 = [v9 stringWithFormat:@"%@\n%@\n  * %@", superview2, _mapsui_layoutMarginsDescription2, v11];

      v8Superview = [superview2 superview];
      v4 = v12;
      selfCopy = superview2;
      if (!v8Superview)
      {
        goto LABEL_7;
      }
    }
  }

  superview2 = selfCopy;
  v12 = v4;
LABEL_7:

  return v12;
}

- (id)_mapsui_layoutMarginsDescription
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"{\n"];
  [self layoutMargins];
  v3 = NSStringFromUIEdgeInsets(v12);
  [string appendFormat:@"\tlayoutMargins: %@, \n", v3];

  [self safeAreaInsets];
  v4 = NSStringFromUIEdgeInsets(v13);
  [string appendFormat:@"\tsafeAreaInsets: %@, \n", v4];

  if ([self edgesPreservingSuperviewLayoutMargins] && objc_msgSend(self, "edgesPreservingSuperviewLayoutMargins") != 15)
  {
    v6 = MUStringFromUIRectEdge([self edgesPreservingSuperviewLayoutMargins]);
    [string appendFormat:@"\tedgesPreservingSuperviewLayoutMargins: (%@), \n", v6];
  }

  else
  {
    if ([self preservesSuperviewLayoutMargins])
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    [string appendFormat:@"\tpreservesSuperviewLayoutMargins: %@, \n", v5];
  }

  if ([self edgesInsettingLayoutMarginsFromSafeArea] && objc_msgSend(self, "edgesInsettingLayoutMarginsFromSafeArea") != 15)
  {
    v8 = MUStringFromUIRectEdge([self edgesInsettingLayoutMarginsFromSafeArea]);
    [string appendFormat:@"\tedgesInsettingLayoutMarginsFromSafeArea: (%@), \n", v8];
  }

  else
  {
    if ([self insetsLayoutMarginsFromSafeArea])
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    [string appendFormat:@"\tinsetsLayoutMarginsFromSafeArea: %@, \n", v7];
  }

  [string appendFormat:@"}"];
  v9 = [string copy];

  return v9;
}

- (uint64_t)_mapsui_resetLayoutMarginsWithPreservesSuperview:()MapsUILayoutMargins insetsFromSafeArea:
{
  [self setLayoutMargins:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  if ([self preservesSuperviewLayoutMargins] != a3)
  {
    [self setPreservesSuperviewLayoutMargins:a3];
  }

  result = [self insetsLayoutMarginsFromSafeArea];
  if (result != a4)
  {

    return [self setInsetsLayoutMarginsFromSafeArea:a4];
  }

  return result;
}

@end