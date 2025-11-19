@interface IDSValidationSession
+ (BOOL)_isAbsintheV3EnabledByServerBag;
+ (BOOL)_isBAAOptionEnabledByServerBag;
+ (BOOL)isSigningSupported;
+ (id)_BAACertTTLInMinutesFromServerBag;
+ (id)_BAAFetchTimeoutFromServerBag;
+ (id)retrieveLocalUDID;
+ (void)absintheValidationSessionOnQueue:(id)a3 withCompletion:(id)a4;
+ (void)baaOnlyValidationSessionOnQueue:(id)a3 withCompletion:(id)a4;
+ (void)validationSessionOnQueue:(id)a3 mechanism:(int64_t)a4 withCompletion:(id)a5;
- (BOOL)_shouldUseAbsintheV4;
- (BOOL)_shouldUseBAACertOption;
- (BOOL)_shouldUseDebugPiscoLogging;
- (IDSValidationSession)initWithQueue:(id)a3 mechanism:(int64_t)a4;
- (id)_deviceAbsintheIMEI;
- (id)_deviceAbsintheMEID;
- (id)_deviceAbsintheSerialNumber;
- (id)activateWithValidationData:(id)a3 serverKey:(id)a4;
- (id)description;
- (void)_fetchDeviceIdentityIfNeededWithCompletion:(id)a3;
- (void)dealloc;
- (void)headersBySigningData:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)purgeCachedCertsForSubsystemMechanism:(int64_t)a3;
- (void)signData:(id)a3 completion:(id)a4;
@end

@implementation IDSValidationSession

- (IDSValidationSession)initWithQueue:(id)a3 mechanism:(int64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = IDSValidationSession;
  v8 = [(IDSValidationSession *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_stateFlags = 0;
    objc_storeStrong(&v8->_queue, a3);
    v9->_mechanism = a4;
    v10 = [[IDSBAASigner alloc] initWithQueue:v7];
    baaSigner = v9->_baaSigner;
    v9->_baaSigner = v10;
  }

  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSValidationSession *)self isInitializedForSigning];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  return [NSString stringWithFormat:@"<%@ %p isInitializedForSigning: %@>", v3, self, v5];
}

- (void)dealloc
{
  [(IDSValidationSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = IDSValidationSession;
  [(IDSValidationSession *)&v3 dealloc];
}

+ (void)validationSessionOnQueue:(id)a3 mechanism:(int64_t)a4 withCompletion:(id)a5
{
  v9 = a3;
  v8 = a5;
  if (a4 == 1)
  {
    [a1 baaOnlyValidationSessionOnQueue:v9 withCompletion:v8];
  }

  else if (!a4)
  {
    [a1 absintheValidationSessionOnQueue:v9 withCompletion:v8];
  }
}

+ (void)baaOnlyValidationSessionOnQueue:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[IDSValidationSession alloc] initWithQueue:v6 mechanism:1];

  v8 = [(IDSValidationSession *)v7 baaSigner];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1004582BC;
  v11[3] = &unk_100BDCC30;
  v12 = v7;
  v13 = v5;
  v9 = v5;
  v10 = v7;
  [v8 fetchBAAIdentityIfNeededWithCompletion:v11];
}

+ (void)absintheValidationSessionOnQueue:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[IDSValidationSession alloc] initWithQueue:v5 mechanism:0];
  v8 = [(IDSValidationSession *)v7 queue];
  dispatch_assert_queue_V2(v8);

  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Initializing validation session { self: %@ }", &buf, 0xCu);
  }

  [(IDSValidationSession *)v7 setHelloMessage:0];
  v10 = [(IDSValidationSession *)v7 _deviceAbsintheUDID];
  [(IDSValidationSession *)v7 setUDID:v10];

  v11 = [(IDSValidationSession *)v7 UDID];
  LODWORD(v10) = v11 == 0;

  if (v10)
  {
    v16 = +[IMRGLog warning];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_10091FEA0(v16);
    }

    v17 = [NSError errorWithDomain:@"IDSValidationSessionErrorDomain" code:-3000 userInfo:0];
    v6[2](v6, v7, v17);
  }

  else
  {
    v12 = [(IDSValidationSession *)v7 _deviceAbsintheSerialNumber];
    [(IDSValidationSession *)v7 setSerialNumber:v12];

    v13 = [(IDSValidationSession *)v7 _deviceAbsintheIMEI];
    [(IDSValidationSession *)v7 setIMEI:v13];

    v14 = [(IDSValidationSession *)v7 _deviceAbsintheMEID];
    [(IDSValidationSession *)v7 setMEID:v14];

    if ([(IDSValidationSession *)v7 pscSession])
    {
      sub_10091410C([(IDSValidationSession *)v7 pscSession]);
      [(IDSValidationSession *)v7 setPscSession:0];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v23 = 0x2020000000;
    v24 = 0;
    if ([(IDSValidationSession *)v7 _shouldUseAbsintheV3])
    {
      *(*(&buf + 1) + 24) = 1;
      [(IDSValidationSession *)v7 setStateFlags:[(IDSValidationSession *)v7 stateFlags]| 4];
      if ([(IDSValidationSession *)v7 _shouldUseAbsintheV4])
      {
        *(*(&buf + 1) + 24) |= 2u;
        [(IDSValidationSession *)v7 setStateFlags:[(IDSValidationSession *)v7 stateFlags]| 8];
      }
    }

    v15 = [(IDSValidationSession *)v7 baaSigner];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1004587B0;
    v18[3] = &unk_100BDCC58;
    p_buf = &buf;
    v19 = v7;
    v20 = v6;
    [v15 fetchBAAIdentityIfNeededWithCompletion:v18];

    _Block_object_dispose(&buf, 8);
  }
}

