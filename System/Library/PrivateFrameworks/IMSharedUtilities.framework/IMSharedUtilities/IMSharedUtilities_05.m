void sub_1A87023A8(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A870198CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A8704DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *IMStringFromTransferState(uint64_t a1)
{
  if ((a1 + 1) > 0xA)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E782B760[a1 + 1];
  }
}

__CFString *IMStringFromCKSyncState(uint64_t a1)
{
  v1 = @"Unknown";
  v2 = @"Download unsuccessful";
  v3 = @"Unsyncable";
  if (a1 != 64)
  {
    v3 = @"Unknown";
  }

  if (a1 != 5)
  {
    v2 = v3;
  }

  v4 = @"Pending validation";
  if (a1 != 4)
  {
    v4 = @"Unknown";
  }

  if (a1 == 3)
  {
    v4 = @"Needs upload";
  }

  if (a1 <= 4)
  {
    v2 = v4;
  }

  if (a1 == 2)
  {
    v1 = @"Upload unsuccessful";
  }

  if (a1 == 1)
  {
    v1 = @"Synced";
  }

  if (!a1)
  {
    v1 = @"Not synced";
  }

  if (a1 <= 2)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

__CFString *IMStringFromIMFileTransferUpdateReason(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unhandled New Case";
  }

  else
  {
    return off_1E782B7B8[a1];
  }
}

void *sub_1A8705704(uint64_t a1)
{
  v2 = sub_1A8705754();
  result = dlsym(v2, "PFLivePhotoBundleExtension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED8C9760 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A8705754()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!qword_1ED8C9798)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = sub_1A8705854;
    v3[4] = &unk_1E7826200;
    v3[5] = v3;
    v4 = xmmword_1E782B748;
    v5 = 0;
    qword_1ED8C9798 = _sl_dlopen();
  }

  v0 = qword_1ED8C9798;
  v1 = v3[0];
  if (!qword_1ED8C9798)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_1A8705854()
{
  result = _sl_dlopen();
  qword_1ED8C9798 = result;
  return result;
}

IMMessageHistoryDateRangeSummary *sub_1A87058C8(uint64_t a1)
{
  sub_1A8705754();
  result = objc_getClass("PFVideoComplement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED8C9680 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_1A88C638C();
    return [(IMMessageHistoryDateRangeSummary *)v3 initWithDateInterval:v4 messages:v5, v6];
  }

  return result;
}

id sub_1A8705E1C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 stringByDeletingPathExtension];
    v6 = [a1 pathExtension];
    v7 = [v6 length];
    v8 = [v5 stringByAppendingString:v4];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 stringByAppendingPathExtension:v6];

      v9 = v10;
    }
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

id sub_1A8705EE0(void *a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 stringByAppendingPathComponent:v4];
  v6 = [v5 stringByResolvingAndStandardizingPath];

  if ([v6 hasPrefix:a1])
  {
    v7 = v6;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = 138412546;
        v11 = a1;
        v12 = 2112;
        v13 = v4;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Attempted to create path that is not a subpath of self (%@): '%@'", &v10, 0x16u);
      }
    }

    v7 = 0;
  }

  return v7;
}

id sub_1A8706028(void *a1)
{
  v1 = [a1 pathComponents];
  if ([v1 count] < 2)
  {
    if ([v1 count] == 1)
    {
      v2 = [v1 objectAtIndexedSubscript:0];
      v3 = 0;
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v2 = 0;
      v3 = 0;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_20;
  }

  v2 = [v1 lastObject];
  v3 = [v1 subarrayWithRange:{0, objc_msgSend(v1, "count") - 1}];
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ([v2 isEqualToString:@"/"])
  {
    v4 = v2;
LABEL_18:
    if (v3)
    {
      v8 = [v3 arrayByAddingObject:v4];
      v9 = [MEMORY[0x1E696AEC0] pathWithComponents:v8];

      v4 = v9;
    }

    goto LABEL_20;
  }

  v5 = [v2 cStringUsingEncoding:4];
  v12 = 0;
  if (qword_1ED8C98A0 != -1)
  {
    sub_1A88C63B4();
  }

  v6 = off_1ED8C98A8(v5, &v12);
  v4 = 0;
  v7 = v12;
  if (!v6 && v12)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
    v7 = v12;
  }

  if (v7)
  {
    free(v7);
  }

  if (v4)
  {
    goto LABEL_18;
  }

LABEL_20:
  v10 = v4;

  return v4;
}

void *sub_1A87061DC()
{
  result = MEMORY[0x1AC570AB0]("APFSMakeCompatibleName", @"APFS");
  off_1ED8C98A8 = result;
  return result;
}

uint64_t IMLegacyCalculateFileSizeForPath(void *a1)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1];
  v4 = *MEMORY[0x1E695DB50];
  v26[0] = *MEMORY[0x1E695DB50];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
  v6 = [v2 enumeratorAtURL:v3 includingPropertiesForKeys:v5 options:0 errorHandler:&unk_1F1BA8C28];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = 0;
  v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v16 = 0;
        if ([v12 getResourceValue:&v16 forKey:v4 error:0])
        {
          v8 += [v16 unsignedLongLongValue];
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v9);
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = v1;
      v23 = 2048;
      v24 = v8;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "_CalculateFileSizeForPath: calculated %@ to be %llu bytes", buf, 0x16u);
    }
  }

  return v8;
}

uint64_t sub_1A870645C(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Couldn't enumerate %@: %@", &v8, 0x16u);
    }
  }

  return 1;
}

uint64_t IMCalculateFileSizeForPath(void *a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v21 = 0;
    v22 = 0;
    [v3 fileSystemRepresentation];
    if ((dirstat_np() & 0x80000000) != 0 && IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = v4;
        v7 = [v4 fileSystemRepresentation];
        v8 = __error();
        v9 = strerror(*v8);
        *buf = 136315394;
        v24 = v7;
        v25 = 2080;
        v26 = v9;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Directory sizing for %s failed with error %s", buf, 0x16u);
      }
    }

    v10 = v21;
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v24 = v4;
        v25 = 2048;
        v26 = v21;
        v27 = 2048;
        v28 = v22;
        _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "IMCalculateFileSizeForPath: calculated %@ to be %llu bytes for %llu descendents", buf, 0x20u);
      }
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
    v20 = 0;
    v13 = *MEMORY[0x1E695DB50];
    v19 = 0;
    [v12 getResourceValue:&v20 forKey:v13 error:&v19];
    v14 = v20;
    v15 = v19;
    if (v14)
    {
      v10 = [v14 unsignedLongLongValue];
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v24 = v10;
          _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Calculated file size value of %llu", buf, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = v15;
          _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Received error when calculating file size %@", buf, 0xCu);
        }
      }

      v10 = 0;
    }
  }

  return v10;
}

uint64_t sub_1A8706894(void *a1, uint64_t a2, void *a3, _BYTE *a4, void *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  *a4 = 0;
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
  v10 = [v9 path];
  LOBYTE(a1) = [a1 fileExistsAtPath:v10];

  if (a1)
  {
    v22 = 0;
    v11 = *MEMORY[0x1E695DB80];
    v21 = 0;
    v12 = [v9 getResourceValue:&v22 forKey:v11 error:&v21];
    v13 = v22;
    v14 = v21;
    if (v12)
    {
      if (v13)
      {
        *a4 = [v13 BOOLValue];
      }

      v15 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
    v13 = 0;
  }

  if (a5)
  {
    v16 = v14;
    *a5 = v14;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v9 path];
      v19 = [v14 localizedDescription];
      *buf = 138412546;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Failed to get iCloudBackupAttribute '%@'. Error = '%@'", buf, 0x16u);
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

uint64_t sub_1A8706AB8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
  v10 = [v9 path];
  LOBYTE(a1) = [a1 fileExistsAtPath:v10];

  if (a1)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v12 = *MEMORY[0x1E695DB80];
    v26 = 0;
    v13 = [v9 setResourceValue:v11 forKey:v12 error:&v26];
    v14 = v26;

    if (v13)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = [v9 path];
          v17 = v16;
          v18 = @"NO";
          if (a3)
          {
            v18 = @"YES";
          }

          *buf = 138412546;
          v28 = v18;
          v29 = 2112;
          v30 = v16;
          _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Set iCloudBackupAttribute to %@ on '%@' ok", buf, 0x16u);
        }
      }

      v19 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:0];
  }

  if (a5)
  {
    v20 = v14;
    *a5 = v14;
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      if (a3)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v23 = [v9 path];
      v24 = [v14 localizedDescription];
      *buf = 138412802;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      v31 = 2112;
      v32 = v24;
      _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Failed to set iCloudBackupAttribute to %@ on '%@'. Error = '%@'", buf, 0x20u);
    }
  }

  v19 = 0;
LABEL_21:

  return v19;
}

uint64_t sub_1A8706D9C(void *a1, uint64_t a2, unsigned int a3, void *a4, void *a5)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (a3)
      {
        v8 = @"YES";
      }

      *buf = 138412546;
      v38 = v6;
      v39 = 2112;
      v40 = v8;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Setting iCloudBackupAttribute for all files and dirs at '%@' to %@", buf, 0x16u);
    }
  }

  v35 = 0;
  v9 = [a1 __im_setiCloudBackupAttribute:a3 onItemAtPath:v6 error:&v35];
  v10 = v35;
  v11 = v10;
  buf[0] = 0;
  if (v9)
  {
    if (![a1 fileExistsAtPath:v6 isDirectory:buf] || buf[0] != 1)
    {
      v22 = 1;
      goto LABEL_29;
    }

    v34 = v11;
    v25 = [a1 subpathsOfDirectoryAtPath:v6 error:&v34];
    v12 = v34;

    v13 = v25;
    if (v25)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v25;
      v14 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v14)
      {
        v15 = *v31;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v30 + 1) + 8 * i);
            v18 = objc_autoreleasePoolPush();
            if ([v17 characterAtIndex:0] == 46)
            {
              objc_autoreleasePoolPop(v18);
            }

            else
            {
              v19 = [v6 stringByAppendingPathComponent:v17];
              v29 = v12;
              v20 = [a1 __im_setiCloudBackupAttribute:a3 onItemAtPath:v19 error:&v29];
              v21 = v29;

              objc_autoreleasePoolPop(v18);
              if (!v20)
              {
                v22 = 0;
                v12 = v21;
                goto LABEL_32;
              }

              v12 = v21;
            }
          }

          v14 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v22 = 1;
LABEL_32:

      v13 = v25;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
    v12 = v10;
  }

  if (a5 && (v22 & 1) == 0)
  {
    v23 = v12;
    v22 = 0;
    *a5 = v12;
  }

  v11 = v12;
LABEL_29:

  return v22;
}

uint64_t sub_1A87070B0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v35 = [MEMORY[0x1E695DF70] array];
  v11 = [MEMORY[0x1E695DF70] array];
  v43 = 0;
  v42 = 0;
  v12 = [a1 __im_getiCloudBackupAttributeForItemAtPath:v10 attributeValue:&v43 error:&v42];
  v13 = v42;
  v14 = v13;
  v15 = 0;
  if (!v12 || v13)
  {
    goto LABEL_33;
  }

  if (v43 == 1)
  {
    [v35 addObject:v10];
  }

  [v11 addObject:v10];
  v41 = 0;
  v16 = [a1 subpathsOfDirectoryAtPath:v10 error:&v41];
  v17 = v41;
  v14 = v17;
  v15 = 0;
  if (!v16 || v17)
  {
    goto LABEL_32;
  }

  v31 = a4;
  v32 = a5;
  v33 = v16;
  v34 = a6;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (!v19)
  {
LABEL_23:

    v14 = 0;
    goto LABEL_25;
  }

  v20 = v19;
  v21 = *v38;
LABEL_9:
  v22 = 0;
  while (1)
  {
    if (*v38 != v21)
    {
      objc_enumerationMutation(v18);
    }

    v23 = *(*(&v37 + 1) + 8 * v22);
    if ([v23 characterAtIndex:{0, v31, v32}] == 46)
    {
      goto LABEL_21;
    }

    v24 = [v10 stringByAppendingPathComponent:v23];
    [v11 addObject:v24];
    v36 = 0;
    v25 = [a1 __im_getiCloudBackupAttributeForItemAtPath:v24 attributeValue:&v43 error:&v36];
    v26 = v36;
    if (!v25 || v26 != 0)
    {
      break;
    }

    if (v43 == 1)
    {
      [v35 addObject:v24];
    }

LABEL_21:
    if (v20 == ++v22)
    {
      v20 = [v18 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (v20)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  v14 = v26;

  if ((v25 & 1) == 0)
  {
    v15 = 0;
    a6 = v34;
    goto LABEL_31;
  }

LABEL_25:
  a6 = v34;
  if (v31)
  {
    v28 = v11;
    *v31 = v11;
  }

  if (v32)
  {
    *v32 = v35;
  }

  v15 = 1;
LABEL_31:
  v16 = v33;
LABEL_32:

LABEL_33:
  if (a6 && (v15 & 1) == 0)
  {
    v29 = v14;
    *a6 = v14;
  }

  return v15;
}

BOOL sub_1A870737C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 pathComponents];
  v5 = [v3 hasPrefix:@"/Volumes"];

  v10 = 0;
  if (v5)
  {
    if ([v4 count] >= 3)
    {
      v6 = [v4 objectAtIndex:2];
      v7 = [@"/Volumes" stringByAppendingPathComponent:v6];

      v8 = [MEMORY[0x1E696AC08] defaultManager];
      v9 = [v8 fileExistsAtPath:v7];

      if (!v9)
      {
        v10 = 1;
      }
    }
  }

  return v10;
}

uint64_t sub_1A8707450(void *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v6 = [a3 stringByResolvingAndStandardizingPath];
  if ([a1 __im_isPathOnMissingVolume:v6])
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E695DF20]);
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a4];
    v10 = [v8 initWithObjectsAndKeys:{v9, *MEMORY[0x1E696A370], 0}];

    v7 = [a1 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v10 error:0];
  }

  return v7;
}

id sub_1A8707520(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringGUID];
  v7 = IMSafeTemporaryDirectory();
  v8 = [v7 path];
  v9 = [a1 createUniqueDirectoryWithName:v6 atPath:v8 ofType:0];

  v10 = [v5 lastPathComponent];
  v11 = [v10 stringByDeletingPathExtension];
  v12 = [v5 pathExtension];

  v13 = [a1 uniqueFilename:v11 atPath:v9 ofType:v12];

  if (v13)
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_1A8707648(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v3 lastPathComponent];
    v6 = [v4 im_randomTemporaryFileURLWithFileName:v5];

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v17 = v3;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Attempting to copy URL %@ to new URL %@", buf, 0x16u);
      }
    }

    if (v6)
    {
      v8 = [MEMORY[0x1E696AC08] defaultManager];
      v15 = 0;
      v9 = [v8 copyItemAtURL:v3 toURL:v6 error:&v15];
      v10 = v15;

      if (v9)
      {
        v11 = v6;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v10 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = v10;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Copy failed with error %@", buf, 0xCu);
      }
    }

    v11 = 0;
    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Empty URL passed in for link generation", buf, 2u);
    }
  }

  v11 = 0;
LABEL_21:

  return v11;
}

id sub_1A87078D0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 URLPathAllowedCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v5];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"%" withString:@"-"];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"adaptive-image-glyph-%@.heic", v7];
  v9 = IMSafeTemporaryDirectory();
  v10 = [v9 URLByAppendingPathComponent:@"adaptive-image-glyphs" isDirectory:1];
  v11 = [v10 URLByAppendingPathComponent:v8 isDirectory:0];

  return v11;
}

void sub_1A8708298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *IMLoggingLevelFromString(uint64_t a1)
{
  if (qword_1EB30B850 != -1)
  {
    sub_1A88C63C8();
  }

  result = [qword_1EB30B848 objectForKey:a1];
  if (result)
  {
    LOBYTE(result) = [result integerValue];
  }

  return result;
}

__CFString *IMStringFromLoggingLevel(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return @"OS_LOG_TYPE_DEFAULT";
    }

    if (a1 == 1)
    {
      return @"OS_LOG_TYPE_INFO";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return @"OS_LOG_TYPE_DEBUG";
      case 16:
        return @"OS_LOG_TYPE_ERROR";
      case 17:
        return @"OS_LOG_TYPE_FAULT";
    }
  }

  return 0;
}

void *IMLogCategoryFromFilePath(const char *a1)
{
  v2 = strnlen(a1, 0x400uLL);
  if ((v2 - 1) >= 0)
  {
    v3 = v2;
    v4 = v2;
    do
    {
      v5 = v3 - 1;
      v6 = a1[v3 - 1];
      v7 = v3 - 1;
      if (v6 != 46)
      {
        if (v6 == 47)
        {
          v8 = v4 - v3;
          goto LABEL_9;
        }

        v7 = v4;
      }

      --v3;
      v4 = v7;
    }

    while (v5 > 0);
  }

  v8 = 0;
  v3 = 0;
LABEL_9:
  v9 = malloc_type_malloc(v8 + 1, 0x100004077774924uLL);
  memcpy(v9, &a1[v3], v8);
  *(v9 + v8) = 0;
  return v9;
}

void sub_1A8709CC4()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:5];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7}];
  v3 = qword_1EB30B858;
  qword_1EB30B858 = v2;
}

void sub_1A870A084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_1A870A0D8(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [v10 messagePartRange] == a1[8] && v7 == a1[9];
  v9 = v10;
  if (v8)
  {
    if ([v10 _canBeReplacedByRange:a1[4]])
    {
      [*(*(a1[5] + 8) + 40) replaceObjectAtIndex:a3 withObject:a1[4]];
      *(*(a1[6] + 8) + 24) = 1;
    }

    *a4 = 1;
    *(*(a1[7] + 8) + 24) = 0;
    v9 = v10;
  }
}

