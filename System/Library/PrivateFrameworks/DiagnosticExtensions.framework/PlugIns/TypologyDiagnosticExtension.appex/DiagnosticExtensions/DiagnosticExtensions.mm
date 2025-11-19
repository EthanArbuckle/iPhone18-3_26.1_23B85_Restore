id TITypologyDiagnosticExtensionOSLogFacility()
{
  if (qword_1000081C8 != -1)
  {
    sub_100001318();
  }

  v1 = qword_1000081C0;

  return v1;
}

void sub_100000CB4(id a1)
{
  qword_1000081C0 = os_log_create("com.apple.TextInput", "TITypologyDiagnosticExtension");

  _objc_release_x1();
}

void sub_100000DB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 url];
  v8 = 0;
  [v4 removeItemAtURL:v5 error:&v8];
  v6 = v8;

  if (v6)
  {
    v7 = TITypologyDiagnosticExtensionOSLogFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10000132C(v3);
    }
  }
}

void sub_100000FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 url];
  v5 = [v4 pathExtension];
  v6 = [v5 isEqualToString:@"log"];

  if (v6)
  {
    v7 = [v3 url];
    v21 = 0;
    v8 = [NSString stringWithContentsOfURL:v7 encoding:4 error:&v21];
    v9 = v21;

    v10 = TITypologyDiagnosticExtensionOSLogFacility();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      if (v11)
      {
        sub_100001548(v3);
      }

      v12 = *(a1 + 32);
      v13 = [v3 url];
      v14 = [v13 lastPathComponent];
      v10 = [v12 URLByAppendingPathComponent:v14];

      v15 = *(a1 + 40);
      v16 = [v3 url];
      v20 = v9;
      [v15 copyItemAtURL:v16 toURL:v10 error:&v20];
      v17 = v20;

      v18 = [DEAttachmentItem attachmentWithPathURL:v10];
      [v18 setDeleteOnAttach:&off_100004308];
      v19 = TITypologyDiagnosticExtensionOSLogFacility();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100001614(v18, v19);
      }

      [*(a1 + 48) addObject:v18];
      v9 = v17;
    }

    else if (v11)
    {
      sub_10000171C(v3);
    }
  }
}

void sub_1000012EC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_debug_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 0xCu);
}

void sub_10000132C(void *a1)
{
  v1 = [a1 url];
  v2 = [v1 lastPathComponent];
  v3 = [NSString stringWithFormat:@"%s failed to delete %@ from datavault"];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v4, v5, "%@", v6, v7, v8, v9, "[TypologyDiagnosticExtension cleanupDatavault]_block_invoke", v2, v10);
}

void sub_1000013F8()
{
  v0 = [NSString stringWithFormat:@"%s %@"];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v1, v2, "%@", v3, v4, v5, v6, "[TypologyDiagnosticExtension attachmentsForParameters:]", @"attachmentsForParameters called", v7);
}

void sub_1000014A0(void *a1)
{
  v8 = [a1 count];
  v1 = [NSString stringWithFormat:@"%s total attachments: %lu"];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v2, v3, "%@", v4, v5, v6, v7, "[TypologyDiagnosticExtension attachmentsForParameters:]", v8, v9);
}

void sub_100001548(void *a1)
{
  v1 = [a1 url];
  v2 = [v1 lastPathComponent];
  v3 = [NSString stringWithFormat:@"%s accessing %@ from datavault"];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v4, v5, "%@", v6, v7, v8, v9, "[TypologyDiagnosticExtension attachmentsForParameters:]_block_invoke", v2, v10);
}

void sub_100001614(void *a1, NSObject *a2)
{
  v4 = [a1 path];
  v5 = [a1 modificationDate];
  v6 = [a1 deleteOnAttach];
  v7 = [NSString stringWithFormat:@"%s adding attachment with path %@ and date %@ and deleteOnAttach %@", "[TypologyDiagnosticExtension attachmentsForParameters:]_block_invoke", v4, v5, v6];
  *buf = 138412290;
  v9 = v7;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
}

void sub_10000171C(void *a1)
{
  v1 = [a1 url];
  v2 = [v1 lastPathComponent];
  v3 = [NSString stringWithFormat:@"%s unable to access %@ from datavault"];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v4, v5, "%@", v6, v7, v8, v9, "[TypologyDiagnosticExtension attachmentsForParameters:]_block_invoke", v2, v10);
}

void sub_1000017E8()
{
  v0 = [NSString stringWithFormat:@"%s %@"];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v1, v2, "%@", v3, v4, v5, v6, "[TypologyDiagnosticExtension setupWithParameters:]", @"setupWithParameters called", v7);
}

void sub_100001890()
{
  v0 = [NSString stringWithFormat:@"%s %@"];
  sub_10000130C();
  sub_1000012EC(&_mh_execute_header, v1, v2, "%@", v3, v4, v5, v6, "[TypologyDiagnosticExtension teardownWithParameters:]", @"teardownWithParameters called", v7);
}