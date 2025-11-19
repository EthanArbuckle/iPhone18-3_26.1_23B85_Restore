@interface CUIKDefaultAlarmPreferences
+ (NSNumber)defaultAllDayAlarmOffset;
+ (NSNumber)defaultTimedAlarmOffset;
+ (id)defaultAlarmOffsetForAlarmType:(int)a3 eventStore:(id)a4;
+ (id)defaultBirthdayAlarmOffsetWithEventStore:(id)a3;
+ (void)setDefaultAlarmOffset:(id)a3 forAlarmType:(int)a4 eventStore:(id)a5;
@end

@implementation CUIKDefaultAlarmPreferences

+ (id)defaultAlarmOffsetForAlarmType:(int)a3 eventStore:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 0:
      v7 = [a1 defaultTimedAlarmOffset];
      goto LABEL_7;
    case 1:
      v7 = [a1 defaultAllDayAlarmOffset];
      goto LABEL_7;
    case 2:
      v7 = [a1 defaultBirthdayAlarmOffsetWithEventStore:v6];
LABEL_7:
      v8 = v7;
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

+ (void)setDefaultAlarmOffset:(id)a3 forAlarmType:(int)a4 eventStore:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  if ([v7 integerValue] == 0x7FFFFFFFFFFFFFFFLL)
  {

    v7 = 0;
  }

  if (a4 == 2)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v8 sources];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if ([v16 sourceType] == 5)
          {
            [v16 setDefaultAlarmOffset:v7];
            v17 = [v16 eventStore];
            v20 = 0;
            v18 = [v17 saveSource:v16 commit:1 error:&v20];
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

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
    if (a4 == 1)
    {
      CalAlarmSetDefaultAllDayAlarmOffset();
    }

    else
    {
      if (a4)
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

+ (id)defaultBirthdayAlarmOffsetWithEventStore:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 sources];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      if ([v8 sourceType] == 5)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = [v8 defaultAlarmOffset];

    if (v9)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
LABEL_12:

  return v9;
}

@end