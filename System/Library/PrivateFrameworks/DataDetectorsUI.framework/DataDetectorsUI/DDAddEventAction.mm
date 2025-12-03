@interface DDAddEventAction
+ (BOOL)actionAvailableForEvent:(id)event;
+ (id)cachedEventForICSString:(id)string;
+ (id)icsEventForICSString:(id)string;
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
  viewController = [(DDAction *)self viewController];
  [viewController setAction:0];

  v4.receiver = self;
  v4.super_class = DDAddEventAction;
  [(DDAction *)&v4 invalidate];
}

+ (id)icsEventForICSString:(id)string
{
  stringCopy = string;
  v4 = objc_autoreleasePoolPush();
  gotLoadHelper_x8__OBJC_CLASS___ICSDocument(v5);
  v7 = objc_alloc(*(v6 + 264));
  v16 = 0;
  v8 = [v7 initWithICSString:stringCopy options:0 error:&v16];
  v9 = v8;
  if (v8)
  {
    calendar = [v8 calendar];
    method = [calendar method];
    if (method > 5 || ((1 << method) & 0x27) == 0)
    {
      firstObject = 0;
    }

    else
    {
      components = [calendar components];
      firstObject = [components firstObject];
    }
  }

  else
  {
    firstObject = 0;
  }

  objc_autoreleasePoolPop(v4);

  return firstObject;
}

+ (id)cachedEventForICSString:(id)string
{
  v18[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy length])
  {
    gotLoadHelper_x21__OBJC_CLASS___EKEventStore(v6);
    if ([*(v3 + 2624) authorizationStatusForEntityType:0] == 3)
    {
      v7 = [objc_alloc(*(v3 + 2624)) initWithOptions:48 path:0];
      if (v7)
      {
        v8 = [stringCopy dataUsingEncoding:4];
        v9 = [v7 importICSData:v8 intoCalendar:0 options:0];
        firstObject = [v9 firstObject];

        if (firstObject)
        {
          v17[0] = @"event";
          v17[1] = @"store";
          v18[0] = firstObject;
          v18[1] = v7;
          v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

LABEL_8:
          goto LABEL_11;
        }
      }
    }

    else
    {
      v12 = [self icsEventForICSString:stringCopy];
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
  eventTitleFromCache = [(DDAddEventAction *)self eventTitleFromCache];
  if (eventTitleFromCache)
  {
    v4 = eventTitleFromCache;
    newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
    v6 = [v4 componentsSeparatedByCharactersInSet:newlineCharacterSet];
    firstObject = [v6 firstObject];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v9 = [firstObject stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    if ([v9 length])
    {
      v9 = v9;
      compactTitle = v9;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  eventStartDateFromCache = [(DDAddEventAction *)self eventStartDateFromCache];
  if (!eventStartDateFromCache)
  {
    goto LABEL_8;
  }

  compactTitle = [MEMORY[0x277CCA968] localizedStringFromDate:eventStartDateFromCache dateStyle:1 timeStyle:1];
  if (![compactTitle length])
  {

LABEL_8:
    v13.receiver = self;
    v13.super_class = DDAddEventAction;
    compactTitle = [(DDAction *)&v13 compactTitle];
  }

LABEL_10:

  return compactTitle;
}

- (id)quickActionTitle
{
  v9 = 0;
  eventStartDateFromCache = [(DDAddEventAction *)self eventStartDateFromCache];
  if (eventStartDateFromCache)
  {
    goto LABEL_2;
  }

  associatedResults = [(DDAction *)self associatedResults];
  context = [(DDAction *)self context];
  eventStartDateFromCache = beginDateOfEventResults(associatedResults, context, &v9 + 1, &v9, 0);

  if (!eventStartDateFromCache)
  {
    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_2:
    quickActionTitle = [MEMORY[0x277CCA968] localizedStringFromDate:eventStartDateFromCache dateStyle:3 timeStyle:HIBYTE(v9) != 1];
    if ([quickActionTitle length])
    {
      goto LABEL_9;
    }
  }

  else
  {
    quickActionTitle = [MEMORY[0x277CCA968] localizedStringFromDate:eventStartDateFromCache dateStyle:0 timeStyle:1];
    if ([quickActionTitle length])
    {
      goto LABEL_9;
    }
  }

LABEL_8:
  v8.receiver = self;
  v8.super_class = DDAddEventAction;
  quickActionTitle = [(DDAction *)&v8 quickActionTitle];
LABEL_9:

  return quickActionTitle;
}

- (id)notificationTitle
{
  eventTitleFromCache = [(DDAddEventAction *)self eventTitleFromCache];
  eventStartDateFromCache = [(DDAddEventAction *)self eventStartDateFromCache];
  if (eventStartDateFromCache)
  {
    v5 = [MEMORY[0x277CCA968] localizedStringFromDate:eventStartDateFromCache dateStyle:1 timeStyle:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [eventTitleFromCache length];
  v7 = [v5 length];
  v8 = MEMORY[0x277CCACA8];
  if (v6 && v7)
  {
    v9 = DDLocalizedString(@"Add “%@” on %@ to Calendar");
    [v8 stringWithFormat:v9, eventTitleFromCache, v5];
  }

  else if (v7)
  {
    v9 = DDLocalizedString(@"Add event on %@ to Calendar");
    [v8 stringWithFormat:v9, v5, v13];
  }

  else if (v6)
  {
    v9 = DDLocalizedString(@"Add “%@” to Calendar");
    [v8 stringWithFormat:v9, eventTitleFromCache, v13];
  }

  else
  {
    v9 = DDLocalizedString(@"Add an ICS event to Calendar");
    [v8 stringWithFormat:v9, v12, v13];
  }
  v10 = ;

  return v10;
}

+ (BOOL)actionAvailableForEvent:(id)event
{
  if (event)
  {
    return [self isAvailable];
  }

  else
  {
    return 0;
  }
}

@end