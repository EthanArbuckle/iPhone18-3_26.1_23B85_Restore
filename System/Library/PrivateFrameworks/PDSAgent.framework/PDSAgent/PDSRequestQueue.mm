@interface PDSRequestQueue
- (BOOL)enqueueRequest:(id)a3;
- (PDSRequestQueue)initWithMessageDelivery:(id)a3 userTracker:(id)a4 queue:(id)a5 pushTokenBlock:(id)a6 entryStoreBlock:(id)a7;
- (PDSRequestQueueDelegate)delegate;
- (id)_deviceInfo;
- (id)_hwVersion;
- (id)_machineID;
- (id)_osVersion;
- (void)_cancelPendingRequests;
- (void)_dequeueIfNeeded;
- (void)_flightRequest:(id)a3;
- (void)_logEntries:(id)a3;
- (void)_logProtoUserPushToken:(id)a3;
- (void)_reAuthAndContinueWithRequest:(id)a3 forUser:(id)a4;
- (void)_removeDeadEntriesForUser:(id)a3 withError:(id *)a4;
@end

@implementation PDSRequestQueue

- (PDSRequestQueue)initWithMessageDelivery:(id)a3 userTracker:(id)a4 queue:(id)a5 pushTokenBlock:(id)a6 entryStoreBlock:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PDSRequestQueue initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:];
    if (v14)
    {
LABEL_3:
      if (v16)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  [PDSRequestQueue initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:];
  if (v16)
  {
LABEL_4:
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_12:
    [PDSRequestQueue initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:];
    if (v17)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_11:
  [PDSRequestQueue initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:];
  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v17)
  {
    goto LABEL_6;
  }

LABEL_13:
  [PDSRequestQueue initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:];
LABEL_6:
  v25.receiver = self;
  v25.super_class = PDSRequestQueue;
  v18 = [(PDSRequestQueue *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_messageDelivery, a3);
    objc_storeStrong(&v19->_userTracker, a4);
    v20 = MEMORY[0x25F8A7090](v16);
    pushTokenBlock = v19->_pushTokenBlock;
    v19->_pushTokenBlock = v20;

    v19->_authRetries = 0;
    objc_storeStrong(&v19->_queue, a5);
    v22 = MEMORY[0x25F8A7090](v17);
    entryStoreBlock = v19->_entryStoreBlock;
    v19->_entryStoreBlock = v22;

    v19->_messageTimeout = 36000;
  }

  return v19;
}

- (BOOL)enqueueRequest:(id)a3
{
  v4 = a3;
  v5 = [(PDSRequestQueue *)self delegate];

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [(PDSRequestQueue *)self inflightRequest];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = [(PDSRequestQueue *)self inflightRequest];
  v9 = [v8 entries];
  v10 = [v4 entries];
  v11 = [v9 isEqualToSet:v10];

  if (v11)
  {
LABEL_4:
    v12 = 0;
  }

  else
  {
LABEL_5:
    [(PDSRequestQueue *)self setQueuedRequest:v4];
    [(PDSRequestQueue *)self _dequeueIfNeeded];
    v12 = 1;
  }

  return v12;
}

- (void)_dequeueIfNeeded
{
  v3 = [(PDSRequestQueue *)self inflightRequest];

  if (!v3)
  {
    v4 = [(PDSRequestQueue *)self queuedRequest];
    if (v4)
    {
      v5 = v4;
      [(PDSRequestQueue *)self setQueuedRequest:0];
      [(PDSRequestQueue *)self _flightRequest:v5];
      v4 = v5;
    }
  }
}

- (id)_deviceInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(PDSRequestQueue *)self _machineID];
  v5 = objc_alloc_init(PDSProtoMapEntry);
  [(PDSProtoMapEntry *)v5 setKey:@"mid"];
  [(PDSProtoMapEntry *)v5 setValue:v4];
  v6 = objc_alloc_init(PDSProtoMapEntry);
  [(PDSProtoMapEntry *)v6 setKey:@"hwv"];
  v7 = [(PDSRequestQueue *)self _hwVersion];
  [(PDSProtoMapEntry *)v6 setValue:v7];

  v8 = objc_alloc_init(PDSProtoMapEntry);
  [(PDSProtoMapEntry *)v8 setKey:@"osv"];
  v9 = [(PDSRequestQueue *)self _osVersion];
  [(PDSProtoMapEntry *)v8 setValue:v9];

  [v3 addObject:v5];
  [v3 addObject:v6];
  [v3 addObject:v8];

  return v3;
}

