@interface CUIKTimeToLeaveDescriptionGenerator
+ (id)_attributedEtaString:(double)a3 fontName:(id)a4 fontSize:(double)a5;
+ (id)_etaString:(double)a3;
+ (id)_travelAdvisoryDescriptionOfType:(unint64_t)a3 hypothesis:(id)a4 eta:(id)a5 location:(id)a6;
+ (id)_travelMultiModalWithHypothesis:(id)a3;
+ (id)_travelTimeDrivingStringExcludingTrafficWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
+ (id)_travelTimeDrivingStringIncludingTrafficWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
+ (id)_travelTimeDrivingStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
+ (id)_travelTimeDrivingSubstringWithEta:(id)a3 location:(id)a4 includeTransportType:(BOOL)a5;
+ (id)_travelTimeDrivingSubstringWithEta:(id)a3 location:(id)a4 routeName:(id)a5 includeTransportType:(BOOL)a6;
+ (id)_travelTimeLeaveNowDrivingStringExcludingTrafficWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
+ (id)_travelTimeLeaveNowDrivingStringIncludingTrafficWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
+ (id)_travelTimeLeaveNowDrivingStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
+ (id)_travelTimeLeaveNowDrivingSubstringWithEta:(id)a3 location:(id)a4 includeTransportType:(BOOL)a5;
+ (id)_travelTimeLeaveNowDrivingSubstringWithEta:(id)a3 location:(id)a4 routeName:(id)a5 includeTransportType:(BOOL)a6;
+ (id)_travelTimeLeaveNowMultiModalSubstringWithEta:(id)a3 location:(id)a4 routeName:(id)a5;
+ (id)_travelTimeLeaveNowMultiModalWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
+ (id)_travelTimeLeaveNowTransitStringWithEta:(id)a3 location:(id)a4;
+ (id)_travelTimeLeaveNowTransitStringWithLocation:(id)a3;
+ (id)_travelTimeLeaveNowWalkingStringWithEta:(id)a3 location:(id)a4;
+ (id)_travelTimeRunningLateTransitStringWithEta:(id)a3 location:(id)a4;
+ (id)_travelTimeStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
+ (id)_travelTimeSubstringWithEta:(id)a3 location:(id)a4 routeName:(id)a5;
+ (id)_travelTimeSubstringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
+ (id)_travelTimeWalkingStringWithEta:(id)a3 location:(id)a4;
+ (id)departureDateString:(id)a3;
+ (id)explanatoryTextForTTLStatus:(unint64_t)a3;
+ (id)timeToLeaveAttributedStringWithAttributes:(id)a3 hypothesis:(id)a4 location:(id)a5;
+ (id)timeToLeaveStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
+ (id)timeToLeaveStringWithHypothesis:(id)a3 location:(id)a4;
+ (id)travelAdvisoryDescriptionOfType:(unint64_t)a3 hypothesis:(id)a4 location:(id)a5;
+ (id)travelTimeApproachingDepartureDateStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
+ (id)travelTimeApproachingDepartureDateTransitStringWithDepartureDate:(id)a3 location:(id)a4;
+ (id)travelTimeLeaveNowStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5;
@end

@implementation CUIKTimeToLeaveDescriptionGenerator

+ (id)explanatoryTextForTTLStatus:(unint64_t)a3
{
  if (a3 - 1 < 2)
  {
    v3 = CUIKBundle();
    v4 = v3;
    v5 = @"Time to leave alerts are not available because Calendar does not have access to your precise location.";
LABEL_5:
    v6 = &stru_1F4AA8958;
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v3 = CUIKBundle();
    v4 = v3;
    v5 = @"Time to leave alerts are not available because Location Services are disabled for Alerts & Shortcuts Automations.";
    goto LABEL_5;
  }

  v3 = CUIKBundle();
  v4 = v3;
  v5 = @"Time to Leave explanatory text";
  v6 = @"When available, Calendar uses your location, locations of upcoming events, traffic conditions, and transit options to tell you how long it will take to arrive at your destination, so you can leave on time.";
LABEL_7:
  v7 = [v3 localizedStringForKey:v5 value:v6 table:0];

  return v7;
}

