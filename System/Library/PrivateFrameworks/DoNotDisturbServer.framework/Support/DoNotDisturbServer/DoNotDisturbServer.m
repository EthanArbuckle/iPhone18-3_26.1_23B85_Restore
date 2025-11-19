void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_transaction_create();
  _set_user_dir_suffix();
  DNDSRunServer();

  objc_autoreleasePoolPop(v0);
  dispatch_main();
}