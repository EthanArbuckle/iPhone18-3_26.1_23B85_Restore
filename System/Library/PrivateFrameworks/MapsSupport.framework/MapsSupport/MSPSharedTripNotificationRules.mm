@interface MSPSharedTripNotificationRules
+ (id)unarchivingObjectsSet;
- (BOOL)hasSentNotificationType:(unint64_t)type forState:(id)state waypoint:(id)waypoint;
- (MSPSharedTripNotificationRules)init;
- (MSPSharedTripNotificationRules)initWithCoder:(id)coder;
- (MSPSharedTripNotificationRules)initWithMaximumNumberOfNotifications:(unint64_t)notifications;
- (MSPSharedTripNotificationRules)initWithMaximumNumberOfNotifications:(unint64_t)notifications minimumNotificationInterval:(double)interval;
- (id)description;
- (unint64_t)currentlyNecessaryNotificationTypeForState:(id)state;
- (void)didPostNotificationType:(unint64_t)type forState:(id)state;
- (void)didReceiveUpdateWithETA:(double)a lastUpdated:(double)updated;
- (void)encodeWithCoder:(id)coder;
- (void)incrementMinimumETADifference;
@end

@implementation MSPSharedTripNotificationRules

+ (id)unarchivingObjectsSet
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  maxPostedNotifications = self->_maxPostedNotifications;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:maxPostedNotifications];
  v8 = NSStringFromSelector(sel_maxPostedNotifications);
  [coderCopy encodeObject:v7 forKey:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_postedNotifications];
  v10 = NSStringFromSelector(sel_postedNotifications);
  [coderCopy encodeObject:v9 forKey:v10];

  minimumETADifference = self->_minimumETADifference;
  v12 = NSStringFromSelector(sel_minimumETADifference);
  [coderCopy encodeDouble:v12 forKey:minimumETADifference];

  minimumNotificationInterval = self->_minimumNotificationInterval;
  v14 = NSStringFromSelector(sel_minimumNotificationInterval);
  [coderCopy encodeDouble:v14 forKey:minimumNotificationInterval];

  lastPostedETADate = self->_lastPostedETADate;
  v16 = NSStringFromSelector(sel_lastPostedETADate);
  [coderCopy encodeObject:lastPostedETADate forKey:v16];

  lastPostedNotificationDate = self->_lastPostedNotificationDate;
  v18 = NSStringFromSelector(sel_lastPostedNotificationDate);
  [coderCopy encodeObject:lastPostedNotificationDate forKey:v18];

  lastUpdatedDate = self->_lastUpdatedDate;
  v20 = NSStringFromSelector(sel_lastUpdatedDate);
  [coderCopy encodeObject:lastUpdatedDate forKey:v20];

  hasMadeFinalPush = self->_hasMadeFinalPush;
  v22 = NSStringFromSelector(sel_hasMadeFinalPush);
  [coderCopy encodeBool:hasMadeFinalPush forKey:v22];

  intermediateArrivalWaypointPostedNotifications = self->_intermediateArrivalWaypointPostedNotifications;
  v24 = NSStringFromSelector(sel_intermediateArrivalWaypointPostedNotifications);
  [coderCopy encodeObject:intermediateArrivalWaypointPostedNotifications forKey:v24];
}

