@interface EKTravelEngineOriginalEvent
- (BOOL)isEqualToOriginalEvent:(id)event;
- (id)description;
@end

@implementation EKTravelEngineOriginalEvent

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CF77B0]);
  v12.receiver = self;
  v12.super_class = EKTravelEngineOriginalEvent;
  v4 = [(EKTravelEngineOriginalEvent *)&v12 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  eventExternalURL = [(EKTravelEngineOriginalEvent *)self eventExternalURL];
  [v5 setKey:@"eventExternalURL" withString:eventExternalURL];

  startDate = [(EKTravelEngineOriginalEvent *)self startDate];
  [v5 setKey:@"startDate" withDate:startDate];

  endDate = [(EKTravelEngineOriginalEvent *)self endDate];
  [v5 setKey:@"endDate" withDate:endDate];

  locationString = [(EKTravelEngineOriginalEvent *)self locationString];
  [v5 setKey:@"locationString" withString:locationString];

  build = [v5 build];

  return build;
}

- (BOOL)isEqualToOriginalEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    goto LABEL_25;
  }

  geoLocation = [(EKTravelEngineOriginalEvent *)self geoLocation];
  geoLocation2 = [eventCopy geoLocation];
  v7 = __54__EKTravelEngineOriginalEvent_isEqualToOriginalEvent___block_invoke_3(geoLocation2, geoLocation, geoLocation2);

  if (v7)
  {
    goto LABEL_25;
  }

  transportTypeOverride = [(EKTravelEngineOriginalEvent *)self transportTypeOverride];
  if (transportTypeOverride != [eventCopy transportTypeOverride])
  {
    goto LABEL_25;
  }

  endDate = [(EKTravelEngineOriginalEvent *)self endDate];
  endDate2 = [eventCopy endDate];
  v11 = endDate2;
  if (endDate)
  {
    v12 = [endDate isEqualToDate:endDate2];

    if ((v12 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (v11)
    {
      goto LABEL_25;
    }
  }

  locationString = [(EKTravelEngineOriginalEvent *)self locationString];
  locationString2 = [eventCopy locationString];
  v15 = locationString2;
  if (locationString)
  {
    v16 = [locationString isEqualToString:locationString2];

    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (v15)
    {
      goto LABEL_25;
    }
  }

  locationMapKitHandle = [(EKTravelEngineOriginalEvent *)self locationMapKitHandle];
  locationMapKitHandle2 = [eventCopy locationMapKitHandle];
  v19 = locationMapKitHandle2;
  if (locationMapKitHandle)
  {
    v20 = [locationMapKitHandle isEqualToData:locationMapKitHandle2];

    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (v19)
    {
      goto LABEL_25;
    }
  }

  startDate = [(EKTravelEngineOriginalEvent *)self startDate];
  startDate2 = [eventCopy startDate];
  v23 = startDate2;
  if (startDate)
  {
    v24 = [startDate isEqualToDate:startDate2];

    if ((v24 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (v23)
    {
      goto LABEL_25;
    }
  }

  locationIsAConferenceRoom = [(EKTravelEngineOriginalEvent *)self locationIsAConferenceRoom];
  if (locationIsAConferenceRoom != [eventCopy locationIsAConferenceRoom])
  {
    goto LABEL_25;
  }

  eventExternalURL = [(EKTravelEngineOriginalEvent *)self eventExternalURL];
  eventExternalURL2 = [eventCopy eventExternalURL];
  v28 = eventExternalURL2;
  if (!eventExternalURL)
  {

    if (!v28)
    {
      goto LABEL_23;
    }

LABEL_25:
    LOBYTE(v31) = 0;
    goto LABEL_26;
  }

  v29 = [eventExternalURL isEqualToString:eventExternalURL2];

  if ((v29 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_23:
  automaticGeocodingAllowed = [(EKTravelEngineOriginalEvent *)self automaticGeocodingAllowed];
  v31 = automaticGeocodingAllowed ^ [eventCopy automaticGeocodingAllowed] ^ 1;
LABEL_26:

  return v31;
}

BOOL __54__EKTravelEngineOriginalEvent_isEqualToOriginalEvent___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4 || !v5)
  {
    if (v4)
    {
      v9 = v5 == 0;
    }

    else
    {
      v9 = 0;
    }

    v7 = v9;
    if (v5 && v4)
    {
      [v5 distanceFromLocation:v4];
      if (v10 >= 0.5)
      {
        [v4 altitude];
        v12 = v11;
        [v6 altitude];
        v7 = vabdd_f64(v12, v13) >= 0.5;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

@end