@interface BMMomentsNotifications
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsNotifications)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMomentsNotifications)initWithReporterIdentification:(id)a3 reporterWritingDate:(id)a4 isSignificantLocationEnabled:(id)a5 isSystemNotificationsEnabled:(id)a6 isAppNotificationsEnabled:(id)a7 predictionTuple:(id)a8 maxAvailabilityProbability:(id)a9 maxAvailabilityProbabilityDate:(id)a10 proposedFireDate:(id)a11 proposedFireDateSource:(int)a12 realTimeCheckHandlerRetryDate:(id)a13 realTimeCheckHandlerFailure:(id)a14 realTimeCheckHandlerErrorDescription:(id)a15 realTimeCheckHandlerErrorCode:(id)a16 realTimeAlarmErrorDomain:(id)a17 fireAlarmDate:(id)a18 fireTimerAlarmErrorDescription:(id)a19 fireTimerAlarmErrorCode:(id)a20 fireTimerAlarmErrorDomain:(id)a21 realTimeCheckRejected:(id)a22 realTimeCheckIsTraveling:(id)a23 realTimeCheckIsPlaceEligible:(id)a24 realTimeCheckIsInVisit:(id)a25 realTimeCheckIsInWorkoutHealthKit:(id)a26 realTimeCheckIsInWorkoutMotion:(id)a27 realTimeCheckIsJournaling:(id)a28 realTimeCheckIsAtHome:(id)a29 eventType:(int)a30 eventTime:(id)a31 AttemptSuccessful:(id)a32 contentType:(int)a33 suggestionIdentifier:(id)a34 bundleInterfaceType:(int)a35 bundleGoodnessScore:(id)a36 deviceId:(id)a37 deviceType:(int)a38 isDevicePrimary:(id)a39 journalingAppFirstParty:(id)a40 schedulingState:(int)a41 scheduleDeliverySetting:(int)a42 isOnDefaultSchedule:(id)a43 isDNUGated:(id)a44;
- (BOOL)isEqual:(id)a3;
- (NSDate)eventTime;
- (NSDate)fireAlarmDate;
- (NSDate)maxAvailabilityProbabilityDate;
- (NSDate)proposedFireDate;
- (NSDate)realTimeCheckHandlerRetryDate;
- (NSDate)reporterWritingDate;
- (NSString)description;
- (id)_predictionTupleJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsNotifications

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMomentsNotifications *)self reporterIdentification];
    v7 = [v5 reporterIdentification];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMomentsNotifications *)self reporterIdentification];
      v10 = [v5 reporterIdentification];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_169;
      }
    }

    v13 = [(BMMomentsNotifications *)self reporterWritingDate];
    v14 = [v5 reporterWritingDate];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMomentsNotifications *)self reporterWritingDate];
      v17 = [v5 reporterWritingDate];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_169;
      }
    }

    if (-[BMMomentsNotifications hasIsSignificantLocationEnabled](self, "hasIsSignificantLocationEnabled") || [v5 hasIsSignificantLocationEnabled])
    {
      if (![(BMMomentsNotifications *)self hasIsSignificantLocationEnabled])
      {
        goto LABEL_169;
      }

      if (![v5 hasIsSignificantLocationEnabled])
      {
        goto LABEL_169;
      }

      v19 = [(BMMomentsNotifications *)self isSignificantLocationEnabled];
      if (v19 != [v5 isSignificantLocationEnabled])
      {
        goto LABEL_169;
      }
    }

    if (-[BMMomentsNotifications hasIsSystemNotificationsEnabled](self, "hasIsSystemNotificationsEnabled") || [v5 hasIsSystemNotificationsEnabled])
    {
      if (![(BMMomentsNotifications *)self hasIsSystemNotificationsEnabled])
      {
        goto LABEL_169;
      }

      if (![v5 hasIsSystemNotificationsEnabled])
      {
        goto LABEL_169;
      }

      v20 = [(BMMomentsNotifications *)self isSystemNotificationsEnabled];
      if (v20 != [v5 isSystemNotificationsEnabled])
      {
        goto LABEL_169;
      }
    }

    if (-[BMMomentsNotifications hasIsAppNotificationsEnabled](self, "hasIsAppNotificationsEnabled") || [v5 hasIsAppNotificationsEnabled])
    {
      if (![(BMMomentsNotifications *)self hasIsAppNotificationsEnabled])
      {
        goto LABEL_169;
      }

      if (![v5 hasIsAppNotificationsEnabled])
      {
        goto LABEL_169;
      }

      v21 = [(BMMomentsNotifications *)self isAppNotificationsEnabled];
      if (v21 != [v5 isAppNotificationsEnabled])
      {
        goto LABEL_169;
      }
    }

    v22 = [(BMMomentsNotifications *)self predictionTuple];
    v23 = [v5 predictionTuple];
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      v25 = [(BMMomentsNotifications *)self predictionTuple];
      v26 = [v5 predictionTuple];
      v27 = [v25 isEqual:v26];

      if (!v27)
      {
        goto LABEL_169;
      }
    }

    if (-[BMMomentsNotifications hasMaxAvailabilityProbability](self, "hasMaxAvailabilityProbability") || [v5 hasMaxAvailabilityProbability])
    {
      if (![(BMMomentsNotifications *)self hasMaxAvailabilityProbability])
      {
        goto LABEL_169;
      }

      if (![v5 hasMaxAvailabilityProbability])
      {
        goto LABEL_169;
      }

      [(BMMomentsNotifications *)self maxAvailabilityProbability];
      v29 = v28;
      [v5 maxAvailabilityProbability];
      if (v29 != v30)
      {
        goto LABEL_169;
      }
    }

    v31 = [(BMMomentsNotifications *)self maxAvailabilityProbabilityDate];
    v32 = [v5 maxAvailabilityProbabilityDate];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMMomentsNotifications *)self maxAvailabilityProbabilityDate];
      v35 = [v5 maxAvailabilityProbabilityDate];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_169;
      }
    }

    v37 = [(BMMomentsNotifications *)self proposedFireDate];
    v38 = [v5 proposedFireDate];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMMomentsNotifications *)self proposedFireDate];
      v41 = [v5 proposedFireDate];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_169;
      }
    }

    v43 = [(BMMomentsNotifications *)self proposedFireDateSource];
    if (v43 == [v5 proposedFireDateSource])
    {
      v44 = [(BMMomentsNotifications *)self realTimeCheckHandlerRetryDate];
      v45 = [v5 realTimeCheckHandlerRetryDate];
      v46 = v45;
      if (v44 == v45)
      {
      }

      else
      {
        v47 = [(BMMomentsNotifications *)self realTimeCheckHandlerRetryDate];
        v48 = [v5 realTimeCheckHandlerRetryDate];
        v49 = [v47 isEqual:v48];

        if (!v49)
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckHandlerFailure](self, "hasRealTimeCheckHandlerFailure") || [v5 hasRealTimeCheckHandlerFailure])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckHandlerFailure])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckHandlerFailure])
        {
          goto LABEL_169;
        }

        v50 = [(BMMomentsNotifications *)self realTimeCheckHandlerFailure];
        if (v50 != [v5 realTimeCheckHandlerFailure])
        {
          goto LABEL_169;
        }
      }

      v51 = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorDescription];
      v52 = [v5 realTimeCheckHandlerErrorDescription];
      v53 = v52;
      if (v51 == v52)
      {
      }

      else
      {
        v54 = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorDescription];
        v55 = [v5 realTimeCheckHandlerErrorDescription];
        v56 = [v54 isEqual:v55];

        if (!v56)
        {
          goto LABEL_169;
        }
      }

      v57 = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorCode];
      v58 = [v5 realTimeCheckHandlerErrorCode];
      v59 = v58;
      if (v57 == v58)
      {
      }

      else
      {
        v60 = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorCode];
        v61 = [v5 realTimeCheckHandlerErrorCode];
        v62 = [v60 isEqual:v61];

        if (!v62)
        {
          goto LABEL_169;
        }
      }

      v63 = [(BMMomentsNotifications *)self realTimeAlarmErrorDomain];
      v64 = [v5 realTimeAlarmErrorDomain];
      v65 = v64;
      if (v63 == v64)
      {
      }

      else
      {
        v66 = [(BMMomentsNotifications *)self realTimeAlarmErrorDomain];
        v67 = [v5 realTimeAlarmErrorDomain];
        v68 = [v66 isEqual:v67];

        if (!v68)
        {
          goto LABEL_169;
        }
      }

      v69 = [(BMMomentsNotifications *)self fireAlarmDate];
      v70 = [v5 fireAlarmDate];
      v71 = v70;
      if (v69 == v70)
      {
      }

      else
      {
        v72 = [(BMMomentsNotifications *)self fireAlarmDate];
        v73 = [v5 fireAlarmDate];
        v74 = [v72 isEqual:v73];

        if (!v74)
        {
          goto LABEL_169;
        }
      }

      v75 = [(BMMomentsNotifications *)self fireTimerAlarmErrorDescription];
      v76 = [v5 fireTimerAlarmErrorDescription];
      v77 = v76;
      if (v75 == v76)
      {
      }

      else
      {
        v78 = [(BMMomentsNotifications *)self fireTimerAlarmErrorDescription];
        v79 = [v5 fireTimerAlarmErrorDescription];
        v80 = [v78 isEqual:v79];

        if (!v80)
        {
          goto LABEL_169;
        }
      }

      v81 = [(BMMomentsNotifications *)self fireTimerAlarmErrorCode];
      v82 = [v5 fireTimerAlarmErrorCode];
      v83 = v82;
      if (v81 == v82)
      {
      }

      else
      {
        v84 = [(BMMomentsNotifications *)self fireTimerAlarmErrorCode];
        v85 = [v5 fireTimerAlarmErrorCode];
        v86 = [v84 isEqual:v85];

        if (!v86)
        {
          goto LABEL_169;
        }
      }

      v87 = [(BMMomentsNotifications *)self fireTimerAlarmErrorDomain];
      v88 = [v5 fireTimerAlarmErrorDomain];
      v89 = v88;
      if (v87 == v88)
      {
      }

      else
      {
        v90 = [(BMMomentsNotifications *)self fireTimerAlarmErrorDomain];
        v91 = [v5 fireTimerAlarmErrorDomain];
        v92 = [v90 isEqual:v91];

        if (!v92)
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckRejected](self, "hasRealTimeCheckRejected") || [v5 hasRealTimeCheckRejected])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckRejected])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckRejected])
        {
          goto LABEL_169;
        }

        v93 = [(BMMomentsNotifications *)self realTimeCheckRejected];
        if (v93 != [v5 realTimeCheckRejected])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsTraveling](self, "hasRealTimeCheckIsTraveling") || [v5 hasRealTimeCheckIsTraveling])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsTraveling])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsTraveling])
        {
          goto LABEL_169;
        }

        v94 = [(BMMomentsNotifications *)self realTimeCheckIsTraveling];
        if (v94 != [v5 realTimeCheckIsTraveling])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsPlaceEligible](self, "hasRealTimeCheckIsPlaceEligible") || [v5 hasRealTimeCheckIsPlaceEligible])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsPlaceEligible])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsPlaceEligible])
        {
          goto LABEL_169;
        }

        v95 = [(BMMomentsNotifications *)self realTimeCheckIsPlaceEligible];
        if (v95 != [v5 realTimeCheckIsPlaceEligible])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsInVisit](self, "hasRealTimeCheckIsInVisit") || [v5 hasRealTimeCheckIsInVisit])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsInVisit])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsInVisit])
        {
          goto LABEL_169;
        }

        v96 = [(BMMomentsNotifications *)self realTimeCheckIsInVisit];
        if (v96 != [v5 realTimeCheckIsInVisit])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsInWorkoutHealthKit](self, "hasRealTimeCheckIsInWorkoutHealthKit") || [v5 hasRealTimeCheckIsInWorkoutHealthKit])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsInWorkoutHealthKit])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsInWorkoutHealthKit])
        {
          goto LABEL_169;
        }

        v97 = [(BMMomentsNotifications *)self realTimeCheckIsInWorkoutHealthKit];
        if (v97 != [v5 realTimeCheckIsInWorkoutHealthKit])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsInWorkoutMotion](self, "hasRealTimeCheckIsInWorkoutMotion") || [v5 hasRealTimeCheckIsInWorkoutMotion])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsInWorkoutMotion])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsInWorkoutMotion])
        {
          goto LABEL_169;
        }

        v98 = [(BMMomentsNotifications *)self realTimeCheckIsInWorkoutMotion];
        if (v98 != [v5 realTimeCheckIsInWorkoutMotion])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsJournaling](self, "hasRealTimeCheckIsJournaling") || [v5 hasRealTimeCheckIsJournaling])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsJournaling])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsJournaling])
        {
          goto LABEL_169;
        }

        v99 = [(BMMomentsNotifications *)self realTimeCheckIsJournaling];
        if (v99 != [v5 realTimeCheckIsJournaling])
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasRealTimeCheckIsAtHome](self, "hasRealTimeCheckIsAtHome") || [v5 hasRealTimeCheckIsAtHome])
      {
        if (![(BMMomentsNotifications *)self hasRealTimeCheckIsAtHome])
        {
          goto LABEL_169;
        }

        if (![v5 hasRealTimeCheckIsAtHome])
        {
          goto LABEL_169;
        }

        v100 = [(BMMomentsNotifications *)self realTimeCheckIsAtHome];
        if (v100 != [v5 realTimeCheckIsAtHome])
        {
          goto LABEL_169;
        }
      }

      v101 = [(BMMomentsNotifications *)self eventType];
      if (v101 != [v5 eventType])
      {
        goto LABEL_169;
      }

      v102 = [(BMMomentsNotifications *)self eventTime];
      v103 = [v5 eventTime];
      v104 = v103;
      if (v102 == v103)
      {
      }

      else
      {
        v105 = [(BMMomentsNotifications *)self eventTime];
        v106 = [v5 eventTime];
        v107 = [v105 isEqual:v106];

        if (!v107)
        {
          goto LABEL_169;
        }
      }

      if (-[BMMomentsNotifications hasAttemptSuccessful](self, "hasAttemptSuccessful") || [v5 hasAttemptSuccessful])
      {
        if (![(BMMomentsNotifications *)self hasAttemptSuccessful])
        {
          goto LABEL_169;
        }

        if (![v5 hasAttemptSuccessful])
        {
          goto LABEL_169;
        }

        v108 = [(BMMomentsNotifications *)self AttemptSuccessful];
        if (v108 != [v5 AttemptSuccessful])
        {
          goto LABEL_169;
        }
      }

      v109 = [(BMMomentsNotifications *)self contentType];
      if (v109 != [v5 contentType])
      {
        goto LABEL_169;
      }

      v110 = [(BMMomentsNotifications *)self suggestionIdentifier];
      v111 = [v5 suggestionIdentifier];
      v112 = v111;
      if (v110 == v111)
      {
      }

      else
      {
        v113 = [(BMMomentsNotifications *)self suggestionIdentifier];
        v114 = [v5 suggestionIdentifier];
        v115 = [v113 isEqual:v114];

        if (!v115)
        {
          goto LABEL_169;
        }
      }

      v116 = [(BMMomentsNotifications *)self bundleInterfaceType];
      if (v116 != [v5 bundleInterfaceType])
      {
        goto LABEL_169;
      }

      if (-[BMMomentsNotifications hasBundleGoodnessScore](self, "hasBundleGoodnessScore") || [v5 hasBundleGoodnessScore])
      {
        if (![(BMMomentsNotifications *)self hasBundleGoodnessScore])
        {
          goto LABEL_169;
        }

        if (![v5 hasBundleGoodnessScore])
        {
          goto LABEL_169;
        }

        [(BMMomentsNotifications *)self bundleGoodnessScore];
        v118 = v117;
        [v5 bundleGoodnessScore];
        if (v118 != v119)
        {
          goto LABEL_169;
        }
      }

      v120 = [(BMMomentsNotifications *)self deviceId];
      v121 = [v5 deviceId];
      v122 = v121;
      if (v120 == v121)
      {
      }

      else
      {
        v123 = [(BMMomentsNotifications *)self deviceId];
        v124 = [v5 deviceId];
        v125 = [v123 isEqual:v124];

        if (!v125)
        {
          goto LABEL_169;
        }
      }

      v126 = [(BMMomentsNotifications *)self deviceType];
      if (v126 == [v5 deviceType])
      {
        if (!-[BMMomentsNotifications hasIsDevicePrimary](self, "hasIsDevicePrimary") && ![v5 hasIsDevicePrimary] || -[BMMomentsNotifications hasIsDevicePrimary](self, "hasIsDevicePrimary") && objc_msgSend(v5, "hasIsDevicePrimary") && (v127 = -[BMMomentsNotifications isDevicePrimary](self, "isDevicePrimary"), v127 == objc_msgSend(v5, "isDevicePrimary")))
        {
          if (!-[BMMomentsNotifications hasJournalingAppFirstParty](self, "hasJournalingAppFirstParty") && ![v5 hasJournalingAppFirstParty] || -[BMMomentsNotifications hasJournalingAppFirstParty](self, "hasJournalingAppFirstParty") && objc_msgSend(v5, "hasJournalingAppFirstParty") && (v128 = -[BMMomentsNotifications journalingAppFirstParty](self, "journalingAppFirstParty"), v128 == objc_msgSend(v5, "journalingAppFirstParty")))
          {
            v129 = [(BMMomentsNotifications *)self schedulingState];
            if (v129 == [v5 schedulingState])
            {
              v130 = [(BMMomentsNotifications *)self scheduleDeliverySetting];
              if (v130 == [v5 scheduleDeliverySetting])
              {
                if (!-[BMMomentsNotifications hasIsOnDefaultSchedule](self, "hasIsOnDefaultSchedule") && ![v5 hasIsOnDefaultSchedule] || -[BMMomentsNotifications hasIsOnDefaultSchedule](self, "hasIsOnDefaultSchedule") && objc_msgSend(v5, "hasIsOnDefaultSchedule") && (v131 = -[BMMomentsNotifications isOnDefaultSchedule](self, "isOnDefaultSchedule"), v131 == objc_msgSend(v5, "isOnDefaultSchedule")))
                {
                  if (!-[BMMomentsNotifications hasIsDNUGated](self, "hasIsDNUGated") && ![v5 hasIsDNUGated])
                  {
                    LOBYTE(v12) = 1;
                    goto LABEL_170;
                  }

                  if (-[BMMomentsNotifications hasIsDNUGated](self, "hasIsDNUGated") && [v5 hasIsDNUGated])
                  {
                    v132 = [(BMMomentsNotifications *)self isDNUGated];
                    v12 = v132 ^ [v5 isDNUGated] ^ 1;
LABEL_170:

                    goto LABEL_171;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_169:
    LOBYTE(v12) = 0;
    goto LABEL_170;
  }

  LOBYTE(v12) = 0;
LABEL_171:

  return v12;
}

- (NSDate)eventTime
{
  if (self->_hasRaw_eventTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_eventTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)fireAlarmDate
{
  if (self->_hasRaw_fireAlarmDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_fireAlarmDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)realTimeCheckHandlerRetryDate
{
  if (self->_hasRaw_realTimeCheckHandlerRetryDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_realTimeCheckHandlerRetryDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)proposedFireDate
{
  if (self->_hasRaw_proposedFireDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_proposedFireDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)maxAvailabilityProbabilityDate
{
  if (self->_hasRaw_maxAvailabilityProbabilityDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_maxAvailabilityProbabilityDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)reporterWritingDate
{
  if (self->_hasRaw_reporterWritingDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_reporterWritingDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v154[42] = *MEMORY[0x1E69E9840];
  v3 = [(BMMomentsNotifications *)self reporterIdentification];
  v4 = [(BMMomentsNotifications *)self reporterWritingDate];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMMomentsNotifications *)self reporterWritingDate];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMomentsNotifications *)self hasIsSignificantLocationEnabled])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isSignificantLocationEnabled](self, "isSignificantLocationEnabled")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMMomentsNotifications *)self hasIsSystemNotificationsEnabled])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isSystemNotificationsEnabled](self, "isSystemNotificationsEnabled")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMMomentsNotifications *)self hasIsAppNotificationsEnabled])
  {
    v116 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isAppNotificationsEnabled](self, "isAppNotificationsEnabled")}];
  }

  else
  {
    v116 = 0;
  }

  v152 = [(BMMomentsNotifications *)self _predictionTupleJSONArray];
  if (![(BMMomentsNotifications *)self hasMaxAvailabilityProbability]|| ([(BMMomentsNotifications *)self maxAvailabilityProbability], fabs(v10) == INFINITY))
  {
    v151 = 0;
  }

  else
  {
    [(BMMomentsNotifications *)self maxAvailabilityProbability];
    v11 = MEMORY[0x1E696AD98];
    [(BMMomentsNotifications *)self maxAvailabilityProbability];
    v151 = [v11 numberWithDouble:?];
  }

  v12 = [(BMMomentsNotifications *)self maxAvailabilityProbabilityDate];
  if (v12)
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = [(BMMomentsNotifications *)self maxAvailabilityProbabilityDate];
    [v14 timeIntervalSince1970];
    v150 = [v13 numberWithDouble:?];
  }

  else
  {
    v150 = 0;
  }

  v15 = [(BMMomentsNotifications *)self proposedFireDate];
  if (v15)
  {
    v16 = MEMORY[0x1E696AD98];
    v17 = [(BMMomentsNotifications *)self proposedFireDate];
    [v17 timeIntervalSince1970];
    v149 = [v16 numberWithDouble:?];
  }

  else
  {
    v149 = 0;
  }

  v148 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications proposedFireDateSource](self, "proposedFireDateSource")}];
  v18 = [(BMMomentsNotifications *)self realTimeCheckHandlerRetryDate];
  if (v18)
  {
    v19 = MEMORY[0x1E696AD98];
    v20 = [(BMMomentsNotifications *)self realTimeCheckHandlerRetryDate];
    [v20 timeIntervalSince1970];
    v147 = [v19 numberWithDouble:?];
  }

  else
  {
    v147 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckHandlerFailure])
  {
    v146 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckHandlerFailure](self, "realTimeCheckHandlerFailure")}];
  }

  else
  {
    v146 = 0;
  }

  v145 = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorDescription];
  v144 = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorCode];
  v143 = [(BMMomentsNotifications *)self realTimeAlarmErrorDomain];
  v21 = [(BMMomentsNotifications *)self fireAlarmDate];
  if (v21)
  {
    v22 = MEMORY[0x1E696AD98];
    v23 = [(BMMomentsNotifications *)self fireAlarmDate];
    [v23 timeIntervalSince1970];
    v142 = [v22 numberWithDouble:?];
  }

  else
  {
    v142 = 0;
  }

  v141 = [(BMMomentsNotifications *)self fireTimerAlarmErrorDescription];
  v140 = [(BMMomentsNotifications *)self fireTimerAlarmErrorCode];
  v139 = [(BMMomentsNotifications *)self fireTimerAlarmErrorDomain];
  if ([(BMMomentsNotifications *)self hasRealTimeCheckRejected])
  {
    v138 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckRejected](self, "realTimeCheckRejected")}];
  }

  else
  {
    v138 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsTraveling])
  {
    v137 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsTraveling](self, "realTimeCheckIsTraveling")}];
  }

  else
  {
    v137 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsPlaceEligible])
  {
    v136 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsPlaceEligible](self, "realTimeCheckIsPlaceEligible")}];
  }

  else
  {
    v136 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsInVisit])
  {
    v135 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInVisit](self, "realTimeCheckIsInVisit")}];
  }

  else
  {
    v135 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsInWorkoutHealthKit])
  {
    v134 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInWorkoutHealthKit](self, "realTimeCheckIsInWorkoutHealthKit")}];
  }

  else
  {
    v134 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsInWorkoutMotion])
  {
    v133 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInWorkoutMotion](self, "realTimeCheckIsInWorkoutMotion")}];
  }

  else
  {
    v133 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsJournaling])
  {
    v132 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsJournaling](self, "realTimeCheckIsJournaling")}];
  }

  else
  {
    v132 = 0;
  }

  if ([(BMMomentsNotifications *)self hasRealTimeCheckIsAtHome])
  {
    v131 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsAtHome](self, "realTimeCheckIsAtHome")}];
  }

  else
  {
    v131 = 0;
  }

  v130 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications eventType](self, "eventType")}];
  v24 = [(BMMomentsNotifications *)self eventTime];
  if (v24)
  {
    v25 = MEMORY[0x1E696AD98];
    v26 = [(BMMomentsNotifications *)self eventTime];
    [v26 timeIntervalSince1970];
    v129 = [v25 numberWithDouble:?];
  }

  else
  {
    v129 = 0;
  }

  if ([(BMMomentsNotifications *)self hasAttemptSuccessful])
  {
    v128 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications AttemptSuccessful](self, "AttemptSuccessful")}];
  }

  else
  {
    v128 = 0;
  }

  v127 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications contentType](self, "contentType")}];
  v126 = [(BMMomentsNotifications *)self suggestionIdentifier];
  v125 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications bundleInterfaceType](self, "bundleInterfaceType")}];
  if (![(BMMomentsNotifications *)self hasBundleGoodnessScore]|| ([(BMMomentsNotifications *)self bundleGoodnessScore], fabs(v27) == INFINITY))
  {
    v124 = 0;
  }

  else
  {
    [(BMMomentsNotifications *)self bundleGoodnessScore];
    v28 = MEMORY[0x1E696AD98];
    [(BMMomentsNotifications *)self bundleGoodnessScore];
    v124 = [v28 numberWithDouble:?];
  }

  v123 = [(BMMomentsNotifications *)self deviceId];
  v122 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications deviceType](self, "deviceType")}];
  if ([(BMMomentsNotifications *)self hasIsDevicePrimary])
  {
    v121 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isDevicePrimary](self, "isDevicePrimary")}];
  }

  else
  {
    v121 = 0;
  }

  if ([(BMMomentsNotifications *)self hasJournalingAppFirstParty])
  {
    v120 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications journalingAppFirstParty](self, "journalingAppFirstParty")}];
  }

  else
  {
    v120 = 0;
  }

  v119 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications schedulingState](self, "schedulingState")}];
  v118 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsNotifications scheduleDeliverySetting](self, "scheduleDeliverySetting")}];
  if ([(BMMomentsNotifications *)self hasIsOnDefaultSchedule])
  {
    v117 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isOnDefaultSchedule](self, "isOnDefaultSchedule")}];
  }

  else
  {
    v117 = 0;
  }

  if ([(BMMomentsNotifications *)self hasIsDNUGated])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isDNUGated](self, "isDNUGated")}];
  }

  else
  {
    v29 = 0;
  }

  v153[0] = @"reporterIdentification";
  v30 = v3;
  if (!v3)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v106 = v30;
  v154[0] = v30;
  v153[1] = @"reporterWritingDate";
  v31 = v7;
  if (!v7)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = v31;
  v154[1] = v31;
  v153[2] = @"isSignificantLocationEnabled";
  v32 = v8;
  if (!v8)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = v32;
  v154[2] = v32;
  v153[3] = @"isSystemNotificationsEnabled";
  v33 = v9;
  if (!v9)
  {
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v7;
  v103 = v33;
  v154[3] = v33;
  v153[4] = @"isAppNotificationsEnabled";
  v35 = v116;
  if (!v116)
  {
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v3;
  v102 = v35;
  v154[4] = v35;
  v153[5] = @"predictionTuple";
  v37 = v152;
  if (!v152)
  {
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v154[5] = v37;
  v153[6] = @"maxAvailabilityProbability";
  v38 = v151;
  if (!v151)
  {
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v154[6] = v38;
  v153[7] = @"maxAvailabilityProbabilityDate";
  v39 = v150;
  if (!v150)
  {
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v154[7] = v39;
  v153[8] = @"proposedFireDate";
  v40 = v149;
  if (!v149)
  {
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v154[8] = v40;
  v153[9] = @"proposedFireDateSource";
  v41 = v148;
  if (!v148)
  {
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = v41;
  v154[9] = v41;
  v153[10] = @"realTimeCheckHandlerRetryDate";
  v42 = v147;
  if (!v147)
  {
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = v42;
  v154[10] = v42;
  v153[11] = @"realTimeCheckHandlerFailure";
  v43 = v146;
  if (!v146)
  {
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = v43;
  v154[11] = v43;
  v153[12] = @"realTimeCheckHandlerErrorDescription";
  v44 = v145;
  if (!v145)
  {
    v44 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = v44;
  v154[12] = v44;
  v153[13] = @"realTimeCheckHandlerErrorCode";
  v45 = v144;
  if (!v144)
  {
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = v45;
  v154[13] = v45;
  v153[14] = @"realTimeAlarmErrorDomain";
  v46 = v143;
  if (!v143)
  {
    v46 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v46;
  v154[14] = v46;
  v153[15] = @"fireAlarmDate";
  v48 = v142;
  if (!v142)
  {
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v97 = v48;
  v154[15] = v48;
  v153[16] = @"fireTimerAlarmErrorDescription";
  v49 = v141;
  if (!v141)
  {
    v49 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = v49;
  v154[16] = v49;
  v153[17] = @"fireTimerAlarmErrorCode";
  v50 = v140;
  if (!v140)
  {
    v50 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = v50;
  v154[17] = v50;
  v153[18] = @"fireTimerAlarmErrorDomain";
  v51 = v139;
  if (!v139)
  {
    v51 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = v51;
  v154[18] = v51;
  v153[19] = @"realTimeCheckRejected";
  v52 = v138;
  if (!v138)
  {
    v52 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = v52;
  v154[19] = v52;
  v153[20] = @"realTimeCheckIsTraveling";
  v53 = v137;
  if (!v137)
  {
    v53 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = v53;
  v154[20] = v53;
  v153[21] = @"realTimeCheckIsPlaceEligible";
  v54 = v136;
  if (!v136)
  {
    v54 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = v54;
  v154[21] = v54;
  v153[22] = @"realTimeCheckIsInVisit";
  v55 = v135;
  if (!v135)
  {
    v55 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = v55;
  v154[22] = v55;
  v153[23] = @"realTimeCheckIsInWorkoutHealthKit";
  v56 = v134;
  if (!v134)
  {
    v56 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = v56;
  v154[23] = v56;
  v153[24] = @"realTimeCheckIsInWorkoutMotion";
  v57 = v133;
  if (!v133)
  {
    v57 = [MEMORY[0x1E695DFB0] null];
  }

  v88 = v57;
  v154[24] = v57;
  v153[25] = @"realTimeCheckIsJournaling";
  v58 = v132;
  if (!v132)
  {
    v58 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = v58;
  v154[25] = v58;
  v153[26] = @"realTimeCheckIsAtHome";
  v59 = v131;
  if (!v131)
  {
    v59 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = v59;
  v154[26] = v59;
  v153[27] = @"eventType";
  v60 = v130;
  if (!v130)
  {
    v60 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = v60;
  v154[27] = v60;
  v153[28] = @"eventTime";
  v61 = v129;
  if (!v129)
  {
    v61 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = v61;
  v154[28] = v61;
  v153[29] = @"AttemptSuccessful";
  v62 = v128;
  if (!v128)
  {
    v62 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = v62;
  v154[29] = v62;
  v153[30] = @"contentType";
  v63 = v127;
  if (!v127)
  {
    v63 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = v63;
  v154[30] = v63;
  v153[31] = @"suggestionIdentifier";
  v64 = v126;
  if (!v126)
  {
    v64 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = v36;
  v81 = v64;
  v154[31] = v64;
  v153[32] = @"bundleInterfaceType";
  v65 = v125;
  if (!v125)
  {
    v65 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = v65;
  v154[32] = v65;
  v153[33] = @"bundleGoodnessScore";
  v66 = v124;
  if (!v124)
  {
    v66 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = v9;
  v79 = v66;
  v154[33] = v66;
  v153[34] = @"deviceId";
  v67 = v123;
  if (!v123)
  {
    v67 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = v37;
  v78 = v67;
  v154[34] = v67;
  v153[35] = @"deviceType";
  v68 = v122;
  if (!v122)
  {
    v68 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = v40;
  v114 = v8;
  v154[35] = v68;
  v153[36] = @"isDevicePrimary";
  v69 = v121;
  if (!v121)
  {
    v69 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = v34;
  v154[36] = v69;
  v153[37] = @"journalingAppFirstParty";
  v70 = v120;
  if (!v120)
  {
    v70 = [MEMORY[0x1E695DFB0] null];
  }

  v154[37] = v70;
  v153[38] = @"schedulingState";
  v71 = v119;
  if (!v119)
  {
    v71 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = v39;
  v154[38] = v71;
  v153[39] = @"scheduleDeliverySetting";
  v72 = v118;
  if (!v118)
  {
    v72 = [MEMORY[0x1E695DFB0] null];
  }

  v154[39] = v72;
  v153[40] = @"isOnDefaultSchedule";
  v73 = v117;
  if (!v117)
  {
    v73 = [MEMORY[0x1E695DFB0] null];
  }

  v154[40] = v73;
  v153[41] = @"isDNUGated";
  v74 = v29;
  if (!v29)
  {
    v74 = [MEMORY[0x1E695DFB0] null];
  }

  v154[41] = v74;
  v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v154 forKeys:v153 count:42];
  if (!v29)
  {
  }

  v75 = v47;
  if (!v117)
  {

    v75 = v47;
  }

  if (!v118)
  {

    v75 = v47;
  }

  if (!v119)
  {

    v75 = v47;
  }

  if (!v120)
  {

    v75 = v47;
  }

  if (!v121)
  {

    v75 = v47;
  }

  if (!v122)
  {

    v75 = v47;
  }

  if (!v123)
  {

    v75 = v47;
  }

  if (!v124)
  {

    v75 = v47;
  }

  if (!v125)
  {

    v75 = v47;
  }

  if (!v126)
  {

    v75 = v47;
  }

  if (!v127)
  {

    v75 = v47;
  }

  if (!v128)
  {

    v75 = v47;
  }

  if (!v129)
  {

    v75 = v47;
  }

  if (!v130)
  {

    v75 = v47;
  }

  if (!v131)
  {

    v75 = v47;
  }

  if (!v132)
  {

    v75 = v47;
  }

  if (!v133)
  {

    v75 = v47;
  }

  if (!v134)
  {

    v75 = v47;
  }

  if (!v135)
  {

    v75 = v47;
  }

  if (!v136)
  {

    v75 = v47;
  }

  if (!v137)
  {

    v75 = v47;
  }

  if (!v138)
  {

    v75 = v47;
  }

  if (!v139)
  {

    v75 = v47;
  }

  if (!v140)
  {

    v75 = v47;
  }

  if (!v141)
  {

    v75 = v47;
  }

  if (!v142)
  {

    v75 = v47;
  }

  if (!v143)
  {
  }

  if (!v144)
  {
  }

  if (!v145)
  {
  }

  if (!v146)
  {
  }

  if (!v147)
  {
  }

  if (!v148)
  {
  }

  if (!v149)
  {
  }

  if (!v150)
  {
  }

  if (!v151)
  {
  }

  if (v152)
  {
    if (v116)
    {
      goto LABEL_236;
    }
  }

  else
  {

    if (v116)
    {
LABEL_236:
      if (v113)
      {
        goto LABEL_237;
      }

      goto LABEL_245;
    }
  }

  if (v113)
  {
LABEL_237:
    if (v114)
    {
      goto LABEL_238;
    }

    goto LABEL_246;
  }

LABEL_245:

  if (v114)
  {
LABEL_238:
    if (v112)
    {
      goto LABEL_239;
    }

LABEL_247:

    if (v115)
    {
      goto LABEL_240;
    }

    goto LABEL_248;
  }

LABEL_246:

  if (!v112)
  {
    goto LABEL_247;
  }

LABEL_239:
  if (v115)
  {
    goto LABEL_240;
  }

LABEL_248:

LABEL_240:
  v76 = *MEMORY[0x1E69E9840];

  return v107;
}

- (id)_predictionTupleJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMomentsNotifications *)self predictionTuple];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMomentsNotifications)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v592[1] = *MEMORY[0x1E69E9840];
  v498 = a3;
  v6 = [v498 objectForKeyedSubscript:@"reporterIdentification"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v466 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v11 = objc_alloc(MEMORY[0x1E696ABC0]);
        v12 = *MEMORY[0x1E698F240];
        v591 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"reporterIdentification"];
        v592[0] = v8;
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v592 forKeys:&v591 count:1];
        v13 = 0;
        v14 = 0;
        *a4 = [v11 initWithDomain:v12 code:2 userInfo:v7];
        goto LABEL_441;
      }

      v13 = 0;
      v14 = 0;
      goto LABEL_442;
    }

    v466 = v6;
  }

  v7 = [v498 objectForKeyedSubscript:@"reporterWritingDate"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = objc_alloc(MEMORY[0x1E695DF00]);
    [v9 doubleValue];
    v8 = [v10 initWithTimeIntervalSince1970:?];
LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v15 = v7;
    v8 = [v9 dateFromString:v15];

    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      v8 = 0;
      v14 = 0;
      v13 = v466;
      goto LABEL_441;
    }

    v79 = objc_alloc(MEMORY[0x1E696ABC0]);
    v80 = *MEMORY[0x1E698F240];
    v589 = *MEMORY[0x1E696A578];
    v81 = self;
    v82 = objc_alloc(MEMORY[0x1E696AEC0]);
    v352 = objc_opt_class();
    v83 = v82;
    self = v81;
    v84 = [v83 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v352, @"reporterWritingDate"];
    v590 = v84;
    v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v590 forKeys:&v589 count:1];
    v86 = v79;
    v16 = v85;
    v87 = v80;
    v17 = v84;
    v8 = 0;
    v14 = 0;
    *a4 = [v86 initWithDomain:v87 code:2 userInfo:v85];
    goto LABEL_85;
  }

  v8 = v7;
LABEL_16:
  v16 = [v498 objectForKeyedSubscript:@"isSignificantLocationEnabled"];
  v464 = v7;
  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
        goto LABEL_19;
      }

      if (a4)
      {
        v36 = v16;
        v37 = objc_alloc(MEMORY[0x1E696ABC0]);
        v38 = *MEMORY[0x1E698F240];
        v587 = *MEMORY[0x1E696A578];
        v39 = self;
        v40 = objc_alloc(MEMORY[0x1E696AEC0]);
        v349 = objc_opt_class();
        v41 = v40;
        self = v39;
        v20 = [v41 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v349, @"isSignificantLocationEnabled"];
        v588 = v20;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v588 forKeys:&v587 count:1];
        v43 = v37;
        v16 = v36;
        v465 = v42;
        v44 = [v43 initWithDomain:v38 code:2 userInfo:?];
        v17 = 0;
        v14 = 0;
        *a4 = v44;
LABEL_81:
        v13 = v466;
        goto LABEL_439;
      }

      v17 = 0;
      v14 = 0;
LABEL_85:
      v13 = v466;
      goto LABEL_440;
    }
  }

  v17 = 0;
LABEL_19:
  v18 = [v498 objectForKeyedSubscript:@"isSystemNotificationsEnabled"];
  v461 = v16;
  v465 = v18;
  v462 = a4;
  if (!v18 || (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = 0;
    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (a4)
    {
      v45 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = v17;
      v47 = *MEMORY[0x1E698F240];
      v585 = *MEMORY[0x1E696A578];
      v48 = self;
      v49 = objc_alloc(MEMORY[0x1E696AEC0]);
      v350 = objc_opt_class();
      v50 = v49;
      self = v48;
      v51 = v46;
      v13 = v466;
      v52 = [v50 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v350, @"isSystemNotificationsEnabled"];
      v586 = v52;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v586 forKeys:&v585 count:1];
      v53 = v45;
      v16 = v461;
      v54 = v47;
      v17 = v51;
      v20 = 0;
      v14 = 0;
      *v462 = [v53 initWithDomain:v54 code:2 userInfo:v21];
      goto LABEL_438;
    }

    v20 = 0;
    v14 = 0;
    goto LABEL_81;
  }

  v20 = v19;
LABEL_22:
  v21 = [v498 objectForKeyedSubscript:@"isAppNotificationsEnabled"];
  v460 = v6;
  v458 = v17;
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v462)
      {
        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v583 = *MEMORY[0x1E696A578];
        v57 = self;
        v58 = objc_alloc(MEMORY[0x1E696AEC0]);
        v351 = objc_opt_class();
        v59 = v58;
        self = v57;
        v13 = v466;
        obj = [v59 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v351, @"isAppNotificationsEnabled"];
        v584 = obj;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v584 forKeys:&v583 count:1];
        v61 = v55;
        v16 = v461;
        v497 = v60;
        v52 = 0;
        v14 = 0;
        *v462 = [v61 initWithDomain:v56 code:2 userInfo:?];
        goto LABEL_436;
      }

      v52 = 0;
      v14 = 0;
      v13 = v466;
      goto LABEL_438;
    }

    v459 = v21;
  }

  else
  {
    v459 = 0;
  }

  v22 = [v498 objectForKeyedSubscript:@"predictionTuple"];
  v23 = [MEMORY[0x1E695DFB0] null];
  v24 = [v22 isEqual:v23];

  v457 = self;
  v456 = v8;
  v455 = v21;
  if (v24)
  {
    v437 = v20;
    v25 = v498;

    v22 = 0;
  }

  else
  {
    if (v22)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        obj = v22;
        if (v462)
        {
          v70 = objc_alloc(MEMORY[0x1E696ABC0]);
          v71 = *MEMORY[0x1E698F240];
          v581 = *MEMORY[0x1E696A578];
          v497 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"predictionTuple"];
          v582 = v497;
          v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v582 forKeys:&v581 count:1];
          v73 = v71;
          v74 = v72;
          v14 = 0;
          *v462 = [v70 initWithDomain:v73 code:2 userInfo:v72];
          v52 = v459;
          v13 = v466;
          goto LABEL_435;
        }

        v14 = 0;
        v16 = v461;
        v52 = v459;
        v13 = v466;
        goto LABEL_437;
      }
    }

    v437 = v20;
    v25 = v498;
  }

  v497 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
  v500 = 0u;
  v501 = 0u;
  v502 = 0u;
  v503 = 0u;
  v26 = v22;
  v27 = [v26 countByEnumeratingWithState:&v500 objects:v580 count:16];
  obj = v26;
  if (!v27)
  {
    goto LABEL_42;
  }

  v28 = v27;
  v29 = *v501;
  while (2)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v501 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v500 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v62 = v462;
        if (v462)
        {
          v63 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = *MEMORY[0x1E698F240];
          v578 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"predictionTuple"];
          v579 = v32;
          v65 = MEMORY[0x1E695DF20];
          v66 = &v579;
          v67 = &v578;
LABEL_59:
          v68 = [v65 dictionaryWithObjects:v66 forKeys:v67 count:1];
          v14 = 0;
          *v62 = [v63 initWithDomain:v64 code:2 userInfo:v68];
LABEL_63:
          v436 = obj;
          self = v457;
          v13 = v466;
          v8 = v456;
          v20 = v437;
          v21 = v455;
          goto LABEL_433;
        }

LABEL_68:
        v14 = 0;
        v74 = obj;
        self = v457;
        v13 = v466;
        v8 = v456;
        v20 = v437;
        v21 = v455;
        v52 = v459;
        goto LABEL_435;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v62 = v462;
        if (v462)
        {
          v63 = objc_alloc(MEMORY[0x1E696ABC0]);
          v64 = *MEMORY[0x1E698F240];
          v576 = *MEMORY[0x1E696A578];
          v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"predictionTuple"];
          v577 = v32;
          v65 = MEMORY[0x1E695DF20];
          v66 = &v577;
          v67 = &v576;
          goto LABEL_59;
        }

        goto LABEL_68;
      }

      v32 = v31;
      v33 = [BMMomentsNotificationsPrediction alloc];
      v499 = 0;
      v34 = [(BMMomentsNotificationsPrediction *)v33 initWithJSONDictionary:v32 error:&v499];
      v35 = v499;
      if (v35)
      {
        v68 = v35;
        if (v462)
        {
          v69 = v35;
          *v462 = v68;
        }

        v14 = 0;
        goto LABEL_63;
      }

      [v497 addObject:v34];
    }

    v26 = obj;
    v28 = [obj countByEnumeratingWithState:&v500 objects:v580 count:16];
    if (v28)
    {
      continue;
    }

    break;
  }

LABEL_42:

  v32 = [v25 objectForKeyedSubscript:@"maxAvailabilityProbability"];
  if (!v32)
  {
    v436 = 0;
    self = v457;
    v13 = v466;
    v20 = v437;
LABEL_70:
    v21 = v455;
LABEL_71:
    v75 = [v498 objectForKeyedSubscript:@"maxAvailabilityProbabilityDate"];
    v434 = v75;
    if (!v75 || (v76 = v75, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v68 = 0;
      goto LABEL_92;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = v76;
      v78 = objc_alloc(MEMORY[0x1E695DF00]);
      [v77 doubleValue];
      v68 = [v78 initWithTimeIntervalSince1970:?];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v462)
          {
            v68 = 0;
            v14 = 0;
            v8 = v456;
            goto LABEL_432;
          }

          v474 = objc_alloc(MEMORY[0x1E696ABC0]);
          v445 = *MEMORY[0x1E698F240];
          v572 = *MEMORY[0x1E696A578];
          v190 = objc_alloc(MEMORY[0x1E696AEC0]);
          v360 = objc_opt_class();
          v191 = v190;
          v6 = v460;
          v432 = [v191 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v360, @"maxAvailabilityProbabilityDate"];
          v573 = v432;
          v95 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v573 forKeys:&v572 count:1];
          self = v457;
          v68 = 0;
          v14 = 0;
          *v462 = [v474 initWithDomain:v445 code:2 userInfo:v95];
          v8 = v456;
          goto LABEL_431;
        }

        v68 = v76;
LABEL_92:
        v94 = [v498 objectForKeyedSubscript:@"proposedFireDate"];
        v431 = v94;
        if (!v94 || (v95 = v94, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v432 = 0;
          goto LABEL_100;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v96 = v95;
          v97 = objc_alloc(MEMORY[0x1E695DF00]);
          [v96 doubleValue];
          v432 = [v97 initWithTimeIntervalSince1970:?];
LABEL_99:

          goto LABEL_100;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v96 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v98 = v95;
          v432 = [v96 dateFromString:v98];

          goto LABEL_99;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v432 = v95;
LABEL_100:
          v99 = [v498 objectForKeyedSubscript:@"proposedFireDateSource"];
          v433 = v99;
          if (!v99 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v428 = 0;
            goto LABEL_108;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v428 = v99;
LABEL_107:

LABEL_108:
            v104 = [v498 objectForKeyedSubscript:@"realTimeCheckHandlerRetryDate"];
            if (!v104 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v430 = 0;
              goto LABEL_117;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v105 = v104;
              v106 = objc_alloc(MEMORY[0x1E695DF00]);
              [v105 doubleValue];
              v430 = [v106 initWithTimeIntervalSince1970:?];
LABEL_115:

LABEL_116:
              v99 = v433;
LABEL_117:
              v108 = [v498 objectForKeyedSubscript:@"realTimeCheckHandlerFailure"];
              v426 = v104;
              v429 = v108;
              if (!v108 || (v109 = v108, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v427 = 0;
                goto LABEL_120;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v427 = v109;
LABEL_120:
                v110 = [v498 objectForKeyedSubscript:@"realTimeCheckHandlerErrorDescription"];
                v425 = v110;
                if (!v110 || (v111 = v110, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v424 = 0;
                  goto LABEL_123;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v424 = v111;
LABEL_123:
                  v112 = [v498 objectForKeyedSubscript:@"realTimeCheckHandlerErrorCode"];
                  v423 = v112;
                  if (!v112 || (v113 = v112, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v422 = 0;
                    goto LABEL_126;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v422 = v113;
LABEL_126:
                    v114 = [v498 objectForKeyedSubscript:@"realTimeAlarmErrorDomain"];
                    v421 = v114;
                    if (!v114 || (v115 = v114, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v420 = 0;
                      goto LABEL_129;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v420 = v115;
LABEL_129:
                      v116 = [v498 objectForKeyedSubscript:@"fireAlarmDate"];
                      v419 = v116;
                      if (!v116 || (v117 = v116, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v418 = 0;
                        goto LABEL_164;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v118 = v117;
                        v119 = objc_alloc(MEMORY[0x1E695DF00]);
                        [v118 doubleValue];
                        v418 = [v119 initWithTimeIntervalSince1970:?];
LABEL_163:

                        v99 = v433;
                        goto LABEL_164;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v118 = objc_alloc_init(MEMORY[0x1E696AC80]);
                        v148 = v117;
                        v418 = [v118 dateFromString:v148];

                        goto LABEL_163;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v418 = v117;
LABEL_164:
                        v149 = [v498 objectForKeyedSubscript:@"fireTimerAlarmErrorDescription"];
                        v417 = v149;
                        if (!v149 || (v150 = v149, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v416 = 0;
                          goto LABEL_167;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v416 = v150;
LABEL_167:
                          v151 = [v498 objectForKeyedSubscript:@"fireTimerAlarmErrorCode"];
                          v415 = v151;
                          if (!v151 || (v152 = v151, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v414 = 0;
                            goto LABEL_170;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v414 = v152;
LABEL_170:
                            v153 = [v498 objectForKeyedSubscript:@"fireTimerAlarmErrorDomain"];
                            v413 = v153;
                            if (!v153 || (v154 = v153, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v410 = 0;
                              goto LABEL_173;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v410 = v154;
LABEL_173:
                              v155 = [v498 objectForKeyedSubscript:@"realTimeCheckRejected"];
                              v411 = v155;
                              if (!v155 || (v156 = v155, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v412 = 0;
LABEL_176:
                                v157 = [v498 objectForKeyedSubscript:@"realTimeCheckIsTraveling"];
                                v409 = v157;
                                if (v157 && (v158 = v157, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                {
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                  {
                                    if (!v462)
                                    {
                                      v408 = 0;
                                      v14 = 0;
                                      v141 = v428;
                                      v104 = v426;
                                      v183 = v410;
LABEL_418:
                                      v187 = v412;
                                      goto LABEL_419;
                                    }

                                    v199 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v477 = v13;
                                    v200 = *MEMORY[0x1E698F240];
                                    v546 = *MEMORY[0x1E696A578];
                                    v183 = v410;
                                    v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsTraveling"];
                                    v547 = v201;
                                    v202 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v547 forKeys:&v546 count:1];
                                    v203 = v200;
                                    v13 = v477;
                                    v406 = v202;
                                    v204 = [v199 initWithDomain:v203 code:2 userInfo:?];
                                    v408 = 0;
                                    v14 = 0;
                                    *v462 = v204;
                                    v141 = v428;
                                    v104 = v426;
                                    goto LABEL_417;
                                  }

                                  v408 = v158;
                                }

                                else
                                {
                                  v408 = 0;
                                }

                                v159 = [v498 objectForKeyedSubscript:@"realTimeCheckIsPlaceEligible"];
                                v406 = v159;
                                if (!v159 || (v160 = v159, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v404 = 0;
                                  goto LABEL_182;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v404 = v160;
LABEL_182:
                                  v161 = [v498 objectForKeyedSubscript:@"realTimeCheckIsInVisit"];
                                  v405 = v161;
                                  if (!v161 || (v162 = v161, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v407 = 0;
                                    goto LABEL_185;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v407 = v162;
LABEL_185:
                                    v163 = [v498 objectForKeyedSubscript:@"realTimeCheckIsInWorkoutHealthKit"];
                                    v403 = v163;
                                    if (!v163 || (v164 = v163, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v402 = 0;
LABEL_188:
                                      v165 = [v498 objectForKeyedSubscript:@"realTimeCheckIsInWorkoutMotion"];
                                      v400 = v165;
                                      if (v165 && (v166 = v165, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                      {
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          if (!v462)
                                          {
                                            v401 = 0;
                                            v14 = 0;
                                            v21 = v455;
                                            v141 = v428;
                                            v104 = v426;
                                            v217 = v400;
LABEL_413:
                                            v201 = v404;
                                            goto LABEL_414;
                                          }

                                          v225 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v482 = v13;
                                          v226 = *MEMORY[0x1E698F240];
                                          v538 = *MEMORY[0x1E696A578];
                                          v217 = v400;
                                          v399 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsInWorkoutMotion"];
                                          v539 = v399;
                                          v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v539 forKeys:&v538 count:1];
                                          v228 = v226;
                                          v13 = v482;
                                          v398 = v227;
                                          v401 = 0;
                                          v14 = 0;
                                          *v462 = [v225 initWithDomain:v228 code:2 userInfo:?];
                                          v21 = v455;
                                          v141 = v428;
                                          v104 = v426;
                                          goto LABEL_412;
                                        }

                                        v167 = v166;
                                      }

                                      else
                                      {
                                        v167 = 0;
                                      }

                                      v168 = [v498 objectForKeyedSubscript:@"realTimeCheckIsJournaling"];
                                      v401 = v167;
                                      v398 = v168;
                                      if (!v168 || (v169 = v168, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v399 = 0;
LABEL_194:
                                        v170 = [v498 objectForKeyedSubscript:@"realTimeCheckIsAtHome"];
                                        v396 = v170;
                                        if (v170 && (v171 = v170, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                        {
                                          objc_opt_class();
                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                          {
                                            if (!v462)
                                            {
                                              v397 = 0;
                                              v14 = 0;
                                              v21 = v455;
                                              v141 = v428;
                                              v104 = v426;
                                              v217 = v400;
LABEL_410:
                                              v234 = v412;
                                              goto LABEL_411;
                                            }

                                            v235 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v484 = v13;
                                            v236 = *MEMORY[0x1E698F240];
                                            v534 = *MEMORY[0x1E696A578];
                                            v395 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsAtHome"];
                                            v535 = v395;
                                            v237 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v535 forKeys:&v534 count:1];
                                            v238 = v236;
                                            v13 = v484;
                                            v394 = v237;
                                            v239 = [v235 initWithDomain:v238 code:2 userInfo:?];
                                            v397 = 0;
                                            v14 = 0;
                                            *v462 = v239;
                                            v21 = v455;
                                            goto LABEL_457;
                                          }

                                          v172 = v171;
                                        }

                                        else
                                        {
                                          v172 = 0;
                                        }

                                        v173 = [v498 objectForKeyedSubscript:@"eventType"];
                                        v397 = v172;
                                        v394 = v173;
                                        if (!v173 || (v174 = v173, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v395 = 0;
                                          goto LABEL_279;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v395 = v174;
LABEL_278:

LABEL_279:
                                          v241 = [v498 objectForKeyedSubscript:@"eventTime"];
                                          v391 = v241;
                                          if (!v241 || (v242 = v241, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v393 = 0;
                                            goto LABEL_287;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v243 = v242;
                                            v244 = objc_alloc(MEMORY[0x1E695DF00]);
                                            [v243 doubleValue];
                                            v393 = [v244 initWithTimeIntervalSince1970:?];
LABEL_286:

                                            goto LABEL_287;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v245 = objc_alloc_init(MEMORY[0x1E696AC80]);
                                            v246 = v242;
                                            v243 = v245;
                                            v247 = v246;
                                            v393 = [v243 dateFromString:v247];

                                            goto LABEL_286;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v393 = v242;
LABEL_287:
                                            v248 = [v498 objectForKeyedSubscript:@"AttemptSuccessful"];
                                            v390 = v248;
                                            if (!v248 || (v249 = v248, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v392 = 0;
                                              goto LABEL_290;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v392 = v249;
LABEL_290:
                                              v250 = [v498 objectForKeyedSubscript:@"contentType"];
                                              v388 = v250;
                                              if (!v250 || (v251 = v250, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v389 = 0;
                                                goto LABEL_303;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v389 = v251;
LABEL_302:

LABEL_303:
                                                v258 = [v498 objectForKeyedSubscript:@"suggestionIdentifier"];
                                                v386 = v258;
                                                if (!v258 || (v259 = v258, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v387 = 0;
                                                  goto LABEL_306;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v387 = v259;
LABEL_306:
                                                  v260 = [v498 objectForKeyedSubscript:@"bundleInterfaceType"];
                                                  v384 = v260;
                                                  if (!v260 || (v261 = v260, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v385 = 0;
                                                    goto LABEL_321;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v385 = v261;
LABEL_320:

LABEL_321:
                                                    v267 = [v498 objectForKeyedSubscript:@"bundleGoodnessScore"];
                                                    v382 = v267;
                                                    if (!v267 || (v268 = v267, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v383 = 0;
                                                      goto LABEL_324;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v383 = v268;
LABEL_324:
                                                      v269 = [v498 objectForKeyedSubscript:@"deviceId"];
                                                      v380 = v269;
                                                      if (!v269 || (v270 = v269, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v381 = 0;
                                                        goto LABEL_327;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v381 = v270;
LABEL_327:
                                                        v271 = [v498 objectForKeyedSubscript:@"deviceType"];
                                                        v377 = v271;
                                                        if (!v271 || (v272 = v271, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v379 = 0;
LABEL_349:
                                                          v288 = [v498 objectForKeyedSubscript:@"isDevicePrimary"];
                                                          v375 = v288;
                                                          if (v288 && (v289 = v288, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                          {
                                                            objc_opt_class();
                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                            {
                                                              if (!v462)
                                                              {
                                                                v378 = 0;
                                                                v14 = 0;
                                                                v21 = v455;
                                                                v141 = v428;
                                                                v104 = v426;
                                                                v217 = v400;
                                                                goto LABEL_399;
                                                              }

                                                              v299 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v491 = v13;
                                                              v300 = *MEMORY[0x1E698F240];
                                                              v514 = *MEMORY[0x1E696A578];
                                                              v376 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDevicePrimary"];
                                                              v515 = v376;
                                                              v301 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v515 forKeys:&v514 count:1];
                                                              v302 = v300;
                                                              v13 = v491;
                                                              v303 = [v299 initWithDomain:v302 code:2 userInfo:v301];
                                                              v378 = 0;
                                                              v14 = 0;
                                                              *v462 = v303;
                                                              v304 = v301;
                                                              v21 = v455;
                                                              v141 = v428;
                                                              v104 = v426;
                                                              v217 = v400;
LABEL_398:

LABEL_399:
                                                              v325 = v375;
LABEL_400:

LABEL_401:
LABEL_402:

LABEL_403:
LABEL_404:

                                                              goto LABEL_405;
                                                            }

                                                            v378 = v289;
                                                          }

                                                          else
                                                          {
                                                            v378 = 0;
                                                          }

                                                          v290 = [v498 objectForKeyedSubscript:@"journalingAppFirstParty"];
                                                          v373 = v290;
                                                          if (v290 && (v291 = v290, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                          {
                                                            objc_opt_class();
                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                            {
                                                              if (!v462)
                                                              {
                                                                v376 = 0;
                                                                v14 = 0;
                                                                v21 = v455;
                                                                v141 = v428;
                                                                v104 = v426;
                                                                v217 = v400;
                                                                goto LABEL_397;
                                                              }

                                                              v305 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v492 = v13;
                                                              v306 = *MEMORY[0x1E698F240];
                                                              v512 = *MEMORY[0x1E696A578];
                                                              v374 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"journalingAppFirstParty"];
                                                              v513 = v374;
                                                              v307 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v513 forKeys:&v512 count:1];
                                                              v308 = v306;
                                                              v13 = v492;
                                                              v371 = v307;
                                                              v309 = [v305 initWithDomain:v308 code:2 userInfo:?];
                                                              v376 = 0;
                                                              v14 = 0;
                                                              *v462 = v309;
                                                              goto LABEL_480;
                                                            }

                                                            v376 = v291;
                                                          }

                                                          else
                                                          {
                                                            v376 = 0;
                                                          }

                                                          v292 = [v498 objectForKeyedSubscript:@"schedulingState"];
                                                          v371 = v292;
                                                          if (!v292 || (v293 = v292, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v374 = 0;
                                                            goto LABEL_378;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v374 = v293;
LABEL_377:

LABEL_378:
                                                            v314 = [v498 objectForKeyedSubscript:@"scheduleDeliverySetting"];
                                                            v370 = v314;
                                                            if (!v314 || (v315 = v314, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v493 = 0;
                                                              goto LABEL_386;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v493 = v315;
LABEL_385:

LABEL_386:
                                                              v317 = [v498 objectForKeyedSubscript:@"isOnDefaultSchedule"];
                                                              v369 = v317;
                                                              if (!v317 || (v318 = v317, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v372 = 0;
                                                                goto LABEL_389;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v372 = v318;
LABEL_389:
                                                                v319 = [v498 objectForKeyedSubscript:@"isDNUGated"];
                                                                if (v319 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                {
                                                                  objc_opt_class();
                                                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                  {
                                                                    v14 = v462;
                                                                    if (v462)
                                                                    {
                                                                      v339 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v453 = *MEMORY[0x1E698F240];
                                                                      v504 = *MEMORY[0x1E696A578];
                                                                      v340 = v319;
                                                                      v341 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDNUGated"];
                                                                      v505 = v341;
                                                                      v342 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v505 forKeys:&v504 count:1];
                                                                      *v462 = [v339 initWithDomain:v453 code:2 userInfo:v342];

                                                                      v319 = v340;
                                                                      v324 = 0;
                                                                      v14 = 0;
                                                                    }

                                                                    else
                                                                    {
                                                                      v324 = 0;
                                                                    }

                                                                    goto LABEL_393;
                                                                  }

                                                                  v463 = v319;
                                                                  v320 = v319;
                                                                }

                                                                else
                                                                {
                                                                  v463 = v319;
                                                                  v320 = 0;
                                                                }

                                                                v450 = [v428 intValue];
                                                                v368 = [v395 intValue];
                                                                v367 = [v389 intValue];
                                                                v321 = [v385 intValue];
                                                                v322 = [v379 intValue];
                                                                v323 = [v374 intValue];
                                                                v324 = v320;
                                                                LODWORD(v366) = v322;
                                                                LODWORD(v365) = v321;
                                                                LODWORD(v364) = v367;
                                                                LODWORD(v363) = v368;
                                                                LODWORD(v362) = v450;
                                                                v14 = -[BMMomentsNotifications initWithReporterIdentification:reporterWritingDate:isSignificantLocationEnabled:isSystemNotificationsEnabled:isAppNotificationsEnabled:predictionTuple:maxAvailabilityProbability:maxAvailabilityProbabilityDate:proposedFireDate:proposedFireDateSource:realTimeCheckHandlerRetryDate:realTimeCheckHandlerFailure:realTimeCheckHandlerErrorDescription:realTimeCheckHandlerErrorCode:realTimeAlarmErrorDomain:fireAlarmDate:fireTimerAlarmErrorDescription:fireTimerAlarmErrorCode:fireTimerAlarmErrorDomain:realTimeCheckRejected:realTimeCheckIsTraveling:realTimeCheckIsPlaceEligible:realTimeCheckIsInVisit:realTimeCheckIsInWorkoutHealthKit:realTimeCheckIsInWorkoutMotion:realTimeCheckIsJournaling:realTimeCheckIsAtHome:eventType:eventTime:AttemptSuccessful:contentType:suggestionIdentifier:bundleInterfaceType:bundleGoodnessScore:deviceId:deviceType:isDevicePrimary:journalingAppFirstParty:schedulingState:scheduleDeliverySetting:isOnDefaultSchedule:isDNUGated:](v457, "initWithReporterIdentification:reporterWritingDate:isSignificantLocationEnabled:isSystemNotificationsEnabled:isAppNotificationsEnabled:predictionTuple:maxAvailabilityProbability:maxAvailabilityProbabilityDate:proposedFireDate:proposedFireDateSource:realTimeCheckHandlerRetryDate:realTimeCheckHandlerFailure:realTimeCheckHandlerErrorDescription:realTimeCheckHandlerErrorCode:realTimeAlarmErrorDomain:fireAlarmDate:fireTimerAlarmErrorDescription:fireTimerAlarmErrorCode:fireTimerAlarmErrorDomain:realTimeCheckRejected:realTimeCheckIsTraveling:realTimeCheckIsPlaceEligible:realTimeCheckIsInVisit:realTimeCheckIsInWorkoutHealthKit:realTimeCheckIsInWorkoutMotion:realTimeCheckIsJournaling:realTimeCheckIsAtHome:eventType:eventTime:AttemptSuccessful:contentType:suggestionIdentifier:bundleInterfaceType:bundleGoodnessScore:deviceId:deviceType:isDevicePrimary:journalingAppFirstParty:schedulingState:scheduleDeliverySetting:isOnDefaultSchedule:isDNUGated:", v13, v456, v458, v20, v459, v497, v436, v68, v432, v362, v430, v427, v424, v422, v420, v418, v416, v414, v410, v412, v408, v404, v407, v402, v401, v399, v397, v363, v393, v392, v364, v387, v365, v383, v381, v366, v378, v376, __PAIR64__([v493 intValue], v323), v372, v320);
                                                                v457 = v14;
                                                                v319 = v463;
LABEL_393:

LABEL_394:
                                                                v104 = v426;
                                                                v217 = v400;

                                                                v141 = v428;
LABEL_395:

LABEL_396:
LABEL_397:
                                                                v304 = v373;
                                                                goto LABEL_398;
                                                              }

                                                              if (v462)
                                                              {
                                                                v332 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v452 = *MEMORY[0x1E698F240];
                                                                v506 = *MEMORY[0x1E696A578];
                                                                v324 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isOnDefaultSchedule"];
                                                                v507 = v324;
                                                                v319 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v507 forKeys:&v506 count:1];
                                                                v333 = [v332 initWithDomain:v452 code:2 userInfo:v319];
                                                                v372 = 0;
                                                                v14 = 0;
                                                                *v462 = v333;
                                                                v21 = v455;
                                                                goto LABEL_393;
                                                              }

                                                              v372 = 0;
                                                              v14 = 0;
LABEL_475:
                                                              v21 = v455;
                                                              goto LABEL_394;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v316 = v315;
                                                              v493 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsNotificationsScheduledDeliverySettingFromString(v316)];

                                                              goto LABEL_385;
                                                            }

                                                            v454 = v20;
                                                            if (v462)
                                                            {
                                                              v346 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v347 = *MEMORY[0x1E698F240];
                                                              v508 = *MEMORY[0x1E696A578];
                                                              v372 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"scheduleDeliverySetting"];
                                                              v509 = v372;
                                                              v369 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v509 forKeys:&v508 count:1];
                                                              v348 = [v346 initWithDomain:v347 code:2 userInfo:?];
                                                              v493 = 0;
                                                              v14 = 0;
                                                              *v462 = v348;
                                                              goto LABEL_475;
                                                            }

                                                            v493 = 0;
                                                            v14 = 0;
LABEL_482:
                                                            v20 = v454;
                                                            v21 = v455;
                                                            v141 = v428;
                                                            v104 = v426;
                                                            v217 = v400;
                                                            goto LABEL_395;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v313 = v293;
                                                            v374 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsNotificationsSchedulingStateFromString(v313)];

                                                            goto LABEL_377;
                                                          }

                                                          v454 = v20;
                                                          if (v462)
                                                          {
                                                            v343 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v344 = *MEMORY[0x1E698F240];
                                                            v510 = *MEMORY[0x1E696A578];
                                                            v493 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"schedulingState"];
                                                            v511 = v493;
                                                            v370 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v511 forKeys:&v510 count:1];
                                                            v345 = [v343 initWithDomain:v344 code:2 userInfo:?];
                                                            v374 = 0;
                                                            v14 = 0;
                                                            *v462 = v345;
                                                            goto LABEL_482;
                                                          }

                                                          v374 = 0;
                                                          v14 = 0;
LABEL_480:
                                                          v21 = v455;
                                                          v141 = v428;
                                                          v104 = v426;
                                                          v217 = v400;
                                                          goto LABEL_396;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v379 = v272;
LABEL_348:

                                                          goto LABEL_349;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v287 = v272;
                                                          v379 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsNotificationsDeviceTypeFromString(v287)];

                                                          goto LABEL_348;
                                                        }

                                                        if (v462)
                                                        {
                                                          v334 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v495 = v13;
                                                          v335 = *MEMORY[0x1E698F240];
                                                          v516 = *MEMORY[0x1E696A578];
                                                          v378 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceType"];
                                                          v517 = v378;
                                                          v336 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v517 forKeys:&v516 count:1];
                                                          v337 = v335;
                                                          v13 = v495;
                                                          v338 = [v334 initWithDomain:v337 code:2 userInfo:v336];
                                                          v379 = 0;
                                                          v14 = 0;
                                                          *v462 = v338;
                                                          v325 = v336;
                                                          v21 = v455;
                                                          v141 = v428;
                                                          v104 = v426;
                                                          v217 = v400;
                                                          goto LABEL_400;
                                                        }

                                                        v379 = 0;
                                                        v14 = 0;
LABEL_477:
                                                        v21 = v455;
                                                        v141 = v428;
                                                        v104 = v426;
                                                        v217 = v400;
                                                        goto LABEL_401;
                                                      }

                                                      if (v462)
                                                      {
                                                        v283 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v489 = v13;
                                                        v284 = *MEMORY[0x1E698F240];
                                                        v518 = *MEMORY[0x1E696A578];
                                                        v379 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceId"];
                                                        v519 = v379;
                                                        v285 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v519 forKeys:&v518 count:1];
                                                        v286 = v284;
                                                        v13 = v489;
                                                        v377 = v285;
                                                        v381 = 0;
                                                        v14 = 0;
                                                        *v462 = [v283 initWithDomain:v286 code:2 userInfo:?];
                                                        goto LABEL_477;
                                                      }

                                                      v381 = 0;
                                                      v14 = 0;
LABEL_461:
                                                      v21 = v455;
                                                      v141 = v428;
                                                      v104 = v426;
                                                      v217 = v400;
                                                      goto LABEL_402;
                                                    }

                                                    if (v462)
                                                    {
                                                      v273 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v487 = v13;
                                                      v274 = *MEMORY[0x1E698F240];
                                                      v520 = *MEMORY[0x1E696A578];
                                                      v381 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bundleGoodnessScore"];
                                                      v521 = v381;
                                                      v275 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v521 forKeys:&v520 count:1];
                                                      v276 = v274;
                                                      v13 = v487;
                                                      v380 = v275;
                                                      v277 = [v273 initWithDomain:v276 code:2 userInfo:?];
                                                      v383 = 0;
                                                      v14 = 0;
                                                      *v462 = v277;
                                                      goto LABEL_461;
                                                    }

                                                    v383 = 0;
                                                    v14 = 0;
LABEL_453:
                                                    v21 = v455;
                                                    v141 = v428;
                                                    v104 = v426;
                                                    v217 = v400;
                                                    goto LABEL_403;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v266 = v261;
                                                    v385 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataBundleInterfaceTypeFromString(v266)];

                                                    goto LABEL_320;
                                                  }

                                                  if (v462)
                                                  {
                                                    v310 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v311 = *MEMORY[0x1E698F240];
                                                    v522 = *MEMORY[0x1E696A578];
                                                    v383 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"bundleInterfaceType"];
                                                    v523 = v383;
                                                    v382 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v523 forKeys:&v522 count:1];
                                                    v312 = [v310 initWithDomain:v311 code:2 userInfo:?];
                                                    v385 = 0;
                                                    v14 = 0;
                                                    *v462 = v312;
                                                    goto LABEL_453;
                                                  }

                                                  v385 = 0;
                                                  v14 = 0;
LABEL_471:
                                                  v21 = v455;
                                                  v141 = v428;
                                                  v104 = v426;
                                                  v217 = v400;
                                                  goto LABEL_404;
                                                }

                                                if (v462)
                                                {
                                                  v262 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v486 = v13;
                                                  v263 = *MEMORY[0x1E698F240];
                                                  v524 = *MEMORY[0x1E696A578];
                                                  v385 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestionIdentifier"];
                                                  v525 = v385;
                                                  v264 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v525 forKeys:&v524 count:1];
                                                  v265 = v263;
                                                  v13 = v486;
                                                  v384 = v264;
                                                  v387 = 0;
                                                  v14 = 0;
                                                  *v462 = [v262 initWithDomain:v265 code:2 userInfo:?];
                                                  goto LABEL_471;
                                                }

                                                v387 = 0;
                                                v14 = 0;
LABEL_374:
                                                v21 = v455;
                                                v141 = v428;
                                                v104 = v426;
                                                v217 = v400;
LABEL_405:

LABEL_406:
LABEL_407:

                                                v326 = v407;
LABEL_408:
                                                v407 = v326;

LABEL_409:
                                                goto LABEL_410;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v257 = v251;
                                                v389 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsNotificationsContentTypeFromString(v257)];

                                                goto LABEL_302;
                                              }

                                              if (v462)
                                              {
                                                v294 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v490 = v13;
                                                v295 = *MEMORY[0x1E698F240];
                                                v526 = *MEMORY[0x1E696A578];
                                                v387 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"contentType"];
                                                v527 = v387;
                                                v296 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v527 forKeys:&v526 count:1];
                                                v297 = v295;
                                                v13 = v490;
                                                v386 = v296;
                                                v298 = [v294 initWithDomain:v297 code:2 userInfo:?];
                                                v389 = 0;
                                                v14 = 0;
                                                *v462 = v298;
                                                goto LABEL_374;
                                              }

                                              v389 = 0;
                                              v14 = 0;
LABEL_463:
                                              v21 = v455;
                                              v141 = v428;
                                              v104 = v426;
                                              v217 = v400;
                                              goto LABEL_406;
                                            }

                                            if (v462)
                                            {
                                              v252 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v485 = v13;
                                              v253 = *MEMORY[0x1E698F240];
                                              v528 = *MEMORY[0x1E696A578];
                                              v389 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"AttemptSuccessful"];
                                              v529 = v389;
                                              v254 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v529 forKeys:&v528 count:1];
                                              v255 = v253;
                                              v13 = v485;
                                              v388 = v254;
                                              v256 = [v252 initWithDomain:v255 code:2 userInfo:?];
                                              v392 = 0;
                                              v14 = 0;
                                              *v462 = v256;
                                              goto LABEL_463;
                                            }

                                            v392 = 0;
                                            v14 = 0;
                                            v21 = v455;
                                            v141 = v428;
LABEL_449:
                                            v104 = v426;
                                            v217 = v400;
                                            goto LABEL_407;
                                          }

                                          if (v462)
                                          {
                                            v451 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v494 = v13;
                                            v329 = *MEMORY[0x1E698F240];
                                            v530 = *MEMORY[0x1E696A578];
                                            v392 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"eventTime"];
                                            v531 = v392;
                                            v330 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v531 forKeys:&v530 count:1];
                                            v331 = v329;
                                            v13 = v494;
                                            v390 = v330;
                                            v393 = 0;
                                            v14 = 0;
                                            *v462 = [v451 initWithDomain:v331 code:2 userInfo:?];
                                            v141 = v428;
                                            goto LABEL_449;
                                          }

                                          v393 = 0;
                                          v14 = 0;
                                          v141 = v428;
LABEL_473:
                                          v104 = v426;
                                          v326 = v407;
                                          v217 = v400;
                                          goto LABEL_408;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v240 = v174;
                                          v395 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsNotificationsEventTypeFromString(v240)];

                                          goto LABEL_278;
                                        }

                                        if (v462)
                                        {
                                          v278 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v488 = v13;
                                          v279 = *MEMORY[0x1E698F240];
                                          v532 = *MEMORY[0x1E696A578];
                                          v393 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"eventType"];
                                          v533 = v393;
                                          v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v533 forKeys:&v532 count:1];
                                          v281 = v279;
                                          v13 = v488;
                                          v391 = v280;
                                          v282 = [v278 initWithDomain:v281 code:2 userInfo:?];
                                          v395 = 0;
                                          v14 = 0;
                                          *v462 = v282;
                                          v141 = v428;
                                          goto LABEL_473;
                                        }

                                        v395 = 0;
                                        v14 = 0;
LABEL_457:
                                        v141 = v428;
                                        v104 = v426;
                                        v217 = v400;
                                        goto LABEL_409;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v399 = v169;
                                        goto LABEL_194;
                                      }

                                      if (v462)
                                      {
                                        v229 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v483 = v13;
                                        v230 = *MEMORY[0x1E698F240];
                                        v536 = *MEMORY[0x1E696A578];
                                        v397 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsJournaling"];
                                        v537 = v397;
                                        v231 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v537 forKeys:&v536 count:1];
                                        v232 = v230;
                                        v13 = v483;
                                        v396 = v231;
                                        v233 = [v229 initWithDomain:v232 code:2 userInfo:?];
                                        v234 = v412;
                                        v399 = 0;
                                        v14 = 0;
                                        *v462 = v233;
                                        v21 = v455;
                                        v141 = v428;
                                        v104 = v426;
                                        v217 = v400;
LABEL_411:
                                        v412 = v234;

                                        goto LABEL_412;
                                      }

                                      v399 = 0;
                                      v14 = 0;
                                      v21 = v455;
                                      v141 = v428;
                                      v104 = v426;
                                      v217 = v400;
LABEL_412:

                                      goto LABEL_413;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v402 = v164;
                                      goto LABEL_188;
                                    }

                                    if (v462)
                                    {
                                      v215 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v480 = v13;
                                      v216 = *MEMORY[0x1E698F240];
                                      v540 = *MEMORY[0x1E696A578];
                                      v201 = v404;
                                      v401 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsInWorkoutHealthKit"];
                                      v541 = v401;
                                      v217 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v541 forKeys:&v540 count:1];
                                      v218 = v216;
                                      v13 = v480;
                                      v219 = [v215 initWithDomain:v218 code:2 userInfo:v217];
                                      v402 = 0;
                                      v14 = 0;
                                      *v462 = v219;
                                      v21 = v455;
                                      v141 = v428;
                                      v104 = v426;
LABEL_414:

                                      v183 = v410;
                                      goto LABEL_415;
                                    }

                                    v402 = 0;
                                    v14 = 0;
                                    v21 = v455;
                                    v141 = v428;
                                    v104 = v426;
                                    v183 = v410;
                                    v201 = v404;
LABEL_415:

                                    goto LABEL_416;
                                  }

                                  if (v462)
                                  {
                                    v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v479 = v13;
                                    v211 = *MEMORY[0x1E698F240];
                                    v542 = *MEMORY[0x1E696A578];
                                    v201 = v404;
                                    v183 = v410;
                                    v402 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsInVisit"];
                                    v543 = v402;
                                    v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v543 forKeys:&v542 count:1];
                                    v213 = v211;
                                    v13 = v479;
                                    v403 = v212;
                                    v214 = [v210 initWithDomain:v213 code:2 userInfo:?];
                                    v407 = 0;
                                    v14 = 0;
                                    *v462 = v214;
                                    v21 = v455;
                                    v141 = v428;
                                    v104 = v426;
                                    goto LABEL_415;
                                  }

                                  v407 = 0;
                                  v14 = 0;
                                  v21 = v455;
                                  v141 = v428;
                                  v104 = v426;
                                  v183 = v410;
                                  v201 = v404;
LABEL_416:

                                  goto LABEL_417;
                                }

                                if (v462)
                                {
                                  v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v478 = v13;
                                  v206 = *MEMORY[0x1E698F240];
                                  v544 = *MEMORY[0x1E696A578];
                                  v183 = v410;
                                  v407 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckIsPlaceEligible"];
                                  v545 = v407;
                                  v207 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v545 forKeys:&v544 count:1];
                                  v208 = v206;
                                  v13 = v478;
                                  v405 = v207;
                                  v209 = [v205 initWithDomain:v208 code:2 userInfo:?];
                                  v201 = 0;
                                  v14 = 0;
                                  *v462 = v209;
                                  v141 = v428;
                                  v104 = v426;
                                  goto LABEL_416;
                                }

                                v201 = 0;
                                v14 = 0;
                                v141 = v428;
                                v104 = v426;
                                v183 = v410;
LABEL_417:

                                goto LABEL_418;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v412 = v156;
                                goto LABEL_176;
                              }

                              if (v462)
                              {
                                v447 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v194 = *MEMORY[0x1E698F240];
                                v548 = *MEMORY[0x1E696A578];
                                v183 = v410;
                                v408 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"realTimeCheckRejected"];
                                v549 = v408;
                                v409 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v549 forKeys:&v548 count:1];
                                v195 = [v447 initWithDomain:v194 code:2 userInfo:?];
                                v187 = 0;
                                v14 = 0;
                                *v462 = v195;
                                v141 = v428;
                                v104 = v426;
LABEL_419:

                                goto LABEL_420;
                              }

                              v187 = 0;
                              v14 = 0;
                              v141 = v428;
                              v104 = v426;
                              v183 = v410;
LABEL_420:

                              v99 = v433;
                              goto LABEL_421;
                            }

                            v120 = v428;
                            v121 = v21;
                            if (v462)
                            {
                              v444 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v473 = v13;
                              v186 = *MEMORY[0x1E698F240];
                              v550 = *MEMORY[0x1E696A578];
                              v187 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fireTimerAlarmErrorDomain"];
                              v551 = v187;
                              v188 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v551 forKeys:&v550 count:1];
                              v189 = v186;
                              v13 = v473;
                              v411 = v188;
                              v183 = 0;
                              v14 = 0;
                              *v462 = [v444 initWithDomain:v189 code:2 userInfo:?];
                              v141 = v428;
                              v104 = v426;
                              goto LABEL_420;
                            }

                            v183 = 0;
                            v14 = 0;
LABEL_260:
                            v21 = v121;
                            v141 = v120;
                            v104 = v426;
LABEL_421:

                            v8 = v456;
                            goto LABEL_422;
                          }

                          v120 = v428;
                          v121 = v21;
                          if (v462)
                          {
                            v443 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v472 = v13;
                            v180 = *MEMORY[0x1E698F240];
                            v552 = *MEMORY[0x1E696A578];
                            v181 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v359 = objc_opt_class();
                            v182 = v181;
                            v99 = v433;
                            v183 = [v182 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v359, @"fireTimerAlarmErrorCode"];
                            v553 = v183;
                            v184 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v553 forKeys:&v552 count:1];
                            v185 = v180;
                            v13 = v472;
                            v413 = v184;
                            v414 = 0;
                            v14 = 0;
                            *v462 = [v443 initWithDomain:v185 code:2 userInfo:?];
                            goto LABEL_260;
                          }

                          v414 = 0;
                          v14 = 0;
LABEL_254:
                          v8 = v456;
                          v21 = v121;
                          v141 = v120;
                          v104 = v426;
LABEL_422:

                          goto LABEL_423;
                        }

                        v120 = v428;
                        v121 = v21;
                        if (v462)
                        {
                          v442 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v471 = v13;
                          v175 = *MEMORY[0x1E698F240];
                          v554 = *MEMORY[0x1E696A578];
                          v176 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v358 = objc_opt_class();
                          v177 = v176;
                          v99 = v433;
                          v414 = [v177 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v358, @"fireTimerAlarmErrorDescription"];
                          v555 = v414;
                          v178 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v555 forKeys:&v554 count:1];
                          v179 = v175;
                          v13 = v471;
                          v415 = v178;
                          v416 = 0;
                          v14 = 0;
                          *v462 = [v442 initWithDomain:v179 code:2 userInfo:?];
                          goto LABEL_254;
                        }

                        v416 = 0;
                        v14 = 0;
LABEL_263:
                        v8 = v456;
                        v21 = v121;
                        v141 = v120;
                        v104 = v426;
LABEL_423:

                        goto LABEL_424;
                      }

                      v120 = v428;
                      v121 = v21;
                      if (v462)
                      {
                        v449 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v481 = v13;
                        v220 = *MEMORY[0x1E698F240];
                        v556 = *MEMORY[0x1E696A578];
                        v221 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v361 = objc_opt_class();
                        v222 = v221;
                        v99 = v433;
                        v416 = [v222 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v361, @"fireAlarmDate"];
                        v557 = v416;
                        v223 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v557 forKeys:&v556 count:1];
                        v224 = v220;
                        v13 = v481;
                        v417 = v223;
                        v418 = 0;
                        v14 = 0;
                        *v462 = [v449 initWithDomain:v224 code:2 userInfo:?];
                        goto LABEL_263;
                      }

                      v418 = 0;
                      v14 = 0;
LABEL_153:
                      v8 = v456;
                      v21 = v121;
                      v141 = v120;
                      v104 = v426;
LABEL_424:

                      goto LABEL_425;
                    }

                    v120 = v428;
                    v121 = v21;
                    if (v462)
                    {
                      v441 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v469 = v13;
                      v136 = *MEMORY[0x1E698F240];
                      v558 = *MEMORY[0x1E696A578];
                      v137 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v356 = objc_opt_class();
                      v138 = v137;
                      v99 = v433;
                      v418 = [v138 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v356, @"realTimeAlarmErrorDomain"];
                      v559 = v418;
                      v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v559 forKeys:&v558 count:1];
                      v140 = v136;
                      v13 = v469;
                      v419 = v139;
                      v420 = 0;
                      v14 = 0;
                      *v462 = [v441 initWithDomain:v140 code:2 userInfo:?];
                      goto LABEL_153;
                    }

                    v420 = 0;
                    v14 = 0;
LABEL_242:
                    v8 = v456;
                    v21 = v121;
                    v141 = v120;
                    v104 = v426;
LABEL_425:

                    goto LABEL_426;
                  }

                  v120 = v428;
                  v121 = v21;
                  if (v462)
                  {
                    v440 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v468 = v13;
                    v131 = *MEMORY[0x1E698F240];
                    v560 = *MEMORY[0x1E696A578];
                    v132 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v355 = objc_opt_class();
                    v133 = v132;
                    v99 = v433;
                    v420 = [v133 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v355, @"realTimeCheckHandlerErrorCode"];
                    v561 = v420;
                    v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v561 forKeys:&v560 count:1];
                    v135 = v131;
                    v13 = v468;
                    v421 = v134;
                    v422 = 0;
                    v14 = 0;
                    *v462 = [v440 initWithDomain:v135 code:2 userInfo:?];
                    goto LABEL_242;
                  }

                  v422 = 0;
                  v14 = 0;
LABEL_232:
                  v8 = v456;
                  v21 = v121;
                  v141 = v120;
                  v104 = v426;
LABEL_426:

                  goto LABEL_427;
                }

                v120 = v428;
                v121 = v21;
                if (v462)
                {
                  v439 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v467 = v13;
                  v126 = *MEMORY[0x1E698F240];
                  v562 = *MEMORY[0x1E696A578];
                  v127 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v354 = objc_opt_class();
                  v128 = v127;
                  v99 = v433;
                  v422 = [v128 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v354, @"realTimeCheckHandlerErrorDescription"];
                  v563 = v422;
                  v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v563 forKeys:&v562 count:1];
                  v130 = v126;
                  v13 = v467;
                  v423 = v129;
                  v424 = 0;
                  v14 = 0;
                  *v462 = [v439 initWithDomain:v130 code:2 userInfo:?];
                  goto LABEL_232;
                }

                v424 = 0;
                v14 = 0;
LABEL_222:
                v8 = v456;
                v21 = v121;
                v141 = v120;
                v104 = v426;
LABEL_427:

                goto LABEL_428;
              }

              v120 = v428;
              v121 = v21;
              if (v462)
              {
                v438 = objc_alloc(MEMORY[0x1E696ABC0]);
                v122 = *MEMORY[0x1E698F240];
                v564 = *MEMORY[0x1E696A578];
                v123 = objc_alloc(MEMORY[0x1E696AEC0]);
                v353 = objc_opt_class();
                v124 = v123;
                v99 = v433;
                v424 = [v124 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v353, @"realTimeCheckHandlerFailure"];
                v565 = v424;
                v425 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v565 forKeys:&v564 count:1];
                v125 = [v438 initWithDomain:v122 code:2 userInfo:?];
                v427 = 0;
                v14 = 0;
                *v462 = v125;
                goto LABEL_222;
              }

              v427 = 0;
              v14 = 0;
              v8 = v456;
              v141 = v428;
              v104 = v426;
