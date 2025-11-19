@interface IDSPACStateTracker
+ (id)sharedInstance;
- (id)_pacRemovalReasonToString:(int64_t)a3;
- (id)_simTypeString:(unint64_t)a3;
- (id)fetchCurrentPACState;
- (id)underlyingErrorForPACState:(id)a3;
- (void)noteAuthenticationFinished;
- (void)noteAuthenticationStarted;
- (void)notePNRError:(int64_t)a3;
- (void)notePNRSuccess;
- (void)notePhoneAuthCertGained;
- (void)notePhoneAuthCertLost:(int64_t)a3;
@end

@implementation IDSPACStateTracker

+ (id)sharedInstance
{
  if (qword_100CBD3C0 != -1)
  {
    sub_10091FBA0();
  }

  if (qword_100CBD3C8 != -1)
  {
    sub_10091FBB4();
  }

  if (qword_100CBD3D0 != -1)
  {
    sub_10091FBC8();
  }

  v2 = qword_100CBD3D8;

  return v2;
}

- (id)fetchCurrentPACState
{
  v2 = +[IMRGLog sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetching PAC state", buf, 2u);
  }

  v3 = objc_alloc_init(IDSPACState);
  v4 = &IDSRegistrationControlErrorDomain_ptr;
  v5 = +[IDSCTAdapter sharedInstance];
  -[IDSPACState setIsAnySIMInserted:](v3, "setIsAnySIMInserted:", [v5 isAnySIMInserted]);

  v6 = +[IDSCTAdapter sharedInstance];
  -[IDSPACState setIsAnySIMUsable:](v3, "setIsAnySIMUsable:", [v6 isAnySIMUsable]);

  v7 = +[IDSCTAdapter sharedInstance];
  -[IDSPACState setIsDualSIM:](v3, "setIsDualSIM:", [v7 hasMultipleSIMs]);

  v8 = +[IDSCTAdapter sharedInstance];
  -[IDSPACState setIsIdentificationSupported:](v3, "setIsIdentificationSupported:", [v8 supportsIdentification]);

  v9 = +[IDSCTAdapter sharedInstance];
  -[IDSPACState setIsSMSSupported:](v3, "setIsSMSSupported:", [v9 supportsSMS]);

  v10 = +[IDSCTAdapter sharedInstance];
  v53 = 0;
  v11 = [v10 currentSIMsWithError:&v53];
  v12 = v53;

  if (v12)
  {
    v13 = +[IMRGLog sms];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Error while attempting to fetch state of SIMs for PAC state: %@", buf, 0xCu);
    }

    v14 = v3;
  }

  else
  {
    v15 = +[IDSDaemon sharedInstance];
    v16 = [v15 registrationConductor];
    v45 = [v16 userStore];

    v17 = +[IMRGLog sms];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v11 count];
      *buf = 134217984;
      v55 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fetching state of %lu sim(s)", buf, 0xCu);
    }

    -[IDSPACState setSimCount:](v3, "setSimCount:", [v11 count]);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v41 = v11;
    obj = v11;
    v46 = [obj countByEnumeratingWithState:&v49 objects:v64 count:16];
    if (v46)
    {
      v44 = *v50;
      do
      {
        for (i = 0; i != v46; i = i + 1)
        {
          if (*v50 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v49 + 1) + 8 * i);
          v21 = [v4[209] sharedInstance];
          v22 = [v21 CTPNRForSIM:v20];

          v48 = [v22 isPNRSupported];
          if (v48)
          {
            [(IDSPACState *)v3 setIsAnySIMPNRCapable:1];
          }

          v47 = [v22 isSIMReady];
          if (v47)
          {
            [(IDSPACState *)v3 setIsAnySIMPNRReady:1];
          }

          v23 = v3;
          v24 = [v20 SIMIdentifier];
          v25 = [v45 userWithUniqueIdentifier:v24];

          v26 = +[IDSDaemon sharedInstance];
          v27 = [v26 registrationConductor];
          v28 = [v27 phoneUserRegistry];
          v29 = [v25 uniqueIdentifier];
          v30 = [v28 validatorForUniqueID:v29 withServiceType:1];

          if (v30)
          {
            v3 = v23;
            if ([v30 status])
            {
              [(IDSPACState *)v23 setIsAnyPNRInFlight:1];
              v31 = @"YES";
            }

            else
            {
              v31 = @"NO";
            }
          }

          else
          {
            v31 = @"NO";
            v3 = v23;
          }

          v32 = +[IMRGLog sms];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [v20 SIMIdentifier];
            v34 = -[IDSPACStateTracker _simTypeString:](self, "_simTypeString:", [v20 hardwareType]);
            v35 = v34;
            *buf = 138413314;
            v36 = @"NO";
            if (v48)
            {
              v37 = @"YES";
            }

            else
            {
              v37 = @"NO";
            }

            v55 = v33;
            if (v47)
            {
              v36 = @"YES";
            }

            v56 = 2112;
            v57 = v34;
            v58 = 2112;
            v59 = v37;
            v60 = 2112;
            v61 = v36;
            v62 = 2112;
            v63 = v31;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Sim status %@ | simType: %@ isPNRCapable: %@ isPNRReady: %@ isPNRInFlight: %@ ", buf, 0x34u);
          }

          v4 = &IDSRegistrationControlErrorDomain_ptr;
        }

        v46 = [obj countByEnumeratingWithState:&v49 objects:v64 count:16];
      }

      while (v46);
    }

    [(IDSPACState *)v3 setIsAuthenticationInFlight:byte_100CBD3E8];
    v38 = +[IMRGLog sms];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = v3;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Current PAC state: %@", buf, 0xCu);
    }

    v39 = v3;
    v12 = 0;
    v11 = v41;
  }

  return v3;
}

