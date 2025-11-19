@interface MUETAHelper
+ (id)axIDStringForTransportType:(unint64_t)a3;
+ (id)axLabelForTransportType:(unint64_t)a3;
+ (id)etaSymbolForTransportType:(unint64_t)a3;
+ (int)analyticsActionForTransportType:(unint64_t)a3;
@end

@implementation MUETAHelper

+ (id)axLabelForTransportType:(unint64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    v5 = _MULocalizedStringFromThisBundle(off_1E821A0E0[v4]);
  }

  else
  {
    v5 = &stru_1F44CA030;
  }

  return v5;
}

+ (id)axIDStringForTransportType:(unint64_t)a3
{
  v3 = @"Transit";
  v4 = @"Cycling";
  v5 = @"Any";
  if (a3 != 0xFFFFFFF)
  {
    v5 = 0;
  }

  if (a3 != 8)
  {
    v4 = v5;
  }

  if (a3 != 4)
  {
    v3 = v4;
  }

  v6 = @"Driving";
  v7 = @"Walking";
  if (a3 != 2)
  {
    v7 = 0;
  }

  if (a3 != 1)
  {
    v6 = v7;
  }

  if (a3 <= 3)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

+ (int)analyticsActionForTransportType:(unint64_t)a3
{
  if (a3 == 0xFFFFFFF)
  {
    v3 = 6003;
  }

  else
  {
    v3 = 17099;
  }

  if (a3 == 8)
  {
    v4 = 11026;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == 4)
  {
    v5 = 11014;
  }

  else
  {
    v5 = v4;
  }

  if (a3 == 2)
  {
    v6 = 11013;
  }

  else
  {
    v6 = 17099;
  }

  if (a3 == 1)
  {
    v6 = 11012;
  }

  if (a3 <= 3)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

+ (id)etaSymbolForTransportType:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return @"arrow.triangle.turn.up.right.circle.fill";
  }

  else
  {
    return off_1E821A0A0[a3 - 1];
  }
}

@end