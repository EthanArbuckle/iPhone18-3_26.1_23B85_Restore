@interface NSTimeZone(SGCalendarAttachmentDissector)
+ (id)gmtOffsetTimeZoneFromString:()SGCalendarAttachmentDissector forDate:;
+ (id)gmtOffsetTimeZoneWithHour:()SGCalendarAttachmentDissector withMinute:forDate:;
+ (id)systemTimeZoneFromString:()SGCalendarAttachmentDissector;
+ (id)systemTimeZoneWithWindowsName:()SGCalendarAttachmentDissector;
@end

@implementation NSTimeZone(SGCalendarAttachmentDissector)

+ (id)gmtOffsetTimeZoneFromString:()SGCalendarAttachmentDissector forDate:
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [v5 rangeOfString:@"GMT"];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL || (v8 = [v5 rangeOfString:@"UTC"], v8 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v10 = v8;
    if (v8 + 4 < [v5 length])
    {
      v11 = [v5 characterAtIndex:v10 + 3];
      if (v11 == 45 || v11 == 43)
      {
        v12 = [v5 length];
        v13 = objc_autoreleasePoolPush();
        if (v10 + 8 >= v12)
        {
          if (v10 + 5 >= [v5 length])
          {
            v19 = 2;
          }

          else
          {
            v19 = 3;
          }

          v20 = [v5 substringWithRange:{v10 + 3, v19}];
          integerValue = [v20 integerValue];

          v9 = [MEMORY[0x277CBEBB0] gmtOffsetTimeZoneWithHour:integerValue withMinute:0 forDate:v6];
        }

        else
        {
          v14 = [v5 substringWithRange:{v10 + 3, 3}];
          integerValue2 = [v14 integerValue];

          v16 = [v5 substringWithRange:{v10 + 7, 2}];
          integerValue3 = [v16 integerValue];

          v18 = [MEMORY[0x277CBEBB0] gmtOffsetTimeZoneWithHour:integerValue2 withMinute:integerValue3 forDate:v6];
          if (v18)
          {
            v9 = v18;
            objc_autoreleasePoolPop(v13);
            goto LABEL_19;
          }

          v22 = MEMORY[0x277CBEBB0];
          v23 = [v5 substringWithRange:{v10, 9}];
          v9 = [v22 timeZoneWithName:v23];
        }

        objc_autoreleasePoolPop(v13);
        if (v9)
        {
          goto LABEL_19;
        }
      }
    }

    v9 = [MEMORY[0x277CBEBB0] gmtOffsetTimeZoneWithHour:0 withMinute:0 forDate:v6];
    goto LABEL_19;
  }

  v9 = 0;
LABEL_19:
  objc_autoreleasePoolPop(v7);
LABEL_20:

  return v9;
}

+ (id)gmtOffsetTimeZoneWithHour:()SGCalendarAttachmentDissector withMinute:forDate:
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = v8;
  if (a3 >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = -a4;
  }

  v11 = v10 + 60 * a3;
  v12 = 60 * v11;
  v13 = [v8 dateByAddingTimeInterval:(-60 * v11)];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v15 = [localTimeZone secondsFromGMTForDate:v13];

  if (v12 == v15)
  {
    localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
  }

  else
  {
    if (a4)
    {
      selfCopy = self;
      v35 = v9;
      context = objc_autoreleasePoolPush();
      knownTimeZoneNames = [MEMORY[0x277CBEBB0] knownTimeZoneNames];
      v18 = [&unk_28474A438 arrayByAddingObjectsFromArray:knownTimeZoneNames];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v38;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v38 != v22)
            {
              objc_enumerationMutation(v19);
            }

            localTimeZone2 = [MEMORY[0x277CBEBB0] timeZoneWithName:*(*(&v37 + 1) + 8 * i)];
            if (v12 == [localTimeZone2 secondsFromGMTForDate:v13])
            {

              objc_autoreleasePoolPop(context);
              v9 = v35;
              goto LABEL_22;
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      objc_autoreleasePoolPop(context);
      v9 = v35;
      self = selfCopy;
    }

    localTimeZone2 = 0;
    if ((a3 + 12) <= 0x1A && !v10)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = objc_opt_new();
      [v25 setNumberStyle:1];
      [v25 setMaximumFractionDigits:0];
      [v25 setPositivePrefix:@"+"];
      [v25 setNegativePrefix:@"-"];
      v26 = [MEMORY[0x277CCABB0] numberWithInteger:-a3];
      v27 = [v25 stringFromNumber:v26];

      if (!v27)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SGCalendarAttachmentDissector.m" lineNumber:404 description:{@"Invalid parameter not satisfying: %@", @"hourString"}];
      }

      v28 = MEMORY[0x277CBEBB0];
      v29 = [@"Etc/GMT" stringByAppendingString:v27];
      localTimeZone2 = [v28 timeZoneWithName:v29];

      objc_autoreleasePoolPop(v24);
    }
  }

LABEL_22:

  v30 = *MEMORY[0x277D85DE8];

  return localTimeZone2;
}

+ (id)systemTimeZoneFromString:()SGCalendarAttachmentDissector
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v9 = 0;
LABEL_12:
    v7 = [MEMORY[0x277CBEBB0] systemTimeZoneWithWindowsName:v4];
    goto LABEL_16;
  }

  v5 = v3;
  while (1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [MEMORY[0x277CBEBB0] timeZoneWithName:v5];
    v8 = [v5 rangeOfString:@"/"];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v9 = [v5 substringFromIndex:v8 + 1];

    objc_autoreleasePoolPop(v6);
    if (v7)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 == 0;
    }

    v5 = v9;
    if (v10)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  if (v7 || ([MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:v5], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {

    objc_autoreleasePoolPop(v6);
    v9 = 0;
    goto LABEL_16;
  }

  v7 = [MEMORY[0x277CBEBB0] systemTimeZoneWithWindowsName:v5];

  objc_autoreleasePoolPop(v6);
  v9 = 0;
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_16:

  return v7;
}

+ (id)systemTimeZoneWithWindowsName:()SGCalendarAttachmentDissector
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(v3, @"/");

    v6 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(v5, @"\\"");

    v7 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(v6, @", ");

    v8 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(v7, @" ");;

    v9 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(v8, @"- ");

    v10 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(v9, @": ");

    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v3 = [v10 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    v12 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke_2(v3);
    if (v12)
    {
      goto LABEL_9;
    }

    v13 = [v3 rangeOfString:@""]);
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v13;
      if (v13 < [v3 length] - 3)
      {
        v15 = [v3 substringFromIndex:v14 + 2];

        v3 = v15;
      }
    }

    v12 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke_2(v3);
    if (v12)
    {
      goto LABEL_9;
    }

    v16 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(v3, @" (");

    v12 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke_2(v16);
    if (v12)
    {
      v3 = v16;
LABEL_9:
      v17 = v12;
      objc_autoreleasePoolPop(v4);
      goto LABEL_12;
    }

    v20 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(v16, @" Standard Time");

    v21 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(v20, @" Daylight Time");

    v22 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(v21, @" Summer Time");

    v3 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke(v22, @" Time");

    v18 = __75__NSTimeZone_SGCalendarAttachmentDissector__systemTimeZoneWithWindowsName___block_invoke_2(v3);
    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v18 = 0;
  }

  v17 = v18;
LABEL_12:

  return v17;
}

@end