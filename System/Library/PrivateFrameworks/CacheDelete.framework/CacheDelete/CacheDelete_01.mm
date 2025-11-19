void CDSimulateCrash(uint64_t a1, void *a2)
{
  v6 = a2;
  if (qword_1ED76A058 != -1)
  {
    dispatch_once(&qword_1ED76A058, &__block_literal_global_36);
  }

  v3 = dlsym(qword_1ED76A050, "SimulateCrash");
  v4 = v6;
  if (v3)
  {
    v5 = getpid();
    v3(v5, a1, v6);
    v4 = v6;
  }
}

void *__CDSimulateCrash_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
  qword_1ED76A050 = result;
  return result;
}

uint64_t traverse_dir_with_state(void *a1, void *a2, _BYTE *a3, void *a4)
{
  v101 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = v7;
  v72 = v8;
  v10 = a4;
  if (v7)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v69 = a3;
    v11 = v72;
    v12 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:2];
    if (!v11)
    {
      v11 = objc_opt_new();
    }

    log = v11;
    v86 = 0xA200140900000005;
    v87 = 0;
    v88 = 0x500000002;
    v89 = 512;
    v13 = malloc_type_malloc(0x8000uLL, 0x940D7255uLL);
    [v12 addPointer:{strdup(objc_msgSend(v9, "fileSystemRepresentation"))}];
    if (![v12 count])
    {
      v14 = 0;
      v65 = 0;
      goto LABEL_118;
    }

    v68 = v9;
    v14 = 0;
    v75 = 0;
    v70 = 0;
    v78 = v12;
    v71 = v13;
    while (1)
    {
      v15 = objc_autoreleasePoolPush();
      memset(&v85, 0, sizeof(v85));
      v16 = [v12 pointerAtIndex:0];
      [v12 removePointerAtIndex:0];
      v17 = open(v16, 256);
      if (v17 < 0)
      {
        v95 = 0;
        st_mtimespec = 0;
        v94 = 0u;
        *&__str[16] = 0u;
        v92 = 0u;
        *__str = 0u;
        *&__str[16] = *__error();
        v20 = CDGetLogHandle("client");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v58 = strerror(*&__str[16]);
          *v96 = 136315394;
          *&v96[4] = v16;
          *&v96[12] = 2080;
          *&v96[14] = v58;
          _os_log_debug_impl(&dword_1BA7F1000, v20, OS_LOG_TYPE_DEBUG, "Failed to open directory %s : %s", v96, 0x16u);
        }

        if (v10)
        {
          v10[2](v10, v16, __str);
        }

        goto LABEL_94;
      }

      v18 = v17;
      if (fstat(v17, &v85))
      {
        break;
      }

      v21 = v85.st_mode & 0xF000;
      v22 = 0uLL;
      if (v21 != 40960 && v21 != 0x8000)
      {
        if (v21 == 0x4000)
        {
          v81 = v16;
          v82 = 0;
          v80 = v18;
          v79 = v15;
          while (1)
          {
            context = objc_autoreleasePoolPush();
            v23 = getattrlistbulk(v18, &v86, v13, 0x8000uLL, 0);
            if (v23 == -1)
            {
              v60 = CDGetLogHandle("client");
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                v63 = __error();
                v64 = strerror(*v63);
                *__str = 134218498;
                *&__str[4] = v82;
                *&__str[12] = 2080;
                *&__str[14] = v16;
                *&__str[22] = 2080;
                *&__str[24] = v64;
                _os_log_error_impl(&dword_1BA7F1000, v60, OS_LOG_TYPE_ERROR, "getattrlistbulk on entry %llu in %s returned error %s", __str, 0x20u);
              }

LABEL_109:
              objc_autoreleasePoolPop(context);
              goto LABEL_89;
            }

            v24 = v23;
            if (!v23)
            {
              goto LABEL_109;
            }

            v76 = v14;
            if (v23 >= 1)
            {
              break;
            }

LABEL_83:
            objc_autoreleasePoolPop(context);
            v12 = v78;
            v14 = v76;
            v13 = v71;
            v16 = v81;
          }

          while (2)
          {
            v84 = 0;
            v83 = 0uLL;
            v26 = *v13;
            v25 = v13[1];
            v27 = v13[3];
            v28 = v13[4];
            v29 = v13[5];
            if ((v25 & 0x20000000) != 0)
            {
              if (v13[6])
              {
                v59 = CDGetLogHandle("client");
                v16 = v81;
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  v61 = __error();
                  v62 = strerror(*v61);
                  *__str = 136315650;
                  *&__str[4] = v62;
                  *&__str[12] = 2048;
                  *&__str[14] = v82;
                  *&__str[22] = 2080;
                  *&__str[24] = v81;
                  _os_log_error_impl(&dword_1BA7F1000, v59, OS_LOG_TYPE_ERROR, "Got error %s while processing entry %llu in %s", __str, 0x20u);
                }

                v12 = v78;
                v14 = v76;
                v13 = v71;
                goto LABEL_109;
              }

              v30 = v13 + 7;
            }

            else
            {
              v30 = v13 + 6;
            }

            v31 = v10;
            if (v25)
            {
              v32 = v30 + *v30;
              v30 += 2;
              if ((v25 & 8) == 0)
              {
                goto LABEL_34;
              }

LABEL_31:
              v33 = *v30++;
              v34 = v33 == 2;
              if ((v25 & 0x400) != 0)
              {
LABEL_35:
                v35 = *v30;
                v30 += 4;
                v84 = v35;
              }
            }

            else
            {
              v32 = 0;
              if ((v25 & 8) != 0)
              {
                goto LABEL_31;
              }

LABEL_34:
              v34 = 0;
              if ((v25 & 0x400) != 0)
              {
                goto LABEL_35;
              }
            }

            if ((v25 & 0x1000) != 0)
            {
              v36 = *v30;
              v30 += 4;
              v83 = v36;
            }

            if ((v25 & 0x2000000) != 0)
            {
              v38 = *v30;
              v30 += 2;
              v37 = v38;
              if (!v32)
              {
LABEL_98:
                v54 = CDGetLogHandle("client");
                v16 = v81;
                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  *__str = 134218242;
                  *&__str[4] = v82;
                  *&__str[12] = 2080;
                  *&__str[14] = v81;
                  _os_log_error_impl(&dword_1BA7F1000, v54, OS_LOG_TYPE_ERROR, "Failed to get name for item %llu in %s; not counting it or its children\n", __str, 0x16u);
                }

                v10 = v31;
                v12 = v78;
                v15 = v79;
                v14 = v76;
                v13 = v71;
                v18 = v80;
                goto LABEL_109;
              }
            }

            else
            {
              v37 = 0;
              if (!v32)
              {
                goto LABEL_98;
              }
            }

            if (v34)
            {
              *v96 = 0;
              asprintf(v96, "%s/%s", v81, v32);
              v10 = v31;
              if ((v27 & 2) != 0 && !v31 && !*v30)
              {
                free(*v96);
                v18 = v80;
                goto LABEL_80;
              }

              v18 = v80;
              if (v10)
              {
                v95 = 0;
                memset(__str, 0, 24);
                v92 = 0u;
                __str[0] = 1;
                st_mtimespec = v84;
                v94 = v83;
                *&__str[24] = v37;
                if (!(v10[2])(v10, *v96, __str))
                {
                  free(*v96);
LABEL_105:
                  v12 = v78;
                  v15 = v79;
                  v14 = v76;
                  v13 = v71;
                  v16 = v81;
                  goto LABEL_109;
                }

                v39 = v82;
                if (__str[1] == 1)
                {
                  [v78 addPointer:*v96];
                }

                else
                {
                  free(*v96);
                }

LABEL_81:
                v82 = v39 + 1;
LABEL_82:
                v13 = (v13 + v26);
                --v24;
                v15 = v79;
                if (!v24)
                {
                  goto LABEL_83;
                }

                continue;
              }

              [v78 addPointer:*v96];
              goto LABEL_80;
            }

            break;
          }

          v100 = 0;
          v98 = 0;
          v99 = 0uLL;
          v97 = 0uLL;
          memset(v96, 0, sizeof(v96));
          bzero(__str, 0x400uLL);
          if (v28)
          {
            v44 = *v30++;
            v40 = v44;
            if ((v28 & 4) == 0)
            {
              goto LABEL_56;
            }

LABEL_50:
            v42 = *v30;
            v30 += 2;
            v41 = v42;
            if ((v29 & 0x200) != 0)
            {
              goto LABEL_51;
            }

LABEL_57:
            v43 = 1;
          }

          else
          {
            v40 = 0;
            if ((v28 & 4) != 0)
            {
              goto LABEL_50;
            }

LABEL_56:
            v41 = 0;
            if ((v29 & 0x200) == 0)
            {
              goto LABEL_57;
            }

LABEL_51:
            v43 = (*v30 & 8) == 0;
          }

          if (snprintf(__str, 0x400uLL, "%s/%s", v81, v32) >= 1024)
          {
            v45 = CDGetLogHandle("client");
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = v81;
              *&buf[12] = 2080;
              *&buf[14] = v32;
              _os_log_error_impl(&dword_1BA7F1000, v45, OS_LOG_TYPE_ERROR, "path too long: %s/%s", buf, 0x16u);
            }

            v10 = v31;
            v18 = v80;
            goto LABEL_82;
          }

          *buf = 0;
          *&buf[8] = 0;
          fsctl(__str, 0x40104A0EuLL, buf, 0);
          v97 = *buf;
          v46 = *buf;
          v47 = (v40 - 1);
          v77 = v40;
          if (v40 == 1)
          {
            if (*buf)
            {
              v48 = v41;
            }

            else
            {
              v48 = v41;
              if (v43)
              {
                v51 = v41;
              }

              else
              {
                v51 = 0;
              }

              v76 += v51;
            }
          }

          else
          {
            v48 = v41;
            if (([log containsIndex:v37]& 1) != 0)
            {
              v49 = v75 - 1;
            }

            else
            {
              if (v46 == 0 && v43)
              {
                v50 = v41;
              }

              else
              {
                v50 = 0;
              }

              v70 += v50;
              [log addIndex:v37];
              v49 = v75 + v47;
            }

            v75 = v49;
          }

          v10 = v31;
          v18 = v80;
          if (v10)
          {
            *&v96[8] = v48;
            v98 = v84;
            v99 = v83;
            *&v96[20] = v77;
            *&v96[24] = v37;
            LOBYTE(v100) = !v43;
            if (!(v10[2])(v10, __str, v96))
            {
              goto LABEL_105;
            }
          }

