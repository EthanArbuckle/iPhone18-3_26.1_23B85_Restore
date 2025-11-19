void sub_100000D9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSFileManager defaultManager];
  if (([v7 fileExistsAtPath:v5] & 1) == 0)
  {
    v8 = [v5 stringByDeletingLastPathComponent];
    v14 = 0;
    if ([v7 fileExistsAtPath:v5 isDirectory:&v14])
    {
      if (v14 != 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];
    }

    if ([v7 createFileAtPath:v5 contents:0 attributes:0])
    {
LABEL_10:

      goto LABEL_11;
    }

LABEL_7:
    v9 = OSLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100001214(v9);
    }

    goto LABEL_10;
  }

LABEL_11:
  v10 = fopen([v5 fileSystemRepresentation], "w");
  if (v10)
  {
    v11 = v10;
    v12 = v6[2](v6, v10);
    fclose(v11);
    if (v12)
    {
      v13 = [DEAttachmentItem attachmentWithPath:v5];
      [v13 setDeleteOnAttach:&__kCFBooleanFalse];
      [*(a1 + 32) addObject:v13];
    }

    else
    {
      unlink([v5 fileSystemRepresentation]);
    }
  }
}

uint64_t sub_100000F40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100000FCC;
  v5[3] = &unk_100004180;
  v6 = v3;
  v7 = a2;
  [v6 performBlockAndWait:v5];

  return 1;
}

void sub_100000FCC(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) allRecordings];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v12 + 1) + 8 * v7);
        [v9 willAccessValueForKey:0];
        v10 = *(a1 + 40);
        v5 = v8 + 1;
        v11 = [v9 description];
        fprintf(v10, "recording[%d] = %s\n", v8, [v11 UTF8String]);

        v7 = v7 + 1;
        ++v8;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

uint64_t sub_100001120(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000011A4;
  v5[3] = &unk_1000041C8;
  v5[4] = a2;
  v3 = [v2 enumerateChangeHistorySinceToken:0 forStore:0 usingBlock:v5];
  return 1;
}

void sub_1000011A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 description];
  v3 = v4;
  fprintf(v2, "%s\n", [v4 UTF8String]);
}

void sub_100001214(os_log_t log)
{
  v1 = 136315138;
  v2 = "[VoiceMemosDiagnosticsExtension _generateAttachments]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- VoiceMemosDiagnosticsExtension failed to create log", &v1, 0xCu);
}