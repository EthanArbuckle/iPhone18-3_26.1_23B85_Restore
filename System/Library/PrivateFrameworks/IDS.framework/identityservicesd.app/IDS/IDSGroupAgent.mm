@interface IDSGroupAgent
+ (id)sharedInstance;
- (BOOL)isAirDropSession:(id)a3;
- (BOOL)isAppleEndpointForExistingSession:(id)a3;
- (IDSGroupAgent)initWithQueue:(id)a3 isSessionControlEnabled:(BOOL)a4;
- (id)generateSessionIDFromMemberArray:(id)a3;
- (id)resolveAppleEndpoint:(id)a3;
- (void)_injectPortTopicMappingForSession:(id)a3 topic:(id)a4 portSignature:(id)a5;
- (void)createNewSessionForClientRequest:(id)a3 isClient:(BOOL)a4 registrationCompletionBlock:(id)a5;
- (void)registerAgent;
- (void)registerEntitledAgent;
- (void)resolveAirDropProEndpointWithParams:(id)a3 options:(id)a4 agentResolveResponse:(id)a5;
- (void)unregisterAgent;
- (void)unregisterEntitledAgent;
@end

@implementation IDSGroupAgent

+ (id)sharedInstance
{
  if (qword_100CBF610[0] != -1)
  {
    sub_100935684();
  }

  v3 = qword_100CBF608;

  return v3;
}

- (IDSGroupAgent)initWithQueue:(id)a3 isSessionControlEnabled:(BOOL)a4
{
  v6 = a3;
  v24.receiver = self;
  v24.super_class = IDSGroupAgent;
  v7 = [(IDSGroupAgent *)&v24 init];
  v8 = v7;
  if (v7)
  {
    v7->_queue = v6;
    v9 = objc_alloc_init(NSMutableDictionary);
    endpointToResolvedParameters = v8->_endpointToResolvedParameters;
    v8->_endpointToResolvedParameters = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    endpointToClientInfo = v8->_endpointToClientInfo;
    v8->_endpointToClientInfo = v11;

    v13 = +[IDSGroupSessionMultiplexer sharedInstance];
    multiplexer = v8->_multiplexer;
    v8->_multiplexer = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    portCollisionDetection = v8->_portCollisionDetection;
    v8->_portCollisionDetection = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    managedSessions = v8->_managedSessions;
    v8->_managedSessions = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    sessionIDToEndpoints = v8->_sessionIDToEndpoints;
    v8->_sessionIDToEndpoints = v19;

    v21 = objc_alloc_init(NSMutableDictionary);
    sessionIDToEvaluators = v8->_sessionIDToEvaluators;
    v8->_sessionIDToEvaluators = v21;

    v8->_isSessionControlEnabled = a4;
  }

  return v8;
}

- (void)registerAgent
{
  v3 = [(IDSGroupAgent *)self agent];

  if (!v3)
  {
    v4 = [NSString stringWithFormat:@"Agent with domain:%@, class:%@", @"com.apple.ids", @"IDSGroupAgent"];
    [v4 UTF8String];
    v5 = [(IDSGroupAgent *)self queue];
    v6 = nw_agent_create();
    [(IDSGroupAgent *)self setAgent:v6];

    v7 = objc_alloc_init(NSMutableDictionary);
    [(IDSGroupAgent *)self setMembersArrayDict:v7];

    v8 = [(IDSGroupAgent *)self agent];
    nw_agent_set_group_handlers();

    v9 = [(IDSGroupAgent *)self agent];
    nw_agent_set_flow_handlers();

    v10 = [(IDSGroupAgent *)self agent];
    nw_agent_add_resolve_handlers();

    v11 = [(IDSGroupAgent *)self agent];
    v12 = IDSRealTimeContext();
    nw_agent_set_flow_context();

    v13 = [(IDSGroupAgent *)self agent];
    nw_agent_change_state();

    v27[0] = 0;
    v27[1] = 0;
    v14 = [(IDSGroupAgent *)self agent];
    nw_agent_get_uuid();

    v15 = [[NSUUID alloc] initWithUUIDBytes:v27];
    v16 = objc_alloc_init(NEPolicySession);
    [(IDSGroupAgent *)self setPolicySession:v16];

    v17 = [NEPolicy alloc];
    v18 = [NEPolicyResult netAgentUUID:v15];
    v19 = +[NEPolicyCondition allInterfaces];
    v26[0] = v19;
    v20 = [NEPolicyCondition ipProtocol:17];
    v26[1] = v20;
    v21 = [NEPolicyCondition requiredAgentDomain:@"com.apple.ids" agentType:@"IDSGroupAgent"];
    v26[2] = v21;
    v22 = [NSArray arrayWithObjects:v26 count:3];
    v23 = [v17 initWithOrder:0 result:v18 conditions:v22];

    v24 = [(IDSGroupAgent *)self policySession];
    [v24 addPolicy:v23];

    v25 = [(IDSGroupAgent *)self policySession];
    [v25 apply];
  }
}