+ (id)travelAdvisoryDescriptionOfType:(unint64_t)a3 hypothesis:(id)a4 location:(id)a5
{
  v8 = a5;
  v9 = a4;
  [v9 estimatedTravelTime];
  v10 = [a1 _etaString:?];
  v11 = [a1 _travelAdvisoryDescriptionOfType:a3 hypothesis:v9 eta:v10 location:v8];

  return v11;
}

+ (id)_travelMultiModalWithHypothesis:(id)a3
{
  v4 = [a3 travelSections];
  if ([v4 count] >= 2)
  {
    v5 = [v4 objectAtIndexedSubscript:1];
    [v5 estimatedTravelTime];
    v6 = [a1 _etaString:?];

    if ([v4 count] == 2)
    {
      v7 = [v4 objectAtIndexedSubscript:0];
      [v7 estimatedTravelTime];
      v8 = [a1 _etaString:?];

      v9 = [v4 objectAtIndexedSubscript:0];
      v10 = [v9 transportType];

      if (v10 == 2)
      {
        v11 = [v4 objectAtIndexedSubscript:1];
        v12 = [v11 transportType];

        if (!v12)
        {
          v15 = @"%@ on foot and %@ by car";
          goto LABEL_26;
        }

        v13 = [v4 objectAtIndexedSubscript:1];
        v14 = [v13 transportType];

        if (v14 == 3)
        {
          v15 = @"%@ on foot and %@ by bike";
LABEL_26:
          v38 = MEMORY[0x1E696AEC0];
          v39 = CUIKBundle();
          v40 = [v39 localizedStringForKey:v15 value:&stru_1F4AA8958 table:0];
          [v38 localizedStringWithFormat:v40, v8, v6];
          v41 = LABEL_27:;

          goto LABEL_34;
        }
      }

      else
      {
        v29 = [v4 objectAtIndexedSubscript:0];
        v30 = [v29 transportType];

        if (v30)
        {
          v31 = [v4 objectAtIndexedSubscript:0];
          v32 = [v31 transportType];

          if (v32 == 3)
          {
            v33 = [v4 objectAtIndexedSubscript:1];
            v34 = [v33 transportType];

            if (v34 == 2)
            {
              v15 = @"%@ by bike and %@ on foot";
              goto LABEL_26;
            }
          }
        }

        else
        {
          v36 = [v4 objectAtIndexedSubscript:1];
          v37 = [v36 transportType];

          if (v37 == 2)
          {
            v15 = @"%@ by car and %@ on foot";
            goto LABEL_26;
          }
        }
      }

      goto LABEL_30;
    }

    if ([v4 count] != 3)
    {
      v35 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [CUIKTimeToLeaveDescriptionGenerator _travelMultiModalWithHypothesis:v4];
      }

      goto LABEL_33;
    }

    v16 = [v4 objectAtIndexedSubscript:0];
    [v16 estimatedTravelTime];
    v18 = v17;
    v19 = [v4 objectAtIndexedSubscript:2];
    [v19 estimatedTravelTime];
    v21 = v18 + v20;

    v8 = [a1 _etaString:v21];
    v22 = [v4 objectAtIndexedSubscript:0];
    if ([v22 transportType] == 2)
    {
      v23 = [v4 objectAtIndexedSubscript:1];
      if (![v23 transportType])
      {
        v43 = [v4 objectAtIndexedSubscript:2];
        v44 = [v43 transportType];

        if (v44 == 2)
        {
          v28 = @"%@ by car and %@ on foot";
          goto LABEL_39;
        }

LABEL_12:
        v24 = [v4 objectAtIndexedSubscript:0];
        if ([v24 transportType] == 2)
        {
          v25 = [v4 objectAtIndexedSubscript:1];
          if ([v25 transportType] == 3)
          {
            v26 = [v4 objectAtIndexedSubscript:2];
            v27 = [v26 transportType];

            if (v27 == 2)
            {
              v28 = @"%@ by bike and %@ on foot";
LABEL_39:
              v45 = MEMORY[0x1E696AEC0];
              v39 = CUIKBundle();
              v40 = [v39 localizedStringForKey:v28 value:&stru_1F4AA8958 table:0];
              [v45 localizedStringWithFormat:v40, v6, v8];
              goto LABEL_27;
            }

LABEL_30:

            goto LABEL_31;
          }
        }

        goto LABEL_30;
      }
    }

    goto LABEL_12;
  }

