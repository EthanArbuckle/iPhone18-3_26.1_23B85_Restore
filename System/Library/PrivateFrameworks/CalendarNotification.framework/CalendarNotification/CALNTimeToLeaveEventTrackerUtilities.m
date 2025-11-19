@interface CALNTimeToLeaveEventTrackerUtilities
+ (id)ttlEventTrackerAlertTypeForTravelAdvisoryTimelinessPeriod:(unint64_t)a3;
+ (unint64_t)ttlEventTrackerAlertTypeForDate:(id)a3 hypothesis:(id)a4;
+ (unint64_t)ttlEventTrackerETATypeForHypothesis:(id)a3;
+ (unint64_t)ttlEventTrackerTransportTypeForGEOTransportType:(int)a3;
+ (unint64_t)ttlEventTrackerTravelStateForHypothesisTravelState:(int64_t)a3;
@end

@implementation CALNTimeToLeaveEventTrackerUtilities

+ (unint64_t)ttlEventTrackerAlertTypeForDate:(id)a3 hypothesis:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x277CC5B00] date:v5 representsLatenessForHypothesis:v6])
  {
    v7 = 2;
  }

  else
  {
    v7 = [MEMORY[0x277CC5B00] date:v5 representsApproachingDepartureDateForHypothesis:v6] ^ 1;
  }

  return v7;
}

+ (unint64_t)ttlEventTrackerTransportTypeForGEOTransportType:(int)a3
{
  if (a3 < 3)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)ttlEventTrackerETATypeForHypothesis:(id)a3
{
  [a3 estimatedTravelTime];
  v4 = v3 / 60.0;
  v5 = 2;
  if (v4 < 45.0)
  {
    v5 = 1;
  }

  if (v4 >= 10.0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)ttlEventTrackerTravelStateForHypothesisTravelState:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 1;
  }

  else
  {
    return qword_242967980[a3 - 1];
  }
}

+ (id)ttlEventTrackerAlertTypeForTravelAdvisoryTimelinessPeriod:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_278D6F140 + a3 - 1);
  }
}

@end