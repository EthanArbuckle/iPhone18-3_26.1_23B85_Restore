@interface CalAppleConferenceFormat
+ (BOOL)_line:(id)a3 matchesRegex:(id)a4 outFoundRange:(_NSRange *)a5;
+ (id)_buildDeserializationResultFromState:(id)a3;
+ (id)_conferenceTitleRegex;
+ (id)_detailsDelimiterRegex;
+ (id)_joinMethodTitleAndFeaturesRegex;
+ (id)_startDelimiterRegex;
+ (id)calConferenceSerializationHandle;
+ (void)_parseBlockTitle:(id)a3 state:(id)a4;
+ (void)_parseConferenceTitle:(id)a3 state:(id)a4;
+ (void)_parseJoinMethodTitleAndFeatures:(id)a3 state:(id)a4;
+ (void)_parseURL:(id)a3 state:(id)a4;
- (id)deserializeConferences:(id)a3;
- (id)serializeConference:(id)a3 serializationBlockTitle:(id)a4;
@end

@implementation CalAppleConferenceFormat

+ (id)calConferenceSerializationHandle
{
  if (calConferenceSerializationHandle_onceToken != -1)
  {
    +[CalAppleConferenceFormat calConferenceSerializationHandle];
  }

  v3 = calConferenceSerializationHandle_logHandle;

  return v3;
}

uint64_t __60__CalAppleConferenceFormat_calConferenceSerializationHandle__block_invoke()
{
  calConferenceSerializationHandle_logHandle = os_log_create("com.apple.calendar.calendarFoundation", "appleConferenceSerialization");

  return MEMORY[0x1EEE66BB8]();
}

- (id)serializeConference:(id)a3 serializationBlockTitle:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 joinMethods];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v48 = v6;
    v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"----( ", v6, @")----"];
    [v9 addObject:?];
    v10 = [v5 title];
    v11 = [v10 length];

    if (v11)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = [v5 title];
      v14 = [v12 stringWithFormat:@"%@%@%@", @"[", v13, @"]"];
      [v9 addObject:v14];

      [v9 addObject:&stru_1F379FFA8];
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v15 = [v5 joinMethods];
    v16 = [v15 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v50;
      do
      {
        v19 = 0;
        do
        {
          if (*v50 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v49 + 1) + 8 * v19);
          v21 = [v20 title];
          v22 = [v21 length];

          v23 = [v20 isBroadcast];
          if (v22)
          {
            v24 = v23 == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
            v26 = MEMORY[0x1E696AEC0];
            v27 = [v20 title];
            [v26 stringWithFormat:@"%@%@%@ %@%@%@", @"[", v27, @"]", @"(", @"Broadcast", @")"];
            goto LABEL_16;
          }

          if (v22)
          {
            v25 = MEMORY[0x1E696AEC0];
            v27 = [v20 title];
            [v25 stringWithFormat:@"%@%@%@", @"[", v27, @"]", v44, v45, v46];
            v28 = LABEL_16:;
            [v9 addObject:v28];

LABEL_17:
            goto LABEL_18;
          }

          if (v23)
          {
            v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"(", @"Broadcast", @")"];
            [v9 addObject:v27];
            goto LABEL_17;
          }

LABEL_18:
          v29 = [v20 URL];
          v30 = [v29 absoluteString];
          [v9 addObject:v30];

          v31 = [v5 joinMethods];
          v32 = [v31 lastObject];
          v33 = [v20 isEqual:v32];

          if ((v33 & 1) == 0)
          {
            [v9 addObject:&stru_1F379FFA8];
          }

          ++v19;
        }

        while (v17 != v19);
        v34 = [v15 countByEnumeratingWithState:&v49 objects:v54 count:16];
        v17 = v34;
      }

      while (v34);
    }

    v35 = [v5 conferenceDetails];
    v36 = [v35 length];

    if (v36)
    {
      [v9 addObject:&stru_1F379FFA8];
      v37 = [objc_opt_class() calBundle];
      v38 = [v37 localizedStringForKey:@"Details" value:&stru_1F379FFA8 table:0];

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"---( ", v38, @")---"];
      [v9 addObject:v39];
      [v9 addObject:&stru_1F379FFA8];
      v40 = [v5 conferenceDetails];
      [v9 addObject:v40];
    }

    [v9 addObject:@"---===---"];
    v41 = [v9 componentsJoinedByString:@"\n"];

    v6 = v48;
  }

  else
  {
    v9 = [objc_opt_class() calConferenceSerializationHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B990D000, v9, OS_LOG_TYPE_DEFAULT, "Conference has no joinMethods but at least 1 is required for serializing", buf, 2u);
    }

    v41 = 0;
  }

  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)deserializeConferences:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 length])
  {
    v6 = objc_alloc_init(StateData);
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x2020000000;
    v20[3] = 0;
    v7 = [v4 length];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__CalAppleConferenceFormat_deserializeConferences___block_invoke;
    v14[3] = &unk_1E7EC6928;
    v8 = v6;
    v15 = v8;
    v16 = self;
    v19 = v20;
    v17 = v4;
    v9 = v5;
    v18 = v9;
    [v17 enumerateSubstringsInRange:0 options:v7 usingBlock:{0, v14}];
    if ([(StateData *)v8 state]== 8)
    {
      v10 = [objc_opt_class() _buildDeserializationResultFromState:v8];
      [v9 addObject:v10];
    }

    v11 = v18;
    v12 = v9;

    _Block_object_dispose(v20, 8);
  }

  return v5;
}

