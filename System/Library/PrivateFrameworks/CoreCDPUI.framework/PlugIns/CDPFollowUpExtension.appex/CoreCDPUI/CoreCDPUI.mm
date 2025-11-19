void sub_100001E38(uint64_t a1)
{
  if (+[CDPUtilities canEnableMultiUserManatee])
  {
    v2 = _CDPLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v7 = 141558274;
      v8 = 1752392040;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MUM - setting up context with altDSID %{mask.hash}@", &v7, 0x16u);
    }

    v4 = [CDPContext contextForAccountWithAltDSID:*(a1 + 32)];
  }

  else
  {
    v4 = +[CDPContext contextForPrimaryAccount];
  }

  v5 = v4;
  v6 = [*(a1 + 40) uniqueIdentifier];
  [v5 setFollowUpType:v6];

  [v5 setTelemetryFlowID:*(*(a1 + 48) + 120)];
  [*(a1 + 48) _setupWithContext:v5];
  (*(*(a1 + 56) + 16))();
}

uint64_t sub_100001F94(uint64_t a1)
{
  [*(a1 + 32) _setupEncryptionFlowContextWithAltDSID:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void sub_100001FE0(uint64_t a1)
{
  v3 = +[CDPContext contextForPrimaryAccount];
  v2 = [*(a1 + 32) uniqueIdentifier];
  [v3 setFollowUpType:v2];

  [v3 setTelemetryFlowID:*(*(a1 + 40) + 120)];
  [*(a1 + 40) _setupSOSCompatibilityModeEnabledFlowWithContext:v3];
  (*(*(a1 + 48) + 16))();
}

void sub_100002088(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 32) + 72);
      v10 = 138412802;
      v11 = v8;
      v12 = 1024;
      v13 = 1;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CDPFollowUpViewController: Successfully completed displaying AuthKit Server UI with urlKey=%@, sucess=%{BOOL}d, error=%@", &v10, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100006A34(a1, v5, v7);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, 1);
  }
}

void sub_1000021B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v2[9];
  v5 = [*(a1 + 48) uniqueIdentifier];
  [v2 _presentAKServerUIWithUrlKey:v4 altDSID:v3 itemID:v5 completion:*(a1 + 56)];
}

void sub_10000222C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002304;
  block[3] = &unk_1000104F0;
  v13 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v12 = *(a1 + 48);
  v11 = *(a1 + 40);
  v7 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100002304(uint64_t a1)
{
  v3 = (a1 + 64);
  v2 = *(a1 + 64);
  if (!v2 || *(a1 + 32))
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100006ACC(v3, a1, v4);
    }

    v2 = *v3;
  }

  if (v2 != 1)
  {
    [*(a1 + 40) _setupEncryptionFlowContextWithAltDSID:*(a1 + 48)];
    [*(a1 + 40) _setupWithContext:*(*(a1 + 40) + 88)];
    result = *(a1 + 56);
    if (!result)
    {
      return result;
    }

    v7 = *(result + 16);
    return v7();
  }

  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100006B8C();
  }

  [*(a1 + 40) _clearADPUpsellFollowUpWithAKController];
  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);
    return v7();
  }

  return result;
}

void sub_100002BDC(uint64_t a1, void *a2)
{
  v3 = [a2 allHeaderFields];
  v4 = [v3 objectForKeyedSubscript:@"X-Apple-AK-Action"];

  if (v4 && [v4 isEqual:@"delete"])
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100006ED8();
    }

    [*(a1 + 32) _clearFollowUpWithAKControllerWithItemID:*(a1 + 40)];
  }
}

void sub_100002D1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100006F14();
    }
  }

  else
  {
    [*(a1 + 32) _clearLocalSecretCreateFollowUp];
  }

  [*(a1 + 32) finishProcessing];
}

void sub_1000031AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000031E0(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) _clearRecoveryKeyRepairFollowUp];
  }

  v3 = *(a1 + 32);

  return [v3 finishProcessing];
}

void sub_100003220(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2)
  {
    [WeakRetained _clearSOSCompatibilityModeFollowUp];
    WeakRetained = v4;
  }

  [WeakRetained finishProcessing];
}

void sub_100003340(uint64_t a1)
{
  v2 = [*(a1 + 32) _makeADPUpsellLandingPageViewedEventWithCDPContext:*(*(a1 + 32) + 88)];
  v1 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  [v1 sendEvent:v2];
}

void sub_1000034C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100007058();
  }

  [*(a1 + 32) setAdpUpsellLandingScreen:v6];
  [*(a1 + 32) setAdpUpsellErrorPresenter:v5];

  v8 = [[UINavigationController alloc] initWithRootViewController:v6];
  [v8 setNavigationBarHidden:0];
  [v8 setModalInPresentation:1];
  [*(a1 + 32) presentViewController:v8 animated:1 completion:*(a1 + 40)];
}