- (MSPSharedTripNotificationRules)initWithCoder:(id)coder
{
  v38[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_maxPostedNotifications);
  v6 = [coderCopy decodeObjectForKey:v5];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  v8 = NSStringFromSelector(sel_minimumNotificationInterval);
  [coderCopy decodeDoubleForKey:v8];
  v10 = v9;

  v11 = [(MSPSharedTripNotificationRules *)self initWithMaximumNumberOfNotifications:unsignedIntegerValue minimumNotificationInterval:v10];
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_postedNotifications);
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    v11->_postedNotifications = [v14 unsignedIntegerValue];

    v15 = NSStringFromSelector(sel_minimumETADifference);
    [coderCopy decodeDoubleForKey:v15];
    v11->_minimumETADifference = v16;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_lastPostedETADate);
    v19 = [coderCopy decodeObjectOfClass:v17 forKey:v18];
    lastPostedETADate = v11->_lastPostedETADate;
    v11->_lastPostedETADate = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_lastPostedNotificationDate);
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    lastPostedNotificationDate = v11->_lastPostedNotificationDate;
    v11->_lastPostedNotificationDate = v23;

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_lastUpdatedDate);
    v27 = [coderCopy decodeObjectOfClass:v25 forKey:v26];
    lastUpdatedDate = v11->_lastUpdatedDate;
    v11->_lastUpdatedDate = v27;

    v29 = NSStringFromSelector(sel_hasMadeFinalPush);
    v11->_hasMadeFinalPush = [coderCopy decodeBoolForKey:v29];

    v30 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v38[2] = objc_opt_class();
    v38[3] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    v32 = [v30 setWithArray:v31];
    v33 = NSStringFromSelector(sel_intermediateArrivalWaypointPostedNotifications);
    v34 = [coderCopy decodeObjectOfClasses:v32 forKey:v33];
    intermediateArrivalWaypointPostedNotifications = v11->_intermediateArrivalWaypointPostedNotifications;
    v11->_intermediateArrivalWaypointPostedNotifications = v34;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v11;
}

- (MSPSharedTripNotificationRules)init
{
  UInteger = GEOConfigGetUInteger();
  GEOConfigGetDouble();

  return [(MSPSharedTripNotificationRules *)self initWithMaximumNumberOfNotifications:UInteger minimumNotificationInterval:?];
}

- (MSPSharedTripNotificationRules)initWithMaximumNumberOfNotifications:(unint64_t)notifications
{
  GEOConfigGetDouble();

  return [(MSPSharedTripNotificationRules *)self initWithMaximumNumberOfNotifications:notifications minimumNotificationInterval:?];
}

- (MSPSharedTripNotificationRules)initWithMaximumNumberOfNotifications:(unint64_t)notifications minimumNotificationInterval:(double)interval
{
  v16.receiver = self;
  v16.super_class = MSPSharedTripNotificationRules;
  v6 = [(MSPSharedTripNotificationRules *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_minimumNotificationInterval = interval;
    v6->_maxPostedNotifications = notifications;
    GEOConfigGetDouble();
    v7->_minimumETADifference = v8;
    v7->_postedNotifications = 0;
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
    lastPostedETADate = v7->_lastPostedETADate;
    v7->_lastPostedETADate = v9;

    v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
    lastPostedNotificationDate = v7->_lastPostedNotificationDate;
    v7->_lastPostedNotificationDate = v11;

    v7->_hasMadeFinalPush = 0;
    v13 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    intermediateArrivalWaypointPostedNotifications = v7->_intermediateArrivalWaypointPostedNotifications;
    v7->_intermediateArrivalWaypointPostedNotifications = v13;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MSPSharedTripNotificationRules postedNotifications](self, "postedNotifications")}];
  lastPostedNotificationDate = [(MSPSharedTripNotificationRules *)self lastPostedNotificationDate];
  lastPostedETADate = [(MSPSharedTripNotificationRules *)self lastPostedETADate];
  lastUpdatedDate = [(MSPSharedTripNotificationRules *)self lastUpdatedDate];
  hasMadeFinalPush = [(MSPSharedTripNotificationRules *)self hasMadeFinalPush];
  v9 = @"NO";
  if (hasMadeFinalPush)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"postedNotifications %@ \nlastPostedNotificationDate %@ \nlastPostedETADate %@ \nlastUpdatedDate %@ \nhasMadeFinalPush %@", v4, lastPostedNotificationDate, lastPostedETADate, lastUpdatedDate, v9];

  return v10;
}

