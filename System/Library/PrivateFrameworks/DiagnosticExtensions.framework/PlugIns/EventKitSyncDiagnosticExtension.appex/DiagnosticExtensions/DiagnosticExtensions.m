void sub_100000CB4(id a1)
{
  qword_100008140 = os_log_create("com.apple.DiagnosticExtensions.EventKitSync", "NEKDiagnosticExtension");

  _objc_release_x1();
}

void sub_100000EEC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v10 = a2;
  v7 = a3;
  [*(a1 + 32) mergeLogger:a4];
  if (v10)
  {
    v8 = [DEAttachmentItem attachmentWithPathURL:v10];
    [v8 setDeleteOnAttach:&__kCFBooleanTrue];
    [*(a1 + 40) addObject:v8];
  }

  if (v7)
  {
    v9 = [DEAttachmentItem attachmentWithPathURL:v7];
    [v9 setDeleteOnAttach:&__kCFBooleanTrue];
    [v9 setShouldCompress:&__kCFBooleanTrue];
    [*(a1 + 40) addObject:v9];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}