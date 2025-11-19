@interface CALNTriggeredEventNotificationSourceNotificationInfo
- (CALNTriggeredEventNotificationSourceNotificationInfo)initWithTitle:(id)a3 location:(id)a4 locationWithoutPrediction:(id)a5 preferredLocation:(id)a6 startDate:(id)a7 endDate:(id)a8 isAllDay:(BOOL)a9 isTimeSensitive:(BOOL)a10 launchURL:(id)a11 isLocationEvent:(BOOL)a12 eventID:(id)a13 eventObjectID:(id)a14 organizerPhoneNumber:(id)a15 organizerEmailAddress:(id)a16 calendarIdentifier:(id)a17 eventRepresentationDictionary:(id)a18 legacyIdentifier:(id)a19 mapItemURL:(id)a20 conferenceURL:(id)a21 conferenceURLIsBroadcast:(BOOL)a22 mailtoURL:(id)a23 hasSuggestedLocation:(BOOL)a24 eventHasAlarms:(BOOL)a25 alarmID:(id)a26 isOffsetFromTravelTimeStart:(BOOL)a27 lastFireTimeOfAlertOffsetFromTravelTime:(id)a28 allowsLocationAlerts:(BOOL)a29 hypothesis:(id)a30 travelAdvisoryTimelinessPeriod:(unint64_t)a31 forceDisplayOfNewTravelAdvisoryHypotheses:(BOOL)a32 travelAdvisoryDisabled:(BOOL)a33;
- (id)description;
@end

@implementation CALNTriggeredEventNotificationSourceNotificationInfo

- (CALNTriggeredEventNotificationSourceNotificationInfo)initWithTitle:(id)a3 location:(id)a4 locationWithoutPrediction:(id)a5 preferredLocation:(id)a6 startDate:(id)a7 endDate:(id)a8 isAllDay:(BOOL)a9 isTimeSensitive:(BOOL)a10 launchURL:(id)a11 isLocationEvent:(BOOL)a12 eventID:(id)a13 eventObjectID:(id)a14 organizerPhoneNumber:(id)a15 organizerEmailAddress:(id)a16 calendarIdentifier:(id)a17 eventRepresentationDictionary:(id)a18 legacyIdentifier:(id)a19 mapItemURL:(id)a20 conferenceURL:(id)a21 conferenceURLIsBroadcast:(BOOL)a22 mailtoURL:(id)a23 hasSuggestedLocation:(BOOL)a24 eventHasAlarms:(BOOL)a25 alarmID:(id)a26 isOffsetFromTravelTimeStart:(BOOL)a27 lastFireTimeOfAlertOffsetFromTravelTime:(id)a28 allowsLocationAlerts:(BOOL)a29 hypothesis:(id)a30 travelAdvisoryTimelinessPeriod:(unint64_t)a31 forceDisplayOfNewTravelAdvisoryHypotheses:(BOOL)a32 travelAdvisoryDisabled:(BOOL)a33
{
  v99 = a3;
  v98 = a4;
  v38 = a5;
  obj = a6;
  v39 = a6;
  v97 = a7;
  v40 = a8;
  v96 = a11;
  v41 = a13;
  v95 = a14;
  v42 = a15;
  v43 = a16;
  v44 = a17;
  v45 = a18;
  v46 = a19;
  v94 = a20;
  v93 = a21;
  v92 = a23;
  v91 = a26;
  v90 = a28;
  v89 = a30;
  v100.receiver = self;
  v100.super_class = CALNTriggeredEventNotificationSourceNotificationInfo;
  v47 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)&v100 init];
  if (v47)
  {
    v48 = [v99 copy];
    title = v47->_title;
    v47->_title = v48;

    v50 = [v98 copy];
    location = v47->_location;
    v47->_location = v50;

    v52 = [v38 copy];
    locationWithoutPrediction = v47->_locationWithoutPrediction;
    v47->_locationWithoutPrediction = v52;

    objc_storeStrong(&v47->_preferredLocation, obj);
    v54 = [v97 copy];
    startDate = v47->_startDate;
    v47->_startDate = v54;

    v56 = [v40 copy];
    endDate = v47->_endDate;
    v47->_endDate = v56;

    v47->_isAllDay = a9;
    v47->_isTimeSensitive = a10;
    v58 = [v96 copy];
    launchURL = v47->_launchURL;
    v47->_launchURL = v58;

    v47->_isLocationEvent = a12;
    v60 = [v41 copy];
    eventID = v47->_eventID;
    v47->_eventID = v60;

    v62 = [v95 copy];
    eventObjectID = v47->_eventObjectID;
    v47->_eventObjectID = v62;

    v64 = [v42 copy];
    organizerPhoneNumber = v47->_organizerPhoneNumber;
    v47->_organizerPhoneNumber = v64;

    v66 = [v43 copy];
    organizerEmailAddress = v47->_organizerEmailAddress;
    v47->_organizerEmailAddress = v66;

    v68 = [v44 copy];
    calendarIdentifier = v47->_calendarIdentifier;
    v47->_calendarIdentifier = v68;

    v70 = [v45 copy];
    eventRepresentationDictionary = v47->_eventRepresentationDictionary;
    v47->_eventRepresentationDictionary = v70;

    v72 = [v46 copy];
    legacyIdentifier = v47->_legacyIdentifier;
    v47->_legacyIdentifier = v72;

    v74 = [v94 copy];
    mapItemURL = v47->_mapItemURL;
    v47->_mapItemURL = v74;

    v76 = [v93 copy];
    conferenceURL = v47->_conferenceURL;
    v47->_conferenceURL = v76;

    v47->_conferenceURLIsBroadcast = a22;
    v78 = [v92 copy];
    mailtoURL = v47->_mailtoURL;
    v47->_mailtoURL = v78;

    v47->_hasSuggestedLocation = a24;
    v47->_eventHasAlarms = a25;
    v80 = [v91 copy];
    alarmID = v47->_alarmID;
    v47->_alarmID = v80;

    v47->_isOffsetFromTravelTimeStart = a27;
    v82 = [v90 copy];
    lastFireTimeOfAlertOffsetFromTravelTime = v47->_lastFireTimeOfAlertOffsetFromTravelTime;
    v47->_lastFireTimeOfAlertOffsetFromTravelTime = v82;

    v47->_allowsLocationAlerts = a29;
    v84 = [v89 copy];
    hypothesis = v47->_hypothesis;
    v47->_hypothesis = v84;

    v47->_travelAdvisoryTimelinessPeriod = a31;
    v47->_forceDisplayOfNewTravelAdvisoryHypotheses = a32;
    v47->_travelAdvisoryDisabled = a33;
  }

  return v47;
}

