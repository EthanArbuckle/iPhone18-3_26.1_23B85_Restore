@interface NSStringFrom
@end

@implementation NSStringFrom

uint64_t __NSStringFrom_PBUIPosterViewControllerUpdateReasons_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 > 7)
  {
    if (a2 > 31)
    {
      if (a2 == 32)
      {
        v2 = @"OrientationUpdate";
        return [*(a1 + 32) bs_safeAddObject:v2];
      }

      if (a2 == 64)
      {
        v2 = @"MaglevDynamicOrientationUpdate";
        return [*(a1 + 32) bs_safeAddObject:v2];
      }
    }

    else
    {
      if (a2 == 8)
      {
        v2 = @"SceneActivation";
        return [*(a1 + 32) bs_safeAddObject:v2];
      }

      if (a2 == 16)
      {
        v2 = @"CreateHomeScreenController";
        return [*(a1 + 32) bs_safeAddObject:v2];
      }
    }

LABEL_20:
    v2 = @"(invalid _PBUIPosterViewControllerUpdateReason specified)";
    return [*(a1 + 32) bs_safeAddObject:v2];
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v2 = @"UpdateForActiveVariant";
      return [*(a1 + 32) bs_safeAddObject:v2];
    }

    if (a2 == 4)
    {
      v2 = @"SceneDeactivation";
      return [*(a1 + 32) bs_safeAddObject:v2];
    }

    goto LABEL_20;
  }

  if (!a2)
  {
    v2 = @"Unknown";
    return [*(a1 + 32) bs_safeAddObject:v2];
  }

  if (a2 != 1)
  {
    goto LABEL_20;
  }

  v2 = @"PosterUpdate";
  return [*(a1 + 32) bs_safeAddObject:v2];
}

@end