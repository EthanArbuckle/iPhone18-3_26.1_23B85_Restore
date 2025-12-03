@interface CKStructuredExtractionUtils
+ (BOOL)_attemptMergeAddressResults:(id)results prevResult:(id)result prevResultMatch:(id)match;
+ (BOOL)_processDateMatch:(id)match matchString:(id)string contextResult:(id)result withConfig:(id)config extractionType:(unsigned __int8)type;
+ (id)_descriptionForDateComponents:(id)components hadDate:(BOOL)date hasTime:(BOOL)time;
+ (id)ddResultsForUIElements:(id)elements usingDataDetector:(id)detector withConfig:(id)config;
+ (id)debugStringForStructuredResult:(id)result;
+ (id)liveTextResultsFromUIElements:(id)elements;
+ (id)normalizeString:(id)string;
+ (id)personResultsFromUIElements:(id)elements;
+ (unsigned)_guessStructuredExtractionType:(id)type;
@end

@implementation CKStructuredExtractionUtils

+ (id)ddResultsForUIElements:(id)elements usingDataDetector:(id)detector withConfig:(id)config
{
  elementsCopy = elements;
  detectorCopy = detector;
  configCopy = config;
  v47 = [self _guessStructuredExtractionType:elementsCopy];
  v41 = objc_alloc_init(NSMutableArray);
  v43 = objc_alloc_init(NSMutableSet);
  if ([elementsCopy count])
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v38 = elementsCopy;
    v42 = configCopy;
    selfCopy = self;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v44 = v12;
      v13 = [elementsCopy objectAtIndexedSubscript:v12];
      text = [v13 text];
      v15 = [CKStructuredExtractionUtils normalizeString:text];

      v48 = v15;
      v16 = [detectorCopy matchesInString:v15 options:0 range:{0, objc_msgSend(v15, "length")}];
      if (![v16 count])
      {

        v11 = 0;
        v10 = 0;
      }

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v16;
      v50 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (!v50)
      {
        v17 = v44;
        goto LABEL_38;
      }

      v49 = *v56;
      v17 = v44;
      do
      {
        for (i = 0; i != v50; i = i + 1)
        {
          if (*v56 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v55 + 1) + 8 * i);
          if ([v19 resultType] != 8 || v17 <= objc_msgSend(configCopy, "maxUIContentCount"))
          {
            range = [v19 range];
            v22 = [v48 substringWithRange:{range, v21}];
            v23 = [self _resultForMatch:v19 matchString:v22 withConfig:configCopy extractionType:v47];
            v24 = v23;
            if (!v23)
            {
              goto LABEL_33;
            }

            [v23 setSourceUIElement:v13];
            [v13 frameInWindow];
            [v24 setFrameInWindow:?];
            [v13 absoluteOriginOnScreen];
            [v24 setAbsoluteOriginOnScreen:?];
            [v24 setOnScreen:{objc_msgSend(v13, "isOnScreen")}];
            sceneIdentifier = [v13 sceneIdentifier];
            v26 = [sceneIdentifier copy];
            [v24 setSceneIdentifier:v26];

            v27 = [self debugStringForStructuredResult:v24];
            [v24 setDebug:v27];

            if (v10 && v11 && [v19 resultType] == 16 && objc_msgSend(v11, "resultType") == 16 && objc_msgSend(selfCopy, "_attemptMergeAddressResults:prevResult:prevResultMatch:", v24, v10, v11))
            {
              v28 = v19;

              title = [v10 title];
              [v43 addObject:title];

              category = [v10 category];
              if (category)
              {
                [v43 addObject:category];
              }

              configCopy = v42;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_1002A701C(&v53, v54);
              }

LABEL_32:
              v17 = v44;
              self = selfCopy;

              v11 = v19;
LABEL_33:

              continue;
            }

            v31 = v24;

            v32 = v19;
            category = [v31 category];
            title2 = [v31 title];
            if ([v43 containsObject:title2])
            {

LABEL_26:
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                sub_1002A6FD8(&buf, v52);
              }
            }

            else
            {
              if (category)
              {
                v34 = [v43 containsObject:category];

                if (v34)
                {
                  goto LABEL_26;
                }
              }

              else
              {
              }

              [v41 addObject:v31];
              title3 = [v31 title];
              [v43 addObject:title3];

              if (category)
              {
                [v43 addObject:category];
              }
            }

            v10 = v31;
            configCopy = v42;
            goto LABEL_32;
          }
        }

        v50 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v50);
