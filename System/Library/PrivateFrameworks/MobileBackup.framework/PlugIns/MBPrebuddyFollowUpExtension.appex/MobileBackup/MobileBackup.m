void sub_100001D48(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:1 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_100001DDC(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 lastObject];

  if (v6)
  {
    v7 = [v5 lastObject];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v8];
  }
}

void sub_100001E70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "saveAccount completed: %@: %@", buf, 0x16u);

    v13 = [NSNumber numberWithBool:a2];
    _MBLog();
  }

  if (a2)
  {
    v8 = [*(a1 + 32) containsObject:ACAccountDataclassKeychainSync];
    v9 = *(a1 + 40);
    if (v8)
    {
      v10 = *(a1 + 48);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000020BC;
      v16[3] = &unk_10001C5B8;
      v16[4] = v9;
      v17 = *(a1 + 32);
      v18 = *(a1 + 56);
      [v9 _enableKeychainSync:v10 completion:v16];

      v11 = v17;
    }

    else
    {
      [*(a1 + 40) _saveEnabledSyncDataclasses:*(a1 + 32)];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100002128;
      block[3] = &unk_10001C568;
      v12 = *(a1 + 48);
      v15 = *(a1 + 56);
      dispatch_async(v12, block);
      v11 = v15;
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))(*(a1 + 56), 0);
  }
}

void sub_1000020BC(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _saveEnabledSyncDataclasses:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100002360(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = MBGetDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithBool:a2];
    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished enabling Keychain Sync: %@: %@", buf, 0x16u);

    v11 = [NSNumber numberWithBool:a2];
    _MBLog();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000024F4;
  block[3] = &unk_10001C608;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = a2;
  v13 = v5;
  v14 = v9;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t sub_1000027E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v5;
    if ([v7 isCameraRollDomain] && *(a1 + 40) == 1 && *(a1 + 41) != 1)
    {
      goto LABEL_12;
    }

    if (![*(a1 + 32) _isSupportedBackupDomain:v7])
    {
      goto LABEL_12;
    }

    if ([v7 isAppDomain])
    {
      v8 = [v7 bundleID];
      v9 = [v8 length] != 0;
    }

    else
    {
      v9 = 1;
    }

    if ([v7 isEnabled])
    {
LABEL_12:
      v10 = 0;
    }

    else
    {
      v10 = ([v7 isRestricted] ^ 1) & v9;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_100002C24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_13;
  }

  if (([*(a1 + 32) _isSupportedDataclassForDevice:v5] & 1) == 0)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_disabledSyncDataclassesForAccount: Filtering out %{public}@ because device doesn't support it.", buf, 0xCu);
      _MBLog();
    }

    goto LABEL_8;
  }

  v7 = [*(a1 + 40) isProvisionedForDataclass:v5];
  if ([v5 isEqualToString:ACAccountDataclassKeychainSync])
  {
    v8 = +[CDPKeychainSync isUserVisibleKeychainSyncEnabled];
  }

  else
  {
    v8 = [*(a1 + 40) isEnabledForDataclass:v5];
  }

  v11 = v8;
  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [NSNumber numberWithBool:v11];
    v14 = [NSNumber numberWithBool:v7];
    *buf = 138543874;
    v19 = v5;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "_disabledSyncDataclassesForAccount: Dataclass (%{public}@) isEnabled: %{public}@, isProvisioned: %{public}@", buf, 0x20u);

    v15 = [NSNumber numberWithBool:v11];
    v17 = [NSNumber numberWithBool:v7];
    _MBLog();
  }

  v10 = (v11 ^ 1) & v7;
LABEL_13:

  return v10;
}

