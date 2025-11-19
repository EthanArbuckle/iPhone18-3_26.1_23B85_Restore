@interface MNTrafficIncidentAlert
+ (id)_validTrafficIncidentAlertsForBannerTexts:(id)a3 mainRouteInfo:(id)a4 alternateRouteInfo:(id)a5;
+ (id)validTrafficIncidentAlertsForETAUpdate:(id)a3 alternateRouteInfo:(id)a4;
+ (id)validTrafficIncidentAlertsForNewRoute:(id)a3 alternateRouteInfo:(id)a4;
+ (void)_addDebugArguments:(id)a3;
- (GEONavigabilityInfo)originalRouteNavigability;
- (GEOPBTransitArtwork)artwork;
- (MNNavigationAlertButtonInfo)acceptButtonInfo;
- (MNNavigationAlertButtonInfo)defaultButtonInfo;
- (MNTrafficIncidentAlert)initWithCoder:(id)a3;
- (NSArray)alertDescriptions;
- (NSArray)alertTitles;
- (NSArray)spokenTexts;
- (NSMutableArray)oldRouteIncidents;
- (double)alertDisplayDuration;
- (double)newEstimatedTime;
- (double)oldEstimatedTime;
- (double)oldHistoricTime;
- (id)_dynamicStringValues;
- (id)_initWithGeoTrafficBannerText:(id)a3 mainRouteInfo:(id)a4 alternateRouteInfo:(id)a5;
- (id)description;
- (unint64_t)secondsSaved;
- (void)_initRouteCoordinates;
- (void)_populateButtonInfo:(id)a3;
- (void)_populateIncidentDetails:(id)a3;
- (void)_populateServerFields:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateAlertIDWithAlert:(id)a3;
- (void)updateLocation:(id)a3;
@end

@implementation MNTrafficIncidentAlert

- (void)_populateIncidentDetails:(id)a3
{
  if ([(GEOTrafficBannerText *)self->_geoTrafficBannerText hasIncidentIndex])
  {
    v4 = [(GEOTrafficBannerText *)self->_geoTrafficBannerText incidentIndex];
    v5 = [(MNActiveRouteInfo *)self->_mainRouteInfo traffic];
    v9 = [v5 routeIncidents];

    if ([v9 count] > v4)
    {
      v6 = [v9 objectAtIndexedSubscript:v4];
      v7 = [v6 incident];
      incident = self->_incident;
      self->_incident = v7;
    }
  }
}

- (void)_populateButtonInfo:(id)a3
{
  v20 = self;
  v22 = a3;
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [v22 buttons];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [v22 buttons];
      v8 = [v7 objectAtIndex:v6];

      if ([v8 hasAction] && objc_msgSend(v8, "hasText"))
      {
        v9 = [v8 action];
        if (v9 == 2)
        {
          v10 = 2;
        }

        else
        {
          v10 = v9 == 1;
        }

        if ([v22 hasDefaultButtonIndex])
        {
          v11 = v6 == [v22 defaultButtonIndex];
        }

        else
        {
          v11 = 0;
        }

        v12 = objc_alloc(MEMORY[0x1E69A1CA8]);
        v13 = [v8 text];
        v14 = [v12 initWithGeoFormattedString:v13];

        v15 = -[MNNavigationAlertButtonInfo initWithAction:title:buttonDisplay:isDefaultButton:]([MNNavigationAlertButtonInfo alloc], "initWithAction:title:buttonDisplay:isDefaultButton:", v10, v14, [v8 buttonDisplay], v11);
        [v3 addObject:v15];
      }

      ++v6;
      v16 = [v22 buttons];
      v17 = [v16 count];
    }

    while (v6 < v17);
  }

  v18 = [v3 copy];
  v19 = *(v21 + 200);
  *(v21 + 200) = v18;
}

