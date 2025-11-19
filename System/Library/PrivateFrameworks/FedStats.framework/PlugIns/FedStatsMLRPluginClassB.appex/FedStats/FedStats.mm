void sub_100001C60(uint64_t a1)
{
  v2 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000030E0(a1);
  }
}

void sub_100001CC4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = +[FedStatsPluginLog logger];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100003168(a1);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_100001EAC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[FedStatsPluginLog logger];
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100003288(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100003304(a1);
  }
}

void sub_100002778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000027A0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100002F38(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_100002F60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1000028FC();
  sub_100002930();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);
}

void sub_100003068(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@ does not exist, metadata is not changed, will use Dedisco V1.", &v2, 0xCu);
}

void sub_1000030E0(uint64_t a1)
{
  v5 = *(a1 + 32);
  sub_100002930();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
}

void sub_100003168(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000028FC();
  sub_100002930();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_1000031E4(uint64_t a1, void *a2)
{
  v2 = [a2 namespaceIdentifier];
  sub_100002920();
  sub_100002910();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_100003288(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000028FC();
  sub_100002930();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_100003304(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) namespaceIdentifier];
  sub_100002920();
  sub_100002910();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1000033A4(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 componentsJoinedByString:{@"', ''"}];
  v6 = [a2 namespaceIdentifier];
  v7 = 138412546;
  v8 = v5;
  sub_100002920();
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Removing factors '%@' for namespace %@", &v7, 0x16u);
}

void sub_1000034B0(void *a1)
{
  v6 = [a1 namespaceIdentifier];
  sub_100002910();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}