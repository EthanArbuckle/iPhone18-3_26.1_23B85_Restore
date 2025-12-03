@interface MNTrafficIncidentAlert
+ (id)_validTrafficIncidentAlertsForBannerTexts:(id)texts mainRouteInfo:(id)info alternateRouteInfo:(id)routeInfo;
+ (id)validTrafficIncidentAlertsForETAUpdate:(id)update alternateRouteInfo:(id)info;
+ (id)validTrafficIncidentAlertsForNewRoute:(id)route alternateRouteInfo:(id)info;
+ (void)_addDebugArguments:(id)arguments;
- (GEONavigabilityInfo)originalRouteNavigability;
- (GEOPBTransitArtwork)artwork;
- (MNNavigationAlertButtonInfo)acceptButtonInfo;
- (MNNavigationAlertButtonInfo)defaultButtonInfo;
- (MNTrafficIncidentAlert)initWithCoder:(id)coder;
- (NSArray)alertDescriptions;
- (NSArray)alertTitles;
- (NSArray)spokenTexts;
- (NSMutableArray)oldRouteIncidents;
- (double)alertDisplayDuration;
- (double)newEstimatedTime;
- (double)oldEstimatedTime;
- (double)oldHistoricTime;
- (id)_dynamicStringValues;
- (id)_initWithGeoTrafficBannerText:(id)text mainRouteInfo:(id)info alternateRouteInfo:(id)routeInfo;
- (id)description;
- (unint64_t)secondsSaved;
- (void)_initRouteCoordinates;
- (void)_populateButtonInfo:(id)info;
- (void)_populateIncidentDetails:(id)details;
- (void)_populateServerFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
- (void)updateAlertIDWithAlert:(id)alert;
- (void)updateLocation:(id)location;
@end

@implementation MNTrafficIncidentAlert

- (void)_populateIncidentDetails:(id)details
{
  if ([(GEOTrafficBannerText *)self->_geoTrafficBannerText hasIncidentIndex])
  {
    incidentIndex = [(GEOTrafficBannerText *)self->_geoTrafficBannerText incidentIndex];
    traffic = [(MNActiveRouteInfo *)self->_mainRouteInfo traffic];
    routeIncidents = [traffic routeIncidents];

    if ([routeIncidents count] > incidentIndex)
    {
      v6 = [routeIncidents objectAtIndexedSubscript:incidentIndex];
      incident = [v6 incident];
      incident = self->_incident;
      self->_incident = incident;
    }
  }
}

- (void)_populateButtonInfo:(id)info
{
  selfCopy = self;
  infoCopy = info;
  array = [MEMORY[0x1E695DF70] array];
  buttons = [infoCopy buttons];
  v5 = [buttons count];

  if (v5)
  {
    v6 = 0;
    do
    {
      buttons2 = [infoCopy buttons];
      v8 = [buttons2 objectAtIndex:v6];

      if ([v8 hasAction] && objc_msgSend(v8, "hasText"))
      {
        action = [v8 action];
        if (action == 2)
        {
          v10 = 2;
        }

        else
        {
          v10 = action == 1;
        }

        if ([infoCopy hasDefaultButtonIndex])
        {
          v11 = v6 == [infoCopy defaultButtonIndex];
        }

        else
        {
          v11 = 0;
        }

        v12 = objc_alloc(MEMORY[0x1E69A1CA8]);
        text = [v8 text];
        v14 = [v12 initWithGeoFormattedString:text];

        v15 = -[MNNavigationAlertButtonInfo initWithAction:title:buttonDisplay:isDefaultButton:]([MNNavigationAlertButtonInfo alloc], "initWithAction:title:buttonDisplay:isDefaultButton:", v10, v14, [v8 buttonDisplay], v11);
        [array addObject:v15];
      }

      ++v6;
      buttons3 = [infoCopy buttons];
      v17 = [buttons3 count];
    }

    while (v6 < v17);
  }

  v18 = [array copy];
  v19 = *(v21 + 200);
  *(v21 + 200) = v18;
}

