id PowerMSSLog()
{
  if (qword_100008158 != -1)
  {
    sub_100001170();
  }

  v1 = qword_100008150;

  return v1;
}

void sub_100000BFC(id a1)
{
  qword_100008150 = os_log_create("com.apple.DiagnosticExtensions.Microstackshot", "");

  _objc_release_x1();
}

void sub_100001184(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "MSS file path: %@", &v2, 0xCu);
}