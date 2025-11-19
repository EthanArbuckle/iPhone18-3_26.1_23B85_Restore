void sub_100001810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(va);
  objc_destroyWeak((v16 - 144));
  _Unwind_Resume(a1);
}

void sub_100001860(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _NDOLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100003294(a1);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained finishProcessing];

  (*(*(a1 + 40) + 16))();
}

void sub_1000018F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishProcessing];
}

void sub_100001938(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 40));
  if (v5)
  {
    v7 = [[UINavigationController alloc] initWithRootViewController:v5];
    v8 = objc_loadWeakRetained(&to);
    [v8 setVcToPresent:v7];

    v9 = *(a1 + 32);
    v10 = objc_loadWeakRetained(&to);
    v11 = [v10 vcToPresent];
    (*(v9 + 16))(v9, v11 == 0);
  }

  else
  {
    v12 = _NDOLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100003318();
    }

    (*(*(a1 + 32) + 16))();
  }

  objc_destroyWeak(&to);
}

void sub_100001D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001D4C(id *a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 9);

  if (WeakRetained)
  {
    objc_copyWeak(&to, a1 + 9);
    if (v4)
    {
      v6 = [v4 device];
      [a1[4] setPresentedDeviceType:{objc_msgSend(v6, "deviceType")}];

      v7 = [a1[5] identifier];
      v8 = [v7 isEqualToString:@"com.followup.ndo_followup_open_action"];

      if (!v8)
      {
        goto LABEL_14;
      }

      v34[0] = @"devicetype";
      v9 = [v4 device];
      v10 = [v9 deviceTypeString];
      v34[1] = @"remainingdays";
      v35[0] = v10;
      v11 = [v4 warranty];
      if (v11)
      {
        v2 = [v4 warranty];
        v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v2 daysEligible]);
      }

      else
      {
        v12 = &off_1000086D8;
      }

      v35[1] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
      if (v11)
      {
      }

      [NDOManager postCAEventFor:@"com.apple.newdeviceoutreach.purchaseflow.followup" eventDict:v13];
    }

    else
    {
      v13 = _NDOLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10000341C(a1);
      }
    }

LABEL_14:
    v14 = [a1[5] identifier];
    v15 = [v14 isEqualToString:@"FollowupActionIdentifierClear"] ^ 1;
    if (!v4)
    {
      LOBYTE(v15) = 0;
    }

    if (v15)
    {
      v16 = [v4 warranty];
      v17 = [v16 acOfferEligible];

      if (v17)
      {
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100002298;
        v23[3] = &unk_1000082D0;
        v24 = a1[5];
        v25 = a1[7];
        v26 = v4;
        objc_copyWeak(&v29, &to);
        v28 = a1[8];
        v27 = a1[6];
        dispatch_async(&_dispatch_main_q, v23);

        objc_destroyWeak(&v29);
        v18 = &v24;
        v19 = &v25;
        v20 = v26;
LABEL_21:

        objc_destroyWeak(&to);
        goto LABEL_22;
      }
    }

    else
    {
    }

    v20 = objc_loadWeakRetained(&to);
    v21 = [v20 manager];
    v22 = a1[6];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100002144;
    v30[3] = &unk_1000082A8;
    v31 = v22;
    v32 = a1[8];
    [v21 dismissFollowUpForSerialNumber:v31 completion:v30];

    v18 = &v31;
    v19 = &v32;
    goto LABEL_21;
  }

  (*(a1[8] + 2))();
LABEL_22:
}