LABEL_31:
  v6 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CUIKTimeToLeaveDescriptionGenerator _travelMultiModalWithHypothesis:v6];
  }

LABEL_33:
  v41 = 0;
LABEL_34:

  return v41;
}

+ (id)_travelAdvisoryDescriptionOfType:(unint64_t)a3 hypothesis:(id)a4 eta:(id)a5 location:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  switch(a3)
  {
    case 0uLL:
      v12 = [CUIKTimeToLeaveDescriptionGenerator travelTimeApproachingDepartureDateStringWithHypothesis:v9 eta:v10 location:v11];
      goto LABEL_7;
    case 1uLL:
      v12 = [CUIKTimeToLeaveDescriptionGenerator travelTimeLeaveNowStringWithHypothesis:v9 eta:v10 location:v11];
      goto LABEL_7;
    case 2uLL:
      v12 = [CUIKTimeToLeaveDescriptionGenerator travelTimeRunningLateStringWithHypothesis:v9 eta:v10 location:v11];
LABEL_7:
      v13 = v12;
      goto LABEL_11;
  }

  v14 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    +[CUIKTimeToLeaveDescriptionGenerator _travelAdvisoryDescriptionOfType:hypothesis:eta:location:];
  }

  v13 = &stru_1F4AA8958;
LABEL_11:

  return v13;
}

+ (id)timeToLeaveStringWithHypothesis:(id)a3 location:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 estimatedTravelTime];
  v8 = [a1 _etaString:?];
  v9 = [a1 timeToLeaveStringWithHypothesis:v7 eta:v8 location:v6];

  return v9;
}

+ (id)timeToLeaveStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412802;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_debug_impl(&dword_1CAB19000, v11, OS_LOG_TYPE_DEBUG, "Generating time to leave string from hypothesis: [%@]. ETA: [%@], location: [%@].", &v16, 0x20u);
  }

  v12 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  v13 = [CUIKTTLDescriptionGeneratorUtilities ttlDescriptionTypeForDate:v12 hypothesis:v8];

  v14 = [a1 _travelAdvisoryDescriptionOfType:v13 hypothesis:v8 eta:v9 location:v10];

  return v14;
}

+ (id)timeToLeaveAttributedStringWithAttributes:(id)a3 hypothesis:(id)a4 location:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v9 estimatedTravelTime];
  v11 = [a1 _etaString:?];
  v12 = [a1 timeToLeaveStringWithHypothesis:v9 eta:v11 location:v8];

  v13 = [v9 suggestedDepartureDate];
  v14 = [v9 transportType];

  if (v14 == 1)
  {
    v15 = [MEMORY[0x1E69669E8] shared];
    if ([v15 showDepartureDateForTransitTimeToLeave])
    {
      v16 = [a1 departureDateString:v13];
      if ([v12 containsString:v16])
      {
        v17 = [a1 departureDateString:v13];
      }

      else
      {
        v17 = v11;
      }

      v18 = v17;
    }

    else
    {
      v18 = v11;
    }
  }

  else
  {
    v18 = v11;
  }

  v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12 attributes:v10];
  v20 = [v10 objectForKeyedSubscript:@"CUIKEtaAttributes"];

  if (v20)
  {
    v21 = [v19 string];
    v22 = [v21 rangeOfString:v18];
    [v19 addAttributes:v20 range:{v22, v23}];
  }

  v24 = [v19 copy];

  return v24;
}

