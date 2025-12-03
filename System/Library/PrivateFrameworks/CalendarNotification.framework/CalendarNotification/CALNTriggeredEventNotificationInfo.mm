@interface CALNTriggeredEventNotificationInfo
- (CALNTriggeredEventNotificationInfo)initWithTitle:(id)title location:(id)location locationWithoutPrediction:(id)prediction startDate:(id)date endDate:(id)endDate isAllDay:(BOOL)day isTimeSensitive:(BOOL)sensitive eventID:(id)self0 eventOccurrenceID:(id)self1 eventObjectID:(id)self2 organizerPhoneNumber:(id)self3 organizerEmailAddress:(id)self4 calendarIdentifier:(id)self5 eventRepresentationDictionary:(id)self6 legacyIdentifier:(id)self7 preferredLocation:(id)self8 conferenceURL:(id)self9 conferenceURLIsBroadcast:(BOOL)broadcast mailtoURL:(id)rL hasSuggestedLocation:(BOOL)suggestedLocation eventHasAlarms:(BOOL)alarms allowsLocationAlerts:(BOOL)alerts forceDisplayOfNewTravelAdvisoryHypotheses:(BOOL)hypotheses travelAdvisoryDisabled:(BOOL)disabled;
- (id)description;
@end

@implementation CALNTriggeredEventNotificationInfo

- (CALNTriggeredEventNotificationInfo)initWithTitle:(id)title location:(id)location locationWithoutPrediction:(id)prediction startDate:(id)date endDate:(id)endDate isAllDay:(BOOL)day isTimeSensitive:(BOOL)sensitive eventID:(id)self0 eventOccurrenceID:(id)self1 eventObjectID:(id)self2 organizerPhoneNumber:(id)self3 organizerEmailAddress:(id)self4 calendarIdentifier:(id)self5 eventRepresentationDictionary:(id)self6 legacyIdentifier:(id)self7 preferredLocation:(id)self8 conferenceURL:(id)self9 conferenceURLIsBroadcast:(BOOL)broadcast mailtoURL:(id)rL hasSuggestedLocation:(BOOL)suggestedLocation eventHasAlarms:(BOOL)alarms allowsLocationAlerts:(BOOL)alerts forceDisplayOfNewTravelAdvisoryHypotheses:(BOOL)hypotheses travelAdvisoryDisabled:(BOOL)disabled
{
  titleCopy = title;
  locationCopy = location;
  predictionCopy = prediction;
  dateCopy = date;
  endDateCopy = endDate;
  dCopy = d;
  iDCopy = iD;
  objectIDCopy = objectID;
  numberCopy = number;
  addressCopy = address;
  identifierCopy = identifier;
  dictionaryCopy = dictionary;
  legacyIdentifierCopy = legacyIdentifier;
  preferredLocationCopy = preferredLocation;
  lCopy = l;
  rLCopy = rL;
  v80.receiver = self;
  v80.super_class = CALNTriggeredEventNotificationInfo;
  v39 = [(CALNTriggeredEventNotificationInfo *)&v80 init];
  if (v39)
  {
    v40 = [titleCopy copy];
    title = v39->_title;
    v39->_title = v40;

    v42 = [locationCopy copy];
    location = v39->_location;
    v39->_location = v42;

    v44 = [predictionCopy copy];
    locationWithoutPrediction = v39->_locationWithoutPrediction;
    v39->_locationWithoutPrediction = v44;

    v46 = [dateCopy copy];
    startDate = v39->_startDate;
    v39->_startDate = v46;

    v48 = [endDateCopy copy];
    endDate = v39->_endDate;
    v39->_endDate = v48;

    v39->_isAllDay = day;
    v39->_isTimeSensitive = sensitive;
    v50 = [dCopy copy];
    eventID = v39->_eventID;
    v39->_eventID = v50;

    v52 = [iDCopy copy];
    eventOccurrenceID = v39->_eventOccurrenceID;
    v39->_eventOccurrenceID = v52;

    v54 = [objectIDCopy copy];
    eventObjectID = v39->_eventObjectID;
    v39->_eventObjectID = v54;

    v56 = [numberCopy copy];
    organizerPhoneNumber = v39->_organizerPhoneNumber;
    v39->_organizerPhoneNumber = v56;

    v58 = [addressCopy copy];
    organizerEmailAddress = v39->_organizerEmailAddress;
    v39->_organizerEmailAddress = v58;

    v60 = [identifierCopy copy];
    calendarIdentifier = v39->_calendarIdentifier;
    v39->_calendarIdentifier = v60;

    v62 = [dictionaryCopy copy];
    eventRepresentationDictionary = v39->_eventRepresentationDictionary;
    v39->_eventRepresentationDictionary = v62;

    v64 = [legacyIdentifierCopy copy];
    legacyIdentifier = v39->_legacyIdentifier;
    v39->_legacyIdentifier = v64;

    objc_storeStrong(&v39->_preferredLocation, preferredLocation);
    v66 = [lCopy copy];
    conferenceURL = v39->_conferenceURL;
    v39->_conferenceURL = v66;

    v39->_conferenceURLIsBroadcast = broadcast;
    v68 = [rLCopy copy];
    mailtoURL = v39->_mailtoURL;
    v39->_mailtoURL = v68;

    v39->_hasSuggestedLocation = suggestedLocation;
    v39->_eventHasAlarms = alarms;
    v39->_allowsLocationAlerts = alerts;
    v39->_forceDisplayOfNewTravelAdvisoryHypotheses = hypotheses;
    v39->_travelAdvisoryDisabled = disabled;
  }

  return v39;
}

