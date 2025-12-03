@interface NTKTimelineComplicationController
- (id)activeDisplayTemplateForDisplayWrapper:(id)wrapper;
- (unint64_t)_animationForTimelineEntryTransitionFrom:(id)from to:(id)to withAnimationBehavior:(unint64_t)behavior;
- (void)_analyticsAppLaunchForTimeTravelDate:(id)date timelineEntryDate:(id)entryDate;
@end

@implementation NTKTimelineComplicationController

- (unint64_t)_animationForTimelineEntryTransitionFrom:(id)from to:(id)to withAnimationBehavior:(unint64_t)behavior
{
  fromCopy = from;
  toCopy = to;
  if (behavior == 2)
  {
    goto LABEL_8;
  }

  if (behavior == 1)
  {
    timelineAnimationGroup = [fromCopy timelineAnimationGroup];
    if (timelineAnimationGroup)
    {
      v10 = timelineAnimationGroup;
      timelineAnimationGroup2 = [toCopy timelineAnimationGroup];
      if (timelineAnimationGroup2)
      {
        v12 = timelineAnimationGroup2;
        timelineAnimationGroup3 = [fromCopy timelineAnimationGroup];
        timelineAnimationGroup4 = [toCopy timelineAnimationGroup];
        v15 = [timelineAnimationGroup3 isEqualToString:timelineAnimationGroup4];

        if (v15)
        {
          goto LABEL_6;
        }
      }

      else
      {
      }
    }

LABEL_8:
    date = [fromCopy date];
    date2 = [toCopy date];
    v16 = NTKComplicationAnimationForDates(date, date2);

    goto LABEL_9;
  }

LABEL_6:
  v16 = 0;
LABEL_9:

  return v16;
}

- (void)_analyticsAppLaunchForTimeTravelDate:(id)date timelineEntryDate:(id)entryDate
{
  v19[2] = *MEMORY[0x277D85DE8];
  entryDateCopy = entryDate;
  [date timeIntervalSinceNow];
  v18[0] = @"eventName";
  v18[1] = @"value";
  v19[0] = @"launchtimetraveloffset";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v19[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  AnalyticsSendEvent();

  if (entryDateCopy)
  {
    [entryDateCopy timeIntervalSinceNow];
    v16[1] = @"value";
    v17[0] = @"launchtimetravelentryoffset";
    v16[0] = @"eventName";
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    AnalyticsSendEvent();
  }

  complicationApplicationIdentifier = [(NTKComplicationController *)self complicationApplicationIdentifier];
  v12 = [@"timetravel.launch." stringByAppendingString:complicationApplicationIdentifier];

  v14 = @"eventName";
  v15 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  AnalyticsSendEvent();
}

- (id)activeDisplayTemplateForDisplayWrapper:(id)wrapper
{
  v4 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(NTKTimelineComplicationController *)self activeDisplayTemplateForDisplayWrapper:v4];
  }

  return 0;
}

- (void)activeDisplayTemplateForDisplayWrapper:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "%@: returning nil for activeDisplayTemplate. THIS SHOULD NOT BE CALLED!", &v5, 0xCu);
}

@end