@interface IATextInputActionsUtils
+ (id)stringForKeyboardDockItemButtonPressResult:(unint64_t)result;
+ (id)stringForKeyboardDockItemButtonType:(unint64_t)type;
+ (id)stringForReplaceWithCandidateType:(int64_t)type;
+ (id)stringForSessionActionsEnum:(int64_t)enum;
+ (id)stringForSource:(int64_t)source;
+ (id)stringForType:(int64_t)type;
+ (int64_t)sessionActionsEnumFromSource:(int64_t)source;
+ (int64_t)sessionActionsEnumFromSource:(int64_t)source type:(int64_t)type;
+ (int64_t)setBool:(BOOL)bool forField:(int64_t)field inFlagOptions:(int64_t)options;
+ (unint64_t)log10IntegerForInt:(int64_t)int;
+ (unint64_t)log10WholeNumberForUnsignedInt:(unint64_t)int;
@end

@implementation IATextInputActionsUtils

+ (int64_t)setBool:(BOOL)bool forField:(int64_t)field inFlagOptions:(int64_t)options
{
  if (bool)
  {
    return options | field;
  }

  else
  {
    return options & ~field;
  }
}

+ (id)stringForSource:(int64_t)source
{
  if ((source - 1) > 0xE)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E8489520[source - 1];
  }
}

+ (id)stringForType:(int64_t)type
{
  if ((type - 1) > 0x13)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E8489598[type - 1];
  }
}

+ (id)stringForReplaceWithCandidateType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return @"CandidateUnknown";
  }

  else
  {
    return off_1E8489638[type - 1];
  }
}

+ (int64_t)sessionActionsEnumFromSource:(int64_t)source type:(int64_t)type
{
  result = objc_msgSend_sessionActionsEnumFromSource_(IATextInputActionsUtils, a2, source);
  if (result == 1)
  {
    if (source != 12)
    {
      if (source != 4)
      {
        if (source == 3)
        {
          if ((type - 17) < 2)
          {
            return 5;
          }

          if (type != 15)
          {
            if (type == 1)
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
      if (type > 15)
      {
        if ((type - 17) < 2)
        {
          return result;
        }

        if (type == 16)
        {
          return 11;
        }

        return 0;
      }

      if (type == 1)
      {
        return result;
      }

      if (type == 2)
      {
        return 7;
      }
    }

    if (type == 15)
    {
      return 10;
    }

    return 0;
  }

  return result;
}

+ (int64_t)sessionActionsEnumFromSource:(int64_t)source
{
  if ((source - 1) > 0xE)
  {
    return 2;
  }

  else
  {
    return qword_1D4631CC8[source - 1];
  }
}

+ (id)stringForSessionActionsEnum:(int64_t)enum
{
  if (enum > 0xD)
  {
    return @"U";
  }

  else
  {
    return off_1E8489650[enum];
  }
}

+ (id)stringForKeyboardDockItemButtonPressResult:(unint64_t)result
{
  if (result > 3)
  {
    return @"?";
  }

  else
  {
    return off_1E84896C0[result];
  }
}

+ (id)stringForKeyboardDockItemButtonType:(unint64_t)type
{
  if (type > 2)
  {
    return @"?";
  }

  else
  {
    return off_1E84896E0[type];
  }
}

+ (unint64_t)log10WholeNumberForUnsignedInt:(unint64_t)int
{
  v3 = 1;
  v4 = 2;
  v5 = 3;
  v6 = 4;
  if (int >> 4 >= 0x271)
  {
    v6 = 5;
  }

  if (int >= 0x3E8)
  {
    v5 = v6;
  }

  if (int >= 0x64)
  {
    v4 = v5;
  }

  if (int >= 0xA)
  {
    v3 = v4;
  }

  if (int)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)log10IntegerForInt:(int64_t)int
{
  if (int < -9999)
  {
    return 0;
  }

  if (int < -999)
  {
    return 1;
  }

  if (int < -99)
  {
    return 2;
  }

  if (int < -9)
  {
    return 3;
  }

  if (int < 0)
  {
    return 4;
  }

  if (!int)
  {
    return 5;
  }

  if (int < 0xA)
  {
    return 6;
  }

  if (int < 0x64)
  {
    return 7;
  }

  if (int < 0x3E8)
  {
    return 8;
  }

  if (int >> 4 < 0x271)
  {
    return 9;
  }

  return 10;
}

@end