- (id)description
{
  v26 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  title = [(CALNTriggeredEventNotificationInfo *)self title];
  location = [(CALNTriggeredEventNotificationInfo *)self location];
  startDate = [(CALNTriggeredEventNotificationInfo *)self startDate];
  endDate = [(CALNTriggeredEventNotificationInfo *)self endDate];
  v3 = @"YES";
  if ([(CALNTriggeredEventNotificationInfo *)self isAllDay])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v22 = v4;
  eventID = [(CALNTriggeredEventNotificationInfo *)self eventID];
  eventOccurrenceID = [(CALNTriggeredEventNotificationInfo *)self eventOccurrenceID];
  calendarIdentifier = [(CALNTriggeredEventNotificationInfo *)self calendarIdentifier];
  eventRepresentationDictionary = [(CALNTriggeredEventNotificationInfo *)self eventRepresentationDictionary];
  legacyIdentifier = [(CALNTriggeredEventNotificationInfo *)self legacyIdentifier];
  preferredLocation = [(CALNTriggeredEventNotificationInfo *)self preferredLocation];
  conferenceURL = [(CALNTriggeredEventNotificationInfo *)self conferenceURL];
  if ([(CALNTriggeredEventNotificationInfo *)self conferenceURLIsBroadcast])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v16 = v7;
  mailtoURL = [(CALNTriggeredEventNotificationInfo *)self mailtoURL];
  if ([(CALNTriggeredEventNotificationInfo *)self hasSuggestedLocation])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(CALNTriggeredEventNotificationInfo *)self eventHasAlarms])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(CALNTriggeredEventNotificationInfo *)self allowsLocationAlerts])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if ([(CALNTriggeredEventNotificationInfo *)self forceDisplayOfNewTravelAdvisoryHypotheses])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (![(CALNTriggeredEventNotificationInfo *)self travelAdvisoryDisabled])
  {
    v3 = @"NO";
  }

  locationWithoutPrediction = [(CALNTriggeredEventNotificationInfo *)self locationWithoutPrediction];
  v14 = [v26 stringWithFormat:@"<%@: %p>(title = %@, location = %@, startDate = %@, endDate = %@, isAllDay = %@, eventID = %@, eventOccurrenceID = %@, calendarIdentifier = %@, eventRepresentationDictionary = %@, legacyIdentifier = %@, preferredLocation = %@, conferenceURLIsBroadcast = %@, conferenceURLIsBroadcast = %@, mailtoURL = %@, hasSuggestedLocation = %@, eventHasAlarms = %@, allowsLocationAlerts = %@, forceDisplayOfNewTravelAdvisoryHypotheses = %@, travelAdvisoryDisabled = %@, locationWithoutPrediction = %@)", v25, self, title, location, startDate, endDate, v22, eventID, eventOccurrenceID, calendarIdentifier, eventRepresentationDictionary, legacyIdentifier, preferredLocation, conferenceURL, v16, mailtoURL, v9, v10, v11, v12, v3, locationWithoutPrediction];

  return v14;
}

@end