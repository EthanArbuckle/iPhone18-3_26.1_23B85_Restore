void sub_10000329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000032BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000032D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v7 = qword_100044EF8;
    v24 = qword_100044EF8;
    if (!qword_100044EF8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100003598;
      v26 = &unk_10003CD58;
      v27 = &v21;
      sub_100003598(buf);
      v7 = v22[3];
    }

    v8 = v7;
    _Block_object_dispose(&v21, 8);
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 32);
    v11 = [v9 image];
    v12 = [v11 cgImage];
    v13 = [*(a1 + 40) lastPathComponent];
    v20 = 0;
    v14 = [v10 _blastDoorStoreTemporarySourceImageWithImageRef:v12 sourceURL:v13 error:&v20];
    v15 = v20;
    v16 = *(*(a1 + 56) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v14;

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      [*(a1 + 32) setError:v15];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        *buf = 138412546;
        *&buf[4] = v19;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Failed to generate URL from blast door video reference from sourceURL %@. Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    [*(a1 + 32) setError:v6];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Unable to access blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100003578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003598(uint64_t a1)
{
  sub_100003660();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BlastDoorVideoPreview");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100044EF8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getBlastDoorVideoPreviewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:33 description:{@"Unable to find class %s", "BlastDoorVideoPreview"}];

    __break(1u);
  }
}

void *sub_100003660()
{
  v4[0] = 0;
  if (!qword_100044EE0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000037B4;
    v4[4] = &unk_10003CD90;
    v4[5] = v4;
    v5 = off_10003CDB0;
    v6 = 0;
    qword_100044EE0 = _sl_dlopen();
  }

  v0 = qword_100044EE0;
  if (!qword_100044EE0)
  {
    v0 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"void *BlastDoorLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:29 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1000037B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100044EE0 = result;
  return result;
}

void sub_1000039FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100003A20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v7 = qword_100044EF0;
    v30 = qword_100044EF0;
    if (!qword_100044EF0)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100003DE4;
      v32 = &unk_10003CD58;
      v33 = &v27;
      sub_100003DE4(buf);
      v7 = v28[3];
    }

    v8 = v7;
    _Block_object_dispose(&v27, 8);
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = *(a1 + 32);
    v12 = [v10 image];
    v13 = [v12 cgImage];
    v14 = [*(a1 + 40) lastPathComponent];
    v26 = 0;
    v15 = [v11 _blastDoorStoreTemporarySourceImageWithImageRef:v13 sourceURL:v14 error:&v26];
    v16 = v26;
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v15;

    v19 = *(a1 + 32);
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      v20 = [v10 metadata];
      v21 = [v19 _blastDoorConvertImageMetadata:v20];
      v22 = *(*(a1 + 64) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }

    else
    {
      [*(a1 + 32) setError:v16];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 40);
        *buf = 138412546;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Failed to generate URL from blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    [*(a1 + 32) setError:v6];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Unable to access blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100003D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003DE4(uint64_t a1)
{
  sub_100003660();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BlastDoorLargeImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100044EF0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getBlastDoorLargeImageClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:32 description:{@"Unable to find class %s", "BlastDoorLargeImage"}];

    __break(1u);
  }
}

void sub_100004014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000402C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v7 = qword_100044EE8;
    v17 = qword_100044EE8;
    if (!qword_100044EE8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_10000420C;
      v19 = &unk_10003CD58;
      v20 = &v14;
      sub_10000420C(buf);
      v7 = v15[3];
    }

    v8 = v7;
    _Block_object_dispose(&v14, 8);
    if (objc_opt_isKindOfClass())
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    v10 = [*(a1 + 32) _blastDoorConvertImageMetadata:{v9, v14}];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    [*(a1 + 32) setError:v6];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[BlastDoor] Unable to access blast door reference from sourceURL %@. Error: %@", buf, 0x16u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void sub_10000420C(uint64_t a1)
{
  sub_100003660();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BlastDoorMediaMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100044EE8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getBlastDoorMediaMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:34 description:{@"Unable to find class %s", "BlastDoorMediaMetadata"}];

    __break(1u);
  }
}

