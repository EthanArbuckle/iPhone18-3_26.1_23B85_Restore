int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100000F44(void *a1)
{
  v1[0] = 67109120;
  v1[1] = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Process %d is not entitled, rejecting connection", v1, 8u);
}