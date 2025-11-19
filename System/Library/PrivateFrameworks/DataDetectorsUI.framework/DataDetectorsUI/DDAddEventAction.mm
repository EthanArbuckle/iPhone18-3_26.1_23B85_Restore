@interface DDAddEventAction
+ (BOOL)actionAvailableForEvent:(id)a3;
+ (id)cachedEventForICSString:(id)a3;
+ (id)icsEventForICSString:(id)a3;
- (id)compactTitle;
- (id)eventStartDateFromCache;
- (id)eventTitleFromCache;
- (id)notificationTitle;
- (id)quickActionTitle;
- (void)invalidate;
@end

@implementation DDAddEventAction

- (void)invalidate
{
  v3 = [(DDAction *)self viewController];
  [v3 setAction:0];

  v4.receiver = self;
  v4.super_class = DDAddEventAction;
  [(DDAction *)&v4 invalidate];
}

+ (id)icsEventForICSString:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  gotLoadHelper_x8__OBJC_CLASS___ICSDocument(v5);
  v7 = objc_alloc(*(v6 + 264));
  v16 = 0;
  v8 = [v7 initWithICSString:v3 options:0 error:&v16];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 calendar];
    v11 = [v10 method];
    if (v11 > 5 || ((1 << v11) & 0x27) == 0)
    {
      v14 = 0;
    }

    else
    {
      v13 = [v10 components];
      v14 = [v13 firstObject];
    }
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v14;
}

+ (id)cachedEventForICSString:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 length])
  {
    gotLoadHelper_x21__OBJC_CLASS___EKEventStore(v6);
    if ([*(v3 + 2624) authorizationStatusForEntityType:0] == 3)
    {
      v7 = [objc_alloc(*(v3 + 2624)) initWithOptions:48 path:0];
      if (v7)
      {
        v8 = [v5 dataUsingEncoding:4];
        v9 = [v7 importICSData:v8 intoCalendar:0 options:0];
        v10 = [v9 firstObject];

        if (v10)
        {
          v17[0] = @"event";
          v17[1] = @"store";
          v18[0] = v10;
          v18[1] = v7;
          v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

LABEL_8:
          goto LABEL_11;
        }
      }
    }

    else
    {
      v12 = [a1 icsEventForICSString:v5];
      if (v12)
      {
        v15 = @"icsEvent";
        v16 = v12;
        v7 = v12;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        goto LABEL_8;
      }
    }
  }

  v11 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)eventTitleFromCache
{
  v2 = [(NSDictionary *)self->super._context objectForKeyedSubscript:0x282C1E0C8];
  v3 = _eventTitleFromCache(v2);

  return v3;
}

- (id)eventStartDateFromCache
{
  v2 = [(NSDictionary *)self->super._context objectForKeyedSubscript:0x282C1E0C8];
  v3 = _eventStartDateFromCache(v2);

  return v3;
}

- (id)compactTitle
{
  v3 = [(DDAddEventAction *)self eventTitleFromCache];
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v6 = [v4 componentsSeparatedByCharactersInSet:v5];
    v7 = [v6 firstObject];
    v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v9 = [v7 stringByTrimmingCharactersInSet:v8];

    if ([v9 length])
    {
      v9 = v9;
      v10 = v9;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [(DDAddEventAction *)self eventStartDateFromCache];
  if (!v11)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x277CCA968] localizedStringFromDate:v11 dateStyle:1 timeStyle:1];
  if (![v10 length])
  {

LABEL_8:
    v13.receiver = self;
    v13.super_class = DDAddEventAction;
    v10 = [(DDAction *)&v13 compactTitle];
  }

LABEL_10:

  return v10;
}

- (id)quickActionTitle
{
  v9 = 0;
  v3 = [(DDAddEventAction *)self eventStartDateFromCache];
  if (v3)
  {
    goto LABEL_2;
  }

  v5 = [(DDAction *)self associatedResults];
  v6 = [(DDAction *)self context];
  v3 = beginDateOfEventResults(v5, v6, &v9 + 1, &v9, 0);

  if (!v3)
  {
    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_2:
    v4 = [MEMORY[0x277CCA968] localizedStringFromDate:v3 dateStyle:3 timeStyle:HIBYTE(v9) != 1];
    if ([v4 length])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = [MEMORY[0x277CCA968] localizedStringFromDate:v3 dateStyle:0 timeStyle:1];
    if ([v4 length])
    {
      goto LABEL_9;
    }
  }

LABEL_8:
  v8.receiver = self;
  v8.super_class = DDAddEventAction;
  v4 = [(DDAction *)&v8 quickActionTitle];
LABEL_9:

  return v4;
}

- (id)notificationTitle
{
  v3 = [(DDAddEventAction *)self eventTitleFromCache];
  v4 = [(DDAddEventAction *)self eventStartDateFromCache];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA968] localizedStringFromDate:v4 dateStyle:1 timeStyle:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 length];
  v7 = [v5 length];
  v8 = MEMORY[0x277CCACA8];
  if (v6 && v7)
  {
    v9 = DDLocalizedString(@"Add “%@” on %@ to Calendar");
    [v8 stringWithFormat:v9, v3, v5];
  }

  else if (v7)
  {
    v9 = DDLocalizedString(@"Add event on %@ to Calendar");
    [v8 stringWithFormat:v9, v5, v13];
  }

  else if (v6)
  {
    v9 = DDLocalizedString(@"Add “%@” to Calendar");
    [v8 stringWithFormat:v9, v3, v13];
  }

  else
  {
    v9 = DDLocalizedString(@"Add an ICS event to Calendar");
    [v8 stringWithFormat:v9, v12, v13];
  }
  v10 = ;

  return v10;
}

+ (BOOL)actionAvailableForEvent:(id)a3
{
  if (a3)
  {
    return [a1 isAvailable];
  }

  else
  {
    return 0;
  }
}

@end