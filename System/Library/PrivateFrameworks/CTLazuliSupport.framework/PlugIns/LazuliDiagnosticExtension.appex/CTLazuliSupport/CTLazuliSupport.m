void sub_100000F18(_Unwind_Exception *a1)
{
  v5 = v2;

  container_query_free();
  _Unwind_Resume(a1);
}

void sub_1000011AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100001240(uint64_t a1)
{
  v1 = 136446210;
  v2 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error executing query: %{public}s", &v1, 0xCu);
}