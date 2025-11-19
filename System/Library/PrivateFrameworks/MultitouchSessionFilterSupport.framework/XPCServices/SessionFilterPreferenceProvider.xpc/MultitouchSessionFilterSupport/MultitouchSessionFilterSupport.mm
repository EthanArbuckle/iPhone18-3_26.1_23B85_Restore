int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id MTLoggingPreferenceProvider()
{
  if (MTLoggingPreferenceProvider_onceToken != -1)
  {
    MTLoggingPreferenceProvider_cold_1();
  }

  v1 = MTLoggingPreferenceProvider___logObj;

  return v1;
}