LABEL_428:

              goto LABEL_429;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v105 = objc_alloc_init(MEMORY[0x1E696AC80]);
              v107 = v104;
              v430 = [v105 dateFromString:v107];

              goto LABEL_115;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v430 = v104;
              goto LABEL_116;
            }

            if (v462)
            {
              v448 = objc_alloc(MEMORY[0x1E696ABC0]);
              v476 = v13;
              v196 = *MEMORY[0x1E698F240];
              v566 = *MEMORY[0x1E696A578];
              v427 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"realTimeCheckHandlerRetryDate"];
              v567 = v427;
              v197 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v567 forKeys:&v566 count:1];
              v198 = v196;
              v13 = v476;
              v429 = v197;
              v430 = 0;
              v14 = 0;
              *v462 = [v448 initWithDomain:v198 code:2 userInfo:?];
              v8 = v456;
              v99 = v433;
              v141 = v428;
              goto LABEL_428;
            }

            v430 = 0;
            v14 = 0;
            v8 = v456;
            v99 = v433;
            v141 = v428;
LABEL_429:

            v6 = v460;
            goto LABEL_430;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v100 = v99;
            v101 = MEMORY[0x1E696AD98];
            v102 = BMMomentsNotificationsFireDateSourceFromString(v100);
            v103 = v101;
            v99 = v433;
            v428 = [v103 numberWithInt:v102];

            goto LABEL_107;
          }

          if (v462)
          {
            v142 = objc_alloc(MEMORY[0x1E696ABC0]);
            v470 = v13;
            v143 = *MEMORY[0x1E698F240];
            v568 = *MEMORY[0x1E696A578];
            v144 = objc_alloc(MEMORY[0x1E696AEC0]);
            v357 = objc_opt_class();
            v145 = v144;
            v99 = v433;
            v430 = [v145 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", v357, @"proposedFireDateSource"];
            v569 = v430;
            v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v569 forKeys:&v568 count:1];
            v146 = v143;
            v13 = v470;
            v147 = [v142 initWithDomain:v146 code:2 userInfo:v104];
            v141 = 0;
            v14 = 0;
            *v462 = v147;
            v8 = v456;
            v21 = v455;
            goto LABEL_429;
          }

          v141 = 0;
          v14 = 0;
          v8 = v456;
          v21 = v455;