LABEL_80:
          v39 = v82;
          goto LABEL_81;
        }

        v52 = CDGetLogHandle("client");
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          *__str = 136315138;
          *&__str[4] = v16;
          _os_log_debug_impl(&dword_1BA7F1000, v52, OS_LOG_TYPE_DEBUG, "%s is not a file, link or directory, skipping.", __str, 0xCu);
        }

        v22 = 0uLL;
      }

      *__str = v22;
      *&__str[20] = DWORD1(v22);
      v95 = 0;
      v94 = v22;
      v92 = v22;
      v14 += v85.st_blocks << 9;
      *&__str[8] = v14;
      *&__str[16] = 20;
      st_mtimespec = v85.st_mtimespec;
      *&__str[24] = v85.st_ino;
      if (v10)
      {
        goto LABEL_88;
      }

LABEL_89:
      if (fcntl(v18, 84))
      {
        v53 = CDGetLogHandle("client");
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v56 = __error();
          v57 = strerror(*v56);
          *__str = 136315394;
          *&__str[4] = v16;
          *&__str[12] = 2080;
          *&__str[14] = v57;
          _os_log_error_impl(&dword_1BA7F1000, v53, OS_LOG_TYPE_ERROR, "Unable to recycle fd for %s: %s", __str, 0x16u);
        }
      }

      close(v18);
LABEL_94:
      if (v16)
      {
        free(v16);
      }

      objc_autoreleasePoolPop(v15);
      if (![v12 count])
      {
        if (v75)
        {
          v9 = v68;
          if (v69)
          {
            *v69 = 1;
          }

          goto LABEL_119;
        }

        v9 = v68;
        v65 = v70;
LABEL_118:
        v14 += v65;
LABEL_119:
        free(v13);

        goto LABEL_120;
      }
    }

    v95 = 0;
    st_mtimespec = 0;
    v94 = 0u;
    *&__str[16] = 0u;
    v92 = 0u;
    *__str = 0u;
    *&__str[16] = *__error();
    v19 = CDGetLogHandle("client");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v55 = strerror(*&__str[16]);
      *v96 = 136315394;
      *&v96[4] = v16;
      *&v96[12] = 2080;
      *&v96[14] = v55;
      _os_log_debug_impl(&dword_1BA7F1000, v19, OS_LOG_TYPE_DEBUG, "fstat failed for %s : %s", v96, 0x16u);
    }

    if (!v10)
    {
      goto LABEL_89;
    }

LABEL_88:
    v10[2](v10, v16, __str);
    goto LABEL_89;
  }

  log = CDGetLogHandle("client");
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *__str = 0;
    _os_log_error_impl(&dword_1BA7F1000, log, OS_LOG_TYPE_ERROR, "path is nil", __str, 2u);
  }

  v14 = 0;
LABEL_120:

  v66 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t did_fast_size_directory(void *a1, _BYTE *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13[0] = 2;
  v13[1] = 1;
  if (fsctl([v3 fileSystemRepresentation], 0xC1104A71uLL, v13, 0))
  {
    v4 = *__error();
    if (a2)
    {
      *a2 = 0;
    }

    if (v4 == 2)
    {
      v6 = 0;
    }

    else
    {
      if (v4 != 45)
      {
        v5 = CDGetLogHandle("client");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v9 = 136315394;
          v10 = [v3 UTF8String];
          v11 = 2080;
          v12 = strerror(v4);
          _os_log_error_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_ERROR, "APFSIOC_DIR_STATS_OP : DIR_STATS_OP_GET failed for %s : %s", &v9, 0x16u);
        }
      }

      if (a2)
      {
        *a2 = 0;
      }

      v6 = traverse_dir_with_state(v3, 0, 0, 0);
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 1;
    }

    v6 = v17;
    if ((v14 & 3) != 0)
    {
      v6 = v17 - (v18 + *(&v17 + 1));
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t diskUsageList(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __diskUsageList_block_invoke;
  v7[3] = &unk_1E7F02680;
  v8 = v3;
  v4 = v3;
  v5 = traverse_dir_with_state(a1, 0, 0, v7);

  return v5;
}

uint64_t __diskUsageList_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:*(a3 + 8)];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }

  if (*a3 == 1)
  {
    *(a3 + 1) = 1;
  }

  return 1;
}

uint64_t removefile_error_callback(_removefile_state *a1, char *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  memset(&v31, 0, sizeof(v31));
  if (stat(a2, &v31))
  {
    v4 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      v5 = 1;
      goto LABEL_4;
    }

    v24 = __error();
    v25 = strerror(*v24);
    *buf = 136315394;
    *v33 = a2;
    *&v33[8] = 2080;
    *&v33[10] = v25;
    v21 = "removefile_error_callback stat failed for %s : %s";
    v22 = v4;
    v23 = 22;
LABEL_23:
    _os_log_error_impl(&dword_1BA7F1000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    goto LABEL_3;
  }

  dst = 0;
  v11 = removefile_state_get(a1, 5u, &dst);
  v12 = CDGetLogHandle("client");
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (v11)
  {
    if (v13)
    {
      *buf = 136315138;
      *v33 = a2;
      v14 = "removefile_error_callback for %s : unknown error\n";
      v15 = v12;
      v16 = 12;
LABEL_25:
      _os_log_error_impl(&dword_1BA7F1000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    }
  }

  else if (v13)
  {
    v26 = strerror(dst);
    *buf = 136315650;
    *v33 = a2;
    *&v33[8] = 2080;
    *&v33[10] = v26;
    *&v33[18] = 1024;
    *&v33[20] = dst;
    v14 = "removefile_error_callback for %s : %s (%d)\n";
    v15 = v12;
    v16 = 28;
    goto LABEL_25;
  }

  if ((~v31.st_mode & 0x140) != 0 && chmod(a2, v31.st_mode | 0x140))
  {
    v17 = CDGetLogHandle("client");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v27 = v31.st_mode | 0x100;
      v28 = __error();
      v29 = strerror(*v28);
      *buf = 67109634;
      *v33 = v27;
      *&v33[4] = 2080;
      *&v33[6] = a2;
      *&v33[14] = 2080;
      *&v33[16] = v29;
      _os_log_error_impl(&dword_1BA7F1000, v17, OS_LOG_TYPE_ERROR, "chmod 0x%04x for %s failed: %s", buf, 0x1Cu);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if ((v31.st_flags & 0x60006) != 0)
  {
    if (chflags(a2, v31.st_flags & 0xFFF9FFF9))
    {
      v4 = CDGetLogHandle("client");
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_3;
      }

      st_flags = v31.st_flags;
      v19 = __error();
      v20 = strerror(*v19);
      *buf = 67109634;
      *v33 = st_flags;
      *&v33[4] = 2080;
      *&v33[6] = a2;
      *&v33[14] = 2080;
      *&v33[16] = v20;
      v21 = "chflags 0x%04x for %s failed: %s";
      v22 = v4;
      v23 = 28;
      goto LABEL_23;
    }

    v5 = 0;
  }

LABEL_4:
  v6 = CDGetLogHandle("client");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = __error();
    v8 = strerror(*v7);
    *buf = 136315650;
    *v33 = v8;
    *&v33[8] = 1024;
    *&v33[10] = v5;
    *&v33[14] = 2080;
    *&v33[16] = a2;
    _os_log_impl(&dword_1BA7F1000, v6, OS_LOG_TYPE_DEFAULT, "removefile_error_callback got: %s, returning: %d for %s", buf, 0x1Cu);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t getDevBSDForUpdateVolume()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __getDevBSDForUpdateVolume_block_invoke;
  v2[3] = &unk_1E7F02DB8;
  v2[4] = &v3;
  getfsstat_b(396, v2);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BA814D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __getDevBSDForUpdateVolume_block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (realpath_DARWIN_EXTSN((a2 + 88), v7) && !strcmp("/private/var/MobileSoftwareUpdate", (a2 + 88)))
  {
    v5 = strdup((a2 + 1112));
    result = 0;
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  else
  {
    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getReservedSizeFromUpdateVolume()
{
  v18 = *MEMORY[0x1E69E9840];
  result = getDevBSDForUpdateVolume();
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    v2 = APFSExtendedSpaceInfo();
    if (v2)
    {
      v3 = v2;
      v4 = CDGetLogHandle("client");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = v1;
        v16 = 1024;
        LODWORD(v17) = v3;
        _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "failed to get space information about volume %s: %d\n", buf, 0x12u);
      }

      goto LABEL_14;
    }

    Value = CFDictionaryGetValue(0, @"fs_reserve");
    if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFNumberGetTypeID()))
    {
      CFNumberGetValue(v6, kCFNumberSInt64Type, &valuePtr);
      v8 = CDGetLogHandle("client");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = v1;
        v16 = 2048;
        v17 = valuePtr;
        v9 = "current reserved size %s: %lld\n";
        v10 = v8;
        v11 = 22;
LABEL_12:
        _os_log_impl(&dword_1BA7F1000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }

    else
    {
      v8 = CDGetLogHandle("client");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = v1;
        v9 = "failed to get kAPFSVolumeSpaceInfoReserveKey for %s\n";
        v10 = v8;
        v11 = 12;
        goto LABEL_12;
      }
    }

LABEL_14:
    free(v1);
    result = valuePtr;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

id getLocalVolumeUUIDs()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = getLocalVolumes();
  v2 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = VolUUID([v6 UTF8String]);
        v8 = v7;
        if (v7)
        {
          v9 = [v7 UUIDString];
          [v0 addObject:v9];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v0;
}

id getAllVolumes()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = CDVEnumerationFlagsAll;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __getAllVolumes_block_invoke;
  v4[3] = &unk_1E7F02DE0;
  v2 = v0;
  v5 = v2;
  getfsstat_b(v1, v4);

  return v2;
}

