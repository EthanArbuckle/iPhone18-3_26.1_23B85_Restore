int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_10000194C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

id sub_100001974()
{
  if (qword_100008768 != -1)
  {
    sub_100001A98();
  }

  v1 = qword_100008770;

  return v1;
}

void sub_1000019B8(id a1)
{
  qword_100008770 = os_log_create("com.apple.HealthAlgorithms", "historical_analyzer_service");

  _objc_release_x1();
}