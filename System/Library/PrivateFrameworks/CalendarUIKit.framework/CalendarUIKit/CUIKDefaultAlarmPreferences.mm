@interface CUIKDefaultAlarmPreferences
+ (NSNumber)defaultAllDayAlarmOffset;
+ (NSNumber)defaultTimedAlarmOffset;
+ (id)defaultAlarmOffsetForAlarmType:(int)type eventStore:(id)store;
+ (id)defaultBirthdayAlarmOffsetWithEventStore:(id)store;
+ (void)setDefaultAlarmOffset:(id)offset forAlarmType:(int)type eventStore:(id)store;
@end

@implementation CUIKDefaultAlarmPreferences

+ (id)defaultAlarmOffsetForAlarmType:(int)type eventStore:(id)store
{
  storeCopy = store;
  switch(type)
  {
    case 0:
      defaultTimedAlarmOffset = [self defaultTimedAlarmOffset];
      goto LABEL_7;
    case 1:
      defaultTimedAlarmOffset = [self defaultAllDayAlarmOffset];
      goto LABEL_7;
    case 2:
      defaultTimedAlarmOffset = [self defaultBirthdayAlarmOffsetWithEventStore:storeCopy];
LABEL_7:
      v8 = defaultTimedAlarmOffset;
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

+ (void)setDefaultAlarmOffset:(id)offset forAlarmType:(int)type eventStore:(id)store
{
  v26 = *MEMORY[0x1E69E9840];
  offsetCopy = offset;
  storeCopy = store;
  if ([offsetCopy integerValue] == 0x7FFFFFFFFFFFFFFFLL)
  {

    offsetCopy = 0;
  }

  if (type == 2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    sources = [storeCopy sources];
    v12 = [sources countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(sources);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 sourceType] == 5)
          {
            [v16 setDefaultAlarmOffset:offsetCopy];
            eventStore = [v16 eventStore];
            v20 = 0;
            v18 = [eventStore saveSource:v16 commit:1 error:&v20];
            v19 = v20;

            if (v18)
            {
              v9 = *MEMORY[0x1E69930E0];
            }

            else
            {
              NSLog(&cfstr_AnErrorOccurre.isa, v16, v19);
              v9 = 0;
            }

            goto LABEL_24;
          }
        }

        v13 = [sources countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_24:

    if (v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (type == 1)
    {
      CalAlarmSetDefaultAllDayAlarmOffset();
    }

    else
    {
      if (type)
      {
        goto LABEL_10;
      }

      CalAlarmSetDefaultTimedAlarmOffset();
    }

    v9 = *MEMORY[0x1E6966B70];
    if (v9)
    {
LABEL_9:
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, v9, 0, 0, 1u);
    }
  }

LABEL_10:
}

+ (NSNumber)defaultTimedAlarmOffset
{
  v2 = CalAlarmCopyDefaultTimedAlarmOffset();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
  }

  v5 = v4;

  return v5;
}

+ (NSNumber)defaultAllDayAlarmOffset
{
  v2 = CalAlarmCopyDefaultAllDayAlarmOffset();
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
  }

  v5 = v4;

  return v5;
}

+ (id)defaultBirthdayAlarmOffsetWithEventStore:(id)store
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sources = [store sources];
  v4 = [sources countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(sources);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      if ([v8 sourceType] == 5)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [sources countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    defaultAlarmOffset = [v8 defaultAlarmOffset];

    if (defaultAlarmOffset)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  defaultAlarmOffset = [MEMORY[0x1E696AD98] numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
LABEL_12:

  return defaultAlarmOffset;
}

@end