void __51__CalAppleConferenceFormat_deserializeConferences___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = [*(a1 + 32) state];
  if (v11 > 3)
  {
    if (v11 > 5)
    {
      if (v11 != 6)
      {
        if (v11 != 7)
        {
          if (v11 == 8)
          {
            v12 = *(a1 + 56);
            v13 = *(a1 + 40);
            v14 = [objc_opt_class() _buildDeserializationResultFromState:*(a1 + 32)];
            [v12 addObject:v14];
          }

          goto LABEL_56;
        }

        v40 = [v10 isEqualToString:@"---===---"];
        v41 = [*(a1 + 32) conferenceDetails];
        v38 = v41;
        if (v40)
        {
          v42 = [(CalVirtualConferenceJoinMethod *)v41 count];

          if (v42)
          {
            [*(a1 + 32) setEndRange:{a5, a6}];
            v28 = *(a1 + 32);
            v29 = 8;
            goto LABEL_32;
          }

          v57 = *(a1 + 40);
          v45 = [objc_opt_class() calConferenceSerializationHandle];
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v46 = "No conferenceDetails lines were found when end delimiter was hit, despite conferenceDetails delimiter being present";
            goto LABEL_54;
          }

LABEL_55:

          [*(a1 + 32) resetToNewSection];
          goto LABEL_56;
        }

        [(CalVirtualConferenceJoinMethod *)v41 addObject:v10];
LABEL_43:

        goto LABEL_56;
      }

      if ([v10 isEqualToString:&stru_1F379FFA8])
      {
        v28 = *(a1 + 32);
        v29 = 7;
        goto LABEL_32;
      }

      v47 = *(a1 + 40);
      v45 = [objc_opt_class() calConferenceSerializationHandle];
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      *buf = 0;
      v46 = "ConferenceDetails delimiter was not followed by an empty string";
LABEL_54:
      _os_log_impl(&dword_1B990D000, v45, OS_LOG_TYPE_DEFAULT, v46, buf, 2u);
      goto LABEL_55;
    }

    if (v11 != 4)
    {
      [*(a1 + 32) setJoinMethodTitle:0];
      [*(a1 + 32) setJoinMethodIsBroadcast:0];
      v24 = *(a1 + 40);
      v25 = objc_opt_class();
      v26 = *(a1 + 40);
      v27 = [objc_opt_class() _detailsDelimiterRegex];
      LODWORD(v25) = [v25 _line:v10 matchesRegex:v27 outFoundRange:0];

      if (v25)
      {
        v28 = *(a1 + 32);
        v29 = 6;
        goto LABEL_32;
      }

      if (([v10 hasPrefix:@"["] & 1) != 0 || objc_msgSend(v10, "hasPrefix:", @"("))
      {
        v43 = *(a1 + 40);
        [objc_opt_class() _parseJoinMethodTitleAndFeatures:v10 state:*(a1 + 32)];
        goto LABEL_56;
      }

      goto LABEL_17;
    }

    if ([v10 isEqualToString:@"---===---"])
    {
      v35 = [CalVirtualConferenceJoinMethod alloc];
      v36 = [*(a1 + 32) joinMethodTitle];
      v37 = [*(a1 + 32) joinMethodURL];
      v38 = -[CalVirtualConferenceJoinMethod initWithTitle:URL:isBroadcast:](v35, "initWithTitle:URL:isBroadcast:", v36, v37, [*(a1 + 32) joinMethodIsBroadcast]);

      v39 = [*(a1 + 32) joinMethods];
      [v39 addObject:v38];

      [*(a1 + 32) setEndRange:{a5, a6}];
      [*(a1 + 32) setState:8];
      goto LABEL_43;
    }

    if (![v10 isEqualToString:&stru_1F379FFA8])
    {
      v55 = *(a1 + 40);
      v45 = [objc_opt_class() calConferenceSerializationHandle];
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      *buf = 0;
      v46 = "URL was not followed by the end delimiter or an empty string";
      goto LABEL_54;
    }

    v48 = [CalVirtualConferenceJoinMethod alloc];
    v49 = [*(a1 + 32) joinMethodTitle];
    v50 = [*(a1 + 32) joinMethodURL];
    v20 = -[CalVirtualConferenceJoinMethod initWithTitle:URL:isBroadcast:](v48, "initWithTitle:URL:isBroadcast:", v49, v50, [*(a1 + 32) joinMethodIsBroadcast]);

    v51 = [*(a1 + 32) joinMethods];
    [v51 addObject:v20];

    [*(a1 + 32) setState:5];
