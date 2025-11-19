void sub_100000F9C(uint64_t a1, double a2)
{
  v4 = qword_100008208;
  if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Update Panic DE log collection progress to TTR: %f", &v6, 0xCu);
  }

  v5 = [[DECollectionProgress alloc] initWithPercentComplete:a2];
  (*(*(a1 + 32) + 16))();
}

void sub_10000176C(id a1)
{
  size = 0;
  v1 = sysctlbyname("kern.bootargs", 0, &size, 0, 0);
  if (v1)
  {
    v2 = v1;
    v3 = qword_100008208;
    if (!os_log_type_enabled(qword_100008208, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 67109120;
    v16 = v2;
    v8 = "Failed to query the size of the boot-args. Error: %d";
    goto LABEL_13;
  }

  if (size)
  {
    v4 = malloc_type_malloc(size, 0x100004077774924uLL);
    if (v4)
    {
      v5 = v4;
      v6 = sysctlbyname("kern.bootargs", v4, &size, 0, 0);
      if (!v6)
      {
        v12 = [NSString stringWithUTF8String:v5];
        v13 = qword_100008210;
        qword_100008210 = v12;

        free(v5);
        return;
      }

      v7 = v6;
      free(v5);
      v3 = qword_100008208;
      if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v16 = v7;
        v8 = "Failed to query the boot-args. Error: %d";
LABEL_13:
        v10 = v3;
        v11 = 8;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = qword_100008208;
      if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v8 = "Failed to allocate memory for the boot-args";
        v10 = v9;
        v11 = 2;
LABEL_14:
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v8, buf, v11);
      }
    }
  }
}

void sub_100001930(id a1)
{
  memset(v6, 0, sizeof(v6));
  v5 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v6, &v5, 0, 0))
  {
    v1 = qword_100008208;
    if (os_log_type_enabled(qword_100008208, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Failed to get kern.bootsessionuuid", v4, 2u);
    }
  }

  else
  {
    v2 = [NSString stringWithCString:v6 encoding:4];
    v3 = qword_100008220;
    qword_100008220 = v2;
  }
}