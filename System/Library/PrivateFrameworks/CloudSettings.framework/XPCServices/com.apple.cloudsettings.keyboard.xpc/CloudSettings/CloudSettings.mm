int main(int argc, const char **argv, const char **envp)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "IN XPCSERVICE - MAIN", v6, 2u);
  }

  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100001484(id a1)
{
  v3[0] = TIHWKeyboardGlobeAsEmojiKeyPreference;
  v3[1] = TIHWKeyboardCapsLockRomanSwitchPreference;
  v4[0] = @"KB_FnKeyFunction";
  v4[1] = @"KB_CapsLockSwitch";
  v3[2] = TIHWKeyboardAutocapitalizationPreference;
  v3[3] = TIHWKeyboardAutocorrectionPreference;
  v4[2] = @"KB_AutomaticCapitalization";
  v4[3] = @"KB_AutomaticSpellingCorrection";
  v3[4] = TIHWKeyboardPeriodShortcutPreference;
  v4[4] = @"KB_AutomaticPeriod";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:5];
  v2 = qword_10000C950;
  qword_10000C950 = v1;
}

void sub_10000362C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}