- (void)purgeCachedCertsForSubsystemMechanism:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = [(IDSValidationSession *)self baaSigner];
    [v4 purgeBAACertForTopic:0];
  }
}

- (id)activateWithValidationData:(id)a3 serverKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"YES";
    if (v6)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    *buf = 138412802;
    *&buf[4] = self;
    v36 = v10;
    v35 = 2112;
    if (!v7)
    {
      v9 = @"NO";
    }

    v37 = 2112;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activating validation session { self: %@, validationData: %@, serverKey: %@ }", buf, 0x20u);
  }

  if ([(IDSValidationSession *)self _shouldUseDebugPiscoLogging])
  {
    v11 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Pisco] {validationData: %@}", buf, 0xCu);
    }

    v12 = +[IMRGLog sysdiagnose_oversized];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Pisco] {serverKey: %@}", buf, 0xCu);
    }
  }

  v13 = 0;
  if (v6 && v7)
  {
    if (![(IDSValidationSession *)self pscSession]|| [(IDSValidationSession *)self _shouldUsePSCBAA])
    {
LABEL_18:
      v13 = 0;
      goto LABEL_25;
    }

    v14 = sub_100913FB4(-[IDSValidationSession pscSession](self, "pscSession"), [v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v7, "bytes"), objc_msgSend(v7, "length"));
    v15 = +[IMRGLog registration];
    v16 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        sub_10091FF4C();
      }

      if ([(IDSValidationSession *)self pscSession])
      {
        sub_10091410C([(IDSValidationSession *)self pscSession]);
        [(IDSValidationSession *)self setPscSession:0];
      }

      v13 = [NSError errorWithDomain:@"IDSValidationSessionErrorDomain" code:-4000 userInfo:0];
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Successfully activated validation session", buf, 2u);
      }

      [(IDSValidationSession *)self setStateFlags:[(IDSValidationSession *)self stateFlags]| 1];
      v13 = [(IDSValidationSession *)self BAACert];
      if (v13)
      {
        v18 = [(IDSValidationSession *)self intermediateRootCert];
        if (v18)
        {
          v19 = v18;
          v20 = [(IDSValidationSession *)self BIKKeyRef];

          if (v20)
          {
            v21 = +[IMRGLog registration];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Adding option to validation session", buf, 2u);
            }

            *buf = [(IDSValidationSession *)self pscSession];
            v32 = [(IDSValidationSession *)self BIKKeyRef];
            v22 = [(IDSValidationSession *)self BAACert];
            v31 = [v22 bytes];
            v23 = [(IDSValidationSession *)self BAACert];
            v24 = [v23 length];
            v25 = [(IDSValidationSession *)self intermediateRootCert];
            v26 = [v25 bytes];
            v27 = [(IDSValidationSession *)self intermediateRootCert];
            v28 = sub_100913E5C(buf, v32, v31, v24, v26, [v27 length]);

            if (v28 || !*buf)
            {
              v30 = +[IMRGLog warning];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
              {
                sub_10091FEE4();
              }
            }

            else
            {
              v29 = +[IMRGLog registration];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *v33 = 0;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Successfully added option to validation session", v33, 2u);
              }

              [(IDSValidationSession *)self setPscSession:*buf];
              [(IDSValidationSession *)self setStateFlags:[(IDSValidationSession *)self stateFlags]| 0x10];
            }
          }
        }

        else
        {
        }

        goto LABEL_18;
      }
    }
  }

