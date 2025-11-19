int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  bzero(v11, 0x400uLL);
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100000B28();
    }

LABEL_11:

    exit(1);
  }

  if (!confstr(65537, v11, 0x400uLL))
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100000C28();
    }

    goto LABEL_11;
  }

  v4 = realpath_DARWIN_EXTSN(v11, 0);
  if (!v4)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100000BA8();
    }

    goto LABEL_11;
  }

  free(v4);
  [NSError _setFileNameLocalizationEnabled:0];
  v5 = objc_opt_new();
  v6 = qword_100008028;
  qword_100008028 = v5;

  v7 = +[BMXPCListener serviceListener];
  v8 = qword_100008020;
  qword_100008020 = v7;

  [qword_100008020 setDelegate:qword_100008028];
  objc_autoreleasePoolPop(v3);
  [qword_100008020 activate];
  return 1;
}

void sub_100000B08(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}