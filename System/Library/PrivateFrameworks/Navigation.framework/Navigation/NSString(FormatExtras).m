@interface NSString(FormatExtras)
+ (BOOL)_componentsWillUseShortFormat:()FormatExtras;
+ (_TempToken)_navigation_overridenTokenForToken:()FormatExtras overrideVariables:;
+ (__CFString)_frequencyStringForComponents:()FormatExtras forRange:forceShort:;
+ (__CFString)_navigation_replacementForFormatToken:()FormatExtras options:overrideVariables:useMetric:;
+ (id)_frequencyDateComponents:()FormatExtras;
+ (id)_navigation_descriptionForFrequencyMinuteValue:()FormatExtras;
+ (id)_navigation_descriptionForFrequencyRangeWithMinFrequency:()FormatExtras maxFrequency:estimate:recurring:;
+ (id)_navigation_formatFloatForPrintedDistance:()FormatExtras;
+ (id)_navigation_formattedDescriptionForFrequency:()FormatExtras;
+ (id)_navigation_formattedDescriptionForLiveStatus:()FormatExtras updatedDepartureTimeString:;
+ (id)_navigation_formattedStringForFloat:()FormatExtras useIncreasedPrecision:;
+ (id)_navigation_formattedStringForHourRanges:()FormatExtras timeZone:;
+ (id)_navigation_formattedStringForHourRanges:()FormatExtras timeZone:delimeter:;
+ (id)_navigation_formattedStringForInteger:()FormatExtras;
+ (id)_navigation_formattedStringForOperatingHours:()FormatExtras timeZone:;
+ (id)_navigation_formattedStringForPriceValue:()FormatExtras currencyCode:;
+ (id)_navigation_formattedStringForPriceValueWithAmount:()FormatExtras currencyCode:showsCurrencySymbol:;
+ (id)_navigation_formatterForOptions:()FormatExtras;
+ (id)_navigation_frequencyRangeLocalizedInHoursWithMinHours:()FormatExtras maxHours:estimate:recurring:;
+ (id)_navigation_frequencyRangeLocalizedInMinutesWithMinMinutes:()FormatExtras maxMinutes:estimate:recurring:;
+ (id)_navigation_frequencyRangeLocalizedInMixedUnitsWithMinString:()FormatExtras maxString:estimate:recurring:;
+ (id)_navigation_languageDirectionStringWithFormat:()FormatExtras;
+ (id)_navigation_localizedStringForDistance:()FormatExtras detail:unitFormat:locale:useMetric:useYards:shouldScale:;
+ (id)_navigation_replacementForFormatToken:()FormatExtras abbreviatedUnits:overrideVariables:detail:spoken:;
+ (id)_navigation_replacementForFormatToken:()FormatExtras options:overrideVariables:;
+ (id)_navigation_selectInstructionWithServerString:()FormatExtras isSpoken:clientBlock:;
+ (id)_navigation_selectInstructionWithServerStringArray:()FormatExtras isSpoken:clientBlock:;
+ (id)_navigation_spokenStringWithMinutes:()FormatExtras andAbbreviationType:;
+ (id)_navigation_stringForDistance:()FormatExtras formatter:locale:shouldScale:;
+ (id)_navigation_stringForExpectedTravelTime:()FormatExtras dateUnitStyle:;
+ (id)_navigation_stringForPower:()FormatExtras unit:;
+ (id)_navigation_stringForServerFormattedString:()FormatExtras abbreviatedUnits:detail:spoken:overrideVariables:;
+ (id)_navigation_stringForServerFormattedString:()FormatExtras abbreviatedUnits:detail:spoken:overrideVariables:allTokensExpanded:;
+ (id)_navigation_stringForServerFormattedString:()FormatExtras abbreviatedUnits:detail:spoken:wrappedOverrideVariables:allTokensExpanded:;
+ (id)_navigation_stringForServerFormattedString:()FormatExtras options:overrideVariables:;
+ (id)_navigation_stringForServerFormattedString:()FormatExtras options:overrideVariables:allTokensExpanded:;
+ (id)_navigation_stringForServerFormattedString:()FormatExtras options:wrappedOverrideVariables:;
+ (id)_navigation_stringForServerFormattedString:()FormatExtras options:wrappedOverrideVariables:allTokensExpanded:;
+ (id)_navigation_stringWithCountdownValue:()FormatExtras inToken:options:;
+ (id)_navigation_stringWithMinutes:()FormatExtras andAbbreviationType:;
+ (id)_navigation_stringWithTimeStampValues:()FormatExtras options:;
+ (uint64_t)_navigation_abbreviatedFromatterUnitsStyleForLocale:()FormatExtras;
+ (uint64_t)_navigation_localizedStringForDistance:()FormatExtras context:extraDetail:;
+ (uint64_t)_navigation_logIfContainsVariables:()FormatExtras;
+ (uint64_t)_navigation_spokenStringWithSeconds:()FormatExtras andAbbreviationType:;
+ (uint64_t)_navigation_stringWithSeconds:()FormatExtras andAbbreviationType:;
+ (uint64_t)_replaceToken:()FormatExtras composedString:options:overrideVariables:;
+ (uint64_t)_replaceToken:()FormatExtras composedString:replacement:;
+ (void)_navigation_logMismatchBetweenServerInstruction:()FormatExtras clientInstruction:;
- (BOOL)_navigation_containsVariables;
- (__CFString)_navigation_stringByMakingPhonetic;
- (__CFString)_navigation_stringByMarkingAsAddress;
- (__CFString)_navigation_stringByMarkingAsNavigationText;
- (__CFString)_navigation_stringByMarkingAsNormalText;
- (id)_navigation_stringByStrippingPrivateTag;
- (id)_navigation_stripTagsFromSpokenString;
- (id)_navigation_stripVariablesFromString;
- (uint64_t)_navigation_distanceLevenshtein:()FormatExtras;
- (uint64_t)_navigation_isCJK;
@end

@implementation NSString(FormatExtras)

- (uint64_t)_navigation_distanceLevenshtein:()FormatExtras
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 length];
  v6 = [v4 length];
  v27 = &v26;
  v26 = v6 + 1;
  v7 = &v26 - ((8 * (v6 + 1 + (v6 + 1) * v5) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = v6;
  v28 = v7;
  do
  {
    v10 = 0;
    v11 = v7;
    do
    {
      if (v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v10;
      }

      if (!v10)
      {
        v12 = v8;
      }

      *v11 = v12;
      ++v10;
      v11 += v6 + 1;
    }

    while (v10 <= v5);
    ++v8;
    v7 += 8;
  }

  while (v8 <= v6);
  if (v6)
  {
    v13 = v28 + 8;
    v29 = v6;
    v30 = 1;
    do
    {
      if (v5)
      {
        v14 = 0;
        v15 = v30 - 1;
        v16 = v13;
        do
        {
          v17 = [a1 characterAtIndex:{v14, v26, v27}];
          v18 = [v4 characterAtIndex:v15];
          v19 = *(v16 - 1);
          if (v17 != v18)
          {
            ++v19;
          }

          v20 = *v16 + 1;
          v21 = v16[v9];
          if (v20 >= v21 + 1)
          {
            v20 = v21 + 1;
          }

          if (v19 >= v20)
          {
            v19 = v20;
          }

          v16[v9 + 1] = v19;
          ++v14;
          v16 = (v16 + v9 * 8 + 8);
        }

        while (v5 != v14);
      }

      v6 = v29;
      v22 = v30;
      ++v13;
      ++v30;
    }

    while (v22 != v29);
  }

  v23 = *&v28[8 * v26 * v5 + 8 * v6];

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)_navigation_containsVariables
{
  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\{\\w+\\}" options:0 error:0];
  v3 = [v2 numberOfMatchesInString:a1 options:0 range:{0, objc_msgSend(a1, "length")}] != 0;

  return v3;
}

- (id)_navigation_stripVariablesFromString
{
  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\{\\w+\\}" options:0 error:0];
  v3 = [v2 stringByReplacingMatchesInString:a1 options:0 range:0 withTemplate:{objc_msgSend(a1, "length"), &stru_1F4EB6B70}];

  return v3;
}

- (id)_navigation_stringByStrippingPrivateTag
{
  if ([a1 _navigation_isPrivate])
  {
    v2 = [a1 stringByReplacingOccurrencesOfString:@"[private] " withString:&stru_1F4EB6B70];
  }

  else
  {
    v2 = a1;
  }

  return v2;
}

- (id)_navigation_stripTagsFromSpokenString
{
  v5 = 0;
  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@".\\\\\\w+=[^\\\\]+\\\\"" options:0 error:&v5];
  v3 = [v2 stringByReplacingMatchesInString:a1 options:0 range:0 withTemplate:{objc_msgSend(a1, "length"), &stru_1F4EB6B70}];

  return v3;
}

- (uint64_t)_navigation_isCJK
{
  result = [a1 length];
  if (result)
  {
    if (_navigation_isCJK_onceToken != -1)
    {
      dispatch_once(&_navigation_isCJK_onceToken, &__block_literal_global_772);
    }

    return [a1 rangeOfCharacterFromSet:_navigation_isCJK_CJKSet] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (__CFString)_navigation_stringByMarkingAsNormalText
{
  if ([a1 length])
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"\x1B\\tn=normal\, a1, @"\x1B\\tn=nav\];
  }

  else
  {
    v2 = &stru_1F4EB6B70;
  }

  return v2;
}

- (__CFString)_navigation_stringByMarkingAsNavigationText
{
  v2 = &stru_1F4EB6B70;
  if ([a1 length])
  {
    v3 = [a1 _navigation_isPrivate];
    v4 = a1;
    v5 = v4;
    if (v3)
    {
      v5 = [v4 substringFromIndex:{objc_msgSend(@"[private] ", "length")}];
    }

    v6 = [v5 length];
    v7 = [@"\x1B\\tn=nav\\"" length];
    if (v6 >= [@"\x1B\\tn=normal\\"" length] + v7)
    {
      v8 = [v5 substringToIndex:{objc_msgSend(@"\x1B\\tn=nav\\", "length"")}];
      if ([v8 isEqualToString:@"\x1B\\tn=nav\\""])
      {
        v9 = [v5 substringFromIndex:{objc_msgSend(v5, "length") - objc_msgSend(@"\x1B\\tn=normal\\", "length"")}];
        v10 = [v9 isEqualToString:@"\x1B\\tn=normal\\""];

        if (v10)
        {
          v11 = v4;
LABEL_12:
          v2 = v11;

          goto LABEL_13;
        }
      }

      else
      {
      }
    }

    v12 = @"[private] ";
    if (!v3)
    {
      v12 = &stru_1F4EB6B70;
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@", v12, @"\x1B\\tn=nav\, v5, @"\x1B\\tn=normal\];
    goto LABEL_12;
  }

LABEL_13:

  return v2;
}

- (__CFString)_navigation_stringByMarkingAsAddress
{
  if ([a1 length])
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"\x1B\\tn=address\, a1, @"\x1B\\tn=nav\];
  }

  else
  {
    v2 = &stru_1F4EB6B70;
  }

  return v2;
}

- (__CFString)_navigation_stringByMakingPhonetic
{
  if ([a1 length])
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"\x1B\\toi=lhp\, a1, @"\x1B\\toi=orth\];
  }

  else
  {
    v2 = &stru_1F4EB6B70;
  }

  return v2;
}

+ (id)_navigation_stringForPower:()FormatExtras unit:
{
  v5 = _navigation_stringForPower_unit__onceToken;
  v6 = a4;
  if (v5 != -1)
  {
    dispatch_once(&_navigation_stringForPower_unit__onceToken, &__block_literal_global_790);
  }

  v7 = [objc_alloc(MEMORY[0x1E696AD28]) initWithDoubleValue:v6 unit:a1];

  v8 = [_navigation_stringForPower_unit__formatter stringFromMeasurement:v7];

  return v8;
}

+ (uint64_t)_navigation_abbreviatedFromatterUnitsStyleForLocale:()FormatExtras
{
  v3 = [a3 languageCode];
  v4 = [v3 isEqualToString:@"ja"];

  if (v4)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

+ (id)_navigation_selectInstructionWithServerStringArray:()FormatExtras isSpoken:clientBlock:
{
  v3 = a3;
  [MEMORY[0x1E696AEC0] _navigation_logIfContainsVariables:v3];

  return v3;
}

+ (id)_navigation_selectInstructionWithServerString:()FormatExtras isSpoken:clientBlock:
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E696AEC0];
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v4 _navigation_logIfContainsVariables:v5];

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (uint64_t)_navigation_logIfContainsVariables:()FormatExtras
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v16;
    *&v5 = 138543362;
    v14 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 _navigation_containsVariables])
        {
          v11 = MNGetMNStringExtrasLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = v14;
            v20 = v10;
            _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_ERROR, "Instruction contains variables: '%{public}@'", buf, 0xCu);
          }

          v7 = 1;
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

+ (void)_navigation_logMismatchBetweenServerInstruction:()FormatExtras clientInstruction:
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MNGetMNStringExtrasLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 138478083;
    v10 = v5;
    v11 = 2113;
    v12 = v6;
    _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "Routing service string doesn't match client's expectation:\n  server instruction: '%{private}@'\n  client instruction: '%{private}@'", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (id)_navigation_languageDirectionStringWithFormat:()FormatExtras
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a3;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];
  v17.length = [(__CFString *)v10 length];
  v17.location = 0;
  v12 = CFStringTokenizerCopyBestStringLanguage(v10, v17);

  if ([MEMORY[0x1E695DF58] characterDirectionForLanguage:v12] == 2)
  {
    v13 = @"\u200F";
  }

  else
  {
    v13 = @"\u200E";
  }

  v14 = [(__CFString *)v13 stringByAppendingString:v11];

  return v14;
}

+ (id)_navigation_formattedStringForPriceValueWithAmount:()FormatExtras currencyCode:showsCurrencySymbol:
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 isEqualToString:@"CNY"];
  v10 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v11 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v10 setLocale:v11];

  [v10 setNumberStyle:2];
  if (v9)
  {
    [v10 setMinimumFractionDigits:0];
    [v10 setCurrencyCode:@"CNY"];
    if (a5)
    {
      v12 = 0;
    }

    else
    {
      v12 = &stru_1F4EB6B70;
    }

    [v10 setCurrencySymbol:v12];
    v13 = [v10 stringFromNumber:v8];

    if (!a5)
    {
      goto LABEL_13;
    }

    v17 = 0;
    v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"([￥¥])(\\s*)" options:0 error:&v17];
    if (!v17)
    {
      v14 = [v8 stringByReplacingMatchesInString:v13 options:0 range:0 withTemplate:{objc_msgSend(v13, "length"), @"⁠¥"}];

      v13 = v14;
    }
  }

  else
  {
    [v10 setCurrencyCode:v7];
    if (a5)
    {
      v15 = 0;
    }

    else
    {
      v15 = &stru_1F4EB6B70;
    }

    [v10 setCurrencySymbol:v15];
    v13 = [v10 stringFromNumber:v8];
  }

LABEL_13:

  return v13;
}

