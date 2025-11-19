@interface EKCalendarItemAlertInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isPurelyATimeToLeaveAlert;
- (CLLocationCoordinate2D)geoLocationCoordinates;
- (EKCalendarItemAlertInfo)initWithTitle:(id)a3 location:(id)a4 date:(id)a5 endDate:(id)a6 timeZone:(id)a7 allDay:(BOOL)a8 tentative:(BOOL)a9 publisherBulletinID:(id)a10 entityID:(id)a11 appLink:(id)a12 proximity:(int64_t)a13 externalID:(id)a14 databaseID:(int)a15 acknowledged:(BOOL)a16 dismissalID:(id)a17 alarmID:(id)a18 isOffsetFromTravelTimeStart:(BOOL)a19 refiring:(BOOL)a20 pseudoEvent:(BOOL)a21;
- (NSString)recordID;
- (id)description;
- (unint64_t)hash;
- (void)resetTimeToLeaveDisplayState;
@end

@implementation EKCalendarItemAlertInfo

- (EKCalendarItemAlertInfo)initWithTitle:(id)a3 location:(id)a4 date:(id)a5 endDate:(id)a6 timeZone:(id)a7 allDay:(BOOL)a8 tentative:(BOOL)a9 publisherBulletinID:(id)a10 entityID:(id)a11 appLink:(id)a12 proximity:(int64_t)a13 externalID:(id)a14 databaseID:(int)a15 acknowledged:(BOOL)a16 dismissalID:(id)a17 alarmID:(id)a18 isOffsetFromTravelTimeStart:(BOOL)a19 refiring:(BOOL)a20 pseudoEvent:(BOOL)a21
{
  v60 = a3;
  v25 = a4;
  v26 = a5;
  v59 = a6;
  v58 = a7;
  v57 = a10;
  v56 = a11;
  v55 = a12;
  v27 = a14;
  v28 = a17;
  v29 = a18;
  v61.receiver = self;
  v61.super_class = EKCalendarItemAlertInfo;
  v30 = [(EKCalendarItemAlertInfo *)&v61 init];
  v31 = v30;
  if (v30)
  {
    v30->_triggerType = 0;
    v32 = [v60 copy];
    title = v31->_title;
    v31->_title = v32;

    v34 = [v25 copy];
    location = v31->_location;
    v31->_location = v34;

    v36 = [v26 copy];
    eventDate = v31->_eventDate;
    v31->_eventDate = v36;

    v38 = [v59 copy];
    endDate = v31->_endDate;
    v31->_endDate = v38;

    v40 = [v58 copy];
    eventTimeZone = v31->_eventTimeZone;
    v31->_eventTimeZone = v40;

    v31->_allDay = a8;
    v31->_tentative = a9;
    objc_storeStrong(&v31->_appLink, a12);
    v42 = [v56 copy];
    entityID = v31->_entityID;
    v31->_entityID = v42;

    v31->_databaseID = a15;
    v44 = [v57 copy];
    publisherBulletinID = v31->_publisherBulletinID;
    v31->_publisherBulletinID = v44;

    v31->_proximity = a13;
    v46 = [v27 copy];
    externalID = v31->_externalID;
    v31->_externalID = v46;

    v31->_acknowledged = a16;
    v48 = [v28 copy];
    dismissalID = v31->_dismissalID;
    v31->_dismissalID = v48;

    v50 = [v29 copy];
    alarmID = v31->_alarmID;
    v31->_alarmID = v50;

    v31->_isOffsetFromTravelTimeStart = a19;
    v31->_refiring = a20;
    v31->_isPseudoEvent = a21;
  }

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(EKCalendarItemAlertInfo *)self title];
  v6 = [(EKCalendarItemAlertInfo *)self eventDate];
  v7 = [(EKCalendarItemAlertInfo *)self eventTimeZone];
  v8 = [v3 stringWithFormat:@"%@ <%p> {title = %@ date = %@; timeZone = %@}", v4, self, v5, v6, v7];;

  return v8;
}

- (unint64_t)hash
{
  v3 = [(EKCalendarItemAlertInfo *)self recordID];
  v4 = [v3 hash];
  v5 = [(NSDate *)self->_eventDate hash];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(EKCalendarItemAlertInfo *)self recordID];
    v6 = [v4 recordID];
    if ([v5 isEqual:v6])
    {
      eventDate = self->_eventDate;
      if (eventDate == v4[8])
      {
        v8 = 1;
      }

      else
      {
        v8 = [(NSDate *)eventDate isEqual:?];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)recordID
{
  v3 = [(EKCalendarItemAlertInfo *)self publisherBulletinID];
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = [(EKCalendarItemAlertInfo *)self entityID];
    v5 = [v6 absoluteString];
  }

  return v5;
}

- (BOOL)isPurelyATimeToLeaveAlert
{
  v2 = [(EKCalendarItemAlertInfo *)self alarmID];
  v3 = v2 == 0;

  return v3;
}

- (void)resetTimeToLeaveDisplayState
{
  [(EKCalendarItemAlertInfo *)self setHasDisplayedLeaveByMessage:0];
  [(EKCalendarItemAlertInfo *)self setHasDisplayedLeaveNowMessage:0];

  [(EKCalendarItemAlertInfo *)self setHasDisplayedRunningLateMessage:0];
}

- (CLLocationCoordinate2D)geoLocationCoordinates
{
  latitude = self->_geoLocationCoordinates.latitude;
  longitude = self->_geoLocationCoordinates.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

@end