uint64_t __getAllVolumes_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2 + 88];
  [v2 addObject:v3];

  return 1;
}

__CFString *thresholdKeyForUrgency(int a1)
{
  v1 = @"DESIRED_DISK_THRESHOLD";
  if (a1 == 3)
  {
    v1 = @"LOW_DISK_THRESHOLD";
  }

  if (a1 == 4)
  {
    return @"VERY_LOW_DISK_THRESHOLD";
  }

  else
  {
    return v1;
  }
}

uint64_t paddingForVolume(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v2 = [CacheDeleteVolume volumeWithPath:v1];

  if (v2)
  {
    v3 = [v2 thresholds];
    v4 = [v3 objectForKeyedSubscript:@"DESIRED_DISK_THRESHOLD"];
    v5 = [v3 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME_SIZE"];
    if ([v5 unsignedLongLongValue] <= 0x40000000)
    {
      v6 = 0;
    }

    else
    {
      v6 = 262144000;
    }

    v7 = v6 + [v4 unsignedLongLongValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id lowSpaceVolumes()
{
  v31 = *MEMORY[0x1E69E9840];
  v21 = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = getLocalVolumes();
  v0 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v0)
  {
    v2 = v0;
    v3 = *v23;
    *&v1 = 138412546;
    v17 = v1;
    do
    {
      v4 = 0;
      v19 = v2;
      do
      {
        if (*v23 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [*(*(&v22 + 1) + 8 * v4) fileSystemRepresentation];
        v6 = v21;
        if (v21 && v5)
        {
          *buf = 0;
          v7 = [MEMORY[0x1E695DF90] dictionary];
          v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
          [v7 setObject:v8 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];

          v9 = [v7 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
          v10 = [CacheDeleteVolume validateVolumeAtPath:v9];

          if (!v10 || fsctl([v10 fileSystemRepresentation], 0x40046818uLL, buf, 0))
          {
            goto LABEL_28;
          }

          if ((*buf & 0x200) != 0)
          {
            v11 = [v6 objectForKeyedSubscript:@"CD_VERYLOWDISK_EVENT"];
            if (v11)
            {
              goto LABEL_24;
            }

            v12 = @"CD_VERYLOWDISK_EVENT";
          }

          else if ((buf[0] & 4) != 0)
          {
            v11 = [v6 objectForKeyedSubscript:@"CD_LOWDISK_EVENT"];
            if (v11)
            {
              goto LABEL_24;
            }

            v12 = @"CD_LOWDISK_EVENT";
          }

          else
          {
            if ((*buf & 0x2000) == 0)
            {
              if ((*buf & 0x20000) != 0)
              {
                v11 = [v6 objectForKeyedSubscript:@"CD_IDLE_PURGE_NOTIFY_DISK_EVENT"];
                if (!v11)
                {
                  v12 = @"CD_IDLE_PURGE_NOTIFY_DISK_EVENT";
                  goto LABEL_26;
                }

LABEL_24:
                v14 = v11;
LABEL_27:
                [v14 addObject:{v7, v17}];
              }

LABEL_28:

              v2 = v19;
              goto LABEL_29;
            }

            v11 = [v6 objectForKeyedSubscript:@"CD_NEAR_LOW_DISK_EVENT"];
            if (v11)
            {
              goto LABEL_24;
            }

            v12 = @"CD_NEAR_LOW_DISK_EVENT";
          }

LABEL_26:
          v18 = v12;
          v14 = [MEMORY[0x1E695DF70] array];
          [v6 setObject:v14 forKeyedSubscript:v18];
          goto LABEL_27;
        }

        v13 = CDGetLogHandle("client");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = v17;
          v28 = v21;
          v29 = 2048;
          v30 = v5;
          _os_log_error_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_ERROR, "parameter error, volumes: %@, path: %p", buf, 0x16u);
        }

LABEL_29:
        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v2);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v21;
}

uint64_t getCacheDeleteXattr(const char *a1, void *value)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = 1;
  if (getxattr(a1, "com.apple.mobile.deleted", value, 1uLL, 0, 1) < 0)
  {
    if (*__error() == 93)
    {
      v3 = 1;
    }

    else
    {
      v4 = CDGetLogHandle("client");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = __error();
        v8 = strerror(*v7);
        v9 = 136315394;
        v10 = a1;
        v11 = 2080;
        v12 = v8;
        _os_log_error_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_ERROR, "Unable to get xattr from %s : %s", &v9, 0x16u);
      }

      v3 = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t createCacheDeleteToken()
{
  v0 = [MEMORY[0x1E696AFB0] UUID];
  v1 = [v0 UUIDString];

  return v1;
}

id evaluateDateProperty(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = CDGetLogHandle("client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v1;
    _os_log_debug_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_DEBUG, "evaluating: %@", &v7, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v1;
  }

  else
  {
    v4 = CDGetLogHandle("client");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_debug_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEBUG, "value is not an NSDate, returning nil", &v7, 2u);
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

BOOL is_first_boot()
{
  v0 = sem_open("cache_delete.fb_check", 0);
  v1 = v0;
  if (v0 != -1)
  {
    sem_close(v0);
  }

  return v1 == -1;
}

uint64_t copyNANDSizeBytes()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOBSDNameMatching(*MEMORY[0x1E696CD60], 0, "disk0");
  if (!v1)
  {
    v8 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      return 0;
    }

    v16 = 0;
    v9 = "IOBSDNameMatching failed.";
    v10 = &v16;
LABEL_17:
    _os_log_error_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    goto LABEL_14;
  }

  MatchingService = IOServiceGetMatchingService(v0, v1);
  if (!MatchingService)
  {
    v8 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v9 = "IOServiceGetMatchingService failed.";
    v10 = buf;
    goto LABEL_17;
  }

  v3 = MatchingService;
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"Size", *MEMORY[0x1E695E480], 0);
  v5 = CFProperty;
  if (CFProperty && (v6 = CFGetTypeID(CFProperty), v6 == CFNumberGetTypeID()))
  {
    v7 = [v5 unsignedLongLongValue];
  }

  else
  {
    v11 = CDGetLogHandle("client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 0;
      _os_log_error_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_ERROR, "IORegistryEntryCreateCFProperty failed.", v14, 2u);
    }

    v7 = 0;
    v12 = 0;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  CFRelease(v5);
  v12 = v7;
LABEL_12:
  IOObjectRelease(v3);
  return v12;
}

void set_first_boot_work_completed()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = sem_open("cache_delete.fb_check", 512, 256, 0);
  if (v0 == -1)
  {
    v2 = CDGetLogHandle("client");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 136315394;
      v7 = "cache_delete.fb_check";
      v8 = 2080;
      v9 = v5;
      _os_log_error_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_ERROR, "Failed to create semaphore %s: %s", buf, 0x16u);
    }

    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v1 = *MEMORY[0x1E69E9840];

    sem_close(v0);
  }
}

id cdAppSuptPath()
{
  if (qword_1ED76A068 != -1)
  {
    dispatch_once(&qword_1ED76A068, &__block_literal_global_97);
  }

  v1 = qword_1ED76A060;

  return v1;
}

uint64_t __cdAppSuptPath_block_invoke()
{
  qword_1ED76A060 = _persistPath(14);

  return MEMORY[0x1EEE66BB8]();
}

id _persistPath(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  *&buf = MEMORY[0x1E69E9820];
  *(&buf + 1) = 3221225472;
  v11 = __getDir_block_invoke;
  v12 = &__block_descriptor_40_e5_v8__0l;
  v13 = a1;
  if (getDir_onceToken != -1)
  {
    dispatch_once(&getDir_onceToken, &buf);
  }

  v1 = getDir_result;
  v2 = [v1 stringByAppendingPathComponent:@"com.apple.cache_delete"];
  if (mkdir([v2 fileSystemRepresentation], 0x1C0u) && *__error() != 17)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = __error();
    v6 = strerror(*v5);
    v3 = [v4 stringWithFormat:@"unable to create directory at %@ : %s", v2, v6, buf, v11, v12, v13, v14];
    v7 = CDGetLogHandle("client");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_error_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
    }
  }

  else
  {
    v3 = v2;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __cdCachesPath_block_invoke()
{
  qword_1ED76A070 = _persistPath(13);

  return MEMORY[0x1EEE66BB8]();
}

void pruneFile(const char *a1, uint64_t a2, off_t a3, int a4)
{
  v35 = *MEMORY[0x1E69E9840];
  memset(&v30, 0, sizeof(v30));
  if (!stat(a1, &v30) && v30.st_size >= a3)
  {
    v8 = open(a1, 2);
    if (v8 != -1)
    {
      v9 = v8;
      v10 = v30.st_size - a2;
      if (lseek(v8, v10, 0) == -1)
      {
        v21 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
LABEL_25:

          close(v9);
          goto LABEL_29;
        }

        v22 = __error();
        v23 = strerror(*v22);
        *buf = 136315138;
        v32 = v23;
        v24 = "pruneFile: lseek error: %s";
      }

      else
      {
        if (a4)
        {
          *buf = 0;
          do
          {
            v11 = read(v9, buf, 1uLL);
            ++v10;
          }

          while (*buf != 10 && v11 == 1);
        }

        if (v30.st_size <= v10)
        {
          v13 = 0;
        }

        else
        {
          v13 = v30.st_size - v10;
        }

        v14 = malloc_type_malloc(v13, 0xF2613A95uLL);
        if (v14)
        {
          v15 = v14;
          if (v13 == read(v9, v14, v13))
          {
            if (!ftruncate(v9, 0))
            {
              lseek(v9, 0, 0);
              write(v9, v15, v13);
              goto LABEL_28;
            }

            v16 = CDGetLogHandle("client");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v17 = __error();
              v18 = strerror(*v17);
              *buf = 136315138;
              v32 = v18;
              v19 = "pruneFile: ftruncate failed: %s";
LABEL_34:
              _os_log_error_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
            }
          }

          else
          {
            v16 = CDGetLogHandle("client");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v28 = __error();
              v29 = strerror(*v28);
              *buf = 136315138;
              v32 = v29;
              v19 = "pruneFile: read error: %s";
              goto LABEL_34;
            }
          }

LABEL_28:
          close(v9);
          free(v15);
          goto LABEL_29;
        }

        v21 = CDGetLogHandle("client");
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        *buf = 134217984;
        v32 = v13;
        v24 = "unable to malloc %zd";
      }

      _os_log_error_impl(&dword_1BA7F1000, v21, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
      goto LABEL_25;
    }

    v20 = CDGetLogHandle("client");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v26 = __error();
      v27 = strerror(*v26);
      *buf = 136315394;
      v32 = "CacheDeletePurgeHistory.txt";
      v33 = 2080;
      v34 = v27;
      _os_log_error_impl(&dword_1BA7F1000, v20, OS_LOG_TYPE_ERROR, "pruneFile: open failed for %s : %s", buf, 0x16u);
    }
  }

