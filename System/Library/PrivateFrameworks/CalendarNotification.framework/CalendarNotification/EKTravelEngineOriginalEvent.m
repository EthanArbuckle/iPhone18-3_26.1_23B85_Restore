@interface EKTravelEngineOriginalEvent
- (BOOL)isEqualToOriginalEvent:(id)a3;
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

  v6 = [(EKTravelEngineOriginalEvent *)self eventExternalURL];
  [v5 setKey:@"eventExternalURL" withString:v6];

  v7 = [(EKTravelEngineOriginalEvent *)self startDate];
  [v5 setKey:@"startDate" withDate:v7];

  v8 = [(EKTravelEngineOriginalEvent *)self endDate];
  [v5 setKey:@"endDate" withDate:v8];

  v9 = [(EKTravelEngineOriginalEvent *)self locationString];
  [v5 setKey:@"locationString" withString:v9];

  v10 = [v5 build];

  return v10;
}

- (BOOL)isEqualToOriginalEvent:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = [(EKTravelEngineOriginalEvent *)self geoLocation];
  v6 = [v4 geoLocation];
  v7 = __54__EKTravelEngineOriginalEvent_isEqualToOriginalEvent___block_invoke_3(v6, v5, v6);

  if (v7)
  {
    goto LABEL_25;
  }

  v8 = [(EKTravelEngineOriginalEvent *)self transportTypeOverride];
  if (v8 != [v4 transportTypeOverride])
  {
    goto LABEL_25;
  }

  v9 = [(EKTravelEngineOriginalEvent *)self endDate];
  v10 = [v4 endDate];
  v11 = v10;
  if (v9)
  {
    v12 = [v9 isEqualToDate:v10];

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

  v13 = [(EKTravelEngineOriginalEvent *)self locationString];
  v14 = [v4 locationString];
  v15 = v14;
  if (v13)
  {
    v16 = [v13 isEqualToString:v14];

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

  v17 = [(EKTravelEngineOriginalEvent *)self locationMapKitHandle];
  v18 = [v4 locationMapKitHandle];
  v19 = v18;
  if (v17)
  {
    v20 = [v17 isEqualToData:v18];

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

  v21 = [(EKTravelEngineOriginalEvent *)self startDate];
  v22 = [v4 startDate];
  v23 = v22;
  if (v21)
  {
    v24 = [v21 isEqualToDate:v22];

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

  v25 = [(EKTravelEngineOriginalEvent *)self locationIsAConferenceRoom];
  if (v25 != [v4 locationIsAConferenceRoom])
  {
    goto LABEL_25;
  }

  v26 = [(EKTravelEngineOriginalEvent *)self eventExternalURL];
  v27 = [v4 eventExternalURL];
  v28 = v27;
  if (!v26)
  {

    if (!v28)
    {
      goto LABEL_23;
    }

LABEL_25:
    LOBYTE(v31) = 0;
    goto LABEL_26;
  }

  v29 = [v26 isEqualToString:v27];

  if ((v29 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_23:
  v30 = [(EKTravelEngineOriginalEvent *)self automaticGeocodingAllowed];
  v31 = v30 ^ [v4 automaticGeocodingAllowed] ^ 1;
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