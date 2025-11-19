@interface ShowUserNotice
@end

@implementation ShowUserNotice

void ___ShowUserNotice_block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  error = 0;
  v2 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 0.0, 2uLL, &error, *(a1 + 32));
  if (v2)
  {
    v3 = v2;
    v14 = 0;
    if (CFUserNotificationReceiveResponse(v2, 0.0, &v14))
    {
      v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        *buf = 136315650;
        v17 = "_ShowUserNotice_block_invoke";
        v18 = 2112;
        v19 = v5;
        v20 = 1024;
        v21 = error;
        v6 = "%s: Failed to recieve notification response for error presentation alert for app with bundle ID %@, error code %d";
        v7 = v4;
        v8 = 28;
LABEL_5:
        _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }

    else
    {
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          v12 = *(a1 + 56);
          if (!v12)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_7;
          }

          v12 = *(a1 + 48);
          if (!v12)
          {
            goto LABEL_7;
          }
        }

        (*(v12 + 16))();
        goto LABEL_7;
      }

      v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 40);
        *buf = 136315394;
        v17 = "_ShowUserNotice_block_invoke";
        v18 = 2112;
        v19 = v13;
        v6 = "%s: Received an invalid response (kCFUserNotificationOtherResponse) from the error presentation alert for app with bundleID %@";
        v7 = v4;
        v8 = 22;
        goto LABEL_5;
      }
    }

LABEL_7:
    CFRelease(v3);
    goto LABEL_11;
  }

  v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 40);
    *buf = 136315650;
    v17 = "_ShowUserNotice_block_invoke";
    v18 = 2112;
    v19 = v10;
    v20 = 1024;
    v21 = error;
    _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to create error presentation alert for app with bundle ID %@, error code %d", buf, 0x1Cu);
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
}

@end