LABEL_29:
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t writeToCacheFile(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    goto LABEL_4;
  }

  v9 = cdCachesPath();
  if (v9)
  {
LABEL_4:
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v9, v5];
    v11 = v10;
    if (v10)
    {
      v12 = open([v10 UTF8String], 778, 493);
      if (v12 != -1)
      {
        v13 = v12;
        v14 = [v6 cStringUsingEncoding:4];
        if (v14)
        {
          v15 = v14;
          v16 = strlen(v14);
          write(v13, v15, v16);
          v17 = 0;
        }

        else
        {
          v19 = CDGetLogHandle("client");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v6;
            _os_log_error_impl(&dword_1BA7F1000, v19, OS_LOG_TYPE_ERROR, "Unable to get C string from: %@", buf, 0xCu);
          }

          v17 = 0xFFFFFFFFLL;
        }

        close(v13);
        goto LABEL_17;
      }

      v18 = CDGetLogHandle("client");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v22 = [v11 UTF8String];
        v23 = __error();
        v24 = strerror(*v23);
        *buf = 136315394;
        v26 = v22;
        v27 = 2080;
        v28 = v24;
        _os_log_error_impl(&dword_1BA7F1000, v18, OS_LOG_TYPE_ERROR, "open failed for %s : %s", buf, 0x16u);
      }
    }

    v17 = 0xFFFFFFFFLL;
LABEL_17:

    goto LABEL_18;
  }

  v17 = 0xFFFFFFFFLL;
LABEL_18:

  v20 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t markNotifiedVolume(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = cdAppSuptPath();
  if (v2)
  {
    v3 = [CacheDeleteVolume volumeWithPath:v1];
    v4 = v3;
    if (v3)
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = [v3 uuid];
      v7 = [v6 UUIDString];
      v8 = [v5 stringWithFormat:@"%s%@", "CacheDeleteLowDiskNotification_", v7];

      v9 = [v2 stringByAppendingPathComponent:v8];
      v10 = open([v9 UTF8String], 512, 448);
      if (v10 == -1)
      {
        v12 = CDGetLogHandle("client");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v15 = [v9 UTF8String];
          v16 = __error();
          v17 = strerror(*v16);
          *buf = 136315394;
          v19 = v15;
          v20 = 2080;
          v21 = v17;
          _os_log_error_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_ERROR, "open failed for %s : %s", buf, 0x16u);
        }

        v11 = 0xFFFFFFFFLL;
      }

      else
      {
        close(v10);
        v11 = 0;
      }
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

void enumerateNotifiedVolumes(void *a1)
{
  v1 = a1;
  v2 = cdAppSuptPath();
  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __enumerateNotifiedVolumes_block_invoke;
    v3[3] = &unk_1E7F026A8;
    v4 = v1;
    traverse_dir_with_state(v2, 0, 0, v3);
  }
}

uint64_t __enumerateNotifiedVolumes_block_invoke(uint64_t a1, const char *a2, _BYTE *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a3 == 1)
  {
    a3[1] = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v6 = [v5 lastPathComponent];

    if (![v6 rangeOfString:@"CacheDeleteLowDiskNotification_"] && v7 == objc_msgSend(@"CacheDeleteLowDiskNotification_", "length"))
    {
      v8 = [v6 componentsSeparatedByString:@"_"];
      v9 = [v8 lastObject];
      v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v9];
      v11 = volumeForUUID(v10);
      (*(*(a1 + 32) + 16))();
      v12 = CDGetLogHandle("client");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = a2;
        _os_log_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_DEFAULT, "enumerateNotifiedVolumes removing: %s", &v15, 0xCu);
      }

      unlink(a2);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return 1;
}

id sentinelDir()
{
  v0 = cdCachesPath();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 stringByAppendingPathComponent:@"FSPurgeSentinel"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id dropBreadcrumb(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = breadcrumbFilename(v1);
  v3 = v2;
  if (!v2)
  {
    v6 = CDGetLogHandle("client");
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 138543362;
    v16 = v1;
    v7 = "breadcrumbFile: Unable to create path for volume: %{public}@";
    v8 = v6;
    v9 = 12;
LABEL_12:
    _os_log_error_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_ERROR, v7, buf, v9);
    goto LABEL_7;
  }

  v4 = open([v2 UTF8String], 514, 448);
  if (v4 != -1)
  {
    close(v4);
    v5 = v3;
    goto LABEL_8;
  }

  v6 = CDGetLogHandle("client");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v12 = [v3 UTF8String];
    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136446466;
    v16 = v12;
    v17 = 2082;
    v18 = v14;
    v7 = "breadcrumbFile: Unable to create file at: %{public}s : %{public}s";
    v8 = v6;
    v9 = 22;
    goto LABEL_12;
  }

LABEL_7:

  v5 = 0;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

id breadcrumbFilename(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = breadcrumbDir();
  if (v2)
  {
    v3 = [v1 stringByReplacingOccurrencesOfString:@"/" withString:@"|"];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%@", "notifyPurgeFor_", v3];
    v5 = [v2 stringByAppendingPathComponent:v4];
  }

  else
  {
    v6 = CDGetLogHandle("client");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v1;
      _os_log_error_impl(&dword_1BA7F1000, v6, OS_LOG_TYPE_ERROR, "breadcrumbFilename: Unable to get breadcrumb directory for volume: %{public}@", buf, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

void removeBreadcrumb(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = breadcrumbFilename(v1);
  v3 = v2;
  if (v2)
  {
    unlink([v2 UTF8String]);
    v4 = CDGetLogHandle("client");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v1;
      _os_log_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_DEFAULT, "unlinked breadcrumb file for volume %@", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

id breadcrumbs()
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v0 = breadcrumbDir();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __breadcrumbs_block_invoke;
  v6[3] = &unk_1E7F02E30;
  v6[4] = &v7;
  traverse_dir_with_state(v0, 0, 0, v6);

  v1 = CDGetLogHandle("client");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = v8[5];
    *buf = 138543362;
    v14 = v2;
    _os_log_impl(&dword_1BA7F1000, v1, OS_LOG_TYPE_DEFAULT, "breadcrumbs: %{public}@", buf, 0xCu);
  }

  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

void sub_1BA816EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSObject *breadcrumbDir()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = _persistPath(13);
  v1 = v0;
  if (!v0)
  {
    v2 = CDGetLogHandle("client");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_ERROR, "breadcrumbDir: Unable to create breadcrumb directory path", &v8, 2u);
    }

    goto LABEL_9;
  }

  v2 = [v0 stringByAppendingPathComponent:@"CacheDeleteBreadcumbs"];
  if (mkdir([v2 UTF8String], 0x1EDu) && *__error() != 17)
  {
    v3 = CDGetLogHandle("client");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = __error();
      v7 = strerror(*v6);
      v8 = 138412546;
      v9 = v2;
      v10 = 2080;
      v11 = v7;
      _os_log_error_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_ERROR, "breadcrumbDir: Unable to create breadcrumb directory %@ : %s", &v8, 0x16u);
    }

LABEL_9:
    v2 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __breadcrumbs_block_invoke(uint64_t a1, const char *a2, _BYTE *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*a3 != 1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v6 = [v5 containsString:@"notifyPurgeFor_"];

    v7 = CDGetLogHandle("client");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      if (v8)
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
        v25 = 138543362;
        v26 = v22;
        _os_log_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEFAULT, "breadcrumbs: Not a breadcrumb file: %{public}@", &v25, 0xCu);
      }

      goto LABEL_23;
    }

    if (v8)
    {
      v25 = 136315138;
      v26 = a2;
      _os_log_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEFAULT, "Found breadcrumb at %s", &v25, 0xCu);
    }

    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
    v7 = [v9 componentsSeparatedByString:@"notifyPurgeFor_"];

    v10 = [v7 objectAtIndex:[v7 count]- 1];
    v11 = CDGetLogHandle("client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315394;
      v26 = "breadcrumbs_block_invoke";
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_DEFAULT, "%s volumeString %@", &v25, 0x16u);
    }

    if (v10)
    {
      v12 = [v10 stringByReplacingOccurrencesOfString:@"|" withString:@"/"];

      v13 = [CacheDeleteVolume validateVolumeAtPath:v12];
      v14 = CDGetLogHandle("client");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 136315650;
        v26 = "breadcrumbs_block_invoke";
        v27 = 2112;
        v28 = v12;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_1BA7F1000, v14, OS_LOG_TYPE_DEFAULT, "%s %@ %@", &v25, 0x20u);
      }

      if (v13)
      {
        v15 = *(*(*(a1 + 32) + 8) + 40);
        if (!v15)
        {
          v16 = objc_opt_new();
          v17 = *(*(a1 + 32) + 8);
          v18 = *(v17 + 40);
          *(v17 + 40) = v16;

          v15 = *(*(*(a1 + 32) + 8) + 40);
        }

        [v15 addObject:v13];
        v19 = CDGetLogHandle("client");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
          v21 = [v7 objectAtIndex:[v7 count]- 1];
          v25 = 138543618;
          v26 = v20;
          v27 = 2114;
          v28 = v21;
          _os_log_impl(&dword_1BA7F1000, v19, OS_LOG_TYPE_DEFAULT, "breadcrumbs: volume for %{public}@ : %{public}@", &v25, 0x16u);
        }