void sub_1000033F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10000341C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = [WeakRetained _iconForSyncDataclass:v9];
      v11 = [WeakRetained _localizedTitleForDataclass:v9];
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v7;
      v14 = [WeakRetained _iconForBackupDomain:v13];

      v15 = [WeakRetained _localizedTitleForBackupDomain:v13];

      v11 = v15;
      v10 = v14;
    }

    v12 = [v6 dequeueReusableCellWithIdentifier:@"AppItemCell"];
    v16 = +[UIListContentConfiguration cellConfiguration];
    [v16 setImage:v10];
    [v16 setText:v11];
    v17 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    v18 = [v16 textProperties];
    [v18 setFont:v17];

    [v12 setContentConfiguration:v16];
    v19 = +[UIColor secondarySystemBackgroundColor];
    [v12 setBackgroundColor:v19];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_100003860(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) navigationController];
  v7 = [v6 view];
  [v7 setUserInteractionEnabled:1];

  if ((a2 & 1) == 0)
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to enable disabled sync categories: %@", buf, 0xCu);
      v13 = v5;
      _MBLog();
    }

    v10 = [v5 domain];
    if ([v10 isEqualToString:CDPStateErrorDomain])
    {
      v11 = [v5 code];

      if (v11 == -5700)
      {
        v12 = *(a1 + 32);
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100003A30;
        v14[3] = &unk_10001C6D0;
        v14[4] = v12;
        [v12 _presentKeychainError:v14];
        goto LABEL_10;
      }
    }

    else
    {
    }

    [*(a1 + 32) _presentUnknownError];
    goto LABEL_10;
  }

  v8 = [*(a1 + 32) flow];
  [v8 mb_didTapNextFromViewController:*(a1 + 32)];

LABEL_10:
}

void sub_100003A30(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) flow];
    [v3 mb_didTapNextFromViewController:*(a1 + 32)];
  }
}

void sub_1000045D8(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_queue_create("MBMegaBackupEligibilityManager queue", attr);
  v3 = qword_100022CF0;
  qword_100022CF0 = v2;
}

void sub_10000482C(uint64_t a1)
{
  v2 = [*(a1 + 32) _account];
  v3 = +[MBManagedPolicy sharedPolicy];
  v4 = v3;
  if (v2)
  {
    v5 = [v3 checkIfCloudBackupIsAllowed:0];

    if (v5)
    {
      if ([v2 aa_isManagedAppleID])
      {
        v6 = MBGetDefaultLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "checkMegaBackupEligibility: Unsupported Managed Apple ID.", &buf, 2u);
          _MBLog();
        }

        v7 = *(a1 + 40);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100004FA0;
        block[3] = &unk_10001C568;
        v41 = *(a1 + 64);
        dispatch_async(v7, block);
      }

      else if ([*(a1 + 32) _isHSA2AvailableForAuthenticationContext:v2])
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v48 = 0x2020000000;
        v49 = 1;
        v15 = [*(a1 + 32) _usedCapacityForVolume:@"/private/var"];
        v16 = [*(a1 + 32) _usedCapacityForVolume:@"/private/var/mobile"];
        v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 unsignedLongLongValue] + objc_msgSend(v16, "unsignedLongLongValue"));
        v18 = objc_alloc_init(_ICQMegaBackupManager);
        v19 = *(a1 + 48);
        v20 = [*(a1 + 32) _entryMethodForEntryPoint:*(a1 + 72)];
        v21 = *(a1 + 40);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100005040;
        v34[3] = &unk_10001C828;
        v22 = *(a1 + 56);
        v35 = *(a1 + 64);
        p_buf = &buf;
        [v18 requestMegaBackupForAccount:v2 deviceBackupUUID:v19 deviceTotalUsedSpaceInBytes:v17 entryMethod:v20 deepLinkURL:v22 queue:v21 completion:v34];

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v23 = MBGetDefaultLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v2 aa_altDSID];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "checkMegaBackupEligibility: User needs HSA2 account: %@", &buf, 0xCu);

          v33 = [v2 aa_altDSID];
          _MBLog();
        }

        v50 = @"MBMegaBackupEligibilityErrorUserInfoAltDSIDKey";
        v25 = [v2 aa_altDSID];
        v26 = v25;
        v27 = &stru_10001D038;
        if (v25)
        {
          v27 = v25;
        }

        v51 = v27;
        v28 = [NSDictionary dictionaryWithObjects:&v51 forKeys:&v50 count:1, v33];

        v29 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:5 userInfo:v28];
        v30 = *(a1 + 40);
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_100005020;
        v37[3] = &unk_10001C800;
        v31 = *(a1 + 64);
        v38 = v29;
        v39 = v31;
        v32 = v29;
        dispatch_async(v30, v37);
      }
    }

    else
    {
      v13 = MBGetDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "checkMegaBackupEligibility: Cloud Backup is restricted.", &buf, 2u);
        _MBLog();
      }

      v14 = *(a1 + 40);
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_100004F20;
      v42[3] = &unk_10001C568;
      v43 = *(a1 + 64);
      dispatch_async(v14, v42);
    }
  }

  else
  {
    v8 = [v3 checkIfCloudAccountModificationIsAllowed:0];

    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v8)
      {
        v10 = &__kCFBooleanFalse;
      }

      else
      {
        v10 = &__kCFBooleanTrue;
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "checkMegaBackupEligibility couldn't get primary Apple Account: %{public}@", &buf, 0xCu);
      _MBLog();
    }

    v11 = v8 ^ 1;
    v12 = *(a1 + 40);
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100004E90;
    v44[3] = &unk_10001C7D8;
    v46 = v11;
    v45 = *(a1 + 64);
    dispatch_async(v12, v44);
  }
}

