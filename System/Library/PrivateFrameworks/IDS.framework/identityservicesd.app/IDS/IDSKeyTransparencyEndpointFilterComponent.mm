@interface IDSKeyTransparencyEndpointFilterComponent
- (IDSKeyTransparencyEndpointFilterComponent)initWithTransparencyVerifier:(id)verifier;
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IDSKeyTransparencyEndpointFilterComponent

- (IDSKeyTransparencyEndpointFilterComponent)initWithTransparencyVerifier:(id)verifier
{
  verifierCopy = verifier;
  v11.receiver = self;
  v11.super_class = IDSKeyTransparencyEndpointFilterComponent;
  v6 = [(IDSKeyTransparencyEndpointFilterComponent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyTransparencyVerifier, verifier);
    v7->_messageEnforcement = _os_feature_enabled_impl();
    v7->_messageEnforcementFailNotResolved = _os_feature_enabled_impl();
    v7->_messageEnforcementPedantic = _os_feature_enabled_impl();
    v8 = +[TransparencyAnalytics logger];
    analytics = v7->_analytics;
    v7->_analytics = v8;
  }

  return v7;
}

- (id)runIndividuallyWithInput:(id)input
{
  inputCopy = input;
  service = [inputCopy service];
  v6 = [service isEqualToString:IDSServiceNameiMessage];

  if ((v6 & 1) == 0)
  {
    v24 = +[IDSFoundationLog delivery_keyTransparency];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      service2 = [inputCopy service];
      *buf = 138412290;
      v156 = service2;
      v26 = "Service is not iMessage, no KT filtering needed, { service: %@ }";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
    }

LABEL_25:

    v27 = [CUTUnsafePromise fulfilledPromiseWithValue:inputCopy];
    goto LABEL_137;
  }

  keyTransparencyVerifier = self->_keyTransparencyVerifier;
  service3 = [inputCopy service];
  LOBYTE(keyTransparencyVerifier) = [(IDSKeyTransparencyVerifier *)keyTransparencyVerifier isOptedInForServiceIdentifier:service3];

  if ((keyTransparencyVerifier & 1) == 0)
  {
    v24 = +[IDSFoundationLog delivery_keyTransparency];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      service2 = [inputCopy service];
      *buf = 138412290;
      v156 = service2;
      v26 = "Not opted into KT for service, no KT filtering needed. { service: %@ }";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  selfCopy = self;
  v128 = inputCopy;
  endpoints = [inputCopy endpoints];
  v122 = objc_alloc_init(NSMutableArray);
  v129 = +[NSMutableSet set];
  v10 = +[NSMutableDictionary dictionary];
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v11 = endpoints;
  v12 = [v11 countByEnumeratingWithState:&v141 objects:v164 count:16];
  if (!v12)
  {
    v125 = 0;
    v131 = 0;
    goto LABEL_27;
  }

  v13 = v12;
  v125 = 0;
  v131 = 0;
  v14 = *v142;
  v15 = IDSRegistrationPropertySupportsConditionalCKVEnforcement;
  do
  {
    for (i = 0; i != v13; i = i + 1)
    {
      if (*v142 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v141 + 1) + 8 * i);
      v18 = [v17 URI];
      prefixedURI = [v18 prefixedURI];

      capabilities = [v17 capabilities];
      v21 = [capabilities valueForCapability:v15];

      v22 = [v10 objectForKeyedSubscript:prefixedURI];
      if (!v22)
      {
        v22 = [NSNumber numberWithInteger:v21];
      }

      if (v21 < 2)
      {
        if (v21 == 1 && [v22 integerValue] > 0)
        {
          v125 = 1;
          v23 = &off_100C3CCB8;
          goto LABEL_17;
        }
      }

      else if ([v22 integerValue] > 1)
      {
        v23 = &off_100C3CCA0;
        goto LABEL_17;
      }

      v131 = 1;
      v23 = &off_100C3CCD0;
LABEL_17:
      [v10 setObject:v23 forKeyedSubscript:prefixedURI];
    }

    v13 = [v11 countByEnumeratingWithState:&v141 objects:v164 count:16];
  }

  while (v13);