- (id)_machineID
{
  if (_machineID_onceToken != -1)
  {
    [PDSRequestQueue _machineID];
  }

  v7 = 0;
  v2 = [_machineID_anisetteProvisioningController anisetteDataWithError:&v7];
  v3 = v7;
  v4 = v3;
  if (v3)
  {
    NSLog(&cfstr_Anisettedatawi.isa, v3);
  }

  v5 = [v2 machineID];
  if (![(__CFString *)v5 length])
  {

    v5 = @"Unknown";
  }

  return v5;
}

uint64_t __29__PDSRequestQueue__machineID__block_invoke()
{
  _machineID___AKAnisetteProvisioningControllerClass = MEMORY[0x25F8A6CF0](@"AKAnisetteProvisioningController", @"AuthKit");
  _machineID_anisetteProvisioningController = objc_alloc_init(_machineID___AKAnisetteProvisioningControllerClass);

  return MEMORY[0x2821F96F8]();
}

- (id)_osVersion
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277D19238] sharedInstance];
  v4 = [v3 productName];
  v5 = [MEMORY[0x277D19238] sharedInstance];
  v6 = [v5 productVersion];
  v7 = [MEMORY[0x277D19238] sharedInstance];
  v8 = [v7 productBuildVersion];
  v9 = [v2 stringWithFormat:@"%@, %@, %@", v4, v6, v8];

  return v9;
}

- (id)_hwVersion
{
  v2 = [MEMORY[0x277D19238] sharedInstance];
  v3 = [v2 model];

  if (![(__CFString *)v3 length])
  {

    v3 = @"Unknown";
  }

  return v3;
}