void sub_1A870B040()
{
  if (!qword_1EB3096F0)
  {
    v0 = MEMORY[0x1AC570AB0]("AKUserInfoChangedNotification", @"AuthKit");
    v1 = v0 ? *v0 : 0;
    objc_storeStrong(&qword_1EB3096F0, v1);
    if (!qword_1EB3096F0)
    {
      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *v3 = 0;
          _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Failed to weak link AKUserInfoChangedNotification from AuthKit.", v3, 2u);
        }
      }
    }
  }
}

void sub_1A870B174()
{
  if (!qword_1EB30B868)
  {
    v0 = MEMORY[0x1AC570AB0]("AKUserInfoChangedAltDSIDKey", @"AuthKit");
    v1 = v0 ? *v0 : 0;
    objc_storeStrong(&qword_1EB30B868, v1);
    if (!qword_1EB30B868)
    {
      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *v3 = 0;
          _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Failed to weak link AKUserInfoChangedAltDSIDKey from AuthKit.", v3, 2u);
        }
      }
    }
  }
}

void sub_1A870B2A8()
{
  if (!qword_1EB30B878)
  {
    v0 = MEMORY[0x1AC570AB0]("AKUserInfoChangedSecurityLevelKey", @"AuthKit");
    v1 = v0 ? *v0 : 0;
    objc_storeStrong(&qword_1EB30B878, v1);
    if (!qword_1EB30B878)
    {
      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *v3 = 0;
          _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Failed to weak link AKUserInfoChangedSecurityLevelKey from AuthKit.", v3, 2u);
        }
      }
    }
  }
}

uint64_t sub_1A870B398()
{
  result = sub_1A88C82E8();
  qword_1EB301FF8 = result;
  unk_1EB302000 = v1;
  return result;
}

uint64_t sub_1A870B418()
{
  result = sub_1A88C82E8();
  qword_1EB302010 = result;
  *algn_1EB302018 = v1;
  return result;
}

uint64_t sub_1A870B498()
{
  result = sub_1A88C82E8();
  qword_1EB302028 = result;
  unk_1EB302030 = v1;
  return result;
}

uint64_t sub_1A870B518()
{
  result = sub_1A88C82E8();
  qword_1EB302040 = result;
  *algn_1EB302048 = v1;
  return result;
}

uint64_t sub_1A870B598()
{
  result = sub_1A88C82E8();
  qword_1EB302058 = result;
  unk_1EB302060 = v1;
  return result;
}

uint64_t sub_1A870B618()
{
  result = sub_1A88C82E8();
  qword_1EB302070 = result;
  *algn_1EB302078 = v1;
  return result;
}

uint64_t sub_1A870B670(void *a1, void *a2)
{
  if (*a1 != -1)
  {
    v4 = a2;
    swift_once();
    a2 = v4;
  }

  v2 = *a2;

  return v2;
}

uint64_t static IMTextStyleAdaptiveImageGlyphAttribute.inheritedByAddedText.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB302080 = a1;
  return result;
}

uint64_t sub_1A870B7B4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB302080;
  return result;
}

uint64_t sub_1A870B800(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB302080 = v1;
  return result;
}

uint64_t static IMTextStyleAdaptiveImageGlyphAttribute.runBoundaries.getter@<X0>(void *a1@<X8>)
{
  *a1 = 12369903;
  a1[1] = 0xA300000000000000;
  v2 = *MEMORY[0x1E6968708];
  v3 = sub_1A88C7058();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t static IMTextStyleAdaptiveImageGlyphAttribute.objectiveCValue(for:)(uint64_t a1)
{
  sub_1A870C22C();
  v2 = sub_1A88C7078();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1A88C8B38();
}

uint64_t static IMTextStyleAdaptiveImageGlyphAttribute.encode(_:to:)(uint64_t a1, void *a2)
{
  sub_1A870C278(a2, a2[3]);
  sub_1A88C95B8();
  sub_1A8606088(v3, v4);
  sub_1A88C7078();
  sub_1A870C2BC(&qword_1EB3023D8, MEMORY[0x1E69655A0]);
  sub_1A88C93F8();
  return sub_1A85F1084(v3);
}

uint64_t static IMTextStyleAdaptiveImageGlyphAttribute.decode(from:)(void *a1)
{
  sub_1A870C278(a1, a1[3]);
  result = sub_1A88C9598();
  if (!v1)
  {
    sub_1A870C278(v3, v3[3]);
    sub_1A88C7078();
    sub_1A870C2BC(&unk_1EB3023E0, MEMORY[0x1E69655A0]);
    sub_1A88C93B8();
    return sub_1A85F1084(v3);
  }

  return result;
}

uint64_t sub_1A870BC0C(void *a1)
{
  sub_1A870C278(a1, a1[3]);
  result = sub_1A88C9598();
  if (!v1)
  {
    sub_1A870C278(v3, v3[3]);
    sub_1A88C7078();
    sub_1A870C2BC(&unk_1EB3023E0, MEMORY[0x1E69655A0]);
    sub_1A88C93B8();
    return sub_1A85F1084(v3);
  }

  return result;
}

uint64_t sub_1A870BCF8(uint64_t a1, void *a2)
{
  sub_1A870C278(a2, a2[3]);
  sub_1A88C95B8();
  sub_1A8606088(v3, v4);
  sub_1A88C7078();
  sub_1A870C2BC(&qword_1EB3023D8, MEMORY[0x1E69655A0]);
  sub_1A88C93F8();
  return sub_1A85F1084(v3);
}

uint64_t sub_1A870BDD8(uint64_t a1)
{
  sub_1A870C22C();
  v2 = sub_1A88C7078();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1A88C8B38();
}

uint64_t sub_1A870BF10(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (*a3 != -1)
  {
    v6 = a4;
    swift_once();
    a4 = v6;
  }

  v4 = *a4;

  return v4;
}

uint64_t sub_1A870BF70@<X0>(void *a1@<X8>)
{
  *a1 = 12369903;
  a1[1] = 0xA300000000000000;
  v2 = *MEMORY[0x1E6968708];
  v3 = sub_1A88C7058();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t AttributeScopes.IMTextStyleAttributes.foundation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A88C7038();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1A870C22C()
{
  result = qword_1EB3023D0;
  if (!qword_1EB3023D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3023D0);
  }

  return result;
}

void *sub_1A870C278(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1A870C2BC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t default argument 2 of PrototypingSetting.init<A>(_:domain:default:internalDefault:)()
{
  return 0;
}

{
  return 0;
}

{
  return sub_1A88C8648();
}

uint64_t default argument 2 of ProtectiveConcurrentQueue.init(label:qos:attributes:autoreleaseFrequency:target:initialState:)()
{
  sub_1A870CCE0(&qword_1EB3023F8);
  sub_1A88C8A18();
  *(swift_allocObject() + 16) = xmmword_1A88E14F0;
  sub_1A88C8A08();
  sub_1A870C2BC(&qword_1ED8C9580, MEMORY[0x1E69E8030]);
  sub_1A870CCE0(&qword_1EB3023F0);
  sub_1A85E8C68(&qword_1ED8C9590, &qword_1EB3023F0);
  return sub_1A88C8CE8();
}

uint64_t _s17IMSharedUtilities15ProtectiveQueueC4sync5flags7executeqd__8Dispatch0H13WorkItemFlagsV_qd__xzKXEtKlFfA__0()
{
  sub_1A88C7EC8();
  sub_1A870C2BC(&qword_1ED8C9480, MEMORY[0x1E69E7F60]);
  sub_1A870CCE0(&unk_1EB3081F0);
  sub_1A85E8C68(&qword_1ED8C9470, &unk_1EB3081F0);
  return sub_1A88C8CE8();
}

uint64_t sub_1A870C59C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8650];
  v3 = sub_1A870CCE0(&qword_1EB302400);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A870C6C0()
{
  sub_1A88C9528();
  swift_getWitnessTable();
  sub_1A88C7788();
  return sub_1A88C9578();
}

uint64_t sub_1A870C728(uint64_t a1, id *a2)
{
  result = sub_1A88C82C8();
  *a2 = 0;
  return result;
}

uint64_t sub_1A870C7A0(uint64_t a1, id *a2)
{
  v3 = sub_1A88C82D8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A870C820@<X0>(uint64_t *a1@<X8>)
{
  sub_1A88C82E8();
  v2 = sub_1A88C82A8();

  *a1 = v2;
  return result;
}

_DWORD *sub_1A870C864@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1A870C89C()
{
  v0 = sub_1A88C82E8();
  v1 = MEMORY[0x1AC56ED40](v0);

  return v1;
}

uint64_t sub_1A870C8D8()
{
  sub_1A88C82E8();
  sub_1A88C8268();
}

uint64_t sub_1A870C92C()
{
  sub_1A88C82E8();
  sub_1A88C9528();
  sub_1A88C8268();
  v0 = sub_1A88C9578();

  return v0;
}

uint64_t sub_1A870C9A0()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v1);
  return sub_1A88C9578();
}

uint64_t sub_1A870C9E8()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v1);
  return sub_1A88C9578();
}

uint64_t sub_1A870CA2C()
{
  swift_getWitnessTable();

  return sub_1A88C7778();
}

uint64_t sub_1A870CA98()
{
  v0 = sub_1A88C82E8();
  v2 = v1;
  if (v0 == sub_1A88C82E8() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A88C9398();
  }

  return v5 & 1;
}

uint64_t sub_1A870CB20(uint64_t a1)
{
  v2 = sub_1A870C2BC(&qword_1EB3026B8, type metadata accessor for Key);
  v3 = sub_1A870C2BC(&qword_1EB3026C0, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A870CBDC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1A88C82A8();

  *a1 = v2;
  return result;
}

uint64_t sub_1A870CC24(uint64_t a1)
{
  v2 = sub_1A870C2BC(&qword_1EB3027E8, type metadata accessor for Name);
  v3 = sub_1A870C2BC(&qword_1EB3027F0, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A870CCE0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A870CD28(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1A870CD70()
{
  result = qword_1EB302408;
  if (!qword_1EB302408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302408);
  }

  return result;
}

unint64_t sub_1A870CDD0()
{
  result = qword_1EB302410;
  if (!qword_1EB302410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302410);
  }

  return result;
}

unint64_t sub_1A870CE24()
{
  result = qword_1EB302418;
  if (!qword_1EB302418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302418);
  }

  return result;
}

unint64_t sub_1A870CE78()
{
  result = qword_1EB302420;
  if (!qword_1EB302420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302420);
  }

  return result;
}

unint64_t sub_1A870CECC()
{
  result = qword_1EB302428;
  if (!qword_1EB302428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302428);
  }

  return result;
}

unint64_t sub_1A870CF20()
{
  result = qword_1EB302430;
  if (!qword_1EB302430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302430);
  }

  return result;
}

uint64_t type metadata accessor for AttributeScopes.IMTextStyleAttributes()
{
  result = qword_1EB302458;
  if (!qword_1EB302458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharedUtilitiesHelloWorld(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SharedUtilitiesHelloWorld(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1A870D1FC()
{
  result = sub_1A88C7038();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A870D48C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A870D4AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_1A870D698(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1A870D6A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A870D6C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

id SharedUtilitiesHelloWorldClass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedUtilitiesHelloWorldClass.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedUtilitiesHelloWorldClass();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SharedUtilitiesHelloWorldClass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedUtilitiesHelloWorldClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 sub_1A870D918(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A870D92C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A870D974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A870D9D0()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v1);
  return sub_1A88C9578();
}

uint64_t sub_1A870DA18()
{
  v1 = *v0;
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](v1);
  return sub_1A88C9578();
}

uint64_t sub_1A870DA5C()
{
  v1 = 0x6E65644974616863;
  v2 = 0x55746E756F636361;
  if (*v0 != 2)
  {
    v2 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    v1 = 0x6C79745374616863;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A870DAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A870E174(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A870DB28(uint64_t a1)
{
  v2 = sub_1A870E5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A870DB64(uint64_t a1)
{
  v2 = sub_1A870E5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A870DBA0(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB302FD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A870E5D4();
  sub_1A88C95C8();
  v15 = 0;
  sub_1A88C9278();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = 1;
  sub_1A88C92F8();
  v13 = 2;
  sub_1A88C9278();
  v10 = *(v3 + 40);
  v12 = 3;
  if (!v10)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v10;

  sub_1A870CCE0(&qword_1EB302FC8);
  sub_1A870E628(&qword_1EB302FE0);
  sub_1A88C9228();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A870DDE4()
{
  v0 = qword_1EB302F80;

  return v0;
}

void sub_1A870DE1C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  v5 = sub_1A88C82A8();
  v6 = sub_1A88C82A8();
  if (v4)
  {
    v7 = sub_1A88C8188();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [a1 groupPhotoUpdatedForChatIdentifier:v5 style:v3 account:v6 userInfo:?];
}

double sub_1A870DEF4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A870E2F0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_1A870DF50(uint64_t a1)
{
  *(a1 + 8) = sub_1A870DF80();
  result = sub_1A870DFD4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A870DF80()
{
  result = qword_1EB302F90;
  if (!qword_1EB302F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302F90);
  }

  return result;
}

unint64_t sub_1A870DFD4()
{
  result = qword_1EB302F98;
  if (!qword_1EB302F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302F98);
  }

  return result;
}

unint64_t sub_1A870E028(uint64_t a1)
{
  result = sub_1A870E050();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A870E050()
{
  result = qword_1EB302FA0;
  if (!qword_1EB302FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302FA0);
  }

  return result;
}

unint64_t sub_1A870E0A4()
{
  result = qword_1EB302FA8;
  if (!qword_1EB302FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302FA8);
  }

  return result;
}

unint64_t sub_1A870E0F8(uint64_t a1)
{
  result = sub_1A870E120();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A870E120()
{
  result = qword_1EB302FB0;
  if (!qword_1EB302FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302FB0);
  }

  return result;
}

uint64_t sub_1A870E174(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x55746E756F636361 && a2 == 0xEF4449657571696ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A870E2F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB302FB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A870E5D4();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v25 = 0;
  v9 = sub_1A88C9108();
  v12 = v11;
  v13 = v9;
  v24 = 1;
  v21 = sub_1A88C9188();
  v23 = 2;
  v18 = sub_1A88C9108();
  v19 = v14;
  sub_1A870CCE0(&qword_1EB302FC8);
  v22 = 3;
  sub_1A870E628(&qword_1EB302FD0);
  sub_1A88C90B8();
  if (v20 == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v20;
  }

  (*(v6 + 8))(v8, v5);
  result = sub_1A85F1084(a1);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v21;
  v16 = v19;
  *(a2 + 24) = v18;
  *(a2 + 32) = v16;
  *(a2 + 40) = v15;
  return result;
}

unint64_t sub_1A870E5D4()
{
  result = qword_1EB302FC0;
  if (!qword_1EB302FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302FC0);
  }

  return result;
}

uint64_t sub_1A870E628(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB302FC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupPhotoUpdatedBroadcast.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupPhotoUpdatedBroadcast.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A870E7D8()
{
  result = qword_1EB302FE8;
  if (!qword_1EB302FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302FE8);
  }

  return result;
}

unint64_t sub_1A870E830()
{
  result = qword_1EB302FF0;
  if (!qword_1EB302FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302FF0);
  }

  return result;
}

unint64_t sub_1A870E888()
{
  result = qword_1EB302FF8;
  if (!qword_1EB302FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB302FF8);
  }

  return result;
}

id TranscodingSettingsProvider.transcodePreviews.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_1A88C82A8();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_1A870E92C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = sub_1A88C82A8();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_1A870E98C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_1A88C82A8();
    [v2 setBool:v3 forKey:v4];
  }
}

void TranscodingSettingsProvider.transcodePreviews.setter(char a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = sub_1A88C82A8();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TranscodingSettingsProvider.transcodePreviews.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v1;
  *(a1 + 8) = v3;
  if (v3)
  {
    v4 = sub_1A88C82A8();
    v5 = [v3 BOOLForKey_];

    v6 = sub_1A870EB24;
  }

  else
  {
    v5 = 0;
    v6 = nullsub_12;
  }

  result = v6;
  *(a1 + 16) = v5;
  return result;
}

void sub_1A870EB24(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = sub_1A88C82A8();
  [v1 setBool:v2 forKey:v3];
}

id TranscodingSettingsProvider.disableLowQualityModeOnWiFi.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_1A88C82A8();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_1A870EBD8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = sub_1A88C82A8();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_1A870EC38(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_1A88C82A8();
    [v2 setBool:v3 forKey:v4];
  }
}

void TranscodingSettingsProvider.disableLowQualityModeOnWiFi.setter(char a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = sub_1A88C82A8();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TranscodingSettingsProvider.disableLowQualityModeOnWiFi.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v1;
  *(a1 + 8) = v3;
  if (v3)
  {
    v4 = sub_1A88C82A8();
    v5 = [v3 BOOLForKey_];

    v6 = sub_1A870EDD0;
  }

  else
  {
    v5 = 0;
    v6 = j_nullsub_12;
  }

  result = v6;
  *(a1 + 16) = v5;
  return result;
}

void sub_1A870EDD0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = sub_1A88C82A8();
  [v1 setBool:v2 forKey:v3];
}

id TranscodingSettingsProvider.transcodePreviewsInitialized.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_1A88C82A8();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_1A870EE84(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = sub_1A88C82A8();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_1A870EEE4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_1A88C82A8();
    [v2 setBool:v3 forKey:v4];
  }
}

void TranscodingSettingsProvider.transcodePreviewsInitialized.setter(char a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = sub_1A88C82A8();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TranscodingSettingsProvider.transcodePreviewsInitialized.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v1;
  *(a1 + 8) = v3;
  if (v3)
  {
    v4 = sub_1A88C82A8();
    v5 = [v3 BOOLForKey_];

    v6 = sub_1A870F07C;
  }

  else
  {
    v5 = 0;
    v6 = j_nullsub_12;
  }

  result = v6;
  *(a1 + 16) = v5;
  return result;
}

void sub_1A870F07C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = sub_1A88C82A8();
  [v1 setBool:v2 forKey:v3];
}