+ (id)_etaString:(double)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v4 setCalendar:v5];

  [v4 setUnitsStyle:2];
  [v4 setAllowedUnits:96];
  v6 = [v4 stringFromTimeInterval:a3];

  return v6;
}

+ (id)departureDateString:(id)a3
{
  v3 = MEMORY[0x1E696AB78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x1E695DEE8] currentCalendar];
  [v5 setCalendar:v6];

  [v5 setDateStyle:0];
  [v5 setTimeStyle:1];
  v7 = [v5 stringFromDate:v4];

  return v7;
}

+ (id)_attributedEtaString:(double)a3 fontName:(id)a4 fontSize:(double)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [a1 _etaString:a3];
  v10 = objc_alloc_init(MEMORY[0x1E69DB880]);
  if (v8)
  {
    v11 = [MEMORY[0x1E69DB878] fontWithName:v8 size:0.0];
    v12 = [v11 familyName];
    v13 = [v10 fontDescriptorWithFamily:v12];

    v10 = v13;
  }

  v14 = [v10 fontDescriptorWithSymbolicTraits:2];

  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v20 = *MEMORY[0x1E69DB648];
  v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:a5];
  v21[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v18 = [v15 initWithString:v9 attributes:v17];

  return v18;
}

+ (id)travelTimeApproachingDepartureDateStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isMultiModal])
  {
    v11 = [a1 _travelTimeSubstringWithHypothesis:v8 eta:v9 location:v10];
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  if ([v8 transportType] == 2)
  {
    v11 = [a1 _travelTimeWalkingStringWithHypothesis:v8 eta:v9 location:v10];
    goto LABEL_5;
  }

  if ([v8 transportType] == 1)
  {
    v14 = [v8 suggestedDepartureDate];
    v12 = [a1 travelTimeApproachingDepartureDateTransitStringWithDepartureDate:v14 location:v10];
  }

  else
  {
    if (![v8 transportType])
    {
      v11 = [a1 _travelTimeDrivingStringWithHypothesis:v8 eta:v9 location:v10];
      goto LABEL_5;
    }

    v15 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CUIKTimeToLeaveDescriptionGenerator travelTimeApproachingDepartureDateStringWithHypothesis:v8 eta:? location:?];
    }

    v12 = &stru_1F4AA8958;
  }

LABEL_6:

  return v12;
}

+ (id)travelTimeApproachingDepartureDateTransitStringWithDepartureDate:(id)a3 location:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 departureDateString:v7];
  v9 = [MEMORY[0x1E6992F68] requiresSingularLocalizationForDate:v7];

  v10 = MEMORY[0x1E696AEC0];
  v11 = CUIKBundle();
  v12 = v11;
  if (v6)
  {
    if (v9)
    {
      v13 = @"Leave by %@ (departure date) to get to %@ (location) on time via transit. Singular hour.";
    }

    else
    {
      v13 = @"Leave by %@ (departure date) to get to %@ (location) on time via transit. Plural hour.";
    }

    v15 = [v11 localizedStringForKey:v13 value:@"Leave by %@ to get to %@ on time via transit." table:0];
    [v10 localizedStringWithFormat:v15, v8, v6];
  }

  else
  {
    if (v9)
    {
      v14 = @"Leave by %@ (departure date) to arrive on time via transit. Singular hour.";
    }

    else
    {
      v14 = @"Leave by %@ (departure date) to arrive on time via transit. Plural hour.";
    }

    v15 = [v11 localizedStringForKey:v14 value:@"Leave by %@ to arrive on time via transit." table:0];
    [v10 localizedStringWithFormat:v15, v8, v18];
  }
  v16 = ;

  return v16;
}

