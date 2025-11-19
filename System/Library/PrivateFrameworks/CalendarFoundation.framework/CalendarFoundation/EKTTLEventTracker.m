@interface EKTTLEventTracker
+ (id)_valueForAlertType:(unint64_t)a3;
+ (id)_valueForETAType:(unint64_t)a3;
+ (id)_valueForTransportType:(unint64_t)a3;
+ (id)_valueForTravelState:(unint64_t)a3;
@end

@implementation EKTTLEventTracker

+ (id)_valueForAlertType:(unint64_t)a3
{
  v3 = @"Approaching Departure";
  if (a3 == 1)
  {
    v3 = @"Leave Now";
  }

  if (a3 == 2)
  {
    return @"Late";
  }

  else
  {
    return v3;
  }
}

+ (id)_valueForTransportType:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7EC6398 + a3 - 1);
  }
}

+ (id)_valueForETAType:(unint64_t)a3
{
  v3 = @"Short";
  if (a3 == 1)
  {
    v3 = @"Medium";
  }

  if (a3 == 2)
  {
    return @"Long";
  }

  else
  {
    return v3;
  }
}

+ (id)_valueForTravelState:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E7EC63B0 + a3 - 1);
  }
}

@end