+ (id)_navigation_formattedStringForPriceValue:()FormatExtras currencyCode:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a2];
  v9 = [a1 _navigation_formattedStringForPriceValueWithAmount:v8 currencyCode:v7];

  return v9;
}

+ (id)_navigation_stringWithCountdownValue:()FormatExtras inToken:options:
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v11 = [v8 timestamps];
  v50 = a1;
  v51 = a5;
  if (*(a5 + 24) <= 0.0)
  {
    [MEMORY[0x1E695DF00] date];
  }

  else
  {
    [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
  }
  v12 = ;
  v52 = v9;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v54 objects:v62 count:16];
  v53 = v13;
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v55;
    v18 = 2;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v20 = MEMORY[0x1E695DF00];
        [*(*(&v54 + 1) + 8 * i) doubleValue];
        v21 = [v20 dateWithTimeIntervalSinceReferenceDate:?];
        [v21 timeIntervalSinceDate:v12];
        v23 = v22;
        IsImminentDepartureTimeInterval = GEOTransitDepartureIsImminentDepartureTimeInterval();
        if ((IsImminentDepartureTimeInterval & 1) != 0 || v23 >= 0.0)
        {
          if (IsImminentDepartureTimeInterval)
          {
            v18 -= (v16 & 1) == 0;
            v16 = 1;
          }

          else
          {
            v25 = v23 / 60 <= 1 ? 1 : v23 / 60;
            v26 = [MEMORY[0x1E696AEC0] _navigation_formattedStringForInteger:v25];
            [v10 addObject:v26];

            v13 = v53;
          }

          if ([v10 count] == v18)
          {

            goto LABEL_23;
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_23:

  if (*(v51 + 18) == 1)
  {
    v27 = MEMORY[0x1E695DF70];
    v28 = [v10 reverseObjectEnumerator];
    v29 = [v28 allObjects];
    v30 = [v27 arrayWithArray:v29];

    v13 = v53;
    v10 = v30;
  }

  if ((v16 & 1) != 0 && [v10 count])
  {
    v31 = 2;
  }

  else
  {
    v32 = [v10 count];
    if (v32)
    {
      v31 = 3;
    }

    else
    {
      v31 = 1;
    }

    if (!((v32 != 0) | v16 & 1))
    {
      v35 = objc_alloc_init(_TempTokenTimestampValue);
      v37 = [v13 lastObject];
      [v37 doubleValue];
      [(_TempTokenTimestampValue *)v35 setTimeStamp:?];

      [(_TempTokenTimestampValue *)v35 setFormatPattern:@"jjmm"];
      v61 = v35;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
      v39 = *(v51 + 16);
      *buf = *v51;
      *&buf[16] = v39;
      v40 = [v50 _navigation_stringWithTimeStampValues:v38 options:buf];
LABEL_40:

      goto LABEL_41;
    }
  }

  v33 = [v8 alternativeFormatStringsByType];
  v34 = [MEMORY[0x1E696AD98] numberWithInteger:v31];
  v35 = [v33 objectForKeyedSubscript:v34];

  if (!v35 && [v8 countdownType] != v31)
  {
    v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Server did not provide a format string for us to use"];
    v49 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "+[NSString(FormatExtras) _navigation_stringWithCountdownValue:inToken:options:]";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
      *&buf[22] = 1024;
      *&buf[24] = 1948;
      *&buf[28] = 2080;
      *&buf[30] = "formatString || value.countdownType == preferredType";
      v59 = 2112;
      v60 = v48;
      _os_log_impl(&dword_1D311E000, v49, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s) %@", buf, 0x30u);
    }
  }

  v36 = [v8 separator];
  if ([v36 length])
  {
    [v8 separator];
  }

  else
  {
    [v50 _navigation_commaListDelimiter];
  }
  v41 = ;
  v13 = v53;
  v42 = [v10 componentsJoinedByString:v41];

  v43 = MEMORY[0x1E696AEC0];
  v44 = _MNLocalizedStringFromThisBundle(@"FormattedString_Countdownlist_Min_Format");
  v40 = [v43 stringWithFormat:v44, v42];

  if (v35)
  {
    v38 = [v52 token];
    v45 = [(_TempTokenTimestampValue *)v35 stringByReplacingOccurrencesOfString:v38 withString:v40];

    v40 = v45;
    goto LABEL_40;
  }

LABEL_41:

  v46 = *MEMORY[0x1E69E9840];

  return v40;
}

