int main(int argc, const char **argv, const char **envp)
{
  setiopolicy_np(3, 0, 1);
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100001190(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) url];
    [v2 stopAccessingSecurityScopedResource];
  }
}

void sub_1000014C8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) url];
    [v2 stopAccessingSecurityScopedResource];
  }
}

void sub_100001544(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1000015CC(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = @"com.apple.Fallback";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[Rename] Could not determine bundle of caller, using generic fallback: %@. Error %@.", &v2, 0x16u);
}