@interface IDSDeviceCertificationRepair
- (BOOL)_missingDeviceIdentity:(BOOL *)identity;
- (IDSDeviceCertificationRepair)init;
- (IDSDeviceCertificationRepairDelegate)delegate;
- (void)recertifyDeviceIfNeeded;
@end

@implementation IDSDeviceCertificationRepair

- (IDSDeviceCertificationRepair)init
{
  v11.receiver = self;
  v11.super_class = IDSDeviceCertificationRepair;
  v2 = [(IDSDeviceCertificationRepair *)&v11 init];
  if (v2)
  {
    v3 = [IMDispatchTimer alloc];
    v4 = im_primary_queue();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1006DA450;
    v9[3] = &unk_100BD9268;
    v5 = v2;
    v10 = v5;
    v6 = [v3 initWithQueue:v4 interval:604800 repeats:1 handlerBlock:v9];
    repairTimer = v5->_repairTimer;
    v5->_repairTimer = v6;
  }

  return v2;
}

- (void)recertifyDeviceIfNeeded
{
  v3 = +[IMSystemMonitor sharedInstance];
  isUnderFirstDataProtectionLock = [v3 isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v5 = +[IMRGLog warning];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      return;
    }

    *buf = 0;
    v6 = "Under first lock, not re-certifying device";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    goto LABEL_5;
  }

  if (+[IDSRegistrationController isBuddyBlockingRegistration])
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v20 = 0x402E000000000000;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device is not setup, trying to re-certify in %f seconds", buf, 0xCu);
    }

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1006DA798;
    v17 = &unk_100BD6ED0;
    selfCopy = self;
LABEL_10:
    im_dispatch_after_primary_queue();
    return;
  }

  v13 = 0;
  if (![(IDSDeviceCertificationRepair *)self _missingDeviceIdentity:&v13])
  {
    v5 = +[IMRGLog warning];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    *buf = 0;
    v6 = "Identity present, not re-certifying";
    goto LABEL_4;
  }

  v8 = v13;
  v9 = +[IMRGLog warning];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8 == 1)
  {
    if (v10)
    {
      *buf = 134217984;
      v20 = 0x402E000000000000;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Keychain upgrade pending, trying again in %f seconds", buf, 0xCu);
    }

    v12[5] = _NSConcreteStackBlock;
    v12[6] = 3221225472;
    v12[7] = sub_1006DA7A0;
    v12[8] = &unk_100BD6ED0;
    v12[9] = self;
    goto LABEL_10;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Re-certifying device (in background)", buf, 2u);
  }

  v11 = dispatch_get_global_queue(0, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006DA7A8;
  v12[3] = &unk_100BD6ED0;
  v12[4] = self;
  dispatch_async(v11, v12);
}

- (BOOL)_missingDeviceIdentity:(BOOL *)identity
{
  if (identity)
  {
    *identity = 0;
  }

  *buf = 0;
  v4 = MAECopyLegacyDeviceIdentityWithError();
  v5 = 0;
  v6 = sub_1006DA200(v5);

  copyIdentity = [sub_1006DAF6C() copyIdentity];
  v8 = copyIdentity;
  if (copyIdentity)
  {
    v9 = 0;
  }

  else
  {
    v9 = -25300;
  }

  if (v4 && copyIdentity)
  {
    cf = 0;
    certificateRef = 0;
    v10 = SecIdentityCopyCertificate(v4, &certificateRef);
    v11 = SecIdentityCopyCertificate(v8, &cf);
    v12 = v11;
    if (v10 || !certificateRef || v11 || !cf)
    {
      v19 = +[IMRGLog warning];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_100933338(v10, v12, v19);
      }
    }

    else
    {
      v13 = sub_1006DAD80(cf);
      v14 = sub_1006DAD80(certificateRef);
      v15 = +[IMRGLog warning];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = @"NO";
        if (v14)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        *buf = 134218754;
        if (v13)
        {
          v16 = @"YES";
        }

        *&buf[4] = certificateRef;
        v33 = 2112;
        *v34 = v17;
        *&v34[8] = 2048;
        *&v34[10] = cf;
        *&v34[18] = 2112;
        v35[0] = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loaded identities { lockdownIdentityCert: %p, lockdownCertWillExpire: %@, apsIdentityCert: %p, apsCertWillExpire: %@ }", buf, 0x2Au);
      }

      v18 = v13 || v14;
      v19 = +[IMRGLog warning];
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
      if (!v18)
      {
        if (v20)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device identity is not expired", buf, 2u);
        }

        v27 = 0;
        goto LABEL_45;
      }

      if (v20)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "An identity is expired -- deleting identity", buf, 2u);
      }

      sleep(5u);
      *buf = 0;
      v21 = MAEDeleteLegacyDeviceIdentityWithError();
      v22 = *buf;
      if ((v21 & 1) == 0)
      {
        v23 = +[IMRGLog warning];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          sub_1009333C0(v22, v23);
        }
      }

      sleep(5u);
      v24 = dispatch_time(0, 5000000000);
      v19 = im_primary_queue();
      dispatch_after(v24, v19, &stru_100BE59D0);
    }

    v27 = 1;
LABEL_45:

    if (certificateRef)
    {
      CFRelease(certificateRef);
      certificateRef = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_49;
  }

  if (v6 == -34019)
  {
    if (identity)
    {
      *identity = 1;
    }
  }

  else
  {
    if (qword_100CBF5A8 != -1)
    {
      sub_100933310();
    }

    if (!byte_100CBF5A0)
    {
      v25 = MGGetBoolAnswer();
      v26 = +[IMRGLog warning];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v29 = @"NO";
        *buf = 134219010;
        *&buf[4] = v4;
        v33 = 1024;
        if (v25)
        {
          v29 = @"YES";
        }

        *v34 = v6;
        *&v34[4] = 2048;
        *&v34[6] = v8;
        *&v34[14] = 1024;
        *&v34[16] = v9;
        LOWORD(v35[0]) = 2112;
        *(v35 + 2) = v29;
        _os_log_fault_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Failed to load identities { lockdownIdentity: %p, lockdownResult: %d, apsIdentity: %p, apsResult: %d, shouldHacktivate: %@ }", buf, 0x2Cu);
      }
    }
  }

  v27 = 1;
  if (v4)
  {
LABEL_49:
    CFRelease(v4);
    if (!v8)
    {
      return v27;
    }

    goto LABEL_37;
  }

  if (v8)
  {
LABEL_37:
    CFRelease(v8);
  }

  return v27;
}

- (IDSDeviceCertificationRepairDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end