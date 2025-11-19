@interface MTIDSpan
+ (id)localCalendar;
+ (id)spanForScheme:(id)a3 date:(id)a4 referenceDate:(id)a5;
- (MTIDSpan)initWithScheme:(id)a3 date:(id)a4 referenceDate:(id)a5;
@end

@implementation MTIDSpan

+ (id)spanForScheme:(id)a3 date:(id)a4 referenceDate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MTIDSpan alloc] initWithScheme:v9 date:v8 referenceDate:v7];

  return v10;
}

- (MTIDSpan)initWithScheme:(id)a3 date:(id)a4 referenceDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = MTIDSpan;
  v11 = [(MTIDSpan *)&v27 init];
  v12 = v11;
  if (v11)
  {
    [(MTIDSpan *)v11 setReferenceDate:v10];
    if ([v8 rotationSchedule] == 1)
    {
      v13 = +[MTIDSpan localCalendar];
      v14 = [v13 components:28 fromDate:v9];
      v15 = [v13 components:28 fromDate:v10];
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

    if ([v8 lifespan] >= 1)
    {
      if (v10)
      {
        [v9 timeIntervalSinceDate:v10];
      }

      else
      {
        [v9 timeIntervalSince1970];
      }

      v22 = (v21 / [v8 lifespan]);
      v12->_serialNumber = v22;
      v23 = [v10 dateByAddingTimeInterval:{(objc_msgSend(v8, "lifespan") * v22)}];
      v24 = v12->_startDate;
      v12->_startDate = v23;

      v25 = -[NSDate dateByAddingTimeInterval:](v12->_startDate, "dateByAddingTimeInterval:", [v8 lifespan]);
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
  v3 = [MEMORY[0x277CBEBB0] localTimeZone];
  if (!localCalendar_calendar || ([localCalendar_calendar timeZone], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "isEqualToTimeZone:", v4), v4, (v5 & 1) == 0))
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