- (void)_populateServerFields:(id)fields
{
  v19 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  v5 = MEMORY[0x1E696AEC0];
  bannerDescription = [fieldsCopy bannerDescription];
  v7 = [v5 _navigation_stringForServerFormattedString:bannerDescription];
  bannerDescription = self->_bannerDescription;
  self->_bannerDescription = v7;

  bannerId = [fieldsCopy bannerId];
  bannerID = self->_bannerID;
  self->_bannerID = bannerId;

  eventInfo = [fieldsCopy eventInfo];
  eventInfo = self->_eventInfo;
  self->_eventInfo = eventInfo;

  analyticsMessageValue = [fieldsCopy analyticsMessageValue];
  analyticsMessage = self->_analyticsMessage;
  self->_analyticsMessage = analyticsMessageValue;

  if (!self->_bannerID)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138477827;
      v18 = fieldsCopy;
      _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_ERROR, "Received a traffic banner text which is missing a banner ID: %{private}@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)coder
{
  alertID = self->_alertID;
  coderCopy = coder;
  [coderCopy encodeObject:alertID forKey:@"_alertID"];
  [coderCopy encodeObject:self->_etaResponseID forKey:@"_etaResponseID"];
  [coderCopy encodeInteger:self->_alertType forKey:@"_alertType"];
  [coderCopy encodeObject:self->_geoTrafficBannerText forKey:@"_geoTrafficBannerText"];
  [coderCopy encodeObject:self->_mainRouteInfo forKey:@"_mainRouteInfo"];
  [coderCopy encodeObject:self->_alternateRouteInfo forKey:@"_alternateRouteInfo"];
  [coderCopy encodeInteger:self->_startValidCoordinateRange.index forKey:@"_startValidCoordinateRange.index"];
  [coderCopy encodeDouble:@"_startValidCoordinateRange.offset" forKey:self->_startValidCoordinateRange.offset];
  [coderCopy encodeInteger:self->_endValidCoordinateRange.index forKey:@"_endValidCoordinateRange.index"];
  [coderCopy encodeDouble:@"_endValidCoordinateRange.offset" forKey:self->_endValidCoordinateRange.offset];
  [coderCopy encodeInteger:self->_incidentCoordinate.index forKey:@"_incidentCoordinate.index"];
  [coderCopy encodeDouble:@"_incidentCoordinate.offset" forKey:self->_incidentCoordinate.offset];
  [coderCopy encodeObject:self->_cameraInput forKey:@"_cameraInput"];
  [coderCopy encodeInteger:self->_alternateEndValidCoordinateRange.index forKey:@"_alternateEndValidCoordinateRange.index"];
  [coderCopy encodeDouble:@"_alternateEndValidCoordinateRange.offset" forKey:self->_alternateEndValidCoordinateRange.offset];
  [coderCopy encodeObject:self->_triggerRange forKey:@"_triggerRange"];
  [coderCopy encodeObject:self->_progressBarTriggerRange forKey:@"_progressBarTriggerRange"];
  [coderCopy encodeInteger:self->_priority forKey:@"_priority"];
  [coderCopy encodeDouble:@"_minDisplayTime" forKey:self->_minDisplayTime];
  [coderCopy encodeDouble:@"_overlapDelayTime" forKey:self->_overlapDelayTime];
  [coderCopy encodeBool:self->_persistAcrossUpdates forKey:@"_persistAcrossUpdates"];
  [coderCopy encodeObject:self->_alertDate forKey:@"_alertDate"];
  [coderCopy encodeDouble:@"_distanceToIncident" forKey:self->_distanceToIncident];
  [coderCopy encodeBool:self->_isAutomaticReroute forKey:@"_isAutomaticReroute"];
  [coderCopy encodeBool:self->_shouldShowTimer forKey:@"_shouldShowTimer"];
  [coderCopy encodeDouble:@"_alertDisplayDuration" forKey:self->_alertDisplayDuration];
  [coderCopy encodeObject:self->_buttonInfos forKey:@"_buttonInfos"];
  [coderCopy encodeObject:self->_analyticsMessage forKey:@"_analyticsMessage"];
  [coderCopy encodeDouble:@"_distanceToDestination" forKey:self->_distanceToDestination];
  [coderCopy encodeObject:self->_bannerID forKey:@"_bannerID"];
  [coderCopy encodeObject:self->_incident forKey:@"_incident"];
  [coderCopy encodeBool:self->_includeDismissButton forKey:@"_includeDismissButton"];
}

- (MNTrafficIncidentAlert)initWithCoder:(id)coder
{
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = MNTrafficIncidentAlert;
  v5 = [(MNTrafficIncidentAlert *)&v43 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_alertID"];
    alertID = v5->_alertID;
    v5->_alertID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_etaResponseID"];
    etaResponseID = v5->_etaResponseID;
    v5->_etaResponseID = v8;

    v5->_alertType = [coderCopy decodeIntegerForKey:@"_alertType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_geoTrafficBannerText"];
    geoTrafficBannerText = v5->_geoTrafficBannerText;
    v5->_geoTrafficBannerText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mainRouteInfo"];
    mainRouteInfo = v5->_mainRouteInfo;
    v5->_mainRouteInfo = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_alternateRouteInfo"];
    alternateRouteInfo = v5->_alternateRouteInfo;
    v5->_alternateRouteInfo = v14;

    v5->_startValidCoordinateRange.index = [coderCopy decodeIntegerForKey:@"_startValidCoordinateRange.index"];
    [coderCopy decodeDoubleForKey:@"_startValidCoordinateRange.offset"];
    *&v16 = v16;
    v5->_startValidCoordinateRange.offset = *&v16;
    v5->_endValidCoordinateRange.index = [coderCopy decodeIntegerForKey:@"_endValidCoordinateRange.index"];
    [coderCopy decodeDoubleForKey:@"_endValidCoordinateRange.offset"];
    *&v17 = v17;
    v5->_endValidCoordinateRange.offset = *&v17;
    v5->_incidentCoordinate.index = [coderCopy decodeIntegerForKey:@"_incidentCoordinate.index"];
    [coderCopy decodeDoubleForKey:@"_incidentCoordinate.offset"];
    *&v18 = v18;
    v5->_incidentCoordinate.offset = *&v18;
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_cameraInput"];
    cameraInput = v5->_cameraInput;
    v5->_cameraInput = v19;

    v5->_alternateEndValidCoordinateRange.index = [coderCopy decodeIntegerForKey:@"_alternateEndValidCoordinateRange.index"];
    [coderCopy decodeDoubleForKey:@"_alternateEndValidCoordinateRange.offset"];
    *&v21 = v21;
    v5->_alternateEndValidCoordinateRange.offset = *&v21;
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_triggerRange"];
    triggerRange = v5->_triggerRange;
    v5->_triggerRange = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_progressBarTriggerRange"];
    progressBarTriggerRange = v5->_progressBarTriggerRange;
    v5->_progressBarTriggerRange = v24;

    v5->_priority = [coderCopy decodeIntegerForKey:@"_priority"];
    [coderCopy decodeDoubleForKey:@"_minDisplayTime"];
    v5->_minDisplayTime = v26;
    [coderCopy decodeDoubleForKey:@"_overlapDelayTime"];
    v5->_overlapDelayTime = v27;
    v5->_persistAcrossUpdates = [coderCopy decodeBoolForKey:@"_persistAcrossUpdates"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_alertDate"];
    alertDate = v5->_alertDate;
    v5->_alertDate = v28;

    [coderCopy decodeDoubleForKey:@"_distanceToIncident"];
    v5->_distanceToIncident = v30;
    v5->_isAutomaticReroute = [coderCopy decodeBoolForKey:@"_isAutomaticReroute"];
    v5->_shouldShowTimer = [coderCopy decodeBoolForKey:@"_shouldShowTimer"];
    [coderCopy decodeDoubleForKey:@"_alertDisplayDuration"];
    v5->_alertDisplayDuration = v31;
    v32 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_buttonInfos"];
    buttonInfos = v5->_buttonInfos;
    v5->_buttonInfos = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_analyticsMessage"];
    analyticsMessage = v5->_analyticsMessage;
    v5->_analyticsMessage = v34;

    [coderCopy decodeDoubleForKey:@"_distanceToDestination"];
    v5->_distanceToDestination = v36;
    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bannerID"];
    bannerID = v5->_bannerID;
    v5->_bannerID = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_incident"];
    incident = v5->_incident;
    v5->_incident = v39;

    v5->_includeDismissButton = [coderCopy decodeBoolForKey:@"_includeDismissButton"];
    v41 = v5;
  }

  return v5;
}

- (id)description
{
  originalRoute = [(MNTrafficIncidentAlert *)self originalRoute];
  [originalRoute pointAtRouteCoordinate:*&self->_startValidCoordinateRange];
  v5 = v4;
  v7 = v6;

  originalRoute2 = [(MNTrafficIncidentAlert *)self originalRoute];
  [originalRoute2 pointAtRouteCoordinate:*&self->_endValidCoordinateRange];
  v10 = v9;
  v12 = v11;

  if (self->_triggerRange)
  {
    v13 = MEMORY[0x1E696AD60];
    v14 = self->_alertType - 1;
    if (v14 > 6)
    {
      v15 = @"None";
    }

    else
    {
      v15 = off_1E84304E8[v14];
    }

    v19 = v15;
    v20 = [MEMORY[0x1E696AFB0] _geo_uuidForData:self->_alertID];
    progressBarTriggerRange = self->_progressBarTriggerRange;
    v22 = [v13 stringWithFormat:@"%@, %@ (%@) | minDisplayTime: %lf | overlapDelayTime: %lf | priority: %d | triggerRange: %@ | progressBarTriggerRange: %@ | [%@]", v19, v20, self->_bannerID, *&self->_minDisplayTime, *&self->_overlapDelayTime, self->_priority, self->_triggerRange, progressBarTriggerRange, self->_analyticsMessage];
  }

  else
  {
    v16 = MEMORY[0x1E696AD60];
    v17 = self->_alertType - 1;
    if (v17 > 6)
    {
      v18 = @"None";
    }

    else
    {
      v18 = off_1E84304E8[v17];
    }

    v19 = v18;
    v20 = [MEMORY[0x1E696AFB0] _geo_uuidForData:self->_alertID];
    bannerID = self->_bannerID;
    startValidCoordinateRange = self->_startValidCoordinateRange;
    v25 = GEOPolylineCoordinateAsShortString();
    endValidCoordinateRange = self->_endValidCoordinateRange;
    v27 = GEOPolylineCoordinateAsShortString();
    v22 = [v16 stringWithFormat:@"%@, %@ (%@) | [%@] (%f, %f) to [%@] (%f, %f) | [%@]", v19, v20, bannerID, v25, v5, v7, v27, v10, v12, self->_analyticsMessage];
  }

  incidentCoordinate = self->_incidentCoordinate;
  if (GEOPolylineCoordinateIsValid())
  {
    v29 = self->_incidentCoordinate;
    v30 = GEOPolylineCoordinateAsShortString();
    [v22 appendFormat:@" | Incident: [%@]", v30];
  }

  artwork = [(MNTrafficIncidentAlert *)self artwork];

  if (artwork)
  {
    artwork2 = [(MNTrafficIncidentAlert *)self artwork];
    [v22 appendFormat:@" | artwork: [%@]", artwork2];
  }

  geoTrafficBannerText = self->_geoTrafficBannerText;
  if (geoTrafficBannerText)
  {
    jsonRepresentation = [(GEOTrafficBannerText *)geoTrafficBannerText jsonRepresentation];
    [v22 appendFormat:@" | trafficBannerText: [%@]", jsonRepresentation];
  }

  return v22;
}

- (id)_dynamicStringValues
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(MNTrafficIncidentAlert *)self distanceToIncident];
  if (v4 >= 0.0)
  {
    [(MNTrafficIncidentAlert *)self distanceToIncident];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vcvtpd_u64_f64(v5)];
    [v3 setObject:v6 forKeyedSubscript:@"{distance}"];
  }

  if ([(MNTrafficIncidentAlert *)self isReroute])
  {
    secondsSaved = [(MNTrafficIncidentAlert *)self secondsSaved];
    if (secondsSaved != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:secondsSaved];
      [v3 setObject:v8 forKeyedSubscript:@"{duration}"];
    }
  }

  if ([v3 count])
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (void)_initRouteCoordinates
{
  route = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
  legs = [route legs];
  firstObject = [legs firstObject];

  etaRoute = [(MNActiveRouteInfo *)self->_mainRouteInfo etaRoute];

  if (etaRoute)
  {
    route2 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    legs2 = [route2 legs];
    v9 = [legs2 count];
    etaRoute2 = [(MNActiveRouteInfo *)self->_mainRouteInfo etaRoute];
    legs3 = [etaRoute2 legs];
    v12 = v9 - [legs3 count];

    route3 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    legs4 = [route3 legs];
    v15 = [legs4 count];

    if (v12 >= v15)
    {
      v19 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v19, OS_LOG_TYPE_ERROR, "Error finding leg index from which the ETAU request was made. Defaulting to first leg of route.", buf, 2u);
      }
    }

    else
    {
      route4 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
      legs5 = [route4 legs];
      v18 = [legs5 objectAtIndexedSubscript:v12];

      firstObject = v18;
    }
  }

  route5 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
  [route5 distance];
  self->_distanceToDestination = v21;

  if ([(GEOTrafficBannerText *)self->_geoTrafficBannerText hasTriggerRange])
  {
    v67 = MEMORY[0x1E69E9820];
    v68 = 3221225472;
    v69 = __47__MNTrafficIncidentAlert__initRouteCoordinates__block_invoke;
    v70 = &unk_1E8430270;
    selfCopy = self;
    v72 = firstObject;
    v22 = _Block_copy(&v67);
    v23 = [(GEOTrafficBannerText *)self->_geoTrafficBannerText triggerRange:v67];
    v24 = v22[2](v22, v23);
    triggerRange = self->_triggerRange;
    self->_triggerRange = v24;

    progressBarRange = [(GEOTrafficBannerText *)self->_geoTrafficBannerText progressBarRange];
    v27 = v22[2](v22, progressBarRange);
    progressBarTriggerRange = self->_progressBarTriggerRange;
    self->_progressBarTriggerRange = v27;

    self->_priority = [(GEOTrafficBannerText *)self->_geoTrafficBannerText priority];
    self->_minDisplayTime = [(GEOTrafficBannerText *)self->_geoTrafficBannerText minDisplayTime];
    self->_overlapDelayTime = [(GEOTrafficBannerText *)self->_geoTrafficBannerText overlapDelayTime];
    self->_persistAcrossUpdates = [(GEOTrafficBannerText *)self->_geoTrafficBannerText preserveBannerInUpdates];
    cameraInput = [(GEOTrafficBannerText *)self->_geoTrafficBannerText cameraInput];
    cameraInput = self->_cameraInput;
    self->_cameraInput = cameraInput;

    if (GEOConfigGetBOOL())
    {
      bannerId = [(GEOTrafficBannerText *)self->_geoTrafficBannerText bannerId];
      v32 = [@"MNIncidentAlert_FakeDodgeball" description];
      v33 = [bannerId hasPrefix:v32];

      if ((v33 & 1) == 0)
      {
        self->_priority = GEOConfigGetUInteger();
      }
    }

    hideTriggerPoint = [(MNTrafficIncidentTriggerRange *)self->_triggerRange hideTriggerPoint];
    if (!hideTriggerPoint)
    {
      if (self->_progressBarTriggerRange || ![(MNTrafficIncidentAlert *)self isReroute])
      {
        hideTriggerPoint = 0;
      }

      else
      {
        if (!self->_alternateRouteInfo)
        {
          goto LABEL_35;
        }

        hideTriggerPoint = objc_alloc_init(MNRouteDivergenceFinder);
        route6 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
        route7 = [(MNActiveRouteInfo *)self->_alternateRouteInfo route];
        v37 = [(MNRouteDivergenceFinder *)hideTriggerPoint findFirstDivergenceBetweenRoute:route6 andRoute:route7];
        firstObject2 = [v37 firstObject];

        routeCoordinate = [firstObject2 routeCoordinate];
        v40 = [MNTrafficIncidentTriggerRange alloc];
        showTriggerPoint = [(MNTrafficIncidentTriggerRange *)self->_triggerRange showTriggerPoint];
        v42 = [[MNTrafficIncidentTriggerPoint alloc] initWithReferenceCoordinate:routeCoordinate allowsShifting:0];
        [(MNTrafficIncidentTriggerRange *)self->_triggerRange displayTime];
        v43 = [(MNTrafficIncidentTriggerRange *)v40 initWithTriggerPointShow:showTriggerPoint hide:v42 displayTime:?];
        v44 = self->_triggerRange;
        self->_triggerRange = v43;
      }
    }

LABEL_35:
    v62 = self->_progressBarTriggerRange;
    if (v62)
    {
      showTriggerPoint2 = [(MNTrafficIncidentTriggerRange *)v62 showTriggerPoint];
      [showTriggerPoint2 referenceCoordinate];
      showTriggerPoint3 = [(MNTrafficIncidentTriggerRange *)self->_triggerRange showTriggerPoint];
      [showTriggerPoint3 referenceCoordinate];
      self->_shouldShowTimer = GEOPolylineCoordinateEqual();

      if (!self->_shouldShowTimer)
      {
LABEL_40:

        goto LABEL_41;
      }

      [(MNTrafficIncidentTriggerRange *)self->_progressBarTriggerRange displayTime];
    }

    else
    {
      self->_shouldShowTimer = 0;
      v65 = 0.0;
    }

    self->_alertDisplayDuration = v65;
    goto LABEL_40;
  }

  self->_startValidCoordinateRange = 0;
  if ([(GEOTrafficBannerText *)self->_geoTrafficBannerText hasShowAtDistance])
  {
    route8 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    self->_startValidCoordinateRange = [route8 routeCoordinateForDistance:objc_msgSend(firstObject beforeRouteCoordinate:{"endRouteCoordinate"), -[GEOTrafficBannerText showAtDistance](self->_geoTrafficBannerText, "showAtDistance")}];
  }

  route9 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
  self->_endValidCoordinateRange = [route9 endRouteCoordinate];

  if ([(GEOTrafficBannerText *)self->_geoTrafficBannerText hasHideAtDistance])
  {
    route10 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    self->_endValidCoordinateRange = -[MNRouteDivergenceFinder routeCoordinateForDistance:beforeRouteCoordinate:](route10, "routeCoordinateForDistance:beforeRouteCoordinate:", [firstObject endRouteCoordinate], -[GEOTrafficBannerText hideAtDistance](self->_geoTrafficBannerText, "hideAtDistance"));
LABEL_25:

    goto LABEL_26;
  }

  if ([(MNTrafficIncidentAlert *)self isReroute]&& self->_alternateRouteInfo)
  {
    route10 = objc_alloc_init(MNRouteDivergenceFinder);
    route11 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    route12 = [(MNActiveRouteInfo *)self->_alternateRouteInfo route];
    v50 = [(MNRouteDivergenceFinder *)route10 findFirstDivergenceBetweenRoute:route11 andRoute:route12];
    firstObject3 = [v50 firstObject];

    routeCoordinate2 = [firstObject3 routeCoordinate];
    if (GEOPolylineCoordinateIsValid())
    {
      self->_endValidCoordinateRange = routeCoordinate2;
    }

    goto LABEL_25;
  }