+ (id)travelTimeLeaveNowStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isMultiModal])
  {
    v11 = [a1 _travelTimeLeaveNowMultiModalWithHypothesis:v8 eta:v9 location:v10];
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  if ([v8 transportType] == 2)
  {
    v11 = [a1 _travelTimeLeaveNowWalkingStringWithHypothesis:v8 eta:v9 location:v10];
    goto LABEL_5;
  }

  if ([v8 transportType] == 1)
  {
    v14 = [MEMORY[0x1E69669E8] shared];
    if ([v14 showDepartureDateForTransitTimeToLeave])
    {
      [a1 _travelTimeLeaveNowTransitStringWithLocation:v10];
    }

    else
    {
      [a1 _travelTimeLeaveNowTransitStringWithEta:v9 location:v10];
    }
    v12 = ;

    goto LABEL_6;
  }

  if (![v8 transportType])
  {
    v11 = [a1 _travelTimeLeaveNowDrivingStringWithHypothesis:v8 eta:v9 location:v10];
    goto LABEL_5;
  }

  v15 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [CUIKTimeToLeaveDescriptionGenerator travelTimeLeaveNowStringWithHypothesis:v8 eta:? location:?];
  }

  v12 = &stru_1F4AA8958;
LABEL_6:

  return v12;
}

+ (id)_travelTimeLeaveNowMultiModalWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 routeName];
  v12 = [a1 _travelTimeLeaveNowMultiModalSubstringWithEta:v9 location:v8 routeName:v11];

  v13 = [a1 _travelMultiModalWithHypothesis:v10];

  if (v13)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = CUIKBundle();
    v16 = [v15 localizedStringForKey:@"%@: %@." value:&stru_1F4AA8958 table:0];
    v17 = [v14 localizedStringWithFormat:v16, v12, v13];
  }

  else
  {
    v17 = &stru_1F4AA8958;
  }

  return v17;
}

+ (id)_travelTimeLeaveNowMultiModalSubstringWithEta:(id)a3 location:(id)a4 routeName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E696AEC0];
  v11 = CUIKBundle();
  v12 = v11;
  if (v8 && v9)
  {
    v13 = [v11 localizedStringForKey:@"Leave now: It will take %@ to get to %@ using %@" value:&stru_1F4AA8958 table:0];
    v17 = v9;
LABEL_6:
    v16 = v8;
    goto LABEL_7;
  }

  if (v8)
  {
    v13 = [v11 localizedStringForKey:@"Leave now: It will take %@ to get to %@" value:&stru_1F4AA8958 table:0];
    goto LABEL_6;
  }

  v13 = [v11 localizedStringForKey:@"Leave now: It will take %@" value:&stru_1F4AA8958 table:0];
LABEL_7:
  v14 = [v10 localizedStringWithFormat:v13, v7, v16, v17];

  return v14;
}

+ (id)_travelTimeLeaveNowWalkingStringWithEta:(id)a3 location:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = CUIKBundle();
  v9 = v8;
  if (v5)
  {
    v10 = [v8 localizedStringForKey:@"Leave now: It will take %@ to get to %@ on foot." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, v7, v5];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"Leave now: It will take %@ on foot." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, v7, v13];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeLeaveNowTransitStringWithEta:(id)a3 location:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = CUIKBundle();
  v9 = v8;
  if (v5)
  {
    v10 = [v8 localizedStringForKey:@"Leave now: It will take %@ to get to %@ via transit." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, v7, v5];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"Leave now: It will take %@ via transit." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, v7, v13];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeLeaveNowTransitStringWithLocation:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v5 = CUIKBundle();
  v6 = v5;
  if (v3)
  {
    v7 = [v5 localizedStringForKey:@"Leave now to get to %@ (location) on time via transit." value:@"Leave now to get to %@ on time via transit." table:0];
    [v4 localizedStringWithFormat:v7, v3];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"Leave now to arrive on time via transit." value:&stru_1F4AA8958 table:0];
    [v4 localizedStringWithFormat:v7, v10];
  }
  v8 = ;

  return v8;
}