id TranscodingSettingsProvider.disableLowQualityModeOnWiFiInitialized.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_1A88C82A8();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_1A870F130(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = sub_1A88C82A8();
    LOBYTE(v3) = [v3 BOOLForKey_];
  }

  *a2 = v3;
}

void sub_1A870F190(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = sub_1A88C82A8();
    [v2 setBool:v3 forKey:v4];
  }
}

void TranscodingSettingsProvider.disableLowQualityModeOnWiFiInitialized.setter(char a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = sub_1A88C82A8();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*TranscodingSettingsProvider.disableLowQualityModeOnWiFiInitialized.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v1;
  *(a1 + 8) = v3;
  if (v3)
  {
    v4 = sub_1A88C82A8();
    v5 = [v3 BOOLForKey_];

    v6 = sub_1A870F328;
  }

  else
  {
    v5 = 0;
    v6 = j_nullsub_12;
  }

  result = v6;
  *(a1 + 16) = v5;
  return result;
}

void sub_1A870F328(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = sub_1A88C82A8();
  [v1 setBool:v2 forKey:v3];
}

uint64_t TranscodingSettingsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  TranscodingSettingsProvider.init()();
  return v0;
}

void *TranscodingSettingsProvider.init()()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1A88C82A8();
  v3 = [v1 initWithSuiteName_];

  v0[2] = v3;
  v0[3] = 0xD000000000000019;
  v0[4] = 0x80000001A8916EF0;
  v0[5] = 0xD000000000000026;
  v0[6] = 0x80000001A8916F10;
  v0[7] = 0xD000000000000020;
  v0[8] = 0x80000001A8916F40;
  v0[9] = 0xD00000000000003BLL;
  v0[10] = 0x80000001A8916F70;
  return v0;
}

uint64_t TranscodingSettingsProvider.deinit()
{

  return v0;
}

uint64_t TranscodingSettingsProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1A870F540()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = sub_1A88C82A8();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_1A870F594(char a1)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v4 = sub_1A88C82A8();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

uint64_t (*sub_1A870F610(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TranscodingSettingsProvider.transcodePreviews.modify(v2);
  return sub_1A870F684;
}

id sub_1A870F688()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = sub_1A88C82A8();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_1A870F6DC(char a1)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v4 = sub_1A88C82A8();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

uint64_t (*sub_1A870F758(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TranscodingSettingsProvider.disableLowQualityModeOnWiFi.modify(v2);
  return sub_1A870FAF0;
}

id sub_1A870F7CC()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = sub_1A88C82A8();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_1A870F820(char a1)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v4 = sub_1A88C82A8();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

uint64_t (*sub_1A870F89C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TranscodingSettingsProvider.transcodePreviewsInitialized.modify(v2);
  return sub_1A870FAF0;
}

id sub_1A870F910()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    v2 = sub_1A88C82A8();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void sub_1A870F964(char a1)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v4 = sub_1A88C82A8();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

uint64_t (*sub_1A870F9E0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = TranscodingSettingsProvider.disableLowQualityModeOnWiFiInitialized.modify(v2);
  return sub_1A870FAF0;
}

void sub_1A870FA54(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1A870FAF4()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1ED8C9060);
  sub_1A85EF0E4(v0, qword_1ED8C9060);
  return sub_1A88C7E48();
}

char *IMCTRCSUtilitiesManager.init(delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1A871183C(a1, v2, ObjectType, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_1A870FD14(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___IMCTRCSUtilitiesManager_delegate;
  v4 = *(v1 + OBJC_IVAR___IMCTRCSUtilitiesManager_delegate + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  swift_unknownObjectRetain();
  v7 = v6(a1, ObjectType, v4);
  swift_unknownObjectRelease();
  v8 = *(v3 + 8);
  v9 = swift_getObjectType();
  v10 = *(v8 + 120);
  swift_unknownObjectRetain();
  v11 = v10(a1, v9, v8);
  v13 = v12;
  swift_unknownObjectRelease();
  if (v13)
  {
    if (v11 == 28259 && v13 == 0xE200000000000000)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1A88C9398();
    }

    v17 = *(v3 + 8);
    v18 = swift_getObjectType();
    v19 = *(v17 + 128);
    swift_unknownObjectRetain();
    v20 = v19(0xD000000000000013, 0x80000001A8916B50, 0xD000000000000013, 0x80000001A89171A0, 0, v18, v17);
    swift_unknownObjectRelease();
    if (v7)
    {
      v16 = 0;
    }

    else
    {
      v16 = (v20 ^ 1) & v15;
    }

    if ((v20 & 1) == 0)
    {
      if (qword_1ED8C9058 != -1)
      {
        swift_once();
      }

      v21 = sub_1A88C7E58();
      sub_1A85EF0E4(v21, qword_1ED8C9060);
      v22 = sub_1A88C7E38();
      v23 = sub_1A88C89B8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67109120;
        *(v24 + 4) = v16 & 1;
        _os_log_impl(&dword_1A85E5000, v22, v23, "Clearing first time RCS. Requires first time on alert: %{BOOL}d", v24, 8u);
        MEMORY[0x1AC571F20](v24, -1, -1);
      }

      v25 = *(v3 + 8);
      v26 = swift_getObjectType();
      v27 = *(v25 + 136);
      swift_unknownObjectRetain();
      v27(1, 0xD000000000000013, 0x80000001A8916B50, 0xD000000000000013, 0x80000001A89171A0, v26, v25);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A870FFE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR___IMCTRCSUtilitiesManager_delegate + 8);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 104);
  swift_unknownObjectRetain();
  v12 = v11(a3, a4, a1, a2, ObjectType, v9);
  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = sub_1A870FD14(v12);

    return v13 & 1;
  }

  else
  {
    if (qword_1ED8C9058 != -1)
    {
      swift_once();
    }

    v15 = sub_1A88C7E58();
    sub_1A85EF0E4(v15, qword_1ED8C9060);

    v16 = sub_1A88C7E38();
    v17 = sub_1A88C89B8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315394;
      if (a2)
      {
        v20 = a2;
      }

      else
      {
        a1 = 0x3E6C696E3CLL;
        v20 = 0xE500000000000000;
      }

      v21 = sub_1A85F0394(a1, v20, &v24);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2080;
      if (a4)
      {
        v22 = a4;
      }

      else
      {
        a3 = 0x3E6C696E3CLL;
        v22 = 0xE500000000000000;
      }

      v23 = sub_1A85F0394(a3, v22, &v24);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_1A85E5000, v16, v17, "No subscription context found for phone number %s simID %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v19, -1, -1);
      MEMORY[0x1AC571F20](v18, -1, -1);
    }

    return 0;
  }
}

id sub_1A8710654(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (IMSharedHelperRetrieveSimDetailsFromTelephony() && (v7 = [objc_opt_self() sharedInstance], v8 = objc_msgSend(v7, sel_ctSubscriptionInfo), v7, v8))
  {
    if (a4)
    {
      a4 = sub_1A88C82A8();
    }

    if (a2)
    {
      a2 = sub_1A88C82A8();
    }

    v9 = [v8 __im_subscriptionContextOrDefaultForForSimID_phoneNumber_];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 enabledForContext_];

  return v10;
}

uint64_t sub_1A871077C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = a4;
  if (!a3)
  {
    v8 = 0;
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = sub_1A88C82E8();
  v10 = v9;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1A88C82E8();
  v6 = v12;
LABEL_6:
  v13 = a1;
  v14 = a5(v8, v10, v11, v6);

  return v14 & 1;
}

uint64_t sub_1A871082C(void *a1)
{
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    if (a1)
    {
      v3 = *(v1 + OBJC_IVAR___IMCTRCSUtilitiesManager_delegate + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 24);
      v6 = a1;
      swift_unknownObjectRetain();
      v7 = v5(v6, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED8C9058 != -1)
      {
        swift_once();
      }

      v8 = sub_1A88C7E58();
      sub_1A85EF0E4(v8, qword_1ED8C9060);
      v9 = sub_1A88C7E38();
      v10 = sub_1A88C89A8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v22 = v12;
        *v11 = 136446210;
        *(v11 + 4) = sub_1A85F0394(0x2864656C62616E65, 0xED0000293A726F66, &v22);
        _os_log_impl(&dword_1A85E5000, v9, v10, "%{public}s failed to find subscription context.", v11, 0xCu);
        sub_1A85F1084(v12);
        MEMORY[0x1AC571F20](v12, -1, -1);
        MEMORY[0x1AC571F20](v11, -1, -1);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = IMMMSEnabled();
  }

  if (qword_1ED8C9058 != -1)
  {
    swift_once();
  }

  v13 = sub_1A88C7E58();
  sub_1A85EF0E4(v13, qword_1ED8C9060);
  v14 = a1;
  v15 = sub_1A88C7E38();
  v16 = sub_1A88C89A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v22 = v19;
    *v17 = 136446722;
    *(v17 + 4) = sub_1A85F0394(0x2864656C62616E65, 0xED0000293A726F66, &v22);
    *(v17 + 12) = 1024;
    *(v17 + 14) = v7 & 1;
    *(v17 + 18) = 2112;
    *(v17 + 20) = v14;
    *v18 = a1;
    v20 = v14;
    _os_log_impl(&dword_1A85E5000, v15, v16, "%{public}s isRCSEnabled %{BOOL}d for subscriptionContext %@", v17, 0x1Cu);
    sub_1A85EF638(v18, &qword_1EB306540);
    MEMORY[0x1AC571F20](v18, -1, -1);
    sub_1A85F1084(v19);
    MEMORY[0x1AC571F20](v19, -1, -1);
    MEMORY[0x1AC571F20](v17, -1, -1);
  }

  return v7 & 1;
}

uint64_t sub_1A8710BCC(void *a1)
{
  v3 = [a1 phoneNumber];
  v4 = [a1 labelID];
  v5 = [v1 enabledForPhoneNumber:v3 simID:v4];

  if (!v5)
  {
    return 0;
  }

  if (qword_1EB302118 != -1)
  {
    swift_once();
  }

  v24[0] = xmmword_1EB304408;
  v24[1] = unk_1EB304418;
  v24[2] = xmmword_1EB304428;
  sub_1A8711A1C(v24, v23);
  v6 = sub_1A87E9970();
  sub_1A85EF638(v24, &qword_1EB303010);
  if ((v6 & 1) == 0)
  {
    sub_1A870CCE0(&unk_1EB306530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A88E2770;
    *(inited + 32) = sub_1A88C82E8();
    *(inited + 40) = v13;
    *(inited + 48) = 0xD00000000000001BLL;
    *(inited + 56) = 0x80000001A8917120;
    v14 = [objc_opt_self() sharedInstance];
    sub_1A8757C74(inited);

    v15 = sub_1A88C85E8();

    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v18 = [v14 copyCarrierBundleValueForSubscriptionContext:a1 keyHierarchy:v15 defaultValue:v16 valueIfError:v17];

    if (v18)
    {
      sub_1A88C8CB8();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      sub_1A85E9718(0, &qword_1ED8C9450);
      if (swift_dynamicCast())
      {
        v19 = [v20 BOOLValue];

        return v19;
      }
    }

    else
    {
      sub_1A85EF638(v23, &qword_1EB3057B0);
    }

    return 0;
  }

  if (qword_1ED8C9058 != -1)
  {
    swift_once();
  }

  v7 = sub_1A88C7E58();
  sub_1A85EF0E4(v7, qword_1ED8C9060);
  v8 = sub_1A88C7E38();
  v9 = sub_1A88C89A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A85E5000, v8, v9, "Forcing RBM supported due to override", v10, 2u);
    MEMORY[0x1AC571F20](v10, -1, -1);
  }

  return 1;
}