- (void)_populateServerFields:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v4 bannerDescription];
  v7 = [v5 _navigation_stringForServerFormattedString:v6];
  bannerDescription = self->_bannerDescription;
  self->_bannerDescription = v7;

  v9 = [v4 bannerId];
  bannerID = self->_bannerID;
  self->_bannerID = v9;

  v11 = [v4 eventInfo];
  eventInfo = self->_eventInfo;
  self->_eventInfo = v11;

  v13 = [v4 analyticsMessageValue];
  analyticsMessage = self->_analyticsMessage;
  self->_analyticsMessage = v13;

  if (!self->_bannerID)
  {
    v15 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138477827;
      v18 = v4;
      _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_ERROR, "Received a traffic banner text which is missing a banner ID: %{private}@", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  alertID = self->_alertID;
  v5 = a3;
  [v5 encodeObject:alertID forKey:@"_alertID"];
  [v5 encodeObject:self->_etaResponseID forKey:@"_etaResponseID"];
  [v5 encodeInteger:self->_alertType forKey:@"_alertType"];
  [v5 encodeObject:self->_geoTrafficBannerText forKey:@"_geoTrafficBannerText"];
  [v5 encodeObject:self->_mainRouteInfo forKey:@"_mainRouteInfo"];
  [v5 encodeObject:self->_alternateRouteInfo forKey:@"_alternateRouteInfo"];
  [v5 encodeInteger:self->_startValidCoordinateRange.index forKey:@"_startValidCoordinateRange.index"];
  [v5 encodeDouble:@"_startValidCoordinateRange.offset" forKey:self->_startValidCoordinateRange.offset];
  [v5 encodeInteger:self->_endValidCoordinateRange.index forKey:@"_endValidCoordinateRange.index"];
  [v5 encodeDouble:@"_endValidCoordinateRange.offset" forKey:self->_endValidCoordinateRange.offset];
  [v5 encodeInteger:self->_incidentCoordinate.index forKey:@"_incidentCoordinate.index"];
  [v5 encodeDouble:@"_incidentCoordinate.offset" forKey:self->_incidentCoordinate.offset];
  [v5 encodeObject:self->_cameraInput forKey:@"_cameraInput"];
  [v5 encodeInteger:self->_alternateEndValidCoordinateRange.index forKey:@"_alternateEndValidCoordinateRange.index"];
  [v5 encodeDouble:@"_alternateEndValidCoordinateRange.offset" forKey:self->_alternateEndValidCoordinateRange.offset];
  [v5 encodeObject:self->_triggerRange forKey:@"_triggerRange"];
  [v5 encodeObject:self->_progressBarTriggerRange forKey:@"_progressBarTriggerRange"];
  [v5 encodeInteger:self->_priority forKey:@"_priority"];
  [v5 encodeDouble:@"_minDisplayTime" forKey:self->_minDisplayTime];
  [v5 encodeDouble:@"_overlapDelayTime" forKey:self->_overlapDelayTime];
  [v5 encodeBool:self->_persistAcrossUpdates forKey:@"_persistAcrossUpdates"];
  [v5 encodeObject:self->_alertDate forKey:@"_alertDate"];
  [v5 encodeDouble:@"_distanceToIncident" forKey:self->_distanceToIncident];
  [v5 encodeBool:self->_isAutomaticReroute forKey:@"_isAutomaticReroute"];
  [v5 encodeBool:self->_shouldShowTimer forKey:@"_shouldShowTimer"];
  [v5 encodeDouble:@"_alertDisplayDuration" forKey:self->_alertDisplayDuration];
  [v5 encodeObject:self->_buttonInfos forKey:@"_buttonInfos"];
  [v5 encodeObject:self->_analyticsMessage forKey:@"_analyticsMessage"];
  [v5 encodeDouble:@"_distanceToDestination" forKey:self->_distanceToDestination];
  [v5 encodeObject:self->_bannerID forKey:@"_bannerID"];
  [v5 encodeObject:self->_incident forKey:@"_incident"];
  [v5 encodeBool:self->_includeDismissButton forKey:@"_includeDismissButton"];
}

