int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_100000D6C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "IVRConversationAssistantXPC bring up", v10, 2u);
  }

  v4 = objc_opt_new();
  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v4];
  [v5 resume];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_DEFAULT, 0);

  v8 = dispatch_queue_create("com.apple.IVRConversationAssistantXPC.ServicesQueue", v7);
  dispatch_async(v8, &stru_100004138);

  return 0;
}

id sub_100000D6C()
{
  if (qword_100008840 != -1)
  {
    sub_1000014F8();
  }

  v1 = qword_100008838;

  return v1;
}

void sub_100000DB0(id a1)
{
  v1 = sub_100000D6C();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "IVRConversationAssistantXPC launching shared services", v3, 2u);
  }

  v2 = +[Transcriber sharedInstance];
}

void sub_100000E2C(id a1)
{
  qword_100008838 = os_log_create("com.apple.ivrconversationassistant", "IVRCADefaultLog");

  _objc_release_x1();
}

void sub_1000010C4(id a1)
{
  qword_100008848 = objc_alloc_init(Transcriber);

  _objc_release_x1();
}

void sub_1000012A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100008860 != -1)
  {
    sub_100001520();
  }

  v4 = qword_100008858;
  if (os_log_type_enabled(qword_100008858, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [v3 transcribedText];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Transcribed data: %@", &v8, 0xCu);
  }

  v7 = [v3 transcribedText];
  [*(a1 + 32) setTranscription:v7];
}

void sub_1000014B4(id a1)
{
  qword_100008858 = os_log_create("com.apple.ivrconversationassistant", "IVRCADefaultLog");

  _objc_release_x1();
}