@interface MTIDSpan
+ (id)localCalendar;
+ (id)spanForScheme:(id)scheme date:(id)date referenceDate:(id)referenceDate;
- (MTIDSpan)initWithScheme:(id)scheme date:(id)date referenceDate:(id)referenceDate;
@end

@implementation MTIDSpan

+ (id)spanForScheme:(id)scheme date:(id)date referenceDate:(id)referenceDate
{
  referenceDateCopy = referenceDate;
  dateCopy = date;
  schemeCopy = scheme;
  v10 = [[MTIDSpan alloc] initWithScheme:schemeCopy date:dateCopy referenceDate:referenceDateCopy];

  return v10;
}

- (MTIDSpan)initWithScheme:(id)scheme date:(id)date referenceDate:(id)referenceDate
{
  schemeCopy = scheme;
  dateCopy = date;
  referenceDateCopy = referenceDate;
  v27.receiver = self;
  v27.super_class = MTIDSpan;
  v11 = [(MTIDSpan *)&v27 init];
  v12 = v11;
  if (v11)
  {
    [(MTIDSpan *)v11 setReferenceDate:referenceDateCopy];
    if ([schemeCopy rotationSchedule] == 1)
    {
      v13 = +[MTIDSpan localCalendar];
      v14 = [v13 components:28 fromDate:dateCopy];
      v15 = [v13 components:28 fromDate:referenceDateCopy];
      v16 = [v13 components:16 fromDateComponents:v15 toDateComponents:v14 options:0];
      v12->_serialNumber = [v16 day];
      v17 = [v13 dateFromComponents:v14];
      startDate = v12->_startDate;
      v12->_startDate = v17;

      [v14 setDay:{objc_msgSend(v14, "day") + 1}];
      v19 = [v13 dateFromComponents:v14];
      endDate = v12->_endDate;
      v12->_endDate = v19;

LABEL_9:
      goto LABEL_10;
    }

    if ([schemeCopy lifespan] >= 1)
    {
      if (referenceDateCopy)
      {
        [dateCopy timeIntervalSinceDate:referenceDateCopy];
      }

      else
      {
        [dateCopy timeIntervalSince1970];
      }

      v22 = (v21 / [schemeCopy lifespan]);
      v12->_serialNumber = v22;
      v23 = [referenceDateCopy dateByAddingTimeInterval:{(objc_msgSend(schemeCopy, "lifespan") * v22)}];
      v24 = v12->_startDate;
      v12->_startDate = v23;

      v25 = -[NSDate dateByAddingTimeInterval:](v12->_startDate, "dateByAddingTimeInterval:", [schemeCopy lifespan]);
      v13 = v12->_endDate;
      v12->_endDate = v25;
      goto LABEL_9;
    }
  }

LABEL_10:

  return v12;
}

+ (id)localCalendar
{
  if (localCalendar_onceToken != -1)
  {
    +[MTIDSpan localCalendar];
  }

  v2 = localCalendar_lock;
  objc_sync_enter(v2);
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  if (!localCalendar_calendar || ([localCalendar_calendar timeZone], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(localTimeZone, "isEqualToTimeZone:", v4), v4, (v5 & 1) == 0))
  {
    v6 = objc_alloc(MEMORY[0x277CBEA80]);
    v7 = [v6 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v8 = localCalendar_calendar;
    localCalendar_calendar = v7;
  }

  objc_sync_exit(v2);
  v9 = localCalendar_calendar;

  return v9;
}

uint64_t __25__MTIDSpan_localCalendar__block_invoke()
{
  localCalendar_lock = objc_alloc_init(MEMORY[0x277D82BB8]);

  return MEMORY[0x2821F96F8]();
}

@end