void sub_1000040EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004C68(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 40) accountStore];
    v7 = *(a1 + 48);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100004D50;
    v9[3] = &unk_100010568;
    v9[4] = *(a1 + 32);
    [v6 saveVerifiedAccount:v7 withCompletionHandler:v9];
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100007198();
    }

    [*(a1 + 32) finishProcessing];
  }
}

void sub_100004D50(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v12 = v7;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Saved verified account with success: %@, error: %{public}@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100004E90;
  v10[3] = &unk_100010568;
  v10[4] = v8;
  [v9 finishCyrusFlowAfterTermsAgreementWithContext:v10];
}

void sub_100005100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100005128(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000051F0;
  block[3] = &unk_100010630;
  objc_copyWeak(&v9, (a1 + 40));
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
}

void sub_1000051F0(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000072EC(a1);
  }
}

void sub_1000054D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000054F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100007458();
  }

  [WeakRetained finishProcessing];
}

void sub_10000587C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000058A0(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = _CDPLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100007580(a1, v5);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000597C;
    block[3] = &unk_100010680;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v8);
  }
}

void sub_10000597C(uint64_t a1)
{
  v3 = +[NSNotificationCenter defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"AAUIWebAccessChangeNotification" object:WeakRetained];
}

void sub_100005AD8(uint64_t a1)
{
  v2 = [*(a1 + 32) adpUpsellErrorPresenter];
  [v2 showErrorAlertTitled:*(a1 + 40) message:*(a1 + 48)];
}

id sub_10000600C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100014E88;
  v7 = qword_100014E88;
  if (!qword_100014E88)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100006850;
    v3[3] = &unk_1000106D0;
    v3[4] = &v4;
    sub_100006850(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000060D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006338(uint64_t a1)
{
  v2 = _CDPLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000078AC(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

Class sub_100006630(uint64_t a1)
{
  sub_100006688();
  result = objc_getClass("AAUISpinnerViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100007A00();
  }

  qword_100014E70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100006688()
{
  v1[0] = 0;
  if (!qword_100014E78)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100006784;
    v1[4] = &unk_100010708;
    v1[5] = v1;
    v2 = off_1000106F0;
    v3 = 0;
    qword_100014E78 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100014E78)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100006784(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100014E78 = result;
  return result;
}

Class sub_1000067F8(uint64_t a1)
{
  sub_100006688();
  result = objc_getClass("AAUIGenericTermsRemoteUI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100007A28();
  }

  qword_100014E80 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100006850(uint64_t a1)
{
  sub_100006688();
  result = objc_getClass("AAUIGrandSlamRemoteUIPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100007A50();
  }

  qword_100014E88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000068A8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000068EC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100006940(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1000069C4()
{
  sub_100006914();
  sub_100006930();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_100006A34(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*(a1 + 32) + 72);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "CDPFollowUpViewController: Failed to display AuthKit Server UI with urlKey=%@, error=%@", &v4, 0x16u);
}

void sub_100006ACC(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [NSNumber numberWithUnsignedInteger:*a1];
  v6 = *(a2 + 32);
  sub_1000068E0();
  v9 = 2112;
  v10 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Issue getting Walrus status (got %@) with error: %@", v8, 0x16u);
}

void sub_100006DA0(id *a1)
{
  v2 = [*a1 telemetryFlowID];
  v8 = [*a1 telemetryDeviceSessionID];
  sub_1000068C4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100006ED8()
{
  sub_100006908();
  sub_1000068D4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100006F7C(uint64_t a1)
{
  v2 = [*(a1 + 88) telemetryFlowID];
  v8 = [*(a1 + 88) telemetryDeviceSessionID];
  sub_1000068C4();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_100007058()
{
  sub_100006908();
  sub_1000068D4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100007268(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CDPFollowUpViewController upsellViewModelDidRequestBeginEnablementFlowWithContext:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s: Upsell landing screen should have been populated. Exiting.", &v1, 0xCu);
}

void sub_1000072EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v10 = [*(a1 + 32) debugDescription];
  v11 = *(a1 + 40);
  sub_1000068C4();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void sub_1000073D4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CDPFollowUpViewController upsellViewModelDidRequestCFUDismissalWithContext:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s: Upsell landing screen should have been populated. Exiting.", &v1, 0xCu);
}

void sub_100007458()
{
  sub_100006914();
  sub_100006930();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000074C8(void *a1)
{
  [a1 BOOLValue];
  sub_1000068C4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
}

void sub_100007580(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v11 = [a2 localizedDescription];
  sub_1000068C4();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_1000077A0()
{
  sub_100006908();
  sub_1000068D4();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000791C()
{
  sub_1000068E0();
  sub_100006930();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}