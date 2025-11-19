int main(int argc, const char **argv, const char **envp)
{
  v3 = [SBRendererServiceConnection alloc];
  v4 = objc_alloc_init(PBUIRenderService);
  v5 = objc_opt_new();
  v6 = [(SBRendererServiceConnection *)v3 initWithRenderService:v4 analysisServer:v5];

  v7 = +[NSXPCListener serviceListener];
  v8 = [(SBRendererServiceConnection *)v6 activateWithListener:v7];

  return 0;
}

id SBRSLogCommon()
{
  if (qword_10000DCF0 != -1)
  {
    sub_100003440();
  }

  v1 = qword_10000DCE8;

  return v1;
}

void sub_100001124(id a1)
{
  qword_10000DCE8 = os_log_create("com.apple.SBRendererService", "Common");

  _objc_release_x1();
}

id SBRSLogXPC()
{
  if (qword_10000DD00 != -1)
  {
    sub_100003454();
  }

  v1 = qword_10000DCF8;

  return v1;
}

void sub_1000011AC(id a1)
{
  qword_10000DCF8 = os_log_create("com.apple.SBRendererService", "XPC");

  _objc_release_x1();
}

id SBRSLogImageAnalysis()
{
  if (qword_10000DD10 != -1)
  {
    sub_100003468();
  }

  v1 = qword_10000DD08;

  return v1;
}

void sub_100001234(id a1)
{
  qword_10000DD08 = os_log_create("com.apple.SBRendererService", "ImageAnalysis");

  _objc_release_x1();
}

void sub_100001450(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) operations];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 request];
        v9 = [v8 requestIdentifier];
        v10 = [v9 isEqual:*(a1 + 40)];

        if (v10)
        {
          [v7 cancel];
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_100001798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_1000017D8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancelRequest:*(a1 + 32)];
}

void sub_100001BA4(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [*(a1 + 32) operations];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) cancel];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_10000203C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100002068(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) UTF8String];
    v3 = os_transaction_create();
    v4 = *(WeakRetained + 3);
    *(WeakRetained + 3) = v3;

    v5 = [*(WeakRetained + 9) requestedAnalyses];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      v9 = PUIAnalysisDetermineProminentColor;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v13 + 1) + 8 * v10) isEqual:v9])
          {
            v11 = objc_loadWeakRetained((a1 + 40));
            [v11 _determineProminentColor];
          }

          v10 = v10 + 1;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [WeakRetained _fireCompletionWithError:0];
    v12 = *(WeakRetained + 3);
    *(WeakRetained + 3) = 0;
  }
}

void sub_1000021EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fireCompletionWithError:0];
}

void sub_1000025D0(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 isEqualToString:PUIAnalysisDetermineProminentColor])
  {
    v3 = *(*(a1 + 32) + 40);
    if (v3)
    {
      [*(a1 + 40) setObject:v3 forKeyedSubscript:v4];
    }
  }
}

void sub_100002764(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100002788(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    objc_sync_enter(v9);
    if (v6)
    {
      [v9 _fireCompletionWithError:v6];
    }

    else
    {
      objc_storeStrong(v9 + 5, a2);
    }

    objc_sync_exit(v9);
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100003170(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = SBRSLogXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100003614(a1);
  }
}

void sub_1000033F8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x1Cu);
}

void sub_100003424(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x12u);
}

void sub_10000347C(const char *a1, uint64_t a2)
{
  v4 = [NSString stringWithFormat:@"Invalid condition not satisfying: %@", @"listener"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBRendererServiceConnection.m";
    v16 = 1024;
    v17 = 34;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void sub_100003614(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = CFAbsoluteTimeGetCurrent() - *(a1 + 40);
  sub_100003418();
  sub_1000033E4();
  sub_1000033F8(&_mh_execute_header, v3, v4, "(%d) end %{public}s (serviced in %f s)", v5, v6, v7, v8, 2u);
}

void sub_100003734()
{
  CFAbsoluteTimeGetCurrent();
  sub_100003418();
  sub_1000033E4();
  sub_1000033F8(&_mh_execute_header, v0, v1, "(%d) end %{public}s (serviced in %f s)", v2, v3, v4, v5, 2u);
}

void sub_100003850()
{
  CFAbsoluteTimeGetCurrent();
  sub_100003418();
  sub_1000033E4();
  sub_1000033F8(&_mh_execute_header, v0, v1, "(%d) end %{public}s (serviced in %f s)", v2, v3, v4, v5, 2u);
}