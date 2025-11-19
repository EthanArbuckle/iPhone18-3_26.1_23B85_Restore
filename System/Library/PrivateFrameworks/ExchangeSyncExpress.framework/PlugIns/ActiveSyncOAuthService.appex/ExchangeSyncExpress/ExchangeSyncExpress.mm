void sub_10000157C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v3, v4))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "DAEASOAuthWebAuthServiceController did completeRequestReturningItems: with expired %d", v5, 8u);
  }
}