void sub_100004E90(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  v3 = ~*(a1 + 40);
  v4 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:v2 userInfo:0];
  (*(v1 + 16))(v1, v3 & 1, 0, 21, v4);
}

void sub_100004F20(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:4 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 21, v2);
}

void sub_100004FA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:2 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 21, v2);
}

void sub_100005040(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = MBGetDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v14 = a2;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "checkMegaBackupEligibility: _ICQMegaBackupManager response: %ld, error: %@", buf, 0x16u);
    _MBLog();
  }

  if (v7)
  {
    [v7 integerValue];
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v11 = 0;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_15;
      }

      v11 = 1;
    }

    *(*(*(a1 + 40) + 8) + 24) = v11;
    goto LABEL_15;
  }

  if (!a2)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
    goto LABEL_16;
  }

  if (a2 != 1)
  {
LABEL_15:
    v12 = *(*(*(a1 + 40) + 8) + 24);
    (*(*(a1 + 32) + 16))(*(a1 + 32), 2);
    goto LABEL_16;
  }

  v10 = [NSError errorWithDomain:@"MBMegaBackupEligibilityErrorDomain" code:6 userInfo:0];
  (*(*(a1 + 32) + 16))(*(a1 + 32), 1);

LABEL_16:
}

void sub_100005944(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_queue_create("MBPrebuddyGettingStartedViewController XPC queue", attr);
  v3 = qword_100022D00;
  qword_100022D00 = v2;
}

void *sub_1000061C0(void *result, int a2)
{
  if (a2)
  {
    v2 = result[4];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100006238;
    v3[3] = &unk_10001C6D0;
    v3[4] = v2;
    return [v2 _checkEligibilityAndUpgradeHSA2IfNeeded:v3];
  }

  return result;
}

void *sub_100006238(void *result, int a2)
{
  if (a2)
  {
    v2 = result[4];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000062B0;
    v3[3] = &unk_10001C6D0;
    v3[4] = v2;
    return [v2 _enableBackupIfNeeded:v3];
  }

  return result;
}

void sub_1000062B0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) flow];
    [v3 mb_didTapNextFromViewController:*(a1 + 32)];
  }
}

void sub_100006694(id *a1)
{
  v2 = [a1[4] _xpcQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100006748;
  v3[3] = &unk_10001C898;
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);
}

