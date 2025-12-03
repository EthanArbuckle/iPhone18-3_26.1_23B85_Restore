@interface MSPSenderMessageStrategy
- (BOOL)setState:(id)state forEvent:(unint64_t)event;
- (MSPSenderMessageStrategy)initWithDelegate:(id)delegate capabilityType:(unint64_t)type serviceName:(id)name;
- (MSPSenderMessageStrategyDelegate)delegate;
- (void)addParticipants:(id)participants;
- (void)sendMessageIfNeeded;
@end

@implementation MSPSenderMessageStrategy

- (MSPSenderMessageStrategy)initWithDelegate:(id)delegate capabilityType:(unint64_t)type serviceName:(id)name
{
  delegateCopy = delegate;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = MSPSenderMessageStrategy;
  v10 = [(MSPSenderStrategy *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11->_type = type;
    v12 = [nameCopy copy];
    serviceName = v11->_serviceName;
    v11->_serviceName = v12;
  }

  return v11;
}

- (BOOL)setState:(id)state forEvent:(unint64_t)event
{
  v7.receiver = self;
  v7.super_class = MSPSenderMessageStrategy;
  v5 = [(MSPSenderStrategy *)&v7 setState:state forEvent:event];
  if (v5)
  {
    [(MSPSenderMessageStrategy *)self sendMessageIfNeeded];
  }

  return v5;
}

- (void)addParticipants:(id)participants
{
  v4.receiver = self;
  v4.super_class = MSPSenderMessageStrategy;
  [(MSPSenderStrategy *)&v4 addParticipants:participants];
  [(MSPSenderMessageStrategy *)self sendMessageIfNeeded];
}

- (void)sendMessageIfNeeded
{
  selfCopy = self;
  v99 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->super._participants count])
  {
    v3 = selfCopy->super._state;
    v4 = v3;
    if (v3)
    {
      etaInfo = [(GEOSharedNavState *)v3 etaInfo];
      if ([etaInfo hasEtaTimestamp])
      {
        destinationWaypointMapItem = [(GEOSharedNavState *)v4 destinationWaypointMapItem];

        if (destinationWaypointMapItem)
        {
          v7 = [(GEOSharedNavState *)v4 copy];

          delegate = [(MSPSenderMessageStrategy *)selfCopy delegate];
          v9 = [(NSMutableSet *)selfCopy->super._participants copy];
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          obj = v9;
          v80 = [obj countByEnumeratingWithState:&v82 objects:v86 count:16];
          if (!v80)
          {
            goto LABEL_53;
          }

          v79 = *v83;
          v77 = selfCopy;
          v78 = v7;
          log = delegate;
          while (1)
          {
            for (i = 0; i != v80; ++i)
            {
              if (*v83 != v79)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v82 + 1) + 8 * i);
              v12 = [delegate rulesForParticipant:v11];
              etaInfo2 = [v7 etaInfo];
              [etaInfo2 etaTimestamp];
              v15 = v14;
              [v7 updatedTimestamp];
              [v12 didReceiveUpdateWithETA:v15 lastUpdated:v16];

              v17 = [v12 currentlyNecessaryNotificationTypeForState:v7];
              v18 = MSPGetSharedTripLog();
              v19 = v18;
              if (!v17)
              {
                if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_51;
                }

                v29 = MEMORY[0x277CCACA8];
                v30 = selfCopy;
                v31 = [v29 stringWithFormat:@"%@<%p>", objc_opt_class(), v30];

                type = v30->_type;
                v33 = @"Unknown";
                if (type <= 4)
                {
                  v33 = off_2798660A8[type];
                }

                serviceName = v30->_serviceName;
                *buf = 138544131;
                v88 = v31;
                v89 = 2114;
                v90 = v33;
                v91 = 2114;
                v92 = serviceName;
                v93 = 2113;
                v94 = v11;
                v35 = v19;
                v36 = OS_LOG_TYPE_INFO;
                v37 = "[%{public}@] %{public}@%{public}@: no necessary notification for %{private}@";
LABEL_42:
                _os_log_impl(&dword_25813A000, v35, v36, v37, buf, 0x2Au);

                goto LABEL_51;
              }

              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v20 = MEMORY[0x277CCACA8];
                v21 = selfCopy;
                v22 = [v20 stringWithFormat:@"%@<%p>", objc_opt_class(), v21];

                v23 = v21->_type;
                v24 = @"Unknown";
                if (v23 <= 4)
                {
                  v24 = off_2798660A8[v23];
                }

                v25 = v21->_serviceName;
                v26 = v22;
                v27 = MSPSharedTripNotificationTypeAsString(v17);

                *buf = 138544387;
                v88 = v22;
                v89 = 2114;
                v90 = v24;
                v91 = 2114;
                v92 = v25;
                v93 = 2114;
                v94 = v27;
                v95 = 2113;
                v96 = v11;
                _os_log_impl(&dword_25813A000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@/%{public}@: sendMessageIfNeeded will send %{public}@ to participant %{private}@", buf, 0x34u);

                delegate = log;
                selfCopy = v77;
                v7 = v78;
              }

              if (v17 > 3)
              {
                switch(v17)
                {
                  case 4:
                    intermediateArrivalMessage = [v7 intermediateArrivalMessage];
                    break;
                  case 5:
                    intermediateArrivalMessage = [v7 waypointResumeMessage];
                    break;
                  case 6:
                    intermediateArrivalMessage = [v7 arrivalMessage];
                    break;
                  default:
                    goto LABEL_38;
                }
              }

              else
              {
                switch(v17)
                {
                  case 1:
                    intermediateArrivalMessage = [v7 initialMessage];
                    break;
                  case 2:
                    intermediateArrivalMessage = [v7 updateMessage];
                    break;
                  case 3:
                    intermediateArrivalMessage = [v7 chargingStopMessage];
                    break;
                  default:
                    goto LABEL_38;
                }
              }

              v19 = intermediateArrivalMessage;
              if (!intermediateArrivalMessage)
              {
LABEL_38:
                v19 = MSPGetSharedTripLog();
                if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_51;
                }

                v45 = MEMORY[0x277CCACA8];
                v46 = selfCopy;
                v31 = [v45 stringWithFormat:@"%@<%p>", objc_opt_class(), v46];

                v47 = v46->_type;
                v48 = @"Unknown";
                if (v47 <= 4)
                {
                  v48 = off_2798660A8[v47];
                }

                v49 = v46->_serviceName;
                *buf = 138544131;
                v88 = v31;
                v89 = 2114;
                v90 = v48;
                v91 = 2114;
                v92 = v49;
                v93 = 2113;
                v94 = v11;
                v35 = v19;
                v36 = OS_LOG_TYPE_FAULT;
                v37 = "[%{public}@] %{public}@/%{public}@: no message body generated but we expected to send something to %{private}@";
                goto LABEL_42;
              }

              if (selfCopy->super._loggingOnly)
              {
                v38 = MSPGetSharedTripVirtualReceiverLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  v39 = MEMORY[0x277CCACA8];
                  v40 = selfCopy;
                  v41 = [v39 stringWithFormat:@"%@<%p>", objc_opt_class(), v40];

                  v42 = v40->_type;
                  v43 = @"Unknown";
                  if (v42 <= 4)
                  {
                    v43 = off_2798660A8[v42];
                  }

                  v44 = v40->_serviceName;
                  *buf = 138544386;
                  v88 = v41;
                  v89 = 2114;
                  v90 = v43;
                  v91 = 2114;
                  v92 = v44;
                  v93 = 2114;
                  v94 = v11;
                  v95 = 2114;
                  v96 = v19;
                  _os_log_impl(&dword_25813A000, v38, OS_LOG_TYPE_INFO, "[%{public}@] %{public}@/%{public}@: TO %{public}@: %{public}@", buf, 0x34u);
                }

                goto LABEL_45;
              }

              v38 = IDSCopyRawAddressForDestination();
              v50 = selfCopy->_serviceName;
              if (IMSPISendMessageWithAttachments())
              {
                selfCopy = v77;
LABEL_45:

                v7 = v78;
                [v12 didPostNotificationType:v17 forState:v78];
                [delegate touchedRules];
                goto LABEL_51;
              }

              v51 = MSPGetSharedTripLog();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                v52 = MEMORY[0x277CCACA8];
                v53 = v77;
                v54 = [v52 stringWithFormat:@"%@<%p>", objc_opt_class(), v53];

                v55 = v53->_type;
                v56 = @"Unknown";
                if (v55 <= 4)
                {
                  v56 = off_2798660A8[v55];
                }

                v57 = v77->_serviceName;
                *buf = 138543874;
                v88 = v54;
                v89 = 2114;
                v90 = v56;
                v91 = 2114;
                v92 = v57;
                _os_log_impl(&dword_25813A000, v51, OS_LOG_TYPE_ERROR, "[%{public}@] %{public}@/%{public}@: IMSPISendMessageWithAttachments returned NO", buf, 0x20u);
              }

              selfCopy = v77;
              v7 = v78;