- (MNTrafficIncidentAlert)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = MNTrafficIncidentAlert;
  v5 = [(MNTrafficIncidentAlert *)&v43 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_alertID"];
    alertID = v5->_alertID;
    v5->_alertID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_etaResponseID"];
    etaResponseID = v5->_etaResponseID;
    v5->_etaResponseID = v8;

    v5->_alertType = [v4 decodeIntegerForKey:@"_alertType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_geoTrafficBannerText"];
    geoTrafficBannerText = v5->_geoTrafficBannerText;
    v5->_geoTrafficBannerText = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mainRouteInfo"];
    mainRouteInfo = v5->_mainRouteInfo;
    v5->_mainRouteInfo = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_alternateRouteInfo"];
    alternateRouteInfo = v5->_alternateRouteInfo;
    v5->_alternateRouteInfo = v14;

    v5->_startValidCoordinateRange.index = [v4 decodeIntegerForKey:@"_startValidCoordinateRange.index"];
    [v4 decodeDoubleForKey:@"_startValidCoordinateRange.offset"];
    *&v16 = v16;
    v5->_startValidCoordinateRange.offset = *&v16;
    v5->_endValidCoordinateRange.index = [v4 decodeIntegerForKey:@"_endValidCoordinateRange.index"];
    [v4 decodeDoubleForKey:@"_endValidCoordinateRange.offset"];
    *&v17 = v17;
    v5->_endValidCoordinateRange.offset = *&v17;
    v5->_incidentCoordinate.index = [v4 decodeIntegerForKey:@"_incidentCoordinate.index"];
    [v4 decodeDoubleForKey:@"_incidentCoordinate.offset"];
    *&v18 = v18;
    v5->_incidentCoordinate.offset = *&v18;
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_cameraInput"];
    cameraInput = v5->_cameraInput;
    v5->_cameraInput = v19;

    v5->_alternateEndValidCoordinateRange.index = [v4 decodeIntegerForKey:@"_alternateEndValidCoordinateRange.index"];
    [v4 decodeDoubleForKey:@"_alternateEndValidCoordinateRange.offset"];
    *&v21 = v21;
    v5->_alternateEndValidCoordinateRange.offset = *&v21;
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_triggerRange"];
    triggerRange = v5->_triggerRange;
    v5->_triggerRange = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_progressBarTriggerRange"];
    progressBarTriggerRange = v5->_progressBarTriggerRange;
    v5->_progressBarTriggerRange = v24;

    v5->_priority = [v4 decodeIntegerForKey:@"_priority"];
    [v4 decodeDoubleForKey:@"_minDisplayTime"];
    v5->_minDisplayTime = v26;
    [v4 decodeDoubleForKey:@"_overlapDelayTime"];
    v5->_overlapDelayTime = v27;
    v5->_persistAcrossUpdates = [v4 decodeBoolForKey:@"_persistAcrossUpdates"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_alertDate"];
    alertDate = v5->_alertDate;
    v5->_alertDate = v28;

    [v4 decodeDoubleForKey:@"_distanceToIncident"];
    v5->_distanceToIncident = v30;
    v5->_isAutomaticReroute = [v4 decodeBoolForKey:@"_isAutomaticReroute"];
    v5->_shouldShowTimer = [v4 decodeBoolForKey:@"_shouldShowTimer"];
    [v4 decodeDoubleForKey:@"_alertDisplayDuration"];
    v5->_alertDisplayDuration = v31;
    v32 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_buttonInfos"];
    buttonInfos = v5->_buttonInfos;
    v5->_buttonInfos = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_analyticsMessage"];
    analyticsMessage = v5->_analyticsMessage;
    v5->_analyticsMessage = v34;

    [v4 decodeDoubleForKey:@"_distanceToDestination"];
    v5->_distanceToDestination = v36;
    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bannerID"];
    bannerID = v5->_bannerID;
    v5->_bannerID = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_incident"];
    incident = v5->_incident;
    v5->_incident = v39;

    v5->_includeDismissButton = [v4 decodeBoolForKey:@"_includeDismissButton"];
    v41 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = [(MNTrafficIncidentAlert *)self originalRoute];
  [v3 pointAtRouteCoordinate:*&self->_startValidCoordinateRange];
  v5 = v4;
  v7 = v6;

  v8 = [(MNTrafficIncidentAlert *)self originalRoute];
  [v8 pointAtRouteCoordinate:*&self->_endValidCoordinateRange];
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

  v31 = [(MNTrafficIncidentAlert *)self artwork];

  if (v31)
  {
    v32 = [(MNTrafficIncidentAlert *)self artwork];
    [v22 appendFormat:@" | artwork: [%@]", v32];
  }

  geoTrafficBannerText = self->_geoTrafficBannerText;
  if (geoTrafficBannerText)
  {
    v34 = [(GEOTrafficBannerText *)geoTrafficBannerText jsonRepresentation];
    [v22 appendFormat:@" | trafficBannerText: [%@]", v34];
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
    v7 = [(MNTrafficIncidentAlert *)self secondsSaved];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
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
  v3 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
  v4 = [v3 legs];
  v5 = [v4 firstObject];

  v6 = [(MNActiveRouteInfo *)self->_mainRouteInfo etaRoute];

  if (v6)
  {
    v7 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    v8 = [v7 legs];
    v9 = [v8 count];
    v10 = [(MNActiveRouteInfo *)self->_mainRouteInfo etaRoute];
    v11 = [v10 legs];
    v12 = v9 - [v11 count];

    v13 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    v14 = [v13 legs];
    v15 = [v14 count];

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
      v16 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
      v17 = [v16 legs];
      v18 = [v17 objectAtIndexedSubscript:v12];

      v5 = v18;
    }
  }

  v20 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
  [v20 distance];
  self->_distanceToDestination = v21;

  if ([(GEOTrafficBannerText *)self->_geoTrafficBannerText hasTriggerRange])
  {
    v67 = MEMORY[0x1E69E9820];
    v68 = 3221225472;
    v69 = __47__MNTrafficIncidentAlert__initRouteCoordinates__block_invoke;
    v70 = &unk_1E8430270;
    v71 = self;
    v72 = v5;
    v22 = _Block_copy(&v67);
    v23 = [(GEOTrafficBannerText *)self->_geoTrafficBannerText triggerRange:v67];
    v24 = v22[2](v22, v23);
    triggerRange = self->_triggerRange;
    self->_triggerRange = v24;

    v26 = [(GEOTrafficBannerText *)self->_geoTrafficBannerText progressBarRange];
    v27 = v22[2](v22, v26);
    progressBarTriggerRange = self->_progressBarTriggerRange;
    self->_progressBarTriggerRange = v27;

    self->_priority = [(GEOTrafficBannerText *)self->_geoTrafficBannerText priority];
    self->_minDisplayTime = [(GEOTrafficBannerText *)self->_geoTrafficBannerText minDisplayTime];
    self->_overlapDelayTime = [(GEOTrafficBannerText *)self->_geoTrafficBannerText overlapDelayTime];
    self->_persistAcrossUpdates = [(GEOTrafficBannerText *)self->_geoTrafficBannerText preserveBannerInUpdates];
    v29 = [(GEOTrafficBannerText *)self->_geoTrafficBannerText cameraInput];
    cameraInput = self->_cameraInput;
    self->_cameraInput = v29;

    if (GEOConfigGetBOOL())
    {
      v31 = [(GEOTrafficBannerText *)self->_geoTrafficBannerText bannerId];
      v32 = [@"MNIncidentAlert_FakeDodgeball" description];
      v33 = [v31 hasPrefix:v32];

      if ((v33 & 1) == 0)
      {
        self->_priority = GEOConfigGetUInteger();
      }
    }

    v34 = [(MNTrafficIncidentTriggerRange *)self->_triggerRange hideTriggerPoint];
    if (!v34)
    {
      if (self->_progressBarTriggerRange || ![(MNTrafficIncidentAlert *)self isReroute])
      {
        v34 = 0;
      }

      else
      {
        if (!self->_alternateRouteInfo)
        {
          goto LABEL_35;
        }

        v34 = objc_alloc_init(MNRouteDivergenceFinder);
        v35 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
        v36 = [(MNActiveRouteInfo *)self->_alternateRouteInfo route];
        v37 = [(MNRouteDivergenceFinder *)v34 findFirstDivergenceBetweenRoute:v35 andRoute:v36];
        v38 = [v37 firstObject];

        v39 = [v38 routeCoordinate];
        v40 = [MNTrafficIncidentTriggerRange alloc];
        v41 = [(MNTrafficIncidentTriggerRange *)self->_triggerRange showTriggerPoint];
        v42 = [[MNTrafficIncidentTriggerPoint alloc] initWithReferenceCoordinate:v39 allowsShifting:0];
        [(MNTrafficIncidentTriggerRange *)self->_triggerRange displayTime];
        v43 = [(MNTrafficIncidentTriggerRange *)v40 initWithTriggerPointShow:v41 hide:v42 displayTime:?];
        v44 = self->_triggerRange;
        self->_triggerRange = v43;
      }
    }

LABEL_35:
    v62 = self->_progressBarTriggerRange;
    if (v62)
    {
      v63 = [(MNTrafficIncidentTriggerRange *)v62 showTriggerPoint];
      [v63 referenceCoordinate];
      v64 = [(MNTrafficIncidentTriggerRange *)self->_triggerRange showTriggerPoint];
      [v64 referenceCoordinate];
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
    v45 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    self->_startValidCoordinateRange = [v45 routeCoordinateForDistance:objc_msgSend(v5 beforeRouteCoordinate:{"endRouteCoordinate"), -[GEOTrafficBannerText showAtDistance](self->_geoTrafficBannerText, "showAtDistance")}];
  }

  v46 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
  self->_endValidCoordinateRange = [v46 endRouteCoordinate];

  if ([(GEOTrafficBannerText *)self->_geoTrafficBannerText hasHideAtDistance])
  {
    v47 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    self->_endValidCoordinateRange = -[MNRouteDivergenceFinder routeCoordinateForDistance:beforeRouteCoordinate:](v47, "routeCoordinateForDistance:beforeRouteCoordinate:", [v5 endRouteCoordinate], -[GEOTrafficBannerText hideAtDistance](self->_geoTrafficBannerText, "hideAtDistance"));
LABEL_25:

    goto LABEL_26;
  }

  if ([(MNTrafficIncidentAlert *)self isReroute]&& self->_alternateRouteInfo)
  {
    v47 = objc_alloc_init(MNRouteDivergenceFinder);
    v48 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    v49 = [(MNActiveRouteInfo *)self->_alternateRouteInfo route];
    v50 = [(MNRouteDivergenceFinder *)v47 findFirstDivergenceBetweenRoute:v48 andRoute:v49];
    v51 = [v50 firstObject];

    v52 = [v51 routeCoordinate];
    if (GEOPolylineCoordinateIsValid())
    {
      self->_endValidCoordinateRange = v52;
    }

    goto LABEL_25;
  }

LABEL_26:
  alternateRouteInfo = self->_alternateRouteInfo;
  if (alternateRouteInfo)
  {
    v54 = [(MNActiveRouteInfo *)alternateRouteInfo route];
    v55 = [v54 pointCount] - 1;
  }

  else
  {
    v55 = 0;
  }

  self->_alternateEndValidCoordinateRange.index = v55;
  self->_alternateEndValidCoordinateRange.offset = 0.0;
  if ([(MNTrafficIncidentAlert *)self isAutomaticReroute]&& self->_alternateRouteInfo)
  {
    v56 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    [v56 pointAtRouteCoordinate:*&self->_endValidCoordinateRange];
    v58 = v57;
    v60 = v59;

    v61 = [(MNActiveRouteInfo *)self->_alternateRouteInfo route];
    self->_alternateEndValidCoordinateRange = [v61 closestPointOnRoute:{v58, v60}];
  }

  self->_shouldShowTimer = [(GEOTrafficBannerText *)self->_geoTrafficBannerText shouldShowTimer];
  self->_alertDisplayDuration = [(GEOTrafficBannerText *)self->_geoTrafficBannerText alertDurationSeconds];
LABEL_41:
  self->_incidentCoordinate = *MEMORY[0x1E69A1918];
  if ([(GEOTrafficBannerText *)self->_geoTrafficBannerText hasIncidentDistance])
  {
    v66 = [(MNActiveRouteInfo *)self->_mainRouteInfo route];
    self->_incidentCoordinate = [v66 routeCoordinateForDistance:objc_msgSend(v5 beforeRouteCoordinate:{"endRouteCoordinate"), -[GEOTrafficBannerText incidentDistance](self->_geoTrafficBannerText, "incidentDistance")}];
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

- (id)_initWithGeoTrafficBannerText:(id)a3 mainRouteInfo:(id)a4 alternateRouteInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = MNTrafficIncidentAlert;
  v12 = [(MNTrafficIncidentAlert *)&v25 init];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AFB0] _geo_dataForUUID];
    alertID = v12->_alertID;
    v12->_alertID = v13;

    v15 = [v10 etaRoute];
    v16 = [v15 etauResponseID];
    v17 = [v16 _geo_data];
    etaResponseID = v12->_etaResponseID;
    v12->_etaResponseID = v17;

    v12->_alertType = -[MNTrafficIncidentAlert _alertTypeForGeoBannerStyle:](v12, "_alertTypeForGeoBannerStyle:", [v9 bannerStyle]);
    objc_storeStrong(&v12->_geoTrafficBannerText, a3);
    objc_storeStrong(&v12->_mainRouteInfo, a4);
    objc_storeStrong(&v12->_alternateRouteInfo, a5);
    v19 = [MEMORY[0x1E695DF00] date];
    alertDate = v12->_alertDate;
    v12->_alertDate = v19;

    v21 = *MEMORY[0x1E69A19D8];
    v22 = *(MEMORY[0x1E69A19D8] + 8);
    v12->_isAutomaticReroute = GEOConfigGetBOOL();
    [(MNTrafficIncidentAlert *)v12 _initRouteCoordinates];
    v12->_distanceToIncident = -1.0;
    v12->_includeDismissButton = [v9 includeDismissButton];
    [(MNTrafficIncidentAlert *)v12 _populateServerFields:v9];
    [(MNTrafficIncidentAlert *)v12 _populateButtonInfo:v9];
    [(MNTrafficIncidentAlert *)v12 _populateIncidentDetails:v9];
    v23 = v12;
  }

  return v12;
}