+ (id)_navigation_stringWithTimeStampValues:()FormatExtras options:
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = MEMORY[0x1E695DF70];
  v7 = [v5 count];
  if (v7 <= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  v59 = [v6 arrayWithCapacity:v8];
  v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v10 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v9 setLocale:v10];

  *&v56 = [v9 AMSymbol];
  *(&v56 + 1) = [v9 PMSymbol];
  v11 = v56 != 0 && ((*(a4 + 17) & 1) != 0 || [v5 count] > 1);
  if (*(a4 + 17) == 1)
  {
    v54 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  }

  else
  {
    v54 = 0;
  }

  v55 = a4;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v5;
  v12 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (!v12)
  {
    v60 = 0;
    v57 = 0;
    goto LABEL_49;
  }

  v13 = v12;
  v60 = 0;
  v57 = 0;
  v14 = *v63;
  do
  {
    v15 = 0;
    do
    {
      if (*v63 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v62 + 1) + 8 * v15);
      v17 = [v16 formatPattern];
      v18 = [v17 length];

      if (!v18)
      {
        goto LABEL_43;
      }

      v19 = [v16 timeZone];
      v20 = [v16 formatPattern];
      [v9 setLocalizedDateFormatFromTemplate:v20];

      [v9 setTimeZone:v19];
      v21 = MEMORY[0x1E695DF00];
      [v16 timeStamp];
      v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
      v23 = [v9 stringFromDate:v22];

      if (!v11)
      {
        v11 = 0;
        goto LABEL_42;
      }

      if (!v56 || (v24 = [v23 rangeOfString:v56], v24 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v26 = 0;
LABEL_22:
        v27 = v57;
        goto LABEL_23;
      }

      v33 = v24;
      if (*(v55 + 17) == 1)
      {
        v34 = [v23 stringByReplacingCharactersInRange:v24 withString:{v25, &stru_1F4EB6B70}];
        v35 = [v34 stringByTrimmingCharactersInSet:v54];

        v26 = 0;
        v23 = v35;
        goto LABEL_22;
      }

      v26 = [v56 copy];
      v27 = v57;
      v60 |= (v57 | v33) == 0;
      if (v26)
      {
        goto LABEL_25;
      }

LABEL_23:
      if (!*(&v56 + 1) || (v28 = [v23 rangeOfString:*(&v56 + 1)], v28 == 0x7FFFFFFFFFFFFFFFLL))
      {
LABEL_25:
        if ((v60 & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_26;
      }

      v36 = v28;
      if (*(v55 + 17) == 1)
      {
        v37 = [v23 stringByReplacingCharactersInRange:v28 withString:{v29, &stru_1F4EB6B70}];
        v32 = [v37 stringByTrimmingCharactersInSet:v54];

        v26 = 0;
        if ((v60 & 1) == 0)
        {
          v11 = 0;
          goto LABEL_41;
        }

        v23 = v32;
        if (!v27)
        {
          goto LABEL_29;
        }

LABEL_27:
        if ([v26 isEqualToString:v27])
        {
          v30 = [v23 stringByReplacingOccurrencesOfString:v26 withString:&stru_1F4EB6B70];

          v23 = v30;
        }

        goto LABEL_29;
      }

      v26 = [*(&v56 + 1) copy];
      if (!(((v27 | v36) == 0) | v60 & 1))
      {
LABEL_40:
        v11 = 0;
        v32 = v23;
        goto LABEL_41;
      }

LABEL_26:
      if (v27)
      {
        goto LABEL_27;
      }

LABEL_29:
      v31 = [v26 copy];

      v11 = 1;
      v32 = v23;
      v57 = v31;
LABEL_41:

      v23 = v32;
      v60 = v11;
LABEL_42:
      [v59 addObject:v23];
      v38 = [v59 count];

      if (v38 == 3)
      {
        goto LABEL_49;
      }

LABEL_43:
      ++v15;
    }

    while (v13 != v15);
    v39 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    v13 = v39;
  }

  while (v39);
LABEL_49:

  if ([v59 count] <= 1)
  {
    v40 = [v59 firstObject];
    goto LABEL_69;
  }

  v41 = _MNLocalizedStringFromThisBundle(@"timestamp list delimiter");
  v42 = [v59 componentsJoinedByString:v41];

  if ((v60 & 1) == 0 && *(v55 + 17) != 1)
  {
    if ([v56 length] && objc_msgSend(*(&v56 + 1), "length"))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"((\\s*%@)(?=(?:.(?!%@))+(?:(?=%@))))|((\\s*%@)(?=(?:.(?!%@))+(?:(?=%@))))", v56, v56, v56];
    }

    else
    {
      if (![v56 length] && !objc_msgSend(*(&v56 + 1), "length"))
      {
        v45 = 0;
        goto LABEL_63;
      }

      v43 = [v56 length];
      v44 = *(&v56 + 1);
      if (v43)
      {
        v44 = v56;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"(\\s*%@)(?=.*%@)", v44, v44, v50, v51, v52, v53];
    }
    v45 = ;
LABEL_63:
    if ([v45 length])
    {
      v61 = 0;
      v46 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v45 options:0 error:&v61];
      if (!v61)
      {
        v47 = [v46 stringByReplacingMatchesInString:v42 options:0 range:0 withTemplate:{objc_msgSend(v42, "length"), &stru_1F4EB6B70}];

        v42 = v47;
      }
    }

    v40 = v42;

    goto LABEL_68;
  }

  v40 = v42;
LABEL_68:

LABEL_69:
  v48 = *MEMORY[0x1E69E9840];

  return v40;
}

+ (id)_navigation_spokenStringWithMinutes:()FormatExtras andAbbreviationType:
{
  v7 = objc_alloc_init(MEMORY[0x1E696AB70]);
  [v7 setZeroFormattingBehavior:14];
  [v7 setAllowedUnits:112];
  [v7 setMaximumUnitCount:2];
  v8 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v9 = [MEMORY[0x1E696AE30] processInfo];
  v10 = [v9 _navigation_isNavd];

  v11 = MEMORY[0x1E695DF58];
  if (v10)
  {
    +[MNUserOptionsEngine sharedInstance];
  }

  else
  {
    +[MNNavigationService sharedService];
  }
  v12 = ;
  v13 = [v12 currentVoiceLanguage];
  v14 = [v11 localeWithLocaleIdentifier:v13];
  [v8 setLocale:v14];

  [v7 setCalendar:v8];
  if (a4 == 2)
  {
    v17 = [v7 calendar];
    v18 = [v17 locale];
    [v7 setUnitsStyle:{objc_msgSend(a1, "_navigation_abbreviatedFromatterUnitsStyleForLocale:", v18)}];
  }

  else
  {
    if (a4 == 1)
    {
      v15 = v7;
      v16 = 2;
    }

    else
    {
      if (a4)
      {
        goto LABEL_11;
      }

      v15 = v7;
      v16 = 3;
    }

    [v15 setUnitsStyle:v16];
  }

LABEL_11:
  v19 = [v7 stringFromTimeInterval:(60 * a3)];
  if ([v19 length])
  {
    v20 = [v19 stringByReplacingOccurrencesOfString:@" withString:{", &stru_1F4EB6B70}];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (uint64_t)_navigation_spokenStringWithSeconds:()FormatExtras andAbbreviationType:
{
  v3 = 60 * (a3 / 0x3C);
  v4 = a3 == v3;
  v5 = v3 + 60;
  if (v4)
  {
    v5 = a3;
  }

  return [a1 _navigation_spokenStringWithMinutes:v5 / 0x3C andAbbreviationType:?];
}

+ (id)_navigation_stringWithMinutes:()FormatExtras andAbbreviationType:
{
  v7 = objc_alloc_init(MEMORY[0x1E696AB70]);
  [v7 setZeroFormattingBehavior:14];
  [v7 setAllowedUnits:112];
  [v7 setMaximumUnitCount:2];
  if (a4 == 2)
  {
    v10 = [v7 calendar];
    v11 = [v10 locale];
    [v7 setUnitsStyle:{objc_msgSend(a1, "_navigation_abbreviatedFromatterUnitsStyleForLocale:", v11)}];
  }

  else
  {
    if (a4 == 1)
    {
      v8 = v7;
      v9 = 2;
    }

    else
    {
      if (a4)
      {
        goto LABEL_8;
      }

      v8 = v7;
      v9 = 3;
    }

    [v8 setUnitsStyle:v9];
  }

LABEL_8:
  v12 = [v7 stringFromTimeInterval:(60 * a3)];
  if ([v12 length])
  {
    v13 = [v12 stringByReplacingOccurrencesOfString:@" withString:{", &stru_1F4EB6B70}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (uint64_t)_navigation_stringWithSeconds:()FormatExtras andAbbreviationType:
{
  v3 = 60 * (a3 / 0x3C);
  v4 = a3 == v3;
  v5 = v3 + 60;
  if (v4)
  {
    v5 = a3;
  }

  return [a1 _navigation_stringWithMinutes:v5 / 0x3C andAbbreviationType:?];
}

+ (id)_navigation_stringForDistance:()FormatExtras formatter:locale:shouldScale:
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = a4;
  [v9 setLocale:a5];
  v10 = [v9 spoken];
  v11 = MNInstructionsCalculateScaledDistanceUnits([v9 metric], objc_msgSend(v9, "yards"), objc_msgSend(v9, "rounding"), a6, a1);
  v13 = v12;
  v14 = *&v12;
  v15 = [v9 rounding];
  v16 = HIDWORD(v13) & 1;
  if (v15 != 1)
  {
    LODWORD(v16) = 0;
  }

  if (!v10)
  {
    if (v16)
    {
      v44 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v47 = 136315906;
        v48 = "+[NSString(FormatExtras) _navigation_stringForDistance:formatter:locale:shouldScale:]";
        v49 = 2080;
        v50 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
        v51 = 1024;
        v52 = 1572;
        v53 = 2080;
        v54 = "formatOptions.rounding != MNInstructionsDistanceDetailLevelWholeNumbers || !distanceUnits.hasDecimalComponent";
        _os_log_impl(&dword_1D311E000, v44, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v47, 0x26u);
      }
    }

    v20 = [v9 rounding];
    v21 = floorf(v14);
    if (v20 == 1)
    {
      v19 = v21;
    }

    else
    {
      v19 = v14;
    }

    if ((v13 & 0x100000000) != 0)
    {
      v22 = [v9 minimumFractionDigits];
      v23 = __exp10([v9 maximumFractionDigits]);
      v24 = [v9 minimumFractionDigits];
      if (v24 < [v9 maximumFractionDigits])
      {
        v25 = round(v23 * v19) / v23;
        v26 = __exp10(v24);
        if (round(v26 * v19) / v26 != v25)
        {
          v27 = v24 + 1;
          do
          {
            v22 = v27;
            if (v27 >= [v9 maximumFractionDigits])
            {
              break;
            }

            v28 = __exp10(v22);
            v27 = v22 + 1;
          }

          while (round(v28 * v19) / v28 != v25);
        }
      }
    }

    else
    {
      v22 = 0;
    }

    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:
          goto LABEL_45;
        case 4:
          [v9 setMinimumFractionDigits:v22];
          [v9 setMaximumFractionDigits:v22];
          goto LABEL_51;
        case 5:
          v32 = v19;
          if ((v19 - 4) <= 0xFFFFFFFC)
          {
            v46 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v47 = 136315906;
              v48 = "+[NSString(FormatExtras) _navigation_stringForDistance:formatter:locale:shouldScale:]";
              v49 = 2080;
              v50 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
              v51 = 1024;
              v52 = 1625;
              v53 = 2080;
              v54 = "integralDistance > 0 && integralDistance < 4";
              _os_log_impl(&dword_1D311E000, v46, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v47, 0x26u);
            }
          }

          if (v32 == 2)
          {
            v33 = @"1/2 mile";
          }

          else if (v32 == 3)
          {
            v33 = @"3/4 mile";
          }

          else
          {
            v33 = @"1/4 mile";
          }

          v42 = _MNLocalizedStringFromThisBundle(v33);
          goto LABEL_64;
      }
    }

    else
    {
      switch(v11)
      {
        case 0:
          goto LABEL_44;
        case 1:
          [v9 setMinimumFractionDigits:v22];
          [v9 setMaximumFractionDigits:v22];
          goto LABEL_49;
        case 2:
LABEL_36:
          [v9 setMinimumFractionDigits:0];
          [v9 setMaximumFractionDigits:0];
          v31 = [MEMORY[0x1E696B058] yards];
LABEL_52:
          v34 = v31;
          [v9 setUnitLength:v31];
LABEL_53:

          break;
      }
    }

