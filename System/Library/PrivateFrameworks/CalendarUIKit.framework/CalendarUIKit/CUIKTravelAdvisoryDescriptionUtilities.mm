@interface CUIKTravelAdvisoryDescriptionUtilities
+ (BOOL)shouldIncludeTravelAdvisoryDescription:(id)a3;
@end

@implementation CUIKTravelAdvisoryDescriptionUtilities

+ (BOOL)shouldIncludeTravelAdvisoryDescription:(id)a3
{
  v3 = a3;
  v4 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(CUIKTravelAdvisoryDescriptionUtilities *)v3 shouldIncludeTravelAdvisoryDescription:v4];
  }

  [MEMORY[0x1E6966B28] minimumAllowableTravelTime];
  v6 = v5;
  if ([v3 travelState] == 5)
  {
    v7 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CUIKTravelAdvisoryDescriptionUtilities *)v7 shouldIncludeTravelAdvisoryDescription:v8, v9, v10, v11, v12, v13, v14];
    }

LABEL_15:
    v29 = 0;
    goto LABEL_16;
  }

  if ([MEMORY[0x1E6966B28] travelStateIndicatesTravelingTowardDestination:{objc_msgSend(v3, "travelState")}])
  {
    v7 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CUIKTravelAdvisoryDescriptionUtilities *)v7 shouldIncludeTravelAdvisoryDescription:v15, v16, v17, v18, v19, v20, v21];
    }

    goto LABEL_15;
  }

  if (![CUIKTravelAdvisoryUtilities doesHypothesisSatisfyMinimumAllowableTravelTime:v3 minimumAllowableTravelTime:v6])
  {
    [v3 estimatedTravelTime];
    v31 = v30;
    v7 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CUIKTravelAdvisoryDescriptionUtilities *)v7 shouldIncludeTravelAdvisoryDescription:v31, v6];
    }

    goto LABEL_15;
  }

  v7 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CUIKTravelAdvisoryDescriptionUtilities *)v7 shouldIncludeTravelAdvisoryDescription:v22, v23, v24, v25, v26, v27, v28];
  }

  v29 = 1;
LABEL_16:

  return v29;
}

+ (void)shouldIncludeTravelAdvisoryDescription:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1CAB19000, a2, OS_LOG_TYPE_DEBUG, "Determining whether or not travel advisory description should be included for hypothesis: [%@].", &v2, 0xCu);
}

+ (void)shouldIncludeTravelAdvisoryDescription:(double)a3 .cold.2(NSObject *a1, double a2, double a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_1CAB19000, a1, OS_LOG_TYPE_DEBUG, "Hypothesis travel time: [%@] does not satisfy minimum allowable travel time: [%@].", &v7, 0x16u);
}

@end