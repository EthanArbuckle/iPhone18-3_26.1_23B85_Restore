void sub_100000F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100000FD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100000FE8(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v21 = a3;
  if (v21)
  {
    if (qword_100008158 != -1)
    {
      sub_100001514();
    }

    v5 = qword_100008160;
    if (os_log_type_enabled(qword_100008160, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Got reply with error : %@ , diagnostic extention export error", buf, 0xCu);
    }
  }

  if ([*(*(*(a1 + 48) + 8) + 40) BOOLValue])
  {
    if (qword_100008158 != -1)
    {
      sub_100001528();
    }

    v6 = qword_100008160;
    if (os_log_type_enabled(qword_100008160, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "database export reply called with urls: %@", buf, 0xCu);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v23;
    v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = *v26;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * v9);
          v11 = +[NSFileManager defaultManager];
          v12 = [v10 path];
          v13 = [v11 fileExistsAtPath:v12];

          if ((v13 & 1) == 0)
          {
            if (qword_100008158 != -1)
            {
              sub_100001528();
            }

            v19 = qword_100008160;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [v10 path];
              *buf = 138412290;
              v31 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Diagnostics extension non existing file, got a non-existing file from exportDatabase! This should never happen. path: %@", buf, 0xCu);
            }

            dispatch_semaphore_signal(*(a1 + 32));
            goto LABEL_37;
          }

          v14 = [v10 path];
          v15 = [DEAttachmentItem attachmentWithPath:v14];

          [v15 setDeleteOnAttach:&__kCFBooleanTrue];
          [v15 setShouldCompress:&__kCFBooleanTrue];
          if (qword_100008158 != -1)
          {
            sub_100001528();
          }

          v16 = qword_100008160;
          if (os_log_type_enabled(qword_100008160, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MiLoAttachment attachment : %@", buf, 0xCu);
          }

          [*(a1 + 40) addObject:v15];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    if (qword_100008158 != -1)
    {
      sub_100001528();
    }

    v17 = qword_100008160;
    if (os_log_type_enabled(qword_100008160, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "database export reply finished", buf, 2u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    if (qword_100008158 != -1)
    {
      sub_100001528();
    }

    v18 = qword_100008160;
    if (os_log_type_enabled(qword_100008160, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Diagnostics extension export timeout, export timed out", buf, 2u);
    }
  }

LABEL_37:
}

void sub_1000014D0(id a1)
{
  qword_100008160 = os_log_create("com.apple.MicroLocation", "MicroLocation");

  _objc_release_x1();
}