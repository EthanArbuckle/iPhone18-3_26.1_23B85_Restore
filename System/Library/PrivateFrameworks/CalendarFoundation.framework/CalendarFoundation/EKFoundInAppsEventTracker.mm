@interface EKFoundInAppsEventTracker
+ (void)trackPseudoEventsExpired:(int)expired;
@end

@implementation EKFoundInAppsEventTracker

+ (void)trackPseudoEventsExpired:(int)expired
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (expired >= 1)
  {
    v6 = @"count";
    v3 = [MEMORY[0x1E696AD98] numberWithInt:?];
    v7[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

    CalAnalyticsSendEvent(@"CalendarEventFoundInApps.eventsExpired", v4);
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end