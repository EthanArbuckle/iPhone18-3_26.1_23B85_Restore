@interface CUIKTimeToLeaveDescriptionGenerator
+ (id)_attributedEtaString:(double)string fontName:(id)name fontSize:(double)size;
+ (id)_etaString:(double)string;
+ (id)_travelAdvisoryDescriptionOfType:(unint64_t)type hypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)_travelMultiModalWithHypothesis:(id)hypothesis;
+ (id)_travelTimeDrivingStringExcludingTrafficWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)_travelTimeDrivingStringIncludingTrafficWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)_travelTimeDrivingStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)_travelTimeDrivingSubstringWithEta:(id)eta location:(id)location includeTransportType:(BOOL)type;
+ (id)_travelTimeDrivingSubstringWithEta:(id)eta location:(id)location routeName:(id)name includeTransportType:(BOOL)type;
+ (id)_travelTimeLeaveNowDrivingStringExcludingTrafficWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)_travelTimeLeaveNowDrivingStringIncludingTrafficWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)_travelTimeLeaveNowDrivingStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)_travelTimeLeaveNowDrivingSubstringWithEta:(id)eta location:(id)location includeTransportType:(BOOL)type;
+ (id)_travelTimeLeaveNowDrivingSubstringWithEta:(id)eta location:(id)location routeName:(id)name includeTransportType:(BOOL)type;
+ (id)_travelTimeLeaveNowMultiModalSubstringWithEta:(id)eta location:(id)location routeName:(id)name;
+ (id)_travelTimeLeaveNowMultiModalWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)_travelTimeLeaveNowTransitStringWithEta:(id)eta location:(id)location;
+ (id)_travelTimeLeaveNowTransitStringWithLocation:(id)location;
+ (id)_travelTimeLeaveNowWalkingStringWithEta:(id)eta location:(id)location;
+ (id)_travelTimeRunningLateTransitStringWithEta:(id)eta location:(id)location;
+ (id)_travelTimeStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)_travelTimeSubstringWithEta:(id)eta location:(id)location routeName:(id)name;
+ (id)_travelTimeSubstringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)_travelTimeWalkingStringWithEta:(id)eta location:(id)location;
+ (id)departureDateString:(id)string;
+ (id)explanatoryTextForTTLStatus:(unint64_t)status;
+ (id)timeToLeaveAttributedStringWithAttributes:(id)attributes hypothesis:(id)hypothesis location:(id)location;
+ (id)timeToLeaveStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)timeToLeaveStringWithHypothesis:(id)hypothesis location:(id)location;
+ (id)travelAdvisoryDescriptionOfType:(unint64_t)type hypothesis:(id)hypothesis location:(id)location;
+ (id)travelTimeApproachingDepartureDateStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
+ (id)travelTimeApproachingDepartureDateTransitStringWithDepartureDate:(id)date location:(id)location;
+ (id)travelTimeLeaveNowStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location;
@end

@implementation CUIKTimeToLeaveDescriptionGenerator

