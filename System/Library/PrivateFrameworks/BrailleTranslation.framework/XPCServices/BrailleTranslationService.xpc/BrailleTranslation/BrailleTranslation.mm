uint64_t start()
{
  v0 = objc_alloc_init(ServiceDelegate);
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];

  return 0;
}

void sub_100000C54(void *a1, NSObject *a2)
{
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1 processIdentifier]);
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Client attempted to connect without access entitlement. pid:%@ connection:%@", &v5, 0x16u);
}