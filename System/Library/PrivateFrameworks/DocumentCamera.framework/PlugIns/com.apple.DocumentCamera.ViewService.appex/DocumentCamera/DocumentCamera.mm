void sub_1000018E4(void *a1, NSObject *a2)
{
  v3 = [a1 session];
  v4 = [v3 sessionRequest];
  v5 = [v4 appName];
  v6 = 138412290;
  v7 = v5;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Goodbye, %@.", &v6, 0xCu);
}