- (void)_flightRequest:(id)a3
{
  v158 = *MEMORY[0x277D85DE8];
  v128 = a3;
  v3 = pds_defaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25DED8000, v3, OS_LOG_TYPE_DEFAULT, "PDSRequestQueue: constructing request to flight", buf, 2u);
  }

  v4 = pds_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v128 entries];
    v6 = [v5 count];
    *buf = 134217984;
    v154 = v6;
    _os_log_impl(&dword_25DED8000, v4, OS_LOG_TYPE_DEFAULT, "%lu total entries", buf, 0xCu);
  }

  v7 = [v128 entries];
  [(PDSRequestQueue *)self _logEntries:v7];

  [(PDSRequestQueue *)self setInflightRequest:v128];
  v124 = objc_alloc_init(PDSProtoBatchRegisterReq);
  v140 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v131 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v126 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = [(PDSRequestQueue *)self delegate];
  v122 = [v8 ttlForRequest:v128];

  v123 = [(PDSRequestQueue *)self _deviceInfo];
  v152 = 0u;
  v150 = 0u;
  v151 = 0u;
  v149 = 0u;
  obj = [v128 entries];
  v139 = [(PDSRegisterMessage *)obj countByEnumeratingWithState:&v149 objects:v157 count:16];
  if (v139)
  {
    v121 = 0;
    v119 = 0;
    v127 = 0;
    v138 = *v150;
    v120 = *MEMORY[0x277CEE9F0];
    v125 = *MEMORY[0x277CEE9E8];
    while (1)
    {
      v9 = 0;
      do
      {
        if (*v150 != v138)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v149 + 1) + 8 * v9);
        v11 = [v10 user];
        v12 = [v11 userID];
        v13 = [v140 objectForKeyedSubscript:v12];

        if (!v13)
        {
          v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v14 = [v10 user];
          v15 = [v14 userID];
          [v140 setObject:v13 forKeyedSubscript:v15];
        }

        v16 = MEMORY[0x277CCABB0];
        v17 = [v10 registration];
        v18 = [v16 numberWithChar:{objc_msgSend(v17, "pushEnvironment")}];
        v19 = [v13 objectForKeyedSubscript:v18];

        if (v19)
        {
LABEL_13:
          if ([v10 state] != 2)
          {
            v20 = objc_alloc_init(PDSProtoTopic);
            v21 = [v10 registration];
            v22 = [v21 topicString];
            if (v22)
            {
              v23 = [v10 registration];
              v24 = [v23 qualifierString];
              v25 = v24 == 0;

              if (!v25)
              {
                v26 = [v10 registration];
                v27 = [v26 topicString];
                [(PDSProtoTopic *)v20 setName:v27];

                v28 = [v10 registration];
                v29 = [v28 qualifierString];
                [(PDSProtoTopic *)v20 setQualifier:v29];

                [(PDSProtoUserPushTokenRegRequest *)v19 addTopic:v20];
                ++v127;
                goto LABEL_32;
              }
            }

            else
            {
            }

            v43 = pds_defaultLog();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_25DED8000, v43, OS_LOG_TYPE_DEFAULT, "Missing required info for entry! Not including entry in request", buf, 2u);
            }

LABEL_32:
          }

          goto LABEL_34;
        }

        v30 = [v10 user];
        v31 = [v30 userID];
        v32 = [v131 objectForKeyedSubscript:v31];
        v33 = MEMORY[0x277CCABB0];
        v34 = [v10 registration];
        v35 = [v33 numberWithChar:{objc_msgSend(v34, "pushEnvironment")}];
        LODWORD(v33) = [v32 containsObject:v35];

        if (v33)
        {
          v20 = pds_defaultLog();
          if (os_log_type_enabled(&v20->super.super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25DED8000, &v20->super.super, OS_LOG_TYPE_DEFAULT, "The user/env for this entry has been omitted from the request. Skipping entry", buf, 2u);
          }

          v19 = 0;
          goto LABEL_32;
        }

        v36 = [(PDSRequestQueue *)self userTracker];
        v148 = 0;
        v37 = [v10 user];
        v147 = 0;
        v134 = [v36 tokenAndIdentifier:&v148 forUser:v37 withError:&v147];
        v136 = v148;
        v137 = v147;

        if (!v137 && v134 && v136)
        {
          v38 = [v10 user];
          [v126 setObject:v38 forKeyedSubscript:v136];

          v135 = objc_alloc_init(PDSProtoGSTokenAuth);
          [(PDSProtoGSTokenAuth *)v135 setGsAuthToken:v134];
          v39 = objc_alloc_init(PDSProtoUserAuth);
          [(PDSProtoUserAuth *)v39 setUserauthOneof:1];
          [(PDSProtoUserAuth *)v39 setGsAuthToken:v135];
          v40 = [v10 registration];
          v41 = [v40 pushEnvironment];

          v42 = v125;
          if (v41 == 1)
          {
            goto LABEL_27;
          }

          if (v41)
          {
            v129 = 0;
          }

          else
          {
            v42 = v120;
LABEL_27:
            v129 = v42;
          }

          v66 = [(PDSRequestQueue *)self pushTokenBlock];
          v130 = (v66)[2](v66, v129);

          v67 = [v130 __imHexString];
          v68 = [v67 length] == 0;

          if (v68)
          {
            v78 = pds_defaultLog();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v154 = v129;
              _os_log_impl(&dword_25DED8000, v78, OS_LOG_TYPE_DEFAULT, "Missing push token for environment %@! Omitting from request", buf, 0xCu);
            }

            v79 = [v10 user];
            v80 = [v79 userID];
            v69 = [v131 objectForKeyedSubscript:v80];

            if (!v69)
            {
              v69 = objc_alloc_init(MEMORY[0x277CBEB58]);
              v81 = [v10 user];
              v82 = [v81 userID];
              [v131 setObject:v69 forKeyedSubscript:v82];
            }

            v83 = MEMORY[0x277CCABB0];
            v74 = [v10 registration];
            v84 = [v83 numberWithChar:{objc_msgSend(v74, "pushEnvironment")}];
            [(PDSProtoUserPushToken *)v69 addObject:v84];

            v19 = 0;
            v121 = 1;
            v58 = 3;
          }

          else
          {
            v69 = objc_alloc_init(PDSProtoUserPushToken);
            [(PDSProtoUserPushToken *)v69 setUserId:v136];
            v70 = [v130 __imHexString];
            [(PDSProtoUserPushToken *)v69 setPushToken:v70];

            [(PDSProtoUserPushToken *)v69 setUserAuth:v39];
            v71 = pds_defaultLog();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_25DED8000, v71, OS_LOG_TYPE_DEFAULT, "Adding UserPushToken to request:", buf, 2u);
            }

            [(PDSRequestQueue *)self _logProtoUserPushToken:v69];
            v19 = objc_alloc_init(PDSProtoUserPushTokenRegRequest);
            [(PDSProtoUserPushTokenRegRequest *)v19 setUserPushToken:v69];
            [(PDSProtoUserPushTokenRegRequest *)v19 setDeviceInfos:v123];
            [(PDSProtoUserPushTokenRegRequest *)v19 setTtl:v122];
            v72 = MEMORY[0x277CCABB0];
            v73 = [v10 registration];
            v74 = [v72 numberWithChar:{objc_msgSend(v73, "pushEnvironment")}];

            v75 = [v10 user];
            v76 = [v75 userID];
            v77 = [v140 objectForKeyedSubscript:v76];
            [v77 setObject:v19 forKeyedSubscript:v74];

            [(PDSProtoBatchRegisterReq *)v124 addUserPushTokenRegRequests:v19];
            v58 = 0;
          }

          goto LABEL_60;
        }

        v44 = pds_defaultLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v154 = v137;
          v155 = 2112;
          v156 = v136;
          _os_log_impl(&dword_25DED8000, v44, OS_LOG_TYPE_DEFAULT, "Issue obtaining token. Error: %@ -- DSID: %@", buf, 0x16u);
        }

        v45 = [v137 domain];
        v46 = v45;
        if (v45 != *MEMORY[0x277D37B18])
        {

LABEL_48:
          v59 = [v10 user];
          [(PDSRequestQueue *)self _reAuthAndContinueWithRequest:v128 forUser:v59];

          v60 = objc_alloc(MEMORY[0x277D18A50]);
          v61 = MEMORY[0x277CCABB0];
          v62 = [v128 requestInfo];
          v63 = [v61 numberWithUnsignedInteger:{objc_msgSend(v62, "regReason")}];
          v64 = [v128 requestInfo];
          v65 = [v64 heartbeatDate];
          v135 = [v60 initWithFailureReason:@"Auth issue - potentially recoverable" registrationReason:v63 heartbeatDate:v65];

          v39 = [MEMORY[0x277D189A0] defaultLogger];
          [(PDSProtoUserAuth *)v39 logMetric:v135];
          v19 = 0;
          v58 = 1;
          goto LABEL_60;
        }

        v47 = [v137 code] == -102;

        if (!v47)
        {
          goto LABEL_48;
        }

        v48 = pds_defaultLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25DED8000, v48, OS_LOG_TYPE_DEFAULT, "User is non-existent.  Skipping, removing dead entries for user, and continuing with request", buf, 2u);
        }

        v49 = [v10 user];
        v50 = [v49 userID];
        v135 = [v131 objectForKeyedSubscript:v50];

        if (!v135)
        {
          v135 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v51 = [v10 user];
          v52 = [v51 userID];
          [v131 setObject:v135 forKeyedSubscript:v52];
        }

        v53 = MEMORY[0x277CCABB0];
        v54 = [v10 registration];
        v55 = [v53 numberWithChar:{objc_msgSend(v54, "pushEnvironment")}];
        [(PDSProtoGSTokenAuth *)v135 addObject:v55];

        v56 = [v10 user];
        v146 = 0;
        [(PDSRequestQueue *)self _removeDeadEntriesForUser:v56 withError:&v146];
        v39 = v146;

        v57 = pds_defaultLog();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v154 = v39;
          _os_log_impl(&dword_25DED8000, v57, OS_LOG_TYPE_DEFAULT, "Removed entries for user with error: %@", buf, 0xCu);
        }

        v19 = 0;
        v119 = 1;
        v58 = 3;
