uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ns2xpc(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = xpc_string_create([v1 UTF8String]);
LABEL_9:
    v4 = v2;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = xpc_int64_create([v1 longLongValue]);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = xpc_data_create([v1 bytes], objc_msgSend(v1, "length"));
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v1 timeIntervalSince1970];
    v2 = xpc_date_create((v3 * 1000000000.0));
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    v7 = v1;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          v13 = [v12 UTF8String];
          v14 = [v7 objectForKeyedSubscript:v12];
          v15 = ns2xpc(v14);
          xpc_dictionary_set_value(v4, v13, v15);
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v9);
    }

LABEL_30:

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = xpc_array_create(0, 0);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = v1;
    v16 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v7);
          }

          v20 = ns2xpc(*(*(&v22 + 1) + 8 * j));
          xpc_array_append_value(v4, v20);
        }

        v17 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v17);
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = objc_opt_class();
    v21 = v31;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "ns2xpc: unrecognized class: %@", buf, 0xCu);
  }

  v4 = 0;
LABEL_10:

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id xpc2ns(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = MEMORY[0x1B2703B90]();
  if (v2 == MEMORY[0x1E69E9F10])
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_string_get_string_ptr(v1)];
LABEL_15:
    v4 = v5;
    goto LABEL_16;
  }

  v3 = v2;
  if (v2 == MEMORY[0x1E69E9EB0])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:xpc_int64_get_value(v1)];
    goto LABEL_15;
  }

  if (v2 == MEMORY[0x1E69E9E70])
  {
    length = xpc_data_get_length(v1);
    v5 = [MEMORY[0x1E695DEF0] dataWithBytes:xpc_data_get_bytes_ptr(v1) length:length];
    goto LABEL_15;
  }

  if (v2 == MEMORY[0x1E69E9E78])
  {
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:(xpc_date_get_value(v1) / 0x3B9ACA00uLL)];
    goto LABEL_15;
  }

  if (v2 == MEMORY[0x1E69E9E80])
  {
    v9 = objc_opt_new();
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __xpc2ns_block_invoke;
    applier[3] = &unk_1E7A28050;
    v4 = v9;
    v15 = v4;
    xpc_dictionary_apply(v1, applier);
    v10 = v15;
LABEL_21:

    goto LABEL_16;
  }

  if (v2 == MEMORY[0x1E69E9E50])
  {
    v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:xpc_array_get_count(v1)];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __xpc2ns_block_invoke_2;
    v12[3] = &unk_1E7A28078;
    v4 = v11;
    v13 = v4;
    xpc_array_apply(v1, v12);
    v10 = v13;
    goto LABEL_21;
  }

  if (v2 == MEMORY[0x1E69E9EA8])
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v3;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "xpc2ns: unrecognized type: %p", buf, 0xCu);
  }

  v4 = 0;
LABEL_16:

  v7 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __xpc2ns_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = xpc2ns(a3);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

uint64_t OSAIsConfiguredRSDDevice()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 addSuiteNamed:@"com.apple.osanalytics.factoryproxysync"];
  v1 = +[OSASystemConfiguration sharedInstance];
  if ([v1 appleInternal])
  {
    v2 = [v0 BOOLForKey:@"configureProxyDevice"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *OSADateFormat(unsigned int a1, double a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x80000000) != 0 || a1 > 7)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:
      v15 = @"recently";
      goto LABEL_12;
    }

    *buf = 67109120;
    LODWORD(v26) = a1;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "unrecognized date format %d";
    v13 = buf;
    v14 = 8;
LABEL_10:
    _os_log_impl(&dword_1AE4F7000, v11, OS_LOG_TYPE_DEFAULT, v12, v13, v14);
    goto LABEL_11;
  }

  v4 = floor(a2);
  v18 = (*MEMORY[0x1E695E468] + v4);
  v5 = localtime(&v18);
  if (!v5)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 134217984;
    v26 = v18;
    v11 = MEMORY[0x1E69E9C10];
    v12 = "unable to convert localtime from %ld secs";
    v13 = buf;
    v14 = 12;
    goto LABEL_10;
  }

  v6 = &(&formatters)[2 * a1];
  v7 = *v6;
  if (!strftime(buf, 0x40uLL, *v6, v5))
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v19 = 136315650;
    v20 = v7;
    v21 = 2048;
    v22 = v18;
    v23 = 1024;
    v24 = ((a2 - v4) * 1000000.0);
    v11 = MEMORY[0x1E69E9C10];
    v12 = "unable to strftime with format '%s' from %lds+%dus}";
    v13 = &v19;
    v14 = 28;
    goto LABEL_10;
  }

  v8 = *(v6 + 2);
  if (v8)
  {
    v9 = v27;
    v10 = fmtcheck(buf, "unknown-%u");
    if (!snprintf(v27, 0x40uLL, v10, ((a2 - v4) * 1000000.0) / v8))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = buf;
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
LABEL_12:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

uint64_t OSASafeOpen(const char *a1, int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    v8 = open(a1, a2 | 0x20000000, a3);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = v8;
      memset(&v16, 0, sizeof(v16));
      if (fstat(v8, &v16))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          OSASafeOpen_cold_2(a1);
        }
      }

      else
      {
        v11 = v16.st_mode & 0xF000;
        v13 = v11 == 0x8000 && v16.st_nlink == 1;
        if (v11 == 0x4000 || v13)
        {
          if (v7)
          {
            v7[2](v7, v9);
            v10 = 1;
            goto LABEL_22;
          }

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Path was safe to open, but no block was provided", buf, 2u);
          }
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          OSASafeOpen_cold_3(a1);
        }
      }

      v10 = 0;
LABEL_22:
      close(v9);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      OSASafeOpen_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16.st_dev) = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Skipping safe open because no path was provided", &v16, 2u);
  }

  v10 = 0;
LABEL_23:

  return v10;
}

BOOL OSASetOwnership(int a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (v7 && (v9 = *(a2 + 16), v9 != [v7 unsignedIntValue]))
  {
    v10 = v7;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  v11 = *(a2 + 20);
  if (v11 != [v8 unsignedIntValue])
  {
    v14 = v8;
    if (v10)
    {
      v12 = [v10 unsignedIntValue];
    }

    else
    {
      v12 = -1;
    }

    v13 = [v14 unsignedIntValue];

    goto LABEL_14;
  }

LABEL_7:
  if (v10)
  {
    v12 = [v10 unsignedIntValue];
    v13 = -1;
LABEL_14:
    v15 = fchown(a1, v12, v13) == 0;
    goto LABEL_15;
  }

  v15 = 1;
LABEL_15:

  return v15;
}

uint64_t OSASafeMoveItemAtURL(void *a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a1;
  v7 = [v6 URLByDeletingLastPathComponent];
  v8 = [v7 fileSystemRepresentation];

  v9 = [v6 lastPathComponent];

  v10 = [v9 fileSystemRepresentation];
  v11 = [v5 URLByDeletingLastPathComponent];
  v12 = [v11 fileSystemRepresentation];

  v13 = [v5 lastPathComponent];

  v14 = [v13 fileSystemRepresentation];
  v15 = OSASafeMoveItem(v8, v10, v12, v14);
  v16 = v15;
  if (a3 && (v15 & 1) == 0)
  {
    v17 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A578];
    v18 = MEMORY[0x1E696AEC0];
    v19 = __error();
    v20 = [v18 stringWithUTF8String:strerror(*v19)];
    v25[0] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *a3 = [v17 errorWithDomain:@"OSAFileOperations" code:0 userInfo:v21];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t OSASafeMoveItem(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __OSASafeMoveItem_block_invoke;
  v6[3] = &unk_1E7A27DE8;
  v6[4] = &v7;
  v6[5] = a3;
  v6[6] = a1;
  v6[7] = a2;
  v6[8] = a4;
  OSASafeOpen(a1, 0, 0, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __OSASafeMoveItem_block_invoke(uint64_t a1, int a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __OSASafeMoveItem_block_invoke_2;
  v4[3] = &unk_1E7A27DC0;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v7 = a2;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  return OSASafeOpen(v2, 0, 0, v4);
}

void __OSASafeMoveItem_block_invoke_2(uint64_t a1, int a2)
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = [MEMORY[0x1E696AEC0] stringWithCString:*(a1 + 40) encoding:4];
  v6 = [v4 fileURLWithPath:v5];

  v13 = 0;
  v7 = *MEMORY[0x1E695DE28];
  v12 = 0;
  [v6 getResourceValue:&v13 forKey:v7 error:&v12];
  v8 = v13;
  v9 = v12;
  v10 = v8;
  if ([v10 BOOLValue])
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = renameatx_np(*(a1 + 64), *(a1 + 48), a2, *(a1 + 56), v11) == 0;
}

uint64_t OSAIsRSDDevice()
{
  if (MGGetSInt32Answer() == 10)
  {
    return 1;
  }

  return OSAIsConfiguredRSDDevice();
}

void __OSASanitizePath_block_invoke_47(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __OSASanitizePath_block_invoke_47_cold_1(a1);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v2 = OSASanitizePath_orderedDomainList;
  obj = [v2 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (obj)
  {
    v4 = *v58;
    v5 = MEMORY[0x1E69E9C10];
    v6 = &unk_1E7A28000;
    *&v3 = 138413058;
    v45 = v3;
    v7 = 0x1ED7FC000uLL;
    v46 = *v58;
    v47 = v2;
    do
    {
      v8 = 0;
      v48 = v6[141];
      do
      {
        if (*v58 != v4)
        {
          objc_enumerationMutation(v2);
        }

        objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(&v57 + 1) + 8 * v8));
        if ([*(*(*(a1 + 48) + 8) + 40) isEqualToString:@"StagedVolume"] & 1) != 0 || (objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isEqualToString:", @"SystemVolume"))
        {
          v9 = @"MountedVolume";
        }

        else
        {
          v9 = *(*(*(a1 + 48) + 8) + 40);
        }

        v10 = v9;
        v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
        v12 = v5;
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(*(*(a1 + 48) + 8) + 40);
          if (v11)
          {
            if (objc_opt_respondsToSelector())
            {
              v23 = [v11 BOOLValue];
            }

            else
            {
              v23 = 0;
            }
          }

          else
          {
            v23 = 1;
          }

          buf.st_dev = v45;
          *&buf.st_mode = v22;
          WORD2(buf.st_ino) = 2112;
          *(&buf.st_ino + 6) = v10;
          HIWORD(buf.st_gid) = 2112;
          *&buf.st_rdev = v11;
          LOWORD(buf.st_atimespec.tv_sec) = 1024;
          *(&buf.st_atimespec.tv_sec + 2) = v23;
          _os_log_debug_impl(&dword_1AE4F7000, v5, OS_LOG_TYPE_DEBUG, "evaluate domain %@ (%@) option %@ check %d", &buf, 0x26u);
        }

        if (!v11 || (objc_opt_respondsToSelector() & 1) != 0 && [v11 BOOLValue])
        {
          v50 = v10;
          v49 = [*(v7 + 2584) objectForKeyedSubscript:{*(*(*(a1 + 48) + 8) + 40), v45}];
          v13 = [v49 objectForKeyedSubscript:@"KPX"];
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v53 objects:v63 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v54;
            while (2)
            {
              v18 = 0;
              do
              {
                if (*v54 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v53 + 1) + 8 * v18);
                if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
                {
                  v21 = *(*(*(a1 + 48) + 8) + 40);
                  buf.st_dev = 138412546;
                  *&buf.st_mode = v21;
                  WORD2(buf.st_ino) = 2112;
                  *(&buf.st_ino + 6) = v19;
                  _os_log_debug_impl(&dword_1AE4F7000, v5, OS_LOG_TYPE_DEBUG, "checking domain %@ prefix '%@'", &buf, 0x16u);
                }

                if ([*(*(*(a1 + 40) + 8) + 40) hasPrefix:v19])
                {
                  v20 = [v19 length];
                  if (v20 == [*(*(*(a1 + 40) + 8) + 40) length] || objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "characterAtIndex:", objc_msgSend(v19, "length")) == 47)
                  {
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                    {
                      __OSASanitizePath_block_invoke_47_cold_2(a1 + 48);
                    }

                    v29 = [*(*(*(a1 + 40) + 8) + 40) substringFromIndex:{objc_msgSend(v19, "length")}];
                    v30 = *(*(a1 + 40) + 8);
                    v31 = *(v30 + 40);
                    *(v30 + 40) = v29;

                    v28 = v50;
                    if ([*(*(*(a1 + 48) + 8) + 40) isEqualToString:@"StagedVolume"])
                    {
                      v32 = MEMORY[0x1E696AEC0];
                      v62[0] = v19;
                      v62[1] = @"System/Library/CoreServices/SystemVersion.plist";
                      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
                      v34 = [v32 pathWithComponents:v33];

                      if ([v34 length] && (v35 = objc_msgSend(v34, "fileSystemRepresentation")) != 0)
                      {
                        memset(&buf, 0, sizeof(buf));
                        v36 = stat(v35, &buf);
                        v37 = @"MountedVolume";
                        if (!v36)
                        {
                          v37 = @"SystemVolume";
                        }

                        obja = v37;
                        v26 = v37;
                        v25 = v19;
                        v38 = [OSASanitizePath_domainInfos objectForKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
                        v39 = [v38 objectForKeyedSubscript:@"KPX"];
                        [v39 removeObject:v25];
                        v40 = [OSASanitizePath_domainInfos objectForKeyedSubscript:v26];

                        v41 = [v40 objectForKeyedSubscript:@"KPX"];

                        v28 = v50;
                        [v41 addObject:v25];
                        objc_storeStrong((*(*(a1 + 48) + 8) + 40), obja);
                      }

                      else
                      {
                        v25 = 0;
                        v26 = 0;
                      }
                    }

                    else
                    {
                      v25 = 0;
                      v26 = 0;
                    }

                    v2 = v47;
                    goto LABEL_51;
                  }
                }

                ++v18;
              }

              while (v16 != v18);
              v16 = [v14 countByEnumeratingWithState:&v53 objects:v63 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          v4 = v46;
          v2 = v47;
          v7 = 0x1ED7FC000;
          v10 = v50;
        }

        v8 = v8 + 1;
      }

      while (v8 != obj);
      v24 = [v2 countByEnumeratingWithState:&v57 objects:v64 count:16];
      obj = v24;
      v6 = &unk_1E7A28000;
    }

    while (v24);
  }

  v25 = 0;
  v26 = 0;
  v27 = *(*(a1 + 48) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = 0;
LABEL_51:

  v42 = *(*(*(a1 + 48) + 8) + 40);
  if (v42)
  {
    if (v26)
    {
      [v42 isEqualToString:v26];
    }
  }

  else
  {
    if ([*(*(*(a1 + 40) + 8) + 40) hasPrefix:@"/"])
    {
      v43 = @"SystemVolume";
    }

    else
    {
      v43 = @"UnknownType";
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v43);
  }

  v44 = *MEMORY[0x1E69E9840];
}

id OSASanitizePath(void *a1, void *a2)
{
  v92 = *MEMORY[0x1E69E9840];
  v53 = a1;
  v52 = a2;
  if (OSASanitizePath_onceToken != -1)
  {
    OSASanitizePath_cold_1();
  }

  v54 = [MEMORY[0x1E695DFA8] set];
  if ([v53 length])
  {
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__3;
    v79 = __Block_byref_object_dispose__3;
    v80 = v53;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy__3;
    v73 = __Block_byref_object_dispose__3;
    v74 = 0;
    v58 = [v52 objectForKeyedSubscript:@"debug_block"];
    v3 = OSASanitizePath_domain_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __OSASanitizePath_block_invoke_47;
    block[3] = &unk_1E7A274F8;
    v67 = &v75;
    v68 = &v69;
    v47 = v52;
    v66 = v47;
    dispatch_sync(v3, block);
    v49 = [OSASanitizePath_domainInfos objectForKeyedSubscript:v70[5]];
    v51 = [v76[5] lastPathComponent];
    v4 = [v76[5] stringByDeletingLastPathComponent];
    v5 = [v4 componentsSeparatedByString:@"/"];

    v59 = objc_opt_new();
    v50 = [v49 objectForKeyedSubscript:@"MSK"];
    if (v50)
    {
      [v59 addObject:v50];
    }

    if (v58)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v70[5];
      v8 = [v59 componentsJoinedByString:@"/"];
      v9 = [v6 stringWithFormat:@"  domain %@ => [%@]", v7, v8];
      (v58)[2](v58, v9);
    }

    v10 = getRuleForSpecifier(v70[5]);
    v11 = getRules(0);
    v56 = shouldMaskFile(v11, 1);
    v48 = v11;
    v60 = getBundleTypes(v11, 0);
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v42 = [v5 count];
      v43 = [v5 componentsJoinedByString:@"+"];
      v44 = [v59 count];
      v45 = [v59 componentsJoinedByString:@"+"];
      *buf = 67110146;
      v83 = v42;
      v84 = 2112;
      v85 = v43;
      v86 = 1024;
      v87 = v44;
      v88 = 2112;
      v89 = v45;
      v90 = 1024;
      v91 = v56;
      _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "parts %d (%@), new_parts %d (%@) mask %d", buf, 0x28u);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v5;
    v14 = [obj countByEnumeratingWithState:&v61 objects:v81 count:16];
    if (v14)
    {
      v57 = *v62;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v62 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v61 + 1) + 8 * i);
          if ([(__CFString *)v16 length])
          {
            if (v10)
            {
              LOBYTE(v56) = shouldMaskFile(v10, v56 & 1);
              v17 = getBundleTypes(v10, v60);

              v60 = v17;
            }

            v18 = [(__CFString *)v16 pathExtension];
            if ([v18 length] && (objc_msgSend(v60, "objectForKeyedSubscript:", v18), v19 = objc_claimAutoreleasedReturnValue(), (v20 = v19) != 0))
            {
              v21 = getRuleForSpecifier(v19);

              v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bundle(%@)", v18];
              v23 = 0;
            }

            else
            {
              v24 = [v54 containsObject:v16];
              if (v10)
              {
                v25 = v24;
              }

              else
              {
                v25 = 1;
              }

              if (v24)
              {
                v22 = @"keep       ";
              }

              else
              {
                v22 = @"none       ";
              }

              if (v25)
              {
                v21 = 0;
                v23 = v24 ^ 1;
              }

              else
              {
                v21 = getSubruleForSpecifier(v10, v16);
                if (v21)
                {
                  v23 = 0;
                  v22 = @"explicit   ";
                }

                else
                {
                  v21 = getSubruleForSpecifier(v10, @"@mask");
                  if (v21)
                  {
                    v23 = 1;
                    v22 = @"mask       ";
                  }

                  else
                  {
                    v21 = getSubruleForSpecifier(v10, @"@keep");
                    if (v21)
                    {
                      v23 = 0;
                      v22 = @"keep       ";
                    }

                    else
                    {
                      v23 = 1;
                      v22 = @"none       ";
                    }
                  }
                }
              }
            }

            if (v58)
            {
              v26 = MEMORY[0x1E696AEC0];
              v27 = [v59 componentsJoinedByString:@"/"];
              v28 = v27;
              v29 = &stru_1F2411100;
              if (v23)
              {
                v29 = @" -> *";
              }

              v30 = [v26 stringWithFormat:@"    rule <%@> => %@[%@%@]", v22, v27, v16, v29];
              (v58)[2](v58, v30);
            }

            if (v23)
            {
              v31 = @"*";
            }

            else
            {
              v31 = v16;
            }

            [v59 addPart:v31];

            v10 = v21;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v61 objects:v81 count:16];
      }

      while (v14);
    }

    if (![v51 length])
    {
      goto LABEL_55;
    }

    v32 = [v47 objectForKeyedSubscript:OSASanitizeOptionKeepFilename];
    if (v32 && (objc_opt_respondsToSelector() & 1) != 0 && ([v32 BOOLValue] & 1) == 0)
    {
      if (v56)
      {
        v34 = v51;
        v39 = [v34 pathExtension];
        v51 = [@"*" stringByAppendingPathExtension:v39];

        if (!v58)
        {
          goto LABEL_53;
        }

        v40 = MEMORY[0x1E696AEC0];
        v35 = [v59 componentsJoinedByString:@"/"];
        v41 = [v40 stringWithFormat:@"    last <masking    > => %@[%@ -> %@]", v35, v34, v51];
        (v58)[2](v58, v41);
      }

      else
      {
        if (!v58)
        {
          goto LABEL_54;
        }

        v46 = MEMORY[0x1E696AEC0];
        v34 = [v59 componentsJoinedByString:@"/"];
        v35 = [v46 stringWithFormat:@"    last <keeping    > => %@[%@]", v34, v51];
        (v58)[2](v58, v35);
      }
    }

    else
    {
      if (!v58)
      {
LABEL_54:
        [v59 addPart:v51];

LABEL_55:
        v36 = [v59 componentsJoinedByString:@"/"];

        _Block_object_dispose(&v69, 8);
        _Block_object_dispose(&v75, 8);

        goto LABEL_57;
      }

      v33 = MEMORY[0x1E696AEC0];
      v34 = [v59 componentsJoinedByString:@"/"];
      v35 = [v33 stringWithFormat:@"    last <option-keep> => %@[%@]", v34, v51];
      (v58)[2](v58, v35);
    }

LABEL_53:
    goto LABEL_54;
  }

  v36 = 0;
