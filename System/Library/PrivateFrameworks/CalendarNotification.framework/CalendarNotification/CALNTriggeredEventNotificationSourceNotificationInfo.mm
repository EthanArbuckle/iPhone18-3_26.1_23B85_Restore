@interface CALNTriggeredEventNotificationSourceNotificationInfo
- (CALNTriggeredEventNotificationSourceNotificationInfo)initWithTitle:(id)title location:(id)location locationWithoutPrediction:(id)prediction preferredLocation:(id)preferredLocation startDate:(id)date endDate:(id)endDate isAllDay:(BOOL)day isTimeSensitive:(BOOL)self0 launchURL:(id)self1 isLocationEvent:(BOOL)self2 eventID:(id)self3 eventObjectID:(id)self4 organizerPhoneNumber:(id)self5 organizerEmailAddress:(id)self6 calendarIdentifier:(id)self7 eventRepresentationDictionary:(id)self8 legacyIdentifier:(id)self9 mapItemURL:(id)rL conferenceURL:(id)uRL conferenceURLIsBroadcast:(BOOL)broadcast mailtoURL:(id)mailtoURL hasSuggestedLocation:(BOOL)suggestedLocation eventHasAlarms:(BOOL)alarms alarmID:(id)alarmID isOffsetFromTravelTimeStart:(BOOL)start lastFireTimeOfAlertOffsetFromTravelTime:(id)time allowsLocationAlerts:(BOOL)alerts hypothesis:(id)title0 travelAdvisoryTimelinessPeriod:(unint64_t)title1 forceDisplayOfNewTravelAdvisoryHypotheses:(BOOL)title2 travelAdvisoryDisabled:(BOOL)title3;
- (id)description;
@end

@implementation CALNTriggeredEventNotificationSourceNotificationInfo

- (CALNTriggeredEventNotificationSourceNotificationInfo)initWithTitle:(id)title location:(id)location locationWithoutPrediction:(id)prediction preferredLocation:(id)preferredLocation startDate:(id)date endDate:(id)endDate isAllDay:(BOOL)day isTimeSensitive:(BOOL)self0 launchURL:(id)self1 isLocationEvent:(BOOL)self2 eventID:(id)self3 eventObjectID:(id)self4 organizerPhoneNumber:(id)self5 organizerEmailAddress:(id)self6 calendarIdentifier:(id)self7 eventRepresentationDictionary:(id)self8 legacyIdentifier:(id)self9 mapItemURL:(id)rL conferenceURL:(id)uRL conferenceURLIsBroadcast:(BOOL)broadcast mailtoURL:(id)mailtoURL hasSuggestedLocation:(BOOL)suggestedLocation eventHasAlarms:(BOOL)alarms alarmID:(id)alarmID isOffsetFromTravelTimeStart:(BOOL)start lastFireTimeOfAlertOffsetFromTravelTime:(id)time allowsLocationAlerts:(BOOL)alerts hypothesis:(id)title0 travelAdvisoryTimelinessPeriod:(unint64_t)title1 forceDisplayOfNewTravelAdvisoryHypotheses:(BOOL)title2 travelAdvisoryDisabled:(BOOL)title3
{
  titleCopy = title;
  locationCopy = location;
  predictionCopy = prediction;
  obj = preferredLocation;
  preferredLocationCopy = preferredLocation;
  dateCopy = date;
  endDateCopy = endDate;
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  numberCopy = number;
  addressCopy = address;
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  legacyIdentifierCopy = legacyIdentifier;
  rLCopy = rL;
  uRLCopy = uRL;
  mailtoURLCopy = mailtoURL;
  alarmIDCopy = alarmID;
  timeCopy = time;
  hypothesisCopy = hypothesis;
  v100.receiver = self;
  v100.super_class = CALNTriggeredEventNotificationSourceNotificationInfo;
  v47 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)&v100 init];
  if (v47)
  {
    v48 = [titleCopy copy];
    title = v47->_title;
    v47->_title = v48;

    v50 = [locationCopy copy];
    location = v47->_location;
    v47->_location = v50;

    v52 = [predictionCopy copy];
    locationWithoutPrediction = v47->_locationWithoutPrediction;
    v47->_locationWithoutPrediction = v52;

    objc_storeStrong(&v47->_preferredLocation, obj);
    v54 = [dateCopy copy];
    startDate = v47->_startDate;
    v47->_startDate = v54;

    v56 = [endDateCopy copy];
    endDate = v47->_endDate;
    v47->_endDate = v56;

    v47->_isAllDay = day;
    v47->_isTimeSensitive = sensitive;
    v58 = [lCopy copy];
    launchURL = v47->_launchURL;
    v47->_launchURL = v58;

    v47->_isLocationEvent = event;
    v60 = [dCopy copy];
    eventID = v47->_eventID;
    v47->_eventID = v60;

    v62 = [iDCopy copy];
    eventObjectID = v47->_eventObjectID;
    v47->_eventObjectID = v62;

    v64 = [numberCopy copy];
    organizerPhoneNumber = v47->_organizerPhoneNumber;
    v47->_organizerPhoneNumber = v64;

    v66 = [addressCopy copy];
    organizerEmailAddress = v47->_organizerEmailAddress;
    v47->_organizerEmailAddress = v66;

    v68 = [identifierCopy copy];
    calendarIdentifier = v47->_calendarIdentifier;
    v47->_calendarIdentifier = v68;

    v70 = [dictionaryCopy copy];
    eventRepresentationDictionary = v47->_eventRepresentationDictionary;
    v47->_eventRepresentationDictionary = v70;

    v72 = [legacyIdentifierCopy copy];
    legacyIdentifier = v47->_legacyIdentifier;
    v47->_legacyIdentifier = v72;

    v74 = [rLCopy copy];
    mapItemURL = v47->_mapItemURL;
    v47->_mapItemURL = v74;

    v76 = [uRLCopy copy];
    conferenceURL = v47->_conferenceURL;
    v47->_conferenceURL = v76;

    v47->_conferenceURLIsBroadcast = broadcast;
    v78 = [mailtoURLCopy copy];
    mailtoURL = v47->_mailtoURL;
    v47->_mailtoURL = v78;

    v47->_hasSuggestedLocation = suggestedLocation;
    v47->_eventHasAlarms = alarms;
    v80 = [alarmIDCopy copy];
    alarmID = v47->_alarmID;
    v47->_alarmID = v80;

    v47->_isOffsetFromTravelTimeStart = start;
    v82 = [timeCopy copy];
    lastFireTimeOfAlertOffsetFromTravelTime = v47->_lastFireTimeOfAlertOffsetFromTravelTime;
    v47->_lastFireTimeOfAlertOffsetFromTravelTime = v82;

    v47->_allowsLocationAlerts = alerts;
    v84 = [hypothesisCopy copy];
    hypothesis = v47->_hypothesis;
    v47->_hypothesis = v84;

    v47->_travelAdvisoryTimelinessPeriod = period;
    v47->_forceDisplayOfNewTravelAdvisoryHypotheses = hypotheses;
    v47->_travelAdvisoryDisabled = disabled;
  }

  return v47;
}