LABEL_25:

  return v13;
}

- (void)signData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Signing data using validation session { self: %@ }", buf, 0xCu);
  }

  v9 = [v6 sha256Digest];
  if (([(IDSValidationSession *)self stateFlags]& 1) == 0 || !v9)
  {
    goto LABEL_12;
  }

  v10 = [(IDSValidationSession *)self mechanism];
  if (v10 == 1)
  {
    v17 = [(IDSValidationSession *)self baaSigner];
    v18 = [(IDSValidationSession *)self BIKKeyRef];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100459B30;
    v26[3] = &unk_100BDCCA8;
    v27 = v7;
    [v17 signData:v6 withKey:v18 completion:v26];

    v15 = v27;
    goto LABEL_14;
  }

  if (!v10)
  {
    if ([(IDSValidationSession *)self pscSession])
    {
      v36 = 0;
      v35 = 0;
      v34 = 0;
      v33 = 0;
      if (sub_1009143C8([(IDSValidationSession *)self pscSession], [(IDSValidationSession *)v9 bytes], [(IDSValidationSession *)v9 length], &v36, &v35, &v34, &v33))
      {
        v11 = +[IMRGLog warning];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_10091FFB4();
        }

        v12 = [NSError errorWithDomain:@"IDSValidationSessionErrorDomain" code:-5000 userInfo:0];
        v13 = 0;
        v14 = 0;
      }

      else
      {
        v19 = +[IMRGLog registration];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully signed data in validation session", buf, 2u);
        }

        v14 = [NSData dataWithBytes:v36 length:v35];
        v13 = [NSData dataWithBytes:v34 length:v33];
        if ([(IDSValidationSession *)self _shouldUseDebugPiscoLogging])
        {
          v20 = +[IMRGLog sysdiagnose_oversized];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v9;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[Pisco] {dataToSign: %@}", buf, 0xCu);
          }

          v21 = +[IMRGLog sysdiagnose_oversized];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v14;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[Pisco] {absintheSignature: %@}", buf, 0xCu);
          }

          v22 = +[IMRGLog sysdiagnose_oversized];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v13;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[Pisco] {outServKey: %@}", buf, 0xCu);
          }
        }

        v12 = 0;
      }

      if (v36)
      {
        sub_100914268(v36);
        v36 = 0;
      }

      if (v34)
      {
        sub_100914268(v34);
        v34 = 0;
      }

      v23 = [(IDSValidationSession *)self baaSigner];
      v24 = [(IDSValidationSession *)self BIKKeyRef];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100459AA4;
      v28[3] = &unk_100BDCC80;
      v29 = v14;
      v30 = v13;
      v31 = v12;
      v32 = v7;
      v15 = v12;
      v25 = v13;
      v16 = v14;
      [v23 signData:v6 withKey:v24 completion:v28];

      goto LABEL_13;
    }

LABEL_12:
    v15 = [NSError errorWithDomain:@"IDSValidationSessionErrorDomain" code:-6000 userInfo:0];
    v16 = [[IDSValidationSigningResult alloc] initWithAbsintheResultData:0 absintheServerKey:0 absintheError:v15 baaResult:0];
    (*(v7 + 2))(v7, v16);
LABEL_13:

LABEL_14:
  }
}

- (void)headersBySigningData:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100459C80;
  v7[3] = &unk_100BDCCD0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(IDSValidationSession *)v8 signData:v6 completion:v7];
}

- (void)invalidate
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating validation session { self: %@ }", &v4, 0xCu);
  }

  [(IDSValidationSession *)self setStateFlags:0];
  [(IDSValidationSession *)self setHelloMessage:0];
  [(IDSValidationSession *)self setUDID:0];
  [(IDSValidationSession *)self setSerialNumber:0];
  [(IDSValidationSession *)self setIMEI:0];
  [(IDSValidationSession *)self setMEID:0];
  [(IDSValidationSession *)self setBAACert:0];
  [(IDSValidationSession *)self setIntermediateRootCert:0];
  if ([(IDSValidationSession *)self pscSession])
  {
    sub_10091410C([(IDSValidationSession *)self pscSession]);
    [(IDSValidationSession *)self setPscSession:0];
  }

  if ([(IDSValidationSession *)self BIKKeyRef])
  {
    CFRelease([(IDSValidationSession *)self BIKKeyRef]);
    [(IDSValidationSession *)self setBIKKeyRef:0];
  }
}