LABEL_22:
LABEL_23:

        goto LABEL_24;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = CDGetLogHandle("client");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v25 = 136446210;
      v26 = a2;
      _os_log_error_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_ERROR, "breadcrumbs: Unable to validate volume from %{public}s", &v25, 0xCu);
    }

    goto LABEL_22;
  }

  a3[1] = 0;
LABEL_24:
  v23 = *MEMORY[0x1E69E9840];
  return 1;
}

id thresholdsForMountPoint(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__2;
  v9 = __Block_byref_object_dispose__2;
  v10 = 0;
  if (qword_1ED76A088 != -1)
  {
    dispatch_once(&qword_1ED76A088, &__block_literal_global_130);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __thresholdsForMountPoint_block_invoke_2;
  v4[3] = &unk_1E7F02E58;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(qword_1ED76A080, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __thresholdsForMountPoint_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.cache_delete.volume_thresholds", v2);
  v1 = qword_1ED76A080;
  qword_1ED76A080 = v0;
}

void __thresholdsForMountPoint_block_invoke_2(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  bzero(&v49, 0x878uLL);
  if (statfs(*(a1 + 40), &v49))
  {
    v2 = CDGetLogHandle("client");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 40);
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 136315394;
      v44 = v3;
      v45 = 2080;
      v46 = v5;
      _os_log_error_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_ERROR, "unable to stat volume: %s : %s", buf, 0x16u);
    }
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = v49.f_blocks * v49.f_bsize;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v10 forKeyedSubscript:@"CACHE_DELETE_VOLUME_SIZE"];

    v41 = 0;
    v42 = 0;
    f_bsize = v49.f_bsize;
    v2 = fallbackThresholds(v9);
    if (fsctl(*(a1 + 40), 0x4004681DuLL, &v41, 0))
    {
      v12 = [v2 objectForKeyedSubscript:@"DESIRED_DISK_THRESHOLD"];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v12 forKeyedSubscript:@"DESIRED_DISK_THRESHOLD"];

      v13 = CDGetLogHandle("client");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = __error();
        v15 = strerror(*v14);
        v16 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:@"DESIRED_DISK_THRESHOLD"];
        *buf = 136315650;
        v44 = v15;
        v45 = 2112;
        v46 = v16;
        v47 = 2048;
        v48 = v9;
        _os_log_error_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_ERROR, "fsctl error: %s, using HARDCODED desired threshold %@ for volume_size: %llu", buf, 0x20u);
      }
    }

    else
    {
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v41 * f_bsize];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v13 forKeyedSubscript:@"DESIRED_DISK_THRESHOLD"];
    }

    if (fsctl(*(a1 + 40), 0x40044A12uLL, &v41 + 4, 0))
    {
      v17 = [v2 objectForKeyedSubscript:@"NEAR_LOW_DISK_THRESHOLD"];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v17 forKeyedSubscript:@"NEAR_LOW_DISK_THRESHOLD"];

      v18 = CDGetLogHandle("client");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = __error();
        v20 = strerror(*v19);
        v21 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:@"NEAR_LOW_DISK_THRESHOLD"];
        *buf = 136315650;
        v44 = v20;
        v45 = 2112;
        v46 = v21;
        v47 = 2048;
        v48 = v9;
        _os_log_error_impl(&dword_1BA7F1000, v18, OS_LOG_TYPE_ERROR, "fsctl error: %s, using HARDCODED low disk threshold %@ for volume_size: %llu", buf, 0x20u);
      }
    }

    else
    {
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:HIDWORD(v41) * f_bsize];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v18 forKeyedSubscript:@"NEAR_LOW_DISK_THRESHOLD"];
    }

    if (fsctl(*(a1 + 40), 0x4004681CuLL, &v42, 0))
    {
      v22 = [v2 objectForKeyedSubscript:@"LOW_DISK_THRESHOLD"];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v22 forKeyedSubscript:@"LOW_DISK_THRESHOLD"];

      v23 = CDGetLogHandle("client");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = __error();
        v25 = strerror(*v24);
        v26 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:@"LOW_DISK_THRESHOLD"];
        *buf = 136315650;
        v44 = v25;
        v45 = 2112;
        v46 = v26;
        v47 = 2048;
        v48 = v9;
        _os_log_error_impl(&dword_1BA7F1000, v23, OS_LOG_TYPE_ERROR, "fsctl error: %s, using HARDCODED low disk threshold %@ for volume_size: %llu", buf, 0x20u);
      }
    }

    else
    {
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v42 * f_bsize];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v23 forKeyedSubscript:@"LOW_DISK_THRESHOLD"];
    }

    if (fsctl(*(a1 + 40), 0x4004681BuLL, &v42 + 4, 0))
    {
      v27 = [v2 objectForKeyedSubscript:@"VERY_LOW_DISK_THRESHOLD"];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v27 forKeyedSubscript:@"VERY_LOW_DISK_THRESHOLD"];

      v28 = CDGetLogHandle("client");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = __error();
        v30 = strerror(*v29);
        v31 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:@"VERY_LOW_DISK_THRESHOLD"];
        *buf = 136315650;
        v44 = v30;
        v45 = 2112;
        v46 = v31;
        v47 = 2048;
        v48 = v9;
        _os_log_error_impl(&dword_1BA7F1000, v28, OS_LOG_TYPE_ERROR, "fsctl error: %s, using HARDCODED very low disk threshold %@ for volume_size: %llu", buf, 0x20u);
      }
    }

    else
    {
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:HIDWORD(v42) * f_bsize];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v28 forKeyedSubscript:@"VERY_LOW_DISK_THRESHOLD"];
    }

    v40 = 0;
    if (fsctl(*(a1 + 40), 0x40044A86uLL, &v40, 0))
    {
      v32 = [v2 objectForKeyedSubscript:@"IDLE_PURGE_DISK_THRESHOLD"];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v32 forKeyedSubscript:@"IDLE_PURGE_DISK_THRESHOLD"];

      v33 = CDGetLogHandle("client");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = __error();
        v35 = strerror(*v34);
        v36 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:@"IDLE_PURGE_DISK_THRESHOLD"];
        *buf = 136315650;
        v44 = v35;
        v45 = 2112;
        v46 = v36;
        v47 = 2048;
        v48 = v9;
        _os_log_error_impl(&dword_1BA7F1000, v33, OS_LOG_TYPE_ERROR, "fsctl error: %s, using HARDCODED idle purge disk threshold %@ for volume_size: %llu", buf, 0x20u);
      }
    }

    else
    {
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v40 * f_bsize];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v33 forKeyedSubscript:@"IDLE_PURGE_DISK_THRESHOLD"];
    }

    if (![*(*(*(a1 + 32) + 8) + 40) count])
    {
      v37 = *(*(a1 + 32) + 8);
      v38 = *(v37 + 40);
      *(v37 + 40) = 0;
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

id tallyDict(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v16 = v1;
      v5 = 0;
      v6 = *v18;
      while (1)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [v2 objectForKeyedSubscript:v8];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_14;
            }

            v12 = tallyDict(v9);
            v11 = v12;
            goto LABEL_12;
          }

          v10 = [v2 objectForKeyedSubscript:v8];
          v11 = evaluateNumberProperty(v10);

          if (v11)
          {
            v12 = v11;
LABEL_12:
            v5 += [v12 unsignedLongLongValue];
          }

LABEL_14:
        }

        v4 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (!v4)
        {
          v1 = v16;
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
    v2 = CDGetLogHandle("client");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v1;
      _os_log_error_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_ERROR, "dict is not a dictionary: %@, returning 0", buf, 0xCu);
    }
  }

  v5 = 0;
LABEL_20:

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

id serviceForFSPurgeableType(void *a1)
{
  v1 = a1;
  v2 = fsPurgeableTypeToServiceMap();
  v3 = [v2 objectForKeyedSubscript:v1];

  return v3;
}

id days_hours_mins(double a1)
{
  *&v6[6] = *MEMORY[0x1E69E9840];
  v1 = a1;
  snprintf(__str, 6uLL, "%f", a1 - a1);
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu d, %llu h, %llu m, %llu.%s s", v1 / 0x15180, v1 % 0x15180 / 0xE10, v1 % 0x15180 % 0xE10 / 0x3C, v1 % 0x15180 % 0xE10 % 0x3C, v6];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

id dataContainerURLs(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = objc_opt_new();
  v2 = objc_autoreleasePoolPush();
  if (container_query_create())
  {
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_include_other_owners();
    v3 = v1;
    v4 = xpc_string_create([v1 UTF8String]);
    container_query_set_identifiers();

    container_query_operation_set_platform();
    iterate_results_sync = container_query_iterate_results_sync();
    container_query_get_last_error();
    v6 = container_error_copy_unlocalized_description();
    v7 = CDGetLogHandle("client");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (iterate_results_sync)
    {
      if (v8)
      {
        *buf = 136315138;
        v20 = v6;
        v9 = "container_query_iterate_results_sync succeeded; %s";
LABEL_7:
        _os_log_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 0xCu);
      }
    }

    else if (v8)
    {
      *buf = 136315138;
      v20 = v6;
      v9 = "container_query_iterate_results_sync failed; %s";
      goto LABEL_7;
    }

    free(v6);
    container_query_free();
  }

  objc_autoreleasePoolPop(v2);
  v10 = [v14[5] copy];
  _Block_object_dispose(&v13, 8);

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

void sub_1BA8183D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __dataContainerURLs_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  path = container_get_path();
  v3 = CDGetLogHandle("client");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (path)
  {
    if (v4)
    {
      v9 = 136315138;
      v10 = path;
      _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "path: %s\n", &v9, 0xCu);
    }

    v3 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:path isDirectory:1 relativeToURL:0];
    if (v3)
    {
      persona_unique_string = container_get_persona_unique_string();
      if (!persona_unique_string || ([MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v6 = @"NO_PERSONA_AVAILABLE";
      }

      [*(*(*(a1 + 32) + 8) + 40) setObject:v3 forKeyedSubscript:v6];
    }
  }

  else if (v4)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "data container path is not returned", &v9, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 1;
}