LABEL_27:

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v28 = v11;
  obj = v28;
  v134 = [v28 countByEnumeratingWithState:&v137 objects:v163 count:16];
  if (!v134)
  {

    v97 = 0;
    v136 = 0;
    inputCopy = v128;
    v91 = v129;
    v32 = selfCopy;
    goto LABEL_85;
  }

  v30 = 0;
  v123 = 0;
  v124 = 0;
  v31 = 0;
  v126 = 0;
  v133 = *v138;
  *&v29 = 138544386;
  v121 = v29;
  v32 = selfCopy;
  while (2)
  {
    v33 = 0;
    while (2)
    {
      if (*v138 != v133)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v137 + 1) + 8 * v33);
      v35 = [v34 URI];
      prefixedURI2 = [v35 prefixedURI];

      pushToken = [v34 pushToken];
      v135 = prefixedURI2;
      v38 = [v10 objectForKeyedSubscript:prefixedURI2];
      integerValue = [v38 integerValue];

      transparency = [v34 transparency];
      if (!transparency)
      {

        if (v32->_messageEnforcementFailNotResolved)
        {
          goto LABEL_40;
        }

        goto LABEL_48;
      }

      v132 = v31;
      transparency2 = [v34 transparency];
      if ([transparency2 ktValidation])
      {
        [v34 transparency];
        v42 = v10;
        v44 = v43 = v30;
        v45 = [v44 ktValidation] == 4;

        v30 = v43;
        v10 = v42;
        v32 = selfCopy;
      }

      else
      {
        v45 = 1;
      }

      if (v32->_messageEnforcementFailNotResolved && v45)
      {
LABEL_40:
        v46 = +[IDSFoundationLog delivery_keyTransparency];
        v47 = v135;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          service4 = [v128 service];
          [v34 transparency];
          v50 = v49 = v30;
          *buf = 138544130;
          v156 = service4;
          v157 = 2114;
          v158 = v135;
          v159 = 2114;
          v160 = pushToken;
          v161 = 2114;
          *v162 = v50;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Recipient endpoint not resolved transparency status, will fail { service: %{public}@, uri: %{public}@, token: %{public}@, transparency: %{public}@ }", buf, 0x2Au);

          v30 = v49;
        }

        transparency3 = [v34 transparency];
        ktError = [transparency3 ktError];

        if (ktError)
        {
          if (!v30)
          {
            v30 = +[NSMutableArray array];
          }

          transparency4 = [v34 transparency];
          ktError2 = [transparency4 ktError];
          [v30 addObject:ktError2];
        }

        v55 = [v34 URI];
        prefixedURI3 = [v55 prefixedURI];
        [v129 addObject:prefixedURI3];

        v31 = 1;
        goto LABEL_79;
      }

      if (!v45)
      {
        transparency5 = [v34 transparency];
        ktValidation = [transparency5 ktValidation];

        if (ktValidation == 3)
        {
LABEL_52:
          v124 = 1;
          v31 = v132;
          v47 = v135;
          goto LABEL_79;
        }

        transparency6 = [v34 transparency];
        ktValidation2 = [transparency6 ktValidation];

        transparency7 = [v34 transparency];
        v65 = transparency7;
        if (ktValidation2 == 5)
        {
          ktError3 = [transparency7 ktError];

          if (!ktError3)
          {
            goto LABEL_52;
          }

          v47 = v135;
          if (!v30)
          {
            v30 = +[NSMutableArray array];
          }

          transparency8 = [v34 transparency];
          ktError4 = [transparency8 ktError];
          [v30 addObject:ktError4];

          v124 = 1;
LABEL_78:
          v31 = v132;
          goto LABEL_79;
        }

        ktValidation3 = [transparency7 ktValidation];

        v70 = +[IDSFoundationLog delivery_keyTransparency];
        v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
        if (ktValidation3 == 2)
        {
          v72 = v30;
          v47 = v135;
          if (v71)
          {
            service5 = [v128 service];
            *buf = 138543874;
            v156 = service5;
            v157 = 2112;
            v158 = v135;
            v159 = 2114;
            v160 = pushToken;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Recipient endpoint is opted into KT and this endpoint is verified. Will send to this endpoint. { service: %{public}@, uri: %@, token: %{public}@ }", buf, 0x20u);
          }

          [v122 addObject:v34];
          v74 = [v34 URI];
          prefixedURI4 = [v74 prefixedURI];
          fromID = [v128 fromID];
          v77 = [prefixedURI4 isEqual:fromID];

          v123 |= v77 ^ 1;
          v30 = v72;
          goto LABEL_78;
        }

        if (integerValue == 1)
        {
          if (!v71)
          {
            goto LABEL_72;
          }

          service6 = [v128 service];
          [v34 transparency];
          v80 = v79 = v30;
          ktError5 = [v80 ktError];
          *buf = 138544130;
          v156 = service6;
          v157 = 2114;
          v158 = v135;
          v159 = 2114;
          v160 = pushToken;
          v161 = 2112;
          *v162 = ktError5;
          v82 = v70;
          v83 = "Recipient endpoint is opted into KT, supporting metrics, will fall back to warning { service: %{public}@, uri: %{public}@, token: %{public}@ }: %@";
        }

        else
        {
          if (integerValue == 2)
          {
            if (v71)
            {
              service6 = [v128 service];
              [v34 transparency];
              v80 = v79 = v30;
              ktError5 = [v80 ktError];
              *buf = v121;
              v156 = service6;
              v157 = 2114;
              v158 = v135;
              v159 = 2114;
              v160 = pushToken;
              v161 = 1024;
              *v162 = 0;
              *&v162[4] = 2112;
              *&v162[6] = ktError5;
              v82 = v70;
              v83 = "Recipient endpoint is opted into KT and is not verified, will not send to this endpoint. { service: %{public}@, uri: %{public}@, token: %{public}@ pending: %d }: %@";
              v84 = 48;
LABEL_71:
              _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, v83, buf, v84);

              v30 = v79;
            }

LABEL_72:

            transparency9 = [v34 transparency];
            ktError6 = [transparency9 ktError];

            if (ktError6)
            {
              v47 = v135;
              if (!v30)
              {
                v30 = +[NSMutableArray array];
              }

              transparency10 = [v34 transparency];
              ktError7 = [transparency10 ktError];
              [v30 addObject:ktError7];
            }

            else
            {
              v47 = v135;
            }

            v89 = [v34 URI];
            prefixedURI5 = [v89 prefixedURI];
            [v129 addObject:prefixedURI5];

            goto LABEL_78;
          }

          if (!v71)
          {
            goto LABEL_72;
          }

          service6 = [v128 service];
          [v34 transparency];
          v80 = v79 = v30;
          ktError5 = [v80 ktError];
          *buf = 138544130;
          v156 = service6;
          v157 = 2114;
          v158 = v135;
          v159 = 2114;
          v160 = pushToken;
          v161 = 2112;
          *v162 = ktError5;
          v82 = v70;
          v83 = "Recipient endpoint is opted into KT but not supporting enforcement, send with warning { service: %{public}@, uri: %{public}@, token: %{public}@ }: %@";
        }

        v84 = 42;
        goto LABEL_71;
      }

