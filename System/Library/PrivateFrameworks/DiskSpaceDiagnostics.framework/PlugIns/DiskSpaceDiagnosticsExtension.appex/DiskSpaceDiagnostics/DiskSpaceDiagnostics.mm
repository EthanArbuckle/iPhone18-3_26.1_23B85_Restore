id shared_diagnostics_extension_log_handle()
{
  if (shared_diagnostics_extension_log_handle_onceToken != -1)
  {
    shared_diagnostics_extension_log_handle_cold_1();
  }

  v1 = shared_diagnostics_extension_log_handle___log_handle;

  return v1;
}

void __shared_diagnostics_extension_log_handle_block_invoke(id a1)
{
  shared_diagnostics_extension_log_handle___log_handle = os_log_create("com.apple.diskspacediagnostics", "DiskSpaceDiagnosticsExtension");

  _objc_release_x1();
}

void sub_1000011C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}