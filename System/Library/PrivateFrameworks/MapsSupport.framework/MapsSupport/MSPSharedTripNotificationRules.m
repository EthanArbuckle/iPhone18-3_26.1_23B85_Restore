@interface MSPSharedTripNotificationRules
+ (id)unarchivingObjectsSet;
- (BOOL)hasSentNotificationType:(unint64_t)a3 forState:(id)a4 waypoint:(id)a5;
- (MSPSharedTripNotificationRules)init;
- (MSPSharedTripNotificationRules)initWithCoder:(id)a3;
- (MSPSharedTripNotificationRules)initWithMaximumNumberOfNotifications:(unint64_t)a3;
- (MSPSharedTripNotificationRules)initWithMaximumNumberOfNotifications:(unint64_t)a3 minimumNotificationInterval:(double)a4;
- (id)description;
- (unint64_t)currentlyNecessaryNotificationTypeForState:(id)a3;
- (void)didPostNotificationType:(unint64_t)a3 forState:(id)a4;
- (void)didReceiveUpdateWithETA:(double)a3 lastUpdated:(double)a4;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  maxPostedNotifications = self->_maxPostedNotifications;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:maxPostedNotifications];
  v8 = NSStringFromSelector(sel_maxPostedNotifications);
  [v6 encodeObject:v7 forKey:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_postedNotifications];
  v10 = NSStringFromSelector(sel_postedNotifications);
  [v6 encodeObject:v9 forKey:v10];

  minimumETADifference = self->_minimumETADifference;
  v12 = NSStringFromSelector(sel_minimumETADifference);
  [v6 encodeDouble:v12 forKey:minimumETADifference];

  minimumNotificationInterval = self->_minimumNotificationInterval;
  v14 = NSStringFromSelector(sel_minimumNotificationInterval);
  [v6 encodeDouble:v14 forKey:minimumNotificationInterval];

  lastPostedETADate = self->_lastPostedETADate;
  v16 = NSStringFromSelector(sel_lastPostedETADate);
  [v6 encodeObject:lastPostedETADate forKey:v16];

  lastPostedNotificationDate = self->_lastPostedNotificationDate;
  v18 = NSStringFromSelector(sel_lastPostedNotificationDate);
  [v6 encodeObject:lastPostedNotificationDate forKey:v18];

  lastUpdatedDate = self->_lastUpdatedDate;
  v20 = NSStringFromSelector(sel_lastUpdatedDate);
  [v6 encodeObject:lastUpdatedDate forKey:v20];

  hasMadeFinalPush = self->_hasMadeFinalPush;
  v22 = NSStringFromSelector(sel_hasMadeFinalPush);
  [v6 encodeBool:hasMadeFinalPush forKey:v22];

  intermediateArrivalWaypointPostedNotifications = self->_intermediateArrivalWaypointPostedNotifications;
  v24 = NSStringFromSelector(sel_intermediateArrivalWaypointPostedNotifications);
  [v6 encodeObject:intermediateArrivalWaypointPostedNotifications forKey:v24];
}