LABEL_430:

          self = v457;
          v95 = v431;
          goto LABEL_431;
        }

        if (v462)
        {
          v446 = objc_alloc(MEMORY[0x1E696ABC0]);
          v475 = v13;
          v192 = *MEMORY[0x1E698F240];
          v570 = *MEMORY[0x1E696A578];
          v141 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"proposedFireDate"];
          v571 = v141;
          v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v571 forKeys:&v570 count:1];
          v193 = v192;
          v13 = v475;
          v432 = 0;
          v14 = 0;
          *v462 = [v446 initWithDomain:v193 code:2 userInfo:v99];
          v8 = v456;
          v21 = v455;
          goto LABEL_430;
        }

        v432 = 0;
        v14 = 0;
        v8 = v456;
        v21 = v455;
LABEL_431:

LABEL_432:
LABEL_433:
        v52 = v459;

        v74 = v436;
        goto LABEL_434;
      }

      v77 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v93 = v76;
      v68 = [v77 dateFromString:v93];
    }

    self = v457;
    goto LABEL_92;
  }

  objc_opt_class();
  v13 = v466;
  v8 = v456;
  v20 = v437;
  if (objc_opt_isKindOfClass())
  {
    v436 = 0;
    self = v457;
    goto LABEL_70;
  }

  objc_opt_class();
  v21 = v455;
  if (objc_opt_isKindOfClass())
  {
    v436 = v32;
    self = v457;
    goto LABEL_71;
  }

  if (v462)
  {
    v88 = objc_alloc(MEMORY[0x1E696ABC0]);
    v89 = *MEMORY[0x1E698F240];
    v574 = *MEMORY[0x1E696A578];
    v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"maxAvailabilityProbability"];
    v575 = v68;
    v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v575 forKeys:&v574 count:1];
    v91 = v89;
    v8 = v456;
    v435 = v90;
    v92 = [v88 initWithDomain:v91 code:2 userInfo:?];
    v436 = 0;
    v14 = 0;
    *v462 = v92;
    self = v457;

    goto LABEL_433;
  }

  v74 = 0;
  v14 = 0;
  self = v457;
  v52 = v459;