- (GEOPBTransitArtwork)artwork
{
  v3 = [(GEOTrafficBannerText *)self->_geoTrafficBannerText artworkOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(GEORouteIncident *)self->_incident artwork];
  }

  v6 = v5;

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

- (void)updateAlertIDWithAlert:(id)a3
{
  v4 = [a3 alertID];
  alertID = self->_alertID;
  self->_alertID = v4;
}

- (void)updateLocation:(id)a3
{
  v4 = a3;
  if (self->_incidentCoordinate.offset >= 0.0)
  {
    v15 = v4;
    v5 = [v4 routeMatch];
    v6 = [v5 isGoodMatch];

    v4 = v15;
    if (v6)
    {
      v7 = [v15 routeMatch];
      v8 = [v7 routeCoordinate];

      v9 = [(MNTrafficIncidentAlert *)self originalRoute];
      [v9 distanceToEndFromRouteCoordinate:v8];
      self->_distanceToDestination = v10;

      incidentCoordinate = self->_incidentCoordinate;
      if (GEOPolylineCoordinateIsABeforeB())
      {
        v12 = [(MNTrafficIncidentAlert *)self originalRoute];
        v13 = [v15 routeMatch];
        [v12 distanceFromPoint:objc_msgSend(v13 toPoint:{"routeCoordinate"), *&self->_incidentCoordinate}];
        self->_distanceToIncident = v14;
      }

      else
      {
        self->_distanceToIncident = 0.0;
      }

      v4 = v15;
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
  v2 = [(MNActiveRouteInfo *)self->_mainRouteInfo etaRoute];
  v3 = [v2 navigabilityInfo];

  return v3;
}

- (NSArray)spokenTexts
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ([(GEOTrafficBannerText *)self->_geoTrafficBannerText hasSpokenPrompt])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(GEOTrafficBannerText *)self->_geoTrafficBannerText spokenPrompt];
    v5 = [(MNTrafficIncidentAlert *)self _dynamicStringValues];
    v6 = [v3 _navigation_stringForServerFormattedString:v4 abbreviatedUnits:0 detail:1 spoken:1 overrideVariables:v5];

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
  v3 = [(GEOTrafficBannerText *)self->_geoTrafficBannerText bannerSmallTexts];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(MNTrafficIncidentAlert *)self _dynamicStringValues];
    v7 = [v5 _navigation_stringForServerFormattedString:v4 abbreviatedUnits:1 detail:0 spoken:0 overrideVariables:v6];

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
  v3 = [(GEOTrafficBannerText *)self->_geoTrafficBannerText bannerLargeTexts];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(MNTrafficIncidentAlert *)self _dynamicStringValues];
    v7 = [v5 _navigation_stringForServerFormattedString:v4 abbreviatedUnits:1 detail:0 spoken:0 overrideVariables:v6];

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