+ (BOOL)isSigningSupported
{
  if ([a1 _isAbsintheV3EnabledByServerBag])
  {
    if (+[IMUserDefaults isPiscoDisabled])
    {
      v2 = +[IMLockdownManager sharedInstance];
      v3 = [v2 isInternalInstall] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

+ (BOOL)_isAbsintheV3EnabledByServerBag
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"absinthe-v3-enabled"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (BOOL)_isBAAOptionEnabledByServerBag
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"absinthe-baa-option-enabled-ios13"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [v2 objectForKey:@"absinthe-baa-option-enabled"];
    if (!v4)
    {
LABEL_6:
      v5 = 1;
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = [v4 BOOLValue];
LABEL_7:

  return v5;
}

+ (id)_BAAFetchTimeoutFromServerBag
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"absinthe-baa-timeout"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_BAACertTTLInMinutesFromServerBag
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"absinthe-baa-cert-ttl-minutes"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_shouldUseAbsintheV4
{
  if (![(IDSValidationSession *)self _shouldUseAbsintheV3]|| !+[IMUserDefaults isAbsintheV4Enabled])
  {
    return 0;
  }

  v2 = +[IMLockdownManager sharedInstance];
  v3 = [v2 isInternalInstall];

  return v3;
}

- (BOOL)_shouldUseBAACertOption
{
  if ([objc_opt_class() _isBAAOptionEnabledByServerBag])
  {
    if (+[IMUserDefaults isBAACertDisabled])
    {
      v2 = +[IMLockdownManager sharedInstance];
      v3 = [v2 isInternalInstall] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_shouldUseDebugPiscoLogging
{
  v2 = +[IMUserDefaults isDebugPiscoLoggingEnabled];
  if (v2)
  {
    v3 = +[IMLockdownManager sharedInstance];
    v4 = [v3 isInternalInstall];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)_fetchDeviceIdentityIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSValidationSession *)self queue];
  dispatch_assert_queue_V2(v5);

  if ([(IDSValidationSession *)self _shouldUseBAACertOption])
  {
    v6 = [(IDSValidationSession *)self BAAQueue];

    if (!v6)
    {
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("com.apple.IDS.IDSValidationSession.BAA", v7);
      [(IDSValidationSession *)self setBAAQueue:v8];
    }

    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2020000000;
    v41[3] = 0;
    v39[0] = 0;
    v39[1] = v39;
    v39[2] = 0x3032000000;
    v39[3] = sub_10000A9A4;
    v39[4] = sub_10000BC44;
    v40 = 0;
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = sub_10000A9A4;
    v37[4] = sub_10000BC44;
    v38 = 0;
    v9 = [objc_opt_class() _BAACertTTLInMinutesFromServerBag];
    v10 = v9;
    v11 = &off_100C3DE20;
    if (v9)
    {
      v11 = v9;
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10045ACBC;
    v31[3] = &unk_100BDCD48;
    v12 = v11;
    v32 = v12;
    v33 = self;
    v34 = v41;
    v35 = v39;
    v36 = v37;
    v13 = objc_retainBlock(v31);
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10045B114;
    v25 = &unk_100BDCDC0;
    v26 = self;
    v28 = v41;
    v29 = v39;
    v30 = v37;
    v27 = v4;
    v14 = objc_retainBlock(&v22);
    v15 = [objc_opt_class() _BAAFetchTimeoutFromServerBag];
    v16 = v15;
    if (v15)
    {
      [v15 doubleValue];
      v18 = v17;
    }

    else
    {
      v18 = 60.0;
    }

    v21 = +[IMRGLog registration];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v45 = v18;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Starting device identity fetch task with timeout {timeoutInSeconds: %f}", buf, 0xCu);
    }

    dispatch_time(0, (v18 * 1000000000.0));
    im_dispatch_async_with_timeout();

    _Block_object_dispose(v37, 8);
    _Block_object_dispose(v39, 8);

    _Block_object_dispose(v41, 8);
  }

  else if (v4)
  {
    v42 = NSDebugDescriptionErrorKey;
    v43 = @"Device identity fetch disabled";
    v19 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v20 = [NSError errorWithDomain:@"IDSValidationSessionInternalErrorDomain" code:-12000 userInfo:v19];

    (*(v4 + 2))(v4, 0, 0, v20);
  }
}

+ (id)retrieveLocalUDID
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_deviceAbsintheSerialNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_deviceAbsintheIMEI
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)_deviceAbsintheMEID
{
  v2 = MGCopyAnswer();

  return v2;
}

@end