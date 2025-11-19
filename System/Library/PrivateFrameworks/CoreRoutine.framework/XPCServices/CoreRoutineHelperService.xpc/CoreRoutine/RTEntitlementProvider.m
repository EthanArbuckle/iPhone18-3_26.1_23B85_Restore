@interface RTEntitlementProvider
+ (id)daemonProtocolEntitlementProvider;
+ (id)helperServiceProtocolEntitlementProvider;
+ (id)internalDaemonProtocolEntitlementProvider;
+ (id)safetyMonitorDaemonProtocolEntitlementProvider;
+ (id)selectorsForProtocol:(id)a3;
- (BOOL)clientConnection:(id)a3 hasEntitlement:(id)a4;
- (BOOL)clientConnection:(id)a3 satisfiesEntitlementRequirementsForInvocation:(id)a4;
- (RTEntitlementProvider)initWithProtocol:(id)a3 entitlementsDictionary:(id)a4;
@end

@implementation RTEntitlementProvider

- (RTEntitlementProvider)initWithProtocol:(id)a3 entitlementsDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v13 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      v12 = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: protocol";
LABEL_12:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    goto LABEL_9;
  }

  if (!v8)
  {
    v13 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v14 = "Invalid parameter not satisfying: entitlementsDictionary";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = RTEntitlementProvider;
  v10 = [(RTEntitlementProvider *)&v16 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_protocol, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  self = p_isa;
  v12 = self;
LABEL_10:

  return v12;
}

+ (id)daemonProtocolEntitlementProvider
{
  v2 = qword_1000B2B60;
  v3 = &OBJC_PROTOCOL___RTDaemonProtocol;
  if (v2 != -1)
  {
    dispatch_once(&qword_1000B2B60, &stru_1000A8CC8);
  }

  v4 = [RTEntitlementProvider alloc];
  v5 = [(RTEntitlementProvider *)v4 initWithProtocol:v3 entitlementsDictionary:qword_1000B2B58];

  return v5;
}

+ (id)internalDaemonProtocolEntitlementProvider
{
  v2 = &OBJC_PROTOCOL___RTDaemonInternalProtocol;
  v3 = [objc_opt_class() selectorsForProtocol:v2];
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v18 = @"com.apple.CoreRoutine.Internal";
        v11 = [NSArray arrayWithObjects:&v18 count:1, v14];
        [v4 setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [[RTEntitlementProvider alloc] initWithProtocol:v2 entitlementsDictionary:v4];

  return v12;
}

+ (id)helperServiceProtocolEntitlementProvider
{
  v2 = &OBJC_PROTOCOL___RTHelperServiceProtocol;
  v3 = [objc_opt_class() selectorsForProtocol:v2];
  v4 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v18 = @"com.apple.CoreRoutine.MapItemService";
        v11 = [NSArray arrayWithObjects:&v18 count:1, v14];
        [v4 setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [[RTEntitlementProvider alloc] initWithProtocol:v2 entitlementsDictionary:v4];

  return v12;
}

+ (id)safetyMonitorDaemonProtocolEntitlementProvider
{
  v30[0] = &OBJC_PROTOCOL___SMDaemonProtocol;
  v30[1] = &OBJC_PROTOCOL___SMDeviceConfigurationProtocol;
  v30[2] = &OBJC_PROTOCOL___SMEligibilityProtocol;
  v30[3] = &OBJC_PROTOCOL___SMIDSMessengerProtocolPrivate;
  v30[4] = &OBJC_PROTOCOL___SMInitiatorCacheProtocol;
  v30[5] = &OBJC_PROTOCOL___SMInitiatorDestinationBoundSessionProtocol;
  v30[6] = &OBJC_PROTOCOL___SMInitiatorGroupChatProtocol;
  v30[7] = &OBJC_PROTOCOL___SMInitiatorSafetyCacheMonitoringProtocol;
  v30[8] = &OBJC_PROTOCOL___SMInitiatorSessionConfigurationProtocol;
  v30[9] = &OBJC_PROTOCOL___SMInitiatorSessionMonitorProtocol;
  v30[10] = &OBJC_PROTOCOL___SMInitiatorMetricsProtocol;
  v30[11] = &OBJC_PROTOCOL___SMMadridMessengerProtocol;
  v30[12] = &OBJC_PROTOCOL___SMMadridMessengerProtocolPrivate;
  v30[13] = &OBJC_PROTOCOL___SMReceiverMonitorProtocol;
  v30[14] = &OBJC_PROTOCOL___SMReceiverProtocol;
  v30[15] = &OBJC_PROTOCOL___SMSessionStoreProtocol;
  v30[16] = &OBJC_PROTOCOL___SMSuggestionsProtocol;
  v30[17] = &OBJC_PROTOCOL___SMSuggestionsHelperProtocol;
  v30[18] = &OBJC_PROTOCOL___SMSuggestionsStoreProtocol;
  v30[19] = &OBJC_PROTOCOL___SMUserNotificationProtocol;
  v30[20] = &OBJC_PROTOCOL___SMWorkoutSnapshotProtocol;
  v2 = [NSArray arrayWithObjects:v30 count:21];
  v3 = [NSSet setWithArray:v2];

  v4 = objc_alloc_init(NSMutableDictionary);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v18 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [objc_opt_class() selectorsForProtocol:*(*(&v23 + 1) + 8 * i)];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v20;
          do
          {
            for (j = 0; j != v8; j = j + 1)
            {
              if (*v20 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v19 + 1) + 8 * j);
              v12 = [v4 objectForKeyedSubscript:v11];

              if (!v12)
              {
                v27 = @"com.apple.CoreRoutine.SafetyMonitor";
                v13 = [NSArray arrayWithObjects:&v27 count:1];
                [v4 setObject:v13 forKey:v11];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v19 objects:v28 count:16];
          }

          while (v8);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v18);
  }

  v14 = [[RTEntitlementProvider alloc] initWithProtocol:&OBJC_PROTOCOL___SMDaemonProtocol entitlementsDictionary:v4];

  return v14;
}

+ (id)selectorsForProtocol:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    *outCount = 0;
    v5 = protocol_copyMethodDescriptionList(v3, 1, 1, &outCount[1]);
    v6 = protocol_copyMethodDescriptionList(v4, 0, 1, outCount);
    v7 = [NSMutableSet alloc];
    v8 = [v7 initWithCapacity:outCount[1]];
    if (outCount[1])
    {
      v9 = 0;
      p_name = &v5->name;
      do
      {
        v11 = *p_name;
        p_name += 2;
        v12 = NSStringFromSelector(v11);
        [v8 addObject:v12];

        ++v9;
      }

      while (v9 < outCount[1]);
    }

    if (outCount[0])
    {
      v13 = 0;
      v14 = &v6->name;
      do
      {
        v15 = *v14;
        v14 += 2;
        v16 = NSStringFromSelector(v15);
        [v8 addObject:v16];

        ++v13;
      }

      while (v13 < outCount[0]);
    }

    free(v5);
    free(v6);
  }

  else
  {
    v17 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: protocol", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)clientConnection:(id)a3 satisfiesEntitlementRequirementsForInvocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v15 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: connection";
LABEL_13:
      v18 = buf;
LABEL_14:
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v17, v18, 2u);
    }