LABEL_54:
    v35 = [objc_opt_class() _navigation_formatterForOptions:v9];
    v36 = objc_alloc(MEMORY[0x1E696AD28]);
    v37 = [v9 unitLength];
    v38 = [v36 initWithDoubleValue:v37 unit:v19];
    v39 = [v35 stringFromMeasurement:v38];

    goto LABEL_55;
  }

  if (v16)
  {
    v43 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v47 = 136315906;
      v48 = "+[NSString(FormatExtras) _navigation_stringForDistance:formatter:locale:shouldScale:]";
      v49 = 2080;
      v50 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
      v51 = 1024;
      v52 = 1522;
      v53 = 2080;
      v54 = "formatOptions.rounding != MNInstructionsDistanceDetailLevelWholeNumbers || !distanceUnits.hasDecimalComponent";
      _os_log_impl(&dword_1D311E000, v43, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v47, 0x26u);
    }
  }

  v17 = [v9 rounding];
  v18 = floorf(v14);
  if (v17 == 1)
  {
    v19 = v18;
  }

  else
  {
    v19 = v14;
  }

  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 != 1)
      {
        if (v11 != 2)
        {
LABEL_46:
          v34 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v47 = 136315650;
            v48 = "+[NSString(FormatExtras) _navigation_stringForDistance:formatter:locale:shouldScale:]";
            v49 = 2080;
            v50 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
            v51 = 1024;
            v52 = 1566;
            _os_log_impl(&dword_1D311E000, v34, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v47, 0x1Cu);
          }

          goto LABEL_53;
        }

        goto LABEL_36;
      }

LABEL_49:
      v31 = [MEMORY[0x1E696B058] kilometers];
      goto LABEL_52;
    }

LABEL_44:
    [v9 setMinimumFractionDigits:0];
    [v9 setMaximumFractionDigits:0];
    v31 = [MEMORY[0x1E696B058] meters];
    goto LABEL_52;
  }

  if (v11 == 3)
  {
LABEL_45:
    [v9 setMinimumFractionDigits:0];
    [v9 setMaximumFractionDigits:0];
    v31 = [MEMORY[0x1E696B058] feet];
    goto LABEL_52;
  }

  if (v11 == 4)
  {
LABEL_51:
    v31 = [MEMORY[0x1E696B058] miles];
    goto LABEL_52;
  }

  if (v11 != 5)
  {
    goto LABEL_46;
  }

  v29 = v19;
  if ((v19 - 4) <= 0xFFFFFFFC)
  {
    v45 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v47 = 136315906;
      v48 = "+[NSString(FormatExtras) _navigation_stringForDistance:formatter:locale:shouldScale:]";
      v49 = 2080;
      v50 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
      v51 = 1024;
      v52 = 1555;
      v53 = 2080;
      v54 = "integralDistance > 0 && integralDistance < 4";
      _os_log_impl(&dword_1D311E000, v45, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v47, 0x26u);
    }
  }

  if (v29 == 2)
  {
    v30 = @"half a mile [SPOKEN]";
  }

  else if (v29 == 3)
  {
    v30 = @"three quarters of a mile [SPOKEN]";
  }

  else
  {
    v30 = @"a quarter mile [SPOKEN]";
  }

  v42 = _MNStringFromSpokenLocalization(v30);
LABEL_64:
  v39 = v42;
  if (!v42)
  {
    goto LABEL_54;
  }

LABEL_55:

  v40 = *MEMORY[0x1E69E9840];

  return v39;
}

+ (id)_navigation_formatterForOptions:()FormatExtras
{
  v3 = MEMORY[0x1E696AD30];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setUnitOptions:1];
  if ([v4 abbreviateUnits])
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  [v5 setUnitStyle:v6];
  v7 = [v4 minimumFractionDigits];
  v8 = [v5 numberFormatter];
  [v8 setMinimumFractionDigits:v7];

  v9 = [v4 maximumFractionDigits];
  v10 = [v5 numberFormatter];
  [v10 setMaximumFractionDigits:v9];

  v11 = [v4 locale];

  [v5 setLocale:v11];

  return v5;
}

+ (id)_navigation_localizedStringForDistance:()FormatExtras detail:unitFormat:locale:useMetric:useYards:shouldScale:
{
  v15 = a6;
  if (!v15)
  {
    v15 = [MEMORY[0x1E695DF58] currentLocale];
  }

  v16 = objc_alloc_init(_MNDistanceFormatOptions);
  if (a7 == 2)
  {
    v17 = 1;
  }

  else if (a7 == 1)
  {
    v17 = 0;
  }

  else
  {
    if (a7)
    {
      goto LABEL_10;
    }

    v17 = [v15 _navigation_distanceUsesMetricSystem];
  }

  [(_MNDistanceFormatOptions *)v16 setMetric:v17];
LABEL_10:
  if (a8 == 2)
  {
    v18 = 1;
  }

  else if (a8 == 1)
  {
    v18 = 0;
  }

  else
  {
    if (a8)
    {
      goto LABEL_17;
    }

    v18 = [v15 _navigation_useYardsForShortDistances];
  }

  [(_MNDistanceFormatOptions *)v16 setYards:v18];
LABEL_17:
  [(_MNDistanceFormatOptions *)v16 setMinimumFractionDigits:1];
  [(_MNDistanceFormatOptions *)v16 setAbbreviateUnits:a5 == 1];
  [(_MNDistanceFormatOptions *)v16 setSpoken:a5 == 2];
  [(_MNDistanceFormatOptions *)v16 setRounding:a4];
  if (a4 <= 3)
  {
    [(_MNDistanceFormatOptions *)v16 setMaximumFractionDigits:qword_1D328D3D8[a4]];
  }

  if ([(_MNDistanceFormatOptions *)v16 spoken])
  {
    [(_MNDistanceFormatOptions *)v16 setAbbreviateUnits:0];
    [(_MNDistanceFormatOptions *)v16 setMaximumFractionDigits:[(_MNDistanceFormatOptions *)v16 maximumFractionDigits]!= 0];
    v19 = [MEMORY[0x1E696AE30] processInfo];
    v20 = [v19 _navigation_isNavd];

    v21 = MEMORY[0x1E695DF58];
    if (v20)
    {
      +[MNUserOptionsEngine sharedInstance];
    }

    else
    {
      +[MNNavigationService sharedService];
    }
    v22 = ;
    v23 = [v22 currentVoiceLanguage];
    v24 = [v21 localeWithLocaleIdentifier:v23];

    v15 = v24;
  }

  v25 = [MEMORY[0x1E696AEC0] _navigation_stringForDistance:v16 formatter:v15 locale:a9 shouldScale:a1];

  return v25;
}

+ (uint64_t)_navigation_localizedStringForDistance:()FormatExtras context:extraDetail:
{
  v8 = [MEMORY[0x1E695DF58] currentLocale];
  v9 = [v8 _navigation_distanceUsesMetricSystem];

  v10 = [MEMORY[0x1E695DF58] currentLocale];
  v11 = [v10 _navigation_useYardsForShortDistances];

  if (a5)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (a4)
  {
    if (a4 == 5)
    {
      v12 = 3;
      v13 = 1;
    }

    else
    {
      v13 = a4 != 4;
    }
  }

  else
  {
    v16 = MNInstructionsCalculateScaledDistanceUnits(v9, v11, 0, 1, a1);
    v21 = v16 != 4 && v16 != 1 || *&v17 <= 1.0 || *&v17 >= 10.0 || (v17 & 0x100000000) == 0;
    v22 = floor(*&v17);
    v23 = v21 || v22 == *&v17;
    v13 = 2;
    if (v23)
    {
      v12 = 1;
    }
  }

  v14 = MEMORY[0x1E696AEC0];

  return [v14 _navigation_localizedStringForDistance:v12 detail:v13 unitFormat:0 locale:0 useMetric:0 useYards:a1];
}

+ (id)_navigation_stringForServerFormattedString:()FormatExtras abbreviatedUnits:detail:spoken:wrappedOverrideVariables:allTokensExpanded:
{
  v10[0] = a4;
  memset(&v10[1], 0, 7);
  v11 = a5;
  v12 = a6;
  memset(v13, 0, sizeof(v13));
  v8 = [a1 _navigation_stringForServerFormattedString:a3 options:v10 wrappedOverrideVariables:a7 allTokensExpanded:a8];

  return v8;
}

