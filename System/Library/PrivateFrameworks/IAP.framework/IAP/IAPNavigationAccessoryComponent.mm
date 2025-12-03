@interface IAPNavigationAccessoryComponent
- (BOOL)isEqual:(id)equal;
- (IAPNavigationAccessoryComponent)initWithDict:(id)dict;
@end

@implementation IAPNavigationAccessoryComponent

- (IAPNavigationAccessoryComponent)initWithDict:(id)dict
{
  dictCopy = dict;
  v24.receiver = self;
  v24.super_class = IAPNavigationAccessoryComponent;
  v5 = [(IAPNavigationAccessoryComponent *)&v24 init];
  v6 = v5;
  if (v5)
  {
    v5->__enabledModified = 0;
    v7 = [dictCopy objectForKey:@"isEnabled"];
    v6->_isEnabled = [v7 isEqualToString:@"YES"];
    v8 = [dictCopy objectForKey:@"identifier"];
    unsignedIntegerValue = [v8 unsignedIntegerValue];

    if (unsignedIntegerValue)
    {
      v6->_identifier = unsignedIntegerValue;
    }

    v10 = [dictCopy objectForKey:@"name"];
    if (v10)
    {
      objc_storeStrong(&v6->_name, v10);
    }

    v11 = [dictCopy objectForKey:@"maxLength_CurrentRoadName"];
    unsignedIntegerValue2 = [v11 unsignedIntegerValue];

    if (unsignedIntegerValue2)
    {
      v6->_maxLength_CurrentRoadName = unsignedIntegerValue2;
    }

    v13 = [dictCopy objectForKey:@"maxLength_DestinationRoadName"];
    unsignedIntegerValue3 = [v13 unsignedIntegerValue];

    if (unsignedIntegerValue3)
    {
      v6->_maxLength_DestinationRoadName = unsignedIntegerValue3;
    }

    v15 = [dictCopy objectForKey:@"maxLength_PostManeuverRoadName"];
    unsignedIntegerValue4 = [v15 unsignedIntegerValue];

    if (unsignedIntegerValue4)
    {
      v6->_maxLength_PostManeuverRoadName = unsignedIntegerValue4;
    }

    v17 = [dictCopy objectForKey:@"maxLength_ManeuverDescription"];
    unsignedIntegerValue5 = [v17 unsignedIntegerValue];

    if (unsignedIntegerValue5)
    {
      v6->_maxLength_ManeuverDescription = unsignedIntegerValue5;
    }

    v19 = [dictCopy objectForKey:@"maxCapacity_GuidanceManeuver"];
    unsignedIntegerValue6 = [v19 unsignedIntegerValue];

    if (unsignedIntegerValue6)
    {
      v6->_maxCapacity_GuidanceManeuver = unsignedIntegerValue6;
    }

    v21 = [dictCopy objectForKey:@"requestSourceName"];
    v6->_requestSourceName = [v21 BOOLValue];

    v22 = [dictCopy objectForKey:@"requestSourceSupportsRouteGuidance"];
    v6->_requestSourceSupportsRouteGuidance = [v22 BOOLValue];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = self->_identifier;
    if (identifier == [v5 identifier])
    {
      name = self->_name;
      name = [v5 name];
      if (-[NSString isEqualToString:](name, "isEqualToString:", name) && (isEnabled = self->_isEnabled, isEnabled == [v5 isEnabled]) && (maxLength_CurrentRoadName = self->_maxLength_CurrentRoadName, maxLength_CurrentRoadName == objc_msgSend(v5, "maxLength_CurrentRoadName")) && (maxLength_DestinationRoadName = self->_maxLength_DestinationRoadName, maxLength_DestinationRoadName == objc_msgSend(v5, "maxLength_DestinationRoadName")) && (maxLength_PostManeuverRoadName = self->_maxLength_PostManeuverRoadName, maxLength_PostManeuverRoadName == objc_msgSend(v5, "maxLength_PostManeuverRoadName")) && (maxLength_ManeuverDescription = self->_maxLength_ManeuverDescription, maxLength_ManeuverDescription == objc_msgSend(v5, "maxLength_ManeuverDescription")) && (maxCapacity_GuidanceManeuver = self->_maxCapacity_GuidanceManeuver, maxCapacity_GuidanceManeuver == objc_msgSend(v5, "maxCapacity_GuidanceManeuver")) && (requestSourceName = self->_requestSourceName, requestSourceName == objc_msgSend(v5, "requestSourceName")))
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