- (id)description
{
  v34 = MEMORY[0x277CCACA8];
  v33 = objc_opt_class();
  title = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self title];
  location = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self location];
  startDate = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self startDate];
  endDate = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self endDate];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self isAllDay])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v31 = v3;
  launchURL = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self launchURL];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self isLocationEvent])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v29 = v4;
  eventID = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self eventID];
  calendarIdentifier = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self calendarIdentifier];
  eventRepresentationDictionary = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self eventRepresentationDictionary];
  legacyIdentifier = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self legacyIdentifier];
  mapItemURL = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self mapItemURL];
  conferenceURL = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self conferenceURL];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self conferenceURLIsBroadcast])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v24 = v5;
  mailtoURL = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self mailtoURL];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self hasSuggestedLocation])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v22 = v6;
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self eventHasAlarms])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v21 = v7;
  alarmID = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self alarmID];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self isOffsetFromTravelTimeStart])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v20 = v9;
  lastFireTimeOfAlertOffsetFromTravelTime = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self lastFireTimeOfAlertOffsetFromTravelTime];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self allowsLocationAlerts])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  hypothesis = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self hypothesis];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CALNTriggeredEventNotificationSourceNotificationInfo travelAdvisoryTimelinessPeriod](self, "travelAdvisoryTimelinessPeriod")}];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self forceDisplayOfNewTravelAdvisoryHypotheses])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self travelAdvisoryDisabled])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  locationWithoutPrediction = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self locationWithoutPrediction];
  preferredLocation = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self preferredLocation];
  v18 = [v34 stringWithFormat:@"<%@: %p>(title = %@, location = %@, startDate = %@, endDate = %@, isAllDay = %@, launchURL = %@, isLocationEvent = %@, eventID = %@, calendarIdentifier = %@, eventRepresentationDictionary = %@, legacyIdentifier = %@, mapItemURL = %@, conferenceURL = %@, conferenceURLIsBroadcast = %@, mailtoURL = %@, hasSuggestedLocation = %@, eventHasAlarms = %@, alarmID = %@, isOffsetFromTravelTimeStart = %@, lastFireTimeOfAlertOffsetFromTravelTime = %@, allowsLocationAlerts = %@, hypothesis = %@, travelAdvisoryTimelinessPeriod = %@, forceDisplayOfNewTravelAdvisoryHypotheses = %@, travelAdvisoryDisabled = %@, locationWithoutPrediction = %@, preferredLocation = %@)", v33, self, title, location, startDate, endDate, v31, launchURL, v29, eventID, calendarIdentifier, eventRepresentationDictionary, legacyIdentifier, mapItemURL, conferenceURL, v24, mailtoURL, v22, v21, alarmID, v20, lastFireTimeOfAlertOffsetFromTravelTime, v11, hypothesis, v13, v14, v15, locationWithoutPrediction, preferredLocation];

  return v18;
}

@end