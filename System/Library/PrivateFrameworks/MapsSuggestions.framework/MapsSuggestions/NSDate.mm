@interface NSDate
+ (id)_maps_dateDescriptionShort:(BOOL)short timeZone:(id)zone bookingDate:(id)date;
+ (id)_maps_dayDescriptionStringShortDescription:(BOOL)description timeZone:(id)zone bookingDate:(id)date;
@end

@implementation NSDate

+ (id)_maps_dateDescriptionShort:(BOOL)short timeZone:(id)zone bookingDate:(id)date
{
  shortCopy = short;
  zoneCopy = zone;
  dateCopy = date;
  if (qword_100085670 != -1)
  {
    sub_10004E5F4();
  }

  [qword_100085668 setTimeZone:zoneCopy];
  v9 = [NSDate _maps_dayDescriptionStringShortDescription:shortCopy timeZone:zoneCopy bookingDate:dateCopy];
  v10 = [qword_100085668 stringFromDate:dateCopy];
  v11 = +[NSCalendar currentCalendar];
  v12 = [v11 componentsInTimeZone:zoneCopy fromDate:dateCopy];

  if ([v12 hour] == 1)
  {
    if (!shortCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  hour = [v12 hour];
  if (shortCopy)
  {
    if (hour != 13)
    {
      block = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_10003F7E8;
      v24 = &unk_1000753A8;
      v25 = "NSDate+RestaurantReservationDescriptionHelper";
      if (qword_100085690 != -1)
      {
        dispatch_once(&qword_100085690, &block);
      }

      v14 = qword_100085688;
      v15 = @"reservation_date_at_time_key_not_at_1";
      goto LABEL_17;
    }

LABEL_8:
    block = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10003F7E8;
    v24 = &unk_1000753A8;
    v25 = "NSDate+RestaurantReservationDescriptionHelper";
    if (qword_100085690 != -1)
    {
      dispatch_once(&qword_100085690, &block);
    }

    v14 = qword_100085688;
    v15 = @"reservation_date_at_time_key_at_1";
LABEL_17:
    v16 = @"%1$@ at %2$@<unlocalized>";
    goto LABEL_18;
  }

LABEL_11:
  block = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10003F7E8;
  v24 = &unk_1000753A8;
  v25 = "NSDate+RestaurantReservationDescriptionHelper";
  if (qword_100085690 != -1)
  {
    dispatch_once(&qword_100085690, &block);
  }

  v14 = qword_100085688;
  v15 = @"reservation_date_at_time_short_key";
  v16 = @"%1$@, %2$@<unlocalized>";
LABEL_18:
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];
  v18 = MapsSuggestionsNonNilString();

  v19 = [[NSString alloc] initWithFormat:v18, v9, v10];

  return v19;
}

+ (id)_maps_dayDescriptionStringShortDescription:(BOOL)description timeZone:(id)zone bookingDate:(id)date
{
  descriptionCopy = description;
  zoneCopy = zone;
  dateCopy = date;
  if (qword_100085680 != -1)
  {
    sub_10004E608();
  }

  [qword_100085678 setDateStyle:0];
  [qword_100085678 setTimeStyle:1];
  [qword_100085678 setTimeZone:zoneCopy];
  v8 = +[NSCalendar currentCalendar];
  v9 = +[NSDate date];
  v10 = [v8 componentsInTimeZone:zoneCopy fromDate:v9];

  v35 = v8;
  v11 = [v8 componentsInTimeZone:zoneCopy fromDate:dateCopy];
  year = [v10 year];
  if (year == [v11 year] && (v13 = objc_msgSend(v10, "month"), v13 == objc_msgSend(v11, "month")))
  {
    v14 = [v10 day];
    v15 = v14 == [v11 day];
  }

  else
  {
    v15 = 0;
  }

  year2 = [v10 year];
  if (year2 != [v11 year])
  {
    v18 = 0;
    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_11:
    v19 = [v11 hour] > 16;
    goto LABEL_12;
  }

  weekOfYear = [v10 weekOfYear];
  v18 = weekOfYear == [v11 weekOfYear];
  if (v15)
  {
    goto LABEL_11;
  }

LABEL_9:
  v19 = 0;
LABEL_12:
  v20 = [v10 copy];
  [v20 setDay:{objc_msgSend(v20, "day") + 1}];
  year3 = [v20 year];
  if (year3 == [v11 year])
  {
    month = [v20 month];
    if (month == [v11 month])
    {
      v23 = [v20 day];
      v24 = v23 == [v11 day];
      if (!v19)
      {
        goto LABEL_15;
      }

LABEL_20:
      block = _NSConcreteStackBlock;
      v37 = 3221225472;
      v38 = sub_10003F7E8;
      v39 = &unk_1000753A8;
      v40 = "NSDate+RestaurantReservationDescriptionHelper";
      if (qword_100085690 != -1)
      {
        dispatch_once(&qword_100085690, &block);
      }

      v25 = qword_100085688;
      v26 = @"reservation_tonight_key";
      v27 = @"Tonight<unlocalized>";
      goto LABEL_23;
    }
  }

  v24 = 0;
  if (v19)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (v15)
  {
    block = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_10003F7E8;
    v39 = &unk_1000753A8;
    v40 = "NSDate+RestaurantReservationDescriptionHelper";
    if (qword_100085690 != -1)
    {
      dispatch_once(&qword_100085690, &block);
    }

    v25 = qword_100085688;
    v26 = @"reservation_today_key";
    v27 = @"Today<unlocalized>";
LABEL_23:
    v28 = [v25 localizedStringForKey:v26 value:v27 table:0];
    v29 = MapsSuggestionsNonNilString();

    goto LABEL_24;
  }

  if (v24)
  {
    block = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_10003F7E8;
    v39 = &unk_1000753A8;
    v40 = "NSDate+RestaurantReservationDescriptionHelper";
    if (qword_100085690 != -1)
    {
      dispatch_once(&qword_100085690, &block);
    }

    v25 = qword_100085688;
    v26 = @"reservation_tomorrow_key";
    v27 = @"Tomorrow<unlocalized>";
    goto LABEL_23;
  }

  if (v18)
  {
    if (descriptionCopy)
    {
      v31 = @"EE";
    }

    else
    {
      v31 = @"EEEE";
    }

    [qword_100085678 setDateFormat:v31];
  }

  else if (descriptionCopy)
  {
    v32 = +[NSLocale currentLocale];
    v33 = [NSDateFormatter dateFormatFromTemplate:@"MMMdd" options:0 locale:v32];

    [qword_100085678 setDateFormat:v33];
  }

  else
  {
    [qword_100085678 setDateStyle:2];
    [qword_100085678 setTimeStyle:0];
  }

  v29 = [qword_100085678 stringFromDate:dateCopy];
LABEL_24:

  return v29;
}

@end