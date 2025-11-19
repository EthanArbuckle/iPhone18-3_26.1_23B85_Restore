int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = qword_100008640;
  qword_100008640 = v3;

  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:qword_100008640];
  [v5 resume];
  v6 = +[NSRunLoop currentRunLoop];
  [v6 run];

  return 0;
}