+ (id)_navigation_stringForServerFormattedString:()FormatExtras options:wrappedOverrideVariables:allTokensExpanded:
{
  v128 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v91 = a5;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  v9 = [v7 formatStrings];
  v85 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v87 = v7;
  obj = [v7 formatStrings];
  v82 = [obj countByEnumeratingWithState:&v119 objects:v127 count:16];
  if (v82)
  {
    v83 = *v120;
    v92 = 1;
    v10 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v82; ++i)
      {
        if (*v120 != v83)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v119 + 1) + 8 * i);
        if ([v12 length])
        {
          v80 = i;
          v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v12];
          v115 = 0u;
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          v86 = [v87 formatTokens];
          v89 = [v86 countByEnumeratingWithState:&v115 objects:v126 count:16];
          if (!v89)
          {
            goto LABEL_62;
          }

          v88 = *v116;
          v95 = v13;
          while (1)
          {
            v14 = 0;
            do
            {
              if (*v116 != v88)
              {
                objc_enumerationMutation(v86);
              }

              v93 = v14;
              v15 = *(*(&v115 + 1) + 8 * v14);
              v101 = [v15 genericCombinations];
              v98 = v15;
              if (!v101)
              {
                v20 = *(v10 + 3776);
                v21 = [v91 objectForKeyedSubscript:@"{currentDestination}"];
                v22 = a4[1];
                *buf = *a4;
                *&buf[16] = v22;
                v23 = [v20 _replaceToken:v15 composedString:v13 options:buf overrideVariables:v21];

                if (v23)
                {
                  v24 = v92 & v23;
                  goto LABEL_53;
                }

LABEL_54:
                v60 = MNGetMNStringExtrasLog();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                {
                  v61 = [v98 token];
                  *buf = 138412802;
                  *&buf[4] = v61;
                  *&buf[12] = 2112;
                  *&buf[14] = v87;
                  *&buf[22] = 2112;
                  *&buf[24] = v91;
                  _os_log_impl(&dword_1D311E000, v60, OS_LOG_TYPE_ERROR, "Error replacing token %@ for string: %@. Overrides: %@", buf, 0x20u);
                }

                v62 = [v87 alternativeString];
                v63 = v62;
                if (!v62)
                {
                  goto LABEL_59;
                }

                v64 = [v62 condition];
                v65 = [v64 conditionType];

                if (v65 != 5)
                {
                  goto LABEL_59;
                }

                v66 = *(v10 + 3776);
                v67 = [v63 formattedString];
                v68 = a4[1];
                *buf = *a4;
                *&buf[16] = v68;
                v69 = [v66 _navigation_stringForServerFormattedString:v67 options:buf wrappedOverrideVariables:v91];

                if (!v69)
                {
LABEL_59:

                  v92 = 0;
                  goto LABEL_60;
                }

                v70 = MNGetMNStringExtrasLog();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v69;
                  _os_log_impl(&dword_1D311E000, v70, OS_LOG_TYPE_DEFAULT, "Replacing string with alternative: %@", buf, 0xCu);
                }

                if (a6)
                {
                  *a6 = 0;
                }

LABEL_73:
                goto LABEL_74;
              }

              v16 = [v15 token];
              v17 = [v91 objectForKeyedSubscript:v16];

              v90 = [v17 objectForKeyedSubscript:@"{WaypointCategory}"];
              v18 = [v90 intValue];
              if (v18 > 0xB)
              {
                v19 = 0;
              }

              else
              {
                v19 = [MEMORY[0x1E695DFD8] setWithArray:*(&off_1E842A4E0 + v18)];
              }

              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v96 = v19;
              v100 = [v96 countByEnumeratingWithState:&v111 objects:v125 count:16];
              if (!v100)
              {
                v97 = 0;
                goto LABEL_51;
              }

              v25 = 0;
              v97 = 0;
              v99 = *v112;
LABEL_20:
              v26 = 0;
LABEL_21:
              if (*v112 != v99)
              {
                objc_enumerationMutation(v96);
              }

              if ((v25 & 1) == 0)
              {
                v27 = *(*(&v111 + 1) + 8 * v26);
                v109 = 0u;
                v110 = 0u;
                v107 = 0u;
                v108 = 0u;
                v105 = [v101 substitutes];
                v28 = [v105 countByEnumeratingWithState:&v107 objects:v124 count:16];
                if (!v28)
                {
                  v25 = 0;
                  goto LABEL_47;
                }

                v29 = v28;
                v102 = v26;
                v30 = *v108;
LABEL_26:
                v31 = 0;
                while (1)
                {
                  if (*v108 != v30)
                  {
                    objc_enumerationMutation(v105);
                  }

                  v32 = *(*(&v107 + 1) + 8 * v31);
                  v33 = [v32 waypointCategory];
                  if (v33 == [v27 intValue])
                  {
                    v34 = [v32 substitute];
                    v35 = [v34 formatArguments];
                    v36 = [v35 firstObject];

                    if (!v36)
                    {
                      v47 = objc_alloc(MEMORY[0x1E696AD60]);
                      v48 = [v32 substitute];
                      v49 = [v48 formatStrings];
                      v50 = [v49 firstObject];
                      v51 = [v47 initWithString:v50];
                      v10 = 0x1E696A000;
                      goto LABEL_45;
                    }

                    v37 = [v36 stringSubstituteData];
                    v106 = [v37 stringSubstituteType];
                    if (v17)
                    {
                      v104 = v32;
                      v38 = v17;
                      v39 = v17;
                      v40 = [v39 objectForKeyedSubscript:@"{Name}_source"];
                      v41 = [v39 objectForKeyedSubscript:@"{Address}_source"];
                      v103 = v39;

                      if ([v40 intValue] == v106)
                      {

                        v17 = v38;
LABEL_44:
                        v52 = objc_alloc(MEMORY[0x1E696AD60]);
                        v53 = [v104 substitute];
                        v54 = [v53 formatStrings];
                        v55 = [v54 firstObject];
                        v51 = [v52 initWithString:v55];

                        v10 = 0x1E696A000uLL;
                        v56 = MEMORY[0x1E696AEC0];
                        v48 = [v104 substitute];
                        v49 = [v48 formatArguments];
                        v50 = [v49 firstObject];
                        v57 = a4[1];
                        *buf = *a4;
                        *&buf[16] = v57;
                        [v56 _replaceToken:v50 composedString:v51 options:buf overrideVariables:v103];
LABEL_45:

                        v58 = *(v10 + 3776);
                        v59 = [v98 token];
                        v13 = v95;
                        v97 = [v58 _replaceToken:v59 composedString:v95 replacement:v51];

                        v25 = 1;
                        goto LABEL_46;
                      }

                      v42 = v36;
                      v43 = v30;
                      v44 = v27;
                      v45 = [v41 intValue];

                      v46 = v45 == v106;
                      v27 = v44;
                      v30 = v43;
                      v36 = v42;
                      v17 = v38;
                      if (v46)
                      {
                        goto LABEL_44;
                      }
                    }

                    else
                    {
                    }
                  }

                  if (v29 == ++v31)
                  {
                    v29 = [v105 countByEnumeratingWithState:&v107 objects:v124 count:16];
                    if (v29)
                    {
                      goto LABEL_26;
                    }

                    v25 = 0;
                    v10 = 0x1E696A000;
                    v13 = v95;
LABEL_46:
                    v26 = v102;
LABEL_47:

                    if (++v26 == v100)
                    {
                      v100 = [v96 countByEnumeratingWithState:&v111 objects:v125 count:16];
                      if (!v100)
                      {
                        break;
                      }

                      goto LABEL_20;
                    }

                    goto LABEL_21;
                  }
                }
              }

LABEL_51:

              if ((v97 & 1) == 0)
              {
                goto LABEL_54;
              }

              v24 = v92 & v97;
LABEL_53:
              v92 = v24;
LABEL_60:

              v14 = v93 + 1;
            }

            while (v93 + 1 != v89);
            v89 = [v86 countByEnumeratingWithState:&v115 objects:v126 count:16];
            if (!v89)
            {
LABEL_62:

              if ([v13 length])
              {
                [v85 addObject:v13];
              }

              i = v80;
              break;
            }
          }
        }
      }

      v82 = [obj countByEnumeratingWithState:&v119 objects:v127 count:16];
    }

    while (v82);
  }

  else
  {
    LOBYTE(v92) = 1;
  }

  v69 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v73 = v85;
  if ([v85 count])
  {
    v74 = 0;
    do
    {
      v75 = [v73 objectAtIndexedSubscript:{v74, v80}];
      [v69 appendString:v75];
      if (v74 < [v73 count] - 1)
      {
        v76 = [v87 separators];
        v77 = &stru_1F4EB6B70;
        if (v74 < [v76 count])
        {
          v78 = [v87 separators];
          v77 = [v78 objectAtIndexedSubscript:v74];
        }

        [v69 appendString:v77];
      }

      ++v74;
      v73 = v85;
    }

    while (v74 < [v85 count]);
  }

  if (a6)
  {
    *a6 = v92 & 1;
  }

  if ((v92 & 1) == 0)
  {
    v79 = MNGetMNStringExtrasLog();
    obj = v79;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v69;
      _os_log_impl(&dword_1D311E000, v79, OS_LOG_TYPE_ERROR, "Error replacing all tokens. Resulting string is %@.", buf, 0xCu);
    }

    goto LABEL_73;
  }

LABEL_74:

  v71 = *MEMORY[0x1E69E9840];

  return v69;
}

+ (id)_navigation_stringForServerFormattedString:()FormatExtras options:wrappedOverrideVariables:
{
  v5 = a4[1];
  v8[0] = *a4;
  v8[1] = v5;
  v6 = [MEMORY[0x1E696AEC0] _navigation_stringForServerFormattedString:a3 options:v8 wrappedOverrideVariables:a5 allTokensExpanded:0];

  return v6;
}

+ (uint64_t)_replaceToken:()FormatExtras composedString:options:overrideVariables:
{
  v10 = a6;
  v11 = a4;
  v12 = [a1 _navigation_overridenTokenForToken:a3 overrideVariables:v10];
  v13 = a5[1];
  v19[0] = *a5;
  v19[1] = v13;
  v14 = [MEMORY[0x1E696AEC0] _navigation_replacementForFormatToken:v12 options:v19 overrideVariables:v10];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [v12 token];
  v17 = [v15 _replaceToken:v16 composedString:v11 replacement:v14];

  return v17;
}

+ (uint64_t)_replaceToken:()FormatExtras composedString:replacement:
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v17 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315906;
      v19 = "+[NSString(FormatExtras) _replaceToken:composedString:replacement:]";
      v20 = 2080;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
      v22 = 1024;
      v23 = 1141;
      v24 = 2080;
      v25 = "tokenString != nil";
      _os_log_impl(&dword_1D311E000, v17, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v18, 0x26u);
    }
  }

  v10 = [v8 rangeOfString:v7];
  v12 = 1;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v11)
  {
    v13 = v10;
    do
    {
      if (v9)
      {
        [v8 replaceCharactersInRange:v13 withString:{v11, v9}];
      }

      else
      {
        [v8 deleteCharactersInRange:{v13, v11}];
        v12 = 0;
      }

      v14 = [v8 rangeOfString:v7];
      if (v14 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v13 = v14;
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12 & 1;
}

+ (id)_navigation_replacementForFormatToken:()FormatExtras abbreviatedUnits:overrideVariables:detail:spoken:
{
  v9[0] = a4;
  memset(&v9[1], 0, 7);
  v10 = a6;
  v11 = a7;
  memset(v12, 0, sizeof(v12));
  v7 = [a1 _navigation_replacementForFormatToken:a3 options:v9 overrideVariables:?];

  return v7;
}

+ (_TempToken)_navigation_overridenTokenForToken:()FormatExtras overrideVariables:
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 token];
  v8 = [v6 valueForKey:v7];

  if (v8)
  {
    v9 = [[_TempToken alloc] initWithToken:v5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v8;
      if ([v10 count])
      {
        v11 = [v10 objectAtIndexedSubscript:0];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v13 = [v10 objectAtIndexedSubscript:0];
          v14 = v13;
          if (v13)
          {
            -[_TempToken setValue1:](v9, "setValue1:", [v13 unsignedIntegerValue]);
          }
        }
      }

      if ([v10 count] >= 2)
      {
        v15 = [v10 objectAtIndexedSubscript:1];
        objc_opt_class();
        v16 = objc_opt_isKindOfClass();

        if (v16)
        {
          v17 = [v10 objectAtIndexedSubscript:1];
          v18 = v17;
          if (v17)
          {
            -[_TempToken setValue2:](v9, "setValue2:", [v17 unsignedIntegerValue]);
          }
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v8;
        -[_TempToken setValue1:](v9, "setValue1:", [v19 unsignedIntegerValue]);
        [v19 floatValue];
        [(_TempToken *)v9 setPercentageValue:?];
        v20 = objc_alloc_init(MEMORY[0x1E69A22D0]);
        [v19 floatValue];
        v22 = v21;

        LODWORD(v23) = v22;
        [v20 setValue:v23];
        [(_TempToken *)v9 setNumberData:v20];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(_TempToken *)v9 setStringValue:v8];
        }
      }
    }
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

