void sub_1814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

BOOL sub_1860(id a1, NSURL *a2)
{
  v2 = a2;
  if (([(NSURL *)v2 ef_hasScheme:@"https"]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(NSURL *)v2 ef_hasScheme:@"http"];
  }

  return v3;
}

void sub_1940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

NSString *__cdecl sub_1BA8(id a1)
{
  v1 = +[JSContext currentThis];
  v2 = +[JSContext currentContext];
  v3 = [WKWebProcessPlugInRangeHandle rangeHandleWithJSValue:v1 inContext:v2];
  v4 = [v3 text];

  return v4;
}

void sub_1C3C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2084(_Unwind_Exception *a1)
{
  v9 = v5;

  _Unwind_Resume(a1);
}

void sub_2290(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) currentJSContext];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

void sub_24DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_25A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_277C(id a1)
{
  v1 = MFLogGeneral();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_34A0(v1);
  }

  [NSObject doesNotRecognizeSelector:NSSelectorFromString(@"SIMULATE_CRASH")];
}

void sub_3358(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

void sub_3448(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "MailWebProcess: failed to load resource. Error: %{public}@", buf, 0xCu);
}