void sub_1000047BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000047D8(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100044ED0)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100004A14;
    v6[4] = &unk_10003CD90;
    v6[5] = v6;
    v7 = off_10003CD78;
    v8 = 0;
    qword_100044ED0 = _sl_dlopen();
  }

  if (!qword_100044ED0)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MessagesBlastDoorSupportLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:30 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("IMMessagesBlastDoorInterface");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getIMMessagesBlastDoorInterfaceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PAMediaConversionServiceResourceURLCollectionAccessProvider.m" lineNumber:31 description:{@"Unable to find class %s", "IMMessagesBlastDoorInterface"}];

LABEL_10:
    __break(1u);
  }

  qword_100044EC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000049C4(uint64_t a1)
{
  v2 = sub_100003660();
  result = dlsym(v2, "BlastDoorInstanceTypeHubble");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100044ED8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100004A14(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100044ED0 = result;
  return result;
}

void sub_10000590C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005940(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100005958(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  v10 = [v7 URLByAppendingPathComponent:v9];
  v11 = a1[5];
  v12 = *(a1[6] + 8);
  obj = *(v12 + 40);
  v13 = [v11 copyURL:v8 forRole:v9 toDirectory:v10 error:&obj];

  objc_storeStrong((v12 + 40), obj);
  if ((v13 & 1) == 0)
  {
    *(*(a1[7] + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_100005ABC(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [a3 url];
  (*(v6 + 16))(v6, v7, v8, a4);
}

void sub_100005DC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v13 = 0;
  v14 = 0;
  v6 = [a3 getFileSize:&v14 error:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:v14];
    v9 = [v8 stringValue];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = v5;
      v18 = 2114;
      v19 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to get file size for url with role %{public}@: %{public}@", buf, 0x16u);
    }

    v9 = @"?";
  }

  v10 = *(a1 + 32);
  v15[0] = v5;
  v15[1] = v9;
  v11 = [NSArray arrayWithObjects:v15 count:2];
  v12 = [v11 componentsJoinedByString:@"="];
  [v10 addObject:v12];
}

void sub_10000606C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v14[0] = v5;
  v8 = *(a1 + 40);
  v9 = [v6 path];
  v10 = v9;
  v11 = v9;
  if ((v8 & 1) == 0)
  {
    v11 = [v9 lastPathComponent];
  }

  v14[1] = v11;
  v12 = [NSArray arrayWithObjects:v14 count:2];
  v13 = [v12 componentsJoinedByString:@"="];
  [v7 addObject:v13];

  if ((v8 & 1) == 0)
  {
  }
}

void sub_10000624C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006264(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = [a3 path];
  *(*(*(a1 + 40) + 8) + 24) = [v6 isReadableFileAtPath:v7];

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void sub_100006428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000644C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1[5] + 8);
  obj = *(v9 + 40);
  v20 = 0;
  v10 = [v8 getFileSize:&v20 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if ((v10 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v14 = [v8 url];
      v17 = *(*(a1[5] + 8) + 40);
      *buf = 138543874;
      v22 = v7;
      v23 = 2112;
      v24 = v14;
      v25 = 2114;
      v26 = v17;
      v16 = "Unable to get file size for URL ref with role %{public}@ %@: %{public}@";
      goto LABEL_10;
    }

LABEL_7:
    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

  if (!v20)
  {
    v11 = a1[4];
    v12 = [v8 url];
    v13 = *(a1[5] + 8);
    v18 = *(v13 + 40);
    LOBYTE(v11) = [v11 removeItemAtURL:v12 error:&v18];
    objc_storeStrong((v13 + 40), v18);

    if ((v11 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v14 = [v8 url];
        v15 = *(*(a1[5] + 8) + 40);
        *buf = 138543874;
        v22 = v7;
        v23 = 2112;
        v24 = v14;
        v25 = 2114;
        v26 = v15;
        v16 = "Unable to remove empty file for URL ref with role %{public}@ %@: %{public}@";
LABEL_10:
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v16, buf, 0x20u);

        goto LABEL_7;
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_1000067C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1000067E4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 url];
  v8 = [v7 path];

  if ([*(a1 + 32) fileExistsAtPath:v8 isDirectory:0])
  {
    goto LABEL_17;
  }

  v9 = [v6 url];
  v10 = [v9 URLByDeletingLastPathComponent];

  v24 = 0;
  v11 = *(a1 + 32);
  v12 = [v10 path];
  LODWORD(v11) = [v11 fileExistsAtPath:v12 isDirectory:&v24];

  if (v11)
  {
    if (v24)
    {
      goto LABEL_9;
    }

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 138412290;
    v30 = v8;
    v13 = "Attempting to create empty destination output file at path %@ but the parent directory path exists and is not a directory";
    goto LABEL_19;
  }

  v14 = *(a1 + 32);
  v27 = NSFileOwnerAccountName;
  v28 = @"mobile";
  v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v16 = *(*(a1 + 48) + 8);
  obj = *(v16 + 40);
  LOBYTE(v14) = [v14 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:v15 error:&obj];
  objc_storeStrong((v16 + 40), obj);

  if (v14)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v22 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138412290;
    v30 = v22;
    v13 = "Attempting to create empty destination output file at path %@ but parent directory creation failed:";
LABEL_19:
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
  }

LABEL_8:
  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_9:
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v17 = *(a1 + 32);
    v25 = NSFileOwnerAccountName;
    v26 = @"mobile";
    v18 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    LOBYTE(v17) = [v17 createFileAtPath:v8 contents:0 attributes:v18];

    if ((v17 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v8;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create empty file at destination %@", buf, 0xCu);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
    v19 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:0];
    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

LABEL_17:
}

void sub_100006D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100006DA0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v9 = [a3 dictionaryRepresentationWithError:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to encode bookmark data for resource in role %{public}@: %{public}@", buf, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24);
}

void sub_1000079A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000079B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = 0;
  result = [a3 getPathHash:&v5 lastPathComponent:0];
  *(*(*(a1 + 32) + 8) + 24) ^= v5;
  return result;
}

void sub_100007FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100007FE4(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1[5] + 8);
  obj = *(v8 + 40);
  v9 = [PAMediaConversionServiceResourceURLReference referenceWithDictionaryRepresentation:a3 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (v9)
  {
    [*(a1[4] + 8) setObject:v9 forKeyedSubscript:v7];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v10 = *(*(a1[5] + 8) + 40);
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to decode bookmark data for resource in role %{public}@: %{public}@", buf, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  *a4 = *(*(a1[6] + 8) + 24);
}

void sub_1000087C0(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138543618;
    v6 = v4;
    v7 = 2114;
    v8 = a2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to send progress update for request %{public}@ to client: %{public}@", &v5, 0x16u);
  }
}

void sub_100008A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008A98(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 requestTracker];
  v6 = [v5 effectivePriority];

  if (v6 > 4 || ((6u >> v6) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void sub_100008BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008BC8(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 requestTracker];
  v6 = [v5 effectivePriority];

  if (v6 > 4 || (v6 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void sub_100008CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008CF0(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 24))
  {
    v4 = [a2 requestTracker];
    *(*(*(a1 + 32) + 8) + 24) = [v4 effectivePriority] == *(a1 + 40);
  }

  else
  {
    *(v2 + 24) = 0;
  }
}

int64_t sub_100008ED0(id a1, ClientRequest *a2, ClientRequest *a3)
{
  v4 = a3;
  v5 = [(ClientRequest *)a2 requestTracker];
  v6 = [(ClientRequest *)v4 requestTracker];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_100009178(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 connectionIdentifier];
  v4 = [v3 UUIDString];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [v8 identifier];
    [v6 addObject:v7];
  }
}

void sub_100009300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100009318(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100009330(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 requestTracker];
  v6 = [v5 destinationURLCollection];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_1000094B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000094CC(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 identifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_1000097A4(id a1, ClientRequest *a2, BOOL *a3)
{
  v3 = [(ClientRequest *)a2 requestTracker];
  [v3 didDequeueAndStartProcessingRequest];
}

void sub_10000A274(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 requestIdentifiersForConnectionIdentifier:*(a1 + 40)];
  [v2 addObjectsFromArray:v3];
}

void sub_10000A6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10000A6F8(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v12 = 0;
  v7 = [v6 removeAndReturnClientRequestWithIdentifier:a1[4] remainingRequestCount:&v12];
  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(a1[5] + 8) + 40);
  if (v10)
  {
    [v10 setCancellationReasonDebugDescription:@"Client request"];
    *a3 = 1;
    if (!v12)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      v11 = a1[4];
      *buf = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v6;
      v17 = 2048;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Found client request reference for cancelled request identifier %{public}@ in conversion %{public}@, remaining request count %lu", buf, 0x20u);
    }
  }
}

void sub_10000ACE0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 clientRequestForIdentifier:*(a1 + 32)];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a3 = 1;
  }
}