LABEL_57:

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

void sub_1AE4FB824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void *getRuleForSpecifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = 0;
    do
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (v2 > 0x1F)
      {
        break;
      }

      ++v2;
      v3 = getRules(v1);

      v1 = v3;
    }

    while (v3);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

id getRules(void *a1)
{
  v1 = a1;
  if (getRules_onceToken != -1)
  {
    getRules_cold_1();
  }

  if (v1)
  {
    v2 = [getRules_rules objectForKeyedSubscript:v1];
  }

  else
  {
    v2 = getRules_rules;
  }

  v3 = v2;

  return v3;
}

uint64_t shouldMaskFile(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKeyedSubscript:@"@files"];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    a2 = [v3 BOOLValue] ^ 1;
  }

  return a2;
}

void *getBundleTypes(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKeyedSubscript:@"@bundles"];
  if (!v4 || (objc_opt_class(), v5 = v4, (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = v3;
  }

  v6 = v5;

  return v5;
}

uint64_t __xpc2ns_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = xpc2ns(a3);
  [v3 addObject:v4];

  return 1;
}

__CFString *OSACPUTypeToString(uint64_t a1)
{
  v2 = @"X86-64";
  if (a1 <= 16777222)
  {
    if (a1 == 7)
    {
      goto LABEL_11;
    }

    if (a1 == 12)
    {
      v2 = @"ARM";
      goto LABEL_11;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x1000007:
        goto LABEL_11;
      case 0x100000C:
        v2 = @"ARM-64";
        goto LABEL_11;
      case 0x200000C:
        v2 = @"ARM64_32";
        goto LABEL_11;
    }
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%08X", a1];
LABEL_11:

  return v2;
}

void sub_1AE4FCD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t LockdownModeLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!LockdownModeLibraryCore_frameworkLibrary)
  {
    LockdownModeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = LockdownModeLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void logForAppleCare(void *a1, double a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  if ([v3 count])
  {
    initR3();
    v5 = qword_1ED7FCAD8;
    v6 = [v3 objectAtIndexedSubscript:0];
    v7 = openR3(&initR3_r3, [v5 containsObject:v6], a2);

    if ((v7 & 0x80000000) == 0)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = OSADateFormat(0, a2);
      v10 = [v3 componentsJoinedByString:{@", "}];
      v11 = [v8 stringWithFormat:@"%@, %@\n", v9, v10];

      v12 = [v11 dataUsingEncoding:4 allowLossyConversion:1];
      v13 = v12;
      if (v12)
      {
        write(v7, [v12 bytes], objc_msgSend(v12, "length"));
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          logForAppleCare_cold_1(v3);
        }
      }
    }

    close(v7);
  }

  objc_autoreleasePoolPop(v4);
}

void initR3()
{
  initR3_r3 = time(0) / 86400;
  if (initR3_onceToken != -1)
  {
    initR3_cold_1();
  }
}

uint64_t openR3(uint64_t a1, char a2, double a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v5 = 0xFFFFFFFFLL;
  v24 = -1;
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = [v6 stringByAppendingPathComponent:@"general.log"];
    v9 = [v8 fileSystemRepresentation];
    memset(&v20, 0, sizeof(v20));
    v10 = umask(0);
    if (lstat(v9, &v20) < 0)
    {
      if (*__error() == 2)
      {
        R3 = createR3(a1, v9, a3, a3);
        *(v22 + 6) = R3;
      }
    }

    else if ((v20.st_mode & 0xF000) == 0x8000 && v20.st_nlink == 1 && v20.st_uid == *(a1 + 4))
    {
      if (v20.st_uid)
      {
        v11 = 384;
      }

      else
      {
        v11 = 420;
      }

      if ((v20.st_mode & 0xFFF) == v11)
      {
        v12 = dispatch_queue_create("com.apple.osanalytics.AppleCareSupport.open", 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __openR3_block_invoke;
        block[3] = &unk_1E7A27D20;
        block[4] = &v21;
        block[5] = v9;
        v16 = v20;
        v17 = a3;
        v18 = a1;
        v19 = a2;
        dispatch_sync(v12, block);
      }
    }

    umask(v10);

    v5 = *(v22 + 6);
  }

  _Block_object_dispose(&v21, 8);
  return v5;
}

void __openR3_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  *(*(*(v2 - 1) + 8) + 24) = open(*(a1 + 40), 42);
  v3 = *(*(*(v2 - 1) + 8) + 24);
  if (v3 < 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *__error();
      v12 = *v2;
      v13 = __error();
      v14 = strerror(*v13);
      v39.st_dev = 67109634;
      *&v39.st_mode = v11;
      LOWORD(v39.st_ino) = 2080;
      *(&v39.st_ino + 2) = v12;
      HIWORD(v39.st_uid) = 2080;
      *&v39.st_gid = v14;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: ERROR[%d] opening %s, %s", &v39, 0x1Cu);
    }
  }

  else
  {
    memset(&v39, 0, sizeof(v39));
    if (fstat(v3, &v39) && v39.st_nlink == *(a1 + 54) && v39.st_uid == *(a1 + 64) && v39.st_mode == *(a1 + 52) && v39.st_ino == *(a1 + 56) && v39.st_dev == *(a1 + 48))
    {
LABEL_23:
      close(*(*(*(a1 + 32) + 8) + 24));
      *(*(*(a1 + 32) + 8) + 24) = -1;
      goto LABEL_35;
    }

    value[0] = *"<legacy>";
    memset(&value[1], 0, 48);
    v35 = 0;
    v33 = *(a1 + 192);
    v34 = v33;
    v4 = fgetxattr(*(*(*(a1 + 32) + 8) + 24), "Version", value, 0x3FuLL, 0, 0);
    if (v4 >= 1)
    {
      *(value + v4) = 0;
    }

    v5 = *(*(a1 + 200) + 24);
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:value];
    v7 = [v5 isEqualToString:v6];

    fgetxattr(*(*(*(a1 + 32) + 8) + 24), "Day_Seq", &v35, 4uLL, 0, 0);
    fgetxattr(*(*(*(a1 + 32) + 8) + 24), "Install", &v34, 8uLL, 0, 0);
    if (v7)
    {
      fgetxattr(*(*(*(a1 + 32) + 8) + 24), "Upgrade", &v33, 8uLL, 0, 0);
    }

    v8 = **(a1 + 200);
    v10 = v8 < 1 || v35 == v8;
    if (v10 & v7)
    {
      if (*(a1 + 208) == 1 && v39.st_size > 307200)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "AppleCareSupport: WARN: limit exceeded, ignoring event", buf, 2u);
        }

        goto LABEL_23;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        __openR3_block_invoke_cold_1(v2, v25, v26, v27, v28, v29, v30, v31);
      }
    }

    else
    {
      close(*(*(*(a1 + 32) + 8) + 24));
      v15 = *(*(a1 + 200) + 16);
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"general-%d-%s.log", v35, value];
      v17 = [v15 stringByAppendingPathComponent:v16];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v37[0] = v17;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: rolling log -> %@", buf, 0xCu);
      }

      v18 = *v2;
      v19 = [v17 fileSystemRepresentation];
      rename(v18, v19, v20);
      if (v21)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v22 = *__error();
          v23 = __error();
          v24 = strerror(*v23);
          *buf = 67109378;
          LODWORD(v37[0]) = v22;
          WORD2(v37[0]) = 2080;
          *(v37 + 6) = v24;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: ERROR[%d] rename failed, %s", buf, 0x12u);
        }

        unlink(*v2);
      }

      *(*(*(a1 + 32) + 8) + 24) = createR3(*(a1 + 200), *(a1 + 40), v34, v33);
    }
  }

LABEL_35:
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t OSARTCIsProcessOfInterest(void *a1)
{
  v1 = OSARTCIsProcessOfInterest_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    OSARTCIsProcessOfInterest_cold_1();
  }

  v3 = [OSARTCIsProcessOfInterest_processSet containsObject:v2];

  return v3;
}

uint64_t OSAIsFeedbackPromptingEnabled()
{
  v0 = +[OSASystemConfiguration sharedInstance];
  v1 = [v0 appleInternal];

  return v1;
}

id getOSADiagnosticsReporterClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOSADiagnosticsReporterClass_softClass;
  v7 = getOSADiagnosticsReporterClass_softClass;
  if (!getOSADiagnosticsReporterClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getOSADiagnosticsReporterClass_block_invoke;
    v3[3] = &unk_1E7A271B0;
    v3[4] = &v4;
    __getOSADiagnosticsReporterClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE4FDEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t DiagnosticsReporterServicesLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!DiagnosticsReporterServicesLibraryCore_frameworkLibrary)
  {
    DiagnosticsReporterServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = DiagnosticsReporterServicesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IPSReport.__allocating_init(reportPath:)(uint64_t a1)
{
  v3 = sub_1AE53FA64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = sub_1AE53FA84();
  v8 = v7;
  v9 = sub_1AE4FE444();
  if (v10 >> 60 == 15)
  {
    sub_1AE4FE710(v6, v8);
  }

  else
  {
    v13 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    sub_1AE4FE6BC(v9, v10);
    sub_1AE4FE6BC(v15, v16);
    sub_1AE4FE710(v15, v16);
    sub_1AE4FE6BC(v13, v14);
    sub_1AE4FE6BC(v15, v16);
    sub_1AE4FE710(v13, v14);
    v17 = (*(v1 + 208))(v13, v14, v15, v16);

    sub_1AE4FF090(v13, v14, v15, v16);
    sub_1AE4FE710(v6, v8);
    if (v17)
    {

      (*(v4 + 8))(a1, v3);
      return v17;
    }
  }

  (*(v4 + 8))(a1, v3);
  return 0;
}

uint64_t sub_1AE4FE444()
{
  sub_1AE4FE614();
  sub_1AE4FE668();
  v0 = sub_1AE53FBC4();
  v1 = v0;
  if (v0[2] == 2)
  {
    v2 = v0[4];
    v3 = v0[6];
    v4 = v0[7];
    sub_1AE4FE6BC(v2, v0[5]);
    sub_1AE4FE6BC(v3, v4);
  }

  else
  {
    if (qword_1EB5DFB08 != -1)
    {
      swift_once();
    }

    v5 = sub_1AE53FB14();
    __swift_project_value_buffer(v5, qword_1EB5DFB10);

    v6 = sub_1AE53FAF4();
    v7 = sub_1AE53FBD4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = v1[2];

      *(v8 + 4) = v9;

      _os_log_impl(&dword_1AE4F7000, v6, v7, "Report data has unexpected number of elements: %ld", v8, 0xCu);
      MEMORY[0x1B2703850](v8, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    return 0;
  }

  return v2;
}

unint64_t sub_1AE4FE614()
{
  result = qword_1EB5DF990;
  if (!qword_1EB5DF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DF990);
  }

  return result;
}

unint64_t sub_1AE4FE668()
{
  result = qword_1EB5DF988;
  if (!qword_1EB5DF988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5DF988);
  }

  return result;
}

uint64_t sub_1AE4FE6BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1AE4FE710(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void *IPSReport.init(header:body:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  *(v4 + 40) = xmmword_1AE543570;
  v10 = _s11OSAnalytics9IPSReportC10dataToJsonySDySSypGSg10Foundation4DataVFZ_0(a1, a2);
  if (!v10)
  {
    if (qword_1EB5DFB08 != -1)
    {
      swift_once();
    }

    v21 = sub_1AE53FB14();
    __swift_project_value_buffer(v21, qword_1EB5DFB10);
    v17 = sub_1AE53FAF4();
    v18 = sub_1AE53FBD4();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Failed to convert to header to json";
    goto LABEL_14;
  }

  v11 = v10;
  if (!*(v10 + 16) || (v12 = sub_1AE4FED8C(0x657079745F677562, 0xE800000000000000), (v13 & 1) == 0) || (sub_1AE4FEE04(*(v11 + 56) + 32 * v12, v25), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1EB5DFB08 != -1)
    {
      swift_once();
    }

    v16 = sub_1AE53FB14();
    __swift_project_value_buffer(v16, qword_1EB5DFB10);
    v17 = sub_1AE53FAF4();
    v18 = sub_1AE53FBD4();
    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = "Error: bug_type key not found in report header";
LABEL_14:
    _os_log_impl(&dword_1AE4F7000, v17, v18, v20, v19, 2u);
    MEMORY[0x1B2703850](v19, -1, -1);
LABEL_15:
    sub_1AE4FE710(a3, a4);
    sub_1AE4FE710(a1, a2);

    sub_1AE4FF07C(v5[5], v5[6]);
    type metadata accessor for IPSReport();
    swift_deallocPartialClassInstance();
    return 0;
  }

  swift_beginAccess();
  v14 = v5[5];
  v15 = v5[6];
  v5[5] = a3;
  v5[6] = a4;
  sub_1AE4FE6BC(a3, a4);
  sub_1AE4FF07C(v14, v15);
  v5[3] = v23;
  v5[4] = v24;
  v5[2] = v11;
  sub_1AE4FE6BC(a1, a2);
  sub_1AE4FEF18(a1, a2);
  sub_1AE4FE710(a3, a4);
  sub_1AE4FE710(a1, a2);
  return v5;
}

uint64_t _s11OSAnalytics9IPSReportC10dataToJsonySDySSypGSg10Foundation4DataVFZ_0(uint64_t a1, unint64_t a2)
{
  v25[4] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_self();
  v5 = sub_1AE53FAD4();
  v25[0] = 0;
  v6 = [v4 JSONObjectWithData:v5 options:0 error:v25];

  if (v6)
  {
    v7 = v25[0];
    sub_1AE53FBE4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DFB38, &qword_1AE543608);
    if (swift_dynamicCast())
    {
      result = v24;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    v9 = v25[0];
    v10 = sub_1AE53FA44();

    swift_willThrow();
    if (qword_1EB5DFB08 != -1)
    {
      swift_once();
    }

    v11 = sub_1AE53FB14();
    __swift_project_value_buffer(v11, qword_1EB5DFB10);
    v12 = v10;
    sub_1AE4FE6BC(a1, a2);
    v13 = sub_1AE53FAF4();
    v14 = sub_1AE53FBD4();

    sub_1AE4FE710(a1, a2);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136315394;
      swift_getErrorValue();
      v17 = sub_1AE53FC34();
      v19 = sub_1AE539810(v17, v18, v25);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v20 = sub_1AE53FA94();
      v22 = sub_1AE539810(v20, v21, v25);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_1AE4F7000, v13, v14, "JSON ERROR: %s, payload:\n%s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2703850](v16, -1, -1);
      MEMORY[0x1B2703850](v15, -1, -1);
    }

    else
    {
    }

    result = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1AE4FED8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1AE53FC54();
  sub_1AE53FB54();
  v6 = sub_1AE53FC64();

  return sub_1AE4FEE60(a1, a2, v6);
}

uint64_t sub_1AE4FEE04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1AE4FEE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1AE53FC24())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1AE4FEF18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15 || (v5 = _s11OSAnalytics9IPSReportC10dataToJsonySDySSypGSg10Foundation4DataVFZ_0(a1, a2)) == 0)
  {
    if (qword_1EB5DFB08 != -1)
    {
      swift_once();
    }

    v8 = sub_1AE53FB14();
    __swift_project_value_buffer(v8, qword_1EB5DFB10);
    oslog = sub_1AE53FAF4();
    v9 = sub_1AE53FBD4();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1AE4F7000, oslog, v9, "Failed to update header as the provided data is not valid JSON", v10, 2u);
      MEMORY[0x1B2703850](v10, -1, -1);
    }

    sub_1AE4FF07C(a1, a2);
  }

  else
  {
    v6 = v5;
    sub_1AE4FF07C(a1, a2);
    swift_beginAccess();
    v7 = *(v2 + 16);
    *(v2 + 16) = v6;
  }
}

