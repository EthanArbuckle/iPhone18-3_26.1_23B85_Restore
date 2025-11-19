@interface IATextInputActionsUtils
+ (id)stringForKeyboardDockItemButtonPressResult:(unint64_t)a3;
+ (id)stringForKeyboardDockItemButtonType:(unint64_t)a3;
+ (id)stringForReplaceWithCandidateType:(int64_t)a3;
+ (id)stringForSessionActionsEnum:(int64_t)a3;
+ (id)stringForSource:(int64_t)a3;
+ (id)stringForType:(int64_t)a3;
+ (int64_t)sessionActionsEnumFromSource:(int64_t)a3;
+ (int64_t)sessionActionsEnumFromSource:(int64_t)a3 type:(int64_t)a4;
+ (int64_t)setBool:(BOOL)a3 forField:(int64_t)a4 inFlagOptions:(int64_t)a5;
+ (unint64_t)log10IntegerForInt:(int64_t)a3;
+ (unint64_t)log10WholeNumberForUnsignedInt:(unint64_t)a3;
@end

@implementation IATextInputActionsUtils

+ (int64_t)setBool:(BOOL)a3 forField:(int64_t)a4 inFlagOptions:(int64_t)a5
{
  if (a3)
  {
    return a5 | a4;
  }

  else
  {
    return a5 & ~a4;
  }
}

+ (id)stringForSource:(int64_t)a3
{
  if ((a3 - 1) > 0xE)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E8489520[a3 - 1];
  }
}

+ (id)stringForType:(int64_t)a3
{
  if ((a3 - 1) > 0x13)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E8489598[a3 - 1];
  }
}

+ (id)stringForReplaceWithCandidateType:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"CandidateUnknown";
  }

  else
  {
    return off_1E8489638[a3 - 1];
  }
}

+ (int64_t)sessionActionsEnumFromSource:(int64_t)a3 type:(int64_t)a4
{
  result = objc_msgSend_sessionActionsEnumFromSource_(IATextInputActionsUtils, a2, a3);
  if (result == 1)
  {
    if (a3 != 12)
    {
      if (a3 != 4)
      {
        if (a3 == 3)
        {
          if ((a4 - 17) < 2)
          {
            return 5;
          }

          if (a4 != 15)
          {
            if (a4 == 1)
            {
              return 5;
            }

            return 0;
          }

          return 10;
        }

        return 0;
      }

      result = 6;
      if (a4 > 15)
      {
        if ((a4 - 17) < 2)
        {
          return result;
        }

        if (a4 == 16)
        {
          return 11;
        }

        return 0;
      }

      if (a4 == 1)
      {
        return result;
      }

      if (a4 == 2)
      {
        return 7;
      }
    }

    if (a4 == 15)
    {
      return 10;
    }

    return 0;
  }

  return result;
}

+ (int64_t)sessionActionsEnumFromSource:(int64_t)a3
{
  if ((a3 - 1) > 0xE)
  {
    return 2;
  }

  else
  {
    return qword_1D4631CC8[a3 - 1];
  }
}

+ (id)stringForSessionActionsEnum:(int64_t)a3
{
  if (a3 > 0xD)
  {
    return @"U";
  }

  else
  {
    return off_1E8489650[a3];
  }
}

+ (id)stringForKeyboardDockItemButtonPressResult:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"?";
  }

  else
  {
    return off_1E84896C0[a3];
  }
}

+ (id)stringForKeyboardDockItemButtonType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"?";
  }

  else
  {
    return off_1E84896E0[a3];
  }
}

+ (unint64_t)log10WholeNumberForUnsignedInt:(unint64_t)a3
{
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (a3 >> 4 >= 0x271)
  {
    v6 = 5;
  }

  if (a3 >= 0x3E8)
  {
    v5 = v6;
  }

  if (a3 >= 0x64)
  {
    v4 = v5;
  }

  if (a3 >= 0xA)
  {
    v3 = v4;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)log10IntegerForInt:(int64_t)a3
{
  if (a3 < -9999)
  {
    return 0;
  }

  if (a3 < -999)
  {
    return 1;
  }

  if (a3 < -99)
  {
    return 2;
  }

  if (a3 < -9)
  {
    return 3;
  }

  if (a3 < 0)
  {
    return 4;
  }

  if (!a3)
  {
    return 5;
  }

  if (a3 < 0xA)
  {
    return 6;
  }

  if (a3 < 0x64)
  {
    return 7;
  }

  if (a3 < 0x3E8)
  {
    return 8;
  }

  if (a3 >> 4 < 0x271)
  {
    return 9;
  }

  return 10;
}

@end