+ (id)_travelTimeLeaveNowDrivingStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([CUIKTTLDescriptionGeneratorUtilities ttlDescriptionShouldIncludeTrafficForHypothesis:v10])
  {
    [a1 _travelTimeLeaveNowDrivingStringIncludingTrafficWithHypothesis:v10 eta:v9 location:v8];
  }

  else
  {
    [a1 _travelTimeLeaveNowDrivingStringExcludingTrafficWithHypothesis:v10 eta:v9 location:v8];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeLeaveNowDrivingStringIncludingTrafficWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 trafficDensityDescription];
  v12 = [v8 routeName];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v8 routeName];
    v15 = [a1 _travelTimeLeaveNowDrivingSubstringWithEta:v9 location:v10 routeName:v14 includeTransportType:0];
  }

  else
  {
    v15 = [a1 _travelTimeLeaveNowDrivingSubstringWithEta:v9 location:v10 includeTransportType:0];
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v11, v15];

  return v16;
}

+ (id)_travelTimeLeaveNowDrivingStringExcludingTrafficWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 routeName];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v8 routeName];
    v14 = [a1 _travelTimeLeaveNowDrivingSubstringWithEta:v9 location:v10 routeName:v13 includeTransportType:1];
  }

  else
  {
    v14 = [a1 _travelTimeLeaveNowDrivingSubstringWithEta:v9 location:v10 includeTransportType:1];
  }

  return v14;
}

+ (id)_travelTimeLeaveNowDrivingSubstringWithEta:(id)a3 location:(id)a4 routeName:(id)a5 includeTransportType:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x1E696AEC0];
  v13 = CUIKBundle();
  v14 = v13;
  if (v10)
  {
    if (v6)
    {
      v15 = @"Leave now: It will take %@ to get to %@ using %@ by car.";
    }

    else
    {
      v15 = @"Leave now: It will take %@ to get to %@ using %@.";
    }

    v17 = [v13 localizedStringForKey:v15 value:&stru_1F4AA8958 table:0];
    [v12 localizedStringWithFormat:v17, v9, v10, v11];
  }

  else
  {
    if (v6)
    {
      v16 = @"Leave now: It will take %@ using %@ by car.";
    }

    else
    {
      v16 = @"Leave now: It will take %@ using %@.";
    }

    v17 = [v13 localizedStringForKey:v16 value:&stru_1F4AA8958 table:0];
    [v12 localizedStringWithFormat:v17, v9, v11, v20];
  }
  v18 = ;

  return v18;
}

+ (id)_travelTimeLeaveNowDrivingSubstringWithEta:(id)a3 location:(id)a4 includeTransportType:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696AEC0];
  v10 = CUIKBundle();
  v11 = v10;
  if (v8)
  {
    if (v5)
    {
      v12 = @"Leave now: It will take %@ to get to %@ by car.";
    }

    else
    {
      v12 = @"Leave now: It will take %@ to get to %@.";
    }

    v14 = [v10 localizedStringForKey:v12 value:&stru_1F4AA8958 table:0];
    [v9 localizedStringWithFormat:v14, v7, v8];
  }

  else
  {
    if (v5)
    {
      v13 = @"Leave now: It will take %@ by car.";
    }

    else
    {
      v13 = @"Leave now: It will take %@.";
    }

    v14 = [v10 localizedStringForKey:v13 value:&stru_1F4AA8958 table:0];
    [v9 localizedStringWithFormat:v14, v7, v17];
  }
  v15 = ;

  return v15;
}