void sub_10000AF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_10000AF7C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) resourceURLForRole:v7];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = [v8 path];
    v11 = [v9 path];
    v12 = *(a1 + 40);
    *buf = 138413058;
    v27 = v10;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v11;
    v32 = 2114;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Copying conversion output %@ (role %@) to destination %@ for request %{public}@", buf, 0x2Au);
  }

  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy conversion request output - destination URL collection for request %{public}@ is missing URL for role %@", buf, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    v24 = NSDebugDescriptionErrorKey;
    v16 = [NSString stringWithFormat:@"Failed to copy conversion output - destination URL collection is missing URL for role %@", v7];
    v25 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v18 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v17];
    v19 = *(*(a1 + 64) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    goto LABEL_11;
  }

  v13 = *(a1 + 48);
  v14 = *(*(a1 + 64) + 8);
  obj = *(v14 + 40);
  v15 = [v13 copyItemAtURL:v8 toURL:v9 error:&obj];
  objc_storeStrong((v14 + 40), obj);
  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v27 = v7;
      v28 = 2112;
      v29 = v22;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy conversion output for role %{public}@: %@", buf, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
LABEL_11:
    *a4 = 1;
  }
}

void sub_10000C750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v33 = objc_begin_catch(exception_object);
      v34 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v35 = [v30 identifier];
        *(v32 - 128) = 138543618;
        *(v31 + 4) = v35;
        *(v32 - 116) = 2114;
        *(v31 + 14) = v33;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Exception while enqueueing new queue entry %{public}@: %{public}@", (v32 - 128), 0x16u);
      }

      objc_end_catch();
      JUMPOUT(0x10000C634);
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v29 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_10000C88C(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v10 = 0;
  v7 = [*(a1 + 32) taskTypeSupportsDeduplication];
  if (v7)
  {
    v7 = [v6 taskTypeSupportsDeduplication];
    if (v7)
    {
      LOBYTE(v7) = [v6 clientRequestIsDuplicate:*(a1 + 40) identicalDestination:&v10];
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    if ([*(a1 + 40) requiresDeduplicationAgainstOriginalWithIdenticalOutput] && (v10 & 1) == 0)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        v8 = [*(a1 + 40) identifier];
        v9 = [*(a1 + 32) identifier];
        *buf = 138544130;
        v12 = v8;
        v13 = 2114;
        v14 = v9;
        v15 = 2114;
        v16 = v6;
        v17 = 1024;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "New queue entry %{public}@ for request %{public}@ is duplicate of existing entry %{public}@ (identical output: %d), attached request to existing entry", buf, 0x26u);
      }

      [v6 addClientRequest:*(a1 + 40)];
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    *a3 = 1;
  }
}