uint64_t sub_1AE4FF07C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AE4FE710(a1, a2);
  }

  return a1;
}

uint64_t sub_1AE4FF090(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1AE4FE710(result, a2);

    return sub_1AE4FE710(a3, a4);
  }

  return result;
}

uint64_t sub_1AE4FF104()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_1AE4FF13C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AE4FE6BC(a1, a2);
  }

  return a1;
}

uint64_t sub_1AE4FF150()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_1AE4FF13C(v1, *(v0 + 48));
  return v1;
}

uint64_t IPSReport.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_1AE4FF07C(v0[5], v0[6]);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

__CFString *OSANSDateFormat(unsigned int a1, void *a2)
{
  [a2 timeIntervalSinceReferenceDate];

  return OSADateFormat(a1, v3);
}

void sub_1AE4FF3D0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1AE4FF13C(*a1, v3);
  sub_1AE4FEF18(v2, v3);
}

uint64_t sub_1AE4FF414@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1AE4FF464@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1AE4FF4B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = v4;
  a2[1] = v5;
  return sub_1AE4FF13C(v4, v5);
}

BOOL SimulateCrash(int a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = getpid();
  if (v5 == a1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      SimulateCrash_cold_2(v4);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    SimulateCrash_cold_1();
  }

  return v5 == a1;
}

BOOL _WriteStackshotReport(void *a1, uint64_t a2, int a3, int a4, unsigned int a5, void *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a6;
  v13 = getprogname();
  if ([v11 length])
  {
    v14 = objc_autoreleasePoolPush();
    v15 = OSAnalyticsHelperServiceConnection();
    if (v15)
    {
      v34 = v14;
      *buf = 0u;
      v41 = 0u;
      if (!v13)
      {
        v16 = getpid();
        v13 = buf;
        __sprintf_chk(buf, 0, 0x20uLL, "%d", v16);
      }

      v17 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v17, "operation", 2uLL);
      xpc_dictionary_set_string(v17, "caller", v13);
      if (v11)
      {
        v18 = [v11 UTF8String];
      }

      else
      {
        v18 = "(none)";
      }

      xpc_dictionary_set_string(v17, "reason", v18);
      xpc_dictionary_set_uint64(v17, "exception_code", a2);
      xpc_dictionary_set_uint64(v17, "PID", a4);
      xpc_dictionary_set_uint64(v17, "flags", a5);
      if (v12)
      {
        v32 = a3;
        v20 = xpc_dictionary_create(0, 0, 0);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v33 = v12;
        v21 = v12;
        v22 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v36;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v35 + 1) + 8 * i);
              v27 = [v26 UTF8String];
              v28 = [v21 objectForKeyedSubscript:v26];
              xpc_dictionary_set_string(v20, v27, [v28 UTF8String]);
            }

            v23 = [v21 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v23);
        }

        xpc_dictionary_set_value(v17, "additional_payload", v20);
        v12 = v33;
        a3 = v32;
      }

      if (a3)
      {
        xpc_connection_send_message(v15, v17);
        v19 = 1;
      }

      else
      {
        v29 = xpc_connection_send_message_with_reply_sync(v15, v17);
        v19 = xpc_dictionary_get_BOOL(v29, "result");
      }

      v14 = v34;
    }

    else
    {
      v19 = 0;
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v19 = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Stackshot requires reason; ignoring request", buf, 2u);
      v19 = 0;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v19;
}

BOOL WriteStackshotReport_stdc(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v6 = _WriteStackshotReport(v5, a2, 0, 0, 0, 0);

  objc_autoreleasePoolPop(v4);
  return v6;
}

BOOL _WriteCrashReportWithStackshot(int a1, unsigned int *a2, void *a3, void *a4, int a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  v12 = OSAnalyticsHelperServiceConnection();
  if (v12)
  {
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v13, "operation", 3uLL);
    xpc_dictionary_set_uint64(v13, "PID", a1);
    xpc_dictionary_set_uint64(v13, "ers_namespace", *a2);
    xpc_dictionary_set_uint64(v13, "ers_code", *(a2 + 1));
    xpc_dictionary_set_uint64(v13, "ers_flags", *(a2 + 3));
    if (v9)
    {
      v14 = [v9 UTF8String];
    }

    else
    {
      v14 = "(none)";
    }

    xpc_dictionary_set_string(v13, "reason", v14);
    if (v10)
    {
      v28 = a5;
      v29 = v11;
      v16 = xpc_dictionary_create(0, 0, 0);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v30 = v10;
      v17 = v10;
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v31 + 1) + 8 * i);
            v23 = [v22 UTF8String];
            v24 = [v17 objectForKeyedSubscript:v22];
            xpc_dictionary_set_string(v16, v23, [v24 UTF8String]);
          }

          v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v19);
      }

      xpc_dictionary_set_value(v13, "additional_payload", v16);
      v11 = v29;
      v10 = v30;
      a5 = v28;
    }

    if (a5)
    {
      xpc_connection_send_message(v12, v13);
      v15 = 1;
    }

    else
    {
      v25 = xpc_connection_send_message_with_reply_sync(v12, v13);
      v15 = xpc_dictionary_get_BOOL(v25, "result");
    }
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v11);
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

BOOL WriteSystemMemoryResetReportWithPids(const char *a1, uint64_t a2, uint64_t a3, int *a4, int a5)
{
  v9 = objc_autoreleasePoolPush();
  v10 = OSAnalyticsHelperServiceConnection();
  if (v10)
  {
    v11 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v11, "operation", 4uLL);
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = "";
    }

    xpc_dictionary_set_string(v11, "reason", v12);
    xpc_dictionary_set_uint64(v11, "event_code", a2);
    if (a4 && a5)
    {
      v13 = xpc_array_create(0, 0);
      if (a5 >= 1)
      {
        v14 = a5;
        do
        {
          v15 = *a4++;
          v16 = xpc_int64_create(v15);
          xpc_array_append_value(v13, v16);

          --v14;
        }

        while (v14);
      }

      xpc_dictionary_set_value(v11, "pids", v13);
    }

    v17 = xpc_connection_send_message_with_reply_sync(v10, v11);
    v18 = xpc_dictionary_get_BOOL(v17, "result");
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(v9);
  return v18;
}

uint64_t includeSection(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKeyedSubscript:a2];
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v5 = [v3 BOOLValue];
  }

  return v5;
}

uint64_t excludeSection(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKeyedSubscript:a2];
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v5 = [v3 BOOLValue] ^ 1;
  }

  return v5;
}

uint64_t kcdata_iter_size(uint64_t a1)
{
  v1 = *a1;
  if ((*a1 & 0xFFFFFFF0) == 0x20)
  {
    v1 = 17;
  }

  if (v1 <= 2309)
  {
    if (v1 == 17 || v1 == 19)
    {
      return *(a1 + 4);
    }

LABEL_15:
    v4 = *(a1 + 4);
    goto LABEL_19;
  }

  if (v1 != 2310)
  {
    if (v1 == 2312)
    {
      v4 = *(a1 + 4);
      if (v4 == 32)
      {
        if ((*(a1 + 8) & 0x8F) == 0)
        {
          return 24;
        }

        v4 = 32;
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v4 = *(a1 + 4);
  if (v4 == 112)
  {
    if ((*(a1 + 8) & 0x8F) == 0)
    {
      return 104;
    }

    v4 = 112;
  }

LABEL_19:
  v5 = v4 >= (*(a1 + 8) & 0xFu);
  v6 = v4 - (*(a1 + 8) & 0xF);
  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

__CFString *DecodeQOS(unsigned int a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"QOS_CLASS_UNKNOWN (%u)", a1];
  }

  else
  {
    v2 = off_1E7A27118[a1];
  }

  return v2;
}

id DecodeThreadFlags(unint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E7A26F08, sizeof(__dst));
  v11 = xmmword_1E7A27108;
  v4 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 32; ++i)
  {
    if (((1 << i) & a1) != 0)
    {
      if (*&__dst[256 * a2 + 8 * i])
      {
        [v4 addObject:?];
      }

      else
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_0x%04X", *&__dst[8 * a2 - 16], (1 << i)];
        [v4 addObject:v6];
      }
    }
  }

  for (j = 8; j != -8; j -= 8)
  {
  }

  for (k = 504; k != -8; k -= 8)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1AE507D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __DiagnosticsReporterServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DiagnosticsReporterServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __getOSADiagnosticsReporterClass_block_invoke(uint64_t a1)
{
  DiagnosticsReporterServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("OSADiagnosticsReporter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOSADiagnosticsReporterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getOSADiagnosticsReporterClass_block_invoke_cold_1();
    DiagnosticsReporterServicesLibrary();
  }
}

void DiagnosticsReporterServicesLibrary()
{
  if (!DiagnosticsReporterServicesLibraryCore())
  {
    v0 = abort_report_np();
    free(v0);
  }
}

Class __getDiagnosticsReporterLaunchOptionsClass_block_invoke(uint64_t a1)
{
  DiagnosticsReporterServicesLibrary();
  result = objc_getClass("DiagnosticsReporterLaunchOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDiagnosticsReporterLaunchOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getDiagnosticsReporterLaunchOptionsClass_block_invoke_cold_1();
    return [(OSATasking *)v3 proxyTasking:v4 taskId:v5 usingConfig:v6 fromBlob:v7, v8];
  }

  return result;
}

id selectConfigFromBlob(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:a1 options:0 format:0 error:&v46];
  v4 = v46;
  v5 = v4;
  if (!v3)
  {
    v7 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v8 = MEMORY[0x1E696AEC0];
    v6 = [v4 domain];
    v9 = [v8 stringWithFormat:@"blob failed to unserialize (error %@:%ld)", v6, objc_msgSend(v5, "code")];
    v52 = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
    v11 = [v7 errorWithDomain:@"OSATasking" code:3 userInfo:v10];

    v5 = v10;
    goto LABEL_36;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v3 objectForKeyedSubscript:@"PayloadContent"];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A578];
    v54 = @"blob missing payload";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v11 = [v26 errorWithDomain:@"OSATasking" code:2 userInfo:v9];
    goto LABEL_36;
  }

  v12 = [v3 objectForKeyedSubscript:@"PayloadType"];
  v13 = [v12 isEqualToString:@"TaskingConfigurations"];

  if (!v13)
  {
    v27 = v6;
    goto LABEL_33;
  }

  v39 = v5;
  v14 = +[OSASystemConfiguration sharedInstance];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v38 = v6;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v42 objects:v57 count:16];
  if (!v16)
  {
    v27 = 0;
    goto LABEL_30;
  }

  v17 = v16;
  v36 = v3;
  v37 = a2;
  v18 = *v43;
  v40 = v15;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v43 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v42 + 1) + 8 * i);
      v21 = [v14 uiCountryCode];
      if (!matchSelector(@"Country", v21, v20))
      {
        goto LABEL_22;
      }

      v22 = [v14 buildVersion];
      if (!matchSelector(@"OS Version", v22, v20))
      {
        goto LABEL_21;
      }

      v23 = [v14 modelCode];
      if (!matchSelector(@"Product", v23, v20))
      {
        goto LABEL_20;
      }

      v24 = [v14 releaseType];
      if (!matchSelector(@"ReleaseType", v24, v20))
      {

LABEL_20:
LABEL_21:

LABEL_22:
        continue;
      }

      v25 = [v14 productVersion];
      matched = matchSelector(@"ProductVersion", v25, v20);

      v15 = v40;
      if (matched)
      {
        v27 = [v20 objectForKey:@"ConfigurationContent"];
        goto LABEL_28;
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v42 objects:v57 count:16];
  }

  while (v17);
  v27 = 0;
LABEL_28:
  v3 = v36;
  a2 = v37;
LABEL_30:

  v6 = v38;
  v5 = v39;
  if (![v27 count])
  {
    v28 = MEMORY[0x1E696ABC0];
    v55 = *MEMORY[0x1E696A578];
    v56 = @"no matching configs";
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v30 = [v28 errorWithDomain:@"OSATasking" code:1 userInfo:v29];

    v5 = v30;
  }

LABEL_33:
  if (v27 && (isConfigValid(v27) & 1) == 0)
  {
    v31 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v50 = @"content invalid";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v11 = [v31 errorWithDomain:@"OSATasking" code:4 userInfo:v9];
    v6 = v27;
LABEL_36:

    v27 = 0;
    v5 = v11;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v5 localizedDescription];
      *buf = 138412290;
      v48 = v32;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Tasking selection error: %@", buf, 0xCu);
    }

    if (a2)
    {
      v33 = v5;
      *a2 = v5;
    }
  }

  v34 = *MEMORY[0x1E69E9840];

  return v27;
}

uint64_t installAwdTasking(void *a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v44 = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v53 objects:v66 count:16];
    if (v6)
    {
      v7 = v6;
      v36 = v4;
      v37 = v3;
      v8 = *v54;
      v41 = 1;
      v38 = *v54;
      v39 = v5;
LABEL_4:
      v9 = 0;
      v40 = v7;
      while (1)
      {
        v10 = v8;
        if (*v54 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = v5;
        v45 = v9;
        v12 = *(*(&v53 + 1) + 8 * v9);
        v13 = [v12 objectForKey:{@"User", v36, v37}];
        v14 = [v12 objectForKey:@"Key"];
        v15 = [v12 objectForKey:@"Domain"];
        v16 = [v12 objectForKey:@"Value"];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v59 = v13;
          v60 = 2112;
          v61 = v15;
          v62 = 2112;
          v63 = v14;
          v64 = 2112;
          v65 = v16;
          _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "writing %@@%@:%@=%@", buf, 0x2Au);
        }

        v17 = [MEMORY[0x1E69B7BD8] sharedClient];
        v18 = v13;
        v19 = v17;
        v47 = v14;
        v48 = v18;
        v46 = [v17 setPreference:v14 forUser:? inDomain:? toValue:?];
        if (v46)
        {
          [v44 addObject:v12];
          v5 = v11;
          v8 = v10;
        }

        else
        {
          v42 = v16;
          v43 = v15;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v20 = v44;
          v21 = [v20 countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v50;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v50 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v49 + 1) + 8 * i);
                v26 = [v25 objectForKey:@"Key"];
                v27 = [v25 objectForKey:@"User"];
                v28 = [v25 objectForKey:@"Domain"];
                [v19 deletePreference:v26 forUser:v27 inDomain:v28];
              }

              v22 = [v20 countByEnumeratingWithState:&v49 objects:v57 count:16];
            }

            while (v22);
          }

          v41 = 0;
          v8 = v38;
          v5 = v39;
          v7 = v40;
          v16 = v42;
          v15 = v43;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Applying awd task failed", buf, 2u);
            v41 = 0;
          }
        }

        if (!v46)
        {
          break;
        }

        v9 = v45 + 1;
        if (v45 + 1 == v7)
        {
          v7 = [v5 countByEnumeratingWithState:&v53 objects:v66 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }

      v4 = v36;
      v3 = v37;
      if ((v41 & 1) == 0)
      {
        v29 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    else
    {
    }

    v30 = [v44 writeToFile:v4 atomically:1];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (v30)
    {
      if (v31)
      {
        *buf = 138412290;
        v59 = v4;
        v32 = MEMORY[0x1E69E9C10];
        v33 = "awd task successfully applied and saved as %@";
LABEL_32:
        _os_log_impl(&dword_1AE4F7000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
      }
    }

    else if (v31)
    {
      *buf = 138412290;
      v59 = v4;
      v32 = MEMORY[0x1E69E9C10];
      v33 = "Could not write task blob to file: %@";
      goto LABEL_32;
    }

    v29 = 1;
    goto LABEL_34;
  }

  v29 = 1;
LABEL_35:

  v34 = *MEMORY[0x1E69E9840];
  return v29;
}

BOOL matchSelector(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5 != 0;
  v7 = [a3 objectForKey:a1];
  v8 = v7;
  if (v5 && v7)
  {
    v9 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v7 options:0 error:0];
    if (v9)
    {
      v10 = [v9 numberOfMatchesInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
      v6 = v10 != 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        matchSelector_cold_1(v10 != 0, v5, v8);
      }
    }

    else
    {
      v6 = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid regex '%@'", &v13, 0xCu);
        v6 = 0;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t isConfigValid(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v27 count:16];
  if (!v2)
  {
    v12 = 1;
    goto LABEL_33;
  }

  v3 = v2;
  v4 = *v16;
  v5 = MEMORY[0x1E69E9C10];
  while (2)
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v16 != v4)
      {
        objc_enumerationMutation(v1);
      }

      v7 = *(*(&v15 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid PayloadContent entry - expected dictionary", buf, 2u);
        }

        goto LABEL_32;
      }

      v8 = [v7 objectForKey:@"User"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 length])
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Missing or invalid 'User' key", buf, 2u);
        }

        goto LABEL_31;
      }

      v9 = [v7 objectForKey:@"Domain"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v9 length])
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Missing or invalid 'Domain' key", buf, 2u);
        }

        goto LABEL_30;
      }

      v10 = [v7 objectForKey:@"Key"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![v10 length])
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v20 = v8;
          v21 = 2112;
          v22 = v9;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Missing or invalid 'Key' key for %@ / %@", buf, 0x16u);
        }