LABEL_434:

LABEL_435:
  v16 = v461;
LABEL_436:

  v17 = v458;
LABEL_437:

LABEL_438:
LABEL_439:

  v7 = v464;
LABEL_440:

LABEL_441:
LABEL_442:

  v327 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsNotifications *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_reporterIdentification)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_reporterWritingDate)
  {
    raw_reporterWritingDate = self->_raw_reporterWritingDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsSignificantLocationEnabled)
  {
    isSignificantLocationEnabled = self->_isSignificantLocationEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSystemNotificationsEnabled)
  {
    isSystemNotificationsEnabled = self->_isSystemNotificationsEnabled;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsAppNotificationsEnabled)
  {
    isAppNotificationsEnabled = self->_isAppNotificationsEnabled;
    PBDataWriterWriteBOOLField();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = self->_predictionTuple;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v45;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v44 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v14 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v11);
  }

  if (self->_hasMaxAvailabilityProbability)
  {
    maxAvailabilityProbability = self->_maxAvailabilityProbability;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_maxAvailabilityProbabilityDate)
  {
    raw_maxAvailabilityProbabilityDate = self->_raw_maxAvailabilityProbabilityDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_proposedFireDate)
  {
    raw_proposedFireDate = self->_raw_proposedFireDate;
    PBDataWriterWriteDoubleField();
  }

  proposedFireDateSource = self->_proposedFireDateSource;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_realTimeCheckHandlerRetryDate)
  {
    raw_realTimeCheckHandlerRetryDate = self->_raw_realTimeCheckHandlerRetryDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRealTimeCheckHandlerFailure)
  {
    realTimeCheckHandlerFailure = self->_realTimeCheckHandlerFailure;
    PBDataWriterWriteBOOLField();
  }

  if (self->_realTimeCheckHandlerErrorDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_realTimeCheckHandlerErrorCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_realTimeAlarmErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_fireAlarmDate)
  {
    raw_fireAlarmDate = self->_raw_fireAlarmDate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_fireTimerAlarmErrorDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fireTimerAlarmErrorCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fireTimerAlarmErrorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRealTimeCheckRejected)
  {
    realTimeCheckRejected = self->_realTimeCheckRejected;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsTraveling)
  {
    realTimeCheckIsTraveling = self->_realTimeCheckIsTraveling;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsPlaceEligible)
  {
    realTimeCheckIsPlaceEligible = self->_realTimeCheckIsPlaceEligible;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsInVisit)
  {
    realTimeCheckIsInVisit = self->_realTimeCheckIsInVisit;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsInWorkoutHealthKit)
  {
    realTimeCheckIsInWorkoutHealthKit = self->_realTimeCheckIsInWorkoutHealthKit;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsInWorkoutMotion)
  {
    realTimeCheckIsInWorkoutMotion = self->_realTimeCheckIsInWorkoutMotion;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsJournaling)
  {
    realTimeCheckIsJournaling = self->_realTimeCheckIsJournaling;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRealTimeCheckIsAtHome)
  {
    realTimeCheckIsAtHome = self->_realTimeCheckIsAtHome;
    PBDataWriterWriteBOOLField();
  }

  eventType = self->_eventType;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_eventTime)
  {
    raw_eventTime = self->_raw_eventTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasAttemptSuccessful)
  {
    AttemptSuccessful = self->_AttemptSuccessful;
    PBDataWriterWriteBOOLField();
  }

  contentType = self->_contentType;
  PBDataWriterWriteUint32Field();
  if (self->_suggestionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  bundleInterfaceType = self->_bundleInterfaceType;
  PBDataWriterWriteUint32Field();
  if (self->_hasBundleGoodnessScore)
  {
    bundleGoodnessScore = self->_bundleGoodnessScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_deviceId)
  {
    PBDataWriterWriteStringField();
  }

  deviceType = self->_deviceType;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsDevicePrimary)
  {
    isDevicePrimary = self->_isDevicePrimary;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasJournalingAppFirstParty)
  {
    journalingAppFirstParty = self->_journalingAppFirstParty;
    PBDataWriterWriteBOOLField();
  }

  schedulingState = self->_schedulingState;
  PBDataWriterWriteUint32Field();
  scheduleDeliverySetting = self->_scheduleDeliverySetting;
  PBDataWriterWriteUint32Field();
  if (self->_hasIsOnDefaultSchedule)
  {
    isOnDefaultSchedule = self->_isOnDefaultSchedule;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsDNUGated)
  {
    isDNUGated = self->_isDNUGated;
    PBDataWriterWriteBOOLField();
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v197.receiver = self;
  v197.super_class = BMMomentsNotifications;
  v5 = [(BMEventBase *)&v197 init];
  if (!v5)
  {
    goto LABEL_356;
  }

  v6 = objc_opt_new();
  while (1)
  {
    v7 = [v4 position];
    if (v7 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LOBYTE(v198[0]) = 0;
      v11 = [v4 position] + 1;
      if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
      {
        v13 = [v4 data];
        [v13 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v10 |= (v198[0] & 0x7F) << v8;
      if ((v198[0] & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      v14 = v9++ >= 9;
      if (v14)
      {
        v15 = 0;
        goto LABEL_17;
      }
    }

    v15 = [v4 hasError] ? 0 : v10;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
    {
      break;
    }

    switch((v15 >> 3))
    {
      case 1u:
        v16 = PBReaderReadString();
        v17 = 184;
        goto LABEL_229;
      case 2u:
        v5->_hasRaw_reporterWritingDate = 1;
        v198[0] = 0;
        v118 = [v4 position] + 8;
        if (v118 >= [v4 position] && (v119 = objc_msgSend(v4, "position") + 8, v119 <= objc_msgSend(v4, "length")))
        {
          v188 = [v4 data];
          [v188 getBytes:v198 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_raw_reporterWritingDate = v198[0];
        continue;
      case 3u:
        v112 = 0;
        v113 = 0;
        v114 = 0;
        v5->_hasIsSignificantLocationEnabled = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v115 = [v4 position] + 1;
          if (v115 >= [v4 position] && (v116 = objc_msgSend(v4, "position") + 1, v116 <= objc_msgSend(v4, "length")))
          {
            v117 = [v4 data];
            [v117 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v114 |= (v198[0] & 0x7F) << v112;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v112 += 7;
          v14 = v113++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_310;
          }
        }

        v37 = (v114 != 0) & ~[v4 hasError];
LABEL_310:
        v183 = 112;
        goto LABEL_329;
      case 4u:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v5->_hasIsSystemNotificationsEnabled = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v147 = [v4 position] + 1;
          if (v147 >= [v4 position] && (v148 = objc_msgSend(v4, "position") + 1, v148 <= objc_msgSend(v4, "length")))
          {
            v149 = [v4 data];
            [v149 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v146 |= (v198[0] & 0x7F) << v144;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v14 = v145++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_322;
          }
        }

        v37 = (v146 != 0) & ~[v4 hasError];
LABEL_322:
        v183 = 114;
        goto LABEL_329;
      case 5u:
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v5->_hasIsAppNotificationsEnabled = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v97 = [v4 position] + 1;
          if (v97 >= [v4 position] && (v98 = objc_msgSend(v4, "position") + 1, v98 <= objc_msgSend(v4, "length")))
          {
            v99 = [v4 data];
            [v99 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v96 |= (v198[0] & 0x7F) << v94;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v94 += 7;
          v14 = v95++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_304;
          }
        }

        v37 = (v96 != 0) & ~[v4 hasError];
LABEL_304:
        v183 = 116;
        goto LABEL_329;
      case 6u:
        v198[0] = 0;
        v198[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_358;
        }

        v136 = [[BMMomentsNotificationsPrediction alloc] initByReadFrom:v4];
        if (!v136)
        {
          goto LABEL_358;
        }

        v137 = v136;
        [v6 addObject:v136];
        PBReaderRecallMark();

        continue;
      case 7u:
        v5->_hasMaxAvailabilityProbability = 1;
        v198[0] = 0;
        v90 = [v4 position] + 8;
        if (v90 >= [v4 position] && (v91 = objc_msgSend(v4, "position") + 8, v91 <= objc_msgSend(v4, "length")))
        {
          v186 = [v4 data];
          [v186 getBytes:v198 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_maxAvailabilityProbability = v198[0];
        continue;
      case 8u:
        v5->_hasRaw_maxAvailabilityProbabilityDate = 1;
        v198[0] = 0;
        v92 = [v4 position] + 8;
        if (v92 >= [v4 position] && (v93 = objc_msgSend(v4, "position") + 8, v93 <= objc_msgSend(v4, "length")))
        {
          v187 = [v4 data];
          [v187 getBytes:v198 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_raw_maxAvailabilityProbabilityDate = v198[0];
        continue;
      case 9u:
        v5->_hasRaw_proposedFireDate = 1;
        v198[0] = 0;
        v126 = [v4 position] + 8;
        if (v126 >= [v4 position] && (v127 = objc_msgSend(v4, "position") + 8, v127 <= objc_msgSend(v4, "length")))
        {
          v189 = [v4 data];
          [v189 getBytes:v198 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_raw_proposedFireDate = v198[0];
        continue;
      case 0xAu:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v123 = [v4 position] + 1;
          if (v123 >= [v4 position] && (v124 = objc_msgSend(v4, "position") + 1, v124 <= objc_msgSend(v4, "length")))
          {
            v125 = [v4 data];
            [v125 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v122 |= (v198[0] & 0x7F) << v120;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v24 = v121++ > 8;
          if (v24)
          {
            goto LABEL_313;
          }
        }

        if (([v4 hasError] & 1) != 0 || v122 > 2)
        {
LABEL_313:
          LODWORD(v122) = 0;
        }

        v5->_proposedFireDateSource = v122;
        continue;
      case 0xBu:
        v5->_hasRaw_realTimeCheckHandlerRetryDate = 1;
        v198[0] = 0;
        v150 = [v4 position] + 8;
        if (v150 >= [v4 position] && (v151 = objc_msgSend(v4, "position") + 8, v151 <= objc_msgSend(v4, "length")))
        {
          v191 = [v4 data];
          [v191 getBytes:v198 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_raw_realTimeCheckHandlerRetryDate = v198[0];
        continue;
      case 0xCu:
        v70 = 0;
        v71 = 0;
        v72 = 0;
        v5->_hasRealTimeCheckHandlerFailure = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v73 = [v4 position] + 1;
          if (v73 >= [v4 position] && (v74 = objc_msgSend(v4, "position") + 1, v74 <= objc_msgSend(v4, "length")))
          {
            v75 = [v4 data];
            [v75 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v72 |= (v198[0] & 0x7F) << v70;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v70 += 7;
          v14 = v71++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_298;
          }
        }

        v37 = (v72 != 0) & ~[v4 hasError];
LABEL_298:
        v183 = 119;
        goto LABEL_329;
      case 0xDu:
        v16 = PBReaderReadString();
        v17 = 208;
        goto LABEL_229;
      case 0xEu:
        v16 = PBReaderReadString();
        v17 = 216;
        goto LABEL_229;
      case 0xFu:
        v16 = PBReaderReadString();
        v17 = 224;
        goto LABEL_229;
      case 0x10u:
        v5->_hasRaw_fireAlarmDate = 1;
        v198[0] = 0;
        v128 = [v4 position] + 8;
        if (v128 >= [v4 position] && (v129 = objc_msgSend(v4, "position") + 8, v129 <= objc_msgSend(v4, "length")))
        {
          v190 = [v4 data];
          [v190 getBytes:v198 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_raw_fireAlarmDate = v198[0];
        continue;
      case 0x11u:
        v16 = PBReaderReadString();
        v17 = 232;
        goto LABEL_229;
      case 0x12u:
        v16 = PBReaderReadString();
        v17 = 240;
        goto LABEL_229;
      case 0x13u:
        v16 = PBReaderReadString();
        v17 = 248;
        goto LABEL_229;
      case 0x14u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        v5->_hasRealTimeCheckRejected = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v85 = [v4 position] + 1;
          if (v85 >= [v4 position] && (v86 = objc_msgSend(v4, "position") + 1, v86 <= objc_msgSend(v4, "length")))
          {
            v87 = [v4 data];
            [v87 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v84 |= (v198[0] & 0x7F) << v82;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v82 += 7;
          v14 = v83++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_302;
          }
        }

        v37 = (v84 != 0) & ~[v4 hasError];
LABEL_302:
        v183 = 121;
        goto LABEL_329;
      case 0x15u:
        v153 = 0;
        v154 = 0;
        v155 = 0;
        v5->_hasRealTimeCheckIsTraveling = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v156 = [v4 position] + 1;
          if (v156 >= [v4 position] && (v157 = objc_msgSend(v4, "position") + 1, v157 <= objc_msgSend(v4, "length")))
          {
            v158 = [v4 data];
            [v158 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v155 |= (v198[0] & 0x7F) << v153;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v153 += 7;
          v14 = v154++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_324;
          }
        }

        v37 = (v155 != 0) & ~[v4 hasError];
LABEL_324:
        v183 = 123;
        goto LABEL_329;
      case 0x16u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v5->_hasRealTimeCheckIsPlaceEligible = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v41 = [v4 position] + 1;
          if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 1, v42 <= objc_msgSend(v4, "length")))
          {
            v43 = [v4 data];
            [v43 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v40 |= (v198[0] & 0x7F) << v38;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v14 = v39++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_286;
          }
        }

        v37 = (v40 != 0) & ~[v4 hasError];
LABEL_286:
        v183 = 125;
        goto LABEL_329;
      case 0x17u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v5->_hasRealTimeCheckIsInVisit = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v79 = [v4 position] + 1;
          if (v79 >= [v4 position] && (v80 = objc_msgSend(v4, "position") + 1, v80 <= objc_msgSend(v4, "length")))
          {
            v81 = [v4 data];
            [v81 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v78 |= (v198[0] & 0x7F) << v76;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v14 = v77++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_300;
          }
        }

        v37 = (v78 != 0) & ~[v4 hasError];
LABEL_300:
        v183 = 127;
        goto LABEL_329;
      case 0x18u:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v5->_hasRealTimeCheckIsInWorkoutHealthKit = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v53 = [v4 position] + 1;
          if (v53 >= [v4 position] && (v54 = objc_msgSend(v4, "position") + 1, v54 <= objc_msgSend(v4, "length")))
          {
            v55 = [v4 data];
            [v55 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v52 |= (v198[0] & 0x7F) << v50;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v14 = v51++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_290;
          }
        }

        v37 = (v52 != 0) & ~[v4 hasError];
LABEL_290:
        v183 = 129;
        goto LABEL_329;
      case 0x19u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        v5->_hasRealTimeCheckIsInWorkoutMotion = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v103 = [v4 position] + 1;
          if (v103 >= [v4 position] && (v104 = objc_msgSend(v4, "position") + 1, v104 <= objc_msgSend(v4, "length")))
          {
            v105 = [v4 data];
            [v105 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v102 |= (v198[0] & 0x7F) << v100;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v14 = v101++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_306;
          }
        }

        v37 = (v102 != 0) & ~[v4 hasError];
LABEL_306:
        v183 = 131;
        goto LABEL_329;
      case 0x1Au:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v5->_hasRealTimeCheckIsJournaling = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v47 = [v4 position] + 1;
          if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
          {
            v49 = [v4 data];
            [v49 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v46 |= (v198[0] & 0x7F) << v44;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v14 = v45++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_288;
          }
        }

        v37 = (v46 != 0) & ~[v4 hasError];
LABEL_288:
        v183 = 133;
        goto LABEL_329;
      case 0x1Bu:
        v165 = 0;
        v166 = 0;
        v167 = 0;
        v5->_hasRealTimeCheckIsAtHome = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v168 = [v4 position] + 1;
          if (v168 >= [v4 position] && (v169 = objc_msgSend(v4, "position") + 1, v169 <= objc_msgSend(v4, "length")))
          {
            v170 = [v4 data];
            [v170 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v167 |= (v198[0] & 0x7F) << v165;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v165 += 7;
          v14 = v166++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_328;
          }
        }

        v37 = (v167 != 0) & ~[v4 hasError];
LABEL_328:
        v183 = 135;
        goto LABEL_329;
      case 0x1Eu:
        v159 = 0;
        v160 = 0;
        v161 = 0;
        v5->_hasAttemptSuccessful = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v162 = [v4 position] + 1;
          if (v162 >= [v4 position] && (v163 = objc_msgSend(v4, "position") + 1, v163 <= objc_msgSend(v4, "length")))
          {
            v164 = [v4 data];
            [v164 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v161 |= (v198[0] & 0x7F) << v159;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v159 += 7;
          v14 = v160++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_326;
          }
        }

        v37 = (v161 != 0) & ~[v4 hasError];
LABEL_326:
        v183 = 137;
        goto LABEL_329;
      case 0x1Fu:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v61 = [v4 position] + 1;
          if (v61 >= [v4 position] && (v62 = objc_msgSend(v4, "position") + 1, v62 <= objc_msgSend(v4, "length")))
          {
            v63 = [v4 data];
            [v63 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v60 |= (v198[0] & 0x7F) << v58;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v24 = v59++ > 8;
          if (v24)
          {
            goto LABEL_293;
          }
        }

        if (([v4 hasError] & 1) != 0 || v60 > 7)
        {
LABEL_293:
          LODWORD(v60) = 0;
        }

        v5->_eventType = v60;
        continue;
      case 0x20u:
        v5->_hasRaw_eventTime = 1;
        v198[0] = 0;
        v88 = [v4 position] + 8;
        if (v88 >= [v4 position] && (v89 = objc_msgSend(v4, "position") + 8, v89 <= objc_msgSend(v4, "length")))
        {
          v185 = [v4 data];
          [v185 getBytes:v198 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_raw_eventTime = v198[0];
        continue;
      case 0x21u:
        v130 = 0;
        v131 = 0;
        v132 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v133 = [v4 position] + 1;
          if (v133 >= [v4 position] && (v134 = objc_msgSend(v4, "position") + 1, v134 <= objc_msgSend(v4, "length")))
          {
            v135 = [v4 data];
            [v135 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v132 |= (v198[0] & 0x7F) << v130;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v130 += 7;
          v24 = v131++ > 8;
          if (v24)
          {
            goto LABEL_317;
          }
        }

        if (([v4 hasError] & 1) != 0 || v132 > 2)
        {
LABEL_317:
          LODWORD(v132) = 0;
        }

        v5->_contentType = v132;
        continue;
      case 0x22u:
        v16 = PBReaderReadString();
        v17 = 256;
        goto LABEL_229;
      case 0x23u:
        v177 = 0;
        v178 = 0;
        v179 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v180 = [v4 position] + 1;
          if (v180 >= [v4 position] && (v181 = objc_msgSend(v4, "position") + 1, v181 <= objc_msgSend(v4, "length")))
          {
            v182 = [v4 data];
            [v182 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v179 |= (v198[0] & 0x7F) << v177;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v177 += 7;
          v24 = v178++ > 8;
          if (v24)
          {
            goto LABEL_336;
          }
        }

        if (([v4 hasError] & 1) != 0 || v179 > 0xF)
        {
LABEL_336:
          LODWORD(v179) = 0;
        }

        v5->_bundleInterfaceType = v179;
        continue;
      case 0x24u:
        v5->_hasBundleGoodnessScore = 1;
        v198[0] = 0;
        v56 = [v4 position] + 8;
        if (v56 >= [v4 position] && (v57 = objc_msgSend(v4, "position") + 8, v57 <= objc_msgSend(v4, "length")))
        {
          v184 = [v4 data];
          [v184 getBytes:v198 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_bundleGoodnessScore = v198[0];
        continue;
      case 0x25u:
        v16 = PBReaderReadString();
        v17 = 272;
LABEL_229:
        v152 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        continue;
      case 0x26u:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v174 = [v4 position] + 1;
          if (v174 >= [v4 position] && (v175 = objc_msgSend(v4, "position") + 1, v175 <= objc_msgSend(v4, "length")))
          {
            v176 = [v4 data];
            [v176 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v173 |= (v198[0] & 0x7F) << v171;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v171 += 7;
          v24 = v172++ > 8;
          if (v24)
          {
            goto LABEL_332;
          }
        }

        if (([v4 hasError] & 1) != 0 || v173 > 4)
        {
LABEL_332:
          LODWORD(v173) = 0;
        }

        v5->_deviceType = v173;
        continue;
      case 0x27u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v5->_hasIsDevicePrimary = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v34 = [v4 position] + 1;
          if (v34 >= [v4 position] && (v35 = objc_msgSend(v4, "position") + 1, v35 <= objc_msgSend(v4, "length")))
          {
            v36 = [v4 data];
            [v36 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v33 |= (v198[0] & 0x7F) << v31;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v14 = v32++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_284;
          }
        }

        v37 = (v33 != 0) & ~[v4 hasError];
LABEL_284:
        v183 = 140;
        goto LABEL_329;
      case 0x28u:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v5->_hasJournalingAppFirstParty = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v141 = [v4 position] + 1;
          if (v141 >= [v4 position] && (v142 = objc_msgSend(v4, "position") + 1, v142 <= objc_msgSend(v4, "length")))
          {
            v143 = [v4 data];
            [v143 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v140 |= (v198[0] & 0x7F) << v138;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v138 += 7;
          v14 = v139++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_320;
          }
        }

        v37 = (v140 != 0) & ~[v4 hasError];
LABEL_320:
        v183 = 142;
        goto LABEL_329;
      case 0x29u:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v27 |= (v198[0] & 0x7F) << v25;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v24 = v26++ > 8;
          if (v24)
          {
            goto LABEL_281;
          }
        }

        if (([v4 hasError] & 1) != 0 || v27 > 3)
        {
LABEL_281:
          LODWORD(v27) = 0;
        }

        v5->_schedulingState = v27;
        continue;
      case 0x2Au:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (v198[0] & 0x7F) << v18;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v24 = v19++ > 8;
          if (v24)
          {
            goto LABEL_277;
          }
        }

        if (([v4 hasError] & 1) != 0 || v20 > 3)
        {
LABEL_277:
          LODWORD(v20) = 0;
        }

        v5->_scheduleDeliverySetting = v20;
        continue;
      case 0x2Bu:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v5->_hasIsOnDefaultSchedule = 1;
        while (1)
        {
          LOBYTE(v198[0]) = 0;
          v67 = [v4 position] + 1;
          if (v67 >= [v4 position] && (v68 = objc_msgSend(v4, "position") + 1, v68 <= objc_msgSend(v4, "length")))
          {
            v69 = [v4 data];
            [v69 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v66 |= (v198[0] & 0x7F) << v64;
          if ((v198[0] & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v14 = v65++ >= 9;
          if (v14)
          {
            LOBYTE(v37) = 0;
            goto LABEL_296;
          }
        }

        v37 = (v66 != 0) & ~[v4 hasError];
LABEL_296:
        v183 = 144;
        goto LABEL_329;
      case 0x2Cu:
        v106 = 0;
        v107 = 0;
        v108 = 0;
        v5->_hasIsDNUGated = 1;
        break;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_358:

        goto LABEL_355;
    }

    while (1)
    {
      LOBYTE(v198[0]) = 0;
      v109 = [v4 position] + 1;
      if (v109 >= [v4 position] && (v110 = objc_msgSend(v4, "position") + 1, v110 <= objc_msgSend(v4, "length")))
      {
        v111 = [v4 data];
        [v111 getBytes:v198 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v108 |= (v198[0] & 0x7F) << v106;
      if ((v198[0] & 0x80) == 0)
      {
        break;
      }

      v106 += 7;
      v14 = v107++ >= 9;
      if (v14)
      {
        LOBYTE(v37) = 0;
        goto LABEL_308;
      }
    }

    v37 = (v108 != 0) & ~[v4 hasError];
LABEL_308:
    v183 = 146;
LABEL_329:
    *(&v5->super.super.isa + v183) = v37;
  }

  v192 = [v6 copy];
  predictionTuple = v5->_predictionTuple;
  v5->_predictionTuple = v192;

  v194 = [v4 hasError];
  if (v194)
  {
LABEL_355:
    v195 = 0;
  }

  else
  {
LABEL_356:
    v195 = v5;
  }

  return v195;
}

- (NSString)description
{
  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  v46 = [(BMMomentsNotifications *)self reporterIdentification];
  v49 = [(BMMomentsNotifications *)self reporterWritingDate];
  v48 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isSignificantLocationEnabled](self, "isSignificantLocationEnabled")}];
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isSystemNotificationsEnabled](self, "isSystemNotificationsEnabled")}];
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isAppNotificationsEnabled](self, "isAppNotificationsEnabled")}];
  v43 = [(BMMomentsNotifications *)self predictionTuple];
  v3 = MEMORY[0x1E696AD98];
  [(BMMomentsNotifications *)self maxAvailabilityProbability];
  v44 = [v3 numberWithDouble:?];
  v42 = [(BMMomentsNotifications *)self maxAvailabilityProbabilityDate];
  v40 = [(BMMomentsNotifications *)self proposedFireDate];
  v41 = BMMomentsNotificationsFireDateSourceAsString([(BMMomentsNotifications *)self proposedFireDateSource]);
  v38 = [(BMMomentsNotifications *)self realTimeCheckHandlerRetryDate];
  v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckHandlerFailure](self, "realTimeCheckHandlerFailure")}];
  v37 = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorDescription];
  v35 = [(BMMomentsNotifications *)self realTimeCheckHandlerErrorCode];
  v36 = [(BMMomentsNotifications *)self realTimeAlarmErrorDomain];
  v33 = [(BMMomentsNotifications *)self fireAlarmDate];
  v34 = [(BMMomentsNotifications *)self fireTimerAlarmErrorDescription];
  v31 = [(BMMomentsNotifications *)self fireTimerAlarmErrorCode];
  v32 = [(BMMomentsNotifications *)self fireTimerAlarmErrorDomain];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckRejected](self, "realTimeCheckRejected")}];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsTraveling](self, "realTimeCheckIsTraveling")}];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsPlaceEligible](self, "realTimeCheckIsPlaceEligible")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInVisit](self, "realTimeCheckIsInVisit")}];
  v28 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInWorkoutHealthKit](self, "realTimeCheckIsInWorkoutHealthKit")}];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsInWorkoutMotion](self, "realTimeCheckIsInWorkoutMotion")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsJournaling](self, "realTimeCheckIsJournaling")}];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications realTimeCheckIsAtHome](self, "realTimeCheckIsAtHome")}];
  v18 = BMMomentsNotificationsEventTypeAsString([(BMMomentsNotifications *)self eventType]);
  v24 = [(BMMomentsNotifications *)self eventTime];
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications AttemptSuccessful](self, "AttemptSuccessful")}];
  v23 = BMMomentsNotificationsContentTypeAsString([(BMMomentsNotifications *)self contentType]);
  v16 = [(BMMomentsNotifications *)self suggestionIdentifier];
  v15 = BMMomentsEventDataBundleInterfaceTypeAsString([(BMMomentsNotifications *)self bundleInterfaceType]);
  v4 = MEMORY[0x1E696AD98];
  [(BMMomentsNotifications *)self bundleGoodnessScore];
  v13 = [v4 numberWithDouble:?];
  v12 = [(BMMomentsNotifications *)self deviceId];
  v14 = BMMomentsNotificationsDeviceTypeAsString([(BMMomentsNotifications *)self deviceType]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isDevicePrimary](self, "isDevicePrimary")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications journalingAppFirstParty](self, "journalingAppFirstParty")}];
  v5 = BMMomentsNotificationsSchedulingStateAsString([(BMMomentsNotifications *)self schedulingState]);
  v6 = BMMomentsNotificationsScheduledDeliverySettingAsString([(BMMomentsNotifications *)self scheduleDeliverySetting]);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isOnDefaultSchedule](self, "isOnDefaultSchedule")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsNotifications isDNUGated](self, "isDNUGated")}];
  v22 = [v21 initWithFormat:@"BMMomentsNotifications with reporterIdentification: %@, reporterWritingDate: %@, isSignificantLocationEnabled: %@, isSystemNotificationsEnabled: %@, isAppNotificationsEnabled: %@, predictionTuple: %@, maxAvailabilityProbability: %@, maxAvailabilityProbabilityDate: %@, proposedFireDate: %@, proposedFireDateSource: %@, realTimeCheckHandlerRetryDate: %@, realTimeCheckHandlerFailure: %@, realTimeCheckHandlerErrorDescription: %@, realTimeCheckHandlerErrorCode: %@, realTimeAlarmErrorDomain: %@, fireAlarmDate: %@, fireTimerAlarmErrorDescription: %@, fireTimerAlarmErrorCode: %@, fireTimerAlarmErrorDomain: %@, realTimeCheckRejected: %@, realTimeCheckIsTraveling: %@, realTimeCheckIsPlaceEligible: %@, realTimeCheckIsInVisit: %@, realTimeCheckIsInWorkoutHealthKit: %@, realTimeCheckIsInWorkoutMotion: %@, realTimeCheckIsJournaling: %@, realTimeCheckIsAtHome: %@, eventType: %@, eventTime: %@, AttemptSuccessful: %@, contentType: %@, suggestionIdentifier: %@, bundleInterfaceType: %@, bundleGoodnessScore: %@, deviceId: %@, deviceType: %@, isDevicePrimary: %@, journalingAppFirstParty: %@, schedulingState: %@, scheduleDeliverySetting: %@, isOnDefaultSchedule: %@, isDNUGated: %@", v46, v49, v48, v47, v45, v43, v44, v42, v40, v41, v38, v39, v37, v35, v36, v33, v34, v31, v32, v29, v20, v30, v19, v28, v27, v26, v25, v18, v24, v17, v23, v16, v15, v13, v12, v14, v11, v10, v5, v6, v7, v8];

  return v22;
}