+ (id)_travelTimeRunningLateTransitStringWithEta:(id)a3 location:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = CUIKBundle();
  v9 = v8;
  if (v5)
  {
    v10 = [v8 localizedStringForKey:@"It will take %@ to get to %@ via transit." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, v7, v5];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"It will take %@ via transit." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, v7, v13];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isMultiModal])
  {
    v11 = [a1 _travelTimeSubstringWithHypothesis:v8 eta:v9 location:v10];
LABEL_12:
    v13 = v11;
    goto LABEL_13;
  }

  if ([v8 transportType] == 2)
  {
    v11 = [a1 _travelTimeWalkingStringWithHypothesis:v8 eta:v9 location:v10];
    goto LABEL_12;
  }

  if ([v8 transportType] == 1)
  {
    v11 = [a1 _travelTimeRunningLateTransitStringWithEta:v9 location:v10];
    goto LABEL_12;
  }

  if (![v8 transportType])
  {
    v11 = [a1 _travelTimeDrivingStringWithHypothesis:v8 eta:v9 location:v10];
    goto LABEL_12;
  }

  v12 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CUIKTimeToLeaveDescriptionGenerator travelTimeApproachingDepartureDateStringWithHypothesis:v8 eta:? location:?];
  }

  v13 = &stru_1F4AA8958;
LABEL_13:

  return v13;
}

+ (id)_travelTimeWalkingStringWithEta:(id)a3 location:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = CUIKBundle();
  v9 = v8;
  if (v5)
  {
    v10 = [v8 localizedStringForKey:@"It will take %@ to get to %@ on foot." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, v7, v5];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"It will take %@ on foot." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, v7, v13];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeDrivingStringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([CUIKTTLDescriptionGeneratorUtilities ttlDescriptionShouldIncludeTrafficForHypothesis:v10])
  {
    [a1 _travelTimeDrivingStringIncludingTrafficWithHypothesis:v10 eta:v9 location:v8];
  }

  else
  {
    [a1 _travelTimeDrivingStringExcludingTrafficWithHypothesis:v10 eta:v9 location:v8];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeDrivingStringIncludingTrafficWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 trafficDensityDescription];
  v12 = [v8 routeName];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v8 routeName];
    v15 = [a1 _travelTimeDrivingSubstringWithEta:v9 location:v10 routeName:v14 includeTransportType:0];
  }

  else
  {
    v15 = [a1 _travelTimeDrivingSubstringWithEta:v9 location:v10 includeTransportType:0];
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v11, v15];

  return v16;
}

+ (id)_travelTimeDrivingStringExcludingTrafficWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 routeName];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v8 routeName];
    v14 = [a1 _travelTimeDrivingSubstringWithEta:v9 location:v10 routeName:v13 includeTransportType:1];
  }

  else
  {
    v14 = [a1 _travelTimeDrivingSubstringWithEta:v9 location:v10 includeTransportType:1];
  }

  return v14;
}

+ (id)_travelTimeDrivingSubstringWithEta:(id)a3 location:(id)a4 routeName:(id)a5 includeTransportType:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = MEMORY[0x1E696AEC0];
  v13 = CUIKBundle();
  v14 = v13;
  if (v10)
  {
    if (v6)
    {
      v15 = @"It will take %@ to get to %@ using %@ by car.";
    }

    else
    {
      v15 = @"It will take %@ to get to %@ using %@.";
    }

    v17 = [v13 localizedStringForKey:v15 value:&stru_1F4AA8958 table:0];
    [v12 localizedStringWithFormat:v17, v9, v10, v11];
  }

  else
  {
    if (v6)
    {
      v16 = @"It will take %@ using %@ by car.";
    }

    else
    {
      v16 = @"It will take %@ using %@.";
    }

    v17 = [v13 localizedStringForKey:v16 value:&stru_1F4AA8958 table:0];
    [v12 localizedStringWithFormat:v17, v9, v11, v20];
  }
  v18 = ;

  return v18;
}