- (void)registerEntitledAgent
{
  v3 = [(IDSGroupAgent *)self entitledAgent];

  if (!v3)
  {
    v23 = [NSString stringWithFormat:@"Agent with domain:%@, class:%@", @"com.apple.ids", @"IDSGroupEntitledAgent"];
    [v23 UTF8String];
    v4 = [(IDSGroupAgent *)self queue];
    v5 = nw_agent_create();
    [(IDSGroupAgent *)self setEntitledAgent:v5];

    v6 = [(IDSGroupAgent *)self entitledAgent];
    nw_agent_add_resolve_handlers();

    v7 = [(IDSGroupAgent *)self entitledAgent];
    v8 = IDSRealTimeContext();
    nw_agent_set_flow_context();

    v9 = [(IDSGroupAgent *)self entitledAgent];
    nw_agent_change_state();

    v25[0] = 0;
    v25[1] = 0;
    v10 = [(IDSGroupAgent *)self entitledAgent];
    nw_agent_get_uuid();

    v11 = [[NSUUID alloc] initWithUUIDBytes:v25];
    v12 = objc_alloc_init(NEPolicySession);
    [(IDSGroupAgent *)self setPolicySessionWithEntitlment:v12];

    v13 = [NEPolicy alloc];
    v14 = [NEPolicyResult netAgentUUID:v11];
    v15 = +[NEPolicyCondition allInterfaces];
    v24[0] = v15;
    v16 = [NEPolicyCondition ipProtocol:17];
    v24[1] = v16;
    v17 = [NEPolicyCondition requiredAgentDomain:@"com.apple.ids" agentType:@"IDSGroupEntitledAgent"];
    v24[2] = v17;
    v18 = [NEPolicyCondition customEntitlement:@"com.apple.private.ids.agent.GroupRestricted"];
    v24[3] = v18;
    v19 = [NSArray arrayWithObjects:v24 count:4];
    v20 = [v13 initWithOrder:0 result:v14 conditions:v19];

    v21 = [(IDSGroupAgent *)self policySessionWithEntitlment];
    [v21 addPolicy:v20];

    v22 = [(IDSGroupAgent *)self policySessionWithEntitlment];
    [v22 apply];
  }
}

