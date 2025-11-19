void sub_10000118C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [[DNDGetFocusStateIntentResponse alloc] initWithCode:a2 userActivity:0];
  [(DNDGetFocusStateIntentResponse *)v6 setState:a3];
  v5[2](v5, v6);
}

void DNDIntentRegisterLogging()
{
  if (qword_10000D638 != -1)
  {
    sub_100002290();
  }
}

void sub_100001328(id a1)
{
  DNDIntentLog = os_log_create("com.apple.donotdisturb", "Intents");

  _objc_release_x1();
}

void sub_100001CB0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100001CCC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100001E2C(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  v4 = [INSetBinarySettingIntentResponse alloc];
  if (v3 == 5)
  {
    v5 = [v4 initWithCode:4 userActivity:0];
  }

  else
  {
    v5 = [v4 initWithCode:3 userActivity:0];
    [v5 setUpdatedValue:{objc_msgSend(*(a1 + 32), "binaryValue")}];
    [v5 setOldValue:*(a1 + 48)];
  }

  (*(*(a1 + 40) + 16))();
}