LABEL_38:

      objc_autoreleasePoolPop(context);
      v12 = v17 + 1;
      elementsCopy = v38;
      if (v12 >= [v38 count])
      {
        goto LABEL_41;
      }
    }
  }

  v11 = 0;
  v10 = 0;
LABEL_41:
  v36 = v41;

  return v41;
}

+ (BOOL)_processDateMatch:(id)match matchString:(id)string contextResult:(id)result withConfig:(id)config extractionType:(unsigned __int8)type
{
  typeCopy = type;
  matchCopy = match;
  stringCopy = string;
  resultCopy = result;
  configCopy = config;
  date = [matchCopy date];
  if (date && [matchCopy underlyingResult] && (+[NSCharacterSet decimalDigitCharacterSet](NSCharacterSet, "decimalDigitCharacterSet"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(stringCopy, "rangeOfCharacterFromSet:", v17), v17, v18 != 0x7FFFFFFFFFFFFFFFLL))
  {
    [matchCopy underlyingResult];
    v21 = DDResultGetType();
    [v21 rangeOfString:@"Date"];
    v23 = v22;
    [v21 rangeOfString:@"Time"];
    timeIsSignificant = v24 != 0;
    [v21 rangeOfString:@"Duration"];
    if (v26)
    {
      timeIsSignificant = [matchCopy timeIsSignificant];
    }

    v27 = v23;
    v19 = (v23 != 0) | timeIsSignificant;
    if (v19)
    {
      v28 = 224;
      if (!timeIsSignificant)
      {
        v28 = 0;
      }

      v49 = v27;
      v53 = typeCopy;
      if (v27)
      {
        v28 |= 0x1CuLL;
      }

      v50 = v28;
      +[NSCalendar currentCalendar];
      v51 = timeIsSignificant;
      v30 = v29 = self;
      timeZone = [matchCopy timeZone];
      [v30 setTimeZone:timeZone];

      v55 = v30;
      v56 = [v30 components:v50 fromDate:date];
      v32 = [v29 _descriptionForDateComponents:? hadDate:? hasTime:?];
      v33 = v21;
      v34 = v32;
      v52 = v33;
      v54 = [NSMutableString stringWithFormat:@"%@: %@", v33, v32];

      [matchCopy duration];
      v35 = 0;
      if (v36 > 0.0)
      {
        [matchCopy duration];
        v37 = [NSDate dateWithTimeInterval:date sinceDate:?];
        v38 = [v30 components:v50 fromDate:v37];

        v35 = v38;
        v39 = [v29 _descriptionForDateComponents:v38 hadDate:v49 != 0 hasTime:v51];
        [v54 appendFormat:@" to %@", v39];
      }

      timeZone2 = [matchCopy timeZone];

      v41 = v35;
      if (timeZone2)
      {
        timeZone3 = [matchCopy timeZone];
        [v56 setTimeZone:timeZone3];

        timeZone4 = [matchCopy timeZone];
        [v35 setTimeZone:timeZone4];

        timeZone5 = [matchCopy timeZone];
        v45 = [NSString stringWithFormat:@", %@", timeZone5];
        [resultCopy setCategory:v45];

        v35 = v41;
      }

      [resultCopy setExtractedStartDateComponents:v56];
      [resultCopy setExtractedEndDateComponents:v35];
      [resultCopy setCategory:v54];
      v21 = v52;
      v46 = [NSSet setWithObjects:CKContextTagTypeDateTime, v52, 0];
      [resultCopy setTags:v46];

      if (v53 == 1 || ([v52 rangeOfString:@"Duration"], v47))
      {
        structuredExtractionMinPrefix = [configCopy structuredExtractionMinPrefix];
      }

      else
      {
        structuredExtractionMinPrefix = [configCopy structuredExtractionDemotedResultMinPrefix];
      }

      [resultCopy setMinPrefix:structuredExtractionMinPrefix];
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

+ (id)_descriptionForDateComponents:(id)components hadDate:(BOOL)date hasTime:(BOOL)time
{
  timeCopy = time;
  dateCopy = date;
  componentsCopy = components;
  v8 = objc_alloc_init(NSMutableString);
  if (dateCopy)
  {
    [v8 appendFormat:@"%ld-%ld-%ld ", objc_msgSend(componentsCopy, "year"), objc_msgSend(componentsCopy, "month"), objc_msgSend(componentsCopy, "day")];
  }

  if (timeCopy)
  {
    [v8 appendFormat:@"%ld:%02ld:%02ld", objc_msgSend(componentsCopy, "hour"), objc_msgSend(componentsCopy, "minute"), objc_msgSend(componentsCopy, "second")];
  }

  return v8;
}

+ (BOOL)_attemptMergeAddressResults:(id)results prevResult:(id)result prevResultMatch:(id)match
{
  resultsCopy = results;
  resultCopy = result;
  extractedAddressComponents = [resultsCopy extractedAddressComponents];
  extractedAddressComponents2 = [resultCopy extractedAddressComponents];
  v9 = [extractedAddressComponents2 mutableCopy];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v48 = resultCopy;
  v49 = resultsCopy;
  if (qword_100557200 != -1)
  {
    sub_1002A7060();
  }

  v10 = qword_1005571F8;
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v52;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v51 + 1) + 8 * i);
        v17 = [v9 objectForKeyedSubscript:v16];
        v18 = [extractedAddressComponents objectForKeyedSubscript:v16];
        v19 = v18;
        if (v17 && (v18 != 0) | v13 & 1)
        {

          v46 = 0;
          v22 = v48;
          v24 = v49;
          goto LABEL_23;
        }

        v20 = v18 != 0;
        if (v17)
        {
          v21 = 1;
        }

        else
        {
          v21 = v18 == 0;
        }

        if (!v21)
        {
          [v9 setObject:v18 forKeyedSubscript:v16];
        }

        v13 |= v20;
      }

      v12 = [v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v22 = v48;
  title = [v48 title];
  v24 = v49;
  title2 = [v49 title];
  v26 = [title stringByAppendingFormat:@", %@", title2];
  [v48 setTitle:v26];

  [v48 setExtractedAddressComponents:v9];
  v27 = [NSString stringWithFormat:@"Address: %@", v9];
  [v48 setCategory:v27];

  [v48 frameInWindow];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [v49 frameInWindow];
  v58.origin.x = v36;
  v58.origin.y = v37;
  v58.size.width = v38;
  v58.size.height = v39;
  v56.origin.x = v29;
  v56.origin.y = v31;
  v56.size.width = v33;
  v56.size.height = v35;
  v57 = CGRectUnion(v56, v58);
  [v48 setFrameInWindow:{v57.origin.x, v57.origin.y, v57.size.width, v57.size.height}];
  [v48 absoluteOriginOnScreen];
  v41 = v40;
  [v49 absoluteOriginOnScreen];
  if (v41 >= v42)
  {
    v41 = v42;
  }

  [v48 absoluteOriginOnScreen];
  v44 = v43;
  [v49 absoluteOriginOnScreen];
  if (v44 < v45)
  {
    v45 = v44;
  }

  [v48 setAbsoluteOriginOnScreen:{v41, v45}];
  v46 = 1;
LABEL_23:

  return v46;
}

+ (unsigned)_guessStructuredExtractionType:(id)type
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = type;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v23;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        text = [v8 text];
        v10 = [text rangeOfString:@"event" options:129];

        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v5 = 1;
          goto LABEL_22;
        }

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        superviewClassNames = [v8 superviewClassNames];
        v12 = [superviewClassNames countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          while (2)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(superviewClassNames);
              }

              if ([*(*(&v18 + 1) + 8 * j) rangeOfString:@"event" options:129] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v5 = 1;
                goto LABEL_17;
              }
            }

            v13 = [superviewClassNames countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_22:

  return v5 & 1;
}