- (void)didPostNotificationType:(unint64_t)type forState:(id)state
{
  stateCopy = state;
  if ([stateCopy waypointInfosCount])
  {
    if ([stateCopy hasCurrentWaypointIndex])
    {
      currentWaypointIndex = [stateCopy currentWaypointIndex];
      if ([stateCopy waypointInfosCount] > currentWaypointIndex)
      {
        waypointInfos = [stateCopy waypointInfos];
        v8 = [waypointInfos objectAtIndex:{objc_msgSend(stateCopy, "currentWaypointIndex")}];

        if ([v8 hasUniqueIdentifier])
        {
          intermediateArrivalWaypointPostedNotifications = [(MSPSharedTripNotificationRules *)self intermediateArrivalWaypointPostedNotifications];
          uniqueIdentifier = [v8 uniqueIdentifier];
          v11 = [intermediateArrivalWaypointPostedNotifications objectForKey:uniqueIdentifier];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
          }

          else
          {
            v13 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:0 capacity:1];
          }

          v14 = v13;

          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
          [v14 addObject:v15];

          intermediateArrivalWaypointPostedNotifications2 = [(MSPSharedTripNotificationRules *)self intermediateArrivalWaypointPostedNotifications];
          uniqueIdentifier2 = [v8 uniqueIdentifier];
          [intermediateArrivalWaypointPostedNotifications2 setObject:v14 forKey:uniqueIdentifier2];
        }
      }
    }
  }

  currentETADate = [(MSPSharedTripNotificationRules *)self currentETADate];
  [(MSPSharedTripNotificationRules *)self setLastPostedETADate:currentETADate];

  date = [MEMORY[0x277CBEAA8] date];
  [(MSPSharedTripNotificationRules *)self setLastPostedNotificationDate:date];

  [(MSPSharedTripNotificationRules *)self setPostedNotifications:[(MSPSharedTripNotificationRules *)self postedNotifications]+ 1];
  [(MSPSharedTripNotificationRules *)self incrementMinimumETADifference];
}