LABEL_48:
      v57 = +[IDSFoundationLog delivery_keyTransparency];
      v47 = v135;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        service7 = [v128 service];
        transparency11 = [v34 transparency];
        *buf = 138544130;
        v156 = service7;
        v157 = 2114;
        v158 = v135;
        v159 = 2114;
        v160 = pushToken;
        v161 = 2114;
        *v162 = transparency11;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Recipient endpoint not resolved transparency status, allowing due to feature flag { service: %{public}@, uri: %{public}@, token: %{public}@, transparency: %{public}@ }", buf, 0x2Au);
      }

      v31 = 1;
      v126 = 1;
LABEL_79:

      if (v134 != ++v33)
      {
        continue;
      }

      break;
    }

    v134 = [obj countByEnumeratingWithState:&v137 objects:v163 count:16];
    if (v134)
    {
      continue;
    }

    break;
  }

  v136 = v30;

  inputCopy = v128;
  v91 = v129;
  if ((v124 & 1) == 0)
  {
    if (v126)
    {
      v92 = v31;
      v99 = [NSError errorWithDomain:IDSSendErrorDomain code:43 userInfo:0];
      [(IDSKeyTransparencyAnalytics *)v32->_analytics logResultForEvent:@"IDSKTEnforcementPending" hardFailure:0 result:v99];
      v126 = 1;
      v93 = [[IDSMessageSendEnforcementMetric alloc] initWithState:1];

      v94 = 0;
      goto LABEL_113;
    }

    if (v31)
    {
      if (v136)
      {
        v151 = NSMultipleUnderlyingErrorsKey;
        v152 = v136;
        v103 = [NSDictionary dictionaryWithObjects:&v152 forKeys:&v151 count:1];
      }

      else
      {
        v103 = 0;
      }

      v104 = [NSError errorWithDomain:IDSSendErrorDomain code:43 userInfo:v103];
      v92 = 1;
      [(IDSKeyTransparencyAnalytics *)v32->_analytics logResultForEvent:@"IDSKTEnforcementPending" hardFailure:1 result:v104];
      v93 = [[IDSMessageSendEnforcementMetric alloc] initWithState:2];

      v94 = 0;
      v126 = 0;
      if (!v93)
      {
        goto LABEL_128;
      }

LABEL_127:
      v111 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v111 logMetric:v93];

      goto LABEL_128;
    }

    v97 = v123;