void __getDir_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = NSSearchPathForDirectoriesInDomains(*(a1 + 32), 1uLL, 1);
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v8 = 134218242;
    v9 = v4;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "getDir(%lu): %@", &v8, 0x16u);
  }

  v5 = [v2 objectAtIndexedSubscript:0];
  v6 = getDir_result;
  getDir_result = v5;

  v7 = *MEMORY[0x1E69E9840];
}

void __CallBlockWithProxy_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CallBlockWithProxy_block_invoke_2;
  v6[3] = &unk_1E7F02EA8;
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 56);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __CallBlockWithProxy_block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 code] == 4097)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "NSXPCConnectionInterrupted"];
    }

    else
    {
      v4 = [*(a1 + 32) code];
      v5 = MEMORY[0x1E696AEC0];
      if (v4 == 4099)
      {
        v16 = "NSXPCConnectionInvalid";
        v6 = @"%s";
      }

      else
      {
        v16 = [*(a1 + 32) code];
        v6 = @"%ld";
      }

      [v5 stringWithFormat:v6, v16];
    }
    v7 = ;
    v8 = CDGetLogHandle("client");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v14;
      _os_log_error_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_ERROR, "remoteObjectProxyWithErrorHandler error: %{public}@ : %{public}@", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v3 = MEMORY[0x1E696ABC0];
    if (v9)
    {
      v17 = *MEMORY[0x1E696AA08];
      v18 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v11 = [v3 errorWithDomain:@"CacheDeleteErrorDomain" code:2 userInfo:v10];

      goto LABEL_14;
    }
  }

  else
  {
    v3 = MEMORY[0x1E696ABC0];
  }

  v11 = [v3 errorWithDomain:@"CacheDeleteErrorDomain" code:2 userInfo:0];
LABEL_14:
  [*(a1 + 40) invalidate];
  if (*(a1 + 56))
  {
    v12 = CDGetLogHandle("client");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 48);
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_ERROR, "CallBlockWithProxy remoteObjectProxyWithErrorHandler(%{public}@) error: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

void fsEventStreamCallback(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v83 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v55 = a2;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v63 objects:v82 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v64;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v64 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v63 + 1) + 8 * i) allValues];
        v13 = [v12 componentsJoinedByString:@" "];

        v14 = CDGetLogHandle("client");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v75 = v13;
          _os_log_impl(&dword_1BA7F1000, v14, OS_LOG_TYPE_DEFAULT, "fsEventStreamCallback event: %@", buf, 0xCu);
        }
      }

      v9 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
    }

    while (v9);
  }

  v15 = v55;
  if (!v55)
  {
    goto LABEL_15;
  }

  if ([v55 historyDone])
  {
    v16 = CDGetLogHandle("client");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v55 historyDone];
      *buf = 138412546;
      v75 = v55;
      v76 = 1024;
      LODWORD(v77) = v17;
      _os_log_impl(&dword_1BA7F1000, v16, OS_LOG_TYPE_DEFAULT, "fsEventStreamCallback: CDConsumer %@ historyDone %d", buf, 0x12u);
    }

LABEL_15:
    v18 = CDGetLogHandle("client");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA7F1000, v18, OS_LOG_TYPE_DEFAULT, "fsEventStreamCallback: returning...", buf, 2u);
    }

    goto LABEL_55;
  }

  v18 = objc_opt_new();
  v52 = timeStamp();
  v20 = a5;
  if (a3)
  {
    v21 = 0;
    *&v19 = 136446210;
    v51 = v19;
    do
    {
      v22 = *(v20 + 4 * v21);
      if ((v22 & 0x100200) != 0)
      {
        v23 = [obj objectAtIndex:v21];
        v24 = [v23 objectForKeyedSubscript:@"path"];
        v25 = [v23 objectForKeyedSubscript:@"fileID"];
        v26 = v25;
        if (v24 && v25 && (*(v20 + 4 * v21) & 0x100200) != 0 && access([v24 UTF8String], 0))
        {
          v27 = *__error();
          v28 = CDGetLogHandle("client");
          v29 = v28;
          if (v27 == 2)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *(a6 + 8 * v21);
              *buf = 134218754;
              v75 = v30;
              v76 = 2112;
              v77 = v26;
              v78 = 2112;
              v79 = v24;
              v80 = 2112;
              v81 = v52;
              _os_log_impl(&dword_1BA7F1000, v29, OS_LOG_TYPE_DEFAULT, "fsEventStreamCallback adding goner (eventID %llu): %@ : %@ : %@", buf, 0x2Au);
            }

            v72[0] = @"fileID";
            v72[1] = @"path";
            v73[0] = v26;
            v73[1] = v24;
            v72[2] = @"timestamp";
            v73[2] = v52;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:3];
            [v18 addObject:v29];
          }

          else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v41 = strerror(v27);
            *buf = v51;
            v75 = v41;
            _os_log_error_impl(&dword_1BA7F1000, v29, OS_LOG_TYPE_ERROR, "fsEventStreamCallback: Unexpected fsgetpath error: %{public}s", buf, 0xCu);
          }

          v20 = a5;
        }

        v22 = *(v20 + 4 * v21);
      }

      if ((v22 & 0xF) != 0)
      {
        v31 = CDGetLogHandle("client");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(v20 + 4 * v21);
          *buf = 67109120;
          LODWORD(v75) = v32;
          _os_log_impl(&dword_1BA7F1000, v31, OS_LOG_TYPE_DEFAULT, "fsEventStreamCallback rescan: 0x%u", buf, 8u);
        }

        v33 = [v55 identifier];
        v34 = [v55 volume];
        setPurgeMarker(v33, v34, 1, *(a6 + 8 * v21));

        v70 = @"rescan";
        v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v20 + 4 * v21)];
        v71 = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
        [v18 addObject:v36];

        [v55 setHistoryDone:1];
        v22 = *(v20 + 4 * v21);
      }

      if ((v22 & 0x10) != 0)
      {
        v37 = CDGetLogHandle("client");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a6 + 8 * v21);
          *buf = 134217984;
          v75 = v38;
          _os_log_impl(&dword_1BA7F1000, v37, OS_LOG_TYPE_DEFAULT, "fsEventStreamCallback, eventID: %llu historyDone", buf, 0xCu);
        }

        v68 = @"historyDone";
        v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a6 + 8 * v21)];
        v69 = v39;
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        [v18 addObject:v40];

        [v55 setHistoryDone:1];
      }

      ++v21;
    }

    while (a3 != v21);
  }

  if ([v18 count])
  {
    v42 = CDGetLogHandle("client");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA7F1000, v42, OS_LOG_TYPE_DEFAULT, "fsEventStreamCallback, calling consumer with:", buf, 2u);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = v18;
    v43 = v18;
    v44 = [v43 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v60;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v60 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v59 + 1) + 8 * j);
          v49 = CDGetLogHandle("client");
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v75 = v48;
            _os_log_impl(&dword_1BA7F1000, v49, OS_LOG_TYPE_DEFAULT, "removed: %@", buf, 0xCu);
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v45);
    }

    v15 = v55;
    [v55 callback:v43];
    v18 = v57;
  }

LABEL_55:
  v50 = *MEMORY[0x1E69E9840];
}

void CacheDeleteEnumerateRemovedFiles(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11[0] = a2;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CacheDeleteEnumerateRemovedFiles_block_invoke;
  v9[3] = &unk_1E7F02F48;
  v10 = v5;
  v7 = v5;
  _CacheDeleteEnumerateRemovedFiles(a1, 0, v6, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __CacheDeleteEnumerateRemovedFiles_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E695DFD8] setWithArray:a2];
  (*(*(a1 + 32) + 16))();
}

void sub_1BA81D364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA81D480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA81F700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA822A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA822BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BA823154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id recentlyUsedAppsDictionary()
{
  v31 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v17 = [MEMORY[0x1E695DF00] date];
  v0 = [v17 dateByAddingTimeInterval:-2419200.0];
  v1 = objc_opt_new();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __recentlyUsedAppsDictionaryWithDates_block_invoke;
  v23[3] = &unk_1E7F031A8;
  v2 = v1;
  v24 = v2;
  v16 = v0;
  [CacheDeleteAppInFocus subscribeToAppInFocusStreamBeginning:v0 callback:v23];
  v3 = CDGetLogHandle("client");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 count];
    *buf = 134217984;
    v30 = v4;
    _os_log_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_DEFAULT, "recentlyUsedAppsDictionaryWithDates (Biome) %lu results:", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v2;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:buf count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = CDGetLogHandle("client");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v5 objectForKeyedSubscript:v10];
          *v25 = 138412546;
          v26 = v10;
          v27 = 2112;
          v28 = v12;
          _os_log_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_DEFAULT, "\t%@ : %@", v25, 0x16u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:buf count:16];
    }

    while (v7);
  }

  v13 = [v5 copy];
  objc_autoreleasePoolPop(context);
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

uint64_t volumeSupportsEAPFS(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v2 = open([v1 fileSystemRepresentation], 0x100000);
  if (v2 != -1)
  {
    v3 = v2;
    if (fgetattrlist(v2, &v9, &v10, 0x24uLL, 0) < 0)
    {
      v5 = CDGetLogHandle("client");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = *__error();
        *buf = 138412546;
        v14 = v1;
        v15 = 1024;
        v16 = v8;
        _os_log_error_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_ERROR, "Unable to call fgetattrlist on %@: %d", buf, 0x12u);
      }
    }

    else if ((BYTE7(v11) & 4) != 0)
    {
      v4 = (BYTE7(v10) >> 2) & 1;
LABEL_10:
      close(v3);
      goto LABEL_11;
    }

    v4 = 0;
    goto LABEL_10;
  }

  v4 = 0;