LABEL_30:
LABEL_31:

LABEL_32:
        v12 = 0;
        goto LABEL_33;
      }

      v11 = [v7 objectForKey:@"Value"];
      if (v11)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138413058;
          v20 = v8;
          v21 = 2112;
          v22 = v9;
          v23 = 2112;
          v24 = v10;
          v25 = 2112;
          v26 = v11;
          _os_log_debug_impl(&dword_1AE4F7000, v5, OS_LOG_TYPE_DEBUG, "validated %@@%@:%@=%@", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v20 = v8;
        v21 = 2112;
        v22 = v9;
        v23 = 2112;
        v24 = v10;
        _os_log_impl(&dword_1AE4F7000, v5, OS_LOG_TYPE_DEFAULT, "Missing 'Value' key for %@ / %@ / %@", buf, 0x20u);
      }

      if (!v11)
      {
        goto LABEL_32;
      }
    }

    v3 = [v1 countByEnumeratingWithState:&v15 objects:v27 count:16];
    v12 = 1;
    if (v3)
    {
      continue;
    }

    break;
  }

LABEL_33:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1AE50B21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE50B408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE50B6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE50CA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *processName()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 20);
  v7[0] = *(v0 + 4);
  v7[1] = v1;
  v8 = *(v0 + 36);
  v9 = 0;
  if (LOBYTE(v7[0]))
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
  }

  else
  {
    v2 = @"unknown";
  }

  v3 = @"(unprintable)";
  if (v2)
  {
    v3 = v2;
  }

  v4 = v3;

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

__CFString *killDescription(unint64_t a1)
{
  if (a1 >= 0x12)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown-%llu)", a1];
  }

  else
  {
    v2 = off_1E7A27308[a1];
  }

  return v2;
}

__CFString *freezeSkipReason(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return @"(unknown-reason)";
  }

  else
  {
    return off_1E7A27398[a1];
  }
}

void sub_1AE51329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose((v9 - 120), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getACAccountTypeIdentifierExchange()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getACAccountTypeIdentifierExchangeSymbolLoc_ptr;
  v8 = getACAccountTypeIdentifierExchangeSymbolLoc_ptr;
  if (!getACAccountTypeIdentifierExchangeSymbolLoc_ptr)
  {
    v1 = AccountsLibrary();
    v6[3] = dlsym(v1, "ACAccountTypeIdentifierExchange");
    getACAccountTypeIdentifierExchangeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    ACAccountTypeIdentifierExchange_cold_1 = getACAccountTypeIdentifierExchange_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(ACAccountTypeIdentifierExchange_cold_1);
  }

  v2 = *v0;

  return v2;
}

void sub_1AE51545C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AccountsLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!AccountsLibraryCore_frameworkLibrary)
  {
    AccountsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = AccountsLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccountsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccountsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getACAccountStoreClass_block_invoke(uint64_t a1)
{
  AccountsLibrary();
  result = objc_getClass("ACAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getACAccountStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getACAccountStoreClass_block_invoke_cold_1();
    return AccountsLibrary();
  }

  return result;
}

uint64_t AccountsLibrary()
{
  v0 = AccountsLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getACAccountTypeIdentifierIMAPSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccountsLibrary();
  result = dlsym(v2, "ACAccountTypeIdentifierIMAP");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACAccountTypeIdentifierIMAPSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getACAccountTypeIdentifierExchangeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccountsLibrary();
  result = dlsym(v2, "ACAccountTypeIdentifierExchange");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACAccountTypeIdentifierExchangeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t DataAccessLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!DataAccessLibraryCore_frameworkLibrary)
  {
    DataAccessLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = DataAccessLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DataAccessLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DataAccessLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getkDAAccountEmailAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataAccessLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "kDAAccountEmailAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDAAccountEmailAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getACEmailAliasKeyEmailAddressesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccountsLibrary();
  result = dlsym(v2, "ACEmailAliasKeyEmailAddresses");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACEmailAliasKeyEmailAddressesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t OSAIsConfiguredRSDHost()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 addSuiteNamed:@"com.apple.osanalytics.factoryproxysync"];
  v1 = +[OSASystemConfiguration sharedInstance];
  if (([v1 appleInternal] & 1) != 0 || objc_msgSend(v1, "factoryDevice"))
  {
    v2 = [v0 BOOLForKey:@"configureProxyHost"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

uint64_t OSASyncCrashReporter(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 addObject:@"com.apple.ReportCrash"];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v33;
    v9 = MEMORY[0x1E69E99F8];
    v10 = MEMORY[0x1E69E9C10];
    v29 = a2;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [v12 UTF8String];
        sp = 0;
        if (bootstrap_look_up(*v9, v13, &sp))
        {
          v14 = 1;
        }

        else
        {
          v14 = sp - 1 > 0xFFFFFFFD;
        }

        if (v14)
        {
          v18 = MEMORY[0x1E696ABC0];
          v36 = *MEMORY[0x1E696A578];
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to lookup port for %@", v12];
          v37 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
          v21 = v18;
          v22 = 1;
LABEL_21:
          v17 = [v21 errorWithDomain:@"OSASyncCrashReporter" code:v22 userInfo:v20];

          a2 = v29;
          goto LABEL_22;
        }

        v30 = 0;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v12;
          _os_log_impl(&dword_1AE4F7000, v10, OS_LOG_TYPE_DEFAULT, "sending sync request to %@", buf, 0xCu);
        }

        v15 = rc_sync_request(sp, 1, 0, &v30);
        if (v15)
        {
          v23 = MEMORY[0x1E696ABC0];
          v38 = *MEMORY[0x1E696A578];
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sync request failed (mach ipc: %s)", mach_error_string(v15)];
          v39 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          v21 = v23;
          v22 = 2;
          goto LABEL_21;
        }

        v16 = v30;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v41 = v30;
          _os_log_impl(&dword_1AE4F7000, v10, OS_LOG_TYPE_DEFAULT, "synced after %lld total events", buf, 0xCu);
        }

        v7 += v16;
      }

      v6 = [v4 countByEnumeratingWithState:&v32 objects:v42 count:16];
      v17 = 0;
      a2 = v29;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
    v7 = 0;
  }

LABEL_22:

  if (a2)
  {
    v24 = v17;
    *a2 = v17;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v17 localizedDescription];
      *buf = 138412290;
      v41 = v25;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "unable to lookup port for %@", buf, 0xCu);
    }
  }

  if (v17)
  {
    v26 = 0xFFFFFFFFLL;
  }

  else
  {
    v26 = v7;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

void __OSASanitizePath_block_invoke()
{
  v26[2] = *MEMORY[0x1E69E9840];
  v0 = dispatch_queue_create("com.apple.osanalytics.sanitizer", 0);
  v1 = OSASanitizePath_domain_queue;
  OSASanitizePath_domain_queue = v0;

  v2 = objc_opt_new();
  v25[0] = @"KPX";
  v3 = objc_opt_new();
  [v3 addObject:@"/var/mobile"];
  [v3 sortUsingComparator:&__block_literal_global_104];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __OSASanitizePath_block_invoke_cold_1(v3);
  }

  v25[1] = @"MSK";
  v26[0] = v3;
  v26[1] = @"/Users/USER";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [v2 setObject:v4 forKeyedSubscript:@"HomeDirectory"];

  v23[0] = @"KPX";
  v5 = getVolumes(0);
  v23[1] = @"MSK";
  v24[0] = v5;
  v24[1] = @"/Volumes/NETWORK";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v2 setObject:v6 forKeyedSubscript:@"NetworkVolume"];

  v21[0] = @"KPX";
  v7 = objc_opt_new();
  v21[1] = @"MSK";
  v22[0] = v7;
  v22[1] = &stru_1F2411100;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v2 setObject:v8 forKeyedSubscript:@"SystemVolume"];

  v19[0] = @"KPX";
  v9 = objc_opt_new();
  v19[1] = @"MSK";
  v20[0] = v9;
  v20[1] = @"/Volumes/VOLUME";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v2 setObject:v10 forKeyedSubscript:@"MountedVolume"];

  v17 = @"KPX";
  v11 = getVolumes(1);
  v18 = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v2 setObject:v12 forKeyedSubscript:@"StagedVolume"];

  v13 = OSASanitizePath_domainInfos;
  OSASanitizePath_domainInfos = v2;
  v14 = v2;

  v15 = OSASanitizePath_orderedDomainList;
  OSASanitizePath_orderedDomainList = &unk_1F241F1E8;

  v16 = *MEMORY[0x1E69E9840];
}

id getVolumes(uint64_t a1)
{
  v2 = objc_opt_new();
  v9 = 0;
  v3 = getmntinfo(&v9, 2);
  if (v3 >= 1)
  {
    v4 = v3;
    v5 = 1112;
    do
    {
      if (((*(v9 + v5 - 1047) & 0x10) == 0) != a1)
      {
        v6 = *(&v9->f_bsize + v5);
        *(&v9->f_bsize + v5) = 0;
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9 + v5 - 1024];
        *(&v9->f_bsize + v5) = v6;
        if ([v7 length] >= 2)
        {
          [v2 addObject:v7];
        }
      }

      v5 += 2168;
      --v4;
    }

    while (v4);
  }

  [v2 sortUsingComparator:&__block_literal_global_109];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    getVolumes_cold_1(a1, v2);
  }

  return v2;
}

id getSubruleForSpecifier(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
  v3 = v2;
  if (v2)
  {
    v4 = getRuleForSpecifier(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __getLocalHomeDirectories_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 length];
  if (v6 <= [v5 length])
  {
    v8 = [v4 length];
    v7 = v8 != [v5 length];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

uint64_t __getVolumes_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 length];
  if (v6 <= [v5 length])
  {
    v8 = [v4 length];
    v7 = v8 != [v5 length];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __getRules_block_invoke()
{
  v0 = getRules_rules;
  getRules_rules = &unk_1F241F0A8;
}

void sub_1AE51B544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

void sub_1AE51D554(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1AE51D70CLL);
}

void sub_1AE51D55C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v10 = objc_begin_catch(exc_buf);
      v11 = [v10 name];
      v12 = [v11 isEqualToString:*MEMORY[0x1E696A340]];

      if ((v12 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(a9) = 138412290;
          *(&a9 + 4) = v10;
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "C4.! payload writer exception: %@", &a9, 0xCu);
        }

        objc_exception_rethrow();
      }

      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v10 reason];
        LODWORD(a9) = 138543362;
        *(&a9 + 4) = v15;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Error while writing file: %{public}@", &a9, 0xCu);
      }

      v16 = [v10 reason];
      v17 = v16;
      xpc_dictionary_set_string(v9, "error_desc", [v16 UTF8String]);

      xpc_dictionary_set_string(v9, "error_domain", "OSALog");
      xpc_dictionary_set_uint64(v9, "error_code", 0xAuLL);

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(exc_buf);
    }

    JUMPOUT(0x1AE51D3E4);
  }

  _Unwind_Resume(exc_buf);
}

void sub_1AE51D6E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1AE51D6F4);
  }

  _Unwind_Resume(a1);
}

void osa_scanDir(const char *a1, uint64_t a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v9 = opendir(a1);
  if (v9)
  {
    v10 = v9;
    v11 = readdir(v9);
    if (v11)
    {
      v12 = v11;
      do
      {
        v13 = objc_autoreleasePoolPush();
        d_name = v12->d_name;
        if (v12->d_name[0] != 46 || (a2 & 4) == 0 && v12->d_type == 8)
        {
          bzero(__str, 0x400uLL);
          snprintf(__str, 0x400uLL, "%s/%s", a1, v12->d_name);
          d_type = v12->d_type;
          if (d_type == 4)
          {
            if ((a2 & 1) == 0 && (!v8 || v8[2](v8, a1, v12->d_name)))
            {
              osa_scanDir(__str, a2, v7, v8);
            }

            goto LABEL_21;
          }

          if (d_type == 8)
          {
            if ((a2 & 0xC0) != 0)
            {
              v16 = [v21 lastPathComponent];
              v17 = ((a2 & 0x80) == 0) ^ [v16 isEqualToString:@"Retired"];

              if ((a2 & 0x200) == 0 || (v17 & 1) == 0)
              {
                if (!v17)
                {
                  goto LABEL_21;
                }

LABEL_20:
                (v7)[2](v7, a1, d_name);
                goto LABEL_21;
              }
            }

            else if ((a2 & 0x200) == 0)
            {
              goto LABEL_20;
            }

            if (getxattr(__str, [@"urgent" UTF8String], 0, 0, 0, 0) > 0)
            {
              goto LABEL_20;
            }
          }
        }

LABEL_21:
        objc_autoreleasePoolPop(v13);
        v12 = readdir(v10);
      }

      while (v12);
    }

    closedir(v10);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v18 = __error();
    v19 = strerror(*v18);
    *__str = 136315394;
    v23 = a1;
    v24 = 2080;
    v25 = v19;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Failed to open log directory '%s': %s", __str, 0x16u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1AE522404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, id location, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v71 + 72));
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a38, 8);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

void sub_1AE52350C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE523764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE523F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LockdownModeLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LockdownModeLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getLockdownModeManagerClass_block_invoke(uint64_t a1)
{
  if (!LockdownModeLibraryCore())
  {
    v3 = abort_report_np();
    free(v3);
  }

  result = objc_getClass("LockdownModeManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLockdownModeManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v4 = __getLockdownModeManagerClass_block_invoke_cold_1();
    return +[(OSASystemConfiguration *)v4];
  }

  return result;
}

void sub_1AE52469C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ManagedConfigurationLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!ManagedConfigurationLibraryCore_frameworkLibrary)
  {
    ManagedConfigurationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = ManagedConfigurationLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ManagedConfigurationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ManagedConfigurationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMCProfileConnectionClass_block_invoke(uint64_t a1)
{
  ManagedConfigurationLibraryCore();
  result = objc_getClass("MCProfileConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCProfileConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMCFeatureDiagnosticsSubmissionAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureDiagnosticsSubmissionAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureDiagnosticsSubmissionAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ManagedConfigurationLibrary()
{
  v0 = ManagedConfigurationLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getMCFeatureAppAnalyticsAllowedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = ManagedConfigurationLibrary();
  result = dlsym(v2, "MCFeatureAppAnalyticsAllowed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMCFeatureAppAnalyticsAllowedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AE5271B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1AE528168(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

void runCrashMoverService(void *a1)
{
  v1 = a1;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Gathering non-mobile logs via crash_mover", buf, 2u);
  }

  v2 = dispatch_get_global_queue(0, 0);
  v3 = dispatch_group_create();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __runCrashMoverService_block_invoke;
  block[3] = &unk_1E7A26EC0;
  v4 = v1;
  v7 = v4;
  dispatch_group_async(v3, v2, block);
  v5 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v3, v5) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "crash_mover is taking too long!", buf, 2u);
  }
}

void __runCrashMoverService_block_invoke(uint64_t a1)
{
  v20[2] = *MEMORY[0x1E69E9840];
  mach_service = xpc_connection_create_mach_service("com.apple.crash_mover", 0, 0);
  v3 = mach_service;
  if (mach_service)
  {
    xpc_connection_set_event_handler(mach_service, &__block_literal_global_9);
    xpc_connection_resume(v3);
    v19[0] = @"Extensions";
    v19[1] = @"options";
    v4 = *(a1 + 32);
    if (!v4)
    {
      v4 = MEMORY[0x1E695E0F0];
    }

    v20[0] = &unk_1F241F218;
    v20[1] = v4;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v5 = _CFXPCCreateXPCObjectFromCFObject();
    v6 = xpc_connection_send_message_with_reply_sync(v3, v5);
    v7 = MEMORY[0x1B2703B90]();
    if (v7 == MEMORY[0x1E69E9E98])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        string = xpc_dictionary_get_string(v6, *MEMORY[0x1E69E9E28]);
        v17 = 136315138;
        v18 = string;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "crash_mover service FAILED with XPC error: %s", &v17, 0xCu);
      }

      goto LABEL_19;
    }

    if (v7 != MEMORY[0x1E69E9E80])
    {
LABEL_19:

      goto LABEL_20;
    }

    v8 = xpc_dictionary_get_value(v6, "Success");
    v9 = v8;
    if (v8)
    {
      value = xpc_BOOL_get_value(v8);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v11 = "FAILED";
        if (value)
        {
          v11 = "succeeded";
        }

        v17 = 136315138;
        v18 = v11;
        v12 = MEMORY[0x1E69E9C10];
        v13 = "crash_mover service %s";
        v14 = 12;
        goto LABEL_17;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      v12 = MEMORY[0x1E69E9C10];
      v13 = "crash_mover service returned ambiguous response, assuming failure";
      v14 = 2;
LABEL_17:
      _os_log_impl(&dword_1AE4F7000, v12, OS_LOG_TYPE_DEFAULT, v13, &v17, v14);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "crash_mover service FAILED to connect", &v17, 2u);
  }

LABEL_20:

  v16 = *MEMORY[0x1E69E9840];
}

void __runCrashMoverService_block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (MEMORY[0x1B2703B90]() == MEMORY[0x1E69E9E98] && v2 != MEMORY[0x1E69E9E20] && v2 != MEMORY[0x1E69E9E18] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    string = xpc_dictionary_get_string(v2, *MEMORY[0x1E69E9E28]);
    v8 = 136315138;
    v9 = string;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "crash_mover service FAILED on setup: %s", &v8, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t logEventForAppleCare(void *a1)
{
  v1 = a1;
  Current = CFAbsoluteTimeGetCurrent();
  logForAppleCare(v1, Current);

  return 0;
}

void logLineForAppleCare(uint64_t a1, uint64_t a2, double a3)
{
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a1];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v7, v5, 0}];
  logForAppleCare(v6, a3);
}