void sub_100006748(uint64_t a1)
{
  v2 = objc_alloc_init(MBManager);
  [v2 setBackupEnabled:1];
  [v2 saveBackupEnabledForMegaBackup];
  v9 = 0;
  v3 = [v2 setMegaBackupTurnOniCloudBackupTelemetry:1 error:&v9];
  v4 = v9;
  if ((v3 & 1) == 0)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = @"MegaBackupTurnOniCloudBackup";
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to set %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000068F4;
  block[3] = &unk_10001C898;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_1000068F4(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100006944(id *a1)
{
  v2 = [a1[4] _xpcQueue];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000069F8;
  v3[3] = &unk_10001C898;
  v4 = a1[5];
  v5 = a1[6];
  dispatch_async(v2, v3);
}

void sub_1000069F8(uint64_t a1)
{
  v2 = objc_alloc_init(MBManager);
  v9 = 0;
  v3 = [v2 setMegaBackupTurnOniCloudBackupTelemetry:0 error:&v9];
  v4 = v9;
  if ((v3 & 1) == 0)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v11 = @"MegaBackupTurnOniCloudBackup";
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to set %{public}@: %{public}@", buf, 0x16u);
      _MBLog();
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006B90;
  block[3] = &unk_10001C898;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100006B90(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100006F54(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = [v6 signInController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000070C8;
    v9[3] = &unk_10001C568;
    v10 = *(a1 + 40);
    [v6 presentViewController:v7 animated:1 completion:v9];
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "AAUISignInController prepareInViewController Error: %{public}@", buf, 0xCu);
      _MBLog();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }
}

id sub_100007170(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || ([*(a1 + 32) altDSIDForHSA2Upgrade], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    return [v4 _upgradeHSA2IfNeeded:v5];
  }
}

void sub_1000073D8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) setDidHSA2Upgrade:1];
    [*(a1 + 32) _checkEligibility:*(a1 + 40)];
  }

  else
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to upgrade to HSA2: %{public}@", buf, 0xCu);
      _MBLog();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }
}

void sub_100007608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  [*(a1 + 32) setEligibilityStatus:a2];
  [*(a1 + 32) setEligibilityError:v9];
  [*(a1 + 32) setDaysUntilExpiration:a4];
  [*(a1 + 32) setNeedsBackupEnabled:*(a1 + 48)];
  if (a2 == 2)
  {
    v19 = MBGetDefaultLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [NSNumber numberWithBool:a3];
      *buf = 138543362;
      v30 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Getting Started MBMegaBackupEligibilityStateEligible: needsTemporaryStorage: %{public}@", buf, 0xCu);

      v24 = [NSNumber numberWithBool:a3];
      _MBLog();
    }

    [*(a1 + 32) setNeedsTemporaryStorage:a3];
    goto LABEL_18;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Getting Started MBMegaBackupEligibilityStateError: %{public}@", buf, 0xCu);
        _MBLog();
      }

      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_1000079D8;
      v27[3] = &unk_10001C800;
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v27[4] = *(a1 + 32);
      v28 = v12;
      [v11 _presentError:v9 completion:v27];
      v13 = v28;
      goto LABEL_7;
    }

LABEL_19:
    [*(a1 + 32) _hideLoadingStatusView];
    goto LABEL_20;
  }

  v14 = MBGetDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Getting Started MBMegaBackupEligibilityStateIneligible: %{public}@", buf, 0xCu);
    v24 = v9;
    _MBLog();
  }

  v15 = [v9 domain];
  v16 = [v15 isEqualToString:@"MBMegaBackupEligibilityErrorDomain"];

  if (!v16)
  {
LABEL_18:
    (*(*(a1 + 40) + 16))(*(a1 + 40));
    goto LABEL_19;
  }

  if ([v9 code] != 6)
  {
    if ([v9 code] == 5)
    {
      v21 = [*(a1 + 32) eligibilityError];
      v22 = [v21 userInfo];
      v23 = [v22 objectForKeyedSubscript:@"MBMegaBackupEligibilityErrorUserInfoAltDSIDKey"];
      [*(a1 + 32) setAltDSIDForHSA2Upgrade:v23];
    }

    goto LABEL_18;
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100007A20;
  v25[3] = &unk_10001C800;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v26 = v18;
  [v17 _presentError:v9 completion:v25];
  v13 = v26;
LABEL_7:

LABEL_20:
}

