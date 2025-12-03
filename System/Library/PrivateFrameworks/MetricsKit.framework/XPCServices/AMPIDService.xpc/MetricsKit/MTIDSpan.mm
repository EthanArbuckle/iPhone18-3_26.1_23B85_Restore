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
  if (qword_100028118 != -1)
  {
    sub_100012C9C();
  }

  v2 = qword_100028128;
  objc_sync_enter(v2);
  v3 = +[NSTimeZone localTimeZone];
  if (!qword_100028120 || ([qword_100028120 timeZone], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "isEqualToTimeZone:", v4), v4, (v5 & 1) == 0))
  {
    v6 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v7 = qword_100028120;
    qword_100028120 = v6;
  }

  objc_sync_exit(v2);
  v8 = qword_100028120;

  return v8;
}

@end