- (unint64_t)currentlyNecessaryNotificationTypeForState:(id)state
{
  v51 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ([(MSPSharedTripNotificationRules *)self hasMadeFinalPush])
  {
    v5 = 0;
  }

  else
  {
    if ([stateCopy waypointInfosCount] && objc_msgSend(stateCopy, "hasCurrentWaypointIndex") && (v6 = objc_msgSend(stateCopy, "currentWaypointIndex"), objc_msgSend(stateCopy, "waypointInfosCount") > v6))
    {
      waypointInfos = [stateCopy waypointInfos];
      v8 = [waypointInfos objectAtIndex:{objc_msgSend(stateCopy, "currentWaypointIndex")}];
    }

    else
    {
      v8 = 0;
    }

    currentETADate = [(MSPSharedTripNotificationRules *)self currentETADate];
    [currentETADate timeIntervalSinceNow];
    v11 = v10;
    GEOConfigGetDouble();
    v13 = v12;

    postedNotifications = [(MSPSharedTripNotificationRules *)self postedNotifications];
    if (v11 >= v13 || postedNotifications == 0)
    {
      if (![stateCopy hasResumed] || !objc_msgSend(stateCopy, "resumed") || (v5 = 5, -[MSPSharedTripNotificationRules hasSentNotificationType:forState:waypoint:](self, "hasSentNotificationType:forState:waypoint:", 5, stateCopy, v8)))
      {
        if ([(MSPSharedTripNotificationRules *)self postedNotifications])
        {
          lastPostedNotificationDate = [(MSPSharedTripNotificationRules *)self lastPostedNotificationDate];
          [lastPostedNotificationDate timeIntervalSinceNow];
          v18 = v17;
          [(MSPSharedTripNotificationRules *)self minimumNotificationInterval];
          v20 = -v19;

          currentETADate2 = [(MSPSharedTripNotificationRules *)self currentETADate];
          lastPostedETADate = [(MSPSharedTripNotificationRules *)self lastPostedETADate];
          [currentETADate2 timeIntervalSinceDate:lastPostedETADate];
          v24 = v23;
          [(MSPSharedTripNotificationRules *)self minimumETADifference];
          v26 = v24 <= -v25;

          currentETADate3 = [(MSPSharedTripNotificationRules *)self currentETADate];
          lastPostedETADate2 = [(MSPSharedTripNotificationRules *)self lastPostedETADate];
          [currentETADate3 timeIntervalSinceDate:lastPostedETADate2];
          v30 = v29;
          [(MSPSharedTripNotificationRules *)self minimumETADifference];
          v32 = v31;

          v33 = v30 >= v32 || v26;
          postedNotifications2 = [(MSPSharedTripNotificationRules *)self postedNotifications];
          maxPostedNotifications = [(MSPSharedTripNotificationRules *)self maxPostedNotifications];
          v36 = maxPostedNotifications;
          if (v18 <= v20 && v33 && postedNotifications2 < maxPostedNotifications)
          {
            v5 = 2;
          }

          else
          {
            v40 = MSPGetSharedTripLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v43 = 134218752;
              postedNotifications3 = [(MSPSharedTripNotificationRules *)self postedNotifications];
              v45 = 1024;
              v46 = v18 <= v20;
              v47 = 1024;
              v48 = v33;
              v49 = 1024;
              v50 = postedNotifications2 < v36;
              _os_log_impl(&dword_25813A000, v40, OS_LOG_TYPE_INFO, "[SR] currentlyNecessaryNotificationType postedNotifications: %lu, minimumTimeElapsedSinceLastPush: %d minimumETADifferenceMet: %d isUnderMaximumPushLimit: %d", &v43, 0x1Eu);
            }

            v5 = 0;
          }
        }

        else
        {
          v5 = 1;
        }
      }
    }

    else if ([stateCopy isNavigatingToIntermediateStop])
    {
      chargingStationInfo = [v8 chargingStationInfo];

      if (chargingStationInfo)
      {
        v5 = 3;
        selfCopy2 = self;
        v39 = 3;
      }

      else
      {
        v5 = 4;
        selfCopy2 = self;
        v39 = 4;
      }

      if ([(MSPSharedTripNotificationRules *)selfCopy2 hasSentNotificationType:v39 forState:stateCopy waypoint:v8])
      {
        v5 = 0;
      }
    }

    else
    {
      [(MSPSharedTripNotificationRules *)self setHasMadeFinalPush:1];
      v5 = 6;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)didReceiveUpdateWithETA:(double)a lastUpdated:(double)updated
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:updated];
  [(MSPSharedTripNotificationRules *)self setLastUpdatedDate:v6];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a];
  [(MSPSharedTripNotificationRules *)self setCurrentETADate:v7];
}

- (void)incrementMinimumETADifference
{
  if ([(MSPSharedTripNotificationRules *)self postedNotifications])
  {
    v3 = ([(MSPSharedTripNotificationRules *)self postedNotifications]- 1);
  }

  else
  {
    v3 = 0.0;
  }

  [(MSPSharedTripNotificationRules *)self minimumETADifferenceIncrement];
  v5 = v4;
  [(MSPSharedTripNotificationRules *)self minimumETADifference];
  v7 = v6 + v5 * v3;

  [(MSPSharedTripNotificationRules *)self setMinimumETADifference:v7];
}

- (BOOL)hasSentNotificationType:(unint64_t)type forState:(id)state waypoint:(id)waypoint
{
  waypointCopy = waypoint;
  if ([waypointCopy hasUniqueIdentifier])
  {
    intermediateArrivalWaypointPostedNotifications = [(MSPSharedTripNotificationRules *)self intermediateArrivalWaypointPostedNotifications];
    uniqueIdentifier = [waypointCopy uniqueIdentifier];
    v10 = [intermediateArrivalWaypointPostedNotifications objectForKey:uniqueIdentifier];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v12 = [v10 containsObject:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end