LABEL_60:

        if (!v58)
        {
          goto LABEL_13;
        }

        if (v58 != 3)
        {
          goto LABEL_88;
        }

LABEL_34:
        ++v9;
      }

      while (v139 != v9);
      v85 = [(PDSRegisterMessage *)obj countByEnumeratingWithState:&v149 objects:v157 count:16];
      v139 = v85;
      if (!v85)
      {
        goto LABEL_66;
      }
    }
  }

  v121 = 0;
  v119 = 0;
  v127 = 0;
LABEL_66:

  v86 = pds_defaultLog();
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v154) = v127;
    _os_log_impl(&dword_25DED8000, v86, OS_LOG_TYPE_DEFAULT, "Total active entries to flight: %d", buf, 8u);
  }

  v87 = [(PDSProtoBatchRegisterReq *)v124 userPushTokenRegRequests];
  v88 = [v87 count] == 0;

  if (v88)
  {
    v99 = pds_defaultLog();
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v99, OS_LOG_TYPE_DEFAULT, "RegRequest is empty! Aborting", buf, 2u);
    }

    [(PDSRequestQueue *)self setInflightRequest:0];
    v100 = @"Missing Token";
    v101 = @"Missing user";
    if (v121)
    {
      v101 = @"Missing Token & User";
    }

    else
    {
      v100 = 0;
    }

    if (v119)
    {
      v102 = v101;
    }

    else
    {
      v102 = v100;
    }

    v103 = objc_alloc(MEMORY[0x277D18A50]);
    v104 = MEMORY[0x277CCABB0];
    v105 = [v128 requestInfo];
    v106 = [v104 numberWithUnsignedInteger:{objc_msgSend(v105, "regReason")}];
    v107 = [v128 requestInfo];
    v108 = [v107 heartbeatDate];
    obj = [v103 initWithFailureReason:v102 registrationReason:v106 heartbeatDate:v108];

    v95 = [MEMORY[0x277D189A0] defaultLogger];
    [v95 logMetric:obj];
  }

  else
  {
    obj = objc_alloc_init(PDSRegisterMessage);
    [(PDSProtoBatchRegisterReq *)v124 setRequestTtl:v122];
    v89 = pds_defaultLog();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v154 = v122;
      _os_log_impl(&dword_25DED8000, v89, OS_LOG_TYPE_DEFAULT, "Using request ttl: %ld", buf, 0xCu);
    }

    [(PDSRegisterMessage *)obj setProtoRequest:v124];
    v90 = [v128 requestInfo];
    -[PDSRegisterMessage setRegReason:](obj, "setRegReason:", [v90 regReason]);

    v91 = pds_defaultLog();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v92 = [v128 requestInfo];
      v93 = [v92 regReason];
      *buf = 134217984;
      v154 = v93;
      _os_log_impl(&dword_25DED8000, v91, OS_LOG_TYPE_DEFAULT, "Setting registration reason: %ld", buf, 0xCu);
    }

    [(IDSBaseMessage *)obj setTimeout:self->_messageTimeout];
    v94 = [(PDSRequestQueue *)self pushTokenBlock];
    v95 = v94[2](v94, *MEMORY[0x277CEE9F0]);

    v96 = [v95 __imHexString];
    v97 = [v96 length] == 0;

    if (v97)
    {
      v109 = pds_defaultLog();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25DED8000, v109, OS_LOG_TYPE_DEFAULT, "Missing push token! Failing request", buf, 2u);
      }

      v110 = objc_alloc(MEMORY[0x277D18A50]);
      v111 = MEMORY[0x277CCABB0];
      v112 = [v128 requestInfo];
      v113 = [v111 numberWithUnsignedInteger:{objc_msgSend(v112, "regReason")}];
      v114 = [v128 requestInfo];
      v115 = [v114 heartbeatDate];
      v116 = [v110 initWithFailureReason:@"Could not fetch production push token" registrationReason:v113 heartbeatDate:v115];

      v117 = [MEMORY[0x277D189A0] defaultLogger];
      [v117 logMetric:v116];

      [(PDSRequestQueue *)self setInflightRequest:0];
    }

    else
    {
      [(FTIDSMessage *)obj setPushToken:v95];
      IDSAssignPushIdentityToMessage();
      objc_initWeak(buf, self);
      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = __34__PDSRequestQueue__flightRequest___block_invoke;
      v141[3] = &unk_2799F84B0;
      objc_copyWeak(&v145, buf);
      v142 = v126;
      v143 = self;
      v144 = v128;
      [(IDSBaseMessage *)obj setCompletionBlock:v141];
      [(PDSRequestQueue *)self _cancelPendingRequests];
      v98 = [(PDSRequestQueue *)self messageDelivery];
      [v98 sendMessage:obj];

      objc_destroyWeak(&v145);
      objc_destroyWeak(buf);
    }
  }

