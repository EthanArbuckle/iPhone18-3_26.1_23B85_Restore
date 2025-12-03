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
  v1 = objc_getAssociatedObject(self, @"ipsos_isTimeApproximateKey");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIpsos_isTimeApproximate:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, @"ipsos_isTimeApproximateKey", v2, 0x301);
}

- (uint64_t)ipsos_isEndTimeApproximate
{
  v1 = objc_getAssociatedObject(self, @"ipsos_isEndTimeApproximateKey");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIpsos_isEndTimeApproximate:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, @"ipsos_isEndTimeApproximateKey", v2, 0x301);
}

- (uint64_t)ipsos_usesDefaultClassificationTypeStartTime
{
  v1 = objc_getAssociatedObject(self, @"ipsos_usesDefaultClassificationTypeStartTimeKey");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIpsos_usesDefaultClassificationTypeStartTime:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, @"ipsos_usesDefaultClassificationTypeStartTimeKey", v2, 0x301);
}

- (uint64_t)ipsos_timeNeedsMeridianGuess
{
  v1 = objc_getAssociatedObject(self, @"ipsos_timeNeedsMeridianGuessKey");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIpsos_timeNeedsMeridianGuess:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, @"ipsos_timeNeedsMeridianGuessKey", v2, 0x301);
}

- (uint64_t)ipsos_isDateTimeTenseDependent
{
  v1 = objc_getAssociatedObject(self, @"ipsos_isDateTimeTenseDependentKey");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIpsos_isDateTimeTenseDependent:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, @"ipsos_isDateTimeTenseDependentKey", v2, 0x301);
}

- (uint64_t)ipsos_isEventTimeOnlyAndReferrengingToSentDate
{
  v1 = objc_getAssociatedObject(self, @"ipsos_isEventTimeOnlyAndReferrengingToSentDateKey");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIpsos_isEventTimeOnlyAndReferrengingToSentDate:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, @"ipsos_isEventTimeOnlyAndReferrengingToSentDateKey", v2, 0x301);
}

- (uint64_t)ipsos_isTimeOffset
{
  v1 = objc_getAssociatedObject(self, @"ipsos_isTimeOffsetKey");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIpsos_isTimeOffset:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, @"ipsos_isTimeOffsetKey", v2, 0x301);
}

- (uint64_t)ipsos_allDayPreferred
{
  v1 = objc_getAssociatedObject(self, @"ipsos_allDayPreferredKey");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIpsos_allDayPreferred:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, @"ipsos_allDayPreferredKey", v2, 0x301);
}

- (uint64_t)ipsos_disableTimeAdjustment
{
  v1 = objc_getAssociatedObject(self, @"ipsos_disableTimeAdjustmentKey");
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setIpsos_disableTimeAdjustment:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  objc_setAssociatedObject(self, @"ipsos_disableTimeAdjustmentKey", v2, 0x301);
}

- (uint64_t)ipsos_usedBubblesCount
{
  v1 = objc_getAssociatedObject(self, @"ipsos_usedBubblesCountKey");
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)setIpsos_usedBubblesCount:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(self, @"ipsos_usedBubblesCountKey", v2, 0x301);
}

- (double)ipsos_duration
{
  endDate = [self endDate];
  startDate = [self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v5 = v4;

  return v5;
}

- (double)ipsos_confidence
{
  v1 = objc_getAssociatedObject(self, @"ipsos_confidenceKey");
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (void)setIpsos_confidence:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  objc_setAssociatedObject(self, @"ipsos_confidenceKey", v2, 0x301);
}

- (double)ipsos_experimentalConfidence
{
  v1 = objc_getAssociatedObject(self, @"ipsos_experimentalConfidenceKey");
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (void)setIpsos_experimentalConfidence:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  objc_setAssociatedObject(self, @"ipsos_experimentalConfidenceKey", v2, 0x301);
}

- (uint64_t)ipsos_eventStatus
{
  v1 = objc_getAssociatedObject(self, @"ipsos_eventStatus");
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)setIpsos_eventStatus:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(self, @"ipsos_eventStatus", v2, 0x301);
}

- (uint64_t)ipsos_eventAttributes
{
  v1 = objc_getAssociatedObject(self, @"ipsos_eventAttributesKey");
  integerValue = [v1 integerValue];

  return integerValue;
}

- (void)setIpsos_eventAttributes:()IpsosExtendedStorage
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  objc_setAssociatedObject(self, @"ipsos_eventAttributesKey", v2, 0x301);
}

- (id)ipsos_betterDescription
{
  ipsos_eventStatus = [self ipsos_eventStatus];
  identifier = @"None";
  v4 = @"Confirmed";
  if (ipsos_eventStatus != 2)
  {
    v4 = @"None";
  }

  if (ipsos_eventStatus == 1)
  {
    v4 = @"Proposed";
  }

  v17 = v4;
  v18 = MEMORY[0x277CCACA8];
  v5 = [self description];
  startDate = [self startDate];
  endDate = [self endDate];
  if ([self isAllDay])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  timeZone = [self timeZone];
  ipsos_eventClassificationType = [self ipsos_eventClassificationType];
  if (ipsos_eventClassificationType)
  {
    ipsos_eventClassificationType2 = [self ipsos_eventClassificationType];
    identifier = [ipsos_eventClassificationType2 identifier];
  }

  v10 = @"_";
  if ([self ipsos_isTimeApproximate])
  {
    v11 = @"A";
  }

  else
  {
    v11 = @"_";
  }

  if ([self ipsos_isDateTimeTenseDependent])
  {
    v12 = @"T";
  }

  else
  {
    v12 = @"_";
  }

  if ([self ipsos_isEventTimeOnlyAndReferrengingToSentDate])
  {
    v10 = @"S";
  }

  [self ipsos_confidence];
  v14 = [v18 stringWithFormat:@"%@ startDate:%@ endDate:%@ allDay:%@ TZ:%@ type:%@ [%@%@%@] status:%@ confidence:%.02f", v5, startDate, endDate, v7, timeZone, identifier, v11, v12, v10, v17, v13];
  if (ipsos_eventClassificationType)
  {
  }

  return v14;
}

@end