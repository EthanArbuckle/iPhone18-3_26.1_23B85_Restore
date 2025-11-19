void sub_100000E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100000EB0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100000EC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = &IRLogObject;
  if (v6)
  {
    v8 = IRLogObject;
    if (os_log_type_enabled(IRLogObject, OS_LOG_TYPE_ERROR))
    {
      sub_100001250(v6, v8);
    }
  }

  v9 = [*(*(*(a1 + 48) + 8) + 40) BOOLValue];
  v10 = IRLogObject;
  if (v9)
  {
    v25 = v6;
    if (os_log_type_enabled(IRLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#diagnosticExtension, database export reply called with urls: %@", buf, 0xCu);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = v5;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          v15 = v7;
          if (*v29 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = +[NSFileManager defaultManager];
          v18 = [v16 path];
          v19 = [v17 fileExistsAtPath:v18];

          if ((v19 & 1) == 0)
          {
            v24 = *v15;
            if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
            {
              sub_10000130C(v24, v16);
            }

            dispatch_semaphore_signal(*(a1 + 32));

            goto LABEL_25;
          }

          v20 = [v16 path];
          v21 = [DEAttachmentItem attachmentWithPath:v20];

          [v21 setDeleteOnAttach:&__kCFBooleanTrue];
          [v21 setShouldCompress:&__kCFBooleanTrue];
          v7 = v15;
          v22 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v34 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#diagnosticExtension, intelligentRoutingAttachment attachment: %@", buf, 0xCu);
          }

          [*(a1 + 40) addObject:v21];
        }

        v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v23 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#diagnosticExtension, database export reply finished", buf, 2u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
LABEL_25:
    v6 = v25;
    v5 = v26;
  }

  else if (os_log_type_enabled(IRLogObject, OS_LOG_TYPE_ERROR))
  {
    sub_1000012C8(v10);
  }
}

void sub_100001250(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#diagnosticExtension, [ErrorId - Diagnostics extension export error] got reply with error: %@", &v2, 0xCu);
}

void sub_10000130C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 path];
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#diagnosticExtension, [ErrorId - Diagnostics extension non existing file] got a non-existing file from exportDatabase! This should never happen. path: %@", &v5, 0xCu);
}