LABEL_85:
    if (v131)
    {
      if ([v91 count])
      {
        if (v136)
        {
          v149 = NSMultipleUnderlyingErrorsKey;
          v150 = v136;
          v98 = [NSDictionary dictionaryWithObjects:&v150 forKeys:&v149 count:1];
        }

        else
        {
          v98 = 0;
        }

        v108 = [NSError errorWithDomain:IDSSendErrorDomain code:38 userInfo:v98];
        [(IDSKeyTransparencyAnalytics *)v32->_analytics logResultForEvent:@"IDSKTEnforcementOptIn" hardFailure:1 result:v108];
        v93 = [[IDSMessageSendEnforcementMetric alloc] initWithState:3];
      }

      else
      {
        [(IDSKeyTransparencyAnalytics *)v32->_analytics logResultForEvent:@"IDSKTEnforcementOptIn" hardFailure:0 result:0];
        v93 = [[IDSMessageSendEnforcementMetric alloc] initWithState:4];
      }

      v94 = 0;
      v126 = 0;
      v92 = 0;
LABEL_113:
      v104 = 0;
      if (!v93)
      {
        goto LABEL_128;
      }

      goto LABEL_127;
    }

    fromID2 = [inputCopy fromID];
    v101 = [v91 containsObject:fromID2];
    [v91 removeObject:fromID2];
    if (!v32->_messageEnforcementPedantic && (([v91 count] != 0) & v97) == 1 && objc_msgSend(v122, "count"))
    {
      if (v136)
      {
        v147 = NSMultipleUnderlyingErrorsKey;
        v148 = v136;
        v102 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
      }

      else
      {
        v102 = 0;
      }

      v104 = [NSError errorWithDomain:IDSSendErrorDomain code:43 userInfo:v102];
      if (v125)
      {
        v119 = @"IDSKTEnforcementMetrics";
      }

      else
      {
        v119 = @"IDSKTEnforcementEnabled";
      }

      if (v125)
      {
        v120 = 3;
      }

      else
      {
        v120 = 5;
      }

      [(IDSKeyTransparencyAnalytics *)v32->_analytics logResultForEvent:v119 hardFailure:0 result:v104];
      v93 = [[IDSMessageSendEnforcementMetric alloc] initWithState:v120];
    }

    else
    {
      if (![v91 count] && (!v101 || objc_msgSend(v91, "count")))
      {
        analytics = v32->_analytics;
        if (v125)
        {
          [(IDSKeyTransparencyAnalytics *)analytics logResultForEvent:@"IDSKTEnforcementMetrics" hardFailure:0 result:0];
          v106 = [IDSMessageSendEnforcementMetric alloc];
          v107 = 4;
        }

        else
        {
          [(IDSKeyTransparencyAnalytics *)analytics logResultForEvent:@"IDSKTEnforcementEnabled" hardFailure:0 result:0];
          v106 = [IDSMessageSendEnforcementMetric alloc];
          v107 = 6;
        }

        v93 = [v106 initWithState:v107];
        v104 = 0;
LABEL_126:

        v94 = 0;
        v126 = 0;
        v92 = 0;
        if (!v93)
        {
          goto LABEL_128;
        }

        goto LABEL_127;
      }

      if (v136)
      {
        v145 = NSMultipleUnderlyingErrorsKey;
        v146 = v136;
        v102 = [NSDictionary dictionaryWithObjects:&v146 forKeys:&v145 count:1];
      }

      else
      {
        v102 = 0;
      }

      if (v125)
      {
        v109 = 43;
      }

      else
      {
        v109 = 38;
      }

      if (v125)
      {
        v110 = @"IDSKTEnforcementMetrics";
      }

      else
      {
        v110 = @"IDSKTEnforcementEnabled";
      }

      v104 = [NSError errorWithDomain:IDSSendErrorDomain code:v109 userInfo:v102];
      [(IDSKeyTransparencyAnalytics *)v32->_analytics logResultForEvent:v110 hardFailure:1 result:v104];
      v93 = [[IDSMessageSendEnforcementMetric alloc] initWithState:5];
      [v93 setCode:{objc_msgSend(v104, "code")}];
    }

    goto LABEL_126;
  }

  v92 = v31;
  v93 = [[IDSMessageSendEnforcementMetric alloc] initWithState:7];
  if (v136)
  {
    v153 = NSMultipleUnderlyingErrorsKey;
    v154 = v136;
    v94 = 1;
    v95 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v153 count:1];
    v96 = [NSError errorWithDomain:IDSSendErrorDomain code:41 userInfo:v95];
    [(IDSKeyTransparencyAnalytics *)v32->_analytics logResultForEvent:@"IDSKTEnforcementOptOut" hardFailure:1 result:v96];
    [v93 setCode:{objc_msgSend(v96, "code")}];

    goto LABEL_113;
  }

  [(IDSKeyTransparencyAnalytics *)v32->_analytics logResultForEvent:@"IDSKTEnforcementOptOut" hardFailure:0 result:0];
  v136 = 0;
  v104 = 0;
  v94 = 1;
  if (v93)
  {
    goto LABEL_127;
  }

