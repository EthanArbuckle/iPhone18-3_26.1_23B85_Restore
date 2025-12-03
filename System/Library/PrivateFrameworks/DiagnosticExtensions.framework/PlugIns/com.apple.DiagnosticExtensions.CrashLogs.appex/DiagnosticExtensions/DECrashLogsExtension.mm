@interface DECrashLogsExtension
- (DECrashLogsExtension)init;
- (id)_attachmentsWithDisplayName:(id)name;
- (id)_submittableLogsWithPattern:(id)pattern excludingPattern:(id)excludingPattern excludingPathComponents:(id)components;
- (id)attachmentsForParameters:(id)parameters;
- (id)shortname:(id)shortname;
@end

@implementation DECrashLogsExtension

- (DECrashLogsExtension)init
{
  v10.receiver = self;
  v10.super_class = DECrashLogsExtension;
  v2 = [(DECrashLogsExtension *)&v10 init];
  if (v2)
  {
    if (MGGetBoolAnswer())
    {
      v3 = +[NSUserDefaults standardUserDefaults];
      v4 = [v3 valueForKey:@"RCInternalMode"];
      if ([v4 integerValue])
      {
        v5 = +[NSUserDefaults standardUserDefaults];
        v6 = [v5 valueForKey:@"RCInternalMode"];
        integerValue = [v6 integerValue];

        if (integerValue != 2)
        {
          goto LABEL_5;
        }
      }

      else
      {
      }

      v8 = -259200;
      goto LABEL_8;
    }

LABEL_5:
    v8 = -10800;
LABEL_8:
    v2->_cutOffSeconds = v8;
  }

  return v2;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [parametersCopy objectForKey:@"DEExtensionAttachmentsParamDisplayNameKey"];

  if (v7)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamDisplayNameKey"];
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v3 = [(DECrashLogsExtension *)self _attachmentsWithDisplayName:*(*(&v43 + 1) + 8 * i)];
          if (v3)
          {
            [v6 addObjectsFromArray:v3];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v10);
    }
  }

  v36 = parametersCopy;
  if (![v6 count])
  {
    if (!MGGetBoolAnswer())
    {
LABEL_20:
      v19 = [(DECrashLogsExtension *)self _attachmentsWithDisplayName:0];
      [v6 addObjectsFromArray:v19];

      goto LABEL_21;
    }

    v13 = v6;
    v14 = +[NSUserDefaults standardUserDefaults];
    v15 = [v14 valueForKey:@"RCInternalMode"];
    integerValue = [v15 integerValue];
    if (integerValue)
    {
      v3 = +[NSUserDefaults standardUserDefaults];
      parametersCopy = [v3 valueForKey:@"RCInternalMode"];
      if ([parametersCopy integerValue] != 2)
      {

        v6 = v13;
        goto LABEL_20;
      }
    }

    v17 = [v36 objectForKeyedSubscript:@"DEExtensionHostAppKey"];
    v18 = [@"Feedback Assistant" isEqualToString:v17];

    if (integerValue)
    {
    }

    v6 = v13;
    if (v18)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v20 = objc_alloc_init(NSMutableDictionary);
  v37 = v6;
  v21 = [v6 mutableCopy];
  [v21 sortUsingComparator:&stru_100004190];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v40;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v39 + 1) + 8 * j);
        path = [v26 path];
        lastPathComponent = [path lastPathComponent];
        v29 = [(DECrashLogsExtension *)self shortname:lastPathComponent];

        v30 = [v20 objectForKey:v29];

        if (!v30)
        {
          [v20 setObject:&off_100004388 forKeyedSubscript:v29];
        }

        v31 = [v20 objectForKeyedSubscript:v29];
        v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v31 integerValue] + 1);
        [v20 setObject:v32 forKeyedSubscript:v29];

        v33 = [v20 objectForKeyedSubscript:v29];
        integerValue2 = [v33 integerValue];

        if (integerValue2 >= 6)
        {
          [v37 removeObject:v26];
        }
      }

      v23 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v23);
  }

  return v37;
}

