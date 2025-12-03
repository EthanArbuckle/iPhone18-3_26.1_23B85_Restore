@interface EKTTLEventTracker
+ (id)_valueForAlertType:(unint64_t)type;
+ (id)_valueForETAType:(unint64_t)type;
+ (id)_valueForTransportType:(unint64_t)type;
+ (id)_valueForTravelState:(unint64_t)state;
@end

@implementation EKTTLEventTracker

+ (id)_valueForAlertType:(unint64_t)type
{
  v3 = @"Approaching Departure";
  if (type == 1)
  {
    v3 = @"Leave Now";
  }

  if (type == 2)
  {
    return @"Late";
  }

  else
  {
    return v3;
  }
}

+ (id)_valueForTransportType:(unint64_t)type
{
  if (type - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7EC6398 + type - 1);
  }
}

+ (id)_valueForETAType:(unint64_t)type
{
  v3 = @"Short";
  if (type == 1)
  {
    v3 = @"Medium";
  }

  if (type == 2)
  {
    return @"Long";
  }

  else
  {
    return v3;
  }
}

+ (id)_valueForTravelState:(unint64_t)state
{
  if (state - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7EC63B0 + state - 1);
  }
}

@end