+ (id)explanatoryTextForTTLStatus:(unint64_t)status
{
  if (status - 1 < 2)
  {
    v3 = CUIKBundle();
    v4 = v3;
    v5 = @"Time to leave alerts are not available because Calendar does not have access to your precise location.";
LABEL_5:
    v6 = &stru_1F4AA8958;
    goto LABEL_7;
  }

  if (status == 3)
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

+ (id)travelAdvisoryDescriptionOfType:(unint64_t)type hypothesis:(id)hypothesis location:(id)location
{
  locationCopy = location;
  hypothesisCopy = hypothesis;
  [hypothesisCopy estimatedTravelTime];
  v10 = [self _etaString:?];
  v11 = [self _travelAdvisoryDescriptionOfType:type hypothesis:hypothesisCopy eta:v10 location:locationCopy];

  return v11;
}

+ (id)_travelMultiModalWithHypothesis:(id)hypothesis
{
  travelSections = [hypothesis travelSections];
  if ([travelSections count] >= 2)
  {
    v5 = [travelSections objectAtIndexedSubscript:1];
    [v5 estimatedTravelTime];
    v6 = [self _etaString:?];

    if ([travelSections count] == 2)
    {
      v7 = [travelSections objectAtIndexedSubscript:0];
      [v7 estimatedTravelTime];
      v8 = [self _etaString:?];

      v9 = [travelSections objectAtIndexedSubscript:0];
      transportType = [v9 transportType];

      if (transportType == 2)
      {
        v11 = [travelSections objectAtIndexedSubscript:1];
        transportType2 = [v11 transportType];

        if (!transportType2)
        {
          v15 = @"%@ on foot and %@ by car";
          goto LABEL_26;
        }

        v13 = [travelSections objectAtIndexedSubscript:1];
        transportType3 = [v13 transportType];

        if (transportType3 == 3)
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
        v29 = [travelSections objectAtIndexedSubscript:0];
        transportType4 = [v29 transportType];

        if (transportType4)
        {
          v31 = [travelSections objectAtIndexedSubscript:0];
          transportType5 = [v31 transportType];

          if (transportType5 == 3)
          {
            v33 = [travelSections objectAtIndexedSubscript:1];
            transportType6 = [v33 transportType];

            if (transportType6 == 2)
            {
              v15 = @"%@ by bike and %@ on foot";
              goto LABEL_26;
            }
          }
        }

        else
        {
          v36 = [travelSections objectAtIndexedSubscript:1];
          transportType7 = [v36 transportType];

          if (transportType7 == 2)
          {
            v15 = @"%@ by car and %@ on foot";
            goto LABEL_26;
          }
        }
      }

      goto LABEL_30;
    }

    if ([travelSections count] != 3)
    {
      v35 = +[CUIKLogSubsystem defaultCategory];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [CUIKTimeToLeaveDescriptionGenerator _travelMultiModalWithHypothesis:travelSections];
      }

      goto LABEL_33;
    }

    v16 = [travelSections objectAtIndexedSubscript:0];
    [v16 estimatedTravelTime];
    v18 = v17;
    v19 = [travelSections objectAtIndexedSubscript:2];
    [v19 estimatedTravelTime];
    v21 = v18 + v20;

    v8 = [self _etaString:v21];
    v22 = [travelSections objectAtIndexedSubscript:0];
    if ([v22 transportType] == 2)
    {
      v23 = [travelSections objectAtIndexedSubscript:1];
      if (![v23 transportType])
      {
        v43 = [travelSections objectAtIndexedSubscript:2];
        transportType8 = [v43 transportType];

        if (transportType8 == 2)
        {
          v28 = @"%@ by car and %@ on foot";
          goto LABEL_39;
        }

LABEL_12:
        v24 = [travelSections objectAtIndexedSubscript:0];
        if ([v24 transportType] == 2)
        {
          v25 = [travelSections objectAtIndexedSubscript:1];
          if ([v25 transportType] == 3)
          {
            v26 = [travelSections objectAtIndexedSubscript:2];
            transportType9 = [v26 transportType];

            if (transportType9 == 2)
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

+ (id)_travelAdvisoryDescriptionOfType:(unint64_t)type hypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  hypothesisCopy = hypothesis;
  etaCopy = eta;
  locationCopy = location;
  switch(type)
  {
    case 0uLL:
      v12 = [CUIKTimeToLeaveDescriptionGenerator travelTimeApproachingDepartureDateStringWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
      goto LABEL_7;
    case 1uLL:
      v12 = [CUIKTimeToLeaveDescriptionGenerator travelTimeLeaveNowStringWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
      goto LABEL_7;
    case 2uLL:
      v12 = [CUIKTimeToLeaveDescriptionGenerator travelTimeRunningLateStringWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
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

+ (id)timeToLeaveStringWithHypothesis:(id)hypothesis location:(id)location
{
  locationCopy = location;
  hypothesisCopy = hypothesis;
  [hypothesisCopy estimatedTravelTime];
  v8 = [self _etaString:?];
  v9 = [self timeToLeaveStringWithHypothesis:hypothesisCopy eta:v8 location:locationCopy];

  return v9;
}

+ (id)timeToLeaveStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  v22 = *MEMORY[0x1E69E9840];
  hypothesisCopy = hypothesis;
  etaCopy = eta;
  locationCopy = location;
  v11 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412802;
    v17 = hypothesisCopy;
    v18 = 2112;
    v19 = etaCopy;
    v20 = 2112;
    v21 = locationCopy;
    _os_log_debug_impl(&dword_1CAB19000, v11, OS_LOG_TYPE_DEBUG, "Generating time to leave string from hypothesis: [%@]. ETA: [%@], location: [%@].", &v16, 0x20u);
  }

  calSimulatedDateForNow = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  v13 = [CUIKTTLDescriptionGeneratorUtilities ttlDescriptionTypeForDate:calSimulatedDateForNow hypothesis:hypothesisCopy];

  v14 = [self _travelAdvisoryDescriptionOfType:v13 hypothesis:hypothesisCopy eta:etaCopy location:locationCopy];

  return v14;
}

+ (id)timeToLeaveAttributedStringWithAttributes:(id)attributes hypothesis:(id)hypothesis location:(id)location
{
  locationCopy = location;
  hypothesisCopy = hypothesis;
  attributesCopy = attributes;
  [hypothesisCopy estimatedTravelTime];
  v11 = [self _etaString:?];
  v12 = [self timeToLeaveStringWithHypothesis:hypothesisCopy eta:v11 location:locationCopy];

  suggestedDepartureDate = [hypothesisCopy suggestedDepartureDate];
  transportType = [hypothesisCopy transportType];

  if (transportType == 1)
  {
    mEMORY[0x1E69669E8] = [MEMORY[0x1E69669E8] shared];
    if ([mEMORY[0x1E69669E8] showDepartureDateForTransitTimeToLeave])
    {
      v16 = [self departureDateString:suggestedDepartureDate];
      if ([v12 containsString:v16])
      {
        v17 = [self departureDateString:suggestedDepartureDate];
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

  v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12 attributes:attributesCopy];
  v20 = [attributesCopy objectForKeyedSubscript:@"CUIKEtaAttributes"];

  if (v20)
  {
    string = [v19 string];
    v22 = [string rangeOfString:v18];
    [v19 addAttributes:v20 range:{v22, v23}];
  }

  v24 = [v19 copy];

  return v24;
}

+ (id)_etaString:(double)string
{
  v4 = objc_alloc_init(MEMORY[0x1E696AB70]);
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  [v4 setCalendar:currentCalendar];

  [v4 setUnitsStyle:2];
  [v4 setAllowedUnits:96];
  v6 = [v4 stringFromTimeInterval:string];

  return v6;
}

+ (id)departureDateString:(id)string
{
  v3 = MEMORY[0x1E696AB78];
  stringCopy = string;
  v5 = objc_alloc_init(v3);
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  [v5 setCalendar:currentCalendar];

  [v5 setDateStyle:0];
  [v5 setTimeStyle:1];
  v7 = [v5 stringFromDate:stringCopy];

  return v7;
}

+ (id)_attributedEtaString:(double)string fontName:(id)name fontSize:(double)size
{
  v21[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v9 = [self _etaString:string];
  v10 = objc_alloc_init(MEMORY[0x1E69DB880]);
  if (nameCopy)
  {
    v11 = [MEMORY[0x1E69DB878] fontWithName:nameCopy size:0.0];
    familyName = [v11 familyName];
    v13 = [v10 fontDescriptorWithFamily:familyName];

    v10 = v13;
  }

  v14 = [v10 fontDescriptorWithSymbolicTraits:2];

  v15 = objc_alloc(MEMORY[0x1E696AAB0]);
  v20 = *MEMORY[0x1E69DB648];
  v16 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:size];
  v21[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v18 = [v15 initWithString:v9 attributes:v17];

  return v18;
}

+ (id)travelTimeApproachingDepartureDateStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  hypothesisCopy = hypothesis;
  etaCopy = eta;
  locationCopy = location;
  if ([hypothesisCopy isMultiModal])
  {
    v11 = [self _travelTimeSubstringWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  if ([hypothesisCopy transportType] == 2)
  {
    v11 = [self _travelTimeWalkingStringWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
    goto LABEL_5;
  }

  if ([hypothesisCopy transportType] == 1)
  {
    suggestedDepartureDate = [hypothesisCopy suggestedDepartureDate];
    v12 = [self travelTimeApproachingDepartureDateTransitStringWithDepartureDate:suggestedDepartureDate location:locationCopy];
  }

  else
  {
    if (![hypothesisCopy transportType])
    {
      v11 = [self _travelTimeDrivingStringWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
      goto LABEL_5;
    }

    v15 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CUIKTimeToLeaveDescriptionGenerator travelTimeApproachingDepartureDateStringWithHypothesis:hypothesisCopy eta:? location:?];
    }

    v12 = &stru_1F4AA8958;
  }

LABEL_6:

  return v12;
}

+ (id)travelTimeApproachingDepartureDateTransitStringWithDepartureDate:(id)date location:(id)location
{
  locationCopy = location;
  dateCopy = date;
  v8 = [self departureDateString:dateCopy];
  v9 = [MEMORY[0x1E6992F68] requiresSingularLocalizationForDate:dateCopy];

  v10 = MEMORY[0x1E696AEC0];
  v11 = CUIKBundle();
  v12 = v11;
  if (locationCopy)
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
    [v10 localizedStringWithFormat:v15, v8, locationCopy];
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

+ (id)travelTimeLeaveNowStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  hypothesisCopy = hypothesis;
  etaCopy = eta;
  locationCopy = location;
  if ([hypothesisCopy isMultiModal])
  {
    v11 = [self _travelTimeLeaveNowMultiModalWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
LABEL_5:
    v12 = v11;
    goto LABEL_6;
  }

  if ([hypothesisCopy transportType] == 2)
  {
    v11 = [self _travelTimeLeaveNowWalkingStringWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
    goto LABEL_5;
  }

  if ([hypothesisCopy transportType] == 1)
  {
    mEMORY[0x1E69669E8] = [MEMORY[0x1E69669E8] shared];
    if ([mEMORY[0x1E69669E8] showDepartureDateForTransitTimeToLeave])
    {
      [self _travelTimeLeaveNowTransitStringWithLocation:locationCopy];
    }

    else
    {
      [self _travelTimeLeaveNowTransitStringWithEta:etaCopy location:locationCopy];
    }
    v12 = ;

    goto LABEL_6;
  }

  if (![hypothesisCopy transportType])
  {
    v11 = [self _travelTimeLeaveNowDrivingStringWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
    goto LABEL_5;
  }

  v15 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [CUIKTimeToLeaveDescriptionGenerator travelTimeLeaveNowStringWithHypothesis:hypothesisCopy eta:? location:?];
  }

  v12 = &stru_1F4AA8958;
LABEL_6:

  return v12;
}

+ (id)_travelTimeLeaveNowMultiModalWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  locationCopy = location;
  etaCopy = eta;
  hypothesisCopy = hypothesis;
  routeName = [hypothesisCopy routeName];
  v12 = [self _travelTimeLeaveNowMultiModalSubstringWithEta:etaCopy location:locationCopy routeName:routeName];

  v13 = [self _travelMultiModalWithHypothesis:hypothesisCopy];

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

+ (id)_travelTimeLeaveNowMultiModalSubstringWithEta:(id)eta location:(id)location routeName:(id)name
{
  etaCopy = eta;
  locationCopy = location;
  nameCopy = name;
  v10 = MEMORY[0x1E696AEC0];
  v11 = CUIKBundle();
  v12 = v11;
  if (locationCopy && nameCopy)
  {
    v13 = [v11 localizedStringForKey:@"Leave now: It will take %@ to get to %@ using %@" value:&stru_1F4AA8958 table:0];
    v17 = nameCopy;
LABEL_6:
    v16 = locationCopy;
    goto LABEL_7;
  }

  if (locationCopy)
  {
    v13 = [v11 localizedStringForKey:@"Leave now: It will take %@ to get to %@" value:&stru_1F4AA8958 table:0];
    goto LABEL_6;
  }

  v13 = [v11 localizedStringForKey:@"Leave now: It will take %@" value:&stru_1F4AA8958 table:0];
LABEL_7:
  v14 = [v10 localizedStringWithFormat:v13, etaCopy, v16, v17];

  return v14;
}

+ (id)_travelTimeLeaveNowWalkingStringWithEta:(id)eta location:(id)location
{
  locationCopy = location;
  v6 = MEMORY[0x1E696AEC0];
  etaCopy = eta;
  v8 = CUIKBundle();
  v9 = v8;
  if (locationCopy)
  {
    v10 = [v8 localizedStringForKey:@"Leave now: It will take %@ to get to %@ on foot." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, etaCopy, locationCopy];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"Leave now: It will take %@ on foot." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, etaCopy, v13];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeLeaveNowTransitStringWithEta:(id)eta location:(id)location
{
  locationCopy = location;
  v6 = MEMORY[0x1E696AEC0];
  etaCopy = eta;
  v8 = CUIKBundle();
  v9 = v8;
  if (locationCopy)
  {
    v10 = [v8 localizedStringForKey:@"Leave now: It will take %@ to get to %@ via transit." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, etaCopy, locationCopy];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"Leave now: It will take %@ via transit." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, etaCopy, v13];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeLeaveNowTransitStringWithLocation:(id)location
{
  locationCopy = location;
  v4 = MEMORY[0x1E696AEC0];
  v5 = CUIKBundle();
  v6 = v5;
  if (locationCopy)
  {
    v7 = [v5 localizedStringForKey:@"Leave now to get to %@ (location) on time via transit." value:@"Leave now to get to %@ on time via transit." table:0];
    [v4 localizedStringWithFormat:v7, locationCopy];
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"Leave now to arrive on time via transit." value:&stru_1F4AA8958 table:0];
    [v4 localizedStringWithFormat:v7, v10];
  }
  v8 = ;

  return v8;
}

+ (id)_travelTimeLeaveNowDrivingStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  locationCopy = location;
  etaCopy = eta;
  hypothesisCopy = hypothesis;
  if ([CUIKTTLDescriptionGeneratorUtilities ttlDescriptionShouldIncludeTrafficForHypothesis:hypothesisCopy])
  {
    [self _travelTimeLeaveNowDrivingStringIncludingTrafficWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
  }

  else
  {
    [self _travelTimeLeaveNowDrivingStringExcludingTrafficWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeLeaveNowDrivingStringIncludingTrafficWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  hypothesisCopy = hypothesis;
  etaCopy = eta;
  locationCopy = location;
  trafficDensityDescription = [hypothesisCopy trafficDensityDescription];
  routeName = [hypothesisCopy routeName];
  v13 = [routeName length];

  if (v13)
  {
    routeName2 = [hypothesisCopy routeName];
    v15 = [self _travelTimeLeaveNowDrivingSubstringWithEta:etaCopy location:locationCopy routeName:routeName2 includeTransportType:0];
  }

  else
  {
    v15 = [self _travelTimeLeaveNowDrivingSubstringWithEta:etaCopy location:locationCopy includeTransportType:0];
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", trafficDensityDescription, v15];

  return v16;
}

+ (id)_travelTimeLeaveNowDrivingStringExcludingTrafficWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  hypothesisCopy = hypothesis;
  etaCopy = eta;
  locationCopy = location;
  routeName = [hypothesisCopy routeName];
  v12 = [routeName length];

  if (v12)
  {
    routeName2 = [hypothesisCopy routeName];
    v14 = [self _travelTimeLeaveNowDrivingSubstringWithEta:etaCopy location:locationCopy routeName:routeName2 includeTransportType:1];
  }

  else
  {
    v14 = [self _travelTimeLeaveNowDrivingSubstringWithEta:etaCopy location:locationCopy includeTransportType:1];
  }

  return v14;
}

+ (id)_travelTimeLeaveNowDrivingSubstringWithEta:(id)eta location:(id)location routeName:(id)name includeTransportType:(BOOL)type
{
  typeCopy = type;
  etaCopy = eta;
  locationCopy = location;
  nameCopy = name;
  v12 = MEMORY[0x1E696AEC0];
  v13 = CUIKBundle();
  v14 = v13;
  if (locationCopy)
  {
    if (typeCopy)
    {
      v15 = @"Leave now: It will take %@ to get to %@ using %@ by car.";
    }

    else
    {
      v15 = @"Leave now: It will take %@ to get to %@ using %@.";
    }

    v17 = [v13 localizedStringForKey:v15 value:&stru_1F4AA8958 table:0];
    [v12 localizedStringWithFormat:v17, etaCopy, locationCopy, nameCopy];
  }

  else
  {
    if (typeCopy)
    {
      v16 = @"Leave now: It will take %@ using %@ by car.";
    }

    else
    {
      v16 = @"Leave now: It will take %@ using %@.";
    }

    v17 = [v13 localizedStringForKey:v16 value:&stru_1F4AA8958 table:0];
    [v12 localizedStringWithFormat:v17, etaCopy, nameCopy, v20];
  }
  v18 = ;

  return v18;
}

+ (id)_travelTimeLeaveNowDrivingSubstringWithEta:(id)eta location:(id)location includeTransportType:(BOOL)type
{
  typeCopy = type;
  etaCopy = eta;
  locationCopy = location;
  v9 = MEMORY[0x1E696AEC0];
  v10 = CUIKBundle();
  v11 = v10;
  if (locationCopy)
  {
    if (typeCopy)
    {
      v12 = @"Leave now: It will take %@ to get to %@ by car.";
    }

    else
    {
      v12 = @"Leave now: It will take %@ to get to %@.";
    }

    v14 = [v10 localizedStringForKey:v12 value:&stru_1F4AA8958 table:0];
    [v9 localizedStringWithFormat:v14, etaCopy, locationCopy];
  }

  else
  {
    if (typeCopy)
    {
      v13 = @"Leave now: It will take %@ by car.";
    }

    else
    {
      v13 = @"Leave now: It will take %@.";
    }

    v14 = [v10 localizedStringForKey:v13 value:&stru_1F4AA8958 table:0];
    [v9 localizedStringWithFormat:v14, etaCopy, v17];
  }
  v15 = ;

  return v15;
}

+ (id)_travelTimeRunningLateTransitStringWithEta:(id)eta location:(id)location
{
  locationCopy = location;
  v6 = MEMORY[0x1E696AEC0];
  etaCopy = eta;
  v8 = CUIKBundle();
  v9 = v8;
  if (locationCopy)
  {
    v10 = [v8 localizedStringForKey:@"It will take %@ to get to %@ via transit." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, etaCopy, locationCopy];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"It will take %@ via transit." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, etaCopy, v13];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  hypothesisCopy = hypothesis;
  etaCopy = eta;
  locationCopy = location;
  if ([hypothesisCopy isMultiModal])
  {
    v11 = [self _travelTimeSubstringWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
LABEL_12:
    v13 = v11;
    goto LABEL_13;
  }

  if ([hypothesisCopy transportType] == 2)
  {
    v11 = [self _travelTimeWalkingStringWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
    goto LABEL_12;
  }

  if ([hypothesisCopy transportType] == 1)
  {
    v11 = [self _travelTimeRunningLateTransitStringWithEta:etaCopy location:locationCopy];
    goto LABEL_12;
  }

  if (![hypothesisCopy transportType])
  {
    v11 = [self _travelTimeDrivingStringWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
    goto LABEL_12;
  }

  v12 = +[CUIKLogSubsystem defaultCategory];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CUIKTimeToLeaveDescriptionGenerator travelTimeApproachingDepartureDateStringWithHypothesis:hypothesisCopy eta:? location:?];
  }

  v13 = &stru_1F4AA8958;
LABEL_13:

  return v13;
}

+ (id)_travelTimeWalkingStringWithEta:(id)eta location:(id)location
{
  locationCopy = location;
  v6 = MEMORY[0x1E696AEC0];
  etaCopy = eta;
  v8 = CUIKBundle();
  v9 = v8;
  if (locationCopy)
  {
    v10 = [v8 localizedStringForKey:@"It will take %@ to get to %@ on foot." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, etaCopy, locationCopy];
  }

  else
  {
    v10 = [v8 localizedStringForKey:@"It will take %@ on foot." value:&stru_1F4AA8958 table:0];
    [v6 localizedStringWithFormat:v10, etaCopy, v13];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeDrivingStringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  locationCopy = location;
  etaCopy = eta;
  hypothesisCopy = hypothesis;
  if ([CUIKTTLDescriptionGeneratorUtilities ttlDescriptionShouldIncludeTrafficForHypothesis:hypothesisCopy])
  {
    [self _travelTimeDrivingStringIncludingTrafficWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
  }

  else
  {
    [self _travelTimeDrivingStringExcludingTrafficWithHypothesis:hypothesisCopy eta:etaCopy location:locationCopy];
  }
  v11 = ;

  return v11;
}

+ (id)_travelTimeDrivingStringIncludingTrafficWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  hypothesisCopy = hypothesis;
  etaCopy = eta;
  locationCopy = location;
  trafficDensityDescription = [hypothesisCopy trafficDensityDescription];
  routeName = [hypothesisCopy routeName];
  v13 = [routeName length];

  if (v13)
  {
    routeName2 = [hypothesisCopy routeName];
    v15 = [self _travelTimeDrivingSubstringWithEta:etaCopy location:locationCopy routeName:routeName2 includeTransportType:0];
  }

  else
  {
    v15 = [self _travelTimeDrivingSubstringWithEta:etaCopy location:locationCopy includeTransportType:0];
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", trafficDensityDescription, v15];

  return v16;
}

+ (id)_travelTimeDrivingStringExcludingTrafficWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  hypothesisCopy = hypothesis;
  etaCopy = eta;
  locationCopy = location;
  routeName = [hypothesisCopy routeName];
  v12 = [routeName length];

  if (v12)
  {
    routeName2 = [hypothesisCopy routeName];
    v14 = [self _travelTimeDrivingSubstringWithEta:etaCopy location:locationCopy routeName:routeName2 includeTransportType:1];
  }

  else
  {
    v14 = [self _travelTimeDrivingSubstringWithEta:etaCopy location:locationCopy includeTransportType:1];
  }

  return v14;
}

+ (id)_travelTimeDrivingSubstringWithEta:(id)eta location:(id)location routeName:(id)name includeTransportType:(BOOL)type
{
  typeCopy = type;
  etaCopy = eta;
  locationCopy = location;
  nameCopy = name;
  v12 = MEMORY[0x1E696AEC0];
  v13 = CUIKBundle();
  v14 = v13;
  if (locationCopy)
  {
    if (typeCopy)
    {
      v15 = @"It will take %@ to get to %@ using %@ by car.";
    }

    else
    {
      v15 = @"It will take %@ to get to %@ using %@.";
    }

    v17 = [v13 localizedStringForKey:v15 value:&stru_1F4AA8958 table:0];
    [v12 localizedStringWithFormat:v17, etaCopy, locationCopy, nameCopy];
  }

  else
  {
    if (typeCopy)
    {
      v16 = @"It will take %@ using %@ by car.";
    }

    else
    {
      v16 = @"It will take %@ using %@.";
    }

    v17 = [v13 localizedStringForKey:v16 value:&stru_1F4AA8958 table:0];
    [v12 localizedStringWithFormat:v17, etaCopy, nameCopy, v20];
  }
  v18 = ;

  return v18;
}

+ (id)_travelTimeDrivingSubstringWithEta:(id)eta location:(id)location includeTransportType:(BOOL)type
{
  typeCopy = type;
  etaCopy = eta;
  locationCopy = location;
  v9 = MEMORY[0x1E696AEC0];
  v10 = CUIKBundle();
  v11 = v10;
  if (locationCopy)
  {
    if (typeCopy)
    {
      v12 = @"It will take %@ to get to %@ by car.";
    }

    else
    {
      v12 = @"It will take %@ to get to %@.";
    }

    v14 = [v10 localizedStringForKey:v12 value:&stru_1F4AA8958 table:0];
    [v9 localizedStringWithFormat:v14, etaCopy, locationCopy];
  }

  else
  {
    if (typeCopy)
    {
      v13 = @"It will take %@ by car.";
    }

    else
    {
      v13 = @"It will take %@ to arrive.";
    }

    v14 = [v10 localizedStringForKey:v13 value:&stru_1F4AA8958 table:0];
    [v9 localizedStringWithFormat:v14, etaCopy, v17];
  }
  v15 = ;

  return v15;
}

+ (id)_travelTimeSubstringWithHypothesis:(id)hypothesis eta:(id)eta location:(id)location
{
  locationCopy = location;
  etaCopy = eta;
  hypothesisCopy = hypothesis;
  routeName = [hypothesisCopy routeName];
  v12 = [self _travelTimeSubstringWithEta:etaCopy location:locationCopy routeName:routeName];

  v13 = [self _travelMultiModalWithHypothesis:hypothesisCopy];

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

+ (id)_travelTimeSubstringWithEta:(id)eta location:(id)location routeName:(id)name
{
  etaCopy = eta;
  locationCopy = location;
  nameCopy = name;
  v10 = MEMORY[0x1E696AEC0];
  v11 = CUIKBundle();
  v12 = v11;
  if (locationCopy && nameCopy)
  {
    v13 = [v11 localizedStringForKey:@"It will take %@ to get to %@ using %@" value:&stru_1F4AA8958 table:0];
    v17 = nameCopy;
LABEL_6:
    v16 = locationCopy;
    goto LABEL_7;
  }

  if (locationCopy)
  {
    v13 = [v11 localizedStringForKey:@"It will take %@ to get to %@" value:&stru_1F4AA8958 table:0];
    goto LABEL_6;
  }

  v13 = [v11 localizedStringForKey:@"It will take %@" value:&stru_1F4AA8958 table:0];
LABEL_7:
  v14 = [v10 localizedStringWithFormat:v13, etaCopy, v16, v17];

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