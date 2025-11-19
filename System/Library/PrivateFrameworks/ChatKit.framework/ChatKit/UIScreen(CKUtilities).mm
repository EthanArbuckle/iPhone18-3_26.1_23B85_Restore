@interface UIScreen(CKUtilities)
- (BOOL)__ck_isFullscreen;
@end

@implementation UIScreen(CKUtilities)

- (BOOL)__ck_isFullscreen
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 1)
  {
    return 1;
  }

  [a1 _mainSceneFrame];
  result = 1;
  if (v4 != 0.0)
  {
    v7 = v5;
    if (v5 != 0.0)
    {
      v8 = v4;
      [a1 _referenceBounds];
      v11 = v8 < v7;
      if (v9 < v10)
      {
        v11 = v8 > v7;
      }

      if (v11)
      {
        v12 = v8;
      }

      else
      {
        v12 = v7;
      }

      if (v11)
      {
        v13 = v7;
      }

      else
      {
        v13 = v8;
      }

      return v12 == v10 && v13 == v9;
    }
  }

  return result;
}

@end