uint64_t sub_1A8710FB8(uint64_t a1)
{
  result = [v1 isRBMSupportedForContext_];
  if (result)
  {
    if (qword_1EB302118 != -1)
    {
      swift_once();
    }

    v21[0] = xmmword_1EB304408;
    v21[1] = unk_1EB304418;
    v21[2] = xmmword_1EB304428;
    sub_1A8711A1C(v21, v20);
    v4 = sub_1A87E9970();
    sub_1A85EF638(v21, &qword_1EB303010);
    if (v4)
    {
      if (qword_1ED8C9058 != -1)
      {
        swift_once();
      }

      v5 = sub_1A88C7E58();
      sub_1A85EF0E4(v5, qword_1ED8C9060);
      v6 = sub_1A88C7E38();
      v7 = sub_1A88C89A8();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_1A85E5000, v6, v7, "Forcing RBM enabled due to override", v8, 2u);
        MEMORY[0x1AC571F20](v8, -1, -1);
      }

      return 1;
    }

    else
    {
      sub_1A870CCE0(&unk_1EB306530);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1A88E2770;
      *(inited + 32) = sub_1A88C82E8();
      *(inited + 40) = v10;
      *(inited + 48) = 0xD000000000000020;
      *(inited + 56) = 0x80000001A89170F0;
      v11 = [objc_opt_self() sharedInstance];
      sub_1A8757C74(inited);

      v12 = sub_1A88C85E8();

      v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v15 = [v11 copyCarrierBundleValueForSubscriptionContext:a1 keyHierarchy:v12 defaultValue:v13 valueIfError:v14];

      if (v15)
      {
        sub_1A88C8CB8();
        swift_unknownObjectRelease();
      }

      else
      {
        v18 = 0u;
        v19 = 0u;
      }

      v20[0] = v18;
      v20[1] = v19;
      if (*(&v19 + 1))
      {
        sub_1A85E9718(0, &qword_1ED8C9450);
        if (swift_dynamicCast())
        {
          v16 = [v17 BOOLValue];

          return v16;
        }
      }

      else
      {
        sub_1A85EF638(v20, &qword_1EB3057B0);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1A8711360(void *a1)
{
  if (a1 && (v3 = *(v1 + OBJC_IVAR___IMCTRCSUtilitiesManager_delegate + 8), ObjectType = swift_getObjectType(), v5 = *(v3 + 80), v6 = a1, swift_unknownObjectRetain(), LOBYTE(v3) = v5(v6, ObjectType, v3), v6, swift_unknownObjectRelease(), (v3 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    if (qword_1EB302120 != -1)
    {
      swift_once();
    }

    v10[0] = xmmword_1EB304438;
    v10[1] = unk_1EB304448;
    v10[2] = xmmword_1EB304458;
    sub_1A8711A1C(v10, &v9);
    v7 = sub_1A87E9970();
    sub_1A85EF638(v10, &qword_1EB303010);
  }

  return v7 & 1;
}

uint64_t IMCTRCSUtilitiesManager.retryInterval(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMCTRCSUtilitiesManager_delegate + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t IMCTRCSUtilitiesManager.retryExpiryDate(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMCTRCSUtilitiesManager_delegate + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 40);
  swift_unknownObjectRetain();
  v5(a1, ObjectType, v3);

  return swift_unknownObjectRelease();
}

uint64_t IMCTRCSUtilitiesManager.retryEnabled(for:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___IMCTRCSUtilitiesManager_delegate + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 48);
  swift_unknownObjectRetain();
  v6 = v5(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v6;
}

char *sub_1A871183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = &v6[OBJC_IVAR___IMCTRCSUtilitiesManager_delegate];
  *v7 = a1;
  *(v7 + 1) = a4;
  v8 = v6;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1A8711A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB303010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8711A8C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_opt_self();
  v9 = [v8 sharedInstance];
  v10 = [v9 ctSubscriptionInfo];

  if (!v10)
  {
    goto LABEL_11;
  }

  if (a4)
  {
    v11 = sub_1A88C82A8();
    if (a2)
    {
LABEL_4:
      v12 = sub_1A88C82A8();
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (a2)
    {
      goto LABEL_4;
    }
  }

  v12 = 0;
LABEL_7:
  v13 = [v10 __im_subscriptionContextOrDefaultForForSimID_phoneNumber_];

  if (!v13)
  {
LABEL_11:
    v13 = 1;
    goto LABEL_12;
  }

  v14 = [v8 sharedInstance];
  v15 = [v14 rcsConfigurationForSubscriptionContext_];

  if (!v15 || (v16 = [v15 groupChatCapabilites], v15, v13, (v13 = v16) != 0))
  {

    goto LABEL_11;
  }

LABEL_12:
  if (qword_1ED8C9058 != -1)
  {
    swift_once();
  }

  v17 = sub_1A88C7E58();
  sub_1A85EF0E4(v17, qword_1ED8C9060);

  v18 = sub_1A88C7E38();
  v19 = sub_1A88C89A8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315650;
    if (a2)
    {
      v22 = a2;
    }

    else
    {
      a1 = 0x3E6C696E3CLL;
      v22 = 0xE500000000000000;
    }

    v23 = sub_1A85F0394(a1, v22, &v27);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    if (a4)
    {
      v24 = a4;
    }

    else
    {
      a3 = 0x3E6C696E3CLL;
      v24 = 0xE500000000000000;
    }

    v25 = sub_1A85F0394(a3, v24, &v27);

    *(v20 + 14) = v25;
    *(v20 + 22) = 1024;
    *(v20 + 24) = v13;
    _os_log_impl(&dword_1A85E5000, v18, v19, "Groups enabled for phone number %s simID %s: %{BOOL}d", v20, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v21, -1, -1);
    MEMORY[0x1AC571F20](v20, -1, -1);
  }

  return v13;
}

uint64_t sub_1A8711DBC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = objc_opt_self();
  v9 = [v8 sharedInstance];
  v10 = [v9 ctSubscriptionInfo];

  if (v10 && (!a4 ? (v11 = 0) : (v11 = sub_1A88C82A8()), v12 = sub_1A88C82A8(), v13 = [v10 __im_subscriptionContextOrDefaultForForSimID_phoneNumber_], v10, v11, v12, v13))
  {
    v14 = [v8 sharedInstance];
    v15 = [v14 rcsConfigurationForSubscriptionContext_];

    if (v15)
    {
      v16 = [v15 groupChatCapabilites];
      if (v16 && (v17 = v16, v18 = [v16 maxGroupSize], v17, v18))
      {
        v19 = [v18 integerValue];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (qword_1ED8C9058 != -1)
  {
    swift_once();
  }

  v20 = sub_1A88C7E58();
  sub_1A85EF0E4(v20, qword_1ED8C9060);

  v21 = sub_1A88C7E38();
  v22 = sub_1A88C89A8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_1A85F0394(a1, a2, &v28);
    *(v23 + 12) = 2080;
    if (a4)
    {
      v25 = a4;
    }

    else
    {
      a3 = 0x3E6C696E3CLL;
      v25 = 0xE500000000000000;
    }

    v26 = sub_1A85F0394(a3, v25, &v28);

    *(v23 + 14) = v26;
    *(v23 + 22) = 2048;
    *(v23 + 24) = v19;
    _os_log_impl(&dword_1A85E5000, v21, v22, "Max group size for phone number %s simID %s: %ld", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v24, -1, -1);
    MEMORY[0x1AC571F20](v23, -1, -1);
  }

  return v19;
}

uint64_t sub_1A87120F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    v8 = objc_opt_self();
    v9 = [v8 sharedInstance];
    v10 = [v9 ctSubscriptionInfo];

    if (v10)
    {
      v11 = a4 ? sub_1A88C82A8() : 0;
      v12 = sub_1A88C82A8();
      v13 = [v10 __im_subscriptionContextOrDefaultForForSimID_phoneNumber_];

      if (v13)
      {
        sub_1A870CCE0(&unk_1EB306530);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A88E2770;
        *(inited + 32) = sub_1A88C82E8();
        *(inited + 40) = v15;
        *(inited + 48) = 0xD00000000000001CLL;
        *(inited + 56) = 0x80000001A8917180;
        v16 = [v8 sharedInstance];
        sub_1A8757C74(inited);

        v17 = sub_1A88C85E8();

        v18 = sub_1A88C86C8();
        v19 = sub_1A88C86C8();
        v20 = [v16 copyCarrierBundleValueForSubscriptionContext:v13 keyHierarchy:v17 defaultValue:v18 valueIfError:v19];

        if (v20)
        {
          sub_1A88C8CB8();

          swift_unknownObjectRelease();
        }

        else
        {

          v31 = 0u;
          v32 = 0u;
        }

        v33[0] = v31;
        v33[1] = v32;
        if (*(&v32 + 1))
        {
          if (swift_dynamicCast())
          {
            v21 = v30;
            goto LABEL_15;
          }
        }

        else
        {
          sub_1A85EF638(v33, &qword_1EB3057B0);
        }
      }
    }
  }

  v21 = 1;
LABEL_15:
  if (qword_1ED8C9058 != -1)
  {
    swift_once();
  }

  v22 = sub_1A88C7E58();
  sub_1A85EF0E4(v22, qword_1ED8C9060);

  v23 = sub_1A88C7E38();
  v24 = sub_1A88C89B8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v33[0] = v26;
    *v25 = 136446978;
    *(v25 + 4) = sub_1A85F0394(0xD000000000000031, 0x80000001A8917140, v33);
    *(v25 + 12) = 1024;
    *(v25 + 14) = v21;
    *(v25 + 18) = 2080;
    *(v25 + 20) = sub_1A85F0394(a1, a2, v33);
    *(v25 + 28) = 2080;
    if (a4)
    {
      v27 = a4;
    }

    else
    {
      a3 = 0x3E6C696E3CLL;
      v27 = 0xE500000000000000;
    }

    v28 = sub_1A85F0394(a3, v27, v33);

    *(v25 + 30) = v28;
    _os_log_impl(&dword_1A85E5000, v23, v24, "%{public}s resolved %{BOOL}d phoneNumber %s simID %s", v25, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v26, -1, -1);
    MEMORY[0x1AC571F20](v25, -1, -1);
  }

  return v21;
}

__n128 sub_1A8712528(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1A871254C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A8712594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1A87125F8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A8712624(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A871266C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A87126D8()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB303018);
  sub_1A85EF0E4(v0, qword_1EB303018);
  return sub_1A88C7E48();
}

uint64_t sub_1A8712758(void *a1)
{
  v20 = a1;
  v2 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21[-v3 - 8];
  v5 = *(v1 + 32);
  v6 = sub_1A88C82A8();
  v7 = sub_1A88C82A8();
  if (*(v1 + 40))
  {
    v8 = sub_1A88C8188();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1A88C82A8();
  if (*(v1 + 72))
  {
    v10 = sub_1A88C82A8();
  }

  else
  {
    v10 = 0;
  }

  sub_1A8714988();
  v11 = sub_1A88C85E8();
  v12 = sub_1A88C85E8();
  LOBYTE(v19) = *(v1 + 96);
  [v20 account:v6 chat:v7 style:v5 chatProperties:v8 groupID:v9 chatPersonCentricID:v10 messagesReceived:v11 removed:v12 messagesComingFromStorage:v19];

  v13 = sub_1A88C87A8();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v15 = *(v1 + 80);
  *(v14 + 96) = *(v1 + 64);
  *(v14 + 112) = v15;
  *(v14 + 128) = *(v1 + 96);
  v16 = *(v1 + 16);
  *(v14 + 32) = *v1;
  *(v14 + 48) = v16;
  v17 = *(v1 + 48);
  *(v14 + 64) = *(v1 + 32);
  *(v14 + 80) = v17;
  sub_1A8714A84(v1, v21);
  sub_1A873A5E4(0, 0, v4, &unk_1A88E2A40, v14);
}

uint64_t sub_1A87129C0()
{
  v41 = v0;
  v1 = *(*(v0 + 16) + 80);
  *(v0 + 24) = v1;
  v38 = v1 >> 62;
  if (v1 >> 62)
  {
LABEL_48:
    if (sub_1A88C8D38())
    {
      v35 = sub_1A88C8D38();
      if (v35)
      {
        v2 = v35;
        goto LABEL_3;
      }
    }

LABEL_51:
    v36 = *(v39 + 8);

    return v36();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_51;
  }

LABEL_3:
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v4)
    {
      v5 = MEMORY[0x1AC56F710](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v8 = [v5 fileTransferGUIDs];
    if (v8)
    {
      break;
    }

LABEL_5:
    ++v3;
    if (v7 == v2)
    {
      goto LABEL_51;
    }
  }

  v9 = v8;
  v10 = sub_1A88C85F8();

  v11 = *(v10 + 16);

  if (!v11)
  {
    goto LABEL_5;
  }

  if (v38)
  {
    v12 = sub_1A88C8D38();
    if (!v12)
    {
      goto LABEL_33;
    }

LABEL_16:
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v15 = v13;
    while (1)
    {
      if (v4)
      {
        v16 = MEMORY[0x1AC56F710](v15, v1);
      }

      else
      {
        if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v16 = *(v1 + 8 * v15 + 32);
      }

      v17 = v16;
      v13 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v18 = [v16 guid];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1A88C82E8();
        v38 = v21;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A85F1B30(0, *(v14 + 2) + 1, 1, v14);
        }

        v23 = *(v14 + 2);
        v22 = *(v14 + 3);
        if (v23 >= v22 >> 1)
        {
          v14 = sub_1A85F1B30((v22 > 1), v23 + 1, 1, v14);
        }

        *(v14 + 2) = v23 + 1;
        v24 = &v14[16 * v23];
        *(v24 + 4) = v20;
        *(v24 + 5) = v38;
        if (v13 != v12)
        {
          goto LABEL_17;
        }

        goto LABEL_34;
      }

      ++v15;
      if (v13 == v12)
      {
        goto LABEL_34;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v12 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_16;
  }

LABEL_33:
  v14 = MEMORY[0x1E69E7CC0];
LABEL_34:
  if (qword_1EB302088 != -1)
  {
    swift_once();
  }

  v25 = sub_1A88C7E58();
  sub_1A85EF0E4(v25, qword_1EB303018);

  v26 = sub_1A88C7E38();
  v27 = sub_1A88C89D8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v40 = v29;
    *v28 = 136315138;
    v30 = MEMORY[0x1AC56EED0](v14, MEMORY[0x1E69E6158]);
    v32 = v31;

    v33 = sub_1A85F0394(v30, v32, &v40);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_1A85E5000, v26, v27, "MessagesReceivedForAccountWithPropertiesBroadcast: kicking off batch attachment download for incoming messages with attachments. Message guids: %s", v28, 0xCu);
    sub_1A85F1084(v29);
    MEMORY[0x1AC571F20](v29, -1, -1);
    MEMORY[0x1AC571F20](v28, -1, -1);
  }

  else
  {
  }

  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v34 = qword_1EB309050;
  *(v39 + 32) = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A8712E3C, v34, 0);
}

uint64_t sub_1A8712E3C()
{
  if (qword_1EB302388 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1A8712ECC, v1, 0);
}

uint64_t sub_1A8712ECC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1A8712F70;
  v2 = *(v0 + 24);

  return RemoteIntentFileDownloadManager.batchDownloadTransfersForMessages(_:batchSize:)(v2, 2);
}

uint64_t sub_1A8712F70()
{
  v2 = *v1;

  if (!v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

unint64_t sub_1A8713074(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x55746E756F636361;
    v5 = 0x6C79745374616863;
    if (a1 != 2)
    {
      v5 = 0xD000000000000012;
    }

    if (a1)
    {
      v4 = 0x6E65644974616863;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000019;
    if (a1 == 7)
    {
      v1 = 0x476465766F6D6572;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0x444970756F7267;
    if (a1 != 4)
    {
      v2 = 0x65436E6F73726570;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A87131CC(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB303110);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8715FC4();
  sub_1A88C95C8();
  LOBYTE(v12) = 0;
  sub_1A88C9278();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v12) = 1;
  sub_1A88C9278();
  LOBYTE(v12) = 2;
  sub_1A88C92F8();
  v10 = v3[5];
  v13 = 3;
  if (v10)
  {
    v12 = v10;

    sub_1A870CCE0(&qword_1EB3030B0);
    sub_1A85FB520(&qword_1EB3030D8, &qword_1EB3030B0);
    sub_1A88C9228();
  }

  LOBYTE(v12) = 4;
  sub_1A88C9278();
  LOBYTE(v12) = 5;
  sub_1A88C91C8();
  v12 = v3[10];
  v13 = 6;
  sub_1A870CCE0(&qword_1EB3030F0);
  sub_1A85FB520(&qword_1EB303118, &qword_1EB3030F0);
  sub_1A88C92C8();
  v12 = v3[11];
  v13 = 7;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  LOBYTE(v12) = 8;
  sub_1A88C9288();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A87135B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8714D00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A87135E8(uint64_t a1)
{
  v2 = sub_1A8715FC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8713624(uint64_t a1)
{
  v2 = sub_1A8715FC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8713660()
{
  v0 = qword_1EB303030;

  return v0;
}

__n128 sub_1A87136E4@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A871500C(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

unint64_t sub_1A8713788()
{
  result = qword_1EB303050;
  if (!qword_1EB303050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303050);
  }

  return result;
}

unint64_t sub_1A87137DC()
{
  result = qword_1EB303058;
  if (!qword_1EB303058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303058);
  }

  return result;
}

unint64_t sub_1A8713830(uint64_t a1)
{
  result = sub_1A8713858();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8713858()
{
  result = qword_1EB303060;
  if (!qword_1EB303060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303060);
  }

  return result;
}

uint64_t sub_1A87138AC(void *a1)
{
  v3 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-v4 - 8];
  v6 = *(v1 + 32);
  v7 = sub_1A88C82A8();
  v8 = sub_1A88C82A8();
  if (*(v1 + 40))
  {
    v9 = sub_1A88C8188();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1A88C82A8();
  if (*(v1 + 72))
  {
    v11 = sub_1A88C82A8();
  }

  else
  {
    v11 = 0;
  }

  [a1 account:v7 chat:v8 style:v6 chatProperties:v9 groupID:v10 chatPersonCentricID:v11 messageReceived:*(v1 + 80)];

  v12 = sub_1A88C87A8();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = *(v1 + 48);
  *(v13 + 64) = *(v1 + 32);
  *(v13 + 80) = v14;
  *(v13 + 96) = *(v1 + 64);
  *(v13 + 112) = *(v1 + 80);
  v15 = *(v1 + 16);
  *(v13 + 32) = *v1;
  *(v13 + 48) = v15;
  sub_1A8714C60(v1, v18);
  sub_1A873A5E4(0, 0, v5, &unk_1A88E2A50, v13);
}

uint64_t sub_1A8713AD4()
{
  v22 = v0;
  v1 = *(v0[8] + 80);
  v0[7] = v1;
  v0[9] = v1;
  v2 = v1;
  v3 = [v2 fileTransferGUIDs];
  if (v3 && (v4 = v3, v5 = sub_1A88C85F8(), v4, v6 = *(v5 + 16), , v6))
  {
    v7 = [v2 guid];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1A88C82E8();
      v11 = v10;
    }

    else
    {
      v11 = 0xE400000000000000;
      v9 = 1701736302;
    }

    if (qword_1EB302088 != -1)
    {
      swift_once();
    }

    v14 = sub_1A88C7E58();
    sub_1A85EF0E4(v14, qword_1EB303018);

    v15 = sub_1A88C7E38();
    v16 = sub_1A88C89D8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136315138;
      v19 = sub_1A85F0394(v9, v11, &v21);

      *(v17 + 4) = v19;
      _os_log_impl(&dword_1A85E5000, v15, v16, "MessageReceivedForAccountWithPropertiesBroadcast: kicking off attachment download if necessary for incoming message with attachments. Message guid: %s.", v17, 0xCu);
      sub_1A85F1084(v18);
      MEMORY[0x1AC571F20](v18, -1, -1);
      MEMORY[0x1AC571F20](v17, -1, -1);
    }

    else
    {
    }

    if (qword_1EB302380 != -1)
    {
      swift_once();
    }

    v20 = qword_1EB309050;
    v0[10] = qword_1EB309050;

    return MEMORY[0x1EEE6DFA0](sub_1A8713D90, v20, 0);
  }

  else
  {
    sub_1A8714C98((v0 + 7));
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1A8713D90()
{
  if (qword_1EB302388 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1A8713E20, v1, 0);
}

uint64_t sub_1A8713E48()
{
  v1 = v0[9];
  sub_1A870CCE0(&qword_1EB303098);
  inited = swift_initStackObject();
  v0[12] = inited;
  *(inited + 16) = xmmword_1A88E27C0;
  *(inited + 32) = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1A8713F14;

  return sub_1A88A9C30(inited);
}

uint64_t sub_1A8713F14()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A8714088, 0, 0);
  }

  else
  {

    swift_setDeallocating();
    swift_arrayDestroy();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A8714088()
{
  swift_setDeallocating();
  swift_arrayDestroy();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A8714108(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB3030C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8715F40();
  sub_1A88C95C8();
  LOBYTE(v12) = 0;
  sub_1A88C9278();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v12) = 1;
  sub_1A88C9278();
  LOBYTE(v12) = 2;
  sub_1A88C92F8();
  v10 = *(v3 + 40);
  v13 = 3;
  if (v10)
  {
    v12 = v10;

    sub_1A870CCE0(&qword_1EB3030B0);
    sub_1A85FB520(&qword_1EB3030D8, &qword_1EB3030B0);
    sub_1A88C9228();
  }

  LOBYTE(v12) = 4;
  sub_1A88C9278();
  LOBYTE(v12) = 5;
  sub_1A88C91C8();
  v12 = *(v3 + 80);
  v13 = 6;
  sub_1A870CCE0(&qword_1EB303090);
  sub_1A85FB520(&qword_1EB3030D0, &qword_1EB303090);
  sub_1A88C92C8();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A8714450()
{
  v1 = *v0;
  v2 = 0x55746E756F636361;
  v3 = 0x65436E6F73726570;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x444970756F7267;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E65644974616863;
  if (v1 != 1)
  {
    v5 = 0x6C79745374616863;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A8714560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A8715760(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A8714594(uint64_t a1)
{
  v2 = sub_1A8715F40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A87145D0(uint64_t a1)
{
  v2 = sub_1A8715F40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A871460C()
{
  v0 = qword_1EB303040;

  return v0;
}

double sub_1A8714690@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A87159D4(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1A8714730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A871476C()
{
  result = qword_1EB303068;
  if (!qword_1EB303068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303068);
  }

  return result;
}

unint64_t sub_1A87147C0()
{
  result = qword_1EB303070;
  if (!qword_1EB303070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303070);
  }

  return result;
}

unint64_t sub_1A8714814(uint64_t a1)
{
  result = sub_1A871483C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A871483C()
{
  result = qword_1EB303078;
  if (!qword_1EB303078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303078);
  }

  return result;
}

unint64_t sub_1A8714890(uint64_t a1)
{
  result = sub_1A87148B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A87148B8()
{
  result = qword_1EB303080;
  if (!qword_1EB303080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303080);
  }

  return result;
}

unint64_t sub_1A871490C(uint64_t a1)
{
  result = sub_1A8714934();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8714934()
{
  result = qword_1EB303088;
  if (!qword_1EB303088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303088);
  }

  return result;
}

unint64_t sub_1A8714988()
{
  result = qword_1ED8C94E0;
  if (!qword_1ED8C94E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8C94E0);
  }

  return result;
}

uint64_t sub_1A87149D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A8716570;

  return sub_1A87129A0(a1, v4, v5, v1 + 32);
}

uint64_t sub_1A8714ABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A8714B6C;

  return sub_1A8713AB4(a1, v4, v5, v1 + 32);
}

uint64_t sub_1A8714B6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A8714C98(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB303090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8714D00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55746E756F636361 && a2 == 0xEF4449657571696ELL;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8917240 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65436E6F73726570 && a2 == 0xEF4449636972746ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8917280 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x476465766F6D6572 && a2 == 0xEC00000073444955 || (sub_1A88C9398() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A89172A0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1A871500C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3030E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8715FC4();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    LOBYTE(v43[0]) = 0;
    v10 = sub_1A88C9108();
    v35 = v11;
    LOBYTE(v43[0]) = 1;
    *&v34 = sub_1A88C9108();
    *(&v34 + 1) = v12;
    LOBYTE(v43[0]) = 2;
    v53 = sub_1A88C9188();
    sub_1A870CCE0(&qword_1EB3030B0);
    LOBYTE(v36) = 3;
    sub_1A85FB520(&qword_1EB3030B8, &qword_1EB3030B0);
    sub_1A88C90B8();
    v13 = v43[0];
    if (v43[0] == 1)
    {
      v13 = 0;
    }

    v33 = v13;
    LOBYTE(v43[0]) = 4;
    v14 = sub_1A88C9108();
    v32 = v15;
    LOBYTE(v43[0]) = 5;
    v29 = sub_1A88C9058();
    v30 = v14;
    v31 = v16;
    sub_1A870CCE0(&qword_1EB3030F0);
    LOBYTE(v36) = 6;
    sub_1A85FB520(&qword_1EB3030F8, &qword_1EB3030F0);
    sub_1A88C9158();
    v28 = v43[0];
    sub_1A870CCE0(&qword_1EB303100);
    LOBYTE(v36) = 7;
    sub_1A8716048(&qword_1EB303108);
    sub_1A88C9158();
    v17 = v43[0];
    v54 = 8;
    v18 = sub_1A88C9118();
    (*(v6 + 8))(v8, v5);
    v27 = v18 & 1;
    *&v36 = v10;
    v19 = v35;
    *(&v36 + 1) = v35;
    v37 = v34;
    v20 = *(&v34 + 1);
    LOBYTE(v38) = v53;
    v21 = v33;
    *(&v38 + 1) = v33;
    *&v39 = v30;
    v22 = v32;
    *(&v39 + 1) = v32;
    *&v40 = v29;
    *(&v40 + 1) = v31;
    *&v41 = v28;
    *(&v41 + 1) = v17;
    v42 = v27;
    sub_1A8714A84(&v36, v43);
    sub_1A85F1084(a1);
    v43[0] = v10;
    v43[1] = v19;
    v43[2] = v34;
    v43[3] = v20;
    v44 = v53;
    v45 = v21;
    v46 = v30;
    v47 = v22;
    v48 = v29;
    v49 = v31;
    v50 = v28;
    v51 = v17;
    v52 = v27;
    result = sub_1A8716018(v43);
    v23 = v41;
    *(a2 + 64) = v40;
    *(a2 + 80) = v23;
    *(a2 + 96) = v42;
    v24 = v37;
    *a2 = v36;
    *(a2 + 16) = v24;
    v25 = v39;
    *(a2 + 32) = v38;
    *(a2 + 48) = v25;
  }

  return result;
}

uint64_t sub_1A8715760(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55746E756F636361 && a2 == 0xEF4449657571696ELL;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644974616863 && a2 == 0xEE00726569666974 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C79745374616863 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A8917240 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65436E6F73726570 && a2 == 0xEF4449636972746ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8917260 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1A87159D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3030A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8715F40();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  LOBYTE(v39[0]) = 0;
  v10 = sub_1A88C9108();
  v32 = v11;
  LOBYTE(v39[0]) = 1;
  v12 = sub_1A88C9108();
  v31 = v13;
  v29 = v12;
  LOBYTE(v39[0]) = 2;
  v28 = sub_1A88C9188();
  sub_1A870CCE0(&qword_1EB3030B0);
  LOBYTE(v33) = 3;
  sub_1A85FB520(&qword_1EB3030B8, &qword_1EB3030B0);
  sub_1A88C90B8();
  v14 = v39[0];
  if (v39[0] == 1)
  {
    v14 = 0;
  }

  v27 = v14;
  LOBYTE(v39[0]) = 4;
  v26 = sub_1A88C9108();
  v30 = v15;
  LOBYTE(v39[0]) = 5;
  *&v25 = sub_1A88C9058();
  *(&v25 + 1) = v16;
  sub_1A870CCE0(&qword_1EB303090);
  v47 = 6;
  sub_1A85FB520(&qword_1EB3030C0, &qword_1EB303090);
  sub_1A88C9158();
  (*(v6 + 8))(v8, v5);
  v24 = v48;
  *&v33 = v10;
  v17 = v32;
  *(&v33 + 1) = v32;
  v18 = v31;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  LOBYTE(v35) = v28;
  v19 = v27;
  *(&v35 + 1) = v27;
  *&v36 = v26;
  v20 = v30;
  *(&v36 + 1) = v30;
  v37 = v25;
  v21 = *(&v25 + 1);
  v38 = v48;
  sub_1A8714C60(&v33, v39);
  sub_1A85F1084(a1);
  v39[0] = v10;
  v39[1] = v17;
  v39[2] = v29;
  v39[3] = v18;
  v40 = v28;
  v41 = v19;
  v42 = v26;
  v43 = v20;
  v44 = v25;
  v45 = v21;
  v46 = v24;
  result = sub_1A8715F94(v39);
  v22 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v22;
  *(a2 + 64) = v37;
  *(a2 + 80) = v38;
  v23 = v34;
  *a2 = v33;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_1A8715F40()
{
  result = qword_1EB3030A8;
  if (!qword_1EB3030A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3030A8);
  }

  return result;
}

unint64_t sub_1A8715FC4()
{
  result = qword_1EB3030E8;
  if (!qword_1EB3030E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3030E8);
  }

  return result;
}

uint64_t sub_1A8716048(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB303100);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntentItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntentHandleStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntentHandleStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A8716358()
{
  result = qword_1EB303128;
  if (!qword_1EB303128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303128);
  }

  return result;
}

unint64_t sub_1A87163B0()
{
  result = qword_1EB303130;
  if (!qword_1EB303130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303130);
  }

  return result;
}

unint64_t sub_1A8716408()
{
  result = qword_1EB303138;
  if (!qword_1EB303138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303138);
  }

  return result;
}

unint64_t sub_1A8716460()
{
  result = qword_1EB303140;
  if (!qword_1EB303140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303140);
  }

  return result;
}

unint64_t sub_1A87164B8()
{
  result = qword_1EB303148;
  if (!qword_1EB303148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303148);
  }

  return result;
}

unint64_t sub_1A8716510()
{
  result = qword_1EB303150;
  if (!qword_1EB303150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303150);
  }

  return result;
}