+ (id)liveTextResultsFromUIElements:(id)elements
{
  elementsCopy = elements;
  v4 = objc_alloc_init(NSMutableArray);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = elementsCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v9 = CKContextTagTypeLiveText;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if ([v11 isOnScreen])
        {
          className = [v11 className];
          v13 = [className containsString:@"VKCImageTextSelectionView"];

          if (v13)
          {
            v14 = [LuceneContextResult alloc];
            text = [v11 text];
            v16 = [(LuceneContextResult *)v14 initWithText:text];

            [v11 frameInWindow];
            [(LuceneContextResult *)v16 setFrameInWindow:?];
            [v11 absoluteOriginOnScreen];
            [(LuceneContextResult *)v16 setAbsoluteOriginOnScreen:?];
            -[LuceneContextResult setOnScreen:](v16, "setOnScreen:", [v11 isOnScreen]);
            v17 = [NSSet setWithObject:v9];
            [(LuceneContextResult *)v16 setTags:v17];

            [(LuceneContextResult *)v16 setMinPrefix:1];
            [(LuceneContextResult *)v16 setSourceUIElement:v11];
            v18 = [self debugStringForStructuredResult:v16];
            [(LuceneContextResult *)v16 setDebug:v18];
            [v4 addObject:v16];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)personResultsFromUIElements:(id)elements
{
  elementsCopy = elements;
  v29 = objc_alloc_init(NSMutableArray);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = elementsCopy;
  v4 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v37;
    v24 = NLTagSchemeNameType;
    v25 = CKContextTagTypePersonReal;
    v7 = @"EKUIInviteesViewInviteesCell";
    do
    {
      v8 = 0;
      v26 = v5;
      do
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        text = [v9 text];
        superviewClassNames = [v9 superviewClassNames];
        v12 = [superviewClassNames containsObject:v7];

        if (v12)
        {
          v13 = [[LuceneContextResult alloc] initWithText:text];
          [v9 frameInWindow];
          [(LuceneContextResult *)v13 setFrameInWindow:?];
          [v9 absoluteOriginOnScreen];
          [(LuceneContextResult *)v13 setAbsoluteOriginOnScreen:?];
          -[LuceneContextResult setOnScreen:](v13, "setOnScreen:", [v9 isOnScreen]);
          v14 = [NSSet setWithObject:v25];
          [(LuceneContextResult *)v13 setTags:v14];

          [(LuceneContextResult *)v13 setMinPrefix:1];
          [(LuceneContextResult *)v13 setSourceUIElement:v9];
          v15 = [self debugStringForStructuredResult:v13];
          [(LuceneContextResult *)v13 setDebug:v15];
          [v29 addObject:v13];
        }

        else
        {
          v16 = [NLTagger alloc];
          v40 = v24;
          [NSArray arrayWithObjects:&v40 count:1];
          v17 = v6;
          v19 = v18 = v7;
          v13 = [v16 initWithTagSchemes:v19];

          [(LuceneContextResult *)v13 setString:text];
          v20 = [v29 valueForKey:@"title"];
          v21 = [text length];
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_1002A6B70;
          v30[3] = &unk_100483DD8;
          v31 = text;
          v32 = v9;
          selfCopy = self;
          v33 = v29;
          v34 = v20;
          v15 = v20;
          v22 = v21;
          v7 = v18;
          v6 = v17;
          v5 = v26;
          [(LuceneContextResult *)v13 enumerateTagsInRange:0 unit:v22 scheme:0 options:v24 usingBlock:22, v30];
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v5);
  }

  return v29;
}

+ (id)debugStringForStructuredResult:(id)result
{
  resultCopy = result;
  minPrefix = [resultCopy minPrefix];
  [resultCopy frameInWindow];
  v6 = v5;
  [resultCopy frameInWindow];
  v8 = v7;
  [resultCopy absoluteOriginOnScreen];
  v10 = v9;
  [resultCopy absoluteOriginOnScreen];
  v12 = v11;
  [resultCopy frameInWindow];
  v14 = v13;
  [resultCopy frameInWindow];
  v16 = v15;
  if ([resultCopy isOnScreen])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  sceneIdentifier = [resultCopy sceneIdentifier];

  v19 = [NSString stringWithFormat:@"MinPrefix: %li, Origin:(%.f, %.f), AbsoluteOriginOnScreen:(%.f, %.f), Size:(%.f, %.f), On Screen:%@, SceneIdentifier: %@", minPrefix, v6, v8, v10, v12, v14, v16, v17, sceneIdentifier];

  return v19;
}

+ (id)normalizeString:(id)string
{
  stringCopy = string;
  v4 = +[NSCharacterSet newlineCharacterSet];
  v5 = [NSRegularExpression regularExpressionWithPattern:@"\n+" options:0 error:0];
  v6 = [v5 stringByReplacingMatchesInString:stringCopy options:0 range:0 withTemplate:{objc_msgSend(stringCopy, "length"), @"\n"}];

  v7 = [v6 stringByTrimmingCharactersInSet:v4];

  return v7;
}

@end