@interface IAPNavigationAccessoryComponent
- (BOOL)isEqual:(id)a3;
- (IAPNavigationAccessoryComponent)initWithDict:(id)a3;
@end

@implementation IAPNavigationAccessoryComponent

- (IAPNavigationAccessoryComponent)initWithDict:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = IAPNavigationAccessoryComponent;
  v5 = [(IAPNavigationAccessoryComponent *)&v24 init];
  v6 = v5;
  if (v5)
  {
    v5->__enabledModified = 0;
    v7 = [v4 objectForKey:@"isEnabled"];
    v6->_isEnabled = [v7 isEqualToString:@"YES"];
    v8 = [v4 objectForKey:@"identifier"];
    v9 = [v8 unsignedIntegerValue];

    if (v9)
    {
      v6->_identifier = v9;
    }

    v10 = [v4 objectForKey:@"name"];
    if (v10)
    {
      objc_storeStrong(&v6->_name, v10);
    }

    v11 = [v4 objectForKey:@"maxLength_CurrentRoadName"];
    v12 = [v11 unsignedIntegerValue];

    if (v12)
    {
      v6->_maxLength_CurrentRoadName = v12;
    }

    v13 = [v4 objectForKey:@"maxLength_DestinationRoadName"];
    v14 = [v13 unsignedIntegerValue];

    if (v14)
    {
      v6->_maxLength_DestinationRoadName = v14;
    }

    v15 = [v4 objectForKey:@"maxLength_PostManeuverRoadName"];
    v16 = [v15 unsignedIntegerValue];

    if (v16)
    {
      v6->_maxLength_PostManeuverRoadName = v16;
    }

    v17 = [v4 objectForKey:@"maxLength_ManeuverDescription"];
    v18 = [v17 unsignedIntegerValue];

    if (v18)
    {
      v6->_maxLength_ManeuverDescription = v18;
    }

    v19 = [v4 objectForKey:@"maxCapacity_GuidanceManeuver"];
    v20 = [v19 unsignedIntegerValue];

    if (v20)
    {
      v6->_maxCapacity_GuidanceManeuver = v20;
    }

    v21 = [v4 objectForKey:@"requestSourceName"];
    v6->_requestSourceName = [v21 BOOLValue];

    v22 = [v4 objectForKey:@"requestSourceSupportsRouteGuidance"];
    v6->_requestSourceSupportsRouteGuidance = [v22 BOOLValue];
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    identifier = self->_identifier;
    if (identifier == [v5 identifier])
    {
      name = self->_name;
      v8 = [v5 name];
      if (-[NSString isEqualToString:](name, "isEqualToString:", v8) && (isEnabled = self->_isEnabled, isEnabled == [v5 isEnabled]) && (maxLength_CurrentRoadName = self->_maxLength_CurrentRoadName, maxLength_CurrentRoadName == objc_msgSend(v5, "maxLength_CurrentRoadName")) && (maxLength_DestinationRoadName = self->_maxLength_DestinationRoadName, maxLength_DestinationRoadName == objc_msgSend(v5, "maxLength_DestinationRoadName")) && (maxLength_PostManeuverRoadName = self->_maxLength_PostManeuverRoadName, maxLength_PostManeuverRoadName == objc_msgSend(v5, "maxLength_PostManeuverRoadName")) && (maxLength_ManeuverDescription = self->_maxLength_ManeuverDescription, maxLength_ManeuverDescription == objc_msgSend(v5, "maxLength_ManeuverDescription")) && (maxCapacity_GuidanceManeuver = self->_maxCapacity_GuidanceManeuver, maxCapacity_GuidanceManeuver == objc_msgSend(v5, "maxCapacity_GuidanceManeuver")) && (requestSourceName = self->_requestSourceName, requestSourceName == objc_msgSend(v5, "requestSourceName")))
      {
        requestSourceSupportsRouteGuidance = self->_requestSourceSupportsRouteGuidance;
        v17 = requestSourceSupportsRouteGuidance == [v5 requestSourceSupportsRouteGuidance];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end