uint64_t sub_1A8716584()
{
  if (qword_1EB3020A0 != -1)
  {
    swift_once();
  }

  off_1EB303158 = qword_1EB303168;
}

void *sub_1A87165E8()
{
  result = sub_1A8716608();
  off_1EB303160 = result;
  return result;
}

uint64_t sub_1A8716608()
{
  if (qword_1EB302090 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v0 = off_1EB303158;
    v1 = *(off_1EB303158 + 2);
    if (!v1)
    {
      return MEMORY[0x1E69E7CC8];
    }

    v2 = 0;
    v3 = off_1EB303158 + 32;
    v4 = MEMORY[0x1E69E7CC8];
    while (v2 < v0[2])
    {
      v23 = *&v3[16 * v2];
      v6 = (*(*&v3[16 * v2 + 8] + 48))();
      v8 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v4;
      v10 = sub_1A85F5F40(v6, v8);
      v12 = v4[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_20;
      }

      v16 = v11;
      if (v4[3] < v15)
      {
        sub_1A8878AA4(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_1A85F5F40(v6, v8);
        if ((v16 & 1) != (v17 & 1))
        {
          result = sub_1A88C9488();
          __break(1u);
          return result;
        }

LABEL_12:
        if (v16)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v21 = v10;
      sub_1A87B101C();
      v10 = v21;
      if (v16)
      {
LABEL_4:
        v5 = v10;

        v4 = v24;
        *(v24[7] + 16 * v5) = v23;
        goto LABEL_5;
      }

LABEL_13:
      v4 = v24;
      v24[(v10 >> 6) + 8] |= 1 << v10;
      v18 = (v24[6] + 16 * v10);
      *v18 = v6;
      v18[1] = v8;
      *(v24[7] + 16 * v10) = v23;
      v19 = v24[2];
      v14 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v14)
      {
        goto LABEL_21;
      }

      v24[2] = v20;
LABEL_5:
      if (v1 == ++v2)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }
}

uint64_t static RemoteIntentSupportedBroadcastTypes.broadcastType(for:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EB302098 != -1)
  {
    v6 = a1;
    v7 = a2;
    swift_once();
    a1 = v6;
    a2 = v7;
  }

  v2 = off_1EB303160;
  if (*(off_1EB303160 + 2) && (v3 = sub_1A85F5F40(a1, a2), (v4 & 1) != 0))
  {
    return *(v2[7] + 16 * v3);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1A87168A4()
{
  sub_1A870CCE0(&qword_1EB303188);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1A88E2CC0;
  v1 = sub_1A87173F8();
  *(v0 + 32) = &type metadata for ChatUpdatedBroadcast;
  *(v0 + 40) = v1;
  v2 = sub_1A871744C();
  *(v0 + 48) = &type metadata for ChatPropertiesUpdatedBroadcast;
  *(v0 + 56) = v2;
  v3 = sub_1A87174A0();
  *(v0 + 64) = &type metadata for ChatDatabaseUpdatedStampBroadcast;
  *(v0 + 72) = v3;
  v4 = sub_1A87174F4();
  *(v0 + 80) = &type metadata for UnreadCountChangedBroadcast;
  *(v0 + 88) = v4;
  v5 = sub_1A8717548();
  *(v0 + 96) = &type metadata for UnreadCountReportsUpdatedBroadcast;
  *(v0 + 104) = v5;
  v6 = sub_1A871759C();
  *(v0 + 112) = &type metadata for MessagesUpdatedForServiceChatStyleBroadcast;
  *(v0 + 120) = v6;
  v7 = sub_1A87175F0();
  *(v0 + 128) = &type metadata for MessagesReceivedForAccountWithPropertiesBroadcast;
  *(v0 + 136) = v7;
  v8 = sub_1A8717644();
  *(v0 + 144) = &type metadata for MessageReceivedForAccountWithPropertiesBroadcast;
  *(v0 + 152) = v8;
  v9 = sub_1A8717698();
  *(v0 + 160) = &type metadata for MessageSentForAccountWithPropertiesBroadcast;
  *(v0 + 168) = v9;
  v10 = sub_1A87176EC();
  *(v0 + 176) = &type metadata for ChatLastMessageTimeStampOnLoadUpdatedBroadcast;
  *(v0 + 184) = v10;
  v11 = sub_1A8717740();
  *(v0 + 192) = &type metadata for UpdatePendingNicknameUpdatesBroadcast;
  *(v0 + 200) = v11;
  v12 = sub_1A8717794();
  *(v0 + 208) = &type metadata for UpdateNicknameHandlesBroadcast;
  *(v0 + 216) = v12;
  v13 = type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast(0);
  v14 = sub_1A8717BD8(&qword_1EB3031D8, type metadata accessor for MovedMessagesToRecentlyDeletedForChatsBroadcast);
  *(v0 + 224) = v13;
  *(v0 + 232) = v14;
  v15 = type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast(0);
  v16 = sub_1A8717BD8(&unk_1EB305370, type metadata accessor for MovedMessagesWithGUIDsToRecentlyDeletedBroadcast);
  *(v0 + 240) = v15;
  *(v0 + 248) = v16;
  v17 = sub_1A87177E8();
  *(v0 + 256) = &type metadata for RecoveredMessagesForChatsAndQueryIDBroadcast;
  *(v0 + 264) = v17;
  v18 = sub_1A871783C();
  *(v0 + 272) = &type metadata for PermanentlyDeletedMessagesInChatsBroadcast;
  *(v0 + 280) = v18;
  v19 = sub_1A8717890();
  *(v0 + 288) = &type metadata for PermanentlyDeletedMessagesInChatsWithQueryIDBroadcast;
  *(v0 + 296) = v19;
  v20 = sub_1A87178E4();
  *(v0 + 304) = &type metadata for PermanentlyDeletedRecoverableMessagesForChatsBroadcast;
  *(v0 + 312) = v20;
  v21 = sub_1A8717938();
  *(v0 + 320) = &type metadata for RecoveredMessagesFromRecentlyDeletedForChatsBroadcast;
  *(v0 + 328) = v21;
  v22 = sub_1A871798C();
  *(v0 + 336) = &type metadata for LeftChatBroadcast;
  *(v0 + 344) = v22;
  v23 = sub_1A87179E0();
  *(v0 + 352) = &type metadata for LastFailedMessageDateChangedBroadcast;
  *(v0 + 360) = v23;
  v24 = sub_1A8717A34();
  *(v0 + 368) = &type metadata for LoadedRecoverableMessagesMetadataBroadcast;
  *(v0 + 376) = v24;
  v25 = sub_1A8717A88();
  *(v0 + 384) = &type metadata for MessageUpdatedForAccountWithPropertiesBroadcastToBeRemoved;
  *(v0 + 392) = v25;
  v26 = sub_1A8717ADC();
  *(v0 + 400) = &type metadata for MessageUpdatedForAccountBroadcast;
  *(v0 + 408) = v26;
  v27 = sub_1A8717B30();
  *(v0 + 416) = &type metadata for MessagesUpdatedForAccountWithPropertiesBroadcastToBeRemoved;
  *(v0 + 424) = v27;
  v28 = sub_1A8717B84();
  *(v0 + 432) = &type metadata for MessagesUpdatedForAccountBroadcast;
  *(v0 + 440) = v28;
  v29 = type metadata accessor for FileTransferExplicitDownloadSucceeded();
  v30 = sub_1A8717BD8(&qword_1EB303220, type metadata accessor for FileTransferExplicitDownloadSucceeded);
  *(v0 + 448) = v29;
  *(v0 + 456) = v30;
  v31 = sub_1A8717C20();
  *(v0 + 464) = &type metadata for FileTransferUpdatedWithPropertiesBroadcast;
  *(v0 + 472) = v31;
  v32 = sub_1A8717C74();
  *(v0 + 480) = &type metadata for ChatStatusChangedBroadcast;
  *(v0 + 488) = v32;
  v33 = sub_1A8717CC8();
  *(v0 + 496) = &type metadata for ChatMemberStatusChangedBroadcast;
  *(v0 + 504) = v33;
  v34 = sub_1A8717D1C();
  *(v0 + 512) = &type metadata for MessageSentForAccountNotifyBroadcast;
  *(v0 + 520) = v34;
  v35 = sub_1A8717D70();
  *(v0 + 528) = &type metadata for MessageSentForAccountWithPropertiesNotifyBroadcastToBeRemoved;
  *(v0 + 536) = v35;
  v36 = sub_1A8717DC4();
  *(v0 + 544) = &type metadata for ChatDisplayNameUpdatedWithSenderBroadcast;
  *(v0 + 552) = v36;
  v37 = sub_1A8717E18();
  *(v0 + 560) = &type metadata for ChatDisplayNameUpdatedBroadcast;
  *(v0 + 568) = v37;
  v38 = sub_1A8717E6C();
  *(v0 + 576) = &type metadata for GroupPhotoUpdatedBroadcast;
  *(v0 + 584) = v38;
  v39 = sub_1A8717EC0();
  *(v0 + 592) = &type metadata for ChatLastMessageTimeStampOnLoadUpdatedBroadcastToRemove;
  *(v0 + 600) = v39;
  result = sub_1A8717F14();
  *(v0 + 608) = &type metadata for ChatsNeedRemergingBroadcast;
  *(v0 + 616) = result;
  qword_1EB303168 = v0;
  return result;
}

unint64_t sub_1A8716C10(uint64_t a1)
{
  sub_1A88C9528();
  type metadata accessor for CFString(0);
  sub_1A8717BD8(&qword_1EB303170, type metadata accessor for CFString);
  sub_1A88C7788();
  v2 = sub_1A88C9578();

  return sub_1A8716EA0(a1, v2);
}

unint64_t sub_1A8716CC4(unsigned __int8 a1)
{
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](a1);
  v2 = sub_1A88C9578();

  return sub_1A8716FAC(a1, v2);
}

unint64_t sub_1A8716D30(uint64_t a1)
{
  sub_1A88C72E8();
  sub_1A87173B4(&qword_1EB303178);
  v2 = sub_1A88C8228();

  return sub_1A871701C(a1, v2);
}

unint64_t sub_1A8716DA8(char a1)
{
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](a1 & 1);
  v2 = sub_1A88C9578();
  return sub_1A8717190(a1 & 1, v2);
}

unint64_t sub_1A8716E10(uint64_t a1)
{
  sub_1A88C82E8();
  sub_1A88C9528();
  sub_1A88C8268();
  v2 = sub_1A88C9578();

  return sub_1A8717200(a1, v2);
}

unint64_t sub_1A8716EA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1A8717BD8(&qword_1EB303170, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1A88C7778();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A8716FAC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A871701C(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v15 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    v5 = sub_1A88C72E8();
    v6 = v5;
    v7 = *(v5 - 8);
    v8 = v7[2];
    v9 = v7[8];
    v10 = v7[9];
    v11 = (v7 + 1);
    do
    {
      MEMORY[0x1EEE9AC00](v5);
      v8(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *(v17 + 48) + v10 * v4, v6);
      sub_1A87173B4(&qword_1EB303180);
      v12 = sub_1A88C8298();
      v5 = (*v11)(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
      if (v12)
      {
        break;
      }

      v4 = (v4 + 1) & v14;
    }

    while (((*(v15 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A8717190(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1A8717200(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1A88C82E8();
      v8 = v7;
      if (v6 == sub_1A88C82E8() && v8 == v9)
      {
        break;
      }

      v11 = sub_1A88C9398();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1A87173B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A88C72E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A87173F8()
{
  result = qword_1EB305280;
  if (!qword_1EB305280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305280);
  }

  return result;
}

unint64_t sub_1A871744C()
{
  result = qword_1EB303190;
  if (!qword_1EB303190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303190);
  }

  return result;
}

unint64_t sub_1A87174A0()
{
  result = qword_1EB303198;
  if (!qword_1EB303198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303198);
  }

  return result;
}

unint64_t sub_1A87174F4()
{
  result = qword_1EB3031A0;
  if (!qword_1EB3031A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3031A0);
  }

  return result;
}

unint64_t sub_1A8717548()
{
  result = qword_1EB3031A8;
  if (!qword_1EB3031A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3031A8);
  }

  return result;
}

unint64_t sub_1A871759C()
{
  result = qword_1EB3031B0;
  if (!qword_1EB3031B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3031B0);
  }

  return result;
}

unint64_t sub_1A87175F0()
{
  result = qword_1EB305340;
  if (!qword_1EB305340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305340);
  }

  return result;
}

unint64_t sub_1A8717644()
{
  result = qword_1EB3031B8;
  if (!qword_1EB3031B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3031B8);
  }

  return result;
}

unint64_t sub_1A8717698()
{
  result = qword_1EB3031C0;
  if (!qword_1EB3031C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3031C0);
  }

  return result;
}

unint64_t sub_1A87176EC()
{
  result = qword_1EB305290;
  if (!qword_1EB305290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305290);
  }

  return result;
}

