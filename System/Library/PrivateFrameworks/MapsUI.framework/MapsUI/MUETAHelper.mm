@interface MUETAHelper
+ (id)axIDStringForTransportType:(unint64_t)type;
+ (id)axLabelForTransportType:(unint64_t)type;
+ (id)etaSymbolForTransportType:(unint64_t)type;
+ (int)analyticsActionForTransportType:(unint64_t)type;
@end

@implementation MUETAHelper

+ (id)axLabelForTransportType:(unint64_t)type
{
  v4 = type - 1;
  if (type - 1 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    v5 = _MULocalizedStringFromThisBundle(off_1E821A0E0[v4]);
  }

  else
  {
    v5 = &stru_1F44CA030;
  }

  return v5;
}

+ (id)axIDStringForTransportType:(unint64_t)type
{
  v3 = @"Transit";
  v4 = @"Cycling";
  v5 = @"Any";
  if (type != 0xFFFFFFF)
  {
    v5 = 0;
  }

  if (type != 8)
  {
    v4 = v5;
  }

  if (type != 4)
  {
    v3 = v4;
  }

  v6 = @"Driving";
  v7 = @"Walking";
  if (type != 2)
  {
    v7 = 0;
  }

  if (type != 1)
  {
    v6 = v7;
  }

  if (type <= 3)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

+ (int)analyticsActionForTransportType:(unint64_t)type
{
  if (type == 0xFFFFFFF)
  {
    v3 = 6003;
  }

  else
  {
    v3 = 17099;
  }

  if (type == 8)
  {
    v4 = 11026;
  }

  else
  {
    v4 = v3;
  }

  if (type == 4)
  {
    v5 = 11014;
  }

  else
  {
    v5 = v4;
  }

  if (type == 2)
  {
    v6 = 11013;
  }

  else
  {
    v6 = 17099;
  }

  if (type == 1)
  {
    v6 = 11012;
  }

  if (type <= 3)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

+ (id)etaSymbolForTransportType:(unint64_t)type
{
  if (type - 1 > 7)
  {
    return @"arrow.triangle.turn.up.right.circle.fill";
  }

  else
  {
    return off_1E821A0A0[type - 1];
  }
}

@end