LABEL_11:

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t enableDirStats(const char *a1, int a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v49 = 0u;
  v50 = 0u;
  v4 = 28;
  if (!a2)
  {
    v4 = 0;
  }

  v47 = 0uLL;
  v48 = 0uLL;
  v45 = 0uLL;
  v46 = 0uLL;
  v43 = 0uLL;
  v44 = 0uLL;
  v41 = 0uLL;
  v42 = 0uLL;
  v39 = 0uLL;
  v40 = 0uLL;
  v37 = 0uLL;
  v38 = 0uLL;
  v35 = 0uLL;
  v36 = 0uLL;
  v34[0] = 0x100000002;
  v34[1] = v4;
  v32 = 0uLL;
  v33 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
  v16 = 2;
  v17 = 1;
  if (!fsctl(a1, 0xC1104A71uLL, &v16, 0) && (!a2 || (~v18 & 3) == 0 && (v17 & 4) != 0))
  {
    v8 = CDGetLogHandle("client");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = a1;
      v9 = "Already enabled APFSIOC_DIR_STATS_OP for %s";
LABEL_18:
      _os_log_debug_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_DEBUG, v9, &v12, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v5 = fsctl(a1, 0xC1104A71uLL, v34, 0);
  if (!v5)
  {
    v8 = CDGetLogHandle("client");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315138;
      v13 = a1;
      v9 = "Enabled APFSIOC_DIR_STATS_OP for %s";
      goto LABEL_18;
    }

LABEL_14:
    v6 = 0;
LABEL_15:

    goto LABEL_16;
  }

  v6 = v5;
  v7 = *__error();
  if (v7 != 2)
  {
    v8 = CDGetLogHandle("client");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = a1;
      v14 = 2080;
      v15 = strerror(v7);
      _os_log_error_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_ERROR, "APFSIOC_DIR_STATS_OP : DIR_STATS_OP_SET failed for %s : %s", &v12, 0x16u);
    }

    goto LABEL_15;
  }

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t size_dir(const char *a1)
{
  v5 = 0;
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a1];
  v3 = did_fast_size_directory(v2, &v5);

  if (!v3 && (v5 & 1) == 0)
  {
    if (size_dir_onceToken != -1)
    {
      dispatch_once(&size_dir_onceToken, &__block_literal_global_52);
    }

    enableDirStats(a1, size_dir_set_extended);
  }

  return v3;
}

void __size_dir_block_invoke()
{
  v0 = getRootVolume();
  size_dir_set_extended = volumeSupportsEAPFS(v0);
}

id discardedCachesPathForVolume(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = cdCachesPath();
    if (v2)
    {
      goto LABEL_11;
    }

    v3 = v1;
    bzero(buf, 0x400uLL);
    v4 = [v3 mountPoint];
    v5 = [v4 stringByAppendingPathComponent:@"tmp"];

    if (v5 && realpath_DARWIN_EXTSN([v5 UTF8String], buf))
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buf];
    }

    else
    {
      v7 = CDGetLogHandle("client");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v19 = [v3 mountPoint];
        *v23 = 138412290;
        v24 = v19;
        _os_log_error_impl(&dword_1BA7F1000, v7, OS_LOG_TYPE_ERROR, "unable to verify /tmp/ on %@", v23, 0xCu);
      }

      v2 = 0;
    }

    if (v2)
    {
LABEL_11:
      if ([v1 containsPath:v2])
      {
        v8 = [v1 mountPoint];
        v9 = [v8 isEqualToString:@"/System/Volumes/Data"];

        v10 = cdCachesPath();
        v11 = v10;
        if (v9)
        {
          v6 = [v10 stringByAppendingPathComponent:@"com.apple.CacheDeleteAppContainerCaches.discardedCaches"];
        }

        else
        {
          v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", "com.apple.CacheDeleteAppContainerCaches.discardedCaches"];
          v6 = [v11 stringByAppendingPathComponent:v13];
        }

        if (v6 && mkdir([v6 UTF8String], 0x1C0u) && *__error() != 17)
        {
          v14 = CDGetLogHandle("client");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v20 = [v6 UTF8String];
            v21 = __error();
            v22 = strerror(*v21);
            *buf = 136315394;
            v26 = v20;
            v27 = 2080;
            v28 = v22;
            _os_log_error_impl(&dword_1BA7F1000, v14, OS_LOG_TYPE_ERROR, "unable to create discarded caches directory at %s : %s", buf, 0x16u);
          }

          v6 = 0;
        }

        goto LABEL_25;
      }

      v12 = CDGetLogHandle("client");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = [v1 mountPoint];
        *buf = 138412546;
        v26 = v2;
        v27 = 2112;
        v28 = v18;
        _os_log_error_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_ERROR, "discardedCachesPathForVolume: %@ is not present on volume: %@", buf, 0x16u);
      }
    }

    else
    {
      v2 = CDGetLogHandle("client");
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v3;
        _os_log_error_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_ERROR, "discardedCachesPathForVolume: Unable to get a discarded caches path on %@", buf, 0xCu);
      }
    }

    v6 = 0;
    goto LABEL_30;
  }

  v6 = 0;
LABEL_25:
  v2 = CDGetLogHandle("client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v1 mountPoint];
    *buf = 138412546;
    v26 = v15;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_DEFAULT, "discardedCachesPathForVolume: %@, result: %@", buf, 0x16u);
  }

LABEL_30:

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

void clearDiscardedCaches(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  if (qword_1ED76A0F8 != -1)
  {
    dispatch_once(&qword_1ED76A0F8, &__block_literal_global_64);
  }

  if (v8)
  {
    v10 = 17;
  }

  else
  {
    v10 = 9;
  }

  if (a2 == QOS_CLASS_UNSPECIFIED)
  {
    a2 = v10;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __clearDiscardedCaches_block_invoke_2;
  v14[3] = &unk_1E7F02D40;
  v11 = v9;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, a2, 0, v14);
  if (v8)
  {
    dispatch_group_async(v8, qword_1ED76A0F0, v13);
  }

  else
  {
    dispatch_async(qword_1ED76A0F0, v13);
  }
}

uint64_t __clearDiscardedCaches_block_invoke()
{
  qword_1ED76A0F0 = dispatch_queue_create("com.apple.cache_delete.clearDiscardedCaches", 0);

  return MEMORY[0x1EEE66BB8]();
}

