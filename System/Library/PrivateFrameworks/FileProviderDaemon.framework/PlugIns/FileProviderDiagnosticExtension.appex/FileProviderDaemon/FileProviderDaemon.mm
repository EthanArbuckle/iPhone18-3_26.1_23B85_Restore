uint64_t sub_10000184C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001864(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100003524(v6);
    }
  }

  else
  {
    v8 = [[OSLogEventStream alloc] initWithSource:v5];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_100001904(uint64_t a1, void *a2)
{
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v22 = [v3 date];
  v5 = [v4 stringFromDate:v22];
  v6 = [v3 threadIdentifier];
  v21 = a1;
  v7 = [*(a1 + 40) _displayStringForLogType:{objc_msgSend(v3, "logType")}];
  v8 = [v3 processIdentifier];
  v9 = [v3 process];
  v10 = [v3 sender];
  v11 = [v3 subsystem];
  v12 = [v3 category];
  v13 = [v3 composedMessage];
  v14 = [NSString stringWithFormat:@"%@ 0x%05llx %@ %d %@(%@):%@ [%@] %@\n", v5, v6, v7, v8, v9, v10, v11, v12, v13];

  if (v14)
  {
    v15 = *(v21 + 48);
    v16 = [v14 dataUsingEncoding:4];
    v24 = 0;
    LOBYTE(v15) = [v15 writeData:v16 error:&v24];
    v17 = v24;

    if ((v15 & 1) == 0)
    {
      v18 = fp_current_or_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [*(v21 + 56) fp_prettyPath];
        v20 = [v17 fp_prettyDescription];
        *buf = 138412802;
        v26 = v14;
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v20;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[ERROR] Failed writing log line '%@' to file %@: %@", buf, 0x20u);
      }
    }
  }

  objc_autoreleasePoolPop(context);
}

void sub_100001B8C(uint64_t a1, uint64_t a2)
{
  if (a2 != 5)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000035B8();
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_100001FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001FF4(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = 1;
  if (a2)
  {
    v3 = [a2 fp_prettyDescription];
    v4 = [NSString stringWithFormat:@"Unable to capture FP dump: %@", v3];

    v5 = fp_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000037A4();
    }

    v6 = [[FPCTLTermDumper alloc] initWithFd:objc_msgSend(*(a1 + 32) forceColor:{"fileDescriptor"), 1}];
    [v6 write:{@"%@\n", v4}];
  }
}

void sub_10000257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1000025AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 url];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *(*(*(a1 + 72) + 8) + 24) = [*(*(*(a1 + 64) + 8) + 40) startAccessingSecurityScopedResource];
    v10 = *(*(*(a1 + 64) + 8) + 40);
    v71 = 0;
    v11 = [v10 checkResourceIsReachableAndReturnError:&v71];
    v12 = v71;
    v13 = fp_current_or_default_log();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_100003A38(a1 + 64, v14, v15, v16, v17, v18, v19, v20);
      }

      v21 = NSURLIsRegularFileKey;
      v79[0] = NSURLFileSizeKey;
      v79[1] = NSURLIsRegularFileKey;
      v14 = [NSArray arrayWithObjects:v79 count:2];
      [*(a1 + 32) enumeratorAtURL:*(*(*(a1 + 64) + 8) + 40) includingPropertiesForKeys:v14 options:7 errorHandler:&stru_100008368];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = v70 = 0u;
      v56 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
      if (v56)
      {
        v52 = a1;
        v53 = v12;
        v47 = v6;
        v48 = v5;
        v51 = 0;
        v55 = *v68;
        while (1)
        {
          for (i = 0; i != v56; i = i + 1)
          {
            if (*v68 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v67 + 1) + 8 * i);
            v24 = objc_autoreleasePoolPush();
            v25 = [v23 path];
            v26 = [v25 lastPathComponent];

            if ([v26 isEqualToString:@"fp-dump.txt"] & 1) != 0 || (objc_msgSend(v26, "hasPrefix:", @"FileProviderDiagnosticLogs"))
            {
              v27 = [v23 resourceValuesForKeys:v14 error:{0, v47, v48}];
              v28 = [v27 objectForKeyedSubscript:v21];
              if ([v28 BOOLValue])
              {
                v29 = [v27 objectForKeyedSubscript:NSURLFileSizeKey];
                v30 = [v29 integerValue];

                if (v30)
                {
                  v31 = v14;
                  v32 = [*(v52 + 40) URLByAppendingPathComponent:v26 isDirectory:0];
                  v33 = *(v52 + 32);
                  v62 = v53;
                  [v33 removeItemAtURL:v32 error:&v62];
                  v34 = v62;

                  v35 = *(v52 + 32);
                  v61 = v34;
                  v36 = [v35 moveItemAtURL:v23 toURL:v32 error:&v61];
                  v53 = v61;

                  if (v36)
                  {
                    v37 = [v32 path];
                    v38 = [DEAttachmentItem attachmentWithPath:v37];

                    [v38 setShouldCompress:&__kCFBooleanTrue];
                    [v38 setDeleteOnAttach:&__kCFBooleanTrue];
                    if ([v26 isEqualToString:@"fp-dump.txt"])
                    {
                      [v38 setDisplayName:*(v52 + 48)];
                      v39 = fp_current_or_default_log();
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                      {
                        sub_100003B08(&v59, v60);
                      }

                      LOBYTE(v51) = 1;
                    }

                    else
                    {
                      [v38 setDisplayName:@"System Logs for File Sync"];
                      v39 = fp_current_or_default_log();
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                      {
                        sub_100003ADC(&v57, v58);
                      }

                      BYTE4(v51) = 1;
                    }

                    v21 = NSURLIsRegularFileKey;

                    [*(v52 + 56) addObject:v38];
                  }

                  else
                  {
                    v38 = fp_current_or_default_log();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      v50 = [v23 path];
                      v40 = [v50 fp_prettyPath];
                      v49 = [v32 path];
                      v41 = [v49 fp_prettyPath];
                      v42 = [v53 fp_prettyDescription];
                      *buf = 138412802;
                      v73 = v40;
                      v74 = 2112;
                      v75 = v41;
                      v76 = 2112;
                      v77 = v42;
                      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "[ERROR] Failed %@ -> %@: %@", buf, 0x20u);
                    }

                    v14 = v31;
                    v21 = NSURLIsRegularFileKey;
                  }

LABEL_32:
                  goto LABEL_33;
                }
              }

              else
              {
              }

              v32 = fp_current_or_default_log();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                sub_100003AB0(&v63, v64);
              }

              goto LABEL_32;
            }

            v27 = fp_current_or_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              sub_100003AB0(&v65, v66);
            }