- (id)description
{
  v34 = MEMORY[0x277CCACA8];
  v33 = objc_opt_class();
  v39 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self title];
  v38 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self location];
  v37 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self startDate];
  v32 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self endDate];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self isAllDay])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v31 = v3;
  v30 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self launchURL];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self isLocationEvent])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v29 = v4;
  v36 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self eventID];
  v28 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self calendarIdentifier];
  v35 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self eventRepresentationDictionary];
  v27 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self legacyIdentifier];
  v26 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self mapItemURL];
  v25 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self conferenceURL];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self conferenceURLIsBroadcast])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v24 = v5;
  v23 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self mailtoURL];
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
  v8 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self alarmID];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self isOffsetFromTravelTimeStart])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v20 = v9;
  v10 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self lastFireTimeOfAlertOffsetFromTravelTime];
  if ([(CALNTriggeredEventNotificationSourceNotificationInfo *)self allowsLocationAlerts])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self hypothesis];
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

  v16 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self locationWithoutPrediction];
  v17 = [(CALNTriggeredEventNotificationSourceNotificationInfo *)self preferredLocation];
  v18 = [v34 stringWithFormat:@"<%@: %p>(title = %@, location = %@, startDate = %@, endDate = %@, isAllDay = %@, launchURL = %@, isLocationEvent = %@, eventID = %@, calendarIdentifier = %@, eventRepresentationDictionary = %@, legacyIdentifier = %@, mapItemURL = %@, conferenceURL = %@, conferenceURLIsBroadcast = %@, mailtoURL = %@, hasSuggestedLocation = %@, eventHasAlarms = %@, alarmID = %@, isOffsetFromTravelTimeStart = %@, lastFireTimeOfAlertOffsetFromTravelTime = %@, allowsLocationAlerts = %@, hypothesis = %@, travelAdvisoryTimelinessPeriod = %@, forceDisplayOfNewTravelAdvisoryHypotheses = %@, travelAdvisoryDisabled = %@, locationWithoutPrediction = %@, preferredLocation = %@)", v33, self, v39, v38, v37, v32, v31, v30, v29, v36, v28, v35, v27, v26, v25, v24, v23, v22, v21, v8, v20, v10, v11, v12, v13, v14, v15, v16, v17];

  return v18;
}

@end