void sub_100002144(uint64_t a1, int a2)
{
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Failed to dismiss";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"Dismissed";
    }

    *buf = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ followup up for %@", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002284;
  block[3] = &unk_100008280;
  v8 = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100002298(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [v2 isEqualToString:@"com.followup.ndo_followup_open_action"];

  if (v3)
  {
    v4 = [*(a1 + 40) userInfo];
    v5 = [v4 objectForKeyedSubscript:@"com.applecare.followup.saleflowsource"];

    if (([NDOTypeChecking isNotEmptyString:v5]& 1) == 0)
    {
      v6 = _NDOLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000034A8();
      }

      v5 = @"UNKNOWN_FOLLOW_UP";
    }

    v7 = [[NDOAppleCareViewController alloc] initWithDeviceInfo:*(a1 + 48) presentationType:1 source:v5 deeplinkParams:0];
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    [v7 setPresentor:WeakRetained];

    v9 = [[UINavigationController alloc] initWithRootViewController:v7];
    v10 = objc_loadWeakRetained((a1 + 72));
    [v10 setVcToPresent:v9];

    v11 = *(a1 + 64);
    v12 = objc_loadWeakRetained((a1 + 72));
    v13 = [v12 vcToPresent];
    (*(v11 + 16))(v11, v13 == 0);
  }

  else
  {
    v14 = [*(a1 + 32) identifier];
    v15 = [v14 isEqualToString:@"com.followup.ndo_notification_clear_action"];

    if (v15)
    {
      v16 = _NDOLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v29 = "[NDOAppleCareLandingViewController processFollowUpItem:selectedAction:completion:]_block_invoke";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: Clear notification button clicked", buf, 0xCu);
      }
    }

    else
    {
      v17 = objc_loadWeakRetained((a1 + 72));
      v18 = [v17 presentedDeviceType];

      if (v18 == 1)
      {
        v19 = @"bridge:root=GENERAL_LINK&path=ABOUT/WARRANTY_DESCRIPTION";
      }

      else
      {
        v19 = @"prefs:root=General&path=COVERAGE/";
      }

      v16 = [NSURL URLWithString:v19];
      v26[0] = FBSOpenApplicationOptionKeyUnlockDevice;
      v26[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
      v27[0] = &__kCFBooleanTrue;
      v27[1] = &__kCFBooleanTrue;
      v20 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
      v21 = +[LSApplicationWorkspace defaultWorkspace];
      [v21 openSensitiveURL:v16 withOptions:v20];
    }

    v22 = objc_loadWeakRetained((a1 + 72));
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000025FC;
    v24[3] = &unk_100008280;
    v23 = *(a1 + 56);
    v25 = *(a1 + 64);
    [v22 _clearNotificationForSerialNumber:v23 completion:v24];

    v5 = v25;
  }
}

void sub_1000025FC(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002680;
  block[3] = &unk_100008280;
  v2 = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10000276C(uint64_t a1, int a2)
{
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Failed to dismiss";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"Dismissed";
    }

    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ notification for %@", &v8, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_100002CC4(uint64_t a1, int a2)
{
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Failed to dismiss";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = @"Dismissed";
    }

    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ followup up for %@", &v7, 0x16u);
  }
}

void sub_100002D9C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device info refreshed after outreach completion: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100003528();
  }

  if (*(a1 + 40) == 2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002EDC;
    block[3] = &unk_100008388;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100002EDC(uint64_t a1)
{
  if ([*(a1 + 32) presentedDeviceType] == 1)
  {
    v2 = @"bridge:root=GENERAL_LINK&path=ABOUT/WARRANTY_DESCRIPTION";
  }

  else
  {
    v2 = @"prefs:root=General&path=COVERAGE/";
  }

  v4 = [NSURL URLWithString:v2];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];

  [*(a1 + 32) finishProcessing];
}

uint64_t sub_100003044()
{
  v0 = sub_100003578();
  sub_100003230(v0, qword_10000C698);
  sub_100003124(v0, qword_10000C698);
  return sub_100003568();
}

uint64_t sub_1000030C0()
{
  if (qword_10000C690 != -1)
  {
    swift_once();
  }

  v0 = sub_100003578();

  return sub_100003124(v0, qword_10000C698);
}

uint64_t sub_100003124(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000315C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C690 != -1)
  {
    swift_once();
  }

  v2 = sub_100003578();
  v3 = sub_100003124(v2, qword_10000C698);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_100003230(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void sub_100003294(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = 138412546;
  sub_100003028();
  v5 = v2;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to open url: %@, with error: %@", v4, 0x16u);
}

void sub_100003318()
{
  sub_100003028();
  sub_100003038();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100003398()
{
  v2[0] = 136446466;
  sub_100003028();
  v3 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "%{public}s: Followup up serial number %@", v2, 0x16u);
}

void sub_10000341C(uint64_t a1)
{
  v6 = *(a1 + 48);
  sub_100003038();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}