+ (id)_travelTimeDrivingSubstringWithEta:(id)a3 location:(id)a4 includeTransportType:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696AEC0];
  v10 = CUIKBundle();
  v11 = v10;
  if (v8)
  {
    if (v5)
    {
      v12 = @"It will take %@ to get to %@ by car.";
    }

    else
    {
      v12 = @"It will take %@ to get to %@.";
    }

    v14 = [v10 localizedStringForKey:v12 value:&stru_1F4AA8958 table:0];
    [v9 localizedStringWithFormat:v14, v7, v8];
  }

  else
  {
    if (v5)
    {
      v13 = @"It will take %@ by car.";
    }

    else
    {
      v13 = @"It will take %@ to arrive.";
    }

    v14 = [v10 localizedStringForKey:v13 value:&stru_1F4AA8958 table:0];
    [v9 localizedStringWithFormat:v14, v7, v17];
  }
  v15 = ;

  return v15;
}

+ (id)_travelTimeSubstringWithHypothesis:(id)a3 eta:(id)a4 location:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 routeName];
  v12 = [a1 _travelTimeSubstringWithEta:v9 location:v8 routeName:v11];

  v13 = [a1 _travelMultiModalWithHypothesis:v10];

  if (v13)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = CUIKBundle();
    v16 = [v15 localizedStringForKey:@"%@: %@." value:&stru_1F4AA8958 table:0];
    v17 = [v14 localizedStringWithFormat:v16, v12, v13];
  }

  else
  {
    v17 = &stru_1F4AA8958;
  }

  return v17;
}

+ (id)_travelTimeSubstringWithEta:(id)a3 location:(id)a4 routeName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E696AEC0];
  v11 = CUIKBundle();
  v12 = v11;
  if (v8 && v9)
  {
    v13 = [v11 localizedStringForKey:@"It will take %@ to get to %@ using %@" value:&stru_1F4AA8958 table:0];
    v17 = v9;
LABEL_6:
    v16 = v8;
    goto LABEL_7;
  }

  if (v8)
  {
    v13 = [v11 localizedStringForKey:@"It will take %@ to get to %@" value:&stru_1F4AA8958 table:0];
    goto LABEL_6;
  }

  v13 = [v11 localizedStringForKey:@"It will take %@" value:&stru_1F4AA8958 table:0];
LABEL_7:
  v14 = [v10 localizedStringWithFormat:v13, v7, v16, v17];

  return v14;
}

+ (void)_travelMultiModalWithHypothesis:(void *)a1 .cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1CAB19000, v1, v2, "Warning: Currently no support for generating 'Time to Leave' travel message for travel sections with count: %lu", v3, v4, v5, v6, v7);
}

+ (void)_travelAdvisoryDescriptionOfType:hypothesis:eta:location:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1CAB19000, v0, OS_LOG_TYPE_ERROR, "Error: Unexpected TTL description type: %ld", v1, 0xCu);
}

+ (void)travelTimeApproachingDepartureDateStringWithHypothesis:(void *)a1 eta:location:.cold.1(void *a1)
{
  v1 = [MEMORY[0x1E6966B28] geoTransportTypeAsString:{objc_msgSend(a1, "transportType")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1CAB19000, v2, v3, "Warning: Currently no support for generating 'Time to Leave' travel time message strings for the %@ transport type", v4, v5, v6, v7, v8);
}

+ (void)travelTimeLeaveNowStringWithHypothesis:(void *)a1 eta:location:.cold.1(void *a1)
{
  v1 = [MEMORY[0x1E6966B28] geoTransportTypeAsString:{objc_msgSend(a1, "transportType")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1CAB19000, v2, v3, "Warning: Currently no support for generating 'Time to Leave' 'Leave now' message strings for the %@ transport type", v4, v5, v6, v7, v8);
}

@end