LABEL_26:
  alternateRouteInfo = self->_alternateRouteInfo;
  if (alternateRouteInfo)
  {
    route13 = [(MNActiveRouteInfo *)alternateRouteInfo route];
    v55 = [route13 pointCount] - 1;
  }

  else
  {
    v55 = 0;
  }

  self->_alternateEndValidCoordinateRange.index = v55;
  self->_alternateEndValidCoordinateRange.offset = 0.0;
  if ([(MNTrafficIncidentAlert *)self isAutomaticReroute]&& self->_alternateRouteInfo)
  {
    route14 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    [route14 pointAtRouteCoordinate:*&self->_endValidCoordinateRange];
    v58 = v57;
    v60 = v59;

    route15 = [(MNActiveRouteInfo *)self->_alternateRouteInfo route];
    self->_alternateEndValidCoordinateRange = [route15 closestPointOnRoute:{v58, v60}];
  }

  self->_shouldShowTimer = [(GEOTrafficBannerText *)self->_geoTrafficBannerText shouldShowTimer];
  self->_alertDisplayDuration = [(GEOTrafficBannerText *)self->_geoTrafficBannerText alertDurationSeconds];
LABEL_41:
  self->_incidentCoordinate = *MEMORY[0x1E69A1918];
  if ([(GEOTrafficBannerText *)self->_geoTrafficBannerText hasIncidentDistance])
  {
    route16 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    self->_incidentCoordinate = [route16 routeCoordinateForDistance:objc_msgSend(firstObject beforeRouteCoordinate:{"endRouteCoordinate"), -[GEOTrafficBannerText incidentDistance](self->_geoTrafficBannerText, "incidentDistance")}];
  }
}