void __clearDiscardedCaches_block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = mach_absolute_time();
  v4 = discardedCachesPathForVolume(*(a1 + 32));
  v5 = v4;
  if (!v4)
  {
    v13 = CDGetLogHandle("client");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = [*(a1 + 32) mountPoint];
      *buf = 138412290;
      v18 = v16;
      _os_log_error_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_ERROR, "clearDiscardedCaches unable to get a directory on %@!", buf, 0xCu);
    }

    goto LABEL_9;
  }

  nuke_dir([v4 UTF8String], 1);
  v6 = mach_absolute_time();
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = v6 - v3;
    v9 = v8 * *&gTimebaseConversion / 1000000000.0;
    [v7 remove_threshold];
    if (v9 > v10)
    {
      v11 = MEMORY[0x1E696AEC0];
      [*(a1 + 40) remove_threshold];
      v13 = [v11 stringWithFormat:@"Remove failure. Threshold: %f, ET: %f, dir: %s", v12, v8 * *&gTimebaseConversion / 1000000000.0, objc_msgSend(v5, "UTF8String")];
      v14 = CDGetLogHandle("client");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v13;
        _os_log_error_impl(&dword_1BA7F1000, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      [*(a1 + 40) addRemoveFailure:v13];
LABEL_9:
    }
  }

  objc_autoreleasePoolPop(v2);
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t assert_group_cache_deletion(void *a1, void *a2, void *a3, void *a4)
{
  v103 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v77 = a4;
  v10 = [MEMORY[0x1E695DF90] dictionary];
  memset(buffer, 0, 255);
  if ([v8 containsObject:@"CacheInfoDoNotDelete"])
  {
    v11 = CDGetLogHandle("client");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_DEFAULT, "found Do Not Delete in bundle id array, skipping...", buf, 2u);
    }

    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.assert_group_cache_deletion" code:1 userInfo:0];
    v77[2](v77, v12, @"CacheInfoDoNotDelete");
    v73 = 0;
    v13 = 0;
    goto LABEL_5;
  }

  v14 = getpid();
  v69 = v9;
  if (proc_name(v14, buffer, 0xFFu) < 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"pid_%d", getpid()];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithUTF8String:buffer];
  }
  v73 = ;
  v70 = v8;
  v71 = v7;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v90 objects:v101 count:16];
  v76 = v15;
  if (!v16)
  {
    v13 = 0;
    v72 = 0;
    v79 = 0;
    goto LABEL_56;
  }

  v17 = v16;
  v13 = 0;
  v72 = 0;
  v79 = 0;
  v80 = 30;
  v18 = *v91;
  v74 = *MEMORY[0x1E696A578];
  v75 = v10;
  v19 = 0x1E696A000uLL;
  v83 = *v91;
  while (2)
  {
    v20 = 0;
    v78 = v17;
    do
    {
      if (*v91 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v90 + 1) + 8 * v20);
      v22 = [v10 objectForKeyedSubscript:v21];

      if (v22)
      {
        v23 = CDGetLogHandle("client");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v98 = v21;
          _os_log_impl(&dword_1BA7F1000, v23, OS_LOG_TYPE_DEFAULT, "already got a termination assertion for %@", buf, 0xCu);
        }

LABEL_24:

        goto LABEL_25;
      }

      v89 = 0;
      v23 = [MEMORY[0x1E6963628] bundleRecordWithBundleIdentifier:v21 allowPlaceholder:1 error:&v89];
      v24 = v89;
      if (v23)
      {
        v25 = v24 == 0;
      }

      else
      {
        v25 = 0;
      }

      if (!v25)
      {
        v13 = v24;
        v26 = CDGetLogHandle("client");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v98 = v21;
          v99 = 2112;
          v100 = *&v13;
          _os_log_error_impl(&dword_1BA7F1000, v26, OS_LOG_TYPE_ERROR, "Unable to create an LSBundleRecord for %@ : %@", buf, 0x16u);
        }

        v18 = v83;
        goto LABEL_24;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = CDGetLogHandle("client");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1BA7F1000, v27, OS_LOG_TYPE_DEFAULT, "setting resistance to RBSTerminationResistanceNotRunning", buf, 2u);
        }

        v80 = 10;
      }

      v28 = [MEMORY[0x1E69C7630] descriptor];
      [v28 setValues:5];
      v84 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:v21];
      v29 = [MEMORY[0x1E69C75D0] handleForPredicate:? error:?];
      v82 = v28;
      v30 = [v29 currentStateMatchingDescriptor:v28];

      v31 = *(v19 + 3776);
      [v30 terminationResistance];
      v32 = NSStringFromRBSTerminationResistance();
      v33 = [v31 stringWithFormat:@": %@", v32];

      v34 = CDGetLogHandle("client");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v98 = v33;
        _os_log_impl(&dword_1BA7F1000, v34, OS_LOG_TYPE_DEFAULT, "current process state %@", buf, 0xCu);
      }

      if ([v30 terminationResistance] > v80)
      {
        v53 = CDGetLogHandle("client");
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v98 = v21;
          _os_log_error_impl(&dword_1BA7F1000, v53, OS_LOG_TYPE_ERROR, "%@ has higher termination assertion. Do not wait for it terminate", buf, 0xCu);
        }

        goto LABEL_61;
      }

      v81 = v33;
      [*(v19 + 3776) stringWithFormat:@"CacheDeleteAppContainerCaches requesting termination assertion for %@", v21];
      v36 = v35 = v19;
      v37 = [objc_alloc(MEMORY[0x1E69C7650]) initWithExplanation:v36];
      [v37 setMaximumTerminationResistance:v80];
      [v37 setExceptionCode:3135099228];
      v38 = [objc_alloc(MEMORY[0x1E69C7668]) initWithPredicate:v84 context:v37];
      if (![v38 acquireWithError:0])
      {
        v40 = [*(v35 + 3776) stringWithFormat:@"CacheDeleteAppContainerCaches Unable to obtain termination assertion for %@", v21];
        v95 = v74;
        v96 = v40;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
        v50 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CacheDeleteErrorDomain" code:12 userInfo:v49];
        v51 = v21;
        v48 = 1;
        v77[2](v77, v50, v51);

        v10 = v75;
        v47 = 0;
LABEL_50:

        v15 = v76;
        goto LABEL_51;
      }

      if ((v79 & 1) == 0)
      {
        v72 = mach_absolute_time();
      }

      v39 = CDGetLogHandle("client");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v98 = v21;
        _os_log_impl(&dword_1BA7F1000, v39, OS_LOG_TYPE_DEFAULT, "got termination assertion for: %@", buf, 0xCu);
      }

      [v10 setObject:v38 forKeyedSubscript:v21];
      if ([v38 processExists])
      {
        v40 = [termAssertionObserver alloc];
        v41 = dispatch_semaphore_create(0);
        [(termAssertionObserver *)v40 setCompletionSem:v41];

        [v38 addObserver:v40];
        v42 = CDGetLogHandle("client");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v98 = v21;
          _os_log_impl(&dword_1BA7F1000, v42, OS_LOG_TYPE_DEFAULT, "got termination assertion for %@, but process still exists...", buf, 0xCu);
        }

        v43 = [(termAssertionObserver *)v40 completionSem];
        v44 = dispatch_time(0, 1000000000);
        v45 = dispatch_semaphore_wait(v43, v44);

        if (v45)
        {
          v46 = CDGetLogHandle("client");
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v98 = v21;
            _os_log_error_impl(&dword_1BA7F1000, v46, OS_LOG_TYPE_ERROR, "Timed out waiting for termination assertion for %@", buf, 0xCu);
          }

          [(termAssertionObserver *)v40 setCompletionSem:0];
          v47 = 0;
          v48 = 1;
        }

        else
        {
          v48 = 0;
          v47 = 1;
        }

        v79 = 1;
        v10 = v75;
        goto LABEL_50;
      }

      v48 = 0;
      v47 = 1;
      v79 = 1;
LABEL_51:

      if ((v47 & 1) == 0)
      {

        if (v48)
        {
LABEL_61:
          v13 = 0;
          v8 = v70;
          v7 = v71;
          v9 = v69;
          goto LABEL_62;
        }

        v8 = v70;
        v7 = v71;
        v9 = v69;
        goto LABEL_80;
      }

      v13 = 0;
      v19 = 0x1E696A000;
      v17 = v78;
      v18 = v83;
LABEL_25:
      ++v20;
    }

    while (v17 != v20);
    v52 = [v15 countByEnumeratingWithState:&v90 objects:v101 count:16];
    v17 = v52;
    if (v52)
    {
      continue;
    }

    break;
  }

LABEL_56:

  v9 = v69;
  v69[2](v69);
  v8 = v70;
  v7 = v71;
LABEL_62:
  if (v79)
  {
    v54 = *&gTimebaseConversion * (mach_absolute_time() - v72) / 1000000000.0;
    if (v7)
    {
      [v7 termination_threshold];
      if (v54 > v55)
      {
        v56 = MEMORY[0x1E696AEC0];
        [v7 termination_threshold];
        v58 = v57;
        v59 = [v76 componentsJoinedByString:{@", "}];
        v12 = [v56 stringWithFormat:@"Termination failure. Threshold: %f, ET: %f, bundle ids: %@", v58, *&v54, v59];

        v60 = CDGetLogHandle("client");
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v98 = v12;
          _os_log_error_impl(&dword_1BA7F1000, v60, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        v61 = [v76 componentsJoinedByString:{@", "}];
        [v7 addTerminationFailure:v61];
LABEL_68:

        goto LABEL_5;
      }
    }

    if (v54 > 1.0)
    {
      v12 = CDGetLogHandle("client");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v61 = [v76 componentsJoinedByString:{@", "}];
        *buf = 138543618;
        v98 = v61;
        v99 = 2048;
        v100 = v54;
        _os_log_error_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_ERROR, "held termination assertion on %{public}@ for %f seconds.", buf, 0x16u);
        goto LABEL_68;
      }

LABEL_5:
    }
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v62 = [v10 allValues];
  v63 = [v62 countByEnumeratingWithState:&v85 objects:v94 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v86;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v86 != v65)
        {
          objc_enumerationMutation(v62);
        }

        [*(*(&v85 + 1) + 8 * i) invalidate];
      }

      v64 = [v62 countByEnumeratingWithState:&v85 objects:v94 count:16];
    }

    while (v64);
  }

LABEL_80:
  v67 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t urgencyForDate(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-604800.0];
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-86400.0];
  v4 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-43200.0];
  if (v1)
  {
    if ([v1 compare:v4] == 1)
    {
      v5 = 4;
    }

    else if ([v1 compare:v3] == 1)
    {
      v5 = 3;
    }

    else if ([v1 compare:v2] == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t userManagerEntitled()
{
  v13 = *MEMORY[0x1E69E9840];
  error = 0;
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.usermanagerd.persona.fetch", &error);
    v3 = evaluateBoolProperty(v2);
    if (error)
    {
      v4 = CDGetLogHandle("client");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = error;
        _os_log_error_impl(&dword_1BA7F1000, v4, OS_LOG_TYPE_ERROR, "SecTaskCopyValueForEntitlement error: %@", buf, 0xCu);
      }
    }

    if (v2)
    {
      CFRelease(v2);
    }

    CFRelease(v1);
  }

  else
  {
    v5 = CDGetLogHandle("client");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = __error();
      v9 = strerror(*v8);
      *buf = 136315138;
      v12 = v9;
      _os_log_error_impl(&dword_1BA7F1000, v5, OS_LOG_TYPE_ERROR, "Unable to get secTask ref for self: %s", buf, 0xCu);
    }

    v3 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

id fetchAllPersonas()
{
  v20 = *MEMORY[0x1E69E9840];
  if (objc_opt_class())
  {
    v0 = [MEMORY[0x1E69DF068] sharedManager];
    v1 = [v0 listAllPersonaWithAttributes];

    v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
    if (!v1)
    {
      v3 = CDGetLogHandle("client");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA7F1000, v3, OS_LOG_TYPE_ERROR, "Did not get a persona attributes list from UserManagement", buf, 2u);
      }
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v1;
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 userPersonaUniqueString];
          if (v10)
          {
            [v2 setObject:v9 forKeyedSubscript:v10];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v2 = 0;
  }

  v11 = [v2 copy];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t dirStats(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v11 = 0;
  v12 = 0;
  v10 = &unk_1BA8338FA;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __dirStats_block_invoke;
  v6[3] = &unk_1E7F02E30;
  v6[4] = &v7;
  v2 = traverse_dir_with_state(v1, 0, 0, v6);
  v3 = v8;
  v8[4] = v2;
  v4 = v3[5];
  _Block_object_dispose(&v7, 8);

  return v2;
}

void sub_1BA8254C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __dirStats_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*a3 == 1)
  {
    a3[1] = 1;
  }

  else
  {
    ++*(*(*(a1 + 32) + 8) + 40);
  }

  return 1;
}

uint64_t BiomeLibraryLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = BiomeLibraryLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getBMPublisherOptionsClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibraryCore();
  result = objc_getClass("BMPublisherOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED76A100 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED76A108 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __recentlyUsedAppsDictionaryWithDates_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF00];
  v4 = a2;
  [v4 timestamp];
  v5 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v6 = *(a1 + 32);
  v7 = [v4 eventBody];

  v8 = [v7 bundleID];
  [v6 setObject:v5 forKeyedSubscript:v8];

  return 1;
}