id sub_1000079D8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _hideLoadingStatusView];
}

id sub_100007A20(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _hideLoadingStatusView];
}

uint64_t sub_100007F00(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = +[MBPrebuddyManager sharedManager];
    [v2 cancelPrebuddy];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void *sub_100008120(void *result, int a2)
{
  if (a2)
  {
    v2 = result[4];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100008198;
    v3[3] = &unk_10001C6D0;
    v3[4] = v2;
    return [v2 _enableBackupIfNeeded:v3];
  }

  return result;
}

void sub_100008198(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) flow];
    [v3 mb_didTapNextFromViewController:*(a1 + 32)];
  }
}

id MBPrebuddyAlertIcon()
{
  v0 = +[UIColor whiteColor];
  v1 = [UIColor colorWithRed:0.0 green:0.62745098 blue:0.549019608 alpha:1.0];
  v2 = [UIColor colorWithRed:0.0 green:0.447058824 blue:0.392156863 alpha:1.0];
  v3 = v0;
  v4 = v1;
  v18.width = 256.0;
  v18.height = 256.0;
  UIGraphicsBeginImageContextWithOptions(v18, 0, 1.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = 256.0;
  v19.size.height = 256.0;
  v20 = CGRectInset(v19, 1.0, 1.0);
  CGContextAddEllipseInRect(CurrentContext, v20);
  CGContextClip(CurrentContext);
  v6 = +[CAGradientLayer layer];
  [v6 setFrame:{0.0, 0.0, 256.0, 256.0}];
  v7 = [v4 CGColor];

  v16[0] = v7;
  v16[1] = [v2 CGColor];
  v8 = [NSArray arrayWithObjects:v16 count:2];
  [v6 setColors:v8];

  [v6 renderInContext:CurrentContext];
  v9 = [UIImage systemImageNamed:@"arrow.circlepath"];
  v10 = [v9 imageWithTintColor:v3];

  [v10 size];
  v13 = 153.6 / fmax(v11, v12);
  [v10 drawInRect:{(256.0 - v11 * v13) * 0.5 + -6.6, (256.0 - v12 * v13) * 0.5 + 0.48}];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

void sub_100009558(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  v2 = dispatch_queue_create("Prebuddy Follow Up XPC queue", attr);
  v3 = qword_100022D10;
  qword_100022D10 = v2;
}

void sub_100009620(id a1)
{
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_DEFAULT, 0);

  v2 = dispatch_queue_create("Prebuddy Follow Up Telemetry queue", attr);
  v3 = qword_100022D20;
  qword_100022D20 = v2;
}

void sub_10000A1B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = MBPrebuddyFollowUpFinishedFlowKey;
  v4 = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  [v1 finishProcessingWithUserInfo:v2];
}

void sub_10000A2E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = MBPrebuddyFollowUpFinishedFlowKey;
  v4 = &__kCFBooleanFalse;
  v2 = [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  [v1 finishProcessingWithUserInfo:v2];
}

id sub_10000ACE8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = +[MBPrebuddyManager sharedManager];
    [v2 cancelPrebuddy];
  }

  v3 = *(a1 + 32);

  return [v3 prebuddyCancel:v3];
}

void sub_10000B4B8(uint64_t a1)
{
  v2 = [[MBPrebuddyLoadingViewController alloc] initWithTitle:&stru_10001D038 detailText:&stru_10001D038 icon:0];
  [*(a1 + 32) setLoadingViewController:v2];

  v3 = *(a1 + 32);
  v4 = [v3 loadingViewController];
  [v3 _presentNavigationViewControllerWithRootViewController:v4];
}