MNTrafficIncidentTriggerRange *__47__MNTrafficIncidentAlert__initRouteCoordinates__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v14 = 0;
    goto LABEL_9;
  }

  v5 = [v3 showAtPoint];
  v6 = [v4 hideAtPoint];
  v7 = v6;
  if (!v5)
  {
    v10 = 0;
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = [*(*(a1 + 32) + 88) route];
  v9 = [v8 routeCoordinateForDistance:objc_msgSend(*(a1 + 40) beforeRouteCoordinate:{"endRouteCoordinate"), objc_msgSend(v5, "referenceOffsetCm") * 0.01}];

  v10 = -[MNTrafficIncidentTriggerPoint initWithReferenceCoordinate:allowsShifting:]([MNTrafficIncidentTriggerPoint alloc], "initWithReferenceCoordinate:allowsShifting:", v9, [v5 allowsShifting]);
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = [*(*(a1 + 32) + 88) route];
  v12 = [v11 routeCoordinateForDistance:objc_msgSend(*(a1 + 40) beforeRouteCoordinate:{"endRouteCoordinate"), objc_msgSend(v7, "referenceOffsetCm") * 0.01}];

  v13 = -[MNTrafficIncidentTriggerPoint initWithReferenceCoordinate:allowsShifting:]([MNTrafficIncidentTriggerPoint alloc], "initWithReferenceCoordinate:allowsShifting:", v12, [v7 allowsShifting]);
LABEL_8:
  v14 = -[MNTrafficIncidentTriggerRange initWithTriggerPointShow:hide:displayTime:]([MNTrafficIncidentTriggerRange alloc], "initWithTriggerPointShow:hide:displayTime:", v10, v13, [v4 displayTime]);

LABEL_9:

  return v14;
}

