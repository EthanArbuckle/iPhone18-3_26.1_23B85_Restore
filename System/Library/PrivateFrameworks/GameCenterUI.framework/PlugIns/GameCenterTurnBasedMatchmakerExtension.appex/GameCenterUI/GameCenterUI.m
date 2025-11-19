void sub_100001504(id a1, NSError *a2)
{
  v2 = a2;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKHosted;
  if (os_log_type_enabled(os_log_GKHosted, OS_LOG_TYPE_DEBUG))
  {
    sub_100001AE4(v4, v2);
  }
}

void sub_100001A6C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "error while decoding messageFromClient archive in GKTurnBasedMatchmakerExtensionViewController:%@", &v2, 0xCu);
}

void sub_100001AE4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "error calling host - %@", &v5, 0xCu);
}