- (void)createNewSessionForClientRequest:(id)a3 isClient:(BOOL)a4 registrationCompletionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v11 = +[IDSDServiceController sharedInstance];
    v12 = IDSServiceNameAirDropWalkAway;
    v13 = [v11 serviceWithIdentifier:IDSServiceNameAirDropWalkAway];

    v14 = +[IDSDAccountController sharedInstance];
    v15 = [v14 appleIDAccountOnService:v13];

    if (!v15)
    {
      v39 = +[IDSFoundationLog TransportLevelAgent];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v93 = v12;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "No account found for %@", buf, 0xCu);
      }

      v10[2](v10, 0, 0);
      goto LABEL_68;
    }

    v75 = v6;
    v16 = objc_alloc_init(NSMutableDictionary);
    v17 = [v15 unprefixedURIStringsFromRegistration];
    v78 = _IDSCopyCallerIDWithSelfMessagingHint();

    if ([(IDSGroupAgent *)self isAirDropSession:v8])
    {
      v67 = self;
      v18 = [NSString stringWithFormat:@"%@", v8];
      v19 = v12;
      v20 = +[IDSFoundationLog TransportLevelAgent];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        IDSLoggableDescriptionForHandleOnService();
        v22 = v21 = v16;
        *buf = 138412290;
        v93 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Found airdrop_pro endpoint: %@", buf, 0xCu);

        v16 = v21;
      }

      v23 = [NSString stringWithFormat:@"%s", nw_endpoint_get_application_service_alias()];
      v24 = [v23 componentsSeparatedByString:@":"];
      if ([v24 count] <= 4)
      {
        sub_10093596C();
      }

      v68 = v23;
      if ([v24 count] == 5)
      {
        v66 = v19;
        theDict = v16;
        value = [v24 objectAtIndexedSubscript:4];
        v25 = [v24 objectAtIndexedSubscript:3];
        v26 = [NSData __imDataWithHexString:v25];
        v27 = [v24 objectAtIndexedSubscript:1];
        [v24 objectAtIndexedSubscript:2];
        v28 = v70 = v15;
        v29 = [NSString stringWithFormat:@"%@:%@", v27, v28];
        v74 = IDSCopyIDForTokenWithID();

        v15 = v70;
        v30 = [v70 primaryRegistration];
        v31 = [v30 pushToken];

        v32 = IDSCopyBestGuessIDForID();
        v33 = IDSCopyIDForTokenWithID();

        v34 = [v24 objectAtIndexedSubscript:3];
        v35 = [v31 __imHexString];
        v36 = v35;
        if (v35 && v34)
        {

          if (v33 && v74)
          {
            v91[0] = v33;
            v91[1] = v74;
            v37 = [NSArray arrayWithObjects:v91 count:2];

            v78 = v33;
            v16 = theDict;
            v19 = v66;
            v38 = value;
            goto LABEL_19;
          }

          v64 = +[IDSFoundationLog TransportLevelAgent];
          v16 = theDict;
          v19 = v66;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v93 = v33;
            v94 = 2112;
            v95 = v74;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Can not create destination array from localDestination: %@ and remoteDestination: %@", buf, 0x16u);
          }

          v10[2](v10, 0, 0);
        }

        else
        {
          v55 = +[IDSFoundationLog TransportLevelAgent];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v93 = v36;
            v94 = 2112;
            v95 = v34;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Can not create destination array from localPushToken: %@ and remotePushToken: %@", buf, 0x16u);
          }

          v10[2](v10, 0, 0);
          v15 = v70;
          v16 = theDict;
          v19 = v66;
        }
      }

      else
      {
        v54 = +[IDSFoundationLog TransportLevelAgent];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v93 = v8;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Unexpected format for endpoint: %@", buf, 0xCu);
        }

        v10[2](v10, 0, 0);
        v33 = v78;
      }

      goto LABEL_67;
    }

    v18 = [NSString stringWithFormat:@"%s", nw_endpoint_get_application_service_name()];
    if (([v18 containsString:@"com.apple.airdrop_pro"] & 1) == 0)
    {
      v53 = +[IDSFoundationLog TransportLevelAgent];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v93 = v8;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Unexpected format for endpoint: %@", buf, 0xCu);
      }

      v10[2](v10, 0, 0);
      v19 = 0;
      goto LABEL_62;
    }

    v40 = [NSString stringWithFormat:@"%s", nw_endpoint_get_application_service_alias()];
    v41 = v16;
    v42 = IDSCopyBestGuessIDForID();
    v90[0] = v42;
    v74 = v40;
    v43 = IDSCopyBestGuessIDForID();
    v90[1] = v43;
    v37 = [NSArray arrayWithObjects:v90 count:2];

    v16 = v41;
    v67 = self;
    v38 = [(IDSGroupAgent *)self generateSessionIDFromMemberArray:v37];
    v19 = 0;
