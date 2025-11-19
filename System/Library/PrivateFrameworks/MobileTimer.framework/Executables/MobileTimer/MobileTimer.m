uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MTLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "mobiletimerd starting...", v7, 2u);
  }

  v2 = dispatch_get_global_queue(2, 0);
  dispatch_async(v2, &stru_100004098);

  do
  {
    v3 = objc_autoreleasePoolPush();
    v4 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 10.0, 0);
    objc_autoreleasePoolPop(v3);
  }

  while ((v4 - 3) < 0xFFFFFFFE);
  v5 = MTLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000009A4(v5);
  }

  objc_autoreleasePoolPop(v0);
  return 0;
}