unint64_t sub_1A8717740()
{
  result = qword_1EB3031C8;
  if (!qword_1EB3031C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3031C8);
  }

  return result;
}

unint64_t sub_1A8717794()
{
  result = qword_1EB3031D0;
  if (!qword_1EB3031D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3031D0);
  }

  return result;
}

unint64_t sub_1A87177E8()
{
  result = qword_1EB3052A0;
  if (!qword_1EB3052A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3052A0);
  }

  return result;
}

unint64_t sub_1A871783C()
{
  result = qword_1EB3052B0;
  if (!qword_1EB3052B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3052B0);
  }

  return result;
}

unint64_t sub_1A8717890()
{
  result = qword_1EB3031E0;
  if (!qword_1EB3031E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3031E0);
  }

  return result;
}

unint64_t sub_1A87178E4()
{
  result = qword_1EB3052C0;
  if (!qword_1EB3052C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3052C0);
  }

  return result;
}

unint64_t sub_1A8717938()
{
  result = qword_1EB3031E8;
  if (!qword_1EB3031E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3031E8);
  }

  return result;
}

unint64_t sub_1A871798C()
{
  result = qword_1EB3031F0;
  if (!qword_1EB3031F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3031F0);
  }

  return result;
}

unint64_t sub_1A87179E0()
{
  result = qword_1EB3031F8;
  if (!qword_1EB3031F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3031F8);
  }

  return result;
}

unint64_t sub_1A8717A34()
{
  result = qword_1EB303200;
  if (!qword_1EB303200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303200);
  }

  return result;
}

unint64_t sub_1A8717A88()
{
  result = qword_1EB303208;
  if (!qword_1EB303208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303208);
  }

  return result;
}

unint64_t sub_1A8717ADC()
{
  result = qword_1EB303210;
  if (!qword_1EB303210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303210);
  }

  return result;
}

unint64_t sub_1A8717B30()
{
  result = qword_1EB303218;
  if (!qword_1EB303218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303218);
  }

  return result;
}

unint64_t sub_1A8717B84()
{
  result = qword_1EB305330;
  if (!qword_1EB305330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305330);
  }

  return result;
}

uint64_t sub_1A8717BD8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8717C20()
{
  result = qword_1EB303228;
  if (!qword_1EB303228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303228);
  }

  return result;
}

unint64_t sub_1A8717C74()
{
  result = qword_1EB305320;
  if (!qword_1EB305320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305320);
  }

  return result;
}

unint64_t sub_1A8717CC8()
{
  result = qword_1EB305310;
  if (!qword_1EB305310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305310);
  }

  return result;
}

unint64_t sub_1A8717D1C()
{
  result = qword_1EB305350;
  if (!qword_1EB305350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305350);
  }

  return result;
}

unint64_t sub_1A8717D70()
{
  result = qword_1EB303230;
  if (!qword_1EB303230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303230);
  }

  return result;
}

unint64_t sub_1A8717DC4()
{
  result = qword_1EB303238;
  if (!qword_1EB303238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303238);
  }

  return result;
}

unint64_t sub_1A8717E18()
{
  result = qword_1EB305380;
  if (!qword_1EB305380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305380);
  }

  return result;
}

unint64_t sub_1A8717E6C()
{
  result = qword_1EB303240;
  if (!qword_1EB303240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303240);
  }

  return result;
}

unint64_t sub_1A8717EC0()
{
  result = qword_1EB303248;
  if (!qword_1EB303248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303248);
  }

  return result;
}

unint64_t sub_1A8717F14()
{
  result = qword_1EB305360;
  if (!qword_1EB305360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB305360);
  }

  return result;
}

uint64_t sub_1A8717F70()
{
  v0 = sub_1A88C6DC8();
  sub_1A85EFC04(v0, qword_1EB303250);
  sub_1A85EF0E4(v0, qword_1EB303250);
  return sub_1A88C6DA8();
}

uint64_t static DowntimeConversationEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB3020A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C6DC8();
  v3 = sub_1A85EF0E4(v2, qword_1EB303250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t DowntimeConversationEntity.displayRepresentation.getter()
{
  v0 = sub_1A870CCE0(&qword_1EB303268);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A88C7188();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A88C7178();
  v5 = sub_1A870CCE0(&qword_1EB303270);
  MEMORY[0x1EEE9AC00](v5 - 8);
  (*(v4 + 56))(&v9 - v6, 1, 1, v3);
  v7 = sub_1A88C6D58();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A88C6D68();
}

uint64_t sub_1A8718268()
{

  sub_1A88C6D18();
}

void (*DowntimeConversationEntity.conversationIdentifier.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A88C6CF8();
  return sub_1A871835C;
}

void sub_1A871835C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t DowntimeConversationEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1A870CCE0(&qword_1EB303278);
  result = sub_1A88C6D38();
  *a1 = result;
  return result;
}

uint64_t DowntimeConversationEntity.init(conversationIdentifier:)@<X0>(uint64_t *a1@<X8>)
{
  sub_1A870CCE0(&qword_1EB303278);
  *a1 = sub_1A88C6D38();
  return sub_1A88C6D18();
}

unint64_t sub_1A8718478()
{
  result = qword_1EB303280;
  if (!qword_1EB303280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303280);
  }

  return result;
}

uint64_t sub_1A87184CC@<X0>(uint64_t *a1@<X8>)
{
  sub_1A870CCE0(&qword_1EB303278);
  result = sub_1A88C6D38();
  *a1 = result;
  return result;
}

unint64_t sub_1A8718510()
{
  result = qword_1EB303288;
  if (!qword_1EB303288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303288);
  }

  return result;
}

unint64_t sub_1A8718568()
{
  result = qword_1EB303290;
  if (!qword_1EB303290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303290);
  }

  return result;
}

unint64_t sub_1A87185C0()
{
  result = qword_1EB303298;
  if (!qword_1EB303298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303298);
  }

  return result;
}

uint64_t sub_1A8718664(uint64_t a1)
{
  v2 = sub_1A8718E54();

  return MEMORY[0x1EEDB29C8](a1, v2);
}

unint64_t sub_1A87186B4()
{
  result = qword_1EB3032B0;
  if (!qword_1EB3032B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3032B0);
  }

  return result;
}

unint64_t sub_1A8718708()
{
  result = qword_1EB3032B8;
  if (!qword_1EB3032B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3032B8);
  }

  return result;
}

unint64_t sub_1A871875C()
{
  result = qword_1EB3032C0;
  if (!qword_1EB3032C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3032C0);
  }

  return result;
}

unint64_t sub_1A87187B4()
{
  result = qword_1EB3032C8;
  if (!qword_1EB3032C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3032C8);
  }

  return result;
}

unint64_t sub_1A871880C()
{
  result = qword_1EB3032D0;
  if (!qword_1EB3032D0)
  {
    sub_1A88C74B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3032D0);
  }

  return result;
}

uint64_t sub_1A8718858()
{
  sub_1A8718E54();

  return sub_1A88C6C38();
}

uint64_t sub_1A87188A4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB3020A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C6DC8();
  v3 = sub_1A85EF0E4(v2, qword_1EB303250);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A8718990(uint64_t a1)
{
  v2 = sub_1A8718478();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_1A87189E0()
{
  result = qword_1EB3032E8;
  if (!qword_1EB3032E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3032E8);
  }

  return result;
}

uint64_t sub_1A8718A34()
{
  v0 = sub_1A870CCE0(&qword_1EB303268);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1A88C7188();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A88C7178();
  v5 = sub_1A870CCE0(&qword_1EB303270);
  MEMORY[0x1EEE9AC00](v5 - 8);
  (*(v4 + 56))(&v9 - v6, 1, 1, v3);
  v7 = sub_1A88C6D58();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  return sub_1A88C6D68();
}

uint64_t sub_1A8718BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A8714B6C;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1A8718CC0(uint64_t a1)
{
  v2 = sub_1A87187B4();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

void *initializeBufferWithCopyOfBuffer for DowntimeConversationEntity(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for DowntimeConversationEntity(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for DowntimeConversationEntity(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for DowntimeConversationEntity(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DowntimeConversationEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A8718E54()
{
  result = qword_1EB3032F0;
  if (!qword_1EB3032F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3032F0);
  }

  return result;
}

uint64_t EncodeAsJSON.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A88C8BE8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EncodeAsJSON.wrappedValue.setter(uint64_t a1)
{
  v3 = sub_1A88C8BE8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t static EncodeAsJSONSerializationOptions.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EB3020B0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EB3032F8;
  return result;
}

uint64_t EncodeAsJSON.init(wrappedValue:serializationOptions:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  v7 = sub_1A88C8BE8();
  (*(*(v7 - 8) + 40))(a4, a1, v7);
  result = type metadata accessor for EncodeAsJSON();
  *(a4 + *(result + 28)) = v6;
  return result;
}

uint64_t EncodeAsJSON.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v83 = *MEMORY[0x1E69E9840];
  v5 = sub_1A88C8BE8();
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v65 = &v57 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v66 = &v57 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v67 = &v57 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v57 - v14;
  type metadata accessor for EncodeAsJSON.CodingKeys();
  WitnessTable = swift_getWitnessTable();
  v73 = sub_1A88C91A8();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v16 = &v57 - v15;
  v17 = type metadata accessor for EncodeAsJSON();
  v18 = *(v17 - 8);
  v68 = v17;
  v69 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v19 = *(a2 - 8);
  v20 = *(v19 + 56);
  v79 = &v57 - v21;
  v20();
  v22 = a1[3];
  v78 = a1;
  sub_1A870C278(a1, v22);
  v23 = v75;
  sub_1A88C95A8();
  if (v23)
  {
    v32 = v76;
    v31 = v77;
    goto LABEL_4;
  }

  v62 = v19;
  v63 = v20;
  WitnessTable = v19 + 56;
  v75 = a2;
  v24 = v71;
  v25 = v72;
  v80 = 1;
  sub_1A871C804();
  v26 = v73;
  sub_1A88C9158();
  v29 = v81;
  v80 = 0;
  sub_1A871C858();
  sub_1A88C90B8();
  v30 = v16;
  v32 = v76;
  v31 = v77;
  v33 = v79;
  v60 = v29;
  v61 = v30;
  v34 = v82;
  if (v82 >> 60 != 15)
  {
    v39 = v81;
    v40 = objc_opt_self();
    v59 = v39;
    v41 = sub_1A88C7338();
    v81 = 0;
    v42 = [v40 JSONObjectWithData:v41 options:0 error:&v81];

    v43 = v75;
    if (v42)
    {
      v58 = v34;
      v44 = v81;
      sub_1A88C8CB8();
      swift_unknownObjectRelease();
      v45 = swift_dynamicCast();
      (v63)(v25, v45 ^ 1u, 1, v43);
      v46 = v43;
      v47 = v67;
      v57 = *(v32 + 16);
      v57(v67, v25, v31);
      v48 = *(v62 + 48);
      v62 += 48;
      if (v48(v47, 1, v43) == 1)
      {
        (*(v32 + 8))(v47, v31);
      }

      else
      {
        v67 = sub_1A870CCE0(&qword_1EB303320);
        if (swift_dynamicCast())
        {
          v50 = v81;
          v38 = v60;
          v81 = v60;
          v51 = sub_1A8719A74(&v81, v50);
          sub_1A871CD4C(v59, v58);

          (*(v24 + 1))(v61, v73);
          v81 = v51;
          v52 = v65;
          goto LABEL_17;
        }
      }

      v53 = v66;
      v57(v66, v25, v31);
      if (v48(v53, 1, v43) == 1)
      {
        v38 = v60;
        (*(v24 + 1))(v61, v73);
        sub_1A871CD4C(v59, v58);
        (*(v32 + 8))(v53, v31);
LABEL_19:
        v35 = v70;
        v56 = v25;
        v37 = v68;
        v33 = v79;
        (*(v32 + 24))(v79, v25, v31);
        goto LABEL_20;
      }

      sub_1A870CCE0(&qword_1EB303318);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v38 = v60;
        (*(v24 + 1))(v61, v73);
        sub_1A871CD4C(v59, v58);
        goto LABEL_19;
      }

      v54 = v81;
      v38 = v60;
      v81 = v60;
      v71 = sub_1A871A60C(&v81, v54);
      sub_1A871CD4C(v59, v58);

      (*(v24 + 1))(v61, v73);
      v81 = v71;
      v52 = v64;
LABEL_17:
      v55 = swift_dynamicCast();
      (v63)(v52, v55 ^ 1u, 1, v46);
      v33 = v79;
      (*(v32 + 40))(v79, v52, v31);
      v35 = v70;
      v56 = v25;
      v37 = v68;
LABEL_20:
      v36 = v69;
      (*(v32 + 8))(v56, v31);
      goto LABEL_21;
    }

    v49 = v81;
    sub_1A88C7168();

    swift_willThrow();
    sub_1A871CD4C(v59, v34);
    (*(v24 + 1))(v61, v73);
LABEL_4:
    v27 = v79;
    sub_1A85F1084(v78);
    return (*(v32 + 8))(v27, v31);
  }

  (*(v24 + 1))(v61, v26);
  (*(v32 + 8))(v33, v31);
  (v63)(v33, 1, 1, v75);
  v36 = v69;
  v35 = v70;
  v37 = v68;
  v38 = v60;
LABEL_21:
  *&v33[*(v37 + 28)] = v38;
  (*(v36 + 16))(v35, v33, v37);
  sub_1A85F1084(v78);
  return (*(v36 + 8))(v33, v37);
}

uint64_t sub_1A8719A74(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  if (!*a1)
  {

    return v2;
  }

  v108 = *a1;
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  v105 = v2 + 64;
  v106 = v2;
  while (v6)
  {
    v14 = v8;
LABEL_16:
    v17 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v18 = v17 | (v14 << 6);
    sub_1A8717304(*(v2 + 48) + 40 * v18, v114);
    sub_1A85F1028(*(v2 + 56) + 32 * v18, v113);
    v116 = v114[0];
    v117 = v114[1];
    *&v118 = v115;
    sub_1A85E99B0(v113, (&v118 + 8));
    v16 = v14;
LABEL_17:
    v123[0] = v118;
    v123[1] = v119;
    v124 = v120;
    v121 = v116;
    v122 = v117;
    if (!*(&v117 + 1))
    {

      return v9;
    }

    v116 = v121;
    v117 = v122;
    *&v118 = *&v123[0];
    sub_1A85E99B0((v123 + 8), v113);
    sub_1A85F1028(v113, v114);
    if (swift_dynamicCast())
    {
      v19 = v108;
      if ((v108 & 1) == 0)
      {
        goto LABEL_29;
      }

      v107 = v16;
      v102 = sub_1A88C7478();
      v103 = &v101;
      v104 = *(v102 - 8);
      MEMORY[0x1EEE9AC00](v102);
      v21 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (qword_1EB3020B8 != -1)
      {
        swift_once();
      }

      v22 = qword_1EB303300;
      v23 = sub_1A88C82A8();
      v24 = [v22 dateFromString_];

      if (!v24)
      {
        v16 = v107;
        v19 = v108;
LABEL_29:
        if ((v19 & 2) != 0)
        {
          v35 = sub_1A88C7318();
          v37 = v36;

          v2 = v106;
          if (v37 >> 60 != 15)
          {
            sub_1A8717304(&v116, v114);
            v112 = MEMORY[0x1E6969088];
            *&v111 = v35;
            *(&v111 + 1) = v37;
            sub_1A85E99B0(&v111, v110);
            sub_1A871DFB8(v35, v37);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v109 = v9;
            v78 = sub_1A8602F10(v114);
            v80 = v9[2];
            v81 = (v79 & 1) == 0;
            v12 = __OFADD__(v80, v81);
            v82 = v80 + v81;
            if (v12)
            {
              goto LABEL_93;
            }

            v83 = v79;
            if (v9[3] >= v82)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v98 = v16;
                v99 = v78;
                sub_1A87B1030();
                v78 = v99;
                v16 = v98;
              }
            }

            else
            {
              sub_1A8878AB8(v82, isUniquelyReferenced_nonNull_native);
              v78 = sub_1A8602F10(v114);
              if ((v83 & 1) != (v84 & 1))
              {
                goto LABEL_96;
              }
            }

            v2 = v106;
            v107 = v16;
            v9 = v109;
            if (v83)
            {
              v89 = (v109[7] + 32 * v78);
              sub_1A85F1084(v89);
              sub_1A85E99B0(v110, v89);
              sub_1A871CD4C(v35, v37);
              sub_1A8717360(v114);
              sub_1A85F1084(v113);
              sub_1A8717360(&v116);
            }

            else
            {
              v109[(v78 >> 6) + 8] |= 1 << v78;
              v90 = v78;
              sub_1A8717304(v114, v9[6] + 40 * v78);
              sub_1A85E99B0(v110, (v9[7] + 32 * v90));
              sub_1A871CD4C(v35, v37);
              sub_1A8717360(v114);
              sub_1A85F1084(v113);
              sub_1A8717360(&v116);
              v91 = v9[2];
              v12 = __OFADD__(v91, 1);
              v92 = v91 + 1;
              if (v12)
              {
                goto LABEL_95;
              }

              v9[2] = v92;
            }

            goto LABEL_81;
          }
        }

        else
        {

          v2 = v106;
        }

        goto LABEL_32;
      }

      sub_1A88C7448();

      sub_1A8717304(&v116, v114);
      v25 = v102;
      v112 = v102;
      v26 = sub_1A871E00C(&v111);
      (*(v104 + 16))(v26, v21, v25);
      sub_1A85E99B0(&v111, v110);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v109 = v9;
      v28 = sub_1A8602F10(v114);
      v30 = v9[2];
      v31 = (v29 & 1) == 0;
      v12 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v12)
      {
        goto LABEL_90;
      }

      v33 = v29;
      if (v9[3] >= v32)
      {
        if ((v27 & 1) == 0)
        {
          v97 = v28;
          sub_1A87B1030();
          v28 = v97;
        }
      }

      else
      {
        sub_1A8878AB8(v32, v27);
        v28 = sub_1A8602F10(v114);
        if ((v33 & 1) != (v34 & 1))
        {
          goto LABEL_96;
        }
      }

      v2 = v106;
      v9 = v109;
      if (v33)
      {
        v85 = (v109[7] + 32 * v28);
        sub_1A85F1084(v85);
        sub_1A85E99B0(v110, v85);
        sub_1A8717360(v114);
        (*(v104 + 8))(v21, v25);
        sub_1A85F1084(v113);
        sub_1A8717360(&v116);
      }

      else
      {
        v109[(v28 >> 6) + 8] |= 1 << v28;
        v86 = v28;
        sub_1A8717304(v114, v9[6] + 40 * v28);
        sub_1A85E99B0(v110, (v9[7] + 32 * v86));
        sub_1A8717360(v114);
        (*(v104 + 8))(v21, v25);
        sub_1A85F1084(v113);
        sub_1A8717360(&v116);
        v87 = v9[2];
        v12 = __OFADD__(v87, 1);
        v88 = v87 + 1;
        if (v12)
        {
          goto LABEL_94;
        }

        v9[2] = v88;
      }

LABEL_81:
      v8 = v107;
    }

    else
    {
LABEL_32:
      sub_1A85F1028(v113, v114);
      v38 = sub_1A870CCE0(&qword_1EB303320);
      if (swift_dynamicCast())
      {
        v39 = v2;
        v40 = v16;
        v41 = v111;
        sub_1A8717304(&v116, v114);
        *&v110[0] = v108;
        v42 = sub_1A8719A74(v110, v41);

        v112 = v38;
        *&v111 = v42;
        sub_1A85E99B0(&v111, v110);
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v109 = v9;
        v44 = sub_1A8602F10(v114);
        v46 = v9[2];
        v47 = (v45 & 1) == 0;
        v12 = __OFADD__(v46, v47);
        v48 = v46 + v47;
        if (v12)
        {
          goto LABEL_86;
        }

        v49 = v45;
        if (v9[3] >= v48)
        {
          if ((v43 & 1) == 0)
          {
            v93 = v44;
            sub_1A87B1030();
            v44 = v93;
          }
        }

        else
        {
          sub_1A8878AB8(v48, v43);
          v44 = sub_1A8602F10(v114);
          if ((v49 & 1) != (v50 & 1))
          {
            goto LABEL_96;
          }
        }

        v16 = v40;
        v2 = v39;
        v9 = v109;
        v3 = v105;
        if (v49)
        {
LABEL_53:
          v71 = (v9[7] + 32 * v44);
          sub_1A85F1084(v71);
          v72 = v110;
          goto LABEL_58;
        }

        v109[(v44 >> 6) + 8] |= 1 << v44;
        v10 = v44;
        sub_1A8717304(v114, v9[6] + 40 * v44);
        sub_1A85E99B0(v110, (v9[7] + 32 * v10));
        sub_1A8717360(v114);
        sub_1A85F1084(v113);
        sub_1A8717360(&v116);
        v11 = v9[2];
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          goto LABEL_89;
        }

LABEL_6:
        v9[2] = v13;
        v8 = v16;
      }

      else
      {
        sub_1A85F1028(v113, v114);
        v51 = sub_1A870CCE0(&qword_1EB303318);
        if (swift_dynamicCast())
        {
          v52 = v2;
          v53 = v16;
          v54 = v111;
          sub_1A8717304(&v116, v114);
          *&v110[0] = v108;
          v55 = sub_1A871A60C(v110, v54);

          v112 = v51;
          *&v111 = v55;
          sub_1A85E99B0(&v111, v110);
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v109 = v9;
          v44 = sub_1A8602F10(v114);
          v58 = v9[2];
          v59 = (v57 & 1) == 0;
          v12 = __OFADD__(v58, v59);
          v60 = v58 + v59;
          if (v12)
          {
            goto LABEL_88;
          }

          v61 = v57;
          if (v9[3] >= v60)
          {
            if ((v56 & 1) == 0)
            {
              v94 = v44;
              sub_1A87B1030();
              v44 = v94;
            }
          }

          else
          {
            sub_1A8878AB8(v60, v56);
            v44 = sub_1A8602F10(v114);
            if ((v61 & 1) != (v62 & 1))
            {
              goto LABEL_96;
            }
          }

          v16 = v53;
          v2 = v52;
          v9 = v109;
          v3 = v105;
          if (v61)
          {
            goto LABEL_53;
          }

          v109[(v44 >> 6) + 8] |= 1 << v44;
          v73 = v44;
          sub_1A8717304(v114, v9[6] + 40 * v44);
          sub_1A85E99B0(v110, (v9[7] + 32 * v73));
          sub_1A8717360(v114);
          sub_1A85F1084(v113);
          sub_1A8717360(&v116);
          v74 = v9[2];
          v12 = __OFADD__(v74, 1);
          v13 = v74 + 1;
          if (v12)
          {
            goto LABEL_92;
          }

          goto LABEL_6;
        }

        sub_1A8717304(&v116, v114);
        sub_1A85F1028(v113, &v111);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        *&v110[0] = v9;
        v64 = sub_1A8602F10(v114);
        v66 = v9[2];
        v67 = (v65 & 1) == 0;
        v12 = __OFADD__(v66, v67);
        v68 = v66 + v67;
        if (v12)
        {
          goto LABEL_87;
        }

        v69 = v65;
        if (v9[3] >= v68)
        {
          if ((v63 & 1) == 0)
          {
            v95 = v16;
            v96 = v64;
            sub_1A87B1030();
            v64 = v96;
            v16 = v95;
          }
        }

        else
        {
          sub_1A8878AB8(v68, v63);
          v64 = sub_1A8602F10(v114);
          if ((v69 & 1) != (v70 & 1))
          {
            goto LABEL_96;
          }
        }

        v9 = *&v110[0];
        if ((v69 & 1) == 0)
        {
          *(*&v110[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
          v75 = v64;
          sub_1A8717304(v114, v9[6] + 40 * v64);
          sub_1A85E99B0(&v111, (v9[7] + 32 * v75));
          sub_1A8717360(v114);
          sub_1A85F1084(v113);
          sub_1A8717360(&v116);
          v76 = v9[2];
          v12 = __OFADD__(v76, 1);
          v13 = v76 + 1;
          if (v12)
          {
            goto LABEL_91;
          }

          goto LABEL_6;
        }

        v71 = (*(*&v110[0] + 56) + 32 * v64);
        sub_1A85F1084(v71);
        v72 = &v111;
LABEL_58:
        sub_1A85E99B0(v72, v71);
        sub_1A8717360(v114);
        sub_1A85F1084(v113);
        sub_1A8717360(&v116);
        v8 = v16;
      }
    }
  }

  if (v7 <= v8 + 1)
  {
    v15 = v8 + 1;
  }

  else
  {
    v15 = v7;
  }

  v16 = v15 - 1;
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v7)
    {
      v6 = 0;
      v120 = 0;
      v118 = 0u;
      v119 = 0u;
      v116 = 0u;
      v117 = 0u;
      goto LABEL_17;
    }

    v6 = *(v3 + 8 * v14);
    ++v8;
    if (v6)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

