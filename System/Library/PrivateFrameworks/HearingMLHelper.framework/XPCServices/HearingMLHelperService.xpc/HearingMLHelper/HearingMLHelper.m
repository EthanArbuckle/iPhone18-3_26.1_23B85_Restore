void sub_100001090(uint64_t a1)
{
  v2 = AXLogUltronKShot();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "XPC Server - forwarding training request to delegate for detector ID: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) delegate];
  [v4 trainWithDetectorID:*(a1 + 32) hallucinatorPath:*(a1 + 48) pretrainedWeightsPath:*(a1 + 56) resultHandler:*(a1 + 64)];
}

void sub_1000013F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000143C(id a1)
{
  v1 = AXLogUltronKShot();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Connection from client interrupted", v2, 2u);
  }
}

void sub_1000014A4(uint64_t a1)
{
  v2 = AXLogUltronKShot();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100001EEC(v2);
  }

  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 _destroyXPCConnection:WeakRetained];
}

uint64_t _AXMProcessRequestMobileUserPrivileges()
{
  result = getpwnam("mobile");
  if (result)
  {
    v1 = result;
    if (getuid() == *(result + 16))
    {
      return 1;
    }

    else
    {
      return !setgid(*(v1 + 20)) && setuid(*(v1 + 16)) == 0;
    }
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "*** HearingMLHelperService is starting ***", v7, 2u);
  }

  if (_AXMProcessRequestMobileUserPrivileges())
  {
    v4 = objc_alloc_init(HearingMLHelperServiceInstance);
    [(HearingMLHelperServiceInstance *)v4 run];
    v5 = 0;
  }

  else
  {
    v4 = AXLogUltron();
    if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
    {
      sub_100001FAC(&v4->super);
    }

    v5 = -1;
  }

  return v5;
}

void sub_100001D34(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Run XPC Server: %@", &v2, 0xCu);
}

void sub_100001DAC(void *a1, NSObject *a2)
{
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [a1 processIdentifier]);
  v5 = 138412546;
  v6 = v4;
  v7 = 2112;
  v8 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Invalid client tried to connect to HearingMLHelperService. Does not have entitlement: com.apple.accessibility.HearingMLHelperService-access. PID:%@. connection: %@", &v5, 0x16u);
}

void sub_100001E74(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Entitlement check passed for connection: %@", &v2, 0xCu);
}

void sub_100001F30(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to get entitlements for client task. Error: %@", &v3, 0xCu);
}

void sub_100001FF0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Training failed for detector ID: %@ with error: %@", &v3, 0x16u);
}

void sub_100002078(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Training completed for detector ID: %@ but returned nil model URL with no error", &v2, 0xCu);
}