- (id)_initWithGeoTrafficBannerText:(id)text mainRouteInfo:(id)info alternateRouteInfo:(id)routeInfo
{
  textCopy = text;
  infoCopy = info;
  routeInfoCopy = routeInfo;
  v25.receiver = self;
  v25.super_class = MNTrafficIncidentAlert;
  v12 = [(MNTrafficIncidentAlert *)&v25 init];
  if (v12)
  {
    _geo_dataForUUID = [MEMORY[0x1E696AFB0] _geo_dataForUUID];
    alertID = v12->_alertID;
    v12->_alertID = _geo_dataForUUID;

    etaRoute = [infoCopy etaRoute];
    etauResponseID = [etaRoute etauResponseID];
    _geo_data = [etauResponseID _geo_data];
    etaResponseID = v12->_etaResponseID;
    v12->_etaResponseID = _geo_data;

    v12->_alertType = -[MNTrafficIncidentAlert _alertTypeForGeoBannerStyle:](v12, "_alertTypeForGeoBannerStyle:", [textCopy bannerStyle]);
    objc_storeStrong(&v12->_geoTrafficBannerText, text);
    objc_storeStrong(&v12->_mainRouteInfo, info);
    objc_storeStrong(&v12->_alternateRouteInfo, routeInfo);
    date = [MEMORY[0x1E695DF00] date];
    alertDate = v12->_alertDate;
    v12->_alertDate = date;

    v21 = *MEMORY[0x1E69A19D8];
    v22 = *(MEMORY[0x1E69A19D8] + 8);
    v12->_isAutomaticReroute = GEOConfigGetBOOL();
    [(MNTrafficIncidentAlert *)v12 _initRouteCoordinates];
    v12->_distanceToIncident = -1.0;
    v12->_includeDismissButton = [textCopy includeDismissButton];
    [(MNTrafficIncidentAlert *)v12 _populateServerFields:textCopy];
    [(MNTrafficIncidentAlert *)v12 _populateButtonInfo:textCopy];
    [(MNTrafficIncidentAlert *)v12 _populateIncidentDetails:textCopy];
    v23 = v12;
  }

  return v12;
}