- (MSPSharedTripNotificationRules)initWithCoder:(id)a3
{
  v38[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NSStringFromSelector(sel_maxPostedNotifications);
  v6 = [v4 decodeObjectForKey:v5];
  v7 = [v6 unsignedIntegerValue];

  v8 = NSStringFromSelector(sel_minimumNotificationInterval);
  [v4 decodeDoubleForKey:v8];
  v10 = v9;

  v11 = [(MSPSharedTripNotificationRules *)self initWithMaximumNumberOfNotifications:v7 minimumNotificationInterval:v10];
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_postedNotifications);
    v14 = [v4 decodeObjectOfClass:v12 forKey:v13];
    v11->_postedNotifications = [v14 unsignedIntegerValue];

    v15 = NSStringFromSelector(sel_minimumETADifference);
    [v4 decodeDoubleForKey:v15];
    v11->_minimumETADifference = v16;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_lastPostedETADate);
    v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
    lastPostedETADate = v11->_lastPostedETADate;
    v11->_lastPostedETADate = v19;

    v21 = objc_opt_class();
    v22 = NSStringFromSelector(sel_lastPostedNotificationDate);
    v23 = [v4 decodeObjectOfClass:v21 forKey:v22];
    lastPostedNotificationDate = v11->_lastPostedNotificationDate;
    v11->_lastPostedNotificationDate = v23;

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_lastUpdatedDate);
    v27 = [v4 decodeObjectOfClass:v25 forKey:v26];
    lastUpdatedDate = v11->_lastUpdatedDate;
    v11->_lastUpdatedDate = v27;

    v29 = NSStringFromSelector(sel_hasMadeFinalPush);
    v11->_hasMadeFinalPush = [v4 decodeBoolForKey:v29];

    v30 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v38[2] = objc_opt_class();
    v38[3] = objc_opt_class();
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    v32 = [v30 setWithArray:v31];
    v33 = NSStringFromSelector(sel_intermediateArrivalWaypointPostedNotifications);
    v34 = [v4 decodeObjectOfClasses:v32 forKey:v33];
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

- (MSPSharedTripNotificationRules)initWithMaximumNumberOfNotifications:(unint64_t)a3
{
  GEOConfigGetDouble();

  return [(MSPSharedTripNotificationRules *)self initWithMaximumNumberOfNotifications:a3 minimumNotificationInterval:?];
}