void rollAppleCareLogs()
{
  v0 = objc_autoreleasePoolPush();
  initR3();
  v9 = 0;
  v4 = initR3_r3;
  v8 = qword_1ED7FCAD0;
  v5 = getuid();
  v6 = getgid();
  v7 = @"/Library/Logs/AppleSupport/";

  Current = CFAbsoluteTimeGetCurrent();
  v2 = openR3(&initR3_r3, 0, Current);
  if ((v2 & 0x80000000) == 0)
  {
    close(v2);
  }

  if (!v5)
  {
    v3 = openR3(&v4, 0, Current);
    if ((v3 & 0x80000000) == 0)
    {
      close(v3);
    }
  }

  purgeR3Logs(&initR3_r3);
  if (!v5)
  {
    purgeR3Logs(&v4);
  }

  objc_autoreleasePoolPop(v0);
}

void sub_1AE529578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __destructor_8_s16_s24_s32(va);
  _Unwind_Resume(a1);
}

void purgeR3Logs(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = [v2 fileSystemRepresentation];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      purgeR3Logs_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = opendir(v3);
    if (v11)
    {
      v12 = v11;
      v13 = readdir(v11);
      if (v13)
      {
        v15 = v13;
        *&v14 = 67109634;
        v29 = v14;
        do
        {
          d_name = v15->d_name;
          v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v15->d_name, v29}];
          v18 = [v17 rangeOfString:@"general.*\\.log" options:1024];

          if (v15->d_type == 8 && v18 != 0x7FFFFFFFFFFFFFFFLL)
          {
            value = 0;
            v20 = *(a1 + 16);
            v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15->d_name];
            v22 = [v20 stringByAppendingPathComponent:v21];
            v23 = [v22 fileSystemRepresentation];

            getxattr(v23, "Day_Seq", &value, 4uLL, 0, 0);
            if (value <= *a1 - 14)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v24 = *a1 - value;
                if (v24 >= 365)
                {
                  v24 = -1;
                }

                *buf = v29;
                v32 = 14;
                v33 = 1024;
                *v34 = v24;
                *&v34[4] = 2080;
                *&v34[6] = d_name;
                _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: purging old (limit %d vs actual %d) %s", buf, 0x18u);
              }

              unlink(v23);
            }
          }

          v15 = readdir(v12);
        }

        while (v15);
      }

      closedir(v12);
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v25 = *__error();
      v26 = __error();
      v27 = strerror(*v26);
      *buf = 67109634;
      v32 = v25;
      v33 = 2080;
      *v34 = v3;
      *&v34[8] = 2080;
      *&v34[10] = v27;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: ERROR[%d] scanning '%s', %s", buf, 0x1Cu);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __destructor_8_s16_s24_s32(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void __initR3_block_invoke()
{
  qword_1ED7FCABC = 0;
  v0 = getpwnam("mobile");
  if (v0)
  {
    qword_1ED7FCABC = *&v0->pw_uid;
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v0->pw_dir];
    v2 = [v1 stringByAppendingPathComponent:@"/Library/Logs/AppleSupport/"];
    v3 = *&algn_1ED7FCAC4[4];
    *&algn_1ED7FCAC4[4] = v2;
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: ERROR unable to intialize data", v9, 2u);
  }

  endpwent();
  v4 = +[OSASystemConfiguration sharedInstance];
  v5 = [v4 buildVersion];
  v6 = qword_1ED7FCAD0;
  qword_1ED7FCAD0 = v5;

  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F241F230];
  v8 = qword_1ED7FCAD8;
  qword_1ED7FCAD8 = v7;
}

uint64_t createR3(uint64_t a1, char *a2, double a3, double a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v34 = a4;
  value = a3;
  v6 = 384;
  if (!*(a1 + 4))
  {
    v6 = 420;
  }

  v7 = open_dprotected_np(a2, 2594, 4, 0, v6);
  v8 = v7;
  if ((v7 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v28 = *__error();
      v29 = __error();
      v30 = strerror(*v29);
      *buf = 67109634;
      *v39 = v28;
      *&v39[4] = 2080;
      *&v39[6] = a2;
      v40 = 2080;
      v41 = v30;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: ERROR[%d] failed to create %s, %s", buf, 0x1Cu);
    }
  }

  else
  {
    v9 = *(a1 + 4);
    if (v9)
    {
      fchown(v7, v9, *(a1 + 8));
    }

    v10 = [*(a1 + 24) UTF8String];
    if (!v10 || (v11 = v10, !*v10) || (v12 = strlen(v10), fsetxattr(v8, "Version", v11, v12, 0, 0)) || fsetxattr(v8, "Install", &value, 8uLL, 0, 0) || fsetxattr(v8, "Upgrade", &v34, 8uLL, 0, 0) || fsetxattr(v8, "Day_Seq", a1, 4uLL, 0, 0))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v13 = *__error();
        v14 = __error();
        v15 = strerror(*v14);
        *buf = 67109634;
        *v39 = v13;
        *&v39[4] = 2080;
        *&v39[6] = a2;
        v40 = 2080;
        v41 = v15;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: ERROR[%d] setting xattrs on %s, %s", buf, 0x1Cu);
      }
    }

    v16 = MGCopyAnswer();
    v36[0] = @"report";
    v36[1] = @"version";
    v37[0] = @"Device Software Diagnostic Log";
    v37[1] = &unk_1F241EB18;
    v36[2] = @"os_build";
    v17 = +[OSASystemConfiguration sharedInstance];
    v18 = [v17 productNameVersionBuildString];
    v37[2] = v18;
    v36[3] = @"model";
    v19 = +[OSASystemConfiguration sharedInstance];
    v20 = [v19 modelCode];
    v21 = v20;
    v22 = @"<no_sn>";
    if (v16)
    {
      v22 = v16;
    }

    v37[3] = v20;
    v37[4] = v22;
    v36[4] = @"serial";
    v36[5] = @"installed";
    v23 = OSADateFormat(0, value);
    v37[5] = v23;
    v36[6] = @"updated";
    v24 = OSADateFormat(0, v34);
    v37[6] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:7];

    v33 = 0;
    v26 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v25 options:0 error:&v33];
    v27 = v33;
    write(v8, [v26 bytes], objc_msgSend(v26, "length"));
    write(v8, "\n", 1uLL);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v39 = a2;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "AppleCareSupport: new %s", buf, 0xCu);
    }
  }

  v31 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t OSASafeRemoveFile(const char *a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __OSASafeRemoveFile_block_invoke;
  v4[3] = &unk_1E7A27D98;
  v4[4] = &v5;
  v4[5] = a2;
  OSASafeOpen(a1, 0, 0, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1AE52B4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __OSASafeRemoveFile_block_invoke(uint64_t a1, int a2)
{
  result = unlinkat(a2, *(a1 + 40), 0);
  *(*(*(a1 + 32) + 8) + 24) = result == 0;
  return result;
}

uint64_t OSASafeRemoveFileAtURL(void *a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 URLByDeletingLastPathComponent];
  v5 = +[OSASystemConfiguration sharedInstance];
  v6 = [v4 path];
  v7 = [v5 isAllowed:v6 forDomain:@"cleanup_paths"];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v8 removeItemAtURL:v3 error:a2];
  }

  else
  {
    v10 = [v3 lastPathComponent];
    v11 = [v10 fileSystemRepresentation];

    v12 = OSASafeRemoveFile([v4 fileSystemRepresentation], v11);
    v9 = v12;
    if (a2 && (v12 & 1) == 0)
    {
      v13 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v14 = MEMORY[0x1E696AEC0];
      v15 = __error();
      v16 = [v14 stringWithUTF8String:strerror(*v15)];
      v21[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      *a2 = [v13 errorWithDomain:@"OSAFileOperations" code:0 userInfo:v17];

      v9 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

BOOL OSASafeCreateDirectory(void *a1, int a2, void *a3, void *a4)
{
  v101 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v7 = a3;
  v8 = [v6 pathComponents];
  if ([v8 count] < 2)
  {
    v16 = @"Too few path components";
    goto LABEL_68;
  }

  if (![v7 createIntermediates])
  {
    v11 = [v6 URLByDeletingLastPathComponent];
    v17 = [v8 count];
    v18 = [v6 URLByDeletingLastPathComponent];
    v19 = open([v18 fileSystemRepresentation], 537919488);

    if ((v19 & 0x80000000) == 0)
    {
      v10 = v17 - 1;
LABEL_15:
      v20 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      [v20 setUsesSignificantDigits:1];
      v86 = v20;
      [v20 setMaximumSignificantDigits:2];
      if (v10 >= [v8 count])
      {
        v16 = 0;
      }

      else
      {
        v88 = v7;
        v83 = a4;
        v84 = v6;
        v21 = a2;
        v85 = v8;
        while (1)
        {
          v22 = [v8 objectAtIndex:v10];
          v23 = [v22 fileSystemRepresentation];

          v24 = MEMORY[0x1E695DFF8];
          v25 = [v8 subarrayWithRange:{0, ++v10}];
          v90 = [v24 fileURLWithPathComponents:v25];

          if (mkdirat(v19, v23, v21 & 0x1B6))
          {
            v16 = @"Failed to create directory";
            goto LABEL_66;
          }

          v26 = openat(v19, v23, 537919488);
          if (v26 < 0)
          {
            break;
          }

          v27 = v26;
          close(v19);
          memset(&v95, 0, sizeof(v95));
          v28 = v88;
          if (fstat(v27, &v95))
          {
            v29 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v38 = [v84 path];
              v39 = __error();
              v40 = strerror(*v39);
              buf.st_dev = 138543618;
              *&buf.st_mode = v38;
              WORD2(buf.st_ino) = 2080;
              *(&buf.st_ino + 6) = v40;
              _os_log_error_impl(&dword_1AE4F7000, v29, OS_LOG_TYPE_ERROR, "Failed to stat %{public}@ when checking group ownership: %s", &buf, 0x16u);
            }

            v30 = 0;
            v31 = 0;
          }

          else
          {
            v32 = MEMORY[0x1E69E9C10];
            if (v95.st_mode == v21)
            {
              goto LABEL_31;
            }

            v33 = fchmod(v27, v21);
            if (v33 == -1 && os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v69 = [v84 path];
              v70 = __error();
              v71 = strerror(*v70);
              buf.st_dev = 138543618;
              *&buf.st_mode = v69;
              WORD2(buf.st_ino) = 2080;
              *(&buf.st_ino + 6) = v71;
              _os_log_error_impl(&dword_1AE4F7000, v32, OS_LOG_TYPE_ERROR, "Failed to modify permissions while creating %{public}@: %s", &buf, 0x16u);
            }

            if (v21 != 504)
            {
LABEL_31:
              v30 = 0;
            }

            else
            {
              v34 = v32;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                st_mode = v95.st_mode;
                if (v33)
                {
                  v36 = __error();
                  v37 = strerror(*v36);
                }

                else
                {
                  v37 = "";
                }

                buf.st_dev = 138544386;
                *&buf.st_mode = v90;
                WORD2(buf.st_ino) = 1024;
                *(&buf.st_ino + 6) = st_mode;
                HIWORD(buf.st_uid) = 1024;
                buf.st_gid = 504;
                LOWORD(buf.st_rdev) = 1024;
                *(&buf.st_rdev + 2) = v33 == 0;
                *(&buf.st_rdev + 3) = 2082;
                buf.st_atimespec.tv_sec = v37;
                _os_log_impl(&dword_1AE4F7000, v32, OS_LOG_TYPE_DEFAULT, "=== Attempted change perms on new dir: %{public}@ from 0x%X to 0x%X with result %d %{public}s", &buf, 0x28u);
                v28 = v88;
              }

              v30 = 1;
            }

            v41 = [v28 userID];
            v42 = [v28 groupID];
            buf = v95;
            v43 = OSASetOwnership(v27, &buf, v41, v42);

            v89 = v43;
            if (!v43 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v66 = [v84 path];
              v67 = __error();
              v68 = strerror(*v67);
              buf.st_dev = 138543618;
              *&buf.st_mode = v66;
              WORD2(buf.st_ino) = 2080;
              *(&buf.st_ino + 6) = v68;
              _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set ownership while creating %{public}@: %s", &buf, 0x16u);
            }

            v44 = [v28 groupID];
            v45 = [v44 unsignedIntValue];
            st_gid = v95.st_gid;

            v31 = 0;
            if (v45 == 250)
            {
              v29 = MEMORY[0x1E69E9C10];
              if (st_gid == 250)
              {
                v28 = v88;
              }

              else
              {
                v47 = MEMORY[0x1E69E9C10];
                v28 = v88;
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v48 = v95.st_gid;
                  v49 = "";
                  if ((v89 & 1) == 0)
                  {
                    v50 = __error();
                    v49 = strerror(*v50);
                  }

                  buf.st_dev = 138544386;
                  *&buf.st_mode = v90;
                  WORD2(buf.st_ino) = 1024;
                  *(&buf.st_ino + 6) = v48;
                  HIWORD(buf.st_uid) = 1024;
                  buf.st_gid = 250;
                  LOWORD(buf.st_rdev) = 1024;
                  *(&buf.st_rdev + 2) = v89;
                  *(&buf.st_rdev + 3) = 2082;
                  buf.st_atimespec.tv_sec = v49;
                  _os_log_impl(&dword_1AE4F7000, v29, OS_LOG_TYPE_DEFAULT, "=== Attempted change gid on new dir: %{public}@ from %d to _analyticsusers (%u) with result %d %{public}s", &buf, 0x28u);
                }

                v31 = 1;
              }
            }

            else
            {
              v28 = v88;
              v29 = MEMORY[0x1E69E9C10];
            }
          }

          if ([v28 fileProtectionNone] && fcntl(v27, 63) != 4 && fcntl(v27, 64, 4) == -1 && os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            OSASafeCreateDirectory_cold_1(v98, v84, &v99);
          }

          if ((v30 | v31) == 1)
          {
            getprogname();
            v51 = OSAGetBootTime();
            if (v51)
            {
              v52 = MEMORY[0x1E696AD98];
              v53 = [MEMORY[0x1E695DF00] date];
              [v53 timeIntervalSinceDate:v51];
              v54 = [v52 numberWithDouble:?];
              v55 = [v86 stringForObjectValue:v54];
            }

            else
            {
              v55 = @"-1";
            }

            v56 = OSAGetProcessUptime();
            if (v56)
            {
              v57 = MEMORY[0x1E696AD98];
              v58 = [MEMORY[0x1E695DF00] date];
              [v58 timeIntervalSinceDate:v56];
              v59 = [v57 numberWithDouble:?];
              v60 = [v86 stringForObjectValue:v59];
            }

            else
            {
              v60 = @"-1";
            }

            v61 = [v11 path];
            [v90 path];
            v94 = v60;
            v92 = v91 = v61;
            v93 = v55;
            v62 = v60;
            v63 = v55;
            v64 = v92;
            v65 = v61;
            AnalyticsSendEventLazy();

            v8 = v85;
            v21 = a2;
          }

          v19 = v27;
          if (v10 >= [v8 count])
          {
            v16 = 0;
            v19 = v27;
            v6 = v84;
            a4 = v83;
            v7 = v88;
            goto LABEL_67;
          }
        }

        v16 = @"Failed to open newly created directory";
LABEL_66:
        v7 = v88;

        v6 = v84;
        a4 = v83;
      }

LABEL_67:
      close(v19);

      goto LABEL_68;
    }

LABEL_13:

    v16 = @"Failed to find base path on which to create directories";
    goto LABEL_68;
  }

  v9 = [v8 count];
  v10 = v9 - 1;
  if (v9 == 1)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v11 = 0;
  while (1)
  {
    v12 = MEMORY[0x1E695DFF8];
    v13 = [v8 subarrayWithRange:{0, v10}];
    v14 = [v12 fileURLWithPathComponents:v13];

    v11 = v14;
    v15 = open([v14 fileSystemRepresentation], 537919488);
    if ((v15 & 0x80000000) == 0)
    {
      v19 = v15;
      goto LABEL_15;
    }

    if (*__error() != 2)
    {
      break;
    }

    if (!--v10)
    {

      v11 = 0;
      goto LABEL_13;
    }
  }

  v16 = @"Failed to open intermediate path";
LABEL_68:
  if (a4 && v16)
  {
    v72 = MEMORY[0x1E696ABC0];
    v73 = *MEMORY[0x1E696A578];
    v97[0] = v16;
    v96[0] = v73;
    v96[1] = @"errno";
    v74 = [MEMORY[0x1E696AD98] numberWithInt:*__error()];
    v97[1] = v74;
    v96[2] = @"errstr";
    v75 = v7;
    v76 = MEMORY[0x1E696AEC0];
    v77 = __error();
    v78 = [v76 stringWithUTF8String:strerror(*v77)];
    v97[2] = v78;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:v96 count:3];
    v80 = v79 = v8;
    *a4 = [v72 errorWithDomain:@"OSAFileOperations" code:2 userInfo:v80];

    v8 = v79;
    v7 = v75;
  }

  v81 = *MEMORY[0x1E69E9840];
  return v16 == 0;
}