- (GEOPBTransitArtwork)artwork
{
  artworkOverride = [(GEOTrafficBannerText *)self->_geoTrafficBannerText artworkOverride];
  v4 = artworkOverride;
  if (artworkOverride)
  {
    artwork = artworkOverride;
  }

  else
  {
    artwork = [(GEORouteIncident *)self->_incident artwork];
  }

  v6 = artwork;

  return v6;
}

- (MNNavigationAlertButtonInfo)defaultButtonInfo
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_buttonInfos;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isDefaultButton])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (MNNavigationAlertButtonInfo)acceptButtonInfo
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_buttonInfos;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 action] == 2)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)secondsSaved
{
  if ([(MNTrafficIncidentAlert *)self isReroute]&& [(GEOTrafficBannerText *)self->_geoTrafficBannerText hasSecondsSaved])
  {
    return [(GEOTrafficBannerText *)self->_geoTrafficBannerText secondsSaved];
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (void)updateAlertIDWithAlert:(id)alert
{
  alertID = [alert alertID];
  alertID = self->_alertID;
  self->_alertID = alertID;
}

- (void)updateLocation:(id)location
{
  locationCopy = location;
  if (self->_incidentCoordinate.offset >= 0.0)
  {
    v15 = locationCopy;
    routeMatch = [locationCopy routeMatch];
    isGoodMatch = [routeMatch isGoodMatch];

    locationCopy = v15;
    if (isGoodMatch)
    {
      routeMatch2 = [v15 routeMatch];
      routeCoordinate = [routeMatch2 routeCoordinate];

      originalRoute = [(MNTrafficIncidentAlert *)self originalRoute];
      [originalRoute distanceToEndFromRouteCoordinate:routeCoordinate];
      self->_distanceToDestination = v10;

      incidentCoordinate = self->_incidentCoordinate;
      if (GEOPolylineCoordinateIsABeforeB())
      {
        originalRoute2 = [(MNTrafficIncidentAlert *)self originalRoute];
        routeMatch3 = [v15 routeMatch];
        [originalRoute2 distanceFromPoint:objc_msgSend(routeMatch3 toPoint:{"routeCoordinate"), *&self->_incidentCoordinate}];
        self->_distanceToIncident = v14;
      }

      else
      {
        self->_distanceToIncident = 0.0;
      }

      locationCopy = v15;
    }
  }

  else
  {
    self->_distanceToIncident = -1.0;
  }
}

- (double)alertDisplayDuration
{
  result = self->_alertDisplayDuration;
  if (result <= 0.0)
  {
    alertType = self->_alertType;
    result = 978307200.0;
    if (alertType <= 7)
    {
      if (((1 << alertType) & 0x66) != 0)
      {
LABEL_5:
        GEOConfigGetDouble();
        return result;
      }

      if (((1 << alertType) & 0x90) != 0)
      {
        return 0.0;
      }

      else if (alertType == 3 && self->_isAutomaticReroute)
      {
        v4 = *MEMORY[0x1E69A19D0];
        v5 = *(MEMORY[0x1E69A19D0] + 8);
        goto LABEL_5;
      }
    }
  }

  return result;
}

- (GEONavigabilityInfo)originalRouteNavigability
{
  etaRoute = [(MNActiveRouteInfo *)self->_mainRouteInfo etaRoute];
  navigabilityInfo = [etaRoute navigabilityInfo];

  return navigabilityInfo;
}

- (NSArray)spokenTexts
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(GEOTrafficBannerText *)self->_geoTrafficBannerText hasSpokenPrompt])
  {
    v3 = MEMORY[0x1E696AEC0];
    spokenPrompt = [(GEOTrafficBannerText *)self->_geoTrafficBannerText spokenPrompt];
    _dynamicStringValues = [(MNTrafficIncidentAlert *)self _dynamicStringValues];
    v6 = [v3 _navigation_stringForServerFormattedString:spokenPrompt abbreviatedUnits:0 detail:1 spoken:1 overrideVariables:_dynamicStringValues];

    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSArray)alertDescriptions
{
  v11[1] = *MEMORY[0x1E69E9840];
  bannerSmallTexts = [(GEOTrafficBannerText *)self->_geoTrafficBannerText bannerSmallTexts];
  firstObject = [bannerSmallTexts firstObject];

  if (firstObject)
  {
    v5 = MEMORY[0x1E696AEC0];
    _dynamicStringValues = [(MNTrafficIncidentAlert *)self _dynamicStringValues];
    v7 = [v5 _navigation_stringForServerFormattedString:firstObject abbreviatedUnits:1 detail:0 spoken:0 overrideVariables:_dynamicStringValues];

    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (NSArray)alertTitles
{
  v11[1] = *MEMORY[0x1E69E9840];
  bannerLargeTexts = [(GEOTrafficBannerText *)self->_geoTrafficBannerText bannerLargeTexts];
  firstObject = [bannerLargeTexts firstObject];

  if (firstObject)
  {
    v5 = MEMORY[0x1E696AEC0];
    _dynamicStringValues = [(MNTrafficIncidentAlert *)self _dynamicStringValues];
    v7 = [v5 _navigation_stringForServerFormattedString:firstObject abbreviatedUnits:1 detail:0 spoken:0 overrideVariables:_dynamicStringValues];

    v11[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_validTrafficIncidentAlertsForBannerTexts:(id)texts mainRouteInfo:(id)info alternateRouteInfo:(id)routeInfo
{
  v48 = *MEMORY[0x1E69E9840];
  textsCopy = texts;
  infoCopy = info;
  routeInfoCopy = routeInfo;
  v9 = objc_opt_new();
  if (textsCopy)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = textsCopy;
    obj = textsCopy;
    v10 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (!v10)
    {
      goto LABEL_44;
    }

    v11 = v10;
    v12 = *v38;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        v15 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          bannerStyle = [v14 bannerStyle];
          if (bannerStyle >= 9)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", bannerStyle];
          }

          else
          {
            v17 = off_1E84304A0[bannerStyle];
          }

          bannerId = [v14 bannerId];
          *buf = 138412546;
          v42 = v17;
          v43 = 2112;
          v44 = bannerId;
          _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_DEFAULT, "Received Dodgeball alert from server response: %@, %@", buf, 0x16u);
        }

        bannerStyle2 = [v14 bannerStyle];
        if (bannerStyle2 <= 7)
        {
          v20 = 1 << bannerStyle2;
          if (((1 << bannerStyle2) & 0x92) != 0)
          {
            if (routeInfoCopy)
            {
              goto LABEL_35;
            }

            v24 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              bannerStyle3 = [v14 bannerStyle];
              if (bannerStyle3 >= 9)
              {
                v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", bannerStyle3];
              }

              else
              {
                v26 = off_1E84304A0[bannerStyle3];
              }

              *buf = 138412290;
              v42 = v26;
              _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "Dodgeball response (%@) requires alternate route, but none was found.", buf, 0xCu);
            }

            routeInfoCopy = 0;
            goto LABEL_36;
          }

          if ((v20 & 0x24) != 0)
          {

            routeInfoCopy = 0;
LABEL_35:
            v24 = [[MNTrafficIncidentAlert alloc] _initWithGeoTrafficBannerText:v14 mainRouteInfo:infoCopy alternateRouteInfo:routeInfoCopy];
            [v9 addObject:v24];
            goto LABEL_36;
          }

          if ((v20 & 0x48) != 0)
          {
            goto LABEL_35;
          }
        }

        if (!bannerStyle2)
        {
          v21 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v42 = "+[MNTrafficIncidentAlert _validTrafficIncidentAlertsForBannerTexts:mainRouteInfo:alternateRouteInfo:]";
            v43 = 2080;
            v44 = "/Library/Caches/com.apple.xbs/Sources/Navigation/TrafficETA/MNTrafficIncidentAlert.m";
            v45 = 1024;
            v46 = 116;
            _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
          }

          v22 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "Dodgeball response has no banner style. This is a server error. Attempting to continue.", buf, 2u);
          }

          if (routeInfoCopy)
          {
            v23 = 1;
          }

          else
          {
            v23 = 2;
          }

          [v14 setBannerStyle:v23];
          goto LABEL_35;
        }

        v27 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v42 = "+[MNTrafficIncidentAlert _validTrafficIncidentAlertsForBannerTexts:mainRouteInfo:alternateRouteInfo:]";
          v43 = 2080;
          v44 = "/Library/Caches/com.apple.xbs/Sources/Navigation/TrafficETA/MNTrafficIncidentAlert.m";
          v45 = 1024;
          v46 = 127;
          _os_log_impl(&dword_1D311E000, v27, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
        }

        v24 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          bannerStyle4 = [v14 bannerStyle];
          if (bannerStyle4 >= 9)
          {
            v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", bannerStyle4];
          }

          else
          {
            v29 = off_1E84304A0[bannerStyle4];
          }

          *buf = 138412290;
          v42 = v29;
          _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "Dodgeball response returned a type that is not supported on the client yet (%@)", buf, 0xCu);
        }