+ (id)_validTrafficIncidentAlertsForBannerTexts:(id)a3 mainRouteInfo:(id)a4 alternateRouteInfo:(id)a5
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v36 = a4;
  v8 = a5;
  v9 = objc_opt_new();
  if (v7)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = v7;
    obj = v7;
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
          v16 = [v14 bannerStyle];
          if (v16 >= 9)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
          }

          else
          {
            v17 = off_1E84304A0[v16];
          }

          v18 = [v14 bannerId];
          *buf = 138412546;
          v42 = v17;
          v43 = 2112;
          v44 = v18;
          _os_log_impl(&dword_1D311E000, v15, OS_LOG_TYPE_DEFAULT, "Received Dodgeball alert from server response: %@, %@", buf, 0x16u);
        }

        v19 = [v14 bannerStyle];
        if (v19 <= 7)
        {
          v20 = 1 << v19;
          if (((1 << v19) & 0x92) != 0)
          {
            if (v8)
            {
              goto LABEL_35;
            }

            v24 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = [v14 bannerStyle];
              if (v25 >= 9)
              {
                v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v25];
              }

              else
              {
                v26 = off_1E84304A0[v25];
              }

              *buf = 138412290;
              v42 = v26;
              _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "Dodgeball response (%@) requires alternate route, but none was found.", buf, 0xCu);
            }

            v8 = 0;
            goto LABEL_36;
          }

          if ((v20 & 0x24) != 0)
          {

            v8 = 0;
LABEL_35:
            v24 = [[MNTrafficIncidentAlert alloc] _initWithGeoTrafficBannerText:v14 mainRouteInfo:v36 alternateRouteInfo:v8];
            [v9 addObject:v24];
            goto LABEL_36;
          }

          if ((v20 & 0x48) != 0)
          {
            goto LABEL_35;
          }
        }

        if (!v19)
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

          if (v8)
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
          v28 = [v14 bannerStyle];
          if (v28 >= 9)
          {
            v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v28];
          }

          else
          {
            v29 = off_1E84304A0[v28];
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
        v7 = v34;
        goto LABEL_46;
      }
    }
  }

  v31 = 0;
