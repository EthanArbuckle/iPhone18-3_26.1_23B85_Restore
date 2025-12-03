@interface EKCalendarItemAlertInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isPurelyATimeToLeaveAlert;
- (CLLocationCoordinate2D)geoLocationCoordinates;
- (EKCalendarItemAlertInfo)initWithTitle:(id)title location:(id)location date:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day tentative:(BOOL)tentative publisherBulletinID:(id)self0 entityID:(id)self1 appLink:(id)self2 proximity:(int64_t)self3 externalID:(id)self4 databaseID:(int)self5 acknowledged:(BOOL)self6 dismissalID:(id)self7 alarmID:(id)self8 isOffsetFromTravelTimeStart:(BOOL)self9 refiring:(BOOL)refiring pseudoEvent:(BOOL)event;
- (NSString)recordID;
- (id)description;
- (unint64_t)hash;
- (void)resetTimeToLeaveDisplayState;
@end

@implementation EKCalendarItemAlertInfo

- (EKCalendarItemAlertInfo)initWithTitle:(id)title location:(id)location date:(id)date endDate:(id)endDate timeZone:(id)zone allDay:(BOOL)day tentative:(BOOL)tentative publisherBulletinID:(id)self0 entityID:(id)self1 appLink:(id)self2 proximity:(int64_t)self3 externalID:(id)self4 databaseID:(int)self5 acknowledged:(BOOL)self6 dismissalID:(id)self7 alarmID:(id)self8 isOffsetFromTravelTimeStart:(BOOL)self9 refiring:(BOOL)refiring pseudoEvent:(BOOL)event
{
  titleCopy = title;
  locationCopy = location;
  dateCopy = date;
  endDateCopy = endDate;
  zoneCopy = zone;
  dCopy = d;
  iDCopy = iD;
  linkCopy = link;
  externalIDCopy = externalID;
  dismissalIDCopy = dismissalID;
  alarmIDCopy = alarmID;
  v61.receiver = self;
  v61.super_class = EKCalendarItemAlertInfo;
  v30 = [(EKCalendarItemAlertInfo *)&v61 init];
  v31 = v30;
  if (v30)
  {
    v30->_triggerType = 0;
    v32 = [titleCopy copy];
    title = v31->_title;
    v31->_title = v32;

    v34 = [locationCopy copy];
    location = v31->_location;
    v31->_location = v34;

    v36 = [dateCopy copy];
    eventDate = v31->_eventDate;
    v31->_eventDate = v36;

    v38 = [endDateCopy copy];
    endDate = v31->_endDate;
    v31->_endDate = v38;

    v40 = [zoneCopy copy];
    eventTimeZone = v31->_eventTimeZone;
    v31->_eventTimeZone = v40;

    v31->_allDay = day;
    v31->_tentative = tentative;
    objc_storeStrong(&v31->_appLink, link);
    v42 = [iDCopy copy];
    entityID = v31->_entityID;
    v31->_entityID = v42;

    v31->_databaseID = databaseID;
    v44 = [dCopy copy];
    publisherBulletinID = v31->_publisherBulletinID;
    v31->_publisherBulletinID = v44;

    v31->_proximity = proximity;
    v46 = [externalIDCopy copy];
    externalID = v31->_externalID;
    v31->_externalID = v46;

    v31->_acknowledged = acknowledged;
    v48 = [dismissalIDCopy copy];
    dismissalID = v31->_dismissalID;
    v31->_dismissalID = v48;

    v50 = [alarmIDCopy copy];
    alarmID = v31->_alarmID;
    v31->_alarmID = v50;

    v31->_isOffsetFromTravelTimeStart = start;
    v31->_refiring = refiring;
    v31->_isPseudoEvent = event;
  }

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  title = [(EKCalendarItemAlertInfo *)self title];
  eventDate = [(EKCalendarItemAlertInfo *)self eventDate];
  eventTimeZone = [(EKCalendarItemAlertInfo *)self eventTimeZone];
  v8 = [v3 stringWithFormat:@"%@ <%p> {title = %@ date = %@; timeZone = %@}", v4, self, title, eventDate, eventTimeZone];;

  return v8;
}

- (unint64_t)hash
{
  recordID = [(EKCalendarItemAlertInfo *)self recordID];
  v4 = [recordID hash];
  v5 = [(NSDate *)self->_eventDate hash];

  return v5 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    recordID = [(EKCalendarItemAlertInfo *)self recordID];
    recordID2 = [equalCopy recordID];
    if ([recordID isEqual:recordID2])
    {
      eventDate = self->_eventDate;
      if (eventDate == equalCopy[8])
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
  publisherBulletinID = [(EKCalendarItemAlertInfo *)self publisherBulletinID];
  v4 = publisherBulletinID;
  if (publisherBulletinID && [publisherBulletinID length])
  {
    absoluteString = v4;
  }

  else
  {
    entityID = [(EKCalendarItemAlertInfo *)self entityID];
    absoluteString = [entityID absoluteString];
  }

  return absoluteString;
}

- (BOOL)isPurelyATimeToLeaveAlert
{
  alarmID = [(EKCalendarItemAlertInfo *)self alarmID];
  v3 = alarmID == 0;

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