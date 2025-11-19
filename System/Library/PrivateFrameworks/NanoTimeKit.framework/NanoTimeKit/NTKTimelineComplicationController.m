@interface NTKTimelineComplicationController
- (id)activeDisplayTemplateForDisplayWrapper:(id)a3;
- (unint64_t)_animationForTimelineEntryTransitionFrom:(id)a3 to:(id)a4 withAnimationBehavior:(unint64_t)a5;
- (void)_analyticsAppLaunchForTimeTravelDate:(id)a3 timelineEntryDate:(id)a4;
@end

@implementation NTKTimelineComplicationController

- (unint64_t)_animationForTimelineEntryTransitionFrom:(id)a3 to:(id)a4 withAnimationBehavior:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (a5 == 2)
  {
    goto LABEL_8;
  }

  if (a5 == 1)
  {
    v9 = [v7 timelineAnimationGroup];
    if (v9)
    {
      v10 = v9;
      v11 = [v8 timelineAnimationGroup];
      if (v11)
      {
        v12 = v11;
        v13 = [v7 timelineAnimationGroup];
        v14 = [v8 timelineAnimationGroup];
        v15 = [v13 isEqualToString:v14];

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
    v17 = [v7 date];
    v18 = [v8 date];
    v16 = NTKComplicationAnimationForDates(v17, v18);

    goto LABEL_9;
  }

LABEL_6:
  v16 = 0;
LABEL_9:

  return v16;
}

- (void)_analyticsAppLaunchForTimeTravelDate:(id)a3 timelineEntryDate:(id)a4
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  [a3 timeIntervalSinceNow];
  v18[0] = @"eventName";
  v18[1] = @"value";
  v19[0] = @"launchtimetraveloffset";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v19[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  AnalyticsSendEvent();

  if (v6)
  {
    [v6 timeIntervalSinceNow];
    v16[1] = @"value";
    v17[0] = @"launchtimetravelentryoffset";
    v16[0] = @"eventName";
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v17[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
    AnalyticsSendEvent();
  }

  v11 = [(NTKComplicationController *)self complicationApplicationIdentifier];
  v12 = [@"timetravel.launch." stringByAppendingString:v11];

  v14 = @"eventName";
  v15 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  AnalyticsSendEvent();
}

- (id)activeDisplayTemplateForDisplayWrapper:(id)a3
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