LABEL_51:

    goto LABEL_56;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      if (![v10 isEqualToString:&stru_1F379FFA8])
      {
        v44 = *(a1 + 40);
        v45 = [objc_opt_class() calConferenceSerializationHandle];
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        *buf = 0;
        v46 = "Conference title was not followed by an empty line";
        goto LABEL_54;
      }

      v28 = *(a1 + 32);
      v29 = 5;
LABEL_32:
      [v28 setState:v29];
      goto LABEL_56;
    }

LABEL_17:
    v23 = *(a1 + 40);
    [objc_opt_class() _parseURL:v10 state:*(a1 + 32)];
    goto LABEL_56;
  }

  if (v11)
  {
    if (v11 != 1)
    {
      goto LABEL_56;
    }

    [*(a1 + 32) setConferenceTitle:0];
    v15 = [v10 hasPrefix:@"["];
    v16 = objc_msgSend(v10, "hasPrefix:", @"(");
    if ((v15 & 1) == 0 && !v16)
    {
      goto LABEL_17;
    }

    v17 = *(*(*(a1 + 64) + 8) + 24) + 1;
    v18 = [MEMORY[0x1E695DF70] array];
    v19 = *(a1 + 48);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __51__CalAppleConferenceFormat_deserializeConferences___block_invoke_2;
    v58[3] = &unk_1E7EC6900;
    v20 = v18;
    v59 = v20;
    [v19 enumerateLinesUsingBlock:v58];
    if (v17 <= [(CalVirtualConferenceJoinMethod *)v20 count]- 1)
    {
      if (v15 && (-[CalVirtualConferenceJoinMethod objectAtIndexedSubscript:](v20, "objectAtIndexedSubscript:", v17), v52 = objc_claimAutoreleasedReturnValue(), v53 = [v52 isEqualToString:&stru_1F379FFA8], v52, v53))
      {
        v54 = *(a1 + 40);
        [objc_opt_class() _parseConferenceTitle:v10 state:*(a1 + 32)];
      }

      else
      {
        v56 = *(a1 + 40);
        [objc_opt_class() _parseJoinMethodTitleAndFeatures:v10 state:*(a1 + 32)];
      }
    }

    else
    {
      v21 = *(a1 + 40);
      v22 = [objc_opt_class() calConferenceSerializationHandle];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B990D000, v22, OS_LOG_TYPE_DEFAULT, "Input does not have enough lines to be a valid section", buf, 2u);
      }

      [*(a1 + 32) resetToNewSection];
    }

    goto LABEL_51;
  }

  *buf = 0;
  v61 = 0;
  v30 = *(a1 + 40);
  v31 = objc_opt_class();
  v32 = *(a1 + 40);
  v33 = [objc_opt_class() _startDelimiterRegex];
  LODWORD(v31) = [v31 _line:v10 matchesRegex:v33 outFoundRange:buf];

  if (v31)
  {
    [*(a1 + 32) setStartRange:{*buf + a3, v61}];
    [*(a1 + 32) setState:1];
    v34 = *(a1 + 40);
    [objc_opt_class() _parseBlockTitle:v10 state:*(a1 + 32)];
  }