LABEL_46:

  v32 = *MEMORY[0x1E69E9840];

  return v31;
}

+ (id)validTrafficIncidentAlertsForETAUpdate:(id)a3 alternateRouteInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 etaRoute];
  v8 = [v7 geoTrafficBannerTexts];
  v9 = [MNTrafficIncidentAlert _validTrafficIncidentAlertsForBannerTexts:v8 mainRouteInfo:v6 alternateRouteInfo:v5];

  return v9;
}

+ (id)validTrafficIncidentAlertsForNewRoute:(id)a3 alternateRouteInfo:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 route];
  v8 = [v7 geoTrafficBannerTexts];
  v9 = [MNTrafficIncidentAlert _validTrafficIncidentAlertsForBannerTexts:v8 mainRouteInfo:v6 alternateRouteInfo:v5];

  return v9;
}

- (NSMutableArray)oldRouteIncidents
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(MNActiveRouteInfo *)self->_mainRouteInfo traffic];
  v4 = [v3 routeIncidents];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if (!v7)
        {
          v11 = MEMORY[0x1E695DF70];
          v12 = [(MNActiveRouteInfo *)self->_mainRouteInfo traffic];
          v13 = [v12 routeIncidents];
          v7 = [v11 arrayWithCapacity:{objc_msgSend(v13, "count")}];
        }

        v14 = [v10 incident];

        if (v14)
        {
          v15 = [v10 incident];
          [v7 addObject:v15];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v2 = [(MNActiveRouteInfo *)self->_mainRouteInfo etaRoute];
  [v2 historicTravelDuration];
  v4 = v3;

  return v4;
}

- (double)oldEstimatedTime
{
  v2 = [(MNActiveRouteInfo *)self->_mainRouteInfo etaRoute];
  [v2 travelDuration];
  v4 = v3;

  return v4;
}

- (double)newEstimatedTime
{
  v2 = [(MNActiveRouteInfo *)self->_alternateRouteInfo route];
  v3 = [v2 expectedTime];

  return v3;
}

+ (void)_addDebugArguments:(id)a3
{
  v3 = MEMORY[0x1E69A1DC0];
  v4 = a3;
  v6 = objc_alloc_init(v3);
  [v6 setToken:@"{distance}"];
  [v6 setFormat:1];
  [v6 setValInt1:5000];
  [v4 addFormatArgument:v6];
  v5 = objc_alloc_init(MEMORY[0x1E69A1DC0]);
  [v5 setToken:@"{time}"];
  [v5 setFormat:2];
  [v5 setValInt1:5000];
  [v4 addFormatArgument:v5];
}

@end