+ (__CFString)_navigation_replacementForFormatToken:()FormatExtras options:overrideVariables:useMetric:
{
  v9 = [a1 _navigation_overridenTokenForToken:a3 overrideVariables:a5];
  v10 = 0;
  switch([v9 type])
  {
    case 0:
      v11 = [MEMORY[0x1E696AEC0] _navigation_formattedStringForInteger:{objc_msgSend(v9, "value1")}];
      goto LABEL_48;
    case 2:
      v29 = [v9 value1];
      if (a4[16] == 1)
      {
        [MEMORY[0x1E696AEC0] _navigation_localizedStringForDistance:0 context:0 extraDetail:v29];
      }

      else
      {
        [MEMORY[0x1E696AEC0] _navigation_localizedStringForDistance:*(a4 + 1) detail:*a4 unitFormat:0 locale:a6 useMetric:0 useYards:objc_msgSend(v9 shouldScale:"shouldScaleUnits"), v29];
      }
      v11 = ;
      goto LABEL_48;
    case 3:
    case 9:
      v12 = [v9 timeStampValues];
      if ([v12 count])
      {
        v13 = *(a4 + 1);
        v50 = *a4;
        v51 = v13;
        v14 = [a1 _navigation_stringWithTimeStampValues:v12 options:&v50];
LABEL_6:
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_49;
    case 4:
      v16 = a4[16];
      v17 = MEMORY[0x1E696AEC0];
      v18 = [v9 value1];
      v19 = v17;
      v20 = 1;
      if (v16 != 1)
      {
        goto LABEL_46;
      }

      goto LABEL_12;
    case 5:
      v23 = a4[16];
      v24 = MEMORY[0x1E696AEC0];
      v18 = [v9 value1];
      v19 = v24;
      if (v23 == 1)
      {
        v20 = 0;
LABEL_12:
        v11 = [v19 _navigation_spokenStringWithSeconds:v18 abbreviated:v20];
      }

      else
      {
        v20 = 0;
LABEL_46:
        v11 = [v19 _navigation_stringWithSeconds:v18 abbreviated:v20];
      }

      goto LABEL_48;
    case 6:
      v30 = llroundf([v9 value1] * 0.016667);
      if (v30 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v30;
      }

      v11 = [MEMORY[0x1E696AEC0] _navigation_descriptionForFrequencyMinuteValue:v31];
      goto LABEL_48;
    case 7:
      v32 = llroundf([v9 value1] * 0.016667);
      v33 = llroundf([v9 value2] * 0.016667);
      if (v32 <= 1)
      {
        v34 = 1;
      }

      else
      {
        v34 = v32;
      }

      if (v33 <= 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = v33;
      }

      v11 = [MEMORY[0x1E696AEC0] _navigation_descriptionForFrequencyRangeWithMinFrequency:v34 maxFrequency:v35 estimate:0 recurring:0];
      goto LABEL_48;
    case 8:
      v38 = [v9 priceValue];
      v39 = v38;
      if (v38)
      {
        [v38 value];
        v41 = v40;
        v42 = [v39 currencyCode];
        v43 = [a1 _navigation_formattedStringForPriceValue:v42 currencyCode:v41];
LABEL_39:
        v10 = v43;
      }

      else
      {
        v10 = 0;
      }

LABEL_49:

      return v10;
    case 10:
    case 17:
    case 18:
      goto LABEL_2;
    case 11:
      v36 = [v9 artworkValue];
      v37 = [v36 shieldDataSource];
      v21 = [v37 shieldText];

      if ([v21 length])
      {
        v22 = v21;
LABEL_33:
        v10 = v22;
      }

      else
      {
        v49 = [v9 stringValue];
        if ([v49 length])
        {
          v10 = [v9 stringValue];
        }

        else
        {
          v10 = 0;
        }
      }

      goto LABEL_34;
    case 12:
      v12 = [v9 countdownValue];
      v15 = *(a4 + 1);
      v50 = *a4;
      v51 = v15;
      v14 = [a1 _navigation_stringWithCountdownValue:v12 inToken:v9 options:&v50];
      goto LABEL_6;
    case 13:
      if (_navigation_replacementForFormatToken_options_overrideVariables_useMetric___numberFormatterToken != -1)
      {
        dispatch_once(&_navigation_replacementForFormatToken_options_overrideVariables_useMetric___numberFormatterToken, &__block_literal_global_682);
      }

      v25 = _navigation_replacementForFormatToken_options_overrideVariables_useMetric___numberFormatter;
      v26 = MEMORY[0x1E696AD98];
      [v9 percentageValue];
      *&v28 = v27 * 0.01;
      v21 = [v26 numberWithFloat:v28];
      v22 = [v25 stringFromNumber:v21];
      goto LABEL_33;
    case 14:
      v21 = [v9 urlValue];
      v22 = [v21 displayTitle];
      goto LABEL_33;
    case 15:
      v46 = [v9 stringValue];

      if (v46)
      {
LABEL_2:
        v11 = [v9 stringValue];
LABEL_48:
        v10 = v11;
      }

      else
      {
        v21 = [v9 maneuverValue];
        v47 = [v21 maneuverType];
        v10 = @"NO_TURN";
        switch(v47)
        {
          case 0:
            break;
          case 1:
            v10 = @"LEFT_TURN";
            break;
          case 2:
            v10 = @"RIGHT_TURN";
            break;
          case 3:
            v10 = @"STRAIGHT_AHEAD";
            break;
          case 4:
            v10 = @"U_TURN";
            break;
          case 5:
            v10 = @"FOLLOW_ROAD";
            break;
          case 6:
            v10 = @"ENTER_ROUNDABOUT";
            break;
          case 7:
            v10 = @"EXIT_ROUNDABOUT";
            break;
          case 11:
            v10 = @"OFF_RAMP";
            break;
          case 12:
            v10 = @"ON_RAMP";
            break;
          case 16:
            v10 = @"ARRIVE_END_OF_NAVIGATION";
            break;
          case 17:
            v10 = @"START_ROUTE";
            break;
          case 18:
            v10 = @"ARRIVE_AT_DESTINATION";
            break;
          case 20:
            v10 = @"KEEP_LEFT";
            break;
          case 21:
            v10 = @"KEEP_RIGHT";
            break;
          case 22:
            v10 = @"ENTER_FERRY";
            break;
          case 23:
            v10 = @"EXIT_FERRY";
            break;
          case 24:
            v10 = @"CHANGE_FERRY";
            break;
          case 25:
            v10 = @"START_ROUTE_WITH_U_TURN";
            break;
          case 26:
            v10 = @"U_TURN_AT_ROUNDABOUT";
            break;
          case 27:
            v10 = @"LEFT_TURN_AT_END";
            break;
          case 28:
            v10 = @"RIGHT_TURN_AT_END";
            break;
          case 29:
            v10 = @"HIGHWAY_OFF_RAMP_LEFT";
            break;
          case 30:
            v10 = @"HIGHWAY_OFF_RAMP_RIGHT";
            break;
          case 33:
            v10 = @"ARRIVE_AT_DESTINATION_LEFT";
            break;
          case 34:
            v10 = @"ARRIVE_AT_DESTINATION_RIGHT";
            break;
          case 35:
            v10 = @"U_TURN_WHEN_POSSIBLE";
            break;
          case 39:
            v10 = @"ARRIVE_END_OF_DIRECTIONS";
            break;
          case 41:
            v10 = @"ROUNDABOUT_EXIT_1";
            break;
          case 42:
            v10 = @"ROUNDABOUT_EXIT_2";
            break;
          case 43:
            v10 = @"ROUNDABOUT_EXIT_3";
            break;
          case 44:
            v10 = @"ROUNDABOUT_EXIT_4";
            break;
          case 45:
            v10 = @"ROUNDABOUT_EXIT_5";
            break;
          case 46:
            v10 = @"ROUNDABOUT_EXIT_6";
            break;
          case 47:
            v10 = @"ROUNDABOUT_EXIT_7";
            break;
          case 48:
            v10 = @"ROUNDABOUT_EXIT_8";
            break;
          case 49:
            v10 = @"ROUNDABOUT_EXIT_9";
            break;
          case 50:
            v10 = @"ROUNDABOUT_EXIT_10";
            break;
          case 51:
            v10 = @"ROUNDABOUT_EXIT_11";
            break;
          case 52:
            v10 = @"ROUNDABOUT_EXIT_12";
            break;
          case 53:
            v10 = @"ROUNDABOUT_EXIT_13";
            break;
          case 54:
            v10 = @"ROUNDABOUT_EXIT_14";
            break;
          case 55:
            v10 = @"ROUNDABOUT_EXIT_15";
            break;
          case 56:
            v10 = @"ROUNDABOUT_EXIT_16";
            break;
          case 57:
            v10 = @"ROUNDABOUT_EXIT_17";
            break;
          case 58:
            v10 = @"ROUNDABOUT_EXIT_18";
            break;
          case 59:
            v10 = @"ROUNDABOUT_EXIT_19";
            break;
          case 60:
            v10 = @"SHARP_LEFT_TURN";
            break;
          case 61:
            v10 = @"SHARP_RIGHT_TURN";
            break;
          case 62:
            v10 = @"SLIGHT_LEFT_TURN";
            break;
          case 63:
            v10 = @"SLIGHT_RIGHT_TURN";
            break;
          case 64:
            v10 = @"CHANGE_HIGHWAY";
            break;
          case 65:
            v10 = @"CHANGE_HIGHWAY_LEFT";
            break;
          case 66:
            v10 = @"CHANGE_HIGHWAY_RIGHT";
            break;
          case 80:
            v10 = @"TOLL_STATION";
            break;
          case 81:
            v10 = @"ENTER_TUNNEL";
            break;
          case 82:
            v10 = @"WAYPOINT_STOP";
            break;
          case 83:
            v10 = @"WAYPOINT_STOP_LEFT";
            break;
          case 84:
            v10 = @"WAYPOINT_STOP_RIGHT";
            break;
          case 85:
            v10 = @"RESUME_ROUTE";
            break;
          case 86:
            v10 = @"RESUME_ROUTE_WITH_U_TURN";
            break;
          case 87:
            v10 = @"CUSTOM";
            break;
          case 88:
            v10 = @"TURN_AROUND";
            break;
          default:
            v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v47];
            goto LABEL_33;
        }

LABEL_34:
      }

      goto LABEL_49;
    case 16:
      v10 = [v9 numberData];

      if (!v10)
      {
        goto LABEL_49;
      }

      v39 = [v9 numberData];
      [v39 value];
      v45 = v44;
      v42 = [MEMORY[0x1E696B068] kilowatts];
      v43 = [a1 _navigation_stringForPower:v42 unit:v45];
      goto LABEL_39;
    default:
      goto LABEL_49;
  }
}

+ (id)_navigation_replacementForFormatToken:()FormatExtras options:overrideVariables:
{
  v5 = a4[1];
  v8[0] = *a4;
  v8[1] = v5;
  v6 = [a1 _navigation_replacementForFormatToken:a3 options:v8 overrideVariables:a5 useMetric:0];

  return v6;
}

