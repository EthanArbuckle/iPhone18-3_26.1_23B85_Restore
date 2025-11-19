void sub_24AE93734(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24AE95CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_24AE96178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void _fmipStateChangeNotificationReceived()
{
  v0 = +[FMDUIFMIPSettingsCache sharedInstance];
  [v0 _loadFMIPState];
}

void _lowBatteryLocateStateChangeNotificationReceived()
{
  v0 = +[FMDUIFMIPSettingsCache sharedInstance];
  [v0 _loadLowBatteryState];
}

void sub_24AE96FEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_24AE97150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id LogCategory_Unspecified()
{
  if (LogCategory_Unspecified_onceToken != -1)
  {
    LogCategory_Unspecified_cold_1();
  }

  v1 = LogCategory_Unspecified_log;

  return v1;
}