LABEL_36:

        ++v13;
      }

      while (v11 != v13);
      v30 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      v11 = v30;
      if (!v30)
      {
LABEL_44:

        v31 = v9;
        textsCopy = v34;
        goto LABEL_46;
      }
    }
  }

  v31 = 0;
LABEL_46:

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (id)validTrafficIncidentAlertsForETAUpdate:(id)update alternateRouteInfo:(id)info
{
  infoCopy = info;
  updateCopy = update;
  etaRoute = [updateCopy etaRoute];
  geoTrafficBannerTexts = [etaRoute geoTrafficBannerTexts];
  v9 = [MNTrafficIncidentAlert _validTrafficIncidentAlertsForBannerTexts:geoTrafficBannerTexts mainRouteInfo:updateCopy alternateRouteInfo:infoCopy];

  return v9;
}

+ (id)validTrafficIncidentAlertsForNewRoute:(id)route alternateRouteInfo:(id)info
{
  infoCopy = info;
  routeCopy = route;
  route = [routeCopy route];
  geoTrafficBannerTexts = [route geoTrafficBannerTexts];
  v9 = [MNTrafficIncidentAlert _validTrafficIncidentAlertsForBannerTexts:geoTrafficBannerTexts mainRouteInfo:routeCopy alternateRouteInfo:infoCopy];

  return v9;
}