void sub_10000B548(uint64_t a1)
{
  v2 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B5DC;
  block[3] = &unk_10001C9C8;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void sub_10000B5E4(uint64_t a1)
{
  v2 = [[MBPrebuddyLoadingViewController alloc] initWithTitle:&stru_10001D038 detailText:&stru_10001D038 icon:0];
  [*(a1 + 32) setLoadingViewController:v2];

  v3 = *(a1 + 32);
  v4 = [v3 loadingViewController];
  [v3 _presentNavigationViewControllerWithRootViewController:v4];
}

void sub_10000B674(uint64_t a1)
{
  v2 = +[MBPrebuddyManager sharedManager];
  v3 = [v2 isPrebuddyMode];

  if (v3)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B7F0;
    block[3] = &unk_10001C9C8;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v4 = objc_alloc_init(MBManager);
    v5 = [v4 isBackupEnabled] ^ 1;
    v6 = [v4 backupDeviceUUID];
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = [*(a1 + 32) deepLinkURL];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000B848;
    v10[3] = &unk_10001CA18;
    v10[4] = *(a1 + 32);
    v11 = v5;
    [v8 checkMegaBackupEligibility:v7 deepLinkURL:v9 backupDeviceUUID:v6 queue:&_dispatch_main_q completion:v10];
  }
}

void sub_10000B7F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _doneViewController];
  [v1 _presentNavigationViewControllerWithRootViewController:v2];
}

void sub_10000BAB0(id *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  switch(a2)
  {
    case 2:
      v26 = MBGetDefaultLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v47 = v7;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Server allowed expiration date extension: %{public}@", buf, 0xCu);
        _MBLog();
      }

      if (v7)
      {
        v27 = [a1[4] _xpcQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10000C120;
        block[3] = &unk_10001CA90;
        v40 = a1[5];
        v41 = v7;
        v42 = a1[6];
        dispatch_async(v27, block);
      }

      else
      {
        (*(a1[6] + 2))(a1[6]);
      }

      break;
    case 1:
      v16 = MBGetDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Server did not allow expiration date extension", buf, 2u);
        _MBLog();
      }

      v17 = MBLocalizedStringFromTable();
      v18 = MBLocalizedStringFromTable();
      v19 = [UIAlertController alertControllerWithTitle:v17 message:v18 preferredStyle:1];

      v20 = MBPrebuddyAlertIcon();
      [v19 setImage:v20];

      v21 = MBLocalizedStringFromTable();
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10000C224;
      v36[3] = &unk_10001CA68;
      v37 = v19;
      v38 = a1[6];
      v22 = v19;
      v23 = [UIAlertAction actionWithTitle:v21 style:0 handler:v36];

      [v22 addAction:v23];
      v24 = [a1[4] navController];
      v25 = [v24 visibleViewController];
      [v25 presentViewController:v22 animated:1 completion:0];

      break;
    case 0:
      v9 = MBGetDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Server error for expiration extension: %@", buf, 0xCu);
        _MBLog();
      }

      v10 = MBLocalizedStringFromTable();
      v11 = [v8 domain];
      v12 = [v11 isEqualToString:_ICQMegaBackupErrorDomain];

      if (v12 && [v8 code] == 5)
      {
        v13 = MGGetBoolAnswer();
        v14 = @"WIFI";
        if (v13)
        {
          v14 = @"WLAN";
        }

        v15 = [NSString stringWithFormat:@"MB_PREBUDDY_NETWORK_%@_ERROR_TITLE", v14];

        v10 = 0;
      }

      else
      {
        v15 = @"MB_PREBUDDY_EXPIRATION_DENIED_TITLE";
      }

      v28 = MBLocalizedStringFromTable();
      v29 = [UIAlertController alertControllerWithTitle:v28 message:v10 preferredStyle:1];

      v30 = MBPrebuddyAlertIcon();
      [v29 setImage:v30];

      v31 = MBLocalizedStringFromTable();
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10000C0D0;
      v43[3] = &unk_10001CA68;
      v44 = v29;
      v45 = a1[6];
      v32 = v29;
      v33 = [UIAlertAction actionWithTitle:v31 style:0 handler:v43];

      [v32 addAction:v33];
      v34 = [a1[4] navController];
      v35 = [v34 visibleViewController];
      [v35 presentViewController:v32 animated:1 completion:0];

      break;
  }
}