void sub_10000E450(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 lastPathComponent];
  v8 = [NSString stringWithFormat:@"%@-%@", v6, v7];
  v9 = [v5 URLByAppendingPathComponent:v8];

  [*(a1 + 40) setResourceURL:v9 forRole:v6];
}

void sub_10000EC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000ECA8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_10000FC78(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

void sub_1000111AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1000111FC(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [a2 result:&obj];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  dispatch_group_leave(*(a1 + 32));
}

void sub_100011278(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setPortraitInfo:v3];
  [v4 setStrength:*(a1 + 40)];
  [v4 setEnabled:1];
}

void sub_1000112E4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDepthInfo:v3];
  [v4 setAperture:*(a1 + 48)];
  [v4 setFocusRect:*(a1 + 40)];
  [v4 setEnabled:1];
}

CGColorSpaceRef sub_100012B84(CGImage *a1, void *a2, uint64_t a3)
{
  if ([a2 conformsToType:UTTypeRAWImage])
  {
    v5 = CGColorSpaceCreateWithName(kCGColorSpaceDisplayP3);
    ColorSpace = CFAutorelease(v5);
  }

  else
  {
    ColorSpace = CGImageGetColorSpace(a1);
  }

  v7 = ColorSpace;
  if (ColorSpace)
  {
    if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
    {
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }

    return sub_100012C48(v8, v7);
  }

  else
  {
    result = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
    if (result)
    {

      return CFAutorelease(result);
    }
  }

  return result;
}

