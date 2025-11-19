@interface CALNTriggeredEventNotificationInfo
- (CALNTriggeredEventNotificationInfo)initWithTitle:(id)a3 location:(id)a4 locationWithoutPrediction:(id)a5 startDate:(id)a6 endDate:(id)a7 isAllDay:(BOOL)a8 isTimeSensitive:(BOOL)a9 eventID:(id)a10 eventOccurrenceID:(id)a11 eventObjectID:(id)a12 organizerPhoneNumber:(id)a13 organizerEmailAddress:(id)a14 calendarIdentifier:(id)a15 eventRepresentationDictionary:(id)a16 legacyIdentifier:(id)a17 preferredLocation:(id)a18 conferenceURL:(id)a19 conferenceURLIsBroadcast:(BOOL)a20 mailtoURL:(id)a21 hasSuggestedLocation:(BOOL)a22 eventHasAlarms:(BOOL)a23 allowsLocationAlerts:(BOOL)a24 forceDisplayOfNewTravelAdvisoryHypotheses:(BOOL)a25 travelAdvisoryDisabled:(BOOL)a26;
- (id)description;
@end

@implementation CALNTriggeredEventNotificationInfo

- (CALNTriggeredEventNotificationInfo)initWithTitle:(id)a3 location:(id)a4 locationWithoutPrediction:(id)a5 startDate:(id)a6 endDate:(id)a7 isAllDay:(BOOL)a8 isTimeSensitive:(BOOL)a9 eventID:(id)a10 eventOccurrenceID:(id)a11 eventObjectID:(id)a12 organizerPhoneNumber:(id)a13 organizerEmailAddress:(id)a14 calendarIdentifier:(id)a15 eventRepresentationDictionary:(id)a16 legacyIdentifier:(id)a17 preferredLocation:(id)a18 conferenceURL:(id)a19 conferenceURLIsBroadcast:(BOOL)a20 mailtoURL:(id)a21 hasSuggestedLocation:(BOOL)a22 eventHasAlarms:(BOOL)a23 allowsLocationAlerts:(BOOL)a24 forceDisplayOfNewTravelAdvisoryHypotheses:(BOOL)a25 travelAdvisoryDisabled:(BOOL)a26
{
  v75 = a3;
  v74 = a4;
  v79 = a5;
  v78 = a6;
  v77 = a7;
  v76 = a10;
  v30 = a11;
  v31 = a12;
  v73 = a13;
  v32 = a14;
  v33 = a15;
  v34 = a16;
  v35 = a17;
  v36 = a18;
  v37 = a19;
  v38 = a21;
  v80.receiver = self;
  v80.super_class = CALNTriggeredEventNotificationInfo;
  v39 = [(CALNTriggeredEventNotificationInfo *)&v80 init];
  if (v39)
  {
    v40 = [v75 copy];
    title = v39->_title;
    v39->_title = v40;

    v42 = [v74 copy];
    location = v39->_location;
    v39->_location = v42;

    v44 = [v79 copy];
    locationWithoutPrediction = v39->_locationWithoutPrediction;
    v39->_locationWithoutPrediction = v44;

    v46 = [v78 copy];
    startDate = v39->_startDate;
    v39->_startDate = v46;

    v48 = [v77 copy];
    endDate = v39->_endDate;
    v39->_endDate = v48;

    v39->_isAllDay = a8;
    v39->_isTimeSensitive = a9;
    v50 = [v76 copy];
    eventID = v39->_eventID;
    v39->_eventID = v50;

    v52 = [v30 copy];
    eventOccurrenceID = v39->_eventOccurrenceID;
    v39->_eventOccurrenceID = v52;

    v54 = [v31 copy];
    eventObjectID = v39->_eventObjectID;
    v39->_eventObjectID = v54;

    v56 = [v73 copy];
    organizerPhoneNumber = v39->_organizerPhoneNumber;
    v39->_organizerPhoneNumber = v56;

    v58 = [v32 copy];
    organizerEmailAddress = v39->_organizerEmailAddress;
    v39->_organizerEmailAddress = v58;

    v60 = [v33 copy];
    calendarIdentifier = v39->_calendarIdentifier;
    v39->_calendarIdentifier = v60;

    v62 = [v34 copy];
    eventRepresentationDictionary = v39->_eventRepresentationDictionary;
    v39->_eventRepresentationDictionary = v62;

    v64 = [v35 copy];
    legacyIdentifier = v39->_legacyIdentifier;
    v39->_legacyIdentifier = v64;

    objc_storeStrong(&v39->_preferredLocation, a18);
    v66 = [v37 copy];
    conferenceURL = v39->_conferenceURL;
    v39->_conferenceURL = v66;

    v39->_conferenceURLIsBroadcast = a20;
    v68 = [v38 copy];
    mailtoURL = v39->_mailtoURL;
    v39->_mailtoURL = v68;

    v39->_hasSuggestedLocation = a22;
    v39->_eventHasAlarms = a23;
    v39->_allowsLocationAlerts = a24;
    v39->_forceDisplayOfNewTravelAdvisoryHypotheses = a25;
    v39->_travelAdvisoryDisabled = a26;
  }

  return v39;
}

- (id)description
{
  v26 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  v28 = [(CALNTriggeredEventNotificationInfo *)self title];
  v27 = [(CALNTriggeredEventNotificationInfo *)self location];
  v24 = [(CALNTriggeredEventNotificationInfo *)self startDate];
  v23 = [(CALNTriggeredEventNotificationInfo *)self endDate];
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
  v21 = [(CALNTriggeredEventNotificationInfo *)self eventID];
  v20 = [(CALNTriggeredEventNotificationInfo *)self eventOccurrenceID];
  v19 = [(CALNTriggeredEventNotificationInfo *)self calendarIdentifier];
  v5 = [(CALNTriggeredEventNotificationInfo *)self eventRepresentationDictionary];
  v6 = [(CALNTriggeredEventNotificationInfo *)self legacyIdentifier];
  v18 = [(CALNTriggeredEventNotificationInfo *)self preferredLocation];
  v17 = [(CALNTriggeredEventNotificationInfo *)self conferenceURL];
  if ([(CALNTriggeredEventNotificationInfo *)self conferenceURLIsBroadcast])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v16 = v7;
  v8 = [(CALNTriggeredEventNotificationInfo *)self mailtoURL];
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

  v13 = [(CALNTriggeredEventNotificationInfo *)self locationWithoutPrediction];
  v14 = [v26 stringWithFormat:@"<%@: %p>(title = %@, location = %@, startDate = %@, endDate = %@, isAllDay = %@, eventID = %@, eventOccurrenceID = %@, calendarIdentifier = %@, eventRepresentationDictionary = %@, legacyIdentifier = %@, preferredLocation = %@, conferenceURLIsBroadcast = %@, conferenceURLIsBroadcast = %@, mailtoURL = %@, hasSuggestedLocation = %@, eventHasAlarms = %@, allowsLocationAlerts = %@, forceDisplayOfNewTravelAdvisoryHypotheses = %@, travelAdvisoryDisabled = %@, locationWithoutPrediction = %@)", v25, self, v28, v27, v24, v23, v22, v21, v20, v19, v5, v6, v18, v17, v16, v8, v9, v10, v11, v12, v3, v13];

  return v14;
}

@end