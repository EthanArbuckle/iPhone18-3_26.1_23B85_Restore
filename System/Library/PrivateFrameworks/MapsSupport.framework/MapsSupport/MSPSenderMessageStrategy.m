@interface MSPSenderMessageStrategy
- (BOOL)setState:(id)a3 forEvent:(unint64_t)a4;
- (MSPSenderMessageStrategy)initWithDelegate:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5;
- (MSPSenderMessageStrategyDelegate)delegate;
- (void)addParticipants:(id)a3;
- (void)sendMessageIfNeeded;
@end

@implementation MSPSenderMessageStrategy

- (MSPSenderMessageStrategy)initWithDelegate:(id)a3 capabilityType:(unint64_t)a4 serviceName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = MSPSenderMessageStrategy;
  v10 = [(MSPSenderStrategy *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_delegate, v8);
    v11->_type = a4;
    v12 = [v9 copy];
    serviceName = v11->_serviceName;
    v11->_serviceName = v12;
  }

  return v11;
}

- (BOOL)setState:(id)a3 forEvent:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MSPSenderMessageStrategy;
  v5 = [(MSPSenderStrategy *)&v7 setState:a3 forEvent:a4];
  if (v5)
  {
    [(MSPSenderMessageStrategy *)self sendMessageIfNeeded];
  }

  return v5;
}

- (void)addParticipants:(id)a3
{
  v4.receiver = self;
  v4.super_class = MSPSenderMessageStrategy;
  [(MSPSenderStrategy *)&v4 addParticipants:a3];
  [(MSPSenderMessageStrategy *)self sendMessageIfNeeded];
}

- (void)sendMessageIfNeeded
{
  v2 = self;
  v99 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->super._participants count])
  {
    v3 = v2->super._state;
    v4 = v3;
    if (v3)
    {
      v5 = [(GEOSharedNavState *)v3 etaInfo];
      if ([v5 hasEtaTimestamp])
      {
        v6 = [(GEOSharedNavState *)v4 destinationWaypointMapItem];

        if (v6)
        {
          v7 = [(GEOSharedNavState *)v4 copy];

          v8 = [(MSPSenderMessageStrategy *)v2 delegate];
          v9 = [(NSMutableSet *)v2->super._participants copy];
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
          v77 = v2;
          v78 = v7;
          log = v8;
          while (1)
          {
            for (i = 0; i != v80; ++i)
            {
              if (*v83 != v79)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v82 + 1) + 8 * i);
              v12 = [v8 rulesForParticipant:v11];
              v13 = [v7 etaInfo];
              [v13 etaTimestamp];
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
                v30 = v2;
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
                v21 = v2;
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

                v8 = log;
                v2 = v77;
                v7 = v78;
              }

              if (v17 > 3)
              {
                switch(v17)
                {
                  case 4:
                    v28 = [v7 intermediateArrivalMessage];
                    break;
                  case 5:
                    v28 = [v7 waypointResumeMessage];
                    break;
                  case 6:
                    v28 = [v7 arrivalMessage];
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
                    v28 = [v7 initialMessage];
                    break;
                  case 2:
                    v28 = [v7 updateMessage];
                    break;
                  case 3:
                    v28 = [v7 chargingStopMessage];
                    break;
                  default:
                    goto LABEL_38;
                }
              }

              v19 = v28;
              if (!v28)
              {
LABEL_38:
                v19 = MSPGetSharedTripLog();
                if (!os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_51;
                }

                v45 = MEMORY[0x277CCACA8];
                v46 = v2;
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

              if (v2->super._loggingOnly)
              {
                v38 = MSPGetSharedTripVirtualReceiverLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                {
                  v39 = MEMORY[0x277CCACA8];
                  v40 = v2;
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
              v50 = v2->_serviceName;
              if (IMSPISendMessageWithAttachments())
              {
                v2 = v77;
LABEL_45:

                v7 = v78;
                [v12 didPostNotificationType:v17 forState:v78];
                [v8 touchedRules];
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

              v2 = v77;
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

    v8 = MSPGetSharedTripLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v58 = MEMORY[0x277CCACA8];
      v59 = v2;
      v60 = [v58 stringWithFormat:@"%@<%p>", objc_opt_class(), v59];

      v61 = v59->_type;
      loga = v8;
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
      v67 = [(GEOSharedNavState *)v4 etaInfo];
      if ([v67 hasEtaTimestamp])
      {
        v68 = @"YES";
      }

      else
      {
        v68 = @"NO";
      }

      v69 = v68;
      v70 = [(GEOSharedNavState *)v4 destinationWaypointMapItem];

      if (v70)
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

      v8 = loga;
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