CFTypeRef sub_100012C48(uint64_t a1, CGColorSpaceRef space)
{
  if ((a1 - 1) >= 2)
  {
    if (a1)
    {
      return 0;
    }

    v2 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    v2 = CGColorSpaceRetain(space);
    if (!v2)
    {
      return 0;
    }
  }

  return CFAutorelease(v2);
}

void sub_100012CAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Image generation using CIRawFilter failed: %@", &v4, 0xCu);
    }
  }
}

id sub_100013D00(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = 0;
  if (PFFigGetImageSourceImageIndexForContainerItemID())
  {
    v4 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v5 = +[NSNull null];
    v6 = [v4 isEqual:v5];

    if (v6)
    {

      v4 = 0;
    }
  }

  return v4;
}

void sub_1000162D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000162F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100016308(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (v7)
  {
    v8 = [PFMetadataUtilities itemsByRemovingMetadataItemForIdentifier:v6 fromArray:*(*(*(a1 + 40) + 8) + 40)];
    v9 = [v8 mutableCopy];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (([v7 isEqual:&stru_10003EDE8] & 1) == 0 && (+[PFMetadataUtilities addQuickTimeMetadataItemsWithIdentifier:value:toItems:](PFMetadataUtilities, "addQuickTimeMetadataItemsWithIdentifier:value:toItems:", v6, v7, *(*(*(a1 + 40) + 8) + 40)) & 1) == 0 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create metadata item for key %{public}@", &v12, 0xCu);
    }
  }
}

void sub_1000164BC(id a1)
{
  v6[0] = @"PAMediaConversionServiceOptionAVMetadataOriginatingSignatureKey";
  v1 = +[PFMetadata originatingAssetIdentifierMetadataIdentifier];
  v7[0] = v1;
  v6[1] = @"PAMediaConversionServiceOptionAVMetadataRenderOriginatingSignatureKey";
  v2 = +[PFMetadata renderOriginatingAssetIdentifierMetadataIdentifier];
  v7[1] = v2;
  v6[2] = @"PAMediaConversionServiceOptionLivePhotoPairingIdentifierKey";
  v3 = +[PFMetadata livePhotoPairingIdentifierMetadataIdentifier];
  v7[2] = v3;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
  v5 = qword_100044F00;
  qword_100044F00 = v4;
}