+ (id)_navigation_stringForServerFormattedString:()FormatExtras abbreviatedUnits:detail:spoken:overrideVariables:allTokensExpanded:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a7;
  v13 = v12;
  if (v12)
  {
    v18 = @"{currentDestination}";
    v19[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [MEMORY[0x1E696AEC0] _navigation_stringForServerFormattedString:v11 abbreviatedUnits:a4 detail:a5 spoken:a6 wrappedOverrideVariables:v14 allTokensExpanded:0];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)_navigation_stringForServerFormattedString:()FormatExtras abbreviatedUnits:detail:spoken:overrideVariables:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a7;
  v13 = v12;
  if (v12)
  {
    v18 = @"{currentDestination}";
    v19[0] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  else
  {
    v14 = 0;
  }

  v15 = [MEMORY[0x1E696AEC0] _navigation_stringForServerFormattedString:v11 abbreviatedUnits:a4 detail:a5 spoken:a6 wrappedOverrideVariables:v14];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)_navigation_stringForServerFormattedString:()FormatExtras options:overrideVariables:allTokensExpanded:
{
  v19[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v18 = @"{currentDestination}";
    v19[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = a4[1];
  v17[0] = *a4;
  v17[1] = v13;
  v14 = [MEMORY[0x1E696AEC0] _navigation_stringForServerFormattedString:v9 options:v17 wrappedOverrideVariables:v12 allTokensExpanded:a6];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)_navigation_stringForServerFormattedString:()FormatExtras options:overrideVariables:
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    v16 = @"{currentDestination}";
    v17[0] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[1];
  v15[0] = *a4;
  v15[1] = v11;
  v12 = [MEMORY[0x1E696AEC0] _navigation_stringForServerFormattedString:v7 options:v15 wrappedOverrideVariables:v10];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_navigation_frequencyRangeLocalizedInMixedUnitsWithMinString:()FormatExtras maxString:estimate:recurring:
{
  v9 = a3;
  v10 = a4;
  v11 = @"TransitDepartureFrequency_description_mixes_range_recurring";
  if (a5)
  {
    v11 = @"TransitDepartureFrequency_description_mixes_range_estimated_recurring";
  }

  if (a6)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"TransitDepartureFrequency_description_mixes_range";
  }

  v13 = _MNLocalizedStringFromThisBundle(v12);
  v14 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v13, v9, v10];

  return v14;
}

+ (id)_navigation_frequencyRangeLocalizedInHoursWithMinHours:()FormatExtras maxHours:estimate:recurring:
{
  if (a6)
  {
    if (a5)
    {
      v8 = _MNLocalizedStringFromThisBundle(@"TransitDepartureFrequency_estimated_range_hr_format");
      v16 = a3;
      v9 = &v19;
      [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%d %d" error:&v19, a4, v16, v18, 0];
    }

    else
    {
      v8 = _MNLocalizedStringFromThisBundle(@"TransitDepartureFrequency_range_hr_format");
      v17 = a3;
      v9 = &v18;
      [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%d %d" error:&v18, a4, v17, 0, v19];
    }
    v13 = ;
    v14 = *v9;
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] _navigation_formattedStringForInteger:a3];
    v11 = [MEMORY[0x1E696AEC0] _navigation_formattedStringForInteger:a4];
    v12 = _MNLocalizedStringFromThisBundle(@"TransitDepartureFrequency_description_hour_range");
    v13 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v12, v10, v11];
  }

  return v13;
}

+ (id)_navigation_frequencyRangeLocalizedInMinutesWithMinMinutes:()FormatExtras maxMinutes:estimate:recurring:
{
  if (a6)
  {
    if (a5)
    {
      v8 = _MNLocalizedStringFromThisBundle(@"TransitDepartureFrequency_estimated_range_min_format");
      v16 = a3;
      v9 = &v19;
      [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%d %d" error:&v19, a4, v16, v18, 0];
    }

    else
    {
      v8 = _MNLocalizedStringFromThisBundle(@"TransitDepartureFrequency_range_min_format");
      v17 = a3;
      v9 = &v18;
      [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%d %d" error:&v18, a4, v17, 0, v19];
    }
    v13 = ;
    v14 = *v9;
  }

  else
  {
    v10 = [MEMORY[0x1E696AEC0] _navigation_formattedStringForInteger:a3];
    v11 = [MEMORY[0x1E696AEC0] _navigation_formattedStringForInteger:a4];
    v12 = _MNLocalizedStringFromThisBundle(@"TransitDepartureFrequency_description_minutes_range");
    v13 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v12, v10, v11];
  }

  return v13;
}

+ (id)_navigation_descriptionForFrequencyRangeWithMinFrequency:()FormatExtras maxFrequency:estimate:recurring:
{
  v9 = a3 < 90;
  v10 = a4 < 90;
  if (v9 && v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4 / 60;
  }

  if (v9 && v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 / 60;
  }

  v13 = a3 - 60 * v12;
  v14 = a4 - 60 * v11;
  if (v12 >= 1 && v11 >= 1 && (v13 | v14) == 0)
  {
    v20 = [a1 _navigation_frequencyRangeLocalizedInHoursWithMinHours:v12 maxHours:v11 estimate:a5 recurring:a6];
  }

  else
  {
    if (v12 | v11)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v17 setMinute:v13];
      [v17 setHour:v12];
      v18 = objc_alloc_init(MEMORY[0x1E695DF10]);
      [v18 setMinute:v14];
      [v18 setHour:v11];
      if ([a1 _componentsWillUseShortFormat:v17])
      {
        v19 = 1;
      }

      else
      {
        v19 = [a1 _componentsWillUseShortFormat:v18];
      }

      v22 = [a1 _frequencyStringForComponents:v18 forRange:1 forceShort:v19];
      v23 = [a1 _frequencyStringForComponents:v17 forRange:1 forceShort:v19];
      v21 = [a1 _navigation_frequencyRangeLocalizedInMixedUnitsWithMinString:v23 maxString:v22 estimate:a5 recurring:a6];

      goto LABEL_22;
    }

    v20 = [a1 _navigation_frequencyRangeLocalizedInMinutesWithMinMinutes:a3 - 60 * v12 maxMinutes:a4 - 60 * v11 estimate:a5 recurring:a6];
  }

  v21 = v20;
LABEL_22:

  return v21;
}

+ (id)_navigation_descriptionForFrequencyMinuteValue:()FormatExtras
{
  v2 = [a1 _frequencyDateComponents:?];
  v3 = [a1 _frequencyStringForComponents:v2 forRange:0 forceShort:0];

  return v3;
}

+ (id)_frequencyDateComponents:()FormatExtras
{
  if ((a3 - 61) >= 0x1D)
  {
    v3 = a3 / 60;
  }

  else
  {
    v3 = 0;
  }

  v4 = a3 - 60 * v3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v5 setMinute:v4];
  [v5 setHour:v3];

  return v5;
}

+ (id)_navigation_formattedDescriptionForLiveStatus:()FormatExtras updatedDepartureTimeString:
{
  v6 = a4;
  v7 = v6;
  if (a3 <= 2)
  {
    if ((a3 - 1) >= 2)
    {
      if (a3)
      {
        goto LABEL_18;
      }

      v8 = @"TransitDepartureLiveStatus_description_unknown";
    }

    else
    {
      v8 = @"TransitDepartureLiveStatus_description_ontime";
    }

    goto LABEL_17;
  }

  switch(a3)
  {
    case 3:
      if (v6)
      {
        v9 = @"TransitDepartureLiveStatus_description_early_format";
LABEL_14:
        v10 = _MNLocalizedStringFromThisBundle(v9);
        v4 = [MEMORY[0x1E696AEC0] stringWithFormat:v10, v7];

        goto LABEL_18;
      }

      v8 = @"TransitDepartureLiveStatus_description_early";
      break;
    case 4:
      if (v6)
      {
        v9 = @"TransitDepartureLiveStatus_description_delayed_format";
        goto LABEL_14;
      }

      v8 = @"TransitDepartureLiveStatus_description_delayed";
      break;
    case 5:
      v8 = @"TransitDepartureLiveStatus_description_canceled";
      break;
    default:
      goto LABEL_18;
  }

LABEL_17:
  v4 = _MNLocalizedStringFromThisBundle(v8);
LABEL_18:

  return v4;
}

+ (id)_navigation_formattedDescriptionForFrequency:()FormatExtras
{
  v4 = a3;
  v5 = [v4 frequencyType];
  if (v5 == 2)
  {
    v7 = [a1 _frequencyDateComponents:{objc_msgSend(v4, "displayFrequency")}];
    if ([v7 minute] || objc_msgSend(v7, "hour") != 1)
    {
      if ([v7 minute] != 1 || objc_msgSend(v7, "hour"))
      {
        v9 = [v7 hour];
        v10 = [v4 isEstimate];
        if (v9)
        {
          if (v10)
          {
            v11 = @"TransitDepartureFrequency_estimated_hours_format";
          }

          else
          {
            v11 = @"TransitDepartureFrequency_hours_format";
          }

          v12 = _MNLocalizedStringFromThisBundle(v11);
          v13 = [a1 _frequencyStringForComponents:v7 forRange:0 forceShort:0];
          v17 = 0;
          [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v12 validFormatSpecifiers:@"%d %@" error:&v17, objc_msgSend(v7, "hour"), v13];
        }

        else
        {
          if (v10)
          {
            v14 = @"TransitDepartureFrequency_estimated_minutes_format";
          }

          else
          {
            v14 = @"TransitDepartureFrequency_minutes_format";
          }

          v12 = _MNLocalizedStringFromThisBundle(v14);
          v13 = [a1 _frequencyStringForComponents:v7 forRange:0 forceShort:0];
          v16 = 0;
          [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v12 validFormatSpecifiers:@"%d %@" error:&v16, objc_msgSend(v7, "minute"), v13];
        }
        v6 = ;

        goto LABEL_22;
      }

      v8 = @"TransitDepartureFrequency_format_singleMinute";
    }

    else
    {
      v8 = @"TransitDepartureFrequency_format_singleHour";
    }

    v6 = _MNLocalizedStringFromThisBundle(v8);
LABEL_22:

    goto LABEL_23;
  }

  if (v5 == 1)
  {
    v6 = [a1 _navigation_descriptionForFrequencyRangeWithMinFrequency:objc_msgSend(v4 maxFrequency:"minFrequency") estimate:objc_msgSend(v4 recurring:{"maxFrequency"), objc_msgSend(v4, "isEstimate"), 1}];
  }

  else
  {
    v6 = 0;
  }

LABEL_23:

  return v6;
}