- (id)underlyingErrorForPACState:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  if (qword_100CBD3F0)
  {
    v6 = +[IMRGLog sms];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "There is a recent tracked PAC removal, including in error chain", buf, 2u);
    }

    v7 = qword_100CBD3F0;
    v17 = NSDebugDescriptionErrorKey;
    v8 = [(IDSPACStateTracker *)self _pacRemovalReasonToString:qword_100CBD3F0];
    v9 = [NSString stringWithFormat:@"PAC was last removed due to %@", v8];
    v18 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = [NSError errorWithDomain:@"IDSPACRemovedErrorDomain" code:v7 userInfo:v10];
    [v5 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];
  }

  if (([v4 isAnySIMInserted] & 1) == 0)
  {
    [v5 setObject:@"This device has no inserted SIM" forKeyedSubscript:NSDebugDescriptionErrorKey];
    v12 = -5100;
    goto LABEL_15;
  }

  if (([v4 isAnySIMUsable] & 1) == 0)
  {
    [v5 setObject:@"This device has atleast one inserted SIM but none are usable" forKeyedSubscript:NSDebugDescriptionErrorKey];
    v12 = -5200;
    goto LABEL_15;
  }

  if (([v4 isAnySIMPNRCapable] & 1) == 0)
  {
    [v5 setObject:@"This device has no SIM capable of PNR" forKeyedSubscript:NSDebugDescriptionErrorKey];
    v12 = -5300;
    goto LABEL_15;
  }

  if (([v4 isAnySIMPNRReady] & 1) == 0)
  {
    [v5 setObject:@"This device has atleast one PNR capable SIM but none are ready for PNR" forKeyedSubscript:NSDebugDescriptionErrorKey];
    v12 = -5400;
    goto LABEL_15;
  }

  if ([v4 isAnyPNRInFlight])
  {
    [v5 setObject:@"There is currently a PNR in flight" forKeyedSubscript:NSDebugDescriptionErrorKey];
    v12 = -5500;
LABEL_15:
    v13 = [NSError errorWithDomain:@"IDSPhoneUserRegistryErrorDomain" code:v12 userInfo:v5];
    goto LABEL_16;
  }

  if ([v4 isAwaitingAuthentication])
  {
    [v5 setObject:@"PNR is complete forKeyedSubscript:{but we have not yet kicked off authentication", NSDebugDescriptionErrorKey}];
    v12 = -5600;
    goto LABEL_15;
  }

  if ([v4 isAuthenticationInFlight])
  {
    [v5 setObject:@"PNR is complete forKeyedSubscript:{but authentication is still in flight", NSDebugDescriptionErrorKey}];
    v12 = -5700;
    goto LABEL_15;
  }

  if (([v4 isSMSSupported] & 1) == 0)
  {
    [v5 setObject:@"Device does not support SMS; PNR cannot occur" forKeyedSubscript:NSDebugDescriptionErrorKey];
    v12 = -5800;
    goto LABEL_15;
  }

  if (([v4 isIdentificationSupported] & 1) == 0)
  {
    [v5 setObject:@"Device does not support identification; PNR cannot occur" forKeyedSubscript:NSDebugDescriptionErrorKey];
    v12 = -5900;
    goto LABEL_15;
  }

  v13 = [v5 objectForKey:NSUnderlyingErrorKey];
LABEL_16:
  v14 = v13;

  return v14;
}

- (void)notePhoneAuthCertLost:(int64_t)a3
{
  v5 = +[IMRGLog sms];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSPACStateTracker *)self _pacRemovalReasonToString:a3];
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Noting phone auth cert removal! Reason: %@", &v9, 0xCu);
  }

  v7 = +[NSDate now];
  v8 = qword_100CBD3E0;
  qword_100CBD3E0 = v7;

  qword_100CBD3F0 = a3;
}

- (id)_pacRemovalReasonToString:(int64_t)a3
{
  if ((a3 - 1) > 8)
  {
    return @"NoTrackedRemoval";
  }

  else
  {
    return off_100BDCBB0[a3 - 1];
  }
}

- (id)_simTypeString:(unint64_t)a3
{
  v3 = @"unknown";
  if (a3 == 1)
  {
    v3 = @"physical";
  }

  if (a3 == 2)
  {
    return @"eSIM";
  }

  else
  {
    return v3;
  }
}

- (void)notePhoneAuthCertGained
{
  v2 = +[IMRGLog sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Gained a phone auth cert!", v4, 2u);
  }

  v3 = qword_100CBD3E0;
  qword_100CBD3E0 = 0;

  qword_100CBD3F0 = 0;
}

- (void)notePNRSuccess
{
  v2 = +[IMRGLog sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PAC state tracker clearing last PNR failure", v3, 2u);
  }
}

- (void)notePNRError:(int64_t)a3
{
  v3 = +[IMRGLog sms];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PAC state tracker noting a PNR failure", v4, 2u);
  }
}

- (void)noteAuthenticationStarted
{
  v2 = +[IMRGLog sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PAC state tracker noting authentication has begun", v3, 2u);
  }

  byte_100CBD3E8 = 1;
}

- (void)noteAuthenticationFinished
{
  v2 = +[IMRGLog sms];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PAC state tracker noting authentication has finished", v3, 2u);
  }

  byte_100CBD3E8 = 0;
}

@end