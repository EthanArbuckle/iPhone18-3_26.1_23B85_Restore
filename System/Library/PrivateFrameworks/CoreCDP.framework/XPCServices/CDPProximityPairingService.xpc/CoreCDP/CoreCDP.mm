int main(int argc, const char **argv, const char **envp)
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CDPProximityPairingService starting up...", v7, 2u);
  }

  v4 = objc_opt_new();
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];

  return 0;
}

void sub_100000ED0(os_log_t log)
{
  v1 = 138412290;
  v2 = @"com.apple.CDPProximityPairingService";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Connection to %@ is missing entitlements. Rejecting connection...", &v1, 0xCu);
}