LABEL_128:
  if (!v32->_messageEnforcement)
  {
    v112 = +[IDSFoundationLog delivery_keyTransparency];
    if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_135;
    }

    service8 = [inputCopy service];
    *buf = 138412290;
    v156 = service8;
    v114 = "KT enforcement off. { service: %@ }";
    goto LABEL_134;
  }

  if (!v94)
  {
    if (v126)
    {
      v112 = +[IDSFoundationLog delivery_keyTransparency];
      if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_135;
      }

      service8 = [inputCopy service];
      *buf = 138412290;
      v156 = service8;
      v114 = "KT pending resolutions, allowing. { service: %@ }";
      goto LABEL_134;
    }

    if (v92)
    {
LABEL_144:
      [inputCopy setEndpoints:&__NSArray0__struct];
      v115 = [CUTUnsafePromise failedPromiseWithError:v104];
      goto LABEL_136;
    }

    if (v131)
    {
      v112 = +[IDSFoundationLog delivery_keyTransparency];
      if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_135;
      }

      service8 = [inputCopy service];
      *buf = 138412290;
      v156 = service8;
      v114 = "KT enforcement conditional, still allowing. { service: %@ }";
    }

    else if (v125)
    {
      v112 = +[IDSFoundationLog delivery_keyTransparency];
      if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_135;
      }

      service8 = [inputCopy service];
      *buf = 138412290;
      v156 = service8;
      v114 = "KT metrics mode. { service: %@ }";
    }

    else
    {
      if (v104)
      {
        if (v32->_messageEnforcementPedantic)
        {
          v117 = +[IDSFoundationLog delivery_keyTransparency];
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
          {
            service9 = [inputCopy service];
            *buf = 138412546;
            v156 = v104;
            v157 = 2112;
            v158 = service9;
            _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "KT rejected with failure: %@. { service: %@ }", buf, 0x16u);
          }

          goto LABEL_144;
        }

        [inputCopy setPedanticEnforcementFailure:1];
      }

      [inputCopy setEndpoints:v122];
      v112 = +[IDSFoundationLog delivery_keyTransparency];
      if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_135;
      }

      service8 = [inputCopy service];
      *buf = 138412290;
      v156 = service8;
      v114 = "KT enforcement success. { service: %@ }";
    }

LABEL_134:
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, v114, buf, 0xCu);

    goto LABEL_135;
  }

  v112 = +[IDSFoundationLog delivery_keyTransparency];
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    service8 = [inputCopy service];
    *buf = 138412290;
    v156 = service8;
    v114 = "KT opt out, allowing. { service: %@ }";
    goto LABEL_134;
  }

LABEL_135:

  v115 = [CUTUnsafePromise fulfilledPromiseWithValue:inputCopy];
LABEL_136:
  v27 = v115;

LABEL_137:

  return v27;
}

@end