LABEL_19:

    if (v38)
    {
      v71 = v15;
      valuea = v38;
      theDicta = v16;
      v69 = v13;
      v44 = objc_alloc_init(NSMutableDictionary);
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v45 = v37;
      v46 = [v45 countByEnumeratingWithState:&v85 objects:v89 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v86;
        do
        {
          for (i = 0; i != v47; i = i + 1)
          {
            if (*v86 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v85 + 1) + 8 * i);
            v51 = [NSNumber numberWithBool:1];
            [v44 setValue:v51 forKey:v50];
          }

          v47 = [v45 countByEnumeratingWithState:&v85 objects:v89 count:16];
        }

        while (v47);
      }

      CFDictionarySetValue(theDicta, IDSSessionUniqueIDKey, valuea);
      CFDictionarySetValue(theDicta, IDSGroupSessionMessagesGroupIDKey, valuea);
      v15 = v71;
      v52 = [v71 uniqueID];
      if (v52)
      {
        CFDictionarySetValue(theDicta, IDSSessionAccountIDKey, v52);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1009356C4();
      }

      v56 = v45;
      if (v56)
      {
        CFDictionarySetValue(theDicta, IDSSessionDestinationsKey, v56);
        v13 = v69;
      }

      else
      {
        v13 = v69;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10093574C();
        }
      }

      v57 = v44;
      v65 = v56;
      if (v57)
      {
        CFDictionarySetValue(theDicta, IDSSessionDestinationLightWeightStatusesKey, v57);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1009357D4();
      }

      v58 = [NSNumber numberWithBool:1];
      if (v58)
      {
        CFDictionarySetValue(theDicta, IDSGroupSessionIsLightweightParticipantKey, v58);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10093585C();
      }

      v59 = [NSNumber numberWithBool:v75];
      if (v59)
      {
        CFDictionarySetValue(theDicta, IDSSessionIsInitiatorKey, v59);
        v60 = v19;
        v61 = v67;
      }

      else
      {
        v60 = v19;
        v61 = v67;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1009358E4();
        }
      }

      CFDictionarySetValue(theDicta, IDSSessionIsMultiwayKey, &__kCFBooleanTrue);
      CFDictionarySetValue(theDicta, IDSSessionDisallowWifiInterfaceKey, &__kCFBooleanFalse);
      CFDictionarySetValue(theDicta, IDSSessionConnectionCountHintKey, &off_100C3D4C8);
      CFDictionarySetValue(theDicta, IDSSessionAlwaysSkipSelfKey, &__kCFBooleanFalse);
      CFDictionarySetValue(theDicta, IDSSessionWaitForPreConnectionDataKey, &__kCFBooleanFalse);
      v16 = theDicta;
      CFDictionarySetValue(theDicta, IDSSessionPreferredAddressFamilyKey, &off_100C3D4C8);
      CFDictionarySetValue(theDicta, IDSSessionTransportTypeKey, &off_100C3D4E0);
      v62 = [v10 copy];
      if (v62)
      {
        CFDictionarySetValue(theDicta, IDSSessionReliableUnicastRegistrationCompletionBlockKey, v62);
      }

      if (v60)
      {
        CFDictionarySetValue(theDicta, IDSSessionClientID, v60);
      }

      v63 = im_primary_queue();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1007054C8;
      block[3] = &unk_100BD9620;
      v80 = theDicta;
      v81 = v61;
      v82 = valuea;
      v84 = v10;
      v19 = v60;
      v83 = v19;
      v18 = valuea;
      dispatch_async(v63, block);
    }

    else
    {
      v10[2](v10, 0, 0);

      v18 = v74;
    }

LABEL_62:
    v33 = v78;
LABEL_67:

LABEL_68:
    goto LABEL_69;
  }

  (*(v9 + 2))(v9, 0, 0);
LABEL_69:
}