LABEL_28:

LABEL_29:
    v27 = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    v15 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid parameter not satisfying: invocation";
      goto LABEL_13;
    }

    goto LABEL_28;
  }

  if (!sel_isEqual([v7 selector], "fetchEnumerableObjectsWithOptions:offset:reply:"))
  {
    entitlementsDictionary = self->_entitlementsDictionary;
    v20 = NSStringFromSelector([v8 selector]);
    v14 = [(NSDictionary *)entitlementsDictionary objectForKey:v20];

    if (!v14)
    {
LABEL_7:
      v15 = sub_1000011A0(&qword_1000B2988);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v16 = NSStringFromSelector([v8 selector]);
        *buf = 138412290;
        *&buf[4] = v16;
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "%@ requires no entitlements.", buf, 0xCu);
      }

      goto LABEL_28;
    }

    goto LABEL_16;
  }

  *buf = 0;
  [v8 getArgument:buf atIndex:2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *v39 = 0;
    v17 = "Invalid parameter not satisfying: [options isKindOfClass:[RTEnumerationOptions class]]";
    v18 = v39;
    goto LABEL_14;
  }

  v9 = self->_entitlementsDictionary;
  v10 = NSStringFromSelector([v8 selector]);
  v11 = [(NSDictionary *)v9 objectForKey:v10];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *v39 = 0;
      _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [optionsEntitlements isKindOfClass:[NSDictionary class]]", v39, 2u);
    }

    goto LABEL_29;
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 objectForKey:v13];

  if (!v14)
  {
    goto LABEL_7;
  }

LABEL_16:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v29 = sub_1000011A0(&qword_1000B2958);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [requiredEntitlements isKindOfClass:[NSArray class]]", buf, 2u);
    }

    goto LABEL_29;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v21 = v14;
  v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v22)
  {
    v27 = 1;
    goto LABEL_42;
  }

  v23 = v22;
  v24 = *v36;
  while (2)
  {
    for (i = 0; i != v23; i = i + 1)
    {
      if (*v36 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v35 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = sub_1000011A0(&qword_1000B2958);
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
LABEL_41:

          v27 = 0;
          goto LABEL_42;
        }

        *buf = 0;
        v32 = "Invalid parameter not satisfying: [entitlement isKindOfClass:[NSString class]]";
        v33 = v31;
        v34 = 2;
LABEL_45:
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, v32, buf, v34);
        goto LABEL_41;
      }

      if (![(RTEntitlementProvider *)self clientConnection:v6 hasEntitlement:v26, v35])
      {
        v31 = sub_1000011A0(&qword_1000B2988);
        if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_41;
        }

        *buf = 138412546;
        *&buf[4] = v6;
        v41 = 2112;
        v42 = v26;
        v32 = "%@, does not have entitlement, %@";
        v33 = v31;
        v34 = 22;
        goto LABEL_45;
      }
    }

    v23 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
    v27 = 1;
    if (v23)
    {
      continue;
    }

    break;
  }

LABEL_42:

LABEL_30:
  return v27;
}

- (BOOL)clientConnection:(id)a3 hasEntitlement:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v10 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      v9 = 0;
      goto LABEL_11;
    }

    v15 = 0;
    v11 = "Invalid parameter not satisfying: connection";
    v12 = &v15;
LABEL_13:
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_8;
  }

  if (!v6)
  {
    v10 = sub_1000011A0(&qword_1000B2958);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v14 = 0;
    v11 = "Invalid parameter not satisfying: entitlement";
    v12 = &v14;
    goto LABEL_13;
  }

  v8 = [v5 valueForEntitlement:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  return v9;
}

@end