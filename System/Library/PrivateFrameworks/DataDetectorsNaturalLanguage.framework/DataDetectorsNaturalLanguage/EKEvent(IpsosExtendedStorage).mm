@interface EKEvent(IpsosExtendedStorage)
- (double)ipsos_confidence;
- (double)ipsos_duration;
- (double)ipsos_experimentalConfidence;
- (id)ipsos_betterDescription;
- (uint64_t)ipsos_allDayPreferred;
- (uint64_t)ipsos_disableTimeAdjustment;
- (uint64_t)ipsos_eventAttributes;
- (uint64_t)ipsos_eventStatus;
- (uint64_t)ipsos_isDateTimeTenseDependent;
- (uint64_t)ipsos_isEndTimeApproximate;
- (uint64_t)ipsos_isEventTimeOnlyAndReferrengingToSentDate;
- (uint64_t)ipsos_isTimeApproximate;
- (uint64_t)ipsos_isTimeOffset;
- (uint64_t)ipsos_timeNeedsMeridianGuess;
- (uint64_t)ipsos_usedBubblesCount;
- (uint64_t)ipsos_usesDefaultClassificationTypeStartTime;
- (void)setIpsos_allDayPreferred:()IpsosExtendedStorage;
- (void)setIpsos_confidence:()IpsosExtendedStorage;
- (void)setIpsos_disableTimeAdjustment:()IpsosExtendedStorage;
- (void)setIpsos_eventAttributes:()IpsosExtendedStorage;
- (void)setIpsos_eventStatus:()IpsosExtendedStorage;
- (void)setIpsos_experimentalConfidence:()IpsosExtendedStorage;
- (void)setIpsos_isDateTimeTenseDependent:()IpsosExtendedStorage;
- (void)setIpsos_isEndTimeApproximate:()IpsosExtendedStorage;
- (void)setIpsos_isEventTimeOnlyAndReferrengingToSentDate:()IpsosExtendedStorage;
- (void)setIpsos_isTimeApproximate:()IpsosExtendedStorage;
- (void)setIpsos_isTimeOffset:()IpsosExtendedStorage;
- (void)setIpsos_timeNeedsMeridianGuess:()IpsosExtendedStorage;
- (void)setIpsos_usedBubblesCount:()IpsosExtendedStorage;
- (void)setIpsos_usesDefaultClassificationTypeStartTime:()IpsosExtendedStorage;
@end

@implementation EKEvent(IpsosExtendedStorage)

- (uint64_t)ipsos_isTimeApproximate
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_isTimeApproximateKey");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIpsos_isTimeApproximate:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, @"ipsos_isTimeApproximateKey", v2, 0x301);
}

- (uint64_t)ipsos_isEndTimeApproximate
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_isEndTimeApproximateKey");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIpsos_isEndTimeApproximate:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, @"ipsos_isEndTimeApproximateKey", v2, 0x301);
}

- (uint64_t)ipsos_usesDefaultClassificationTypeStartTime
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_usesDefaultClassificationTypeStartTimeKey");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIpsos_usesDefaultClassificationTypeStartTime:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, @"ipsos_usesDefaultClassificationTypeStartTimeKey", v2, 0x301);
}

- (uint64_t)ipsos_timeNeedsMeridianGuess
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_timeNeedsMeridianGuessKey");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIpsos_timeNeedsMeridianGuess:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, @"ipsos_timeNeedsMeridianGuessKey", v2, 0x301);
}

- (uint64_t)ipsos_isDateTimeTenseDependent
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_isDateTimeTenseDependentKey");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIpsos_isDateTimeTenseDependent:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, @"ipsos_isDateTimeTenseDependentKey", v2, 0x301);
}

- (uint64_t)ipsos_isEventTimeOnlyAndReferrengingToSentDate
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_isEventTimeOnlyAndReferrengingToSentDateKey");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIpsos_isEventTimeOnlyAndReferrengingToSentDate:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, @"ipsos_isEventTimeOnlyAndReferrengingToSentDateKey", v2, 0x301);
}

- (uint64_t)ipsos_isTimeOffset
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_isTimeOffsetKey");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIpsos_isTimeOffset:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, @"ipsos_isTimeOffsetKey", v2, 0x301);
}

- (uint64_t)ipsos_allDayPreferred
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_allDayPreferredKey");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIpsos_allDayPreferred:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, @"ipsos_allDayPreferredKey", v2, 0x301);
}

- (uint64_t)ipsos_disableTimeAdjustment
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_disableTimeAdjustmentKey");
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setIpsos_disableTimeAdjustment:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(a1, @"ipsos_disableTimeAdjustmentKey", v2, 0x301);
}

- (uint64_t)ipsos_usedBubblesCount
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_usedBubblesCountKey");
  v2 = [v1 integerValue];

  return v2;
}

- (void)setIpsos_usedBubblesCount:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(a1, @"ipsos_usedBubblesCountKey", v2, 0x301);
}

- (double)ipsos_duration
{
  v2 = [a1 endDate];
  v3 = [a1 startDate];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  return v5;
}

- (double)ipsos_confidence
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_confidenceKey");
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (void)setIpsos_confidence:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  objc_setAssociatedObject(a1, @"ipsos_confidenceKey", v2, 0x301);
}

- (double)ipsos_experimentalConfidence
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_experimentalConfidenceKey");
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (void)setIpsos_experimentalConfidence:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  objc_setAssociatedObject(a1, @"ipsos_experimentalConfidenceKey", v2, 0x301);
}

- (uint64_t)ipsos_eventStatus
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_eventStatus");
  v2 = [v1 integerValue];

  return v2;
}

- (void)setIpsos_eventStatus:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(a1, @"ipsos_eventStatus", v2, 0x301);
}

- (uint64_t)ipsos_eventAttributes
{
  v1 = objc_getAssociatedObject(a1, @"ipsos_eventAttributesKey");
  v2 = [v1 integerValue];

  return v2;
}

- (void)setIpsos_eventAttributes:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(a1, @"ipsos_eventAttributesKey", v2, 0x301);
}

- (id)ipsos_betterDescription
{
  v2 = [a1 ipsos_eventStatus];
  v3 = @"None";
  v4 = @"Confirmed";
  if (v2 != 2)
  {
    v4 = @"None";
  }

  if (v2 == 1)
  {
    v4 = @"Proposed";
  }

  v17 = v4;
  v18 = MEMORY[0x277CCACA8];
  v5 = [a1 description];
  v19 = [a1 startDate];
  v6 = [a1 endDate];
  if ([a1 isAllDay])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [a1 timeZone];
  v9 = [a1 ipsos_eventClassificationType];
  if (v9)
  {
    v16 = [a1 ipsos_eventClassificationType];
    v3 = [v16 identifier];
  }

  v10 = @"_";
  if ([a1 ipsos_isTimeApproximate])
  {
    v11 = @"A";
  }

  else
  {
    v11 = @"_";
  }

  if ([a1 ipsos_isDateTimeTenseDependent])
  {
    v12 = @"T";
  }

  else
  {
    v12 = @"_";
  }

  if ([a1 ipsos_isEventTimeOnlyAndReferrengingToSentDate])
  {
    v10 = @"S";
  }

  [a1 ipsos_confidence];
  v14 = [v18 stringWithFormat:@"%@ startDate:%@ endDate:%@ allDay:%@ TZ:%@ type:%@ [%@%@%@] status:%@ confidence:%.02f", v5, v19, v6, v7, v8, v3, v11, v12, v10, v17, v13];
  if (v9)
  {
  }

  return v14;
}

@end