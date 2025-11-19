int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = os_log_create("com.apple.notes", "DataStoreServer");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_100001730(v4);
  }

  v5 = objc_alloc_init(ICDataStoreServer);
  objc_autoreleasePoolPop(v3);
  [(ICDataStoreServer *)v5 startListening];

  return 0;
}

void sub_100000F64(id a1)
{
  v1 = +[ICPaths applicationDocumentsURL];
  v2 = [v1 URLByAppendingPathComponent:@"tmp" isDirectory:1];
  if (v1)
  {
    v3 = [v1 path];
    v4 = setenv("HOME", [v3 fileSystemRepresentation], 1);

    v5 = os_log_create("com.apple.notes", "DataStoreServer");
    v6 = v5;
    if (v4)
    {
      v6 = v5;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100001800();
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10000188C();
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "DataStoreServer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000018FC();
    }
  }

  if (v2)
  {
    v7 = +[NSFileManager defaultManager];
    v16 = 0;
    v8 = [v7 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:&v16];
    v9 = v16;

    if ((v8 & 1) == 0)
    {
      v10 = os_log_create("com.apple.notes", "DataStoreServer");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100001938();
      }
    }

    v11 = [v2 path];
    v12 = setenv("TMPDIR", [v11 fileSystemRepresentation], 1);

    v13 = os_log_create("com.apple.notes", "DataStoreServer");
    v14 = v13;
    if (v12)
    {
      v15 = v13;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000019A8();
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100001A34();
    }
  }

  else
  {
    v9 = 0;
  }
}

void sub_100001774()
{
  sub_1000015B4();
  sub_1000015C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000017B0()
{
  sub_1000015B4();
  sub_1000015A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100001800()
{
  v0 = __error();
  strerror(*v0);
  sub_100001590();
  sub_100001574();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10000188C()
{
  sub_100001584();
  sub_1000015C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000018FC()
{
  sub_1000015B4();
  sub_1000015A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100001938()
{
  sub_100001584();
  sub_1000015A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000019A8()
{
  v0 = __error();
  strerror(*v0);
  sub_100001590();
  sub_100001574();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_100001A34()
{
  sub_100001584();
  sub_1000015C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001AA4()
{
  sub_100001584();
  sub_1000015A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001B14()
{
  dlerror();
  sub_100001584();
  sub_100001574();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001B94()
{
  dlerror();
  sub_100001584();
  sub_100001574();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001C14()
{
  dlerror();
  sub_100001584();
  sub_100001574();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001C94()
{
  sub_100001584();
  sub_1000015A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100001D04()
{
  sub_1000015B4();
  sub_1000015C0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}