LABEL_51:
            }

            v80 = [obj countByEnumeratingWithState:&v82 objects:v86 count:16];
            if (!v80)
            {
LABEL_53:

              v4 = v7;
              goto LABEL_69;
            }
          }
        }
      }

      else
      {
      }
    }

    delegate = MSPGetSharedTripLog();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      v58 = MEMORY[0x277CCACA8];
      v59 = selfCopy;
      v60 = [v58 stringWithFormat:@"%@<%p>", objc_opt_class(), v59];

      v61 = v59->_type;
      loga = delegate;
      if (v61 > 4)
      {
        v62 = @"Unknown";
      }

      else
      {
        v62 = off_2798660A8[v61];
      }

      v81 = v62;
      v63 = v59->_serviceName;
      if (v4)
      {
        v64 = @"YES";
      }

      else
      {
        v64 = @"NO";
      }

      v65 = v64;
      v66 = v60;
      etaInfo3 = [(GEOSharedNavState *)v4 etaInfo];
      if ([etaInfo3 hasEtaTimestamp])
      {
        v68 = @"YES";
      }

      else
      {
        v68 = @"NO";
      }

      v69 = v68;
      destinationWaypointMapItem2 = [(GEOSharedNavState *)v4 destinationWaypointMapItem];

      if (destinationWaypointMapItem2)
      {
        v71 = @"YES";
      }

      else
      {
        v71 = @"NO";
      }

      v72 = v71;
      *buf = 138544642;
      v88 = v60;
      v89 = 2114;
      v90 = v81;
      v91 = 2114;
      v92 = v63;
      v93 = 2114;
      v94 = v65;
      v95 = 2114;
      v96 = v69;
      v97 = 2114;
      v98 = v72;
      _os_log_impl(&dword_25813A000, loga, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@/%{public}@: sendMessageIfNeeded called without requisite state (state: %{public}@, etaInfo: %{public}@, destinationInfo: %{public}@)", buf, 0x3Eu);

      delegate = loga;
    }

LABEL_69:
  }

  v73 = *MEMORY[0x277D85DE8];
}

- (MSPSenderMessageStrategyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end