+ (__CFString)_frequencyStringForComponents:()FormatExtras forRange:forceShort:
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setFormattingContext:2];
  v10 = [v8 hour];
  v11 = [v8 minute];
  if (v10 >= 1)
  {
    if (v11 >= 1)
    {
      if ([v8 minute] >= 60)
      {
        v25 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = 136315906;
          v27 = "+[NSString(FormatExtras) _frequencyStringForComponents:forRange:forceShort:]";
          v28 = 2080;
          v29 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
          v30 = 1024;
          v31 = 575;
          v32 = 2080;
          v33 = "components.minute < 60";
          _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v26, 0x26u);
        }
      }

      v12 = [v9 calendar];
      v13 = [v12 locale];
      [v9 setUnitsStyle:{objc_msgSend(a1, "_navigation_abbreviatedFromatterUnitsStyleForLocale:", v13)}];

      [v9 setAllowedUnits:96];
      [v9 setMaximumUnitCount:2];
      v14 = [v8 hour];
      v15 = 60 * ([v8 minute] + 60 * v14);
      goto LABEL_22;
    }

    if ((a4 & 1) == 0 && [v8 hour] == 1)
    {
      v16 = @"TransitDepartureFrequency_component_singleHour";
      goto LABEL_12;
    }

    [v9 setAllowedUnits:32];
    [v9 setMaximumUnitCount:1];
    if (a5)
    {
      v20 = [v9 calendar];
      v21 = [v20 locale];
      [v9 setUnitsStyle:{objc_msgSend(a1, "_navigation_abbreviatedFromatterUnitsStyleForLocale:", v21)}];
    }

    else
    {
      [v9 setUnitsStyle:2];
    }

    v15 = 3600 * [v8 hour];
LABEL_22:
    v17 = [v9 stringFromTimeInterval:v15];
    goto LABEL_23;
  }

  if (v11 < 1)
  {
    v22 = &stru_1F4EB6B70;
    goto LABEL_24;
  }

  if ((a4 & 1) != 0 || [v8 minute] != 1)
  {
    [v9 setAllowedUnits:64];
    [v9 setMaximumUnitCount:1];
    if (a5)
    {
      v18 = [v9 calendar];
      v19 = [v18 locale];
      [v9 setUnitsStyle:{objc_msgSend(a1, "_navigation_abbreviatedFromatterUnitsStyleForLocale:", v19)}];
    }

    else
    {
      [v9 setUnitsStyle:2];
    }

    v15 = 60 * [v8 minute];
    goto LABEL_22;
  }

  v16 = @"TransitDepartureFrequency_component_singleMinute";
LABEL_12:
  v17 = _MNLocalizedStringFromThisBundle(v16);
LABEL_23:
  v22 = v17;
LABEL_24:

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (BOOL)_componentsWillUseShortFormat:()FormatExtras
{
  v3 = a3;
  v4 = [v3 hour] >= 1 && objc_msgSend(v3, "minute") > 0;

  return v4;
}

+ (id)_navigation_stringForExpectedTravelTime:()FormatExtras dateUnitStyle:
{
  v6 = (a2 * 0.000277777778);
  v7 = vcvtpd_s64_f64((a2 - (3600 * v6)) * 0.0166666667);
  if (v7 >= 59)
  {
    v8 = 59;
  }

  else
  {
    v8 = v7;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v9 setHour:v6];
  [v9 setMinute:v8];
  if (a4 == 1)
  {
    v10 = [v9 calendar];
    v11 = [v10 locale];
    a4 = [a1 _navigation_abbreviatedFromatterUnitsStyleForLocale:v11];
  }

  v12 = [MEMORY[0x1E696AB70] localizedStringFromDateComponents:v9 unitsStyle:a4];

  return v12;
}

+ (id)_navigation_formattedStringForHourRanges:()FormatExtras timeZone:delimeter:
{
  v74 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v55 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v67 = "+[NSString(FormatExtras) _navigation_formattedStringForHourRanges:timeZone:delimeter:]";
      v68 = 2080;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
      v70 = 1024;
      v71 = 465;
      v72 = 2080;
      v73 = "([startEndDates count] % 2) == 0";
      _os_log_impl(&dword_1D311E000, v55, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }

    if (v8)
    {
LABEL_3:
      if (v9)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if (v8)
  {
    goto LABEL_3;
  }

  v56 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v67 = "+[NSString(FormatExtras) _navigation_formattedStringForHourRanges:timeZone:delimeter:]";
    v68 = 2080;
    v69 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
    v70 = 1024;
    v71 = 466;
    v72 = 2080;
    v73 = "timeZone != nil";
    _os_log_impl(&dword_1D311E000, v56, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
  }

  if (!v9)
  {
LABEL_49:
    v57 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v67 = "+[NSString(FormatExtras) _navigation_formattedStringForHourRanges:timeZone:delimeter:]";
      v68 = 2080;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
      v70 = 1024;
      v71 = 467;
      v72 = 2080;
      v73 = "delimeter != nil";
      _os_log_impl(&dword_1D311E000, v57, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
    }
  }

LABEL_4:
  v58 = v9;
  if (!v8)
  {
    v10 = [MEMORY[0x1E695DEE8] currentCalendar];
    v8 = [v10 timeZone];
  }

  v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v11 setDateStyle:0];
  v65 = v11;
  [v11 setTimeStyle:1];
  v62 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v59 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v60 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v12 = _navigation_formattedStringForHourRanges_timeZone_delimeter__locale;
  if (!_navigation_formattedStringForHourRanges_timeZone_delimeter__locale)
  {
    goto LABEL_11;
  }

  v13 = [MEMORY[0x1E695DF58] currentLocale];
  v14 = [v12 isEqual:v13];

  if (v14 & 1) != 0 || (v15 = _navigation_formattedStringForHourRanges_timeZone_delimeter__locale) != 0 && ([MEMORY[0x1E695DF58] currentLocale], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "isEqual:", v16), v16, (v17))
  {
    v64 = 0;
    v18 = v65;
  }

  else
  {
LABEL_11:
    v19 = [MEMORY[0x1E695DF58] currentLocale];
    v20 = _navigation_formattedStringForHourRanges_timeZone_delimeter__locale;
    _navigation_formattedStringForHourRanges_timeZone_delimeter__locale = v19;

    v21 = [MEMORY[0x1E696AB78] dateFormatFromTemplate:@"j" options:0 locale:_navigation_formattedStringForHourRanges_timeZone_delimeter__locale];
    v64 = [v21 isEqualToString:@"h a"];
    if (v64)
    {
      [v62 setDateFormat:v21];
      [v59 setDateFormat:@"h"];
      v18 = v65;
      v22 = [v65 dateFormat];
      if ([v22 containsString:@"a"])
      {
        v23 = [v22 stringByReplacingOccurrencesOfString:@"a" withString:&stru_1F4EB6B70];
        v24 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v25 = [v23 stringByTrimmingCharactersInSet:v24];

        [v60 setDateFormat:v25];
        v22 = v25;
      }

      else
      {
        v26 = v65;

        v60 = v26;
      }
    }

    else
    {
      v18 = v65;
    }
  }

  [v62 setTimeZone:v8];
  [v59 setTimeZone:v8];
  [v18 setTimeZone:v8];
  v61 = v8;
  [v60 setTimeZone:v8];
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count") >> 1}];
  if ([v7 count] >= 2)
  {
    v28 = 0;
    v63 = v7;
    do
    {
      v29 = [v7 objectAtIndex:v28];
      v30 = v28 + 1;
      v31 = [v7 objectAtIndex:v30];
      if (v64)
      {
        v32 = [MEMORY[0x1E695DEE8] currentCalendar];
        v33 = [v32 copy];

        [v33 setTimeZone:v61];
        v34 = [v33 component:32 fromDate:v29];
        v35 = [v33 component:32 fromDate:v31];
        v36 = v34 <= 11 && v35 < 12;
        if (!v36 && (v34 >= 12 ? (v37 = v35 < 12) : (v37 = 1), v37))
        {
          v38 = [v29 isWholeHour];
          v39 = v62;
          if (!v38)
          {
            v39 = v18;
          }
        }

        else
        {
          v42 = [v29 isWholeHour];
          v39 = v59;
          if (!v42)
          {
            v39 = v60;
          }
        }

        v40 = v39;
        v43 = [v31 isWholeHour];
        v44 = v62;
        if (!v43)
        {
          v44 = v18;
        }

        v41 = v44;
      }

      else
      {
        v40 = v18;
        v41 = v40;
      }

      v45 = [v40 stringFromDate:v29];
      v46 = [v41 stringFromDate:v31];
      v47 = MEMORY[0x1E696AEC0];
      v48 = _MNLocalizedStringFromThisBundle(@"Operating Hours Range");
      v49 = [v47 stringWithFormat:v48, v45, v46];

      [v27 addObject:v49];
      v7 = v63;
      v50 = [v63 count];
      v51 = v30 + 2;
      v28 = v30 + 1;
      v18 = v65;
    }

    while (v51 < v50);
  }

  v52 = [v27 componentsJoinedByString:v58];

  v53 = *MEMORY[0x1E69E9840];

  return v52;
}

+ (id)_navigation_formattedStringForHourRanges:()FormatExtras timeZone:
{
  v6 = a4;
  v7 = a3;
  v8 = _MNLocalizedStringFromThisBundle(@"Operating Hours Separator");
  v9 = [a1 _navigation_formattedStringForHourRanges:v7 timeZone:v6 delimeter:v8];

  return v9;
}

+ (id)_navigation_formattedStringForOperatingHours:()FormatExtras timeZone:
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        [v14 startTime];
        v16 = v15;
        [v14 duration];
        if (v17 > 0.0)
        {
          v18 = v17;
          v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v16];
          v20 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v19 sinceDate:v18];
          [v8 addObject:v19];
          [v8 addObject:v20];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v21 = [a1 _navigation_formattedStringForHourRanges:v8 timeZone:v7];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)_navigation_formatFloatForPrintedDistance:()FormatExtras
{
  v2 = a1 < 10.0;
  v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v4 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v3 setLocale:v4];

  [v3 setNumberStyle:1];
  [v3 setRoundingMode:6];
  [v3 setMaximumFractionDigits:2 * v2];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:a1];
  v6 = [v3 stringFromNumber:v5];

  return v6;
}

+ (id)_navigation_formattedStringForFloat:()FormatExtras useIncreasedPrecision:
{
  v6 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v7 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v6 setLocale:v7];

  [v6 setNumberStyle:1];
  [v6 setRoundingMode:6];
  if (a1 >= 100.0)
  {
    [v6 setUsesSignificantDigits:1];
    [v6 setMaximumSignificantDigits:3];
    v8 = 0;
  }

  else
  {
    if (a4)
    {
      v8 = 3;
    }

    else
    {
      v8 = 1;
    }

    [v6 setUsesSignificantDigits:0];
  }

  [v6 setMaximumFractionDigits:v8];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a1];
  v10 = [v6 stringFromNumber:v9];

  return v10;
}

+ (id)_navigation_formattedStringForInteger:()FormatExtras
{
  if (_navigation_formattedStringForInteger__onceToken != -1)
  {
    dispatch_once(&_navigation_formattedStringForInteger__onceToken, &__block_literal_global_1694);
  }

  v4 = _navigation_formattedStringForInteger__numberFormatter;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

@end