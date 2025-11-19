int64_t sub_100000E60(id a1, NSURL *a2, NSURL *a3)
{
  v9 = 0;
  v4 = a3;
  [(NSURL *)a2 getResourceValue:&v9 forKey:NSURLContentModificationDateKey error:0];
  v8 = 0;
  v5 = v9;
  [(NSURL *)v4 getResourceValue:&v8 forKey:NSURLContentModificationDateKey error:0];

  v6 = [v8 compare:v5];
  return v6;
}

void sub_100000EFC(void *a1, NSObject *a2)
{
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "error getting file stats: %@", &v4, 0xCu);
}

void sub_100000F94(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "error getting file stats: %@", a1, 0xCu);
}