- (BMMomentsNotifications)initWithReporterIdentification:(id)a3 reporterWritingDate:(id)a4 isSignificantLocationEnabled:(id)a5 isSystemNotificationsEnabled:(id)a6 isAppNotificationsEnabled:(id)a7 predictionTuple:(id)a8 maxAvailabilityProbability:(id)a9 maxAvailabilityProbabilityDate:(id)a10 proposedFireDate:(id)a11 proposedFireDateSource:(int)a12 realTimeCheckHandlerRetryDate:(id)a13 realTimeCheckHandlerFailure:(id)a14 realTimeCheckHandlerErrorDescription:(id)a15 realTimeCheckHandlerErrorCode:(id)a16 realTimeAlarmErrorDomain:(id)a17 fireAlarmDate:(id)a18 fireTimerAlarmErrorDescription:(id)a19 fireTimerAlarmErrorCode:(id)a20 fireTimerAlarmErrorDomain:(id)a21 realTimeCheckRejected:(id)a22 realTimeCheckIsTraveling:(id)a23 realTimeCheckIsPlaceEligible:(id)a24 realTimeCheckIsInVisit:(id)a25 realTimeCheckIsInWorkoutHealthKit:(id)a26 realTimeCheckIsInWorkoutMotion:(id)a27 realTimeCheckIsJournaling:(id)a28 realTimeCheckIsAtHome:(id)a29 eventType:(int)a30 eventTime:(id)a31 AttemptSuccessful:(id)a32 contentType:(int)a33 suggestionIdentifier:(id)a34 bundleInterfaceType:(int)a35 bundleGoodnessScore:(id)a36 deviceId:(id)a37 deviceType:(int)a38 isDevicePrimary:(id)a39 journalingAppFirstParty:(id)a40 schedulingState:(int)a41 scheduleDeliverySetting:(int)a42 isOnDefaultSchedule:(id)a43 isDNUGated:(id)a44
{
  v77 = a3;
  v78 = a4;
  v96 = a5;
  v48 = a6;
  v95 = a7;
  v67 = a8;
  v76 = a8;
  v93 = a9;
  v49 = a10;
  v50 = a11;
  v51 = a13;
  v52 = a14;
  v69 = a15;
  v53 = a16;
  v75 = a17;
  v54 = a18;
  v74 = a19;
  v73 = a20;
  v72 = a21;
  v92 = a22;
  v91 = a23;
  v90 = a24;
  v89 = a25;
  v88 = a26;
  v87 = a27;
  v86 = a28;
  v85 = a29;
  v84 = a31;
  v83 = a32;
  v71 = a34;
  v82 = a36;
  v70 = a37;
  v81 = a39;
  v80 = a40;
  v79 = a43;
  v55 = a44;
  v97.receiver = self;
  v97.super_class = BMMomentsNotifications;
  v56 = [(BMEventBase *)&v97 init];
  if (v56)
  {
    v56->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v56->_reporterIdentification, a3);
    if (v78)
    {
      v56->_hasRaw_reporterWritingDate = 1;
      [v78 timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_reporterWritingDate = 0;
      v57 = -1.0;
    }

    v56->_raw_reporterWritingDate = v57;
    if (v96)
    {
      v56->_hasIsSignificantLocationEnabled = 1;
      v56->_isSignificantLocationEnabled = [v96 BOOLValue];
    }

    else
    {
      v56->_hasIsSignificantLocationEnabled = 0;
      v56->_isSignificantLocationEnabled = 0;
    }

    if (v48)
    {
      v56->_hasIsSystemNotificationsEnabled = 1;
      v56->_isSystemNotificationsEnabled = [v48 BOOLValue];
    }

    else
    {
      v56->_hasIsSystemNotificationsEnabled = 0;
      v56->_isSystemNotificationsEnabled = 0;
    }

    if (v95)
    {
      v56->_hasIsAppNotificationsEnabled = 1;
      v56->_isAppNotificationsEnabled = [v95 BOOLValue];
    }

    else
    {
      v56->_hasIsAppNotificationsEnabled = 0;
      v56->_isAppNotificationsEnabled = 0;
    }

    objc_storeStrong(&v56->_predictionTuple, v67);
    if (v93)
    {
      v56->_hasMaxAvailabilityProbability = 1;
      [v93 doubleValue];
    }

    else
    {
      v56->_hasMaxAvailabilityProbability = 0;
      v58 = -1.0;
    }

    v56->_maxAvailabilityProbability = v58;
    if (v49)
    {
      v56->_hasRaw_maxAvailabilityProbabilityDate = 1;
      [v49 timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_maxAvailabilityProbabilityDate = 0;
      v59 = -1.0;
    }

    v56->_raw_maxAvailabilityProbabilityDate = v59;
    if (v50)
    {
      v56->_hasRaw_proposedFireDate = 1;
      [v50 timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_proposedFireDate = 0;
      v60 = -1.0;
    }

    v56->_raw_proposedFireDate = v60;
    v56->_proposedFireDateSource = a12;
    if (v51)
    {
      v56->_hasRaw_realTimeCheckHandlerRetryDate = 1;
      [v51 timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_realTimeCheckHandlerRetryDate = 0;
      v61 = -1.0;
    }

    v56->_raw_realTimeCheckHandlerRetryDate = v61;
    if (v52)
    {
      v56->_hasRealTimeCheckHandlerFailure = 1;
      v56->_realTimeCheckHandlerFailure = [v52 BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckHandlerFailure = 0;
      v56->_realTimeCheckHandlerFailure = 0;
    }

    objc_storeStrong(&v56->_realTimeCheckHandlerErrorDescription, a15);
    objc_storeStrong(&v56->_realTimeCheckHandlerErrorCode, a16);
    objc_storeStrong(&v56->_realTimeAlarmErrorDomain, a17);
    if (v54)
    {
      v56->_hasRaw_fireAlarmDate = 1;
      [v54 timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_fireAlarmDate = 0;
      v62 = -1.0;
    }

    v56->_raw_fireAlarmDate = v62;
    objc_storeStrong(&v56->_fireTimerAlarmErrorDescription, a19);
    objc_storeStrong(&v56->_fireTimerAlarmErrorCode, a20);
    objc_storeStrong(&v56->_fireTimerAlarmErrorDomain, a21);
    if (v92)
    {
      v56->_hasRealTimeCheckRejected = 1;
      v56->_realTimeCheckRejected = [v92 BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckRejected = 0;
      v56->_realTimeCheckRejected = 0;
    }

    if (v91)
    {
      v56->_hasRealTimeCheckIsTraveling = 1;
      v56->_realTimeCheckIsTraveling = [v91 BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsTraveling = 0;
      v56->_realTimeCheckIsTraveling = 0;
    }

    if (v90)
    {
      v56->_hasRealTimeCheckIsPlaceEligible = 1;
      v56->_realTimeCheckIsPlaceEligible = [v90 BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsPlaceEligible = 0;
      v56->_realTimeCheckIsPlaceEligible = 0;
    }

    if (v89)
    {
      v56->_hasRealTimeCheckIsInVisit = 1;
      v56->_realTimeCheckIsInVisit = [v89 BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsInVisit = 0;
      v56->_realTimeCheckIsInVisit = 0;
    }

    if (v88)
    {
      v56->_hasRealTimeCheckIsInWorkoutHealthKit = 1;
      v56->_realTimeCheckIsInWorkoutHealthKit = [v88 BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsInWorkoutHealthKit = 0;
      v56->_realTimeCheckIsInWorkoutHealthKit = 0;
    }

    if (v87)
    {
      v56->_hasRealTimeCheckIsInWorkoutMotion = 1;
      v56->_realTimeCheckIsInWorkoutMotion = [v87 BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsInWorkoutMotion = 0;
      v56->_realTimeCheckIsInWorkoutMotion = 0;
    }

    if (v86)
    {
      v56->_hasRealTimeCheckIsJournaling = 1;
      v56->_realTimeCheckIsJournaling = [v86 BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsJournaling = 0;
      v56->_realTimeCheckIsJournaling = 0;
    }

    if (v85)
    {
      v56->_hasRealTimeCheckIsAtHome = 1;
      v56->_realTimeCheckIsAtHome = [v85 BOOLValue];
    }

    else
    {
      v56->_hasRealTimeCheckIsAtHome = 0;
      v56->_realTimeCheckIsAtHome = 0;
    }

    v56->_eventType = a30;
    if (v84)
    {
      v56->_hasRaw_eventTime = 1;
      [v84 timeIntervalSince1970];
    }

    else
    {
      v56->_hasRaw_eventTime = 0;
      v63 = -1.0;
    }

    v56->_raw_eventTime = v63;
    if (v83)
    {
      v56->_hasAttemptSuccessful = 1;
      v56->_AttemptSuccessful = [v83 BOOLValue];
    }

    else
    {
      v56->_hasAttemptSuccessful = 0;
      v56->_AttemptSuccessful = 0;
    }

    v56->_contentType = a33;
    objc_storeStrong(&v56->_suggestionIdentifier, a34);
    v56->_bundleInterfaceType = a35;
    if (v82)
    {
      v56->_hasBundleGoodnessScore = 1;
      [v82 doubleValue];
    }

    else
    {
      v56->_hasBundleGoodnessScore = 0;
      v64 = -1.0;
    }

    v56->_bundleGoodnessScore = v64;
    objc_storeStrong(&v56->_deviceId, a37);
    v56->_deviceType = a38;
    if (v81)
    {
      v56->_hasIsDevicePrimary = 1;
      v56->_isDevicePrimary = [v81 BOOLValue];
    }

    else
    {
      v56->_hasIsDevicePrimary = 0;
      v56->_isDevicePrimary = 0;
    }

    if (v80)
    {
      v56->_hasJournalingAppFirstParty = 1;
      v56->_journalingAppFirstParty = [v80 BOOLValue];
    }

    else
    {
      v56->_hasJournalingAppFirstParty = 0;
      v56->_journalingAppFirstParty = 0;
    }

    v56->_schedulingState = a41;
    v56->_scheduleDeliverySetting = a42;
    if (v79)
    {
      v56->_hasIsOnDefaultSchedule = 1;
      v56->_isOnDefaultSchedule = [v79 BOOLValue];
    }

    else
    {
      v56->_hasIsOnDefaultSchedule = 0;
      v56->_isOnDefaultSchedule = 0;
    }

    if (v55)
    {
      v56->_hasIsDNUGated = 1;
      v56->_isDNUGated = [v55 BOOLValue];
    }

    else
    {
      v56->_hasIsDNUGated = 0;
      v56->_isDNUGated = 0;
    }
  }

  return v56;
}

+ (id)protoFields
{
  v47[42] = *MEMORY[0x1E69E9840];
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reporterIdentification" number:1 type:13 subMessageClass:0];
  v47[0] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reporterWritingDate" number:2 type:0 subMessageClass:0];
  v47[1] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSignificantLocationEnabled" number:3 type:12 subMessageClass:0];
  v47[2] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSystemNotificationsEnabled" number:4 type:12 subMessageClass:0];
  v47[3] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAppNotificationsEnabled" number:5 type:12 subMessageClass:0];
  v47[4] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"predictionTuple" number:6 type:14 subMessageClass:objc_opt_class()];
  v47[5] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxAvailabilityProbability" number:7 type:0 subMessageClass:0];
  v47[6] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"maxAvailabilityProbabilityDate" number:8 type:0 subMessageClass:0];
  v47[7] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"proposedFireDate" number:9 type:0 subMessageClass:0];
  v47[8] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"proposedFireDateSource" number:10 type:4 subMessageClass:0];
  v47[9] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckHandlerRetryDate" number:11 type:0 subMessageClass:0];
  v47[10] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckHandlerFailure" number:12 type:12 subMessageClass:0];
  v47[11] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckHandlerErrorDescription" number:13 type:13 subMessageClass:0];
  v47[12] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckHandlerErrorCode" number:14 type:13 subMessageClass:0];
  v47[13] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeAlarmErrorDomain" number:15 type:13 subMessageClass:0];
  v47[14] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fireAlarmDate" number:16 type:0 subMessageClass:0];
  v47[15] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fireTimerAlarmErrorDescription" number:17 type:13 subMessageClass:0];
  v47[16] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fireTimerAlarmErrorCode" number:18 type:13 subMessageClass:0];
  v47[17] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fireTimerAlarmErrorDomain" number:19 type:13 subMessageClass:0];
  v47[18] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckRejected" number:20 type:12 subMessageClass:0];
  v47[19] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsTraveling" number:21 type:12 subMessageClass:0];
  v47[20] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsPlaceEligible" number:22 type:12 subMessageClass:0];
  v47[21] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsInVisit" number:23 type:12 subMessageClass:0];
  v47[22] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsInWorkoutHealthKit" number:24 type:12 subMessageClass:0];
  v47[23] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsInWorkoutMotion" number:25 type:12 subMessageClass:0];
  v47[24] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsJournaling" number:26 type:12 subMessageClass:0];
  v47[25] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"realTimeCheckIsAtHome" number:27 type:12 subMessageClass:0];
  v47[26] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventType" number:31 type:4 subMessageClass:0];
  v47[27] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventTime" number:32 type:0 subMessageClass:0];
  v47[28] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"AttemptSuccessful" number:30 type:12 subMessageClass:0];
  v47[29] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentType" number:33 type:4 subMessageClass:0];
  v47[30] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionIdentifier" number:34 type:13 subMessageClass:0];
  v47[31] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleInterfaceType" number:35 type:4 subMessageClass:0];
  v47[32] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleGoodnessScore" number:36 type:0 subMessageClass:0];
  v47[33] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceId" number:37 type:13 subMessageClass:0];
  v47[34] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:38 type:4 subMessageClass:0];
  v47[35] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDevicePrimary" number:39 type:12 subMessageClass:0];
  v47[36] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"journalingAppFirstParty" number:40 type:12 subMessageClass:0];
  v47[37] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"schedulingState" number:41 type:4 subMessageClass:0];
  v47[38] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"scheduleDeliverySetting" number:42 type:4 subMessageClass:0];
  v47[39] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isOnDefaultSchedule" number:43 type:12 subMessageClass:0];
  v47[40] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDNUGated" number:44 type:12 subMessageClass:0];
  v47[41] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:42];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)columns
{
  v47[42] = *MEMORY[0x1E69E9840];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reporterIdentification" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reporterWritingDate" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSignificantLocationEnabled" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSystemNotificationsEnabled" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAppNotificationsEnabled" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"predictionTuple_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_361];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxAvailabilityProbability" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"maxAvailabilityProbabilityDate" dataType:3 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:2];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"proposedFireDate" dataType:3 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:2];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"proposedFireDateSource" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckHandlerRetryDate" dataType:3 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:2];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckHandlerFailure" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckHandlerErrorDescription" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckHandlerErrorCode" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeAlarmErrorDomain" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fireAlarmDate" dataType:3 requestOnly:0 fieldNumber:16 protoDataType:0 convertedType:2];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fireTimerAlarmErrorDescription" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fireTimerAlarmErrorCode" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fireTimerAlarmErrorDomain" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckRejected" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsTraveling" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsPlaceEligible" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:12 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsInVisit" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:12 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsInWorkoutHealthKit" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:12 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsInWorkoutMotion" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:12 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsJournaling" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"realTimeCheckIsAtHome" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventType" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:4 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventTime" dataType:3 requestOnly:0 fieldNumber:32 protoDataType:0 convertedType:2];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"AttemptSuccessful" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentType" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestionIdentifier" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleInterfaceType" dataType:0 requestOnly:0 fieldNumber:35 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleGoodnessScore" dataType:1 requestOnly:0 fieldNumber:36 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceId" dataType:2 requestOnly:0 fieldNumber:37 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDevicePrimary" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"journalingAppFirstParty" dataType:0 requestOnly:0 fieldNumber:40 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"schedulingState" dataType:0 requestOnly:0 fieldNumber:41 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"scheduleDeliverySetting" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:4 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isOnDefaultSchedule" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDNUGated" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:12 convertedType:0];
  v47[0] = v46;
  v47[1] = v45;
  v47[2] = v44;
  v47[3] = v43;
  v47[4] = v42;
  v47[5] = v41;
  v47[6] = v40;
  v47[7] = v39;
  v47[8] = v38;
  v47[9] = v37;
  v47[10] = v36;
  v47[11] = v35;
  v47[12] = v34;
  v47[13] = v33;
  v47[14] = v32;
  v47[15] = v31;
  v47[16] = v30;
  v47[17] = v29;
  v47[18] = v28;
  v47[19] = v27;
  v47[20] = v26;
  v47[21] = v25;
  v47[22] = v24;
  v47[23] = v23;
  v47[24] = v22;
  v47[25] = v21;
  v47[26] = v20;
  v47[27] = v14;
  v47[28] = v19;
  v47[29] = v18;
  v47[30] = v17;
  v47[31] = v16;
  v47[32] = v2;
  v47[33] = v3;
  v47[34] = v4;
  v47[35] = v5;
  v47[36] = v6;
  v47[37] = v15;
  v47[38] = v7;
  v47[39] = v8;
  v47[40] = v13;
  v47[41] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:42];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __33__BMMomentsNotifications_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _predictionTupleJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMMomentsNotifications alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[37] = 0;
    }
  }

  return v4;
}

@end