- (id)generateSessionIDFromMemberArray:(id)a3
{
  v3 = a3;
  if ([v3 count] == 2)
  {
    v4 = [v3 sortedArrayUsingComparator:&stru_100BE62D0];
    v5 = [v4 componentsJoinedByString:@", "];
    v6 = [v5 dataUsingEncoding:4];

    memset(md, 170, 20);
    CC_SHA1([v6 bytes], objc_msgSend(v6, "length"), md);
    v7 = [NSData dataWithBytes:md length:20];
    if ([v7 length] <= 0xF)
    {
      sub_100935998();
    }

    v11 = *[v7 bytes];
    v8 = [[NSUUID alloc] initWithUUIDBytes:&v11];
    v9 = [v8 UUIDString];
  }

  else
  {
    v4 = +[IDSFoundationLog TransportLevelAgent];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *md = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "generateStringFromMembers received unexpected input", md, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (BOOL)isAppleEndpointForExistingSession:(id)a3
{
  v3 = [NSString stringWithFormat:@"%s", nw_endpoint_get_application_service_alias()];
  v4 = [[IDSGroupSessionConnectionParameters alloc] initWithStringRepresentation:v3];
  v5 = [v4 sessionID];
  if (v5)
  {
    v6 = [v4 multiplexer];
    v7 = [v6 isEqualToString:@"groupsession"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isAirDropSession:(id)a3
{
  v3 = a3;
  v4 = [NSString stringWithFormat:@"%s", nw_endpoint_get_application_service_name()];
  application_service_alias = nw_endpoint_get_application_service_alias();

  v6 = [NSString stringWithFormat:@"%s", application_service_alias];
  v7 = [v6 componentsSeparatedByString:@":"];
  if ([v7 count] >= 4)
  {
    v9 = [v7 objectAtIndexedSubscript:0];
    if ([v4 containsString:@"com.apple.airdrop_pro"])
    {
      v8 = [v9 containsString:@"airdroppro"];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)resolveAirDropProEndpointWithParams:(id)a3 options:(id)a4 agentResolveResponse:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = IDSSessionUniqueIDKey;
  v25 = a3;
  v10 = [v7 objectForKeyedSubscript:v9];
  v11 = [v7 objectForKeyedSubscript:IDSGlobalLinkReliableUnicastLocalConnectionID];
  v12 = [v7 objectForKeyedSubscript:IDSGlobalLinkReliableUnicastRemoteConnectionID];
  v13 = [v7 objectForKeyedSubscript:IDSGlobalLinkReliableUnicastParentConnection];
  v14 = IDSGlobalLinkReliableUnicastRemoteType;
  v15 = [v7 objectForKeyedSubscript:IDSGlobalLinkReliableUnicastRemoteType];

  if (v15)
  {
    v16 = [v7 objectForKeyedSubscript:v14];
    v17 = [v16 unsignedCharValue];

    v18 = 2 * (v17 < 9);
    if (v17 == 9)
    {
      v18 = 3;
    }

    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = dispatch_data_create([v11 bytes], objc_msgSend(v11, "length"), 0, 0);
  v21 = dispatch_data_create([v12 bytes], objc_msgSend(v12, "length"), 0, 0);
  v22 = +[IDSFoundationLog TransportLevelAgent];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v28 = v13;
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    v33 = 1024;
    v34 = v19;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "resolve_handler: encode_ids_connection with connection %@, lcid:%@, rcid:%@, remote nw_interface_type:%d", buf, 0x26u);
  }

  v26 = v8;
  v23 = v8;
  v24 = v10;
  nw_candidate_endpoint_for_ids_connection();
}

- (id)resolveAppleEndpoint:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%s", nw_endpoint_get_application_service_name()];
  v6 = sub_1007064CC(v5);
  memset(__str, 170, 6);
  snprintf(__str, 6uLL, "%d", WORD1(v6));
  v7 = sub_100703960();
  host = nw_endpoint_create_host([v7 cStringUsingEncoding:134217984], __str);
  v9 = [NSString stringWithFormat:@"%s", nw_endpoint_get_application_service_alias()];
  v36 = host;
  v10 = [NSString stringWithFormat:@"%s", nw_endpoint_get_description()];
  v11 = [[IDSGroupSessionConnectionParameters alloc] initWithStringRepresentation:v9];
  v12 = [v11 sessionID];

  if (!v12)
  {
    v28 = 0;
    v27 = v36;
    goto LABEL_15;
  }

  v33 = v10;
  v34 = &v32;
  v35 = v5;
  portCollisionDetection = self->_portCollisionDetection;
  v14 = [v11 sessionID];
  v15 = [(NSMutableDictionary *)portCollisionDetection objectForKeyedSubscript:v14];

  if (!v15)
  {
    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = self->_portCollisionDetection;
    v17 = [v11 sessionID];
    [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];
  }

  v18 = [NSNumber numberWithUnsignedInt:v6];
  v19 = [v15 objectForKeyedSubscript:v18];

  if (v19)
  {
    v20 = [NSNumber numberWithUnsignedInt:v6];
    v21 = [v15 objectForKeyedSubscript:v20];

    if (([(EndpointResolutionParameters *)v21 isEqual:v35]& 1) == 0)
    {
      v29 = +[IDSFoundationLog TransportLevelAgent];
      v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      v5 = v35;
      if (v30)
      {
        *buf = 67109634;
        *v39 = v6;
        *&v39[4] = 2112;
        *&v39[6] = v21;
        *&v39[14] = 2112;
        *&v39[16] = v35;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Collision detected for port Signature %d, topics:(%@, %@)", buf, 0x1Cu);
      }

      v28 = 0;
      v10 = v33;
      v27 = v36;
      goto LABEL_14;
    }
  }

  v22 = [EndpointResolutionParameters alloc];
  v23 = [NSNumber numberWithUnsignedShort:v6];
  v21 = [(EndpointResolutionParameters *)v22 initWithParams:v9 secondaryPort:v23];

  v10 = v33;
  [(NSMutableDictionary *)self->_endpointToResolvedParameters setObject:v21 forKeyedSubscript:v33];
  v24 = [NSNumber numberWithUnsignedInt:v6];
  v5 = v35;
  [v15 setObject:v35 forKeyedSubscript:v24];

  v25 = +[IDSFoundationLog TransportLevelAgent];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    description = nw_endpoint_get_description();
    *buf = 138412546;
    *v39 = v10;
    *&v39[8] = 2080;
    *&v39[10] = description;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Resolved endpoint: %@ from %s", buf, 0x16u);
  }

  v27 = v36;
  v28 = v36;
LABEL_14:

LABEL_15:

  return v28;
}

- (void)unregisterAgent
{
  v3 = [(IDSGroupAgent *)self agent];

  if (v3)
  {
    v4 = [(IDSGroupAgent *)self agent];
    nw_agent_change_state();

    [(IDSGroupAgent *)self setAgent:0];
  }

  v5 = [(IDSGroupAgent *)self policySession];

  if (v5)
  {
    v6 = [(IDSGroupAgent *)self policySession];
    [v6 removeAllPolicies];

    v7 = [(IDSGroupAgent *)self policySession];
    [v7 apply];

    [(IDSGroupAgent *)self setPolicySession:0];
  }
}

- (void)unregisterEntitledAgent
{
  v3 = [(IDSGroupAgent *)self entitledAgent];

  if (v3)
  {
    v4 = [(IDSGroupAgent *)self entitledAgent];
    nw_agent_change_state();

    [(IDSGroupAgent *)self setEntitledAgent:0];
  }

  v5 = [(IDSGroupAgent *)self policySessionWithEntitlment];

  if (v5)
  {
    v6 = [(IDSGroupAgent *)self policySessionWithEntitlment];
    [v6 removeAllPolicies];

    v7 = [(IDSGroupAgent *)self policySessionWithEntitlment];
    [v7 apply];

    [(IDSGroupAgent *)self setPolicySessionWithEntitlment:0];
  }
}

- (void)_injectPortTopicMappingForSession:(id)a3 topic:(id)a4 portSignature:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableDictionary *)self->_portCollisionDetection objectForKeyedSubscript:v11];
  if (!v10)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)self->_portCollisionDetection setObject:v10 forKeyedSubscript:v11];
  }

  [v10 setObject:v8 forKeyedSubscript:v9];
}

@end