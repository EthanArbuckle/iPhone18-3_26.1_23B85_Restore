@interface CALNTimeToLeaveEventTrackerUtilities
+ (id)ttlEventTrackerAlertTypeForTravelAdvisoryTimelinessPeriod:(unint64_t)period;
+ (unint64_t)ttlEventTrackerAlertTypeForDate:(id)date hypothesis:(id)hypothesis;
+ (unint64_t)ttlEventTrackerETATypeForHypothesis:(id)hypothesis;
+ (unint64_t)ttlEventTrackerTransportTypeForGEOTransportType:(int)type;
+ (unint64_t)ttlEventTrackerTravelStateForHypothesisTravelState:(int64_t)state;
@end

@implementation CALNTimeToLeaveEventTrackerUtilities

+ (unint64_t)ttlEventTrackerAlertTypeForDate:(id)date hypothesis:(id)hypothesis
{
  dateCopy = date;
  hypothesisCopy = hypothesis;
  if ([MEMORY[0x277CC5B00] date:dateCopy representsLatenessForHypothesis:hypothesisCopy])
  {
    v7 = 2;
  }

  else
  {
    v7 = [MEMORY[0x277CC5B00] date:dateCopy representsApproachingDepartureDateForHypothesis:hypothesisCopy] ^ 1;
  }

  return v7;
}

+ (unint64_t)ttlEventTrackerTransportTypeForGEOTransportType:(int)type
{
  if (type < 3)
  {
    return type + 1;
  }

  else
  {
    return 0;
  }
}

+ (unint64_t)ttlEventTrackerETATypeForHypothesis:(id)hypothesis
{
  [hypothesis estimatedTravelTime];
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

+ (unint64_t)ttlEventTrackerTravelStateForHypothesisTravelState:(int64_t)state
{
  if ((state - 1) > 4)
  {
    return 1;
  }

  else
  {
    return qword_242967980[state - 1];
  }
}

+ (id)ttlEventTrackerAlertTypeForTravelAdvisoryTimelinessPeriod:(unint64_t)period
{
  if (period - 1 > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_278D6F140 + period - 1);
  }
}

@end