LABEL_33:

            objc_autoreleasePoolPop(v24);
          }

          v56 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
          if (!v56)
          {
            v43 = v51 & BYTE4(v51);
            v6 = v47;
            v5 = v48;
            a1 = v52;
            v12 = v53;
            goto LABEL_41;
          }
        }
      }

      v43 = 0;
LABEL_41:

      *(*(*(a1 + 80) + 8) + 24) = v43 & 1;
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v44 = [*(*(*(a1 + 64) + 8) + 40) path];
      v45 = [v44 fp_prettyPath];
      v46 = [v12 fp_prettyDescription];
      *buf = 138412546;
      v73 = v45;
      v74 = 2112;
      v75 = v46;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[INFO] Invalid diagnostic location: %@ (%@)", buf, 0x16u);
    }
  }

  else
  {
    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100003B34();
    }
  }
}

BOOL sub_100002C68(id a1, NSURL *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100003BA4(v4, v5);
  }

  return 0;
}

_BYTE *sub_100003238(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void sub_100003260(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void sub_1000032A8(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void sub_1000032C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1000032E0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_100003300(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_1000032A8(&_mh_execute_header, a2, a3, "[ERROR] [FileProviderDiagnosticExtension attachmentsForParameters:ABC] Failed to create empty file: %@", a2);
}

void sub_10000334C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ERROR] [FileProviderDiagnosticExtension attachmentsForParameters:ABC] Failed to truncate file: %s : %@", buf, 0x16u);
}

void sub_1000033B4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_1000032A8(&_mh_execute_header, a2, a3, "[ERROR] [FileProviderDiagnosticExtension attachmentsForParameters:ABC] Writing to file: %s", a2);
}

void sub_1000033F0()
{
  sub_10000327C();
  sub_100003254();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10000342C(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = @"\nERROR: Log Collection could not complete, timed out.";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2112;
  *(buf + 3) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ERROR] Failed writing log line '%@' to file %@: %@", buf, 0x20u);
}

void sub_1000034AC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a2 = 136315138;
  *(a2 + 4) = a1;
  sub_1000032A8(&_mh_execute_header, a2, a3, "[ERROR] [FileProviderDiagnosticExtension attachmentsForParameters:ABC] Failed to create file: %s", a2);
}

void sub_1000034E8()
{
  sub_10000327C();
  sub_100003254();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100003524(void *a1)
{
  v1 = [a1 localizedDescription];
  [v1 UTF8String];
  sub_100003248();
  sub_100003298();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000035B8()
{
  sub_100003248();
  sub_100003254();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100003628()
{
  sub_10000327C();
  sub_100003254();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000036FC(void *a1)
{
  v6 = [a1 fp_shortDescription];
  v7 = *__error();
  sub_100003298();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000037A4()
{
  sub_100003248();
  sub_100003254();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100003814(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@":de_parameter"];
  sub_100003248();
  sub_1000032E0(&_mh_execute_header, v2, v3, "[DEBUG] Feedback parameter: %@", v4, v5, v6, v7, v8);
}

void sub_100003908()
{
  sub_100003248();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "[ERROR] Decoding JSON %@ failed: %@", v2, 0x16u);
}

void sub_10000398C()
{
  sub_100003248();
  sub_100003254();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000039FC()
{
  sub_10000327C();
  sub_100003254();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100003B34()
{
  sub_100003248();
  sub_100003254();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100003BA4(void *a1, void *a2)
{
  v3 = [a1 path];
  v4 = [v3 fp_prettyPath];
  v5 = [a2 fp_prettyDescription];
  sub_100003288();
  sub_100003298();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

void sub_100003C68(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 fp_obfuscatedProviderDomainID];
  v6 = [a2 objectForKeyedSubscript:@"displayName"];
  v7 = 138412546;
  v8 = v5;
  sub_100003288();
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Will filter with %@ for %@", &v7, 0x16u);
}

void sub_100003D30()
{
  v0 = [&stru_100008690 fp_obfuscatedProviderDomainID];
  sub_100003248();
  sub_1000032E0(&_mh_execute_header, v1, v2, "[DEBUG] Will filter with %@", v3, v4, v5, v6, v7);
}

void sub_100003DC0()
{
  sub_10000327C();
  sub_100003254();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100003DFC(uint64_t a1, uint64_t a2)
{
  v3 = 134218242;
  v4 = a2;
  sub_100003288();
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx dumping FP domains for %@", &v3, 0x16u);
}

void sub_100003EE4()
{
  sub_10000327C();
  sub_100003254();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}