id __OSASafeCreateDirectory_block_invoke(int64x2_t *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v19[0] = @"progname";
  v2 = a1[4].i64[0];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  }

  else
  {
    v3 = @"<unknown>";
  }

  v18 = v3;
  v20[0] = v3;
  v20[1] = MEMORY[0x1E695E118];
  v19[1] = @"create_dir";
  v19[2] = @"create_dir_success";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a1[4].u8[14]];
  v20[2] = v4;
  v19[3] = @"start_path";
  v19[4] = @"path";
  v21 = vbslq_s8(vceqzq_s64(a1[2]), vdupq_n_s64(@"path sanitize failed"), a1[2]);
  v19[5] = @"original_perms";
  v5 = a1[4].u8[14];
  if (v5 == 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a1[4].u16[6]];
  }

  else
  {
    v6 = &unk_1F241EB90;
  }

  v22 = v6;
  v19[6] = @"modify_perms";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{a1[4].u8[15], v6}];
  v23 = v7;
  v19[7] = @"modify_perms_success";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:a1[5].u8[0]];
  v24 = v8;
  v25 = &unk_1F241EBA8;
  v19[8] = @"modify_perms_value";
  v19[9] = @"original_gid";
  v9 = a1[4].u8[14];
  if (v9 == 1)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1[4].u32[2]];
  }

  else
  {
    v10 = &unk_1F241EB90;
  }

  v26 = v10;
  v19[10] = @"modify_gid";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:a1[5].u8[1]];
  v27 = v11;
  v19[11] = @"modify_gid_success";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:a1[5].u8[2]];
  v28 = v12;
  v29 = &unk_1F241EBC0;
  v19[12] = @"modify_gid_value";
  v19[13] = @"boot_time_appx";
  v13 = a1[3].i64[1];
  v30 = a1[3].i64[0];
  v31 = v13;
  v19[14] = @"proc_uptime_appx";
  v19[15] = @"framework";
  v32 = @"OSAnalytics";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:16];

  if (v9)
  {
  }

  if (v5)
  {
  }

  if (v2)
  {
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

id symbolicateSpeedTracer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__7;
  v41 = __Block_byref_object_dispose__7;
  v42 = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy__7;
  v35[4] = __Block_byref_object_dispose__7;
  v36 = 0;
  if ([v3 length])
  {
    v5 = [v4 objectForKeyedSubscript:OSATransformOptionTracerURL];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x1E695DFF8] URLWithString:@"https://speedtracer.apple.com/api/v2/trace?detail=full"];
    }

    v8 = v7;
    v9 = [MEMORY[0x1E696AD68] requestWithURL:v7];
    [v9 setHTTPMethod:@"POST"];
    v10 = [v4 objectForKeyedSubscript:OSATransformOptionTracerGroup];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = @"osatool";
    }

    [v9 setValue:v12 forHTTPHeaderField:@"X-ST-GroupName"];
    v29 = v8;
    v30 = v6;
    v13 = [MEMORY[0x1E696AE30] processInfo];
    v14 = [v13 globallyUniqueString];

    v15 = objc_opt_new();
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"--%@\r\nContent-Disposition: form-data name=%@; filename=%@\r\nContent-Type: %@\r\n\r\n", v14, @"log_content", @"tmpname", @"application/octet-stream"];;
    v17 = [v16 dataUsingEncoding:4];
    [v15 appendData:v17];

    [v15 appendData:v3];
    v18 = [@"\r\n" dataUsingEncoding:4];
    [v15 appendData:v18];

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"--%@--\r\n", v14];
    v20 = [v19 dataUsingEncoding:4];
    [v15 appendData:v20];

    [v9 setTimeoutInterval:120.0];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"multipart/form-data boundary=%@", v14];;
    [v9 setHTTPContentType:v21];

    [v9 setHTTPBody:v15];
    v22 = dispatch_semaphore_create(0);
    v23 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
    v24 = [MEMORY[0x1E696AF78] sessionWithConfiguration:v23];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __symbolicateSpeedTracer_block_invoke;
    v31[3] = &unk_1E7A27E60;
    v33 = &v37;
    v34 = v35;
    v25 = v22;
    v32 = v25;
    v26 = [v24 dataTaskWithRequest:v9 completionHandler:v31];
    [v26 resume];

    dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
  }

  v27 = v38[5];
  _Block_object_dispose(v35, 8);

  _Block_object_dispose(&v37, 8);

  return v27;
}

void sub_1AE5310FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 136), 8);
  _Unwind_Resume(a1);
}

void __symbolicateSpeedTracer_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v36 = OSATransformResultError;
    v37[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 localizedDescription];
      *buf = 138412290;
      *v33 = v14;
      v15 = MEMORY[0x1E69E9C10];
      v16 = "speedtracer error response: %@";
LABEL_4:
      _os_log_impl(&dword_1AE4F7000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v8;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v17 statusCode];
        v19 = [MEMORY[0x1E696AC68] localizedStringForStatusCode:{objc_msgSend(v17, "statusCode")}];
        *buf = 67109634;
        *v33 = v18;
        *&v33[4] = 2112;
        *&v33[6] = v19;
        v34 = 1024;
        v35 = [v7 length];
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "SpeedTracer response %d '%@' received %d bytes\n", buf, 0x18u);
      }
    }

    v20 = *(*(a1 + 48) + 8);
    obj = *(v20 + 40);
    v21 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&obj];
    objc_storeStrong((v20 + 40), obj);
    v22 = *(*(a1 + 40) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v25 = *(*(*(a1 + 48) + 8) + 40);
      if (v25)
      {
        v30 = OSATransformResultError;
        v31 = v25;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        v27 = *(*(a1 + 40) + 8);
        v28 = *(v27 + 40);
        *(v27 + 40) = v26;

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
          *buf = 138412290;
          *v33 = v14;
          v15 = MEMORY[0x1E69E9C10];
          v16 = "failed to extract JSON data from speedtracer result: %@";
          goto LABEL_4;
        }
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v24 = *MEMORY[0x1E69E9840];
}

CFStringRef CRCopyAnonHostUUIDPath()
{
  v27 = *MEMORY[0x1E69E9840];
  v0 = CFCopySearchPathForDirectoriesInDomains();
  if (!v0)
  {
    goto LABEL_24;
  }

  v1 = v0;
  if (CFArrayGetCount(v0) <= 0)
  {
    v6 = v1;
LABEL_23:
    CFRelease(v6);
LABEL_24:
    v18 = 0;
    goto LABEL_25;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
  if (CFArrayGetCount(v1) < 1)
  {
    goto LABEL_8;
  }

  v3 = 0;
  while (1)
  {
    v4 = CFArrayGetValueAtIndex(v1, v3);
    if (CFURLGetFileSystemRepresentation(v4, 0, &buffer[0].byte0, 1024))
    {
      memset(&v25, 0, sizeof(v25));
      if (!lstat(buffer, &v25))
      {
        break;
      }
    }

    if (CFArrayGetCount(v1) <= ++v3)
    {
      goto LABEL_8;
    }
  }

  v7 = CFRetain(v4);
  if (v7)
  {
    v5 = v7;
    CFRelease(v1);
  }

  else
  {
LABEL_8:
    _CRMakeDirectory(ValueAtIndex, 493, 0);
    v5 = CFRetain(ValueAtIndex);
    CFRelease(v1);
    if (!v5)
    {
      goto LABEL_24;
    }
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], v5, @"Application Support", 1u);
  if (!v9)
  {
LABEL_22:
    v6 = v5;
    goto LABEL_23;
  }

  v10 = v9;
  _CRMakeDirectory(v9, 509, 0);
  v11 = CFURLCreateCopyAppendingPathComponent(v8, v10, @"CrashReporter", 1u);
  if (!v11)
  {
    CFRelease(v10);
    goto LABEL_22;
  }

  v12 = v11;
  _CRMakeDirectory(v11, 509, 1);
  CFRelease(v10);
  CFRelease(v5);
  v13 = CRGetHostUUID___hostUUIDString;
  if (!CRGetHostUUID___hostUUIDString)
  {
    *&buffer[0].byte0 = 0;
    *&buffer[0].byte8 = 0;
    *&v25.st_dev = 0;
    v25.st_ino = 0;
    if (gethostuuid(&buffer[0].byte0, &v25) == -1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        CRCopyAnonHostUUIDPath_cold_1();
      }

      v13 = 0;
    }

    else
    {
      v14 = CFUUIDCreateFromUUIDBytes(v8, buffer[0]);
      if (v14)
      {
        v15 = v14;
        v16 = CFUUIDCreateString(v8, v14);
        CFRelease(v15);
        v17 = 0;
        atomic_compare_exchange_strong(&CRGetHostUUID___hostUUIDString, &v17, v16);
        if (v17)
        {
          CFRelease(v16);
        }
      }

      v13 = CRGetHostUUID___hostUUIDString;
    }
  }

  v21 = CFStringCreateWithFormat(v8, 0, @"AnonymousIdentifier_%@.plist", v13);
  if (v21)
  {
    v22 = v21;
    v23 = CFURLCreateCopyAppendingPathComponent(v8, v12, v21, 0);
    if (v23)
    {
      v24 = v23;
      v18 = CFURLCopyFileSystemPath(v23, kCFURLPOSIXPathStyle);
      CFRelease(v24);
    }

    else
    {
      v18 = 0;
    }

    CFRelease(v22);
  }

  else
  {
    v18 = 0;
  }

  CFRelease(v12);
LABEL_25:
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t OSA_OSX_Legacy_GetUserUUID()
{
  if (OSA_OSX_Legacy_GetUserUUID___uuid)
  {
    return OSA_OSX_Legacy_GetUserUUID___uuid;
  }

  if (_CRGetAnonHostUUID_pred != -1)
  {
    OSA_OSX_Legacy_GetUserUUID_cold_1();
  }

  v1 = _CRGetAnonHostUUID___uuid;
  if (_CRGetAnonHostUUID___uuid)
  {
    CFRetain(_CRGetAnonHostUUID___uuid);
    goto LABEL_7;
  }

  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E8B0];
  v5 = CFPreferencesCopyValue(@"userUUID", @"com.apple.CrashReporter", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v6))
  {
    CFRelease(v6);
    goto LABEL_14;
  }

  v1 = CFRetain(v6);
  CFRelease(v6);
  if (!v1)
  {
LABEL_14:
    v8 = *MEMORY[0x1E695E480];
    v9 = CFUUIDCreate(*MEMORY[0x1E695E480]);
    if (!v9)
    {
      return OSA_OSX_Legacy_GetUserUUID___uuid;
    }

    v10 = v9;
    v1 = CFUUIDCreateString(v8, v9);
    CFRelease(v10);
    if (!v1)
    {
      return OSA_OSX_Legacy_GetUserUUID___uuid;
    }

    CFPreferencesSetValue(@"userUUID", v1, @"com.apple.CrashReporter", v3, v4);
    CFPreferencesSynchronize(@"com.apple.CrashReporter", v3, v4);
  }

LABEL_7:
  v2 = 0;
  atomic_compare_exchange_strong(&OSA_OSX_Legacy_GetUserUUID___uuid, &v2, v1);
  if (v2)
  {
    CFRelease(v1);
  }

  return OSA_OSX_Legacy_GetUserUUID___uuid;
}

uint64_t _CRMakeDirectory(const __CFURL *a1, int a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  result = CFURLGetFileSystemRepresentation(a1, 0, buffer, 1024);
  if (result)
  {
    memset(&v10, 0, sizeof(v10));
    result = stat(buffer, &v10);
    if (result)
    {
      v6 = umask(0);
      mkdir(buffer, a2);
      umask(v6);
      result = geteuid();
      if (a3 && !result)
      {
        result = chown(buffer, 0xFFFFFFFF, 0x50u);
      }
    }

    else if ((v10.st_mode & 0xF000) == 0x4000 && a3 != 0 && (v10.st_mode & 0x1FF) != a2)
    {
      result = chmod(buffer, a2);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

id OSAGetBootTime()
{
  v8 = *MEMORY[0x1E69E9840];
  *v7 = 0x1500000001;
  v6[0] = 0;
  v6[1] = 0;
  v5 = 16;
  v0 = sysctl(v7, 2u, v6, &v5, 0, 0);
  v1 = 0;
  if (v0 != -1 && v6[0] != 0)
  {
    v1 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v6[0]];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v1;
}

id OSAGetProcessUptime()
{
  v8 = *MEMORY[0x1E69E9840];
  *v5 = 0xE00000001;
  v6 = 1;
  v7 = getpid();
  memset(v4, 0, 512);
  v3 = 648;
  if (sysctl(v5, 4u, v4, &v3, 0, 0) < 0)
  {
    v0 = 0;
  }

  else
  {
    v0 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:*&v4[0]];
  }

  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

time_t OSADaysSinceEpoch()
{
  result = time(0);
  if (result >= 0)
  {
    return result / 0x15180uLL;
  }

  return result;
}

BOOL OSARandomSelection(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[OSASystemConfiguration sharedInstance];
  v5 = [v4 getTaskingKey:v3];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      a1 = [v5 integerValue];
    }
  }

  v6 = a1 > arc4random_uniform(0x2710u);

  return v6;
}

void rtcsc_send_base(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v32[5] = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a1 <= 2004)
  {
    if (a1 > 2002)
    {
      if (a1 == 2003)
      {
        v8 = @"osanalytics_logEr";
        if (!a4)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v8 = @"osanalytics_jetsam";
        if (!a4)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      if (a1 == 2001)
      {
        v13 = +[OSASystemConfiguration sharedInstance];
        v14 = [v13 appleInternal];

        if (!v14)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (a1 != 2002)
        {
          goto LABEL_40;
        }

        v9 = +[OSASystemConfiguration sharedInstance];
        v10 = [v9 appleInternal];

        if ((v10 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v8 = @"analyticsd_sub";
      if (!a4)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a1 <= 2006)
  {
    if (a1 == 2005)
    {
      v8 = @"osanalytics_crashes";
      if (!a4)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = +[OSASystemConfiguration sharedInstance];
      v12 = [v11 appleInternal];

      if ((v12 & 1) == 0)
      {
        goto LABEL_40;
      }

      v8 = @"osanalytics_monitor";
      if (!a4)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 0x7D7:
        v8 = @"osanalytics_monitor_ca_submission";
        if (!a4)
        {
          goto LABEL_39;
        }

        break;
      case 0x7D8:
        v8 = @"osanalytics_monitor_hb_diff";
        if (!a4)
        {
LABEL_39:
          rtc_internal(0, v8, a1, a2, v7);
          goto LABEL_40;
        }

        break;
      case 0x7D9:
        v8 = @"osanalytics_beacon";
        if (!a4)
        {
          goto LABEL_39;
        }

        break;
      default:
        goto LABEL_40;
    }
  }

  v15 = v7;
  if (rtc_internal_realtime_onceToken != -1)
  {
    rtcsc_send_base_cold_1();
  }

  if (objc_opt_class())
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
    v31[0] = getkRTCReportingSessionInfoClientType();
    v32[0] = &unk_1F241EBF0;
    v31[1] = getkRTCReportingSessionInfoClientVersion();
    v32[1] = &unk_1F241EC08;
    v31[2] = getkRTCReportingSessionInfoBatchEvent();
    v32[2] = MEMORY[0x1E695E110];
    v31[3] = getkRTCReportingSessionInfoSessionID();
    v32[3] = v16;
    v31[4] = getkRTCReportingSessionInfoContainsRealtimeEvents();
    v32[4] = MEMORY[0x1E695E118];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:5];
    v29[0] = getkRTCReportingUserInfoClientName();
    v30[0] = @"com.apple.CA";
    v29[1] = getkRTCReportingUserInfoServiceName();
    v30[1] = v8;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    if ([rtc_internal_realtime_RTCReportingClass sendOneMessageWithSessionInfo:v17 userInfo:v18 category:a1 type:a2 payload:v15 error:0])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *v28 = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "RTCReporting Realtime: sendOneMessageWithSessionInfo succeeded", v28, 2u);
      }
    }

    else
    {
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v19)
      {
        rtcsc_send_base_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }
  }

LABEL_40:
  v27 = *MEMORY[0x1E69E9840];
}

void rtc_internal(char a1, void *a2, __int16 a3, __int16 a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  if (rtc_internal_onceToken != -1)
  {
    rtc_internal_cold_1();
  }

  if (objc_opt_class())
  {
    v11 = rtc_internal_rtc_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __rtc_internal_block_invoke_63;
    block[3] = &unk_1E7A27FA8;
    v13 = v10;
    v15 = a3;
    v16 = a4;
    v17 = a1;
    v14 = v9;
    dispatch_async(v11, block);
  }
}

uint64_t __OSARTCIsProcessOfInterest_block_invoke()
{
  OSARTCIsProcessOfInterest_processSet = [MEMORY[0x1E695DFD8] setWithObjects:{@"analyticsd", @"SubmitDiagInfo", @"osanalyticshelper", @"OTACrashCopier", @"ProxiedCrashCopier", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void __rtc_internal_realtime_block_invoke()
{
  v0 = RTCReportingLibraryCore();
  v1 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v0)
  {
    if (v1)
    {
      *buf = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "linking RTCReporting.framework", buf, 2u);
    }

    rtc_internal_realtime_RTCReportingClass = getRTCReportingClass();
  }

  else if (v1)
  {
    *v2 = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "RTCReporting.framework is unavailable", v2, 2u);
  }
}

id getRTCReportingClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRTCReportingClass_softClass;
  v7 = getRTCReportingClass_softClass;
  if (!getRTCReportingClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getRTCReportingClass_block_invoke;
    v3[3] = &unk_1E7A271B0;
    v3[4] = &v4;
    __getRTCReportingClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AE534A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkRTCReportingSessionInfoClientType()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr;
  v7 = getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr;
  if (!getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr)
  {
    v1 = RTCReportingLibrary();
    v5[3] = dlsym(v1, "kRTCReportingSessionInfoClientType");
    getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    ACAccountTypeIdentifierExchange_cold_1 = getACAccountTypeIdentifierExchange_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(ACAccountTypeIdentifierExchange_cold_1);
  }

  return *v0;
}

uint64_t getkRTCReportingSessionInfoClientVersion()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr;
  v7 = getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr;
  if (!getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr)
  {
    v1 = RTCReportingLibrary();
    v5[3] = dlsym(v1, "kRTCReportingSessionInfoClientVersion");
    getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    ACAccountTypeIdentifierExchange_cold_1 = getACAccountTypeIdentifierExchange_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(ACAccountTypeIdentifierExchange_cold_1);
  }

  return *v0;
}

uint64_t getkRTCReportingSessionInfoBatchEvent()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr;
  v7 = getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr;
  if (!getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr)
  {
    v1 = RTCReportingLibrary();
    v5[3] = dlsym(v1, "kRTCReportingSessionInfoBatchEvent");
    getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    ACAccountTypeIdentifierExchange_cold_1 = getACAccountTypeIdentifierExchange_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(ACAccountTypeIdentifierExchange_cold_1);
  }

  return *v0;
}