uint64_t sub_10000C0D0(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10000C120(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 updateMegaBackupExpirationDate:v3 error:&v7];
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to update mega backup expiration date: %@", buf, 0xCu);
      _MBLog();
    }
  }

  (*(a1[6] + 16))(a1[6]);
}

uint64_t sub_10000C224(uint64_t a1)
{
  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10000C328(uint64_t a1)
{
  v2 = +[MBPrebuddyManager sharedManager];
  if (![*(a1 + 32) needsTemporaryStorage])
  {
    [v2 cancelPrebuddy];
    v5 = objc_alloc_init(MBManager);
    v6 = objc_alloc_init(MBStartBackupOptions);
    if ([*(a1 + 32) expensiveNetwork])
    {
      +[MBCellularAccess expensiveCellularAccess];
    }

    else
    {
      +[MBCellularAccess inexpensiveCellularAccess];
    }
    v7 = ;
    [v6 setCellularAccess:v7];
    v11 = 0;
    v8 = [v5 startBackupWithOptions:v6 error:&v11];
    v9 = v11;
    if ((v8 & 1) == 0)
    {
      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to start normal backup for prebuddy: %@", buf, 0xCu);
        _MBLog();
      }
    }

    goto LABEL_13;
  }

  v3 = [*(a1 + 32) fromManualSignal];
  v12 = 0;
  v4 = [v2 beginPrebuddyBackupFromManualSignal:v3 error:&v12];
  v5 = v12;
  if ((v4 & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to start prebuddy backup: %@", buf, 0xCu);
      _MBLog();
    }

LABEL_13:
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

void sub_10000C7BC(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = *(a1 + 32);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000C928;
  v12[3] = &unk_10001CB28;
  v12[4] = v3;
  v13 = *(a1 + 40);
  v4 = v2;
  v14 = v4;
  [v3 _beginBackup:v12];
  v5 = dispatch_time(0, 300000000);
  if (dispatch_semaphore_wait(v4, v5))
  {
    v6 = [*(a1 + 32) navController];
    v7 = [v6 topViewController];
    v8 = [*(a1 + 32) loadingViewController];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      v10 = [*(a1 + 32) navController];
      v11 = [*(a1 + 32) loadingViewController];
      [v10 pushViewController:v11 animated:1];
    }
  }
}

void sub_10000C928(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000C9C4;
  v3[3] = &unk_10001CB00;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(&_dispatch_main_q, v3);
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10000C9C4(uint64_t a1)
{
  v2 = [*(a1 + 32) navController];
  [v2 pushViewController:*(a1 + 40) animated:1];
}

void sub_10000CB68(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) _prebuddyTelemetryForStep:*(a1 + 40)];
  v9 = 0;
  v4 = [v2 logPrebuddyFlowTelemetry:v3 error:&v9];
  v5 = v9;
  if ((v4 & 1) == 0)
  {
    v6 = MBGetDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      *buf = 134218242;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to log prebuddy flow telemetry at %ld: %@", buf, 0x16u);
      v8 = *(a1 + 40);
      _MBLog();
    }
  }
}

void sub_10000CF44(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000CFE0;
  v3[3] = &unk_10001CB00;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(&_dispatch_main_q, v3);
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10000CFE0(uint64_t a1)
{
  v2 = [*(a1 + 32) navController];
  [v2 pushViewController:*(a1 + 40) animated:1];
}