- (MSPSharedTripNotificationRules)initWithMaximumNumberOfNotifications:(unint64_t)a3 minimumNotificationInterval:(double)a4
{
  v16.receiver = self;
  v16.super_class = MSPSharedTripNotificationRules;
  v6 = [(MSPSharedTripNotificationRules *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_minimumNotificationInterval = a4;
    v6->_maxPostedNotifications = a3;
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
  v5 = [(MSPSharedTripNotificationRules *)self lastPostedNotificationDate];
  v6 = [(MSPSharedTripNotificationRules *)self lastPostedETADate];
  v7 = [(MSPSharedTripNotificationRules *)self lastUpdatedDate];
  v8 = [(MSPSharedTripNotificationRules *)self hasMadeFinalPush];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"postedNotifications %@ \nlastPostedNotificationDate %@ \nlastPostedETADate %@ \nlastUpdatedDate %@ \nhasMadeFinalPush %@", v4, v5, v6, v7, v9];

  return v10;
}

- (void)didPostNotificationType:(unint64_t)a3 forState:(id)a4
{
  v20 = a4;
  if ([v20 waypointInfosCount])
  {
    if ([v20 hasCurrentWaypointIndex])
    {
      v6 = [v20 currentWaypointIndex];
      if ([v20 waypointInfosCount] > v6)
      {
        v7 = [v20 waypointInfos];
        v8 = [v7 objectAtIndex:{objc_msgSend(v20, "currentWaypointIndex")}];

        if ([v8 hasUniqueIdentifier])
        {
          v9 = [(MSPSharedTripNotificationRules *)self intermediateArrivalWaypointPostedNotifications];
          v10 = [v8 uniqueIdentifier];
          v11 = [v9 objectForKey:v10];
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

          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
          [v14 addObject:v15];

          v16 = [(MSPSharedTripNotificationRules *)self intermediateArrivalWaypointPostedNotifications];
          v17 = [v8 uniqueIdentifier];
          [v16 setObject:v14 forKey:v17];
        }
      }
    }
  }

  v18 = [(MSPSharedTripNotificationRules *)self currentETADate];
  [(MSPSharedTripNotificationRules *)self setLastPostedETADate:v18];

  v19 = [MEMORY[0x277CBEAA8] date];
  [(MSPSharedTripNotificationRules *)self setLastPostedNotificationDate:v19];

  [(MSPSharedTripNotificationRules *)self setPostedNotifications:[(MSPSharedTripNotificationRules *)self postedNotifications]+ 1];
  [(MSPSharedTripNotificationRules *)self incrementMinimumETADifference];
}

- (unint64_t)currentlyNecessaryNotificationTypeForState:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MSPSharedTripNotificationRules *)self hasMadeFinalPush])
  {
    v5 = 0;
  }

  else
  {
    if ([v4 waypointInfosCount] && objc_msgSend(v4, "hasCurrentWaypointIndex") && (v6 = objc_msgSend(v4, "currentWaypointIndex"), objc_msgSend(v4, "waypointInfosCount") > v6))
    {
      v7 = [v4 waypointInfos];
      v8 = [v7 objectAtIndex:{objc_msgSend(v4, "currentWaypointIndex")}];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(MSPSharedTripNotificationRules *)self currentETADate];
    [v9 timeIntervalSinceNow];
    v11 = v10;
    GEOConfigGetDouble();
    v13 = v12;

    v14 = [(MSPSharedTripNotificationRules *)self postedNotifications];
    if (v11 >= v13 || v14 == 0)
    {
      if (![v4 hasResumed] || !objc_msgSend(v4, "resumed") || (v5 = 5, -[MSPSharedTripNotificationRules hasSentNotificationType:forState:waypoint:](self, "hasSentNotificationType:forState:waypoint:", 5, v4, v8)))
      {
        if ([(MSPSharedTripNotificationRules *)self postedNotifications])
        {
          v16 = [(MSPSharedTripNotificationRules *)self lastPostedNotificationDate];
          [v16 timeIntervalSinceNow];
          v18 = v17;
          [(MSPSharedTripNotificationRules *)self minimumNotificationInterval];
          v20 = -v19;

          v21 = [(MSPSharedTripNotificationRules *)self currentETADate];
          v22 = [(MSPSharedTripNotificationRules *)self lastPostedETADate];
          [v21 timeIntervalSinceDate:v22];
          v24 = v23;
          [(MSPSharedTripNotificationRules *)self minimumETADifference];
          v26 = v24 <= -v25;

          v27 = [(MSPSharedTripNotificationRules *)self currentETADate];
          v28 = [(MSPSharedTripNotificationRules *)self lastPostedETADate];
          [v27 timeIntervalSinceDate:v28];
          v30 = v29;
          [(MSPSharedTripNotificationRules *)self minimumETADifference];
          v32 = v31;

          v33 = v30 >= v32 || v26;
          v34 = [(MSPSharedTripNotificationRules *)self postedNotifications];
          v35 = [(MSPSharedTripNotificationRules *)self maxPostedNotifications];
          v36 = v35;
          if (v18 <= v20 && v33 && v34 < v35)
          {
            v5 = 2;
          }

          else
          {
            v40 = MSPGetSharedTripLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              v43 = 134218752;
              v44 = [(MSPSharedTripNotificationRules *)self postedNotifications];
              v45 = 1024;
              v46 = v18 <= v20;
              v47 = 1024;
              v48 = v33;
              v49 = 1024;
              v50 = v34 < v36;
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

    else if ([v4 isNavigatingToIntermediateStop])
    {
      v37 = [v8 chargingStationInfo];

      if (v37)
      {
        v5 = 3;
        v38 = self;
        v39 = 3;
      }

      else
      {
        v5 = 4;
        v38 = self;
        v39 = 4;
      }

      if ([(MSPSharedTripNotificationRules *)v38 hasSentNotificationType:v39 forState:v4 waypoint:v8])
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

- (void)didReceiveUpdateWithETA:(double)a3 lastUpdated:(double)a4
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a4];
  [(MSPSharedTripNotificationRules *)self setLastUpdatedDate:v6];

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a3];
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

- (BOOL)hasSentNotificationType:(unint64_t)a3 forState:(id)a4 waypoint:(id)a5
{
  v7 = a5;
  if ([v7 hasUniqueIdentifier])
  {
    v8 = [(MSPSharedTripNotificationRules *)self intermediateArrivalWaypointPostedNotifications];
    v9 = [v7 uniqueIdentifier];
    v10 = [v8 objectForKey:v9];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v12 = [v10 containsObject:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end