uint64_t getkRTCReportingSessionInfoSessionID()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr;
  v7 = getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr;
  if (!getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr)
  {
    v1 = RTCReportingLibrary();
    v5[3] = dlsym(v1, "kRTCReportingSessionInfoSessionID");
    getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    ACAccountTypeIdentifierExchange_cold_1 = getACAccountTypeIdentifierExchange_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(ACAccountTypeIdentifierExchange_cold_1);
  }

  return *v0;
}

uint64_t getkRTCReportingSessionInfoContainsRealtimeEvents()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr;
  v7 = getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr;
  if (!getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr)
  {
    v1 = RTCReportingLibrary();
    v5[3] = dlsym(v1, "kRTCReportingSessionInfoContainsRealtimeEvents");
    getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    ACAccountTypeIdentifierExchange_cold_1 = getACAccountTypeIdentifierExchange_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(ACAccountTypeIdentifierExchange_cold_1);
  }

  return *v0;
}

uint64_t getkRTCReportingUserInfoClientName()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkRTCReportingUserInfoClientNameSymbolLoc_ptr;
  v7 = getkRTCReportingUserInfoClientNameSymbolLoc_ptr;
  if (!getkRTCReportingUserInfoClientNameSymbolLoc_ptr)
  {
    v1 = RTCReportingLibrary();
    v5[3] = dlsym(v1, "kRTCReportingUserInfoClientName");
    getkRTCReportingUserInfoClientNameSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    ACAccountTypeIdentifierExchange_cold_1 = getACAccountTypeIdentifierExchange_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(ACAccountTypeIdentifierExchange_cold_1);
  }

  return *v0;
}

uint64_t getkRTCReportingUserInfoServiceName()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getkRTCReportingUserInfoServiceNameSymbolLoc_ptr;
  v7 = getkRTCReportingUserInfoServiceNameSymbolLoc_ptr;
  if (!getkRTCReportingUserInfoServiceNameSymbolLoc_ptr)
  {
    v1 = RTCReportingLibrary();
    v5[3] = dlsym(v1, "kRTCReportingUserInfoServiceName");
    getkRTCReportingUserInfoServiceNameSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    ACAccountTypeIdentifierExchange_cold_1 = getACAccountTypeIdentifierExchange_cold_1();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(ACAccountTypeIdentifierExchange_cold_1);
  }

  return *v0;
}

uint64_t RTCReportingLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!RTCReportingLibraryCore_frameworkLibrary)
  {
    RTCReportingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = RTCReportingLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __RTCReportingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RTCReportingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getRTCReportingClass_block_invoke(uint64_t a1)
{
  RTCReportingLibrary();
  result = objc_getClass("RTCReporting");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRTCReportingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRTCReportingClass_block_invoke_cold_1();
    return RTCReportingLibrary();
  }

  return result;
}

uint64_t RTCReportingLibrary()
{
  v0 = RTCReportingLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getkRTCReportingSessionInfoClientTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoClientType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoClientTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoClientVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoClientVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoClientVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoBatchEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoBatchEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoBatchEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoSessionIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoSessionID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoSessionIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingSessionInfoContainsRealtimeEvents");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingSessionInfoContainsRealtimeEventsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingUserInfoClientNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingUserInfoClientName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingUserInfoClientNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkRTCReportingUserInfoServiceNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RTCReportingLibrary();
  result = dlsym(v2, "kRTCReportingUserInfoServiceName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkRTCReportingUserInfoServiceNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __rtc_internal_block_invoke()
{
  v0 = RTCReportingLibraryCore();
  v1 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v0)
  {
    if (v1)
    {
      *buf = 0;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "linking RTCReporting.framework", buf, 2u);
    }

    rtc_internal_RTCReportingClass = getRTCReportingClass();
    v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v3 = dispatch_queue_create("com.apple.OSAnalytics.RTCReporter", v2);
    v4 = rtc_internal_rtc_queue;
    rtc_internal_rtc_queue = v3;

    v5 = dispatch_semaphore_create(1);
    v6 = rtc_internal_cfg_semaphore;
    rtc_internal_cfg_semaphore = v5;

    v7 = objc_opt_new();
    v8 = rtc_internal_queued_events;
    rtc_internal_queued_events = v7;
  }

  else if (v1)
  {
    *v9 = 0;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "RTCReporting.framework is unavailable", v9, 2u);
  }
}

void __rtc_internal_block_invoke_63(uint64_t a1)
{
  v1 = a1;
  v62[3] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) && [rtc_internal_queued_events count] <= 0x63)
  {
    v2 = rtc_internal_queued_events;
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(v1 + 48)];
    v62[0] = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(v1 + 50)];
    v5 = *(v1 + 32);
    v62[1] = v4;
    v62[2] = v5;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
    v7 = v6 = v1;
    [v2 addObject:v7];

    v1 = v6;
  }

  if (dispatch_semaphore_wait(rtc_internal_cfg_semaphore, 0))
  {
    if (*(v1 + 32) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __rtc_internal_block_invoke_63_cold_1();
    }
  }

  else
  {
    v8 = rtc_internal_rtc_reporter;
    v9 = [rtc_internal_queued_events count];
    if (v8)
    {
      v10 = 0x1ED7FC000;
      if (v9)
      {
        v42 = v1;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v61 = [rtc_internal_queued_events count];
          _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "processing %zu events from queue", buf, 0xCu);
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        obj = rtc_internal_queued_events;
        v11 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v52;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v52 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v51 + 1) + 8 * i);
              v16 = rtc_internal_rtc_reporter;
              v17 = [v15 objectAtIndexedSubscript:{0, v42}];
              v18 = [v17 intValue];
              v19 = [v15 objectAtIndexedSubscript:1];
              v20 = [v19 intValue];
              v21 = [v15 objectAtIndexedSubscript:2];
              [v16 sendMessageWithCategory:v18 type:v20 payload:v21 error:0];

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                __rtc_internal_block_invoke_63_cold_2(buf, v15, &v61);
              }
            }

            v12 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
          }

          while (v12);
        }

        [rtc_internal_queued_events removeAllObjects];
        v10 = 0x1ED7FC000uLL;
        rtc_internal_lastSend = dispatch_time(0, 0);
        v1 = v42;
      }

      if (*(v1 + 52) == 1)
      {
        rtc_internal_release_pending = 0;
        v22 = *(v10 + 2376);
        if (v22 <= dispatch_time(0, -10000000000))
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            *v50 = 0;
            _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "releasing RTCReporting", v50, 2u);
          }

          v23 = rtc_internal_rtc_reporter;
          rtc_internal_rtc_reporter = 0;
        }
      }

      if (rtc_internal_rtc_reporter && (rtc_internal_release_pending & 1) == 0)
      {
        rtc_internal_release_pending = 1;
        v24 = dispatch_time(*(v10 + 2376), 10000000000);
        v25 = rtc_internal_rtc_queue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __rtc_internal_block_invoke_65;
        block[3] = &unk_1E7A26EC0;
        v49 = *(v1 + 40);
        dispatch_after(v24, v25, block);
      }

      dispatch_semaphore_signal(rtc_internal_cfg_semaphore);
    }

    else if (v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "intializing RTCReporting...", buf, 2u);
      }

      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random()];
      v57[0] = getkRTCReportingSessionInfoClientType();
      v58[0] = &unk_1F241EBF0;
      v57[1] = getkRTCReportingSessionInfoClientVersion();
      v58[1] = &unk_1F241EC08;
      v57[2] = getkRTCReportingSessionInfoBatchEvent();
      v58[2] = MEMORY[0x1E695E118];
      v57[3] = getkRTCReportingSessionInfoSessionID();
      v58[3] = v26;
      v57[4] = getkRTCReportingSessionInfoContainsRealtimeEvents();
      v58[4] = MEMORY[0x1E695E110];
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:5];
      v55[0] = getkRTCReportingUserInfoClientName();
      v56[0] = @"com.apple.CA";
      v55[1] = getkRTCReportingUserInfoServiceName();
      v56[1] = *(v1 + 40);
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
      v29 = [[rtc_internal_RTCReportingClass alloc] initWithSessionInfo:v27 userInfo:v28 frameworksToCheck:0];
      v30 = rtc_internal_rtc_reporter;
      rtc_internal_rtc_reporter = v29;

      v31 = v1;
      v32 = rtc_internal_rtc_reporter;
      if (rtc_internal_rtc_reporter)
      {
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __rtc_internal_block_invoke_66;
        v44[3] = &unk_1E7A27F80;
        v45 = v26;
        v46 = *(v31 + 40);
        v47 = *(v31 + 48);
        [v32 startConfigurationWithCompletionHandler:v44];
      }

      else
      {
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v33)
        {
          __rtc_internal_block_invoke_63_cold_3(v33, v34, v35, v36, v37, v38, v39, v40);
        }

        dispatch_semaphore_signal(rtc_internal_cfg_semaphore);
      }
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

void __rtc_internal_block_invoke_66(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v4 = [*(a1 + 32) intValue];
      v15[0] = 67109120;
      v15[1] = v4;
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "configured RTCReporting with session id: %d", v15, 8u);
    }

    rtc_internal(0, *(a1 + 40), *(a1 + 48), *(a1 + 50), 0);
  }

  else
  {
    v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      __rtc_internal_block_invoke_66_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = rtc_internal_rtc_reporter;
    rtc_internal_rtc_reporter = 0;
  }

  dispatch_semaphore_signal(rtc_internal_cfg_semaphore);

  v14 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1AE53677C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id OSASandboxExtensionForPath(void *a1)
{
  if ([a1 UTF8String] && (v1 = sandbox_extension_issue_file()) != 0)
  {
    v2 = v1;
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v1];
    free(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id OSASandboxExtensionForUserSubmissionDirectory(void *a1)
{
  v1 = a1;
  v2 = [@"~/Library/Logs/DiagnosticReports/" stringByExpandingTildeInPath];
  v3 = *MEMORY[0x1E69E9BE8];
  v4 = OSASandboxExtensionForPath(v2);

  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      OSASandboxExtensionForUserSubmissionDirectory_cold_1();
    }

    if (*__error() == 1)
    {
      v6 = v1;
      AnalyticsSendEventLazy();
    }
  }

  return v4;
}

id __OSASandboxExtensionForUserSubmissionDirectory_block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = getprogname();
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = @"<unknown>";
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<unknown>";
  }

  v10[0] = @"bugType";
  v10[1] = @"progName";
  v11[0] = v6;
  if (v2)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
  }

  v11[1] = v5;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t OSASandboxConsumeExtensionNoRelease(void *a1)
{
  if ([a1 UTF8String])
  {
    v1 = sandbox_extension_consume();
    if (v1 < 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      OSASandboxConsumeExtensionNoRelease_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      OSASandboxConsumeExtensionNoRelease_cold_2();
    }

    return -1;
  }

  return v1;
}

void OSASandboxConsumeExtension(void *a1, void *a2)
{
  v3 = a2;
  v4 = OSASandboxConsumeExtensionNoRelease(a1);
  v3[2](v3);

  if ((v4 & 0x8000000000000000) == 0 && (sandbox_extension_release() & 0x80000000) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    OSASandboxConsumeExtension_cold_1();
  }
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id OSAnalyticsHelperServiceConnection()
{
  if (OSAnalyticsHelperServiceConnection_onceToken != -1)
  {
    OSAnalyticsHelperServiceConnection_cold_1();
  }

  v1 = OSAnalyticsHelperServiceConnection_connection;

  return v1;
}

void __OSAnalyticsHelperServiceConnection_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  mach_service = xpc_connection_create_mach_service("com.apple.osanalytics.osanalyticshelper", 0, 2uLL);
  v1 = OSAnalyticsHelperServiceConnection_connection;
  OSAnalyticsHelperServiceConnection_connection = mach_service;

  if (OSAnalyticsHelperServiceConnection_connection)
  {
    xpc_connection_set_event_handler(OSAnalyticsHelperServiceConnection_connection, &__block_literal_global_4);
    v2 = OSAnalyticsHelperServiceConnection_connection;
    v3 = *MEMORY[0x1E69E9840];

    xpc_connection_resume(v2);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136446210;
      v6 = "com.apple.osanalytics.osanalyticshelper";
      _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Couldn't get XPC connection to %{public}s", &v5, 0xCu);
    }

    v4 = *MEMORY[0x1E69E9840];
  }
}