LABEL_56:
  ++*(*(*(a1 + 64) + 8) + 24);
}

+ (void)_parseURL:(id)a3 state:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E695DFF8] URLWithString:a3 encodingInvalidCharacters:0];
  [v6 setJoinMethodURL:v7];

  v8 = [v6 joinMethodURL];

  if (v8)
  {
    [v6 setState:4];
  }

  else
  {
    v9 = [a1 calConferenceSerializationHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B990D000, v9, OS_LOG_TYPE_DEFAULT, "Url was invalid when parsed from string", v10, 2u);
    }

    [v6 resetToNewSection];
  }
}

+ (void)_parseBlockTitle:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _startDelimiterRegex];
  v9 = [v8 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];

  if ([v9 count] == 1 && (objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "numberOfRanges"), v10, v11 == 2))
  {
    v12 = [v9 firstObject];
    v13 = [v12 rangeWithName:@"blockTitle"];
    v15 = [v6 substringWithRange:{v13, v14}];
    [v7 setBlockTitle:v15];
  }

  else
  {
    v16 = [a1 calConferenceSerializationHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CalAppleConferenceFormat _parseBlockTitle:v16 state:?];
    }

    [v7 setBlockTitle:&stru_1F379FFA8];
  }
}

+ (void)_parseConferenceTitle:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _conferenceTitleRegex];
  v9 = [v8 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];

  if ([v9 count] == 1 && (objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "numberOfRanges"), v10, v11 == 2))
  {
    v12 = [v9 firstObject];
    v13 = [v12 rangeWithName:@"title"];
    v15 = [v6 substringWithRange:{v13, v14}];
    [v7 setConferenceTitle:v15];

    [v7 setState:2];
  }

  else
  {
    v16 = [a1 calConferenceSerializationHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1B990D000, v16, OS_LOG_TYPE_DEFAULT, "Conference title didn't match title regex", v17, 2u);
    }

    [v7 resetToNewSection];
  }
}

+ (void)_parseJoinMethodTitleAndFeatures:(id)a3 state:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [a1 _joinMethodTitleAndFeaturesRegex];
  v9 = [v8 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];

  if ([v9 count] == 1 && (objc_msgSend(v9, "firstObject"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "numberOfRanges"), v10, v11 > 1))
  {
    v13 = [v9 firstObject];
    v14 = [v13 rangeWithName:@"title"];
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [v6 substringWithRange:{v14, v15}];
      [v7 setJoinMethodTitle:v16];
    }

    v17 = [v13 rangeWithName:@"features"];
    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [v6 substringWithRange:{v17, v18}];
      [v19 componentsSeparatedByString:{@", "}];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = v36 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v21)
      {
        v22 = v21;
        v31 = v19;
        v32 = v7;
        v23 = *v34;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v33 + 1) + 8 * i);
            v26 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
            v27 = [v25 stringByTrimmingCharactersInSet:v26];

            v28 = [v27 caseInsensitiveCompare:@"Broadcast"];
            if (!v28)
            {
              v29 = 1;
              goto LABEL_19;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }

        v29 = 0;
LABEL_19:
        v7 = v32;
        v19 = v31;
      }

      else
      {
        v29 = 0;
      }

      [v7 setJoinMethodIsBroadcast:v29];
    }

    [v7 setState:3];
  }

  else
  {
    v12 = [a1 calConferenceSerializationHandle];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B990D000, v12, OS_LOG_TYPE_DEFAULT, "Join method title/features didn't match regex", buf, 2u);
    }

    [v7 resetToNewSection];
  }

  v30 = *MEMORY[0x1E69E9840];
}