- (NSMutableArray)oldRouteIncidents
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  traffic = [(MNActiveRouteInfo *)self->_mainRouteInfo traffic];
  routeIncidents = [traffic routeIncidents];

  v5 = [routeIncidents countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(routeIncidents);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (!v7)
        {
          v11 = MEMORY[0x1E695DF70];
          traffic2 = [(MNActiveRouteInfo *)self->_mainRouteInfo traffic];
          routeIncidents2 = [traffic2 routeIncidents];
          v7 = [v11 arrayWithCapacity:{objc_msgSend(routeIncidents2, "count")}];
        }

        incident = [v10 incident];

        if (incident)
        {
          incident2 = [v10 incident];
          [v7 addObject:incident2];
        }
      }

      v6 = [routeIncidents countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

- (double)oldHistoricTime
{
  etaRoute = [(MNActiveRouteInfo *)self->_mainRouteInfo etaRoute];
  [etaRoute historicTravelDuration];
  v4 = v3;

  return v4;
}

- (double)oldEstimatedTime
{
  etaRoute = [(MNActiveRouteInfo *)self->_mainRouteInfo etaRoute];
  [etaRoute travelDuration];
  v4 = v3;

  return v4;
}

- (double)newEstimatedTime
{
  route = [(MNActiveRouteInfo *)self->_alternateRouteInfo route];
  expectedTime = [route expectedTime];

  return expectedTime;
}

+ (void)_addDebugArguments:(id)arguments
{
  v3 = MEMORY[0x1E69A1DC0];
  argumentsCopy = arguments;
  v6 = objc_alloc_init(v3);
  [v6 setToken:@"{distance}"];
  [v6 setFormat:1];
  [v6 setValInt1:5000];
  [argumentsCopy addFormatArgument:v6];
  v5 = objc_alloc_init(MEMORY[0x1E69A1DC0]);
  [v5 setToken:@"{time}"];
  [v5 setFormat:2];
  [v5 setValInt1:5000];
  [argumentsCopy addFormatArgument:v5];
}

@end