void __OSAnalyticsHelperServiceConnection_block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = v2;
  if (v2 != MEMORY[0x1E69E9E18] && MEMORY[0x1B2703B90](v2) == MEMORY[0x1E69E9E98] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    string = xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E28]);
    v6 = 136446466;
    v7 = "com.apple.osanalytics.osanalyticshelper";
    v8 = 2082;
    v9 = string;
    _os_log_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Got xpc error message from %{public}s: %{public}s\n", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t mach_exception_raise(mach_port_t a1, int a2, int a3, int a4, uint64_t a5, unsigned int a6)
{
  v22 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v21 = 0;
  v20 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v16 = 2;
  v17 = a2;
  DWORD1(v18) = 1245184;
  DWORD2(v18) = a3;
  LODWORD(v19) = 1245184;
  *(&v19 + 4) = *MEMORY[0x1E69E99E0];
  HIDWORD(v19) = a4;
  if (a6 > 2)
  {
    v6 = 4294966989;
    goto LABEL_21;
  }

  __memcpy_chk();
  LODWORD(v20) = a6;
  v9 = (8 * a6) | 0x44;
  v10 = mig_get_reply_port();
  reply_port.msgh_remote_port = a1;
  reply_port.msgh_local_port = v10;
  reply_port.msgh_bits = -2147478253;
  *&reply_port.msgh_voucher_port = 0x96500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&reply_port);
    msgh_local_port = reply_port.msgh_local_port;
  }

  else
  {
    msgh_local_port = v10;
  }

  v12 = mach_msg(&reply_port, 3, v9, 0x2Cu, msgh_local_port, 0, 0);
  v6 = v12;
  if ((v12 - 268435458) <= 0xE && ((1 << (v12 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(reply_port.msgh_local_port);
    goto LABEL_21;
  }

  if (v12)
  {
    mig_dealloc_reply_port(reply_port.msgh_local_port);
    goto LABEL_21;
  }

  if (reply_port.msgh_id == 71)
  {
    v6 = 4294966988;
LABEL_20:
    mach_msg_destroy(&reply_port);
    goto LABEL_21;
  }

  if (reply_port.msgh_id != 2505)
  {
    v6 = 4294966995;
    goto LABEL_20;
  }

  v6 = 4294966996;
  if ((reply_port.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (reply_port.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (reply_port.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v6 = v18;
  if (v18)
  {
    goto LABEL_20;
  }

LABEL_21:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t mach_exception_raise_state(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v9 = MEMORY[0x1EEE9AC00]();
  memset(v36, 0, 480);
  *reply_port = 0u;
  v35 = 0u;
  *(&v35 + 1) = *MEMORY[0x1E69E99E0];
  LODWORD(v36[0]) = v15;
  if (v10 <= 2)
  {
    v16 = v14;
    v17 = v13;
    v18 = v12;
    v19 = v11;
    v20 = v10;
    v21 = v9;
    v22 = 2 * v10;
    __memcpy_chk();
    DWORD1(v36[0]) = v20;
    v23 = &reply_port[v22];
    reply_port[v22 + 10] = *v19;
    if (v17 <= 0x510)
    {
      v26 = (v23 - 4);
      memcpy(v23 + 12, v18, 4 * v17);
      *(v26 + 15) = v17;
      v27 = mig_get_reply_port();
      reply_port[2] = v21;
      reply_port[3] = v27;
      reply_port[0] = 5395;
      *&v35 = 0x96600000000;
      if (MEMORY[0x1EEE9AC50])
      {
        voucher_mach_msg_set(reply_port);
        v28 = reply_port[3];
      }

      else
      {
        v28 = v27;
      }

      v29 = mach_msg(reply_port, 3, v22 * 4 + 4 * v17 + 48, 0x1474u, v28, 0, 0);
      v24 = v29;
      if ((v29 - 268435458) <= 0xE && ((1 << (v29 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(reply_port[3]);
        return v24;
      }

      if (v29)
      {
        mig_dealloc_reply_port(reply_port[3]);
        return v24;
      }

      if (DWORD1(v35) == 71)
      {
        v24 = 4294966988;
      }

      else if (DWORD1(v35) == 2506)
      {
        if ((reply_port[0] & 0x80000000) == 0)
        {
          if (reply_port[1] - 5229 <= 0xFFFFEBBE)
          {
            if (LODWORD(v36[0]))
            {
              v30 = reply_port[2] == 0;
            }

            else
            {
              v30 = 0;
            }

            if (v30 && reply_port[1] == 36)
            {
              v24 = LODWORD(v36[0]);
            }

            else
            {
              v24 = 4294966996;
            }

            goto LABEL_30;
          }

          if (!reply_port[2])
          {
            v24 = LODWORD(v36[0]);
            if (LODWORD(v36[0]))
            {
              goto LABEL_30;
            }

            v32 = DWORD2(v36[0]);
            if (DWORD2(v36[0]) <= 0x510 && DWORD2(v36[0]) <= (reply_port[1] - 44) >> 2)
            {
              v33 = 4 * DWORD2(v36[0]);
              if (reply_port[1] == 4 * DWORD2(v36[0]) + 44)
              {
                *v19 = DWORD1(v36[0]);
                memcpy(v16, v36 + 12, v33);
                v24 = 0;
                *a9 = v32;
                return v24;
              }
            }
          }
        }

        v24 = 4294966996;
      }

      else
      {
        v24 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(reply_port);
      return v24;
    }
  }

  return 4294966989;
}

uint64_t mach_exception_raise_state_identity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, void *a10, _DWORD *a11)
{
  v11 = MEMORY[0x1EEE9AC00]();
  v68 = *MEMORY[0x1E69E9840];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  memset(&reply_port, 0, sizeof(reply_port));
  v36 = 2;
  v37 = v15;
  DWORD1(v38) = 1245184;
  DWORD2(v38) = v16;
  LODWORD(v39) = 1245184;
  *(&v39 + 4) = *MEMORY[0x1E69E99E0];
  HIDWORD(v39) = v17;
  if (v12 <= 2)
  {
    v18 = v14;
    v19 = v13;
    v20 = v12;
    v21 = v11;
    v22 = 8 * v12;
    __memcpy_chk();
    LODWORD(v40) = v20;
    v23 = &reply_port + v22;
    *(&reply_port + v22 + 68) = *v19;
    if (a9 <= 0x510)
    {
      v27 = v23 - 16;
      memcpy(v23 + 76, v18, 4 * a9);
      *(v27 + 22) = a9;
      v28 = mig_get_reply_port();
      reply_port.msgh_remote_port = v21;
      reply_port.msgh_local_port = v28;
      reply_port.msgh_bits = -2147478253;
      *&reply_port.msgh_voucher_port = 0x96700000000;
      if (MEMORY[0x1EEE9AC50])
      {
        voucher_mach_msg_set(&reply_port);
        msgh_local_port = reply_port.msgh_local_port;
      }

      else
      {
        msgh_local_port = v28;
      }

      v30 = mach_msg(&reply_port, 3, v22 + 4 * a9 + 76, 0x1474u, msgh_local_port, 0, 0);
      v24 = v30;
      if ((v30 - 268435458) <= 0xE && ((1 << (v30 - 2)) & 0x4003) != 0)
      {
        mig_put_reply_port(reply_port.msgh_local_port);
        goto LABEL_4;
      }

      if (v30)
      {
        mig_dealloc_reply_port(reply_port.msgh_local_port);
        goto LABEL_4;
      }

      if (reply_port.msgh_id == 71)
      {
        v24 = 4294966988;
      }

      else if (reply_port.msgh_id == 2507)
      {
        if ((reply_port.msgh_bits & 0x80000000) == 0)
        {
          if (reply_port.msgh_size - 5229 <= 0xFFFFEBBE)
          {
            if (v38)
            {
              v31 = reply_port.msgh_remote_port == 0;
            }

            else
            {
              v31 = 0;
            }

            if (v31 && reply_port.msgh_size == 36)
            {
              v24 = v38;
            }

            else
            {
              v24 = 4294966996;
            }

            goto LABEL_30;
          }

          if (!reply_port.msgh_remote_port)
          {
            v24 = v38;
            if (v38)
            {
              goto LABEL_30;
            }

            v33 = DWORD2(v38);
            if (DWORD2(v38) <= 0x510 && DWORD2(v38) <= (reply_port.msgh_size - 44) >> 2)
            {
              v34 = 4 * DWORD2(v38);
              if (reply_port.msgh_size == 4 * DWORD2(v38) + 44)
              {
                *v19 = DWORD1(v38);
                memcpy(a10, &v38 + 12, v34);
                v24 = 0;
                *a11 = v33;
                goto LABEL_4;
              }
            }
          }
        }

        v24 = 4294966996;
      }

      else
      {
        v24 = 4294966995;
      }

LABEL_30:
      mach_msg_destroy(&reply_port);
      goto LABEL_4;
    }
  }

  v24 = 4294966989;
LABEL_4:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t rc_sync_request(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  memset(&msg_4[16], 0, 32);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  *&msg_4[36] = a3;
  reply_port = mig_get_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = reply_port;
  msg = 5395;
  *&msg_4[12] = 0x96B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = *&msg_4[8];
  }

  else
  {
    v7 = reply_port;
  }

  v8 = mach_msg(&msg, 3, 0x30u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (v8)
    {
      mig_dealloc_reply_port(*&msg_4[8]);
      return v9;
    }

    if (*&msg_4[16] == 71)
    {
      v9 = 4294966988;
    }

    else if (*&msg_4[16] == 2511)
    {
      if ((msg & 0x80000000) == 0)
      {
        if (*msg_4 == 44)
        {
          if (!*&msg_4[4])
          {
            v9 = *&msg_4[28];
            if (!*&msg_4[28])
            {
              *a4 = *&msg_4[32];
              return v9;
            }

            goto LABEL_24;
          }
        }

        else if (*msg_4 == 36)
        {
          if (*&msg_4[4])
          {
            v10 = 1;
          }

          else
          {
            v10 = *&msg_4[28] == 0;
          }

          if (v10)
          {
            v9 = 4294966996;
          }

          else
          {
            v9 = *&msg_4[28];
          }

          goto LABEL_24;
        }
      }

      v9 = 4294966996;
    }

    else
    {
      v9 = 4294966995;
    }

LABEL_24:
    mach_msg_destroy(&msg);
    return v9;
  }

  mig_put_reply_port(*&msg_4[8]);
  return v9;
}

id WatchdogExitReasonHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WatchdogExitReasonHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchdogExitReasonHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WatchdogExitReasonHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchdogExitReasonHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t _s11OSAnalytics24WatchdogExitReasonHelperC19descriptionFromCodeySSSgs5Int32VFZ_0(int a1)
{
  result = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0xD00000000000003ALL;
    }

    else if (a1 == 4)
    {
      return 0xD00000000000004DLL;
    }
  }

  else if (a1 == 1)
  {
    return 0xD000000000000020;
  }

  else if (a1 == 2)
  {
    return 0xD00000000000002ELL;
  }

  return result;
}

uint64_t sub_1AE538A6C()
{
  v0 = sub_1AE53FB14();
  __swift_allocate_value_buffer(v0, qword_1EB5DFB10);
  __swift_project_value_buffer(v0, qword_1EB5DFB10);
  return sub_1AE53FB04();
}

uint64_t sub_1AE538AE8()
{
  swift_beginAccess();
  v1 = v0[2];

  v2 = _s11OSAnalytics9IPSReportC10jsonToDatay10Foundation0E0VSgSDySSypGFZ_0();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    return 0;
  }

  swift_beginAccess();
  v5 = v0[6];
  if (v5 >> 60 == 15)
  {
    sub_1AE4FF07C(v2, v4);
    return 0;
  }

  v7 = v0[5];
  sub_1AE4FE6BC(v7, v0[6]);
  v8 = sub_1AE538C98(10, 0xE100000000000000);
  v10 = v9;
  v25 = v2;
  v26 = v4;
  v11 = MEMORY[0x1E6969080];
  v12 = MEMORY[0x1E6969078];
  v23 = MEMORY[0x1E6969080];
  v24 = MEMORY[0x1E6969078];
  v21 = v8;
  v22 = v9;
  v13 = __swift_project_boxed_opaque_existential_1(&v21, MEMORY[0x1E6969080]);
  v14 = *v13;
  v15 = v13[1];
  sub_1AE4FF13C(v2, v4);
  sub_1AE4FE6BC(v8, v10);
  sub_1AE53A2E4(v14, v15);
  sub_1AE4FE710(v8, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  v16 = v25;
  v17 = v26;
  v27 = v25;
  v28 = v26;
  v23 = v11;
  v24 = v12;
  v21 = v7;
  v22 = v5;
  v18 = __swift_project_boxed_opaque_existential_1(&v21, v11);
  v19 = *v18;
  v20 = v18[1];
  sub_1AE4FE6BC(v16, v17);
  sub_1AE53A2E4(v19, v20);
  sub_1AE4FE710(v16, v17);
  sub_1AE4FF07C(v2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  return v27;
}

uint64_t sub_1AE538C98(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DFB40, &qword_1AE543610);
  if (swift_dynamicCast())
  {
    sub_1AE53AF90(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1AE53FA34();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1AE53AEC0(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1AE53FC14();
  }

  sub_1AE539CC4(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1AE53A940(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00]();
  v10 = sub_1AE539D8C(sub_1AE53AF28);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1AE53FAB4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1AE53A4B0(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1AE53FB64();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1AE53FB94();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1AE53FC14();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1AE53A4B0(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1AE53FB74();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1AE53FAC4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1AE53FAC4();
    sub_1AE4FF07C(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1AE4FF07C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1AE4FE6BC(*&__src[0], *(&__src[0] + 1));

  sub_1AE4FE710(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

uint64_t sub_1AE5391A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  v5 = _s11OSAnalytics9IPSReportC10jsonToDatay10Foundation0E0VSgSDySSypGFZ_0();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t sub_1AE539214()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  v2 = _s11OSAnalytics9IPSReportC10jsonToDatay10Foundation0E0VSgSDySSypGFZ_0();

  return v2;
}

uint64_t sub_1AE539284(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_1AE5392E4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t sub_1AE539344()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_1AE539390(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  sub_1AE4FF13C(v2, v3);
  return sub_1AE4FF07C(v5, v6);
}

uint64_t sub_1AE539400(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_1AE4FF07C(v5, v6);
}

uint64_t IPSReport.__allocating_init(reportData:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_1AE4FE444();
  if (v6 >> 60 == 15)
  {
    sub_1AE4FE710(a1, a2);
    return 0;
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
    sub_1AE4FE6BC(v5, v6);
    sub_1AE4FE6BC(v12, v13);
    sub_1AE4FE710(v12, v13);
    sub_1AE4FE6BC(v10, v11);
    sub_1AE4FE6BC(v12, v13);
    sub_1AE4FE710(v10, v11);
    v9 = (*(v2 + 208))(v10, v11, v12, v13);

    sub_1AE4FF090(v10, v11, v12, v13);
    sub_1AE4FE710(a1, a2);
    if (v9)
    {
    }
  }

  return v9;
}

uint64_t IPSReport.__allocating_init(header:bodyStream:)(uint64_t a1, unint64_t a2, FILE *a3)
{
  v6 = sub_1AE53AB3C(a3);
  if (v7 >> 60 == 15)
  {
    if (qword_1EB5DFB08 != -1)
    {
      swift_once();
    }

    v8 = sub_1AE53FB14();
    __swift_project_value_buffer(v8, qword_1EB5DFB10);
    v9 = sub_1AE53FAF4();
    v10 = sub_1AE53FBD4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1AE4F7000, v9, v10, "Unable to convert body stream to data", v11, 2u);
      MEMORY[0x1B2703850](v11, -1, -1);
    }

    sub_1AE4FE710(a1, a2);
  }

  else
  {
    result = (*(v3 + 208))(a1, a2, v6, v7);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void *IPSReport.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_1AE4FF07C(v0[5], v0[6]);
  return v0;
}

char *sub_1AE53971C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DFB30, &qword_1AE543600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1AE539810(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1AE5398DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1AE4FEE04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1AE5398DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1AE5399E8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1AE53FC14();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1AE5399E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AE539A34(a1, a2);
  sub_1AE539B64(&unk_1F2410DD8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1AE539A34(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1AE539C50(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1AE53FC14();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1AE53FB64();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1AE539C50(v10, 0);
        result = sub_1AE53FBF4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1AE539B64(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1AE53971C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1AE539C50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DFB30, &qword_1AE543600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1AE539CC4@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1AE53A888(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1AE53FA24();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1AE53F9D4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1AE53FAA4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1AE539D8C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1AE4FE710(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1AE4FE710(v6, v5);
    *v3 = xmmword_1AE543580;
    sub_1AE4FE710(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1AE53F9E4() && __OFSUB__(v6, sub_1AE53FA14()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_1AE53FA24();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1AE53F9C4();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1AE53A230(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1AE4FE710(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1AE543580;
    sub_1AE4FE710(0, 0xC000000000000000);
    sub_1AE53FA74();
    result = sub_1AE53A230(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *sub_1AE53A130@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1AE53A888(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1AE53A9E0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1AE53AA5C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1AE53A1C4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1AE53A230(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1AE53F9E4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1AE53FA14();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1AE53FA04();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1AE53A2E4(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_1AE53FAC4();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1AE53A41C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE53A41C(uint64_t a1, uint64_t a2)
{
  result = sub_1AE53F9E4();
  if (!result || (result = sub_1AE53FA14(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1AE53FA04();
      return sub_1AE53FAC4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE53A4B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1AE53FBA4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B2702450](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1AE53A52C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_1AE53FC04();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s11OSAnalytics9IPSReportC10jsonToDatay10Foundation0E0VSgSDySSypGFZ_0()
{
  v21[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1AE53FB24();
  v21[0] = 0;
  v2 = [v0 dataWithJSONObject:v1 options:0 error:v21];

  v3 = v21[0];
  if (v2)
  {
    v4 = sub_1AE53FAE4();
  }

  else
  {
    v5 = v3;
    v6 = sub_1AE53FA44();

    swift_willThrow();
    if (qword_1EB5DFB08 != -1)
    {
      swift_once();
    }

    v7 = sub_1AE53FB14();
    __swift_project_value_buffer(v7, qword_1EB5DFB10);
    v8 = v6;

    v9 = sub_1AE53FAF4();
    v10 = sub_1AE53FBD4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21[0] = v12;
      *v11 = 136315394;
      swift_getErrorValue();
      v13 = sub_1AE53FC34();
      v15 = sub_1AE539810(v13, v14, v21);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_1AE53FB34();
      v18 = sub_1AE539810(v16, v17, v21);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_1AE4F7000, v9, v10, "JSON ERROR: %s, payload:\n%s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2703850](v12, -1, -1);
      MEMORY[0x1B2703850](v11, -1, -1);
    }

    else
    {
    }

    v4 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v4;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1AE53A888(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE53A940(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_1AE53FA24();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1AE53F9F4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1AE53FAA4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1AE53A9E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1AE53FA24();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1AE53F9D4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1AE53FAA4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1AE53AA5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1AE53FA24();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1AE53F9D4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1AE53AB3C(FILE *a1)
{
  v2 = sub_1AE53FBB4();
  *(v2 + 16) = 1024;
  bzero((v2 + 32), 0x400uLL);
  while (1)
  {
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AE53971C(0, *(v2 + 16), 0, v2);
      }

      v3 = fread((v2 + 32), 1uLL, 0x400uLL, a1);
      if (v3 < 1)
      {
        break;
      }

      v4 = v3;
      sub_1AE53FAC4();
    }

    while (v4 > 0x3FF);
    if (feof(a1))
    {
      break;
    }

    if (ferror(a1))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DFB28, &qword_1AE5435F8);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1AE543590;
      *(v5 + 56) = MEMORY[0x1E69E6158];
      *(v5 + 32) = 0xD000000000000019;
      *(v5 + 40) = 0x80000001AE5502C0;
      sub_1AE53FC44();

      sub_1AE4FE710(0, 0xC000000000000000);
      return 0;
    }
  }

  return 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1AE53AEC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DFB48, &qword_1AE543618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1AE53AF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1AE53A1C4(sub_1AE53AFA8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1AE53AF90(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1AE53AFCC()
{
  result = sub_1AE53AFF0();
  byte_1EB5DF980 = result & 1;
  return result;
}

uint64_t sub_1AE53AFF0()
{
  v0 = sub_1AE53FB44();
  v1 = MGCopyAnswer();

  if (v1 && (swift_dynamicCast() & 1) != 0 && (v5 & 1) != 0)
  {
    return 0;
  }

  v3 = sub_1AE53FB44();
  v4 = MGCopyAnswer();

  if (v4 && (swift_dynamicCast() & 1) != 0)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

uint64_t static DeviceState.isCustomerFused.getter()
{
  if (qword_1EB5DF978 != -1)
  {
    swift_once();
  }

  return byte_1EB5DF980;
}

id DeviceState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceState.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceState();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void SimulateCrash_cold_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void matchSelector_cold_1(char a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = " nope";
  v5 = 136315650;
  if (a1)
  {
    v3 = "MATCH";
  }

  v6 = v3;
  v7 = 2112;
  v8 = a2;
  v9 = 2112;
  v10 = a3;
  _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%s: %@ vs %@", &v5, 0x20u);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t getACAccountTypeIdentifierExchange_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __37__OSASystemConfiguration_internalKey__block_invoke_370_cold_2(v0);
}

void __OSASanitizePath_block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 componentsJoinedByString:@"\n"];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void getVolumes_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = [a2 componentsJoinedByString:@"\n"];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __OSASanitizePath_block_invoke_47_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*(*(a1 + 40) + 8) + 40);
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void __OSASanitizePath_block_invoke_47_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void logForAppleCare_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_0(&dword_1AE4F7000, MEMORY[0x1E69E9C10], v2, "AppleCareSupport: event %@", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

void purgeR3Logs_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1AE4F7000, MEMORY[0x1E69E9C10], a3, "AppleCareSupport: scanning '%s'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __openR3_block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_1AE4F7000, MEMORY[0x1E69E9C10], a3, "AppleCareSupport: existing log is valid, %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void OSASafeOpen_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = __error();
  v3 = strerror(*v2);
  v5 = 136446466;
  v6 = a1;
  v7 = 2082;
  v8 = v3;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to safely open '%{public}s': %{public}s", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void OSASafeOpen_cold_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to stat '%{public}s'", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void OSASafeOpen_cold_3(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = a1;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "'%{public}s' is not safe because it has at least one hard link", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void OSASafeCreateDirectory_cold_1(uint8_t *a1, void *a2, void *a3)
{
  v5 = [a2 path];
  *a1 = 138543362;
  *a3 = v5;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set file protection class while creating %{public}@", a1, 0xCu);
}

void CRCopyAnonHostUUIDPath_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  v2 = strerror(*v1);
  v4[0] = 67109378;
  v4[1] = v0;
  v5 = 2080;
  v6 = v2;
  _os_log_error_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to determine UUID for host. Error: %d %s", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void __rtc_internal_block_invoke_63_cold_2(uint8_t *a1, void *a2, void *a3)
{
  v5 = [a2 objectAtIndexedSubscript:2];
  *a1 = 138412290;
  *a3 = v5;
  _os_log_debug_impl(&dword_1AE4F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "sent RTCReporting %@", a1, 0xCu);
}

void OSASandboxExtensionForUserSubmissionDirectory_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_1_2(&dword_1AE4F7000, MEMORY[0x1E69E9C10], v2, "Error issuing sandbox extension: %i (%s)", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

void OSASandboxConsumeExtensionNoRelease_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  v1 = *__error();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_1AE4F7000, MEMORY[0x1E69E9C10], v2, "Failed to consume sandbox extension: %s (%i)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void OSASandboxConsumeExtension_cold_1()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = __error();
  strerror(*v0);
  v1 = *__error();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_1AE4F7000, MEMORY[0x1E69E9C10], v2, "Failed to release sandbox extension: %s (%i)", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}