+ (id)_buildDeserializationResultFromState:(id)a3
{
  v3 = a3;
  v4 = [v3 conferenceDetails];
  v5 = [v4 componentsJoinedByString:@"\n"];

  v6 = [v3 conferenceDetails];
  [v6 removeAllObjects];

  if ([v5 isEqualToString:&stru_1F379FFA8])
  {

    v5 = 0;
  }

  v7 = [CalVirtualConference alloc];
  v8 = [v3 conferenceTitle];
  v9 = MEMORY[0x1E695DEC8];
  v10 = [v3 joinMethods];
  v11 = [v9 arrayWithArray:v10];
  v12 = [(CalVirtualConference *)v7 initWithTitle:v8 joinMethods:v11 conferenceDetails:v5 source:0 isWritable:1];

  v13 = [v3 joinMethods];
  [v13 removeAllObjects];

  v14 = [v3 startRange];
  v16 = v15;
  v25.location = [v3 endRange];
  v25.length = v17;
  v24.location = v14;
  v24.length = v16;
  v18 = NSUnionRange(v24, v25);
  v19 = [CalConferenceDeserializationResult alloc];
  v20 = [v3 blockTitle];
  v21 = [(CalConferenceDeserializationResult *)v19 initWithConference:v12 range:v18.location blockTitle:v18.length, v20];

  [v3 setState:0];

  return v21;
}

+ (BOOL)_line:(id)a3 matchesRegex:(id)a4 outFoundRange:(_NSRange *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 rangeOfFirstMatchInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
  v11 = v10;

  if (a5)
  {
    a5->location = v9;
    a5->length = v11;
  }

  return v9 != 0x7FFFFFFFFFFFFFFFLL || v11 != 0;
}

+ (id)_joinMethodTitleAndFeaturesRegex
{
  if (_joinMethodTitleAndFeaturesRegex_onceToken != -1)
  {
    +[CalAppleConferenceFormat _joinMethodTitleAndFeaturesRegex];
  }

  v3 = _joinMethodTitleAndFeaturesRegex_regex;

  return v3;
}

uint64_t __60__CalAppleConferenceFormat__joinMethodTitleAndFeaturesRegex__block_invoke()
{
  _joinMethodTitleAndFeaturesRegex_regex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^(?:\\[(?<title>.*)\\])? ?(?:\\((?<features>.+)\\))?$" options:16 error:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_conferenceTitleRegex
{
  if (_conferenceTitleRegex_onceToken != -1)
  {
    +[CalAppleConferenceFormat _conferenceTitleRegex];
  }

  v3 = _conferenceTitleRegex_regex;

  return v3;
}

uint64_t __49__CalAppleConferenceFormat__conferenceTitleRegex__block_invoke()
{
  _conferenceTitleRegex_regex = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^\\[(?<title>.*)\\].*$" options:16 error:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_startDelimiterRegex
{
  if (_startDelimiterRegex_onceToken != -1)
  {
    +[CalAppleConferenceFormat _startDelimiterRegex];
  }

  v3 = _startDelimiterRegex_regex;

  return v3;
}

void __48__CalAppleConferenceFormat__startDelimiterRegex__block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = objc_msgSend(MEMORY[0x1E696AE70], "escapedPatternForString:", @"----( ");
  v2 = [MEMORY[0x1E696AE70] escapedPatternForString:@"----"]);
  v5 = [v0 stringWithFormat:@"%@(?<blockTitle>.*)%@$", v1, v2];

  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v5 options:16 error:0];
  v4 = _startDelimiterRegex_regex;
  _startDelimiterRegex_regex = v3;
}

+ (id)_detailsDelimiterRegex
{
  if (_detailsDelimiterRegex_onceToken != -1)
  {
    +[CalAppleConferenceFormat _detailsDelimiterRegex];
  }

  v3 = _detailsDelimiterRegex_regex;

  return v3;
}

void __50__CalAppleConferenceFormat__detailsDelimiterRegex__block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = objc_msgSend(MEMORY[0x1E696AE70], "escapedPatternForString:", @"---( ");
  v2 = [MEMORY[0x1E696AE70] escapedPatternForString:@"---"]);
  v5 = [v0 stringWithFormat:@"^%@.*%@$", v1, v2];

  v3 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v5 options:16 error:0];
  v4 = _detailsDelimiterRegex_regex;
  _detailsDelimiterRegex_regex = v3;
}

@end