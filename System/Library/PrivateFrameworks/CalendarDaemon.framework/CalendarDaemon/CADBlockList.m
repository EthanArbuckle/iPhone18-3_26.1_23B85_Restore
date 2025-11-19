@interface CADBlockList
- (BOOL)isEventBlocked:(void *)a3;
- (CADBlockList)initWithBlockList:(id)a3;
@end

@implementation CADBlockList

- (CADBlockList)initWithBlockList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CADBlockList;
  v6 = [(CADBlockList *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_blockList, a3);
  }

  return v7;
}

- (BOOL)isEventBlocked:(void *)a3
{
  Event = a3;
  v5 = CFGetTypeID(a3);
  if (v5 == CalEventOccurrenceGetTypeID())
  {
    Event = CalEventOccurrenceGetEvent();
  }

  if (!Event)
  {
    return 0;
  }

  v6 = CalCalendarItemCopyOrganizer();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (CalOrganizerIsSelf())
  {
    CFRelease(v7);
    return 0;
  }

  v10 = MEMORY[0x22AA4B090](v7);
  if (v10 && ([(CalBlockList *)self->_blockList isBlockedWithEmail:v10]& 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v11 = MEMORY[0x22AA4C750](v7);
    if (v11)
    {
      v8 = [(CalBlockList *)self->_blockList isBlockedWithPhoneNumber:v11];
    }

    else
    {
      v8 = 0;
    }
  }

  CFRelease(v7);

  return v8;
}

@end