LABEL_88:
  v118 = *MEMORY[0x277D85DE8];
}

void __34__PDSRequestQueue__flightRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__PDSRequestQueue__flightRequest___block_invoke_2;
    block[3] = &unk_2799F8488;
    block[4] = v5;
    v11 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = v7;
    v13 = v8;
    v14 = v9;
    dispatch_async(v6, block);
  }
}

void __34__PDSRequestQueue__flightRequest___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setInflightRequest:0];
  [*(a1 + 32) _dequeueIfNeeded];
  v2 = [*(a1 + 40) protoResponse];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = v2;
  v4 = [v2 userPushTokenRegResponses];
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v10 = [(PDSResponse *)v9 userPushToken];
        v11 = [v10 userId];

        if (v11)
        {
          v12 = [*(a1 + 48) objectForKeyedSubscript:v11];
          if (v12)
          {
            v13 = [MEMORY[0x277CCABB0] numberWithInt:{-[PDSResponse status](v9, "status")}];
            [v3 setObject:v13 forKeyedSubscript:v12];

            if ([*(a1 + 56) _isAuthIssue:{-[PDSResponse status](v9, "status")}] && (objc_msgSend(v27, "containsObject:", v12) & 1) == 0)
            {
              v14 = pds_defaultLog();
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                v15 = [(PDSResponse *)v9 status];
                *buf = 67109120;
                LODWORD(v33) = v15;
                _os_log_impl(&dword_25DED8000, v14, OS_LOG_TYPE_DEFAULT, "Auth issue: %i", buf, 8u);
              }

              [*(a1 + 32) _reAuthAndContinueWithRequest:*(a1 + 64) forUser:v12];
              [v27 addObject:v12];
            }
          }

          else
          {
            v16 = pds_defaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v33 = v11;
              _os_log_impl(&dword_25DED8000, v16, OS_LOG_TYPE_DEFAULT, "A matching user for: %@ not found", buf, 0xCu);
            }
          }
        }

        else
        {
          v12 = pds_defaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v33 = v9;
            _os_log_impl(&dword_25DED8000, v12, OS_LOG_TYPE_DEFAULT, "alDSID not included in response: %@", buf, 0xCu);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v17 = [*(a1 + 32) delegate];
  v18 = [v17 ttlForRequest:*(a1 + 64)];

  if ([v26 hasResponseTtl])
  {
    v18 = [v26 responseTtl];
  }

  v19 = [PDSResponse alloc];
  v20 = [v26 status];
  v21 = [v3 copy];
  v22 = [(PDSResponse *)v19 initWithStatus:v20 statusByUser:v21 ttl:v18];

  v23 = pds_oversizedLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v22;
    _os_log_impl(&dword_25DED8000, v23, OS_LOG_TYPE_DEFAULT, "PDSRequestQueue: response received: %@", buf, 0xCu);
  }

  v24 = [*(a1 + 32) delegate];
  [v24 requestQueue:*(a1 + 32) processedRequest:*(a1 + 64) withResponse:v22];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_reAuthAndContinueWithRequest:(id)a3 forUser:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = pds_defaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v25 = [(PDSRequestQueue *)self authRetries];
    _os_log_impl(&dword_25DED8000, v8, OS_LOG_TYPE_DEFAULT, "Attempting Reauth - Current reauth attempts: %ld", buf, 0xCu);
  }

  v9 = [(PDSRequestQueue *)self lastReauthAttempt];

  if (v9)
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = [(PDSRequestQueue *)self lastReauthAttempt];
    [v10 timeIntervalSinceDate:v11];
    v13 = v12;

    if (v13 > 43200.0)
    {
      [(PDSRequestQueue *)self setAuthRetries:0];
    }
  }

  if ([(PDSRequestQueue *)self authRetries]> 2)
  {
    v18 = pds_defaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v18, OS_LOG_TYPE_DEFAULT, "No reauth attempts remaining", buf, 2u);
    }
  }

  else
  {
    [(PDSRequestQueue *)self setAuthRetries:[(PDSRequestQueue *)self authRetries]+ 1];
    [(PDSRequestQueue *)self setInflightRequest:v6];
    v14 = [MEMORY[0x277CBEAA8] now];
    [(PDSRequestQueue *)self setLastReauthAttempt:v14];

    v15 = pds_defaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25DED8000, v15, OS_LOG_TYPE_DEFAULT, "We have retries left, attempting reauth", buf, 2u);
    }

    objc_initWeak(buf, self);
    v16 = dispatch_time(0, 10000000000 * [(PDSRequestQueue *)self authRetries]- 10000000000);
    queue = self->_queue;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke;
    v20[3] = &unk_2799F8528;
    v20[4] = self;
    v21 = v7;
    objc_copyWeak(&v23, buf);
    v22 = v6;
    dispatch_after(v16, queue, v20);

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userTracker];
  v3 = *(a1 + 40);
  v12 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_2;
  v9[3] = &unk_2799F8500;
  objc_copyWeak(&v11, (a1 + 56));
  v10 = *(a1 + 48);
  [v2 refreshCredentialsForUser:v3 withError:&v12 completion:v9];
  v4 = v12;

  if (v4)
  {
    v5 = pds_defaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_cold_1((a1 + 40), v4, v5);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained setInflightRequest:0];
  }

  else
  {
    WeakRetained = pds_defaultLog();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_25DED8000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Kicked off refresh for user %@", buf, 0xCu);
    }
  }

  objc_destroyWeak(&v11);
  v8 = *MEMORY[0x277D85DE8];
}