char *sub_1A871A60C(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = a2 + 32;
      v2 = MEMORY[0x1E69E7CC0];
      v27 = *a1;
      while (1)
      {
        sub_1A85F1028(v5, v34);
        sub_1A85F1028(v34, &v32);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_20;
        }

        if ((v3 & 1) == 0)
        {
          goto LABEL_17;
        }

        v6 = sub_1A88C7478();
        v29 = &v27;
        v28 = *(v6 - 8);
        v7 = *(v28 + 64);
        MEMORY[0x1EEE9AC00](v6);
        v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
        v30 = &v27 - v8;
        if (qword_1EB3020B8 != -1)
        {
          swift_once();
        }

        v9 = qword_1EB303300;
        v10 = sub_1A88C82A8();
        v11 = [v9 dateFromString_];

        MEMORY[0x1EEE9AC00](v12);
        if (!v11)
        {
          break;
        }

        sub_1A88C7448();

        v13 = v28;
        v14 = v30;
        (*(v28 + 32))(v30, &v27 - v8, v6);
        v33 = v6;
        v15 = sub_1A871E00C(&v32);
        (*(v13 + 16))(v15, v14, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1A8734EA8(0, *(v2 + 2) + 1, 1, v2);
        }

        v17 = *(v2 + 2);
        v16 = *(v2 + 3);
        v3 = v27;
        if (v17 >= v16 >> 1)
        {
          v2 = sub_1A8734EA8((v16 > 1), v17 + 1, 1, v2);
        }

        (*(v13 + 8))(v30, v6);
        sub_1A85F1084(v34);
        *(v2 + 2) = v17 + 1;
        sub_1A85E99B0(&v32, &v2[32 * v17 + 32]);
LABEL_5:
        v5 += 32;
        if (!--v4)
        {
          return v2;
        }
      }

      v3 = v27;
LABEL_17:
      if ((v3 & 2) != 0)
      {
        v18 = sub_1A88C7318();
        v20 = v19;

        if (v20 >> 60 != 15)
        {
          v33 = MEMORY[0x1E6969088];
          *&v32 = v18;
          *(&v32 + 1) = v20;
          goto LABEL_27;
        }
      }

      else
      {
      }

LABEL_20:
      sub_1A85F1028(v34, &v32);
      v21 = sub_1A870CCE0(&qword_1EB303320);
      if (swift_dynamicCast())
      {
        *&v32 = v3;
        v22 = sub_1A8719A74(&v32, v31);
      }

      else
      {
        sub_1A85F1028(v34, &v32);
        v21 = sub_1A870CCE0(&qword_1EB303318);
        if (!swift_dynamicCast())
        {
          sub_1A85F1028(v34, &v32);
          goto LABEL_27;
        }

        *&v32 = v3;
        v22 = sub_1A871A60C(&v32, v31);
      }

      v23 = v22;

      v33 = v21;
      *&v32 = v23;
LABEL_27:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1A8734EA8(0, *(v2 + 2) + 1, 1, v2);
      }

      v25 = *(v2 + 2);
      v24 = *(v2 + 3);
      if (v25 >= v24 >> 1)
      {
        v2 = sub_1A8734EA8((v24 > 1), v25 + 1, 1, v2);
      }

      sub_1A85F1084(v34);
      *(v2 + 2) = v25 + 1;
      sub_1A85E99B0(&v32, &v2[32 * v25 + 32]);
      goto LABEL_5;
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  return v2;
}

uint64_t EncodeAsJSON.encode(to:)(void *a1, uint64_t a2)
{
  v59[2] = *MEMORY[0x1E69E9840];
  v49 = a2;
  v3 = *(a2 + 16);
  v57 = sub_1A88C8BE8();
  v4 = *(v57 - 8);
  v5 = MEMORY[0x1EEE9AC00](v57);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v50 = &v46 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v46 - v10;
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EncodeAsJSON.CodingKeys();
  swift_getWitnessTable();
  v13 = sub_1A88C9318();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  sub_1A870C278(a1, a1[3]);
  v54 = v15;
  sub_1A88C95C8();
  v16 = v55;
  v17 = *(v4 + 16);
  v17(v11, v55, v57);
  v18 = v56;
  v19 = *(v56 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    (*(v4 + 8))(v11, v57);
    v20 = v53;
LABEL_3:
    v59[0] = *(v16 + *(v49 + 28));
    v58 = 1;
    sub_1A871CDB4();
    v21 = v54;
    sub_1A88C92C8();
    return (*(v52 + 8))(v21, v20);
  }

  v46 = v4;
  (*(v18 + 32))(v51, v11, v3);
  v23 = v50;
  v17(v50, v16, v57);
  v24 = v19(v23, 1, v3);
  v25 = v3;
  if (v24 == 1)
  {
    v26 = v46;
    (*(v46 + 8))(v50, v57);
  }

  else
  {
    sub_1A870CCE0(&qword_1EB303320);
    v27 = swift_dynamicCast();
    v26 = v46;
    if (v27)
    {
      v28 = v59[0];
      v59[0] = *(v55 + *(v49 + 28));
      v29 = sub_1A871B1F4(v59, v28);

      v30 = v56;
      v31 = v51;
      (*(v56 + 8))(v51, v3);
      v59[0] = v29;
      swift_dynamicCast();
      v20 = v53;
      goto LABEL_14;
    }

    v16 = v55;
  }

  v32 = v47;
  v17(v47, v16, v57);
  if (v19(v32, 1, v25) == 1)
  {
    (*(v26 + 8))(v32, v57);
    v20 = v53;
    v30 = v56;
  }

  else
  {
    sub_1A870CCE0(&qword_1EB303318);
    v33 = swift_dynamicCast();
    v20 = v53;
    v30 = v56;
    if (v33)
    {
      v34 = v59[0];
      v59[0] = *(v55 + *(v49 + 28));
      v35 = sub_1A871BDD8(v59, v34);

      v31 = v51;
      (*(v30 + 8))(v51, v25);
      v59[0] = v35;
      swift_dynamicCast();
      goto LABEL_14;
    }
  }

  v31 = v51;
LABEL_14:
  v36 = objc_opt_self();
  v37 = sub_1A88C9388();
  v59[0] = 0;
  v38 = [v36 dataWithJSONObject:v37 options:0 error:v59];
  swift_unknownObjectRelease();
  v39 = v59[0];
  if (v38)
  {
    v40 = sub_1A88C7358();
    v42 = v41;

    v59[0] = v40;
    v59[1] = v42;
    v58 = 0;
    sub_1A871CE08();
    v43 = v54;
    v44 = v48;
    sub_1A88C92C8();
    if (!v44)
    {
      (*(v30 + 8))(v31, v25);
      sub_1A871CD60(v40, v42);
      v16 = v55;
      goto LABEL_3;
    }

    (*(v52 + 8))(v43, v20);
    (*(v30 + 8))(v31, v25);
    return sub_1A871CD60(v40, v42);
  }

  else
  {
    v45 = v39;
    sub_1A88C7168();

    swift_willThrow();
    (*(v52 + 8))(v54, v20);
    return (*(v30 + 8))(v31, v25);
  }
}