void sub_1000169A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 determineAndNotifyProgress];
  [*(a1 + 32) cancelProgressUpdateTimerAndMarkEndTime];
  v20 = 0;
  v5 = [v4 result:&v20];

  v6 = v20;
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v18 = [*(a1 + 32) identifier];
      *buf = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Video photos adjustment rendering conversion task %{public}@ failed: %@", buf, 0x16u);
    }

    v13 = [v6 domain];
    if ([v13 isEqualToString:NUErrorDomain])
    {
      v14 = [v6 code];

      if (v14 == 10)
      {
        v15 = 5;
        v16 = 4;
LABEL_15:
        [*(a1 + 32) setStatus:v16];
        v21[0] = NSDebugDescriptionErrorKey;
        v21[1] = NSUnderlyingErrorKey;
        v22[0] = @"Failed to export rendered video.";
        v22[1] = v6;
        v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
        v17 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:v15 userInfo:v9];
        [*(a1 + 32) setError:v17];

        goto LABEL_16;
      }
    }

    else
    {
    }

    v16 = 2;
    v15 = 2;
    goto LABEL_15;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) identifier];
    *buf = 138543618;
    v24 = v7;
    v25 = 2112;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Photos adjustments render completion for task %{public}@, result: %@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v19 = v6;
  v9 = [v8 outputAssetInformationWithError:&v19];
  v10 = v19;

  v11 = *(a1 + 32);
  if (v9)
  {
    v12 = [v11 resultInformation];
    [v12 addEntriesFromDictionary:v9];

    [*(a1 + 32) setStatus:1];
    [*(a1 + 32) dumpStatistics];
  }

  else
  {
    [v11 setStatus:2];
    [*(a1 + 32) setError:v10];
  }

  v6 = v10;
LABEL_16:
  [*(a1 + 32) callCompletionHandler];
}

id sub_100017540(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = [*(a1 + 32) options];
  v7 = [v5 metadataItemsByApplyingSignatureMetadataFromOptions:v6 toMetadataItems:v4];

  return v7;
}

void sub_1000175C4(uint64_t a1)
{
  [*(a1 + 32) setPhotosAdjustmentsCompositionExporter:*(a1 + 40)];
  v2 = *(a1 + 40);
  v7 = [*(a1 + 32) outputMainResourceURL];
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 32) photosAdjustmentsExporterCompletionHandler];
  v6 = [v2 exportVideoToURL:v7 composition:v3 options:v4 completion:v5];
  [*(a1 + 32) setProgress:v6];
}

void sub_1000176C4(id a1)
{
  v1 = objc_alloc_init(NSISO8601DateFormatter);
  v2 = qword_100044F18;
  qword_100044F18 = v1;

  v3 = qword_100044F18;

  [v3 setFormatOptions:1907];
}

void sub_100018DA8(uint64_t a1)
{
  v2 = [*(a1 + 32) exportSession];
  [*(a1 + 32) determineAndNotifyProgress];
  [*(a1 + 32) cancelProgressUpdateTimerAndMarkEndTime];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) identifier];
    v4 = [v2 status];
    v5 = [v2 error];
    *buf = 138543874;
    v28 = v3;
    v29 = 2048;
    v30 = v4;
    v31 = 2112;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Export session completion for task %{public}@, status: %ld, error: %@", buf, 0x20u);
  }

  v6 = [v2 status];
  if (v6 != 3)
  {
    if (v6 == 5)
    {
      v23 = NSLocalizedDescriptionKey;
      v24 = @"Export was cancelled";
      v8 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [*(a1 + 32) setStatus:4];
      v9 = 5;
      goto LABEL_8;
    }

    if (v6 == 4)
    {
      [*(a1 + 32) setStatus:2];
      v26[0] = @"Export failed";
      v25[0] = NSLocalizedDescriptionKey;
      v25[1] = NSUnderlyingErrorKey;
      v7 = [v2 error];
      v26[1] = v7;
      v8 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:2];

      v9 = 2;
LABEL_8:
      v10 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:v9 userInfo:v8];
      [*(a1 + 32) setError:v10];

      v11 = 0;
      v12 = 0;
      goto LABEL_16;
    }

    v11 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  v13 = *(a1 + 32);
  v20 = 0;
  v11 = [v13 outputAssetInformationWithError:&v20];
  v12 = v20;
  v14 = *(a1 + 32);
  if (!v11)
  {
    [v14 setStatus:2];
    [*(a1 + 32) setError:v12];
    goto LABEL_15;
  }

  v15 = [v14 resultInformation];
  [v15 addEntriesFromDictionary:v11];

  [*(a1 + 32) setStatus:1];
  [*(a1 + 32) dumpStatistics];
  if (![*(a1 + 32) wantsResultAsData])
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v16 = [*(a1 + 32) outputMainResourceURL];
  v17 = [NSData dataWithContentsOfURL:v16];

  v18 = *(a1 + 32);
  if (v17)
  {
    v19 = [v18 resultInformation];
    [v19 setObject:v17 forKeyedSubscript:@"PAMediaConversionServiceResultDataKey"];
    v8 = 0;
  }

  else
  {
    [v18 setStatus:2];
    v21 = NSLocalizedDescriptionKey;
    v22 = @"Unable to initialize data buffer with video conversion result";
    v8 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v8];
    [*(a1 + 32) setError:v19];
  }