- (id)_attachmentsWithDisplayName:(id)name
{
  nameCopy = name;
  v5 = [NSString stringWithFormat:@".*\\.%@.*", @"ips"];
  if (nameCopy)
  {
    v6 = [NSString stringWithFormat:@"%@.*\\.%@.*", nameCopy, @"ips"];

    v7 = @"(JetsamEvent|Sandbox|^stacks|log-aggregated).*";
    v5 = v6;
  }

  else
  {
    v7 = @"(AutoBugCapture|CMActivityLog|CoreTime|DuetKnowledgeCollector|ExcResource|FlashStatus|JetsamEvent|KeyboardAccuracy|log-aggregated|memory-snapshot|OTAUpdate|Sandbox|^stacks|SymptomJournal|SystemMemoryReset|Ultra_1).*";
  }

  v8 = [NSRegularExpression regularExpressionWithPattern:v5 options:1 error:0];
  v9 = [NSRegularExpression regularExpressionWithPattern:v7 options:1 error:0];
  v10 = [NSRegularExpression regularExpressionWithPattern:@"JetsamEvent.*\\.ips.*" options:1 error:0];
  v11 = [(DECrashLogsExtension *)self _submittableLogsWithPattern:v8 excludingPattern:v9 excludingPathComponents:&off_1000043A8];
  v12 = [(DECrashLogsExtension *)self _submittableLogsWithPattern:v10 excludingPattern:0 excludingPathComponents:&off_1000043A8];
  v13 = [v11 mutableCopy];
  [v13 addObjectsFromArray:v12];
  if (nameCopy)
  {
    v24 = v12;
    v25 = v10;
    v26 = v9;
    v27 = v8;
    v28 = v5;
    v29 = nameCopy;
    v14 = [[NSDate alloc] initWithTimeIntervalSinceNow:{-[DECrashLogsExtension cutOffSeconds](self, "cutOffSeconds")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          modificationDate = [v20 modificationDate];
          v22 = [modificationDate compare:v14];

          if (v22 == -1)
          {
            [v13 removeObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v17);
    }

    v5 = v28;
    nameCopy = v29;
    v9 = v26;
    v8 = v27;
    v12 = v24;
    v10 = v25;
  }

  return v13;
}

- (id)_submittableLogsWithPattern:(id)pattern excludingPattern:(id)excludingPattern excludingPathComponents:(id)components
{
  patternCopy = pattern;
  excludingPatternCopy = excludingPattern;
  componentsCopy = components;
  v9 = OSASubmittableLogs();
  if ([v9 count])
  {
    v10 = patternCopy;
    if (!v10)
    {
      v10 = [NSRegularExpression regularExpressionWithPattern:@"*" options:1 error:0];
    }

    v31 = componentsCopy;
    v32 = patternCopy;
    if (componentsCopy && [componentsCopy count])
    {
      v35 = [NSSet setWithArray:componentsCopy];
    }

    else
    {
      v35 = 0;
    }

    v33 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v30 = v9;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v40 + 1) + 8 * i);
          v39 = 0;
          [v15 getResourceValue:&v39 forKey:NSURLNameKey error:{0, v30}];
          v16 = v39;
          v17 = [v16 length];
          if (v17)
          {
            v18 = v10 == 0;
          }

          else
          {
            v18 = 1;
          }

          if (v18 || ([v10 firstMatchInString:v16 options:8 range:{0, v17}], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
          {
            if (!excludingPatternCopy || !v17 || ([excludingPatternCopy firstMatchInString:v16 options:8 range:{0, v17}], v20 = objc_claimAutoreleasedReturnValue(), v20, !v20))
            {
              if (!v35 || (v21 = [NSSet alloc], [v15 pathComponents], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "initWithArray:", v22), v24 = objc_msgSend(v23, "intersectsSet:", v35), v23, v22, (v24 & 1) == 0))
              {
                v38 = 0;
                [v15 getResourceValue:&v38 forKey:NSURLFileSizeKey error:0];
                v37 = 0;
                v25 = v38;
                [v15 getResourceValue:&v37 forKey:NSURLContentModificationDateKey error:0];
                v26 = v37;
                lastPathComponent = [v15 lastPathComponent];
                v28 = [DEAttachmentItem attachmentWithPath:v15 withDisplayName:lastPathComponent modificationDate:v26 andFilesize:v25];

                [v33 addObject:v28];
              }
            }
          }
        }

        v12 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v12);
    }

    componentsCopy = v31;
    patternCopy = v32;
    v9 = v30;
  }

  else
  {
    v33 = &__NSArray0__struct;
  }

  return v33;
}

- (id)shortname:(id)shortname
{
  shortnameCopy = shortname;
  v4 = qword_100008278;
  if (!qword_100008278)
  {
    v5 = [NSRegularExpression regularExpressionWithPattern:@"([^_-]*)" options:1 error:0];
    v6 = qword_100008278;
    qword_100008278 = v5;

    v4 = qword_100008278;
  }

  v7 = [v4 firstMatchInString:shortnameCopy options:0 range:{0, objc_msgSend(shortnameCopy, "length")}];
  v8 = v7;
  if (v7)
  {
    range = [v7 range];
    v11 = [shortnameCopy substringWithRange:{range, v10}];
  }

  else
  {
    v11 = shortnameCopy;
  }

  v12 = v11;

  return v12;
}

@end