void __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_3;
    block[3] = &unk_2799F84D8;
    block[4] = v6;
    v9 = v4;
    v10 = *(a1 + 32);
    dispatch_async(v7, block);
  }
}

uint64_t __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setInflightRequest:0];
  v2 = pds_defaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25DED8000, v2, OS_LOG_TYPE_DEFAULT, "Credential refresh completed: error: %@", &v6, 0xCu);
  }

  result = [*(a1 + 32) enqueueRequest:*(a1 + 48)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_cancelPendingRequests
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(PDSRequestQueue *)self messageDelivery];
  v4 = [v3 hasQueuedItems];

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(PDSRequestQueue *)self messageDelivery];
    v6 = [v5 queuedMessages];

    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [(PDSRequestQueue *)self messageDelivery];
            [v12 cancelMessage:v11];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_logEntries:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = a3;
  v20 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v20)
  {
    v3 = 0;
    v19 = *v23;
    v4 = @"\n";
    do
    {
      for (i = 0; i != v20; ++i)
      {
        v21 = v3;
        v6 = v4;
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [v7 registration];
        v9 = [v8 qualifierString];
        v10 = [v7 registration];
        v11 = [v10 topicString];
        [v7 state];
        v12 = PDSStringForEntryState();
        v13 = [v7 user];
        v14 = [v13 userID];
        v4 = [(__CFString *)v6 stringByAppendingFormat:@"\t PDSEntry: Qual:%@ Topic:%@ State:%@ User:%@\n", v9, v11, v12, v14];

        if (v21 < 5)
        {
          v3 = v21 + 1;
        }

        else
        {
          v15 = pds_oversizedLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v27 = v4;
            _os_log_impl(&dword_25DED8000, v15, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
          }

          v3 = 0;
          v4 = @"\n";
        }
      }

      v20 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v20);
    if (v3 >= 1)
    {
      v16 = pds_oversizedLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v4;
        _os_log_impl(&dword_25DED8000, v16, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = @"\n";
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_logProtoUserPushToken:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = pds_defaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 userId];
    v6 = [v3 pushToken];
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_25DED8000, v4, OS_LOG_TYPE_DEFAULT, "PDSUserPushTokenRequest: UserID:%@ PushToken:%@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_removeDeadEntriesForUser:(id)a3 withError:(id *)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = pds_defaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_25DED8000, v7, OS_LOG_TYPE_DEFAULT, "Removing all entries with state [remove] for user: %@", &v12, 0xCu);
  }

  v8 = [(PDSRequestQueue *)self entryStoreBlock];
  v9 = v8[2]();

  if (v9)
  {
    [v9 deleteEntriesForUser:v6 withState:2 withError:a4];
  }

  else
  {
    v10 = pds_defaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_25DED8000, v10, OS_LOG_TYPE_DEFAULT, "EntryStore is nil! aborting", &v12, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (PDSRequestQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"messageDelivery" object:? file:? lineNumber:? description:?];
}

- (void)initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"userTracker" object:? file:? lineNumber:? description:?];
}

- (void)initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"pushTokenBlock" object:? file:? lineNumber:? description:?];
}

- (void)initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:.cold.4()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"queue" object:? file:? lineNumber:? description:?];
}

- (void)initWithMessageDelivery:userTracker:queue:pushTokenBlock:entryStoreBlock:.cold.5()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"entryStoreBlock" object:? file:? lineNumber:? description:?];
}

void __57__PDSRequestQueue__reAuthAndContinueWithRequest_forUser___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_25DED8000, log, OS_LOG_TYPE_ERROR, "Credential refresh failed for user: %@ error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end