LABEL_16:
  [*(a1 + 32) callCompletionHandler];
}

void sub_100019200(uint64_t a1)
{
  [*(a1 + 32) setExportSession:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) exportSessionCompletionHandler];
  [v2 exportAsynchronouslyWithCompletionHandler:v3];
}

void sub_10001991C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_100019964(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    [*(a1 + 32) setStatus:2];
    [*(a1 + 32) setError:v7];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(a1 + 32) identifier];
      v9 = *(*(*(a1 + 48) + 8) + 40);
      v10 = 138543619;
      v11 = v8;
      v12 = 2113;
      v13 = v9;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to get export session for conversion task %{public}@ from PFVideoAVObjectBuilder, asset %{private}@", &v10, 0x16u);
    }

    [*(a1 + 32) callCompletionHandler];
  }
}

void sub_10001A178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001A19C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) identifier];
    v5 = 138543618;
    v6 = v3;
    v7 = 2114;
    v8 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Single pass video export item %{public}@ for conversion task %{public}@ cancelled", &v5, 0x16u);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10001A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      [*(a1 + 32) determineAndNotifyProgress];
      goto LABEL_15;
    }

    if (a2 == 3)
    {
      [*(a1 + 32) setStatus:1];
LABEL_11:
      [*(a1 + 32) callCompletionHandler];
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v8 = 2;
      [*(a1 + 32) setStatus:2];
      if ([v7 code] == 5)
      {
        v8 = 5;
      }

      v21[0] = NSLocalizedDescriptionKey;
      v21[1] = NSUnderlyingErrorKey;
      v22[0] = @"Unable to create single pass export item";
      v22[1] = v7;
      v9 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
      v10 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:v8 userInfo:v9];
      [*(a1 + 32) setError:v10];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 40);
        v12 = [*(a1 + 32) identifier];
        v15 = 138543874;
        v16 = v11;
        v17 = 2114;
        v18 = v12;
        v19 = 2114;
        v20 = v7;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Single pass video export item %{public}@ for conversion task %{public}@ failed with error %{public}@", &v15, 0x20u);
      }

      goto LABEL_11;
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) identifier];
    v15 = 138543874;
    v16 = v13;
    v17 = 2048;
    v18 = 0;
    v19 = 2114;
    v20 = v14;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Ignoring single pass video export item %{public}@ unexpected status %lu for conversion task %{public}@", &v15, 0x20u);
  }

LABEL_15:
}

void sub_10001A4CC(uint64_t a1)
{
  [*(a1 + 32) setSinglePassExportItem:*(a1 + 40)];
  v2 = *(a1 + 40);
  v9 = 0;
  v3 = [v2 startConversionWithError:&v9 outputAvailableHandler:*(a1 + 56)];
  v4 = v9;
  *(*(*(a1 + 64) + 8) + 24) = v3;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) setSinglePassExportItem:0];
    [*(a1 + 32) setStatus:2];
    v16[0] = NSLocalizedDescriptionKey;
    v16[1] = NSUnderlyingErrorKey;
    v17[0] = @"Unable to start single pass export item";
    v17[1] = v4;
    v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
    v6 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:2 userInfo:v5];
    [*(a1 + 32) setError:v6];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      v8 = [*(a1 + 32) identifier];
      *buf = 138543874;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to start single pass video export item %{public}@ for conversion task %{public}@: %{public}@", buf, 0x20u);
    }

    [*(a1 + 32) callCompletionHandler];
  }
}