uint64_t sub_1A871B1F4(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (!*a1)
  {

    return v2;
  }

  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  v105 = v2;
  v106 = v3;
  v103 = v2 + 64;
  v104 = v8;
  if (!v7)
  {
    goto LABEL_76;
  }

  do
  {
    v96 = v9;
LABEL_83:
    v99 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v100 = v99 | (v96 << 6);
    sub_1A8717304(*(v2 + 48) + 40 * v100, v113);
    sub_1A85F1028(*(v2 + 56) + 32 * v100, v112);
    v115 = v113[0];
    v116 = v113[1];
    *&v117 = v114;
    sub_1A85E99B0(v112, (&v117 + 8));
    v98 = v96;
LABEL_84:
    v122[0] = v117;
    v122[1] = v118;
    v123 = v119;
    v120 = v115;
    v121 = v116;
    if (!*(&v116 + 1))
    {

      return v10;
    }

    v107 = v98;
    v115 = v120;
    v116 = v121;
    *&v117 = *&v122[0];
    sub_1A85E99B0((v122 + 8), v112);
    if (v3)
    {
      v11 = sub_1A88C7478();
      v12 = *(v11 - 8);
      MEMORY[0x1EEE9AC00](v11);
      v14 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A85F1028(v112, v113);
      v15 = sub_1A870CCE0(&unk_1EB3052E0);
      MEMORY[0x1EEE9AC00](v15 - 8);
      v17 = &v102 - v16;
      v18 = swift_dynamicCast();
      v19 = *(v12 + 56);
      if (v18)
      {
        v19(v17, 0, 1, v11);
        (*(v12 + 32))(v14, v17, v11);
        sub_1A8717304(&v115, v113);
        if (qword_1EB3020B8 != -1)
        {
          swift_once();
        }

        v20 = qword_1EB303300;
        v102 = v14;
        v21 = sub_1A88C73D8();
        v22 = [v20 stringFromDate_];

        v23 = sub_1A88C82E8();
        v25 = v24;

        v111 = MEMORY[0x1E69E6158];
        *&v110 = v23;
        *(&v110 + 1) = v25;
        sub_1A85E99B0(&v110, v109);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v10;
        v27 = sub_1A8602F10(v113);
        v29 = v10[2];
        v30 = (v28 & 1) == 0;
        v31 = __OFADD__(v29, v30);
        v32 = v29 + v30;
        if (v31)
        {
          goto LABEL_90;
        }

        v33 = v28;
        if (v10[3] >= v32)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v89 = v27;
            sub_1A87B1030();
            v27 = v89;
          }
        }

        else
        {
          sub_1A8878AB8(v32, isUniquelyReferenced_nonNull_native);
          v27 = sub_1A8602F10(v113);
          if ((v33 & 1) != (v34 & 1))
          {
            goto LABEL_99;
          }
        }

        v3 = v106;
        v10 = v108;
        if (v33)
        {
          v81 = (v108[7] + 32 * v27);
          sub_1A85F1084(v81);
          sub_1A85E99B0(v109, v81);
          sub_1A8717360(v113);
          (*(v12 + 8))(v102, v11);
          sub_1A85F1084(v112);
          sub_1A8717360(&v115);
        }

        else
        {
          v108[(v27 >> 6) + 8] |= 1 << v27;
          v82 = v27;
          sub_1A8717304(v113, v10[6] + 40 * v27);
          sub_1A85E99B0(v109, (v10[7] + 32 * v82));
          sub_1A8717360(v113);
          (*(v12 + 8))(v102, v11);
          sub_1A85F1084(v112);
          sub_1A8717360(&v115);
          v83 = v10[2];
          v31 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v31)
          {
            goto LABEL_95;
          }

          v10[2] = v84;
        }

        v9 = v107;
        v2 = v105;
        v4 = v103;
        goto LABEL_54;
      }

      v19(v17, 1, 1, v11);
      sub_1A871DF50(v17);
      v4 = v103;
      v8 = v104;
      v2 = v105;
      v3 = v106;
    }

    if ((v3 & 2) != 0)
    {
      sub_1A85F1028(v112, v113);
      if (swift_dynamicCast())
      {
        v35 = v110;
        sub_1A8717304(&v115, v113);
        v36 = sub_1A88C7348();
        v111 = MEMORY[0x1E69E6158];
        *&v110 = v36;
        *(&v110 + 1) = v37;
        sub_1A85E99B0(&v110, v109);
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v108 = v10;
        v40 = sub_1A8602F10(v113);
        v41 = v10[2];
        v42 = (v39 & 1) == 0;
        v43 = v41 + v42;
        if (__OFADD__(v41, v42))
        {
          goto LABEL_91;
        }

        v44 = v39;
        if (v10[3] < v43)
        {
          sub_1A8878AB8(v43, v38);
          v45 = sub_1A8602F10(v113);
          if ((v44 & 1) != (v46 & 1))
          {
            goto LABEL_99;
          }

          v40 = v45;
          v10 = v108;
          if ((v44 & 1) == 0)
          {
            goto LABEL_21;
          }

LABEL_52:
          v85 = (v10[7] + 32 * v40);
          sub_1A85F1084(v85);
          sub_1A85E99B0(v109, v85);
          sub_1A871CD60(v35, *(&v35 + 1));
          sub_1A8717360(v113);
          sub_1A85F1084(v112);
          sub_1A8717360(&v115);
LABEL_53:
          v3 = v106;
          v9 = v107;
          v2 = v105;
LABEL_54:
          v8 = v104;
          continue;
        }

        if (v38)
        {
          v10 = v108;
          if (v39)
          {
            goto LABEL_52;
          }
        }

        else
        {
          sub_1A87B1030();
          v10 = v108;
          if (v44)
          {
            goto LABEL_52;
          }
        }

LABEL_21:
        v10[(v40 >> 6) + 8] |= 1 << v40;
        sub_1A8717304(v113, v10[6] + 40 * v40);
        sub_1A85E99B0(v109, (v10[7] + 32 * v40));
        sub_1A871CD60(v35, *(&v35 + 1));
        sub_1A8717360(v113);
        sub_1A85F1084(v112);
        sub_1A8717360(&v115);
        v47 = v10[2];
        v31 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v31)
        {
          goto LABEL_96;
        }

        v10[2] = v48;
        goto LABEL_53;
      }
    }

    sub_1A85F1028(v112, v113);
    v49 = sub_1A870CCE0(&qword_1EB303320);
    if (!swift_dynamicCast())
    {
      sub_1A85F1028(v112, v113);
      v60 = sub_1A870CCE0(&qword_1EB303318);
      if (swift_dynamicCast())
      {
        v61 = v110;
        sub_1A8717304(&v115, v113);
        *&v109[0] = v3;
        v62 = sub_1A871BDD8(v109, v61);

        v111 = v60;
        *&v110 = v62;
        sub_1A85E99B0(&v110, v109);
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v108 = v10;
        v53 = sub_1A8602F10(v113);
        v65 = v10[2];
        v66 = (v64 & 1) == 0;
        v31 = __OFADD__(v65, v66);
        v67 = v65 + v66;
        if (v31)
        {
          goto LABEL_92;
        }

        v68 = v64;
        if (v10[3] < v67)
        {
          sub_1A8878AB8(v67, v63);
          v53 = sub_1A8602F10(v113);
          if ((v68 & 1) != (v69 & 1))
          {
            goto LABEL_99;
          }

LABEL_56:
          v10 = v108;
          if ((v68 & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_57;
        }

        if (v63)
        {
          goto LABEL_56;
        }

        v90 = v53;
        sub_1A87B1030();
        v53 = v90;
        v10 = v108;
        if ((v68 & 1) == 0)
        {
LABEL_67:
          v10[(v53 >> 6) + 8] |= 1 << v53;
          v91 = v53;
          sub_1A8717304(v113, v10[6] + 40 * v53);
          sub_1A85E99B0(v109, (v10[7] + 32 * v91));
          sub_1A8717360(v113);
          sub_1A85F1084(v112);
          sub_1A8717360(&v115);
          v92 = v10[2];
          v31 = __OFADD__(v92, 1);
          v80 = v92 + 1;
          if (v31)
          {
            goto LABEL_98;
          }

LABEL_72:
          v10[2] = v80;
          goto LABEL_73;
        }

        goto LABEL_57;
      }

      sub_1A8717304(&v115, v113);
      sub_1A85F1028(v112, &v110);
      v70 = swift_isUniquelyReferenced_nonNull_native();
      *&v109[0] = v10;
      v71 = sub_1A8602F10(v113);
      v73 = v10[2];
      v74 = (v72 & 1) == 0;
      v31 = __OFADD__(v73, v74);
      v75 = v73 + v74;
      if (v31)
      {
        goto LABEL_93;
      }

      v76 = v72;
      if (v10[3] >= v75)
      {
        if ((v70 & 1) == 0)
        {
          v93 = v71;
          sub_1A87B1030();
          v71 = v93;
          v10 = *&v109[0];
          if ((v76 & 1) == 0)
          {
LABEL_71:
            v10[(v71 >> 6) + 8] |= 1 << v71;
            v94 = v71;
            sub_1A8717304(v113, v10[6] + 40 * v71);
            sub_1A85E99B0(&v110, (v10[7] + 32 * v94));
            sub_1A8717360(v113);
            sub_1A85F1084(v112);
            sub_1A8717360(&v115);
            v95 = v10[2];
            v31 = __OFADD__(v95, 1);
            v80 = v95 + 1;
            if (v31)
            {
              goto LABEL_97;
            }

            goto LABEL_72;
          }

LABEL_60:
          v86 = (v10[7] + 32 * v71);
          sub_1A85F1084(v86);
          v87 = &v110;
          goto LABEL_61;
        }
      }

      else
      {
        sub_1A8878AB8(v75, v70);
        v71 = sub_1A8602F10(v113);
        if ((v76 & 1) != (v77 & 1))
        {
          goto LABEL_99;
        }
      }

      v10 = *&v109[0];
      if ((v76 & 1) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_60;
    }

    v50 = v110;
    sub_1A8717304(&v115, v113);
    *&v109[0] = v3;
    v51 = sub_1A871B1F4(v109, v50);

    v111 = v49;
    *&v110 = v51;
    sub_1A85E99B0(&v110, v109);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v10;
    v53 = sub_1A8602F10(v113);
    v55 = v10[2];
    v56 = (v54 & 1) == 0;
    v31 = __OFADD__(v55, v56);
    v57 = v55 + v56;
    if (v31)
    {
      goto LABEL_89;
    }

    v58 = v54;
    if (v10[3] < v57)
    {
      sub_1A8878AB8(v57, v52);
      v53 = sub_1A8602F10(v113);
      if ((v58 & 1) != (v59 & 1))
      {
        goto LABEL_99;
      }

LABEL_39:
      v10 = v108;
      if ((v58 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_57;
    }

    if (v52)
    {
      goto LABEL_39;
    }

    v88 = v53;
    sub_1A87B1030();
    v53 = v88;
    v10 = v108;
    if ((v58 & 1) == 0)
    {
LABEL_40:
      v10[(v53 >> 6) + 8] |= 1 << v53;
      v78 = v53;
      sub_1A8717304(v113, v10[6] + 40 * v53);
      sub_1A85E99B0(v109, (v10[7] + 32 * v78));
      sub_1A8717360(v113);
      sub_1A85F1084(v112);
      sub_1A8717360(&v115);
      v79 = v10[2];
      v31 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v31)
      {
        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_57:
    v86 = (v10[7] + 32 * v53);
    sub_1A85F1084(v86);
    v87 = v109;
LABEL_61:
    sub_1A85E99B0(v87, v86);
    sub_1A8717360(v113);
    sub_1A85F1084(v112);
    sub_1A8717360(&v115);
LABEL_73:
    v9 = v107;
  }

  while (v7);
LABEL_76:
  if (v8 <= v9 + 1)
  {
    v97 = v9 + 1;
  }

  else
  {
    v97 = v8;
  }

  v98 = v97 - 1;
  while (1)
  {
    v96 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v96 >= v8)
    {
      v7 = 0;
      v119 = 0;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      goto LABEL_84;
    }

    v7 = *(v4 + 8 * v96);
    ++v9;
    if (v7)
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

char *sub_1A871BDD8(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      v5 = a2 + 32;
      v2 = MEMORY[0x1E69E7CC0];
      v34[0] = *a1;
      while (1)
      {
        sub_1A85F1028(v5, v39);
        if (v3)
        {
          v6 = sub_1A88C7478();
          v7 = *(v6 - 8);
          MEMORY[0x1EEE9AC00](v6);
          v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1A85F1028(v39, &v37);
          v10 = sub_1A870CCE0(&unk_1EB3052E0);
          MEMORY[0x1EEE9AC00](v10 - 8);
          v12 = v34 - v11;
          v13 = swift_dynamicCast();
          v14 = *(v7 + 56);
          if (v13)
          {
            v34[1] = v34;
            v14(v12, 0, 1, v6);
            (*(v7 + 32))(v9, v12, v6);
            if (qword_1EB3020B8 != -1)
            {
              swift_once();
            }

            v15 = qword_1EB303300;
            v16 = sub_1A88C73D8();
            v17 = [v15 stringFromDate_];

            v18 = sub_1A88C82E8();
            v20 = v19;

            v38 = MEMORY[0x1E69E6158];
            *&v37 = v18;
            *(&v37 + 1) = v20;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_1A8734EA8(0, *(v2 + 2) + 1, 1, v2);
            }

            v22 = *(v2 + 2);
            v21 = *(v2 + 3);
            v3 = v34[0];
            if (v22 >= v21 >> 1)
            {
              v2 = sub_1A8734EA8((v21 > 1), v22 + 1, 1, v2);
            }

            (*(v7 + 8))(v9, v6);
            sub_1A85F1084(v39);
            *(v2 + 2) = v22 + 1;
            sub_1A85E99B0(&v37, &v2[32 * v22 + 32]);
            goto LABEL_6;
          }

          v14(v12, 1, 1, v6);
          sub_1A871DF50(v12);
        }

        if ((v3 & 2) == 0)
        {
          break;
        }

        sub_1A85F1028(v39, &v37);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v23 = v35;
        v24 = v36;
        v25 = sub_1A88C7348();
        v38 = MEMORY[0x1E69E6158];
        *&v37 = v25;
        *(&v37 + 1) = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1A8734EA8(0, *(v2 + 2) + 1, 1, v2);
        }

        v28 = *(v2 + 2);
        v27 = *(v2 + 3);
        if (v28 >= v27 >> 1)
        {
          v2 = sub_1A8734EA8((v27 > 1), v28 + 1, 1, v2);
        }

        sub_1A871CD60(v23, v24);
        sub_1A85F1084(v39);
        *(v2 + 2) = v28 + 1;
LABEL_5:
        sub_1A85E99B0(&v37, &v2[32 * v28 + 32]);
LABEL_6:
        v5 += 32;
        if (!--v4)
        {
          return v2;
        }
      }

      sub_1A85F1028(v39, &v37);
      v29 = sub_1A870CCE0(&qword_1EB303320);
      if (swift_dynamicCast())
      {
        *&v37 = v3;
        v30 = sub_1A871B1F4(&v37, v35);
      }

      else
      {
        sub_1A85F1028(v39, &v37);
        v29 = sub_1A870CCE0(&qword_1EB303318);
        if (!swift_dynamicCast())
        {
          sub_1A85F1028(v39, &v37);
          goto LABEL_30;
        }

        *&v37 = v3;
        v30 = sub_1A871BDD8(&v37, v35);
      }

      v31 = v30;

      v38 = v29;
      *&v37 = v31;
LABEL_30:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1A8734EA8(0, *(v2 + 2) + 1, 1, v2);
      }

      v28 = *(v2 + 2);
      v32 = *(v2 + 3);
      if (v28 >= v32 >> 1)
      {
        v2 = sub_1A8734EA8((v32 > 1), v28 + 1, 1, v2);
      }

      sub_1A85F1084(v39);
      *(v2 + 2) = v28 + 1;
      goto LABEL_5;
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  return v2;
}

uint64_t sub_1A871C344()
{
  v0 = sub_1A88C9028();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A871C398()
{
  type metadata accessor for EncodeAsJSON.CodingKeys();
  sub_1A88C9358();
  swift_allocObject();
  v0 = sub_1A88C8618();
  *v1 = 256;
  sub_1A88C86B8();
  return v0;
}

uint64_t sub_1A871C400(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x5664657070617277;
  }
}

uint64_t sub_1A871C444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A871C4B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1A871C524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A871C594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1A871C604@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A871C344();
  *a1 = result;
  return result;
}

uint64_t sub_1A871C634@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A871C400(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A871C668@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A871C344();
  *a1 = result;
  return result;
}

uint64_t sub_1A871C690@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A871DF48();
  *a1 = result;
  return result;
}

uint64_t sub_1A871C6BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A871C398();
  *a1 = result;
  return result;
}

uint64_t sub_1A871C6E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1A871C73C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

unint64_t sub_1A871C804()
{
  result = qword_1EB303308;
  if (!qword_1EB303308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303308);
  }

  return result;
}

unint64_t sub_1A871C858()
{
  result = qword_1EB303310;
  if (!qword_1EB303310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303310);
  }

  return result;
}

id sub_1A871C8A0()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  qword_1EB303300 = result;
  return result;
}

BOOL sub_1A871CA04(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1A871CA34@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A871CA60@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t EncodeAsJSONSerializationOptions.description.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (&unk_1F1BA8DF0 + 24 * v1 + 32);
  while (++v1 != 3)
  {
    v6 = v5 + 3;
    v7 = *v5;
    v5 += 3;
    if ((v7 & ~v2) == 0)
    {
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A871CE70(0, v4[2] + 1, 1);
      }

      v11 = v4[2];
      v10 = v4[3];
      if (v11 >= v10 >> 1)
      {
        sub_1A871CE70((v10 > 1), v11 + 1, 1);
      }

      v4[2] = v11 + 1;
      v12 = &v4[3 * v11];
      v12[4] = v7;
      v12[5] = v9;
      v12[6] = v8;
      goto LABEL_2;
    }
  }

  v13 = v4[2];
  if (v13)
  {
    sub_1A871CE50(0, v13, 0);
    v14 = v3;
    v15 = v4 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1A871CE50((v18 > 1), v19 + 1, 1);
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v13;
    }

    while (v13);
  }

  sub_1A870CCE0(&qword_1EB303100);
  sub_1A871CE90();
  v21 = sub_1A88C8278();

  return v21;
}

uint64_t sub_1A871CD4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A871CD60(a1, a2);
  }

  return a1;
}

uint64_t sub_1A871CD60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1A871CDB4()
{
  result = qword_1EB303328;
  if (!qword_1EB303328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303328);
  }

  return result;
}

unint64_t sub_1A871CE08()
{
  result = qword_1EB303330;
  if (!qword_1EB303330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303330);
  }

  return result;
}

char *sub_1A871CE50(char *a1, int64_t a2, char a3)
{
  result = sub_1A871D818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A871CE70(void *a1, int64_t a2, char a3)
{
  result = sub_1A871D924(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1A871CE90()
{
  result = qword_1ED8C8B10;
  if (!qword_1ED8C8B10)
  {
    sub_1A870CD28(&qword_1EB303100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8C8B10);
  }

  return result;
}

unint64_t sub_1A871CEF8()
{
  result = qword_1EB303338;
  if (!qword_1EB303338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303338);
  }

  return result;
}

unint64_t sub_1A871CF50()
{
  result = qword_1EB303340;
  if (!qword_1EB303340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303340);
  }

  return result;
}

unint64_t sub_1A871CFA4()
{
  result = qword_1EB303348;
  if (!qword_1EB303348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB303348);
  }

  return result;
}

unint64_t sub_1A871CFFC()
{
  result = qword_1EB303350[0];
  if (!qword_1EB303350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB303350);
  }

  return result;
}

uint64_t sub_1A871D058()
{
  result = sub_1A88C8BE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A871D0D0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (v6 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v6;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_28;
  }

  if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 2)
    {
      v17 = (*(v4 + 48))(a1, v5);
      if (v17 >= 2)
      {
        return v17 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_21:
  v15 = v14 - 1;
  if (v10)
  {
    v15 = 0;
    LODWORD(v10) = *a1;
  }

  return v6 + (v10 | v15) + 1;
}

_DWORD *sub_1A871D20C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v11 = a3 - v9;
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (v10)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2 - v9;
    }

    if (v10)
    {
      v15 = ~v9 + a2;
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v10) = v14;
      }

      else
      {
        *(result + v10) = v14;
      }
    }

    else if (v5)
    {
      *(result + v10) = v14;
    }

    return result;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(result + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_32:
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (v5 == 2)
  {
    *(result + v10) = 0;
    goto LABEL_32;
  }

  *(result + v10) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v17 = *(v6 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EncodeAsJSONSerializationOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EncodeAsJSONSerializationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}