void sub_10001A938(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v9 = v5;
  if (a2)
  {
    [*(a1 + 32) setStatus:1];
  }

  else
  {
    v6 = [v5 code];
    v7 = *(a1 + 32);
    if (v6 == 3)
    {
      v8 = 5;
    }

    else
    {
      v8 = 2;
    }

    [*(a1 + 32) setStatus:v8];
    [*(a1 + 32) setError:v9];
  }

  [*(a1 + 32) callCompletionHandler];
}

void sub_10001B810(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543874;
    v6 = v3;
    v7 = 2048;
    v8 = WeakRetained;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Connection %{public}@ to %p terminated: %@", &v5, 0x20u);
  }

  if (WeakRetained)
  {
    [WeakRetained cancelJobsForConnectionWithIdentifier:*(a1 + 32)];
  }
}

void sub_10001BE78(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v27 = @"PAMediaConversionServiceOptionJobPriorityKey";
    [NSArray arrayWithObjects:&v27 count:1];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = v19 = 0u;
    v4 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v16 + 1) + 8 * i);
          v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            *buf = 138543874;
            v21 = v3;
            v22 = 2114;
            v23 = v8;
            v24 = 2114;
            v25 = v9;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Applying modification to request %{public}@: %{public}@ / %{public}@", buf, 0x20u);
          }

          if ([v8 isEqualToString:@"PAMediaConversionServiceOptionJobPriorityKey"])
          {
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              v13 = +[NSAssertionHandler currentHandler];
              [v13 handleFailureInMethod:*(a1 + 56) object:*(a1 + 48) file:@"VideoConversionService.m" lineNumber:1866 description:{@"Unexpected value type %@ for request modification key %@ for request %@", objc_opt_class(), v8, *(a1 + 32)}];
            }

            v10 = [v9 integerValue];
            v11 = [v3 requestTracker];
            [v11 setEffectivePriority:v10];
          }

          else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
          {
            v12 = *(a1 + 32);
            *buf = 138412546;
            v21 = v12;
            v22 = 2112;
            v23 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Ignoring modification for request %@ with unknown key %@", buf, 0x16u);
          }
        }

        v5 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v5);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 32);
    *buf = 138412290;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Ignoring modifications for unknown request identifier %@", buf, 0xCu);
  }
}

void sub_10001CE3C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 32);
    v3 = 138543362;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Request queue issued cancellation for queue entry %{public}@", &v3, 0xCu);
  }
}

uint64_t sub_1000204B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000204D0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) resourceURLForRole:v7];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 40) requestIdentifier];
    v11 = [*(a1 + 48) requestIdentifier];
    *buf = 138413314;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    v28 = 2114;
    v29 = v10;
    v30 = 2112;
    v31 = v9;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Copying destination URL (role %@) from original %@ (request %{public}@) to duplicate %@ (request %{public}@) ", buf, 0x34u);
  }

  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy duplicate request output - destination URL collection is missing URL for role %@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
    v22 = NSDebugDescriptionErrorKey;
    v15 = [NSString stringWithFormat:@"Failed to copy duplicate request output - destination URL collection is missing URL for role %@", v7];
    v23 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v17 = [NSError errorWithDomain:@"PAMediaConversionServiceErrorDomain" code:4 userInfo:v16];
    v18 = *(*(a1 + 72) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    goto LABEL_11;
  }

  v12 = *(a1 + 56);
  v13 = *(*(a1 + 72) + 8);
  obj = *(v13 + 40);
  v14 = [v12 copyItemAtURL:v8 toURL:v9 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v20 = *(*(*(a1 + 72) + 8) + 40);
      *buf = 138543618;
      v25 = v7;
      v26 = 2112;
      v27 = v20;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to copy duplicate request output for role %{public}@: %@", buf, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_11:
    *a4 = 1;
  }
}

NSSize NSSizeFromString(NSString *aString)
{
  v3 = _NSSizeFromString(aString);
  height = v3.height;
  width = v3.width;
  result.height = height;
  result.width = width;
  return result;
}