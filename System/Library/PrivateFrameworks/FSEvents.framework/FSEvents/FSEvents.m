void __FSEventStreamSetDispatchQueue_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 188))
  {
    if (!*(v1 + 189))
    {
      process_dir_events(*(a1 + 40), v1);
    }
  }
}

void process_dir_events(int a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2[49];
  v4 = a2[50];
  v6 = a2[9];
  timeout.tv_sec = 0;
  timeout.tv_nsec = 0;
  v7 = kevent(a1, 0, 0, v4, v6, &timeout);
  if ((v7 & 0x80000000) != 0)
  {
    v36 = *__error();
    v37 = fsevent_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      process_dir_events_cold_1(v36);
    }
  }

  else if (v7)
  {
    for (i = v7; i; --i)
    {
      if (v4->udata < 0)
      {
        udata = v4->udata & 0x7FFFFFFF;
      }

      else
      {
        udata = v4->udata;
      }

      if (udata < 0 || udata >= v6 || (v10 = v5 + 32 * udata, v11 = *(v10 + 4), v11 < 0) || (v12 = *(v10 + 24)) == 0)
      {
        v20 = fsevent_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          if (udata >= v6)
          {
            v26 = 0;
            v25 = -1;
          }

          else
          {
            v24 = v5 + 32 * udata;
            v25 = *(v24 + 4);
            v26 = *(v24 + 24);
          }

          buf.st_dev = 136316162;
          *&buf.st_mode = "process_dir_events";
          WORD2(buf.st_ino) = 2048;
          *(&buf.st_ino + 6) = udata;
          HIWORD(buf.st_gid) = 1024;
          buf.st_rdev = v6;
          *(&buf.st_rdev + 2) = 1024;
          *(&buf.st_rdev + 6) = v25;
          WORD1(buf.st_atimespec.tv_sec) = 2048;
          *(&buf.st_atimespec.tv_sec + 4) = v26;
          p_buf = &buf;
          v17 = v20;
          v18 = "%s: index in event (%ld) not valid (%d max; fdtbl %d name %p)";
          v19 = 44;
          goto LABEL_39;
        }
      }

      else
      {
        if (*v10)
        {
          if (watch_path("process_dir_events", a1, v12, v4, v5 + 32 * udata, udata))
          {
            v21 = fsevent_default_log();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v34 = *(v10 + 24);
              buf.st_dev = 136315394;
              *&buf.st_mode = "process_dir_events";
              WORD2(buf.st_ino) = 2080;
              *(&buf.st_ino + 6) = v34;
              _os_log_error_impl(&dword_24A91B000, v21, OS_LOG_TYPE_ERROR, "%s: creation: watch_path() failed for '%s'", &buf, 0x16u);
            }
          }

          if (*v10)
          {
            goto LABEL_17;
          }

          root_dir_event_callback(a2, udata, 32);
          if ((*v10 & 8) == 0)
          {
            goto LABEL_17;
          }

          if (!watch_all_parents("process_dir_events", a1, *(v10 + 24), v5 + 32 * udata, udata))
          {
            goto LABEL_17;
          }

          v22 = fsevent_default_log();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          v23 = *(v10 + 24);
          buf.st_dev = 136315394;
          *&buf.st_mode = "process_dir_events";
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = v23;
          p_buf = &buf;
          v17 = v22;
          v18 = "%s: creation: watch_all_parents() failed for '%s'";
LABEL_51:
          v19 = 22;
          goto LABEL_39;
        }

        fflags = v4->fflags;
        if ((fflags & 0x22) == 0)
        {
          if ((fflags & 1) == 0)
          {
            goto LABEL_17;
          }

          root_dir_event_callback(a2, udata, 32);
          if (watch_path("process_dir_events", a1, *(v10 + 24), v4, v5 + 32 * udata, udata))
          {
            v27 = fsevent_default_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v35 = *(v10 + 24);
              buf.st_dev = 136315394;
              *&buf.st_mode = "process_dir_events";
              WORD2(buf.st_ino) = 2080;
              *(&buf.st_ino + 6) = v35;
              _os_log_error_impl(&dword_24A91B000, v27, OS_LOG_TYPE_ERROR, "%s: delete: watch_path() failed for '%s'", &buf, 0x16u);
            }
          }

          if ((*v10 & 8) == 0)
          {
            goto LABEL_17;
          }

          if (!watch_all_parents("process_dir_events", a1, *(v10 + 24), v5 + 32 * udata, udata))
          {
            goto LABEL_17;
          }

          v28 = fsevent_default_log();
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          v29 = *(v10 + 24);
          buf.st_dev = 136315394;
          *&buf.st_mode = "process_dir_events";
          WORD2(buf.st_ino) = 2080;
          *(&buf.st_ino + 6) = v29;
          p_buf = &buf;
          v17 = v28;
          v18 = "%s: delete: watch_all_parents() failed for '%s'";
          goto LABEL_51;
        }

        memset(&buf, 0, sizeof(buf));
        if (!fcntl(v11, 50, __s1))
        {
          if (!strcmp(__s1, *(v10 + 24)) && !lstat(__s1, &buf))
          {
            goto LABEL_17;
          }

          root_dir_event_callback(a2, udata, 32);
          if ((*v10 & 4) != 0)
          {
            free(*(v10 + 24));
            *(v10 + 24) = strdup(__s1);
          }

          else if (watch_path("process_dir_events", a1, *(v10 + 24), v4, v5 + 32 * udata, udata))
          {
            v30 = fsevent_default_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = *(v10 + 24);
              *v40 = 136315394;
              v41 = "process_dir_events";
              v42 = 2080;
              v43 = v31;
              _os_log_error_impl(&dword_24A91B000, v30, OS_LOG_TYPE_ERROR, "%s: rename: watch_path() failed for '%s'", v40, 0x16u);
            }
          }

          if ((*v10 & 8) == 0)
          {
            goto LABEL_17;
          }

          if (!watch_all_parents("process_dir_events", a1, *(v10 + 24), v5 + 32 * udata, udata))
          {
            goto LABEL_17;
          }

          v32 = fsevent_default_log();
          if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }

          v33 = *(v10 + 24);
          *v40 = 136315394;
          v41 = "process_dir_events";
          v42 = 2080;
          v43 = v33;
          p_buf = v40;
          v17 = v32;
          v18 = "%s: rename: watch_all_parents() failed for '%s'";
          goto LABEL_51;
        }

        v14 = fsevent_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = *(v10 + 4);
          *v40 = 136315394;
          v41 = "process_dir_events";
          v42 = 1024;
          LODWORD(v43) = v15;
          p_buf = v40;
          v17 = v14;
          v18 = "%s: failed to get the new path for fd %d";
          v19 = 18;
LABEL_39:
          _os_log_error_impl(&dword_24A91B000, v17, OS_LOG_TYPE_ERROR, v18, p_buf, v19);
        }
      }

LABEL_17:
      ++v4;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

uint64_t watch_path(const char *a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = 0;
  v57 = *MEMORY[0x277D85DE8];
  memset(&v44, 0, sizeof(v44));
  v11 = -1;
  memset(&v43, 0, sizeof(v43));
  v12 = 1;
  v13 = 0xFFFFFFFFLL;
  v14 = 1;
  while (1)
  {
    v15 = v10;
    v10 = v12;
    realpath_DARWIN_EXTSN(a3, &__s);
    if (v55)
    {
      v16 = 0;
      while (1)
      {
        v17 = open(&__s, 0x8000);
        if ((v17 & 0x80000000) == 0)
        {
          break;
        }

        __error();
        my_dirname(&__s, v56);
        realpath_DARWIN_EXTSN(v56, &__s);
        ++v16;
        if (!v55)
        {
          goto LABEL_8;
        }
      }

      v11 = v17;
LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }

    v16 = 0;
    if (v11 < 0)
    {
LABEL_8:
      v11 = open(&__s, 0x8000);
      if (v11 < 0)
      {
        v31 = fsevent_default_log();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          watch_path_cold_2();
        }

        __error();
        v33 = fsevent_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          watch_path_cold_3();
        }

        v13 = *__error();
        goto LABEL_47;
      }

      goto LABEL_11;
    }

LABEL_12:
    fcntl(v11, 2, 1);
    if (v14 || (v18 = open(&__s, 0), v18 < 0))
    {
      v20 = v15;
    }

    else
    {
      v19 = v18;
      fstat(v11, &v44);
      fstat(v19, &v43);
      close(v19);
      close(v11);
      if (v44.st_ino == v43.st_ino)
      {
        v34 = fsevent_default_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          watch_path_cold_1();
        }

        v11 = -1;
        goto LABEL_47;
      }

      v20 = v15;
      v11 = -1;
    }

    *a4 = v11;
    *(a4 + 8) = 0x270021FFFCLL;
    *(a4 + 16) = 0;
    *(a4 + 24) = a6;
    v13 = kevent(a2, a4, 1, 0, 0, 0);
    if ((v13 & 0x80000000) != 0)
    {
      v21 = fsevent_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a5 + 24);
        v27 = __error();
        v28 = strerror(*v27);
        *buf = 136316162;
        v46 = a1;
        v47 = 2080;
        p_s = "watch_path";
        v49 = 1024;
        v50 = v11;
        v51 = 2080;
        *v52 = v39;
        *&v52[8] = 2080;
        v53[0] = v28;
        _os_log_error_impl(&dword_24A91B000, v21, OS_LOG_TYPE_ERROR, "%s: %s: error trying to add kqueue for fd %d (%s; %s)", buf, 0x30u);
      }
    }

    v22 = *(a5 + 4);
    if ((v22 & 0x80000000) == 0)
    {
      *a4 = v22;
      *(a4 + 8) = 0x270002FFFCLL;
      *(a4 + 16) = 0;
      *(a4 + 24) = a6;
      v13 = kevent(a2, a4, 1, 0, 0, 0);
      if ((v13 & 0x80000000) != 0)
      {
        v23 = fsevent_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v40 = *(a5 + 4);
          v29 = __error();
          v30 = strerror(*v29);
          *buf = 136315906;
          v46 = a1;
          v47 = 2080;
          p_s = "watch_path";
          v49 = 1024;
          v50 = v40;
          v51 = 2080;
          *v52 = v30;
          _os_log_error_impl(&dword_24A91B000, v23, OS_LOG_TYPE_ERROR, "%s: %s: error removing fd %d from kqueue (%s)", buf, 0x26u);
        }
      }

      close(*(a5 + 4));
    }

    v24 = *a5 & 0xFFFFFFFE;
    if (v16)
    {
      ++v24;
    }

    *a5 = v24;
    *(a5 + 4) = v11;
    v25 = open(&__s, 0);
    if (v25 < 0)
    {
      break;
    }

    fstat(v11, &v44);
    fstat(v25, &v43);
    close(v25);
    if (v44.st_ino == v43.st_ino)
    {
      goto LABEL_41;
    }

    v26 = fsevent_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "watch_path";
      v47 = 2080;
      p_s = &__s;
      _os_log_error_impl(&dword_24A91B000, v26, OS_LOG_TYPE_ERROR, "%s: watching path(%s) renamed while registering watchroot", buf, 0x16u);
    }

LABEL_32:
    v14 = v25 >= 0;
    v12 = v10 + 1;
    if (v10 == 1000)
    {
      v10 = 1001;
      goto LABEL_47;
    }
  }

  if ((*a5 & 5) != 4)
  {
    goto LABEL_32;
  }

  if (!fcntl(*(a5 + 4), 50, buf))
  {
    free(*(a5 + 24));
    *(a5 + 24) = strdup(buf);
  }

LABEL_41:
  if (v20 != 999 && (v11 & 0x80000000) == 0)
  {
    v13 = 0;
    goto LABEL_49;
  }

LABEL_47:
  v35 = fsevent_default_log();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v38 = strerror(v13);
    *buf = 136316418;
    v46 = "watch_path";
    v47 = 2080;
    p_s = a3;
    v49 = 1024;
    v50 = v11;
    v51 = 1024;
    *v52 = v10;
    *&v52[4] = 1024;
    *&v52[6] = v13;
    LOWORD(v53[0]) = 2080;
    *(v53 + 2) = v38;
    _os_log_error_impl(&dword_24A91B000, v35, OS_LOG_TYPE_ERROR, "%s: watching path (%s) fd(%d) retry (%d) failed (%d):(%s)", buf, 0x32u);
  }

LABEL_49:
  v36 = *MEMORY[0x277D85DE8];
  return v13;
}

void root_dir_event_callback(uint64_t a1, int a2, int a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_23;
  }

  v6 = caller_path(*(*(a1 + 80) + 8 * a2), *(*(a1 + 88) + 4 * a2));
  v25 = v6;
  v24 = a3;
  v28[0] = 0;
  v7 = *(a1 + 184);
  if ((v7 & 0x40) != 0)
  {
    v8 = *MEMORY[0x277CBECE8];
    v9 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], v6);
    if (v9)
    {
      v10 = v9;
      values = v9;
      keys = @"path";
      cf = CFDictionaryCreate(v8, &keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (cf)
      {
        v11 = CFArrayCreate(v8, &cf, 1, MEMORY[0x277CBF128]);
        if (v11)
        {
          v12 = v11;
          (*(a1 + 16))(a1, *(a1 + 32), 1, v11, &v24, v28);
          CFRelease(v12);
        }

        else
        {
          v20 = fsevent_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            root_dir_event_callback_cold_1();
          }
        }

        CFRelease(cf);
      }

      else
      {
        v18 = fsevent_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          root_dir_event_callback_cold_2();
        }
      }

      v16 = v10;
      goto LABEL_22;
    }

    v17 = fsevent_default_log();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

LABEL_13:
    root_dir_event_callback_cold_3();
    goto LABEL_23;
  }

  if ((v7 & 1) == 0)
  {
    v3(a1, *(a1 + 32), 1, &v25, &v24, v28);
    goto LABEL_23;
  }

  v13 = *MEMORY[0x277CBECE8];
  cf = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], v6);
  if (!cf)
  {
    v19 = fsevent_default_log();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    goto LABEL_13;
  }

  v14 = CFArrayCreate(v13, &cf, 1, MEMORY[0x277CBF128]);
  if (v14)
  {
    v15 = v14;
    (*(a1 + 16))(a1, *(a1 + 32), 1, v14, &v24, v28);
    CFRelease(v15);
    v16 = cf;
LABEL_22:
    CFRelease(v16);
    goto LABEL_23;
  }

  v22 = fsevent_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    root_dir_event_callback_cold_1();
  }

LABEL_23:
  v21 = *MEMORY[0x277D85DE8];
}

const char *caller_path(const char *a1, char a2)
{
  v2 = a1;
  if (!(a2 & 3 | strncmp(a1, "/System/Volumes/Data/", 0x15uLL)))
  {
    if (!strncmp(v2 + 20, "/Device/", 8uLL))
    {
      v2 += 27;
    }

    else
    {
      v2 += 20;
    }
  }

  return v2;
}

CFArrayRef FSEventStreamCopyPathsBeingWatched(ConstFSEventStreamRef streamRef)
{
  if (!streamRef)
  {
    v11 = fsevent_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_4();
    }

    return 0;
  }

  v2 = malloc_type_calloc(*(streamRef + 9), 8uLL, 0x6004044C4A2DFuLL);
  if (!v2)
  {
    v12 = fsevent_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_3();
    }

    return 0;
  }

  v3 = v2;
  v4 = *(streamRef + 9);
  v5 = *MEMORY[0x277CBECE8];
  if (v4 >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = CFStringCreateWithFileSystemRepresentation(v5, *(*(streamRef + 10) + 8 * v6));
      if (!v7)
      {
        break;
      }

      v3[v6++] = v7;
      v4 = *(streamRef + 9);
      if (v4 <= v6)
      {
        goto LABEL_7;
      }
    }

    v13 = fsevent_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_2(streamRef + 10, v6);
    }

    goto LABEL_20;
  }

LABEL_7:
  v8 = CFArrayCreate(v5, v3, v4, MEMORY[0x277CBF128]);
  if (!v8)
  {
    v14 = fsevent_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyPathsBeingWatched_cold_1();
    }

LABEL_20:
    if (*(streamRef + 9) >= 1)
    {
      v15 = 0;
      do
      {
        v16 = v3[v15];
        if (!v16)
        {
          break;
        }

        CFRelease(v16);
        ++v15;
      }

      while (*(streamRef + 9) > v15);
    }

    free(v3);
    return 0;
  }

  v9 = v8;
  if (*(streamRef + 9) >= 1)
  {
    v10 = 0;
    do
    {
      CFRelease(v3[v10++]);
    }

    while (*(streamRef + 9) > v10);
  }

  free(v3);
  return v9;
}

uint64_t watch_all_parents(uint64_t a1, int kq, char *__s, uint64_t a4, uint64_t a5)
{
  v41 = *MEMORY[0x277D85DE8];
  memset(&changelist, 0, sizeof(changelist));
  v10 = *(a4 + 16);
  if (v10)
  {
    v11 = *(a4 + 8);
    if (v11 >= 1)
    {
      for (i = 0; i < v11; ++i)
      {
        if ((*(*(a4 + 16) + 4 * i) & 0x80000000) == 0)
        {
          changelist.ident = *(*(a4 + 16) + 4 * i);
          *&changelist.filter = 0x200002FFFCLL;
          changelist.data = 0;
          changelist.udata = (a5 | 0x80000000);
          kevent(kq, &changelist, 1, 0, 0, 0);
          close(*(*(a4 + 16) + 4 * i));
          v11 = *(a4 + 8);
        }
      }

      v10 = *(a4 + 16);
    }

    free(v10);
    *(a4 + 16) = 0;
    *(a4 + 8) = 0;
  }

  if (__s && *__s)
  {
    my_dirname(__s, __sa);
    v13 = v40;
    realpath_DARWIN_EXTSN(__sa, v40);
    v14 = 0;
    do
    {
      while (1)
      {
        v16 = *v13++;
        v15 = v16;
        if (v16 != 47)
        {
          break;
        }

        ++v14;
      }
    }

    while (v15);
    v19 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
    *(a4 + 16) = v19;
    if (v19)
    {
      v20 = 0;
      v21 = v14;
      *(a4 + 8) = v14;
      do
      {
        v22 = open(v40, 0x8000);
        *(*(a4 + 16) + 4 * v20) = v22;
        if ((v22 & 0x80000000) == 0)
        {
          fcntl(v22, 2, 1);
          changelist.ident = *(*(a4 + 16) + 4 * v20);
          *&changelist.filter = 0x200021FFFCLL;
          changelist.data = 0;
          changelist.udata = (a5 | 0x80000000);
          if (kevent(kq, &changelist, 1, 0, 0, 0) < 0)
          {
            v23 = fsevent_default_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = *(*(a4 + 16) + 4 * v20);
              v25 = __error();
              v26 = strerror(*v25);
              *buf = 136316162;
              v30 = a1;
              v31 = 2080;
              v32 = "watch_all_parents";
              v33 = 1024;
              v34 = v24;
              v35 = 2080;
              v36 = v40;
              v37 = 2080;
              v38 = v26;
              _os_log_error_impl(&dword_24A91B000, v23, OS_LOG_TYPE_ERROR, "%s: %s: error trying to add kqueue for fd %d (%s; %s)", buf, 0x30u);
            }
          }
        }

        __strcpy_chk();
        my_dirname(__sa, v40);
        result = 0;
        ++v20;
      }

      while (v20 < v21 && v40[1]);
    }

    else
    {
      result = 12;
    }
  }

  else
  {
    v17 = fsevent_default_log();
    result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (result)
    {
      watch_all_parents_cold_1();
      result = 0;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

char *my_dirname(char *__s, char *a2)
{
  if (__s && *__s && (v4 = strrchr(__s, 47)) != 0)
  {
    if (v4 > __s)
    {
      while (*v4 == 47)
      {
        if (--v4 <= __s)
        {
          v4 = __s;
          break;
        }
      }
    }

    v5 = v4 - __s;
    if (v4 - __s > 1023)
    {
      strncpy(a2, __s, 0x3FFuLL);
      a2[1023] = 0;
    }

    else
    {
      v6 = v5 + 1;
      strncpy(a2, __s, v5 + 1);
      a2[v6] = 0;
    }
  }

  else
  {
    strcpy(a2, "./");
  }

  return a2;
}

void receive_and_dispatch_rcv_msg(mach_port_name_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D85FA0];
  v3 = (MEMORY[0x28223BE20])();
  v4 = (v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v6 = (v13 - v5);
  v7 = mach_msg(v4, 50331910, 0, v2, a1, 0, 0);
  if (!v7)
  {
LABEL_8:
    v9 = (v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
    goto LABEL_9;
  }

  if (v7 != 268451844)
  {
    v11 = fsevent_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      receive_and_dispatch_rcv_msg_cold_2();
    }

    goto LABEL_8;
  }

  v8 = v4->msgh_size + 68;
  v9 = malloc_type_malloc(v8, 0x1000040504FFAC1uLL);
  if (mach_msg(v9, 262, 0, v8, a1, 0, 0))
  {
    v10 = fsevent_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      receive_and_dispatch_rcv_msg_cold_1();
    }
  }

LABEL_9:
  *v6 = 0;
  v6[1] = v2;
  FSEventsD2F_server(v9, v6);
  if (v9 != v4)
  {
    free(v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t FSEventsD2F_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  if (a1[5] == 67000)
  {
    _Xcallback_rpc(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x277D85EF8];
    *(a2 + 32) = -303;
  }

  return result;
}

void _Xcallback_rpc(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 4 && *(a1 + 4) == 120)
  {
    if (*(a1 + 39) == 1 && *(a1 + 55) == 1 && *(a1 + 71) == 1 && *(a1 + 87) == 1)
    {
      v3 = *(a1 + 40) >> 2;
      if (v3 == *(a1 + 104))
      {
        v4 = *(a1 + 56) >> 2;
        if (v4 == *(a1 + 108))
        {
          v5 = *(a1 + 72) >> 3;
          if (v5 == *(a1 + 112) && *(a1 + 88) == *(a1 + 116))
          {
            *(a2 + 32) = implementation_callback_rpc(*(a1 + 12), *(a1 + 100), *(a1 + 28), v3, *(a1 + 44), v4, *(a1 + 60), v5, *(a1 + 76), *(a1 + 88));
            mig_deallocate(*(a1 + 76), *(a1 + 88));
            *(a1 + 76) = 0;
            *(a1 + 88) = 0;
            mig_deallocate(*(a1 + 60), *(a1 + 72));
            *(a1 + 60) = 0;
            *(a1 + 72) = 0;
            mig_deallocate(*(a1 + 44), *(a1 + 56));
            *(a1 + 44) = 0;
            *(a1 + 56) = 0;
            mig_deallocate(*(a1 + 28), *(a1 + 40));
            *(a1 + 28) = 0;
            *(a1 + 40) = 0;
            return;
          }
        }
      }
    }

    v6 = -300;
  }

  else
  {
    v6 = -304;
  }

  *(a2 + 32) = v6;
  *(a2 + 24) = *MEMORY[0x277D85EF8];
}

uint64_t implementation_callback_rpc(int a1, unsigned int a2, uint64_t a3, int a4, _BYTE *a5, int a6, __CFArray *a7, int a8, char *a9, int a10)
{
  v156 = *MEMORY[0x277D85DE8];
  valuePtr = a1;
  if (a2 != a4)
  {
    v16 = fsevent_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_1();
    }
  }

  if (a2 != a6)
  {
    v17 = fsevent_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_2();
    }
  }

  if (a2 == a8 || (v18 = fsevent_default_log(), !os_log_type_enabled(v18, OS_LOG_TYPE_ERROR)))
  {
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_84:
    v72 = fsevent_default_log();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_18();
    }

    v36 = 4294967278;
    goto LABEL_218;
  }

  implementation_callback_rpc_cold_3();
  if (!a2)
  {
    goto LABEL_84;
  }

LABEL_10:
  v19 = *MEMORY[0x277CBECE8];
  v20 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
  if (!v20)
  {
    v35 = fsevent_default_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_17();
    }

    v36 = 4294967279;
    goto LABEL_218;
  }

  v21 = v20;
  pthread_mutex_lock(&FSEvents_streamDict_mutex);
  Value = CFDictionaryGetValue(FSEvents_streamDict, v21);
  pthread_mutex_unlock(&FSEvents_streamDict_mutex);
  CFRelease(v21);
  if (!Value)
  {
    v37 = fsevent_default_log();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_16();
    }

    v36 = 4294967286;
    goto LABEL_218;
  }

  v23 = 0;
  v24 = 0;
  LODWORD(v25) = 0;
  LODWORD(v146) = a10;
  v145 = a9;
  v141 = a2;
  do
  {
    v26 = *&a5[v23];
    v27 = (v26 << 8) & 0x1000;
    if ((v26 & 0x20) != 0)
    {
      v27 = 4096;
    }

    v28 = vandq_s8(vshlq_u32(vdupq_n_s32(v26), xmmword_24A926750), xmmword_24A926760);
    v29 = vorr_s8(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    v30 = v29.i32[0] | v26 & 0x100000 | v29.i32[1] | (v26 >> 4) & 0x40000 | (((v26 >> 19) & 1) << 21) | (v26 << 8) & 0x400F00 | v27 & 0xFFFFFFF8 | (v26 >> 29);
    if ((v26 & 0x40) != 0)
    {
      v30 |= 0xA000u;
    }

    v31 = (v26 << 6) & 0x8000;
    if ((v26 & 0x400) != 0)
    {
      v31 = 0x8000;
    }

    *&a5[v23] = (v26 >> 2) & 0x80000 | (((v26 >> 8) & 1) << 14) | (((v26 >> 7) & 1) << 8) | v31 | v30;
    if ((v30 & 6) != 0)
    {
      v32 = *(Value + 18);
      v24 = 1;
    }

    else
    {
      v32 = 1;
    }

    v25 = (v32 + v25);
    v23 += 4;
  }

  while (4 * a2 != v23);
  v33 = *(Value + 46);
  if ((v33 & 0x40) != 0)
  {
    v34 = malloc_type_calloc(v25, 8uLL, 0x100004000313F17uLL);
    if ((*(Value + 46) & 0x100) != 0)
    {
      goto LABEL_25;
    }

LABEL_33:
    v144 = 0;
    goto LABEL_34;
  }

  v34 = 0;
  if ((v33 & 0x100) == 0)
  {
    goto LABEL_33;
  }

LABEL_25:
  v144 = malloc_type_calloc(v25, 4uLL, 0x100004052888210uLL);
LABEL_34:
  if (a2 == 1 && (*a5 & 0x10) != 0)
  {
    if (!Value[190])
    {
      v36 = 0;
      goto LABEL_218;
    }

    Value[190] = 0;
  }

  if (!Value[188])
  {
    v36 = 4294966297;
    goto LABEL_218;
  }

  v143 = malloc_type_malloc(8 * v25, 0x10040436913F5uLL);
  if (!v143)
  {
    v67 = fsevent_default_log();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_15();
    }

    v40 = 0;
    v36 = 4294967285;
    goto LABEL_215;
  }

  *&v138 = a3;
  v38 = malloc_type_calloc(v25, 4uLL, 0x100004052888210uLL);
  v40 = v38;
  v142 = v34;
  if (!v38)
  {
    v68 = fsevent_default_log();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_14();
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    v42 = 0;
    v45 = 0;
    v36 = 4294967285;
    goto LABEL_199;
  }

  v139 = v38;
  v134 = 8 * v25;
  if (!v24)
  {
    if (!v25)
    {
      v45 = a7;
      v42 = a5;
      goto LABEL_127;
    }

    v140 = a7;
    v137 = v19;
    v133 = 0;
    v73 = (v138 + 4);
    *&v39 = 136315394;
    v138 = v39;
    v74 = v143;
    v75 = v144;
    v76 = v25;
    v77 = v146;
    while (1)
    {
      if (*(v73 - 1) >= v77)
      {
        v78 = fsevent_default_log();
        v79 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
        v77 = v146;
        if (v79)
        {
          *buf = v138;
          v153 = "implementation_callback_rpc";
          v154 = 2080;
          v155 = "path_offsets[i] < paths_blobCnt";
          _os_log_error_impl(&dword_24A91B000, v78, OS_LOG_TYPE_ERROR, "%s(): failed assertion '%s'\n", buf, 0x16u);
          v77 = v146;
        }
      }

      v80 = *(v73 - 1);
      if (v80 >= v77)
      {
        v81 = "ERROR: failed assertion: path_offsets[i] < paths_blobCnt";
      }

      else
      {
        v81 = &v145[v80];
      }

      *v74 = v81;
      if (v142)
      {
        v82 = strlen(v81);
        v77 = v146;
        v83 = v146;
        if (v25 != 1)
        {
          v83 = v146;
          if (v76 != 1)
          {
            v83 = *v73;
          }
        }

        v84 = v80 + v82 + 1;
        if (v84 == v83)
        {
          v85 = 0;
        }

        else
        {
          if (v84 + 8 > v83)
          {
            goto LABEL_105;
          }

          v85 = *&v145[v84];
        }

        *v34 = v85;
      }

LABEL_105:
      if (v144)
      {
        v86 = strlen(v81);
        v77 = v146;
        v87 = v146;
        if (v25 != 1)
        {
          v87 = v146;
          if (v76 != 1)
          {
            v87 = *v73;
          }
        }

        v88 = v80 + v86 + 9;
        if (v88 == v87)
        {
          v89 = 0;
LABEL_113:
          *v75 = v89;
          goto LABEL_114;
        }

        if (v88 + 4 <= v87)
        {
          v89 = *&v145[v88];
          goto LABEL_113;
        }
      }

LABEL_114:
      ++v75;
      v34 += 8;
      ++v73;
      ++v74;
      if (!--v76)
      {
        v40 = v139;
        v45 = v140;
        v42 = a5;
        v24 = v133;
        v19 = v137;
        goto LABEL_127;
      }
    }
  }

  v140 = a7;
  v41 = malloc_type_malloc(4 * v25, 0x100004052888210uLL);
  if (!v41)
  {
    v90 = fsevent_default_log();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_6();
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    v42 = 0;
    v45 = 0;
    v36 = 4294967281;
    goto LABEL_199;
  }

  v42 = v41;
  v43 = malloc_type_malloc(v134, 0x100004000313F17uLL);
  if (!v43)
  {
    v91 = fsevent_default_log();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_5();
    }

    v69 = 0;
    v70 = 0;
    v71 = 0;
    v45 = 0;
    v36 = 4294967280;
    goto LABEL_199;
  }

  v45 = v43;
  v137 = v19;
  v133 = v24;
  v46 = 0;
  v47 = 0;
  *&v136 = v138 + 4;
  *&v44 = 136315394;
  v132 = v44;
  v48 = v141;
  v49 = v146;
  do
  {
    v50 = *&a5[4 * v46];
    v51 = *(v140 + v46);
    if ((v50 & 6) == 0)
    {
      if (*(v138 + 4 * v46) >= v49)
      {
        v135 = fsevent_default_log();
        v56 = os_log_type_enabled(v135, OS_LOG_TYPE_ERROR);
        v49 = v146;
        if (v56)
        {
          *buf = v132;
          v153 = "implementation_callback_rpc";
          v154 = 2080;
          v155 = "path_offsets[i] < paths_blobCnt";
          _os_log_error_impl(&dword_24A91B000, v135, OS_LOG_TYPE_ERROR, "%s(): failed assertion '%s'\n", buf, 0x16u);
          v49 = v146;
        }
      }

      v57 = *(v138 + 4 * v46);
      v58 = &v145[v57];
      if (v57 >= v49)
      {
        v58 = "ERROR: failed assertion: path_offsets[i] < paths_blobCnt";
      }

      v143[v47] = v58;
      if (v142)
      {
        v59 = strlen(v143[v46]);
        v49 = v146;
        v60 = v146;
        if (v25 != 1)
        {
          v60 = v146;
          if (v46 != v25)
          {
            v60 = *(v136 + 4 * v46);
          }
        }

        v61 = v57 + v59 + 1;
        if (v61 == v60)
        {
          v62 = 0;
        }

        else
        {
          if (v61 + 8 > v60)
          {
            goto LABEL_64;
          }

          v62 = *&v145[v61];
        }

        *&v142[8 * v47] = v62;
      }

LABEL_64:
      v48 = v141;
      if (v144)
      {
        v63 = strlen(v143[v46]);
        v49 = v146;
        v64 = v146;
        if (v25 != 1)
        {
          v64 = v146;
          if (v46 != v25)
          {
            v64 = *(v136 + 4 * v46);
          }
        }

        v65 = v57 + v63 + 9;
        if (v65 == v64)
        {
          v66 = 0;
          v48 = v141;
LABEL_72:
          v144[v47] = v66;
          goto LABEL_73;
        }

        v48 = v141;
        if (v65 + 4 <= v64)
        {
          v66 = *&v145[v65];
          goto LABEL_72;
        }
      }

LABEL_73:
      v42[v47] = v50;
      *(v45 + v47++) = v51;
      v40 = v139;
      goto LABEL_74;
    }

    v52 = *(Value + 9);
    if (v52 >= 1)
    {
      v53 = 0;
      v54 = v143;
      do
      {
        v55 = v47 + v53;
        v54[v55] = *(*(Value + 10) + 8 * v53);
        v40[v55] = *(*(Value + 11) + 4 * v53);
        v42[v55] = v50 | 1;
        *(v45 + v55) = v51;
        ++v53;
      }

      while (v52 != v53);
      v47 += v53;
    }

LABEL_74:
    ++v46;
  }

  while (v46 != v48);
  if (v47 == v25)
  {
    v24 = v133;
    v19 = v137;
    goto LABEL_128;
  }

  v92 = fsevent_default_log();
  v24 = v133;
  v19 = v137;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    implementation_callback_rpc_cold_4();
  }

LABEL_127:
  v48 = v141;
LABEL_128:
  v93 = 0;
  v94 = *(Value + 21);
  if (v94 == -1)
  {
    v94 = 0;
  }

  do
  {
    if (*(v45 + v93) > v94)
    {
      v94 = *(v45 + v93);
    }

    ++v93;
  }

  while (v48 != v93);
  *(Value + 21) = v94;
  v95 = *(Value + 46);
  if ((v95 & 0x40) == 0)
  {
    if ((v95 & 1) == 0)
    {
      v71 = 0;
      goto LABEL_158;
    }

    v119 = malloc_type_calloc(v25, 8uLL, 0x6004044C4A2DFuLL);
    if (!v119)
    {
      v126 = fsevent_default_log();
      if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
      {
        implementation_callback_rpc_cold_13();
      }

      v69 = 0;
      v70 = 0;
      v71 = 0;
      v36 = 4294967284;
      goto LABEL_199;
    }

    v69 = v119;
    if (v25)
    {
      v120 = 0;
      while (1)
      {
        v121 = caller_path(v143[v120], v40[v120]);
        v122 = CFStringCreateWithFileSystemRepresentation(v19, v121);
        if (!v122)
        {
          break;
        }

        v69[v120++] = v122;
        if (v25 == v120)
        {
          goto LABEL_176;
        }
      }

      v127 = fsevent_default_log();
      if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        implementation_callback_rpc_cold_11();
      }

      v70 = 0;
      v71 = 0;
      v36 = 4294967283;
      goto LABEL_199;
    }

LABEL_176:
    v123 = CFArrayCreate(v19, v69, v25, MEMORY[0x277CBF128]);
    if (v123)
    {
      v70 = v123;
      v71 = 0;
LABEL_159:
      if (*(Value + 2) && Value[188] && !Value[189])
      {
        FSEventStreamRetain(Value);
        v110 = *(Value + 46);
        if ((v110 & 0x40) != 0)
        {
          (*(Value + 2))(Value, *(Value + 4), v25, v71, v42, v45);
        }

        else if (v110)
        {
          (*(Value + 2))(Value, *(Value + 4), v25, v70, v42, v45);
        }

        else
        {
          v140 = v71;
          v133 = v24;
          v145 = &v132;
          MEMORY[0x28223BE20]();
          if (v134 >= 0x200)
          {
            v112 = 512;
          }

          else
          {
            v112 = v134;
          }

          v146 = (&v132 - ((v111 + 15) & 0xFFFFFFFF0));
          bzero(v146, v112);
          if (v25)
          {
            v113 = v25;
            v114 = v146;
            v115 = v139;
            v116 = v143;
            do
            {
              v118 = *v116++;
              v117 = v118;
              LODWORD(v118) = *v115++;
              *v114 = caller_path(v117, v118);
              v114 = (v114 + 8);
              --v113;
            }

            while (v113);
          }

          (*(Value + 2))(Value, *(Value + 4), v25, v146, v42, v45);
          v24 = v133;
          v40 = v139;
          v71 = v140;
        }

        if (*(Value + 45))
        {
          pthread_mutex_lock((Value + 240));
          pthread_cond_signal((Value + 304));
          pthread_mutex_unlock((Value + 240));
        }

        FSEventStreamRelease(Value);
      }

      v36 = 0;
      goto LABEL_199;
    }

    v128 = fsevent_default_log();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_12();
    }

LABEL_181:
    v70 = 0;
    v71 = 0;
    v36 = 4294967282;
    goto LABEL_199;
  }

  Mutable = CFArrayCreateMutable(v19, v48, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v124 = fsevent_default_log();
    if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
    {
      implementation_callback_rpc_cold_10();
    }

    v69 = 0;
    goto LABEL_181;
  }

  v71 = Mutable;
  if (!v25)
  {
LABEL_158:
    v70 = 0;
    v69 = 0;
    goto LABEL_159;
  }

  v137 = v19;
  v98 = 0;
  *&v97 = 136315394;
  v136 = v97;
  v145 = v142;
  v140 = Mutable;
  v141 = v144;
  while (1)
  {
    v99 = v143[v98];
    v100 = v40[v98];
    v146 = CFDictionaryCreateMutable(v137, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!v146)
    {
      break;
    }

    v101 = caller_path(v99, v100);
    v102 = CFStringCreateWithFileSystemRepresentation(v137, v101);
    if (v102)
    {
      v103 = v102;
      CFDictionaryAddValue(v146, @"path", v102);
      CFRelease(v103);
      v40 = v139;
      v71 = v140;
    }

    else
    {
      *&v138 = fsevent_default_log();
      v40 = v139;
      v71 = v140;
      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        *buf = v136;
        v153 = "implementation_callback_rpc";
        v154 = 2080;
        v155 = v101;
        _os_log_error_impl(&dword_24A91B000, v138, OS_LOG_TYPE_ERROR, "%s: ERROR: CFStringCreateWithFileSystemRepresentation('%s') failed", buf, 0x16u);
      }
    }

    if ((*&a5[4 * v98] & 0x77FF00) != 0)
    {
      if (v142 && *v145)
      {
        v104 = CFNumberCreate(v137, kCFNumberSInt64Type, v145);
        if (v104)
        {
          v105 = v104;
          CFDictionaryAddValue(v146, @"fileID", v104);
          CFRelease(v105);
        }

        else
        {
          v106 = fsevent_default_log();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            implementation_callback_rpc_cold_7(v150, &v151, v106);
          }
        }
      }

      if (v144 && *v141)
      {
        v107 = CFNumberCreate(v137, kCFNumberSInt32Type, v141);
        if (v107)
        {
          v108 = v107;
          CFDictionaryAddValue(v146, @"docID", v107);
          CFRelease(v108);
        }

        else
        {
          v109 = fsevent_default_log();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
          {
            implementation_callback_rpc_cold_7(v148, &v149, v109);
          }
        }
      }
    }

    CFArraySetValueAtIndex(v71, v98, v146);
    CFRelease(v146);
    ++v98;
    v141 += 4;
    v145 += 8;
    if (v25 == v98)
    {
      goto LABEL_158;
    }
  }

  v125 = fsevent_default_log();
  if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
  {
    implementation_callback_rpc_cold_9();
  }

  v69 = 0;
  v70 = 0;
  v36 = 4294967281;
  v40 = v139;
  v71 = v140;
LABEL_199:
  free(v143);
  if (v42 && v24)
  {
    free(v42);
  }

  if (v45 && v24)
  {
    free(v45);
  }

  v34 = v142;
  if (v69)
  {
    if (v25)
    {
      v129 = v69;
      do
      {
        if (!*v129)
        {
          break;
        }

        CFRelease(*v129++);
        --v25;
      }

      while (v25);
    }

    free(v69);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v71)
  {
    CFRelease(v71);
  }

LABEL_215:
  if (v34)
  {
    free(v34);
  }

  free(v40);
LABEL_218:
  v130 = *MEMORY[0x277D85DE8];
  return v36;
}

void FSEventStreamRetain(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    atomic_fetch_add(streamRef, 1u);
  }

  else
  {
    v1 = fsevent_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamRetain_cold_1();
    }
  }
}

uint64_t FSEvents_connect()
{
  pthread_mutex_lock(&FSEvents_f2d_public_port_mutex);
  if (FSEvents_f2d_public_port)
  {
    pthread_mutex_unlock(&FSEvents_f2d_public_port_mutex);
    return 0;
  }

  else
  {
    v1 = *MEMORY[0x277D85F18];
    v0 = bootstrap_look_up2();
    pthread_mutex_unlock(&FSEvents_f2d_public_port_mutex);
    if (v0)
    {
      v2 = fsevent_default_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        FSEvents_connect_cold_1();
      }
    }
  }

  return v0;
}

CFUUIDRef FSEventsCopyUUIDForDevice(dev_t dev)
{
  v11 = *MEMORY[0x277D85DE8];
  if (dev <= 0)
  {
    v2 = fsevent_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      FSEventsCopyUUIDForDevice_cold_1();
    }
  }

  if (FSEvents_connect() || ((v10 = 0, memset(v9, 0, sizeof(v9)), f2d_get_server_uuid_rpc(FSEvents_f2d_public_port, dev, v9), LODWORD(v9[0]) == 1429032782) ? (v6 = *(v9 + 3) == 1145656661) : (v6 = 0), v6 || (v7 = CFStringCreateWithBytes(0, v9, 36, 0x600u, 0)) == 0))
  {
    v3 = 0;
  }

  else
  {
    v8 = v7;
    v3 = CFUUIDCreateFromString(0, v7);
    CFRelease(v8);
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t f2d_get_server_uuid_rpc(int a1, int a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *&msg[20] = 0u;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D200000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v6 = *&msg[12];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(msg, 3162115, 0x24u, 0x50u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&msg[20] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&msg[20] == 66102)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 72)
          {
            if (!*&msg[8])
            {
              v8 = *&msg[32];
              if (!*&msg[32])
              {
                v12 = *v15;
                *a3 = v14;
                *(a3 + 16) = v12;
                *(a3 + 32) = *&v15[16];
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&msg[32] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void FSEventStreamRelease(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    if (atomic_fetch_add(streamRef, 0xFFFFFFFF) <= 1)
    {
      if ((*streamRef & 0x80000000) != 0)
      {
        v2 = fsevent_default_log();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamRelease_cold_1();
        }
      }

      else
      {

        _FSEventStreamDeallocate(streamRef);
      }
    }
  }

  else
  {
    v1 = fsevent_default_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamRelease_cold_2();
    }
  }
}

uint64_t _FSEventStreamCreate(const char *a1, CFAllocatorRef Default, uint64_t a3, __int128 *a4, int a5, CFArrayRef theArray, uint64_t a7, uint64_t a8, int a9)
{
  v83[127] = *MEMORY[0x277D85DE8];
  if ((a9 & 0x41) == 0x40)
  {
    v10 = fsevent_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_9();
    }

    goto LABEL_90;
  }

  Count = CFArrayGetCount(theArray);
  if (*MEMORY[0x277CBECE8] == Default)
  {
    Default = CFAllocatorGetDefault();
  }

  v18 = MEMORY[0x24C2204A0](Default, 456, 0x10F0040DD1F3337, 0);
  if (!v18)
  {
    v50 = fsevent_default_log();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_8();
    }

    goto LABEL_90;
  }

  v19 = v18;
  *(v18 + 448) = 0;
  *(v18 + 416) = 0u;
  *(v18 + 432) = 0u;
  *(v18 + 384) = 0u;
  *(v18 + 400) = 0u;
  *(v18 + 352) = 0u;
  *(v18 + 368) = 0u;
  *(v18 + 320) = 0u;
  *(v18 + 336) = 0u;
  *(v18 + 288) = 0u;
  *(v18 + 304) = 0u;
  *(v18 + 256) = 0u;
  *(v18 + 272) = 0u;
  *(v18 + 224) = 0u;
  *(v18 + 240) = 0u;
  *(v18 + 192) = 0u;
  *(v18 + 208) = 0u;
  *(v18 + 160) = 0u;
  *(v18 + 176) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 8) = Default;
  CFRetain(Default);
  *(v19 + 16) = a3;
  if (a4)
  {
    v20 = *a4;
    v21 = a4[1];
    *(v19 + 56) = *(a4 + 4);
    *(v19 + 40) = v21;
    *(v19 + 24) = v20;
  }

  v66 = a7;
  v22 = *(v19 + 40);
  if (v22)
  {
    v22(*(v19 + 32));
  }

  *(v19 + 64) = a5;
  *(v19 + 72) = Count;
  *(v19 + 80) = MEMORY[0x24C2204A0](Default, 8 * Count, 0x10040436913F5, 0);
  *(v19 + 88) = MEMORY[0x24C2204A0](Default, 4 * Count, 0x100004052888210, 0);
  v23 = *(v19 + 80);
  if (!v23)
  {
    v51 = fsevent_default_log();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_7();
    }

    goto LABEL_89;
  }

  bzero(v23, 8 * Count);
  bzero(*(v19 + 88), 4 * Count);
  if ((a9 & 4) == 0)
  {
    v68 = a1;
    *(v19 + 408) = -1;
    goto LABEL_14;
  }

  v52 = kqueue();
  *(v19 + 408) = v52;
  if (v52 < 0)
  {
    v55 = fsevent_default_log();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_3();
    }

    goto LABEL_89;
  }

  v53 = MEMORY[0x24C2204A0](Default, 32 * Count, 0x101004048259AEFLL, 0);
  *(v19 + 392) = v53;
  if (!v53)
  {
    v56 = fsevent_default_log();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_2();
    }

    goto LABEL_89;
  }

  bzero(v53, 32 * Count);
  v54 = MEMORY[0x24C2204A0](Default, 32 * Count, 0x108004019856BD9, 0);
  *(v19 + 400) = v54;
  if (!v54)
  {
    v60 = fsevent_default_log();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamCreate_cold_1();
    }

LABEL_89:
    _FSEventStreamDeallocate(v19);
LABEL_90:
    v19 = 0;
    goto LABEL_91;
  }

  v68 = a1;
  bzero(v54, 32 * Count);
LABEL_14:
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(ValueAtIndex))
      {
        v57 = fsevent_default_log();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_4();
        }

        goto LABEL_89;
      }

      if (!CFStringGetFileSystemRepresentation(ValueAtIndex, buffer, 1024))
      {
        v58 = fsevent_default_log();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_6();
        }

        goto LABEL_89;
      }

      if (a5)
      {
        v27 = 1000;
        while (1)
        {
          v28 = getfsstat(0, 0, 2);
          if (v28 < 0)
          {
            goto LABEL_33;
          }

          v29 = 2168 * (v28 + 1);
          v30 = malloc_type_malloc(2168 * (v28 + 1), 0x100004087E0324AuLL);
          if (!v30)
          {
            goto LABEL_33;
          }

          v31 = v30;
          v32 = getfsstat(v30, v29, 2);
          if ((v32 & 0x80000000) == 0)
          {
            break;
          }

          free(v31);
          if (!--v27)
          {
            goto LABEL_33;
          }
        }

        if (!v32)
        {
LABEL_33:
          v33 = buffer;
          __strlcpy_chk();
LABEL_34:
          *(*(v19 + 88) + 4 * i) |= 2u;
          goto LABEL_35;
        }

        v34 = v32;
        f_mntonname = v31->f_mntonname;
        while (*(f_mntonname - 10) != a5)
        {
          f_mntonname += 2168;
          if (!--v34)
          {
            v33 = buffer;
            __strlcpy_chk();
LABEL_64:
            free(v31);
            goto LABEL_34;
          }
        }

        snprintf(__s, 0x400uLL, "%s/%s", f_mntonname, buffer);
        if (realpath_DARWIN_EXTSN(__s, __s1))
        {
          v48 = strlen(f_mntonname);
          if (__s1[v48] == 47)
          {
            v33 = &__s1[v48 + 1];
          }

          else
          {
            v33 = &__s1[v48];
          }

          goto LABEL_64;
        }

        free(v31);
      }

      else
      {
        v33 = __s1;
        if (fsevent_realpath(buffer, __s1))
        {
          goto LABEL_35;
        }
      }

      if (buffer[0] == 47)
      {
        v33 = buffer;
        __strlcpy_chk();
      }

      else
      {
        v33 = __s1;
        getcwd(__s1, 0x400uLL);
        __strlcat_chk();
        __strlcat_chk();
      }

LABEL_35:
      v36 = (strlen(v33) + 1);
      *(*(v19 + 80) + 8 * i) = MEMORY[0x24C2204A0](Default, v36, 1425393460, 0);
      v37 = *(*(v19 + 80) + 8 * i);
      if (!v37)
      {
        v59 = fsevent_default_log();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamCreate_cold_5();
        }

        goto LABEL_89;
      }

      strlcpy(v37, v33, v36);
      if (*buffer == 0x2F6D65747379532FLL && v83[0] == 0x2F73656D756C6F56 && *(v83 + 5) == 0x2F617461442F7365)
      {
        *(*(v19 + 88) + 4 * i) |= 1u;
        if ((a9 & 4) == 0)
        {
          continue;
        }
      }

      else if ((a9 & 4) == 0)
      {
        continue;
      }

      v40 = *(v19 + 392);
      v41 = v40 + 32 * i;
      *(v41 + 4) = -1;
      if (!*(v19 + 64) || __s1[0] == 47)
      {
        *(v41 + 24) = strdup(__s1);
      }

      else
      {
        if (!realpath_DARWIN_EXTSN(*(*(v19 + 80) + 8 * i), __s))
        {
          getcwd(__s, 0x400uLL);
          v42 = strlen(__s);
          __s[v42] = 47;
          strlcpy(&__s[v42 + 1], *(*(v19 + 80) + 8 * i), 1024 - (v42 + 1));
        }

        *(*(v19 + 392) + 32 * i + 24) = strdup(__s);
        v40 = *(v19 + 392);
      }

      v43 = (v40 + 32 * i);
      *v43 = 8;
      v44 = watch_path(v68, *(v19 + 408), __s1, *(v19 + 400) + 32 * i, v43, i);
      if (v44)
      {
        v45 = v44;
        v46 = fsevent_default_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v49 = strerror(v45);
          *__s = 136316674;
          v70 = v68;
          v71 = 2080;
          v72 = "_FSEventStreamCreate";
          v73 = 2080;
          v74 = v33;
          v75 = 2080;
          *v76 = __s1;
          *&v76[8] = 1024;
          *&v76[10] = i;
          v77 = 1024;
          v78 = v45;
          v79 = 2080;
          v80 = v49;
          _os_log_error_impl(&dword_24A91B000, v46, OS_LOG_TYPE_ERROR, "%s: %s: ERROR: watch_path() failed for srcPath='%s' resolvedPath='%s' index=%d (%d):(%s)", __s, 0x40u);
        }

        if ((v45 - 23) < 2)
        {
          goto LABEL_89;
        }
      }

      v47 = watch_all_parents(v68, *(v19 + 408), __s1, *(v19 + 392) + 32 * i, i);
      if (v47)
      {
        v61 = v47;
        v62 = fsevent_default_log();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v65 = strerror(v61);
          *__s = 136316162;
          v70 = v68;
          v71 = 2080;
          v72 = "_FSEventStreamCreate";
          v73 = 2080;
          v74 = v33;
          v75 = 1024;
          *v76 = v61;
          *&v76[4] = 2080;
          *&v76[6] = v65;
          _os_log_error_impl(&dword_24A91B000, v62, OS_LOG_TYPE_ERROR, "%s: %s: ERROR: watch_all_parents() failed for '%s' (%d):(%s)", __s, 0x30u);
        }

        goto LABEL_89;
      }
    }
  }

  *(v19 + 168) = v66;
  *(v19 + 176) = a8;
  *(v19 + 184) = a9;
  *(v19 + 188) = 0;
  *(v19 + 190) = v66 != -1;
  *(v19 + 216) = 0;
  *(v19 + 360) = 0;
  *(v19 + 432) = 0;
  *(v19 + 192) = 0;
  *(v19 + 200) = 0;
  *v19 = 1;
LABEL_91:
  v63 = *MEMORY[0x277D85DE8];
  return v19;
}

void FSEventStreamSetDispatchQueue(FSEventStreamRef streamRef, dispatch_queue_t q)
{
  if (streamRef)
  {
    if (q)
    {
      if (!*(streamRef + 48))
      {
        if (allocate_d2f_port("FSEventStreamSetDispatchQueue", streamRef))
        {
          v10 = fsevent_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamSetDispatchQueue_cold_1();
          }

          return;
        }

        pthread_mutex_lock(&FSEvents_streamDict_mutex);
        v11 = *MEMORY[0x277CBECE8];
        if (!FSEvents_streamDict)
        {
          FSEvents_streamDict = CFDictionaryCreateMutable(v11, 0, MEMORY[0x277CBF138], 0);
        }

        v12 = CFNumberCreate(v11, kCFNumberIntType, streamRef + 192);
        CFDictionaryAddValue(FSEvents_streamDict, v12, streamRef);
        pthread_mutex_unlock(&FSEvents_streamDict_mutex);
        CFRelease(v12);
      }

      pthread_mutex_init((streamRef + 240), 0);
      pthread_cond_init((streamRef + 304), 0);
      dispatch_retain(q);
      *(streamRef + 44) = q;
      if (create_d2f_port_source(streamRef))
      {
        if ((*(streamRef + 184) & 4) == 0)
        {
          return;
        }

        v4 = *(streamRef + 102);
        v5 = dispatch_source_create(MEMORY[0x277D85D28], v4, 0, *(streamRef + 44));
        if (v5)
        {
          v6 = v5;
          dispatch_set_qos_class_fallback();
          FSEventStreamRetain(streamRef);
          handler[0] = MEMORY[0x277D85DD0];
          handler[1] = 0x40000000;
          handler[2] = __FSEventStreamSetDispatchQueue_block_invoke;
          handler[3] = &__block_descriptor_tmp_0;
          handler[4] = streamRef;
          v17 = v4;
          dispatch_source_set_event_handler(v6, handler);
          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 0x40000000;
          v14[2] = __FSEventStreamSetDispatchQueue_block_invoke_2;
          v14[3] = &__block_descriptor_tmp_24;
          v15 = v4;
          v14[4] = v6;
          v14[5] = streamRef;
          dispatch_source_set_cancel_handler(v6, v14);
          *(streamRef + 54) = v6;
          *(streamRef + 110) = 1;
          return;
        }

        v13 = fsevent_default_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamSetDispatchQueue_cold_3();
        }
      }

      else
      {
        v9 = fsevent_default_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamSetDispatchQueue_cold_2();
        }
      }

      if (*(streamRef + 54))
      {
        cancel_source(streamRef + 54, streamRef + 110);
        *(streamRef + 102) = -1;
      }

      if (*(streamRef + 45))
      {
        cancel_source(streamRef + 45, streamRef + 92);
        *(streamRef + 48) = 0;
      }
    }

    else
    {
      if (*(streamRef + 45))
      {
        cancel_source(streamRef + 45, streamRef + 92);
        *(streamRef + 48) = 0;
      }

      if (*(streamRef + 47))
      {
        cancel_source(streamRef + 47, streamRef + 96);
        *(streamRef + 49) = 0;
      }

      if ((*(streamRef + 184) & 4) != 0 && *(streamRef + 54))
      {
        cancel_source(streamRef + 54, streamRef + 110);
        *(streamRef + 102) = -1;
      }

      v8 = *(streamRef + 44);
      if (v8)
      {
        dispatch_release(v8);
        *(streamRef + 44) = 0;
      }
    }
  }

  else
  {
    v7 = fsevent_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamSetDispatchQueue_cold_4();
    }
  }
}

char *fsevent_realpath(const char *a1, char *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = xmmword_24A926770;
  memset(v8, 0, 512);
  v6 = 0;
  v7 = 32;
  DWORD1(v5) = 0x80000000;
  if (getattrlist(a1, &v5, v8, 0x420uLL, 0x20u) == -1)
  {
    a2 = 0;
  }

  else if (a2)
  {
    strlcpy(a2, &v8[1] + SDWORD2(v8[1]) + 8, 0x400uLL);
  }

  else
  {
    a2 = &v8[1] + SDWORD2(v8[1]) + 8;
  }

  v3 = *MEMORY[0x277D85DE8];
  return a2;
}

uint64_t allocate_d2f_port(uint64_t a1, uint64_t a2)
{
  v2 = mach_port_allocate(*MEMORY[0x277D85F48], 1u, (a2 + 192));
  if (v2)
  {
    v3 = fsevent_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      allocate_d2f_port_cold_1();
    }
  }

  return v2;
}

BOOL create_d2f_port_source(uint64_t a1)
{
  v2 = *(a1 + 192);
  v3 = dispatch_source_create(MEMORY[0x277D85D08], v2, 0, *(a1 + 352));
  if (v3)
  {
    FSEventStreamRetain(a1);
    dispatch_set_qos_class_fallback();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __create_d2f_port_source_block_invoke;
    handler[3] = &__block_descriptor_tmp_66;
    v8 = v2;
    dispatch_source_set_event_handler(v3, handler);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = __create_d2f_port_source_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_67;
    v6 = v2;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_source_set_cancel_handler(v3, v5);
    *(a1 + 360) = v3;
    *(a1 + 368) = 1;
  }

  return v3 != 0;
}

uint64_t register_with_server(uint64_t a1, uint64_t a2, int a3, int a4, int a5, const void **a6, uint64_t a7, uint64_t a8, int a9, _DWORD *a10)
{
  v17 = FSEvents_connect();
  if (v17)
  {
    return v17;
  }

  v66 = a7;
  v19 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
  if (v19)
  {
    v20 = v19;
    v67 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
    if (v67)
    {
      v62 = a8;
      v63 = a3;
      v65 = a4;
      v21 = a5;
      if (a5 < 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        v23 = a5;
        v24 = a6;
        v25 = v20;
        do
        {
          v26 = *v24++;
          v27 = strlen(v26);
          *v25++ = v27;
          v22 += v27;
          --v23;
        }

        while (v23);
      }

      v30 = v22 + a5;
      v31 = malloc_type_malloc(v22 + a5, 0xBF49D592uLL);
      if (!v31)
      {
        v46 = fsevent_default_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_5();
        }

        v47 = 0;
        v40 = 0;
        v17 = 4294967293;
        goto LABEL_49;
      }

      v64 = v30;
      v61 = v20;
      v32 = 0;
      if (a5 >= 1)
      {
        v33 = v67;
        v34 = v20;
        do
        {
          *v33++ = v32;
          v35 = *v34++;
          v36 = v35 + 1;
          v37 = *a6++;
          memcpy(&v31[v32], v37, v36);
          v32 += v36;
          --v21;
        }

        while (v21);
      }

      v38 = v64;
      if (v32 != v64)
      {
        v39 = fsevent_default_log();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_1();
        }
      }

      v40 = *(a1 + 96);
      v41 = v65;
      if (v40)
      {
        if (v40 < 1)
        {
          v42 = 0;
          v20 = v61;
        }

        else
        {
          v42 = 0;
          v43 = (a1 + 104);
          v44 = *(a1 + 96);
          v20 = v61;
          do
          {
            v45 = *v43++;
            v42 += strlen(v45) + 1;
            --v44;
          }

          while (v44);
        }

        v49 = malloc_type_malloc(4 * v40, 0x100004052888210uLL);
        if (!v49)
        {
          v58 = fsevent_default_log();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            register_with_server_cold_3();
          }

          v47 = 0;
          v40 = 0;
          v17 = 4294967292;
          goto LABEL_49;
        }

        v47 = v49;
        v50 = malloc_type_malloc(v42, 0x6F28CA70uLL);
        if (!v50)
        {
          v59 = fsevent_default_log();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            register_with_server_cold_2();
          }

          v40 = 0;
          v17 = 4294967291;
          goto LABEL_49;
        }

        v40 = v50;
        v48 = *(a1 + 96);
        if (v48 >= 1)
        {
          v60 = v31;
          v51 = 0;
          v52 = v50;
          v53 = 0;
          v54 = a1 + 104;
          do
          {
            v47[v51] = v53;
            v55 = strlen(*(v54 + 8 * v51));
            v56 = v55 + 1;
            memcpy(&v52[v53], *(v54 + 8 * v51), v55 + 1);
            v53 += v56;
            ++v51;
            v48 = *(a1 + 96);
          }

          while (v48 > v51);
          v20 = v61;
          v41 = v65;
          v40 = v52;
          v31 = v60;
        }

        v38 = v64;
      }

      else
      {
        LODWORD(v48) = 0;
        v47 = 0;
        LODWORD(v42) = 0;
        v20 = v61;
      }

      v17 = f2d_register_rpc(FSEvents_f2d_public_port, v63, v41, a5, v67, a5, v31, v38, v48, v47, v48, v40, v42, v62, a9, v66, a10);
      if (v17)
      {
        v57 = fsevent_default_log();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          register_with_server_cold_4();
        }
      }

LABEL_49:
      free(v20);
      free(v67);
      if (v31)
      {
        free(v31);
      }

      if (v47)
      {
        free(v47);
      }

      if (v40)
      {
        free(v40);
      }

      return v17;
    }

    v29 = fsevent_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      register_with_server_cold_6();
    }

    free(v20);
    return 4294967294;
  }

  else
  {
    v28 = fsevent_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      register_with_server_cold_7();
    }

    return 0xFFFFFFFFLL;
  }
}

Boolean FSEventStreamStart(FSEventStreamRef streamRef)
{
  if (!streamRef)
  {
    v4 = fsevent_default_log();
    v3 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    FSEventStreamStart_cold_3();
    goto LABEL_20;
  }

  if (*(streamRef + 188))
  {
    v2 = fsevent_default_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    FSEventStreamStart_cold_1();
    goto LABEL_20;
  }

  if (!*(streamRef + 27) && !*(streamRef + 45))
  {
    v8 = fsevent_default_log();
    v3 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      return v3;
    }

    FSEventStreamStart_cold_2();
    goto LABEL_20;
  }

  v5 = *(streamRef + 46);
  if ((v5 & 4) != 0 && !*(streamRef + 54) && !*(streamRef + 52) && !*(streamRef + 53))
  {
LABEL_20:
    LOBYTE(v3) = 0;
    return v3;
  }

  if (!*(streamRef + 49))
  {
    if (!register_with_server(streamRef, "FSEventStreamStart", *(streamRef + 48), *(streamRef + 16), *(streamRef + 18), *(streamRef + 10), *(streamRef + 21), *(streamRef + 22), v5, streamRef + 49))
    {
      *(streamRef + 188) = 1;
      if (*(streamRef + 27))
      {
        context.version = 0;
        context.info = streamRef;
        context.retain = _FSEventStreamRetainAndReturnSelf;
        context.release = FSEventStreamRelease;
        context.copyDescription = FSEventStreamCopyDescription;
        v9 = CFMachPortCreateWithPort(0, *(streamRef + 49), FSEventsClientPortCallback, &context, 0);
        *(streamRef + 26) = v9;
        CFMachPortSetInvalidationCallBack(v9, server_gone_callback);
      }

      else
      {
        v10 = *(streamRef + 45);
        if (v10)
        {
          resume_source(v10, streamRef + 92);
          if (create_f2d_private_port_source(streamRef))
          {
            resume_source(*(streamRef + 47), streamRef + 96);
          }
        }
      }

      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_14:
  v6 = *(streamRef + 52);
  if (v6)
  {
    CFFileDescriptorEnableCallBacks(v6, 1uLL);
  }

  v7 = *(streamRef + 54);
  if (v7)
  {
    resume_source(v7, streamRef + 110);
  }

  LOBYTE(v3) = 1;
  return v3;
}

uint64_t f2d_register_rpc(int a1, int a2, int a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, int a9, uint64_t a10, int a11, uint64_t a12, int a13, uint64_t a14, int a15, uint64_t a16, _DWORD *a17)
{
  v49 = *MEMORY[0x277D85DE8];
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[24] = 5;
  *&msg[28] = a2;
  v25 = 1310720;
  v26 = a5;
  v27 = 16777472;
  v28 = 4 * a6;
  v29 = a7;
  v30 = 16777472;
  v31 = a8;
  v32 = a10;
  v33 = 16777472;
  v34 = 4 * a11;
  v35 = a12;
  v36 = 16777472;
  v37 = a13;
  v38 = *MEMORY[0x277D85EF8];
  v39 = a3;
  v40 = a4;
  v41 = a6;
  v42 = a8;
  v43 = a9;
  v44 = a11;
  v45 = a13;
  v46 = a14;
  v47 = a15;
  v48 = a16;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x101D000000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v19 = *&msg[12];
  }

  else
  {
    v19 = special_reply_port;
  }

  v20 = mach_msg(msg, 3162115, 0xA0u, 0x30u, v19, 0, 0);
  v21 = v20;
  if ((v20 - 268435458) > 0xE || ((1 << (v20 - 2)) & 0x4003) == 0)
  {
    if (!v20)
    {
      if (*&msg[20] == 71)
      {
        v21 = 4294966988;
      }

      else if (*&msg[20] == 66100)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v21 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v21 = 4294966996;
              }

              else
              {
                v21 = *&msg[32];
              }
            }
          }

          else
          {
            v21 = 4294966996;
          }

          goto LABEL_24;
        }

        v21 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 40 && !*&msg[8] && HIWORD(v25) << 16 == 1114112)
        {
          v21 = 0;
          *a17 = *&msg[28];
          goto LABEL_25;
        }
      }

      else
      {
        v21 = 4294966995;
      }

LABEL_24:
      mach_msg_destroy(msg);
      goto LABEL_25;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

void resume_source(NSObject *a1, int *a2)
{
  if (a1)
  {
    v3 = *a2;
    if (*a2)
    {
      if (v3 == 2)
      {
        dispatch_resume(a1);
      }

      else if (v3 == 1)
      {
        dispatch_activate(a1);
      }

      *a2 = 3;
    }
  }
}

BOOL create_f2d_private_port_source(uint64_t a1)
{
  v2 = *(a1 + 196);
  v3 = dispatch_source_create(MEMORY[0x277D85D10], v2, 1uLL, *(a1 + 352));
  if (v3)
  {
    FSEventStreamRetain(a1);
    dispatch_set_qos_class_fallback();
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = __create_f2d_private_port_source_block_invoke;
    handler[3] = &__block_descriptor_tmp_54;
    handler[4] = a1;
    dispatch_source_set_event_handler(v3, handler);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 0x40000000;
    v5[2] = __create_f2d_private_port_source_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_55;
    v6 = v2;
    v5[4] = v3;
    v5[5] = a1;
    dispatch_source_set_cancel_handler(v3, v5);
    *(a1 + 376) = v3;
    *(a1 + 384) = 1;
  }

  return v3 != 0;
}

uint64_t fsevent_default_log()
{
  if (fsevent_default_log_once != -1)
  {
    fsevent_default_log_cold_1();
  }

  return fsevent_default_log_logger;
}

os_log_t __fsevent_default_log_block_invoke()
{
  result = os_log_create("com.apple.fsevents", "client");
  fsevent_default_log_logger = result;
  return result;
}

atomic_uint *_FSEventStreamRetainAndReturnSelf(atomic_uint *a1)
{
  if (a1)
  {
    atomic_fetch_add(a1, 1u);
  }

  else
  {
    v2 = fsevent_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamRetainAndReturnSelf_cold_1();
    }
  }

  return a1;
}

CFStringRef FSEventStreamCopyDescription(ConstFSEventStreamRef streamRef)
{
  if (!streamRef)
  {
    v18 = fsevent_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyDescription_cold_2();
    }

    return 0;
  }

  v2 = malloc_type_malloc((*(streamRef + 18) << 10) + 1024, 0x68187881uLL);
  if (!v2)
  {
    v19 = fsevent_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamCopyDescription_cold_1();
    }

    return 0;
  }

  v3 = v2;
  v4 = &v2[sprintf(v2, "FSEventStreamRef @ %p:\n", streamRef)];
  v5 = &v4[sprintf(v4, "   allocator = %p\n", *(streamRef + 1))];
  v6 = &v5[sprintf(v5, "   callback = %p\n", *(streamRef + 2))];
  v7 = *(streamRef + 24);
  v8 = &v6[sprintf(v6, "   context = {%lu, %p, %p, %p, %p}\n", *(streamRef + 3), *(streamRef + 4), *(streamRef + 5), *(streamRef + 6), *(streamRef + 7))];
  v9 = &v8[sprintf(v8, "   numPathsToWatch = %lu\n", *(streamRef + 9))];
  v10 = &v9[sprintf(v9, "   pathsToWatch = %p\n", *(streamRef + 10))];
  if (*(streamRef + 9) >= 1)
  {
    v11 = 0;
    do
    {
      v10 += sprintf(v10, "        pathsToWatch[%d] = '%s'\n", v11, *(*(streamRef + 10) + 8 * v11));
      ++v11;
    }

    while (*(streamRef + 9) > v11);
  }

  v12 = &v10[sprintf(v10, "   latestEventId = %lld\n", *(streamRef + 21))];
  v13 = &v12[sprintf(v12, "   latency = %llu (microseconds)\n", *(streamRef + 22))];
  v14 = &v13[sprintf(v13, "   flags = 0x%08x\n", *(streamRef + 46))];
  v15 = sprintf(v14, "\trunLoop = %p\n", *(streamRef + 28));
  sprintf(&v14[v15], "\trunLoopMode = %p\n", *(streamRef + 29));
  v16 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v3, 0x8000100u);
  free(v3);
  return v16;
}

void FSEventsClientPortCallback()
{
  v0 = fsevent_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    FSEventsClientPortCallback_cold_1();
  }
}

void FSEventStreamStop(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    if (*(streamRef + 188))
    {
      if (*(streamRef + 49))
      {
        v2 = *(streamRef + 45);
        if (v2 && *(streamRef + 92) == 3)
        {
          dispatch_suspend(v2);
          *(streamRef + 92) = 2;
        }

        v3 = *(streamRef + 47);
        if (v3)
        {
          cancel_source(streamRef + 47, streamRef + 96);
          *(streamRef + 49) = 0;
        }

        v4 = *(streamRef + 26);
        if (v4)
        {
          CFMachPortSetInvalidationCallBack(v4, 0);
          CFMachPortInvalidate(*(streamRef + 26));
          CFRelease(*(streamRef + 26));
          *(streamRef + 26) = 0;
        }

        if (!v3)
        {
          dispose_f2d_private_port(*(streamRef + 49));
          *(streamRef + 49) = 0;
        }

        v5 = *(streamRef + 52);
        if (v5)
        {
          CFFileDescriptorDisableCallBacks(v5, 1uLL);
        }

        v6 = *(streamRef + 54);
        if (v6)
        {
          if (*(streamRef + 110) == 3)
          {
            dispatch_suspend(v6);
            *(streamRef + 110) = 2;
          }
        }

        *(streamRef + 188) = 0;
      }

      else
      {
        v8 = fsevent_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamStop_cold_1();
        }
      }
    }
  }

  else
  {
    v7 = fsevent_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamStop_cold_2();
    }
  }
}

void dispose_f2d_private_port(mach_port_name_t a1)
{
  if (a1)
  {
    if (f2d_unregister_rpc(a1))
    {
      v2 = fsevent_default_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        dispose_f2d_private_port_cold_1();
      }
    }

    else
    {
      v3 = mach_port_deallocate(*MEMORY[0x277D85F48], a1);
      if (v3)
      {
        v4 = v3;
        v5 = fsevent_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          dispose_f2d_private_port_cold_2(v4);
        }
      }
    }
  }
}

FSEventStreamEventId FSEventStreamGetLatestEventId(ConstFSEventStreamRef streamRef)
{
  if (streamRef)
  {
    return *(streamRef + 21);
  }

  v2 = fsevent_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    FSEventStreamGetLatestEventId_cold_1();
  }

  return 0;
}

dev_t FSEventStreamGetDeviceBeingWatched(ConstFSEventStreamRef streamRef)
{
  if (streamRef)
  {
    return *(streamRef + 16);
  }

  v2 = fsevent_default_log();
  result = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
  if (result)
  {
    FSEventStreamGetDeviceBeingWatched_cold_1();
    return 0;
  }

  return result;
}

FSEventStreamRef FSEventStreamCreateRelativeToDevice(CFAllocatorRef allocator, FSEventStreamCallback callback, FSEventStreamContext *context, dev_t deviceToWatch, CFArrayRef pathsToWatchRelativeToDevice, FSEventStreamEventId sinceWhen, CFTimeInterval latency, FSEventStreamCreateFlags flags)
{
  if (deviceToWatch > 0)
  {
    return _FSEventStreamCreate("FSEventStreamCreateRelativeToDevice", allocator, callback, &context->version, deviceToWatch, pathsToWatchRelativeToDevice, sinceWhen, (latency * 1000000.0), flags);
  }

  v9 = fsevent_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    FSEventStreamCreateRelativeToDevice_cold_1();
  }

  return 0;
}

void _FSEventStreamDeallocate(char *ptr)
{
  if (ptr)
  {
    if (*ptr)
    {
      v2 = fsevent_default_log();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        _FSEventStreamDeallocate_cold_1();
      }
    }

    else
    {
      if (ptr[188])
      {
        v4 = fsevent_default_log();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamDeallocate_cold_2();
        }
      }

      if (*(ptr + 27) || *(ptr + 45))
      {
        v5 = fsevent_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          _FSEventStreamDeallocate_cold_3();
        }
      }

      v6 = *(ptr + 1);
      if (v6)
      {
        v7 = *(ptr + 10);
        if (v7)
        {
          v8 = *(ptr + 9);
          *(ptr + 9) = 0;
          if (v8 >= 1)
          {
            v9 = 0;
            v10 = v8 & 0x7FFFFFFF;
            do
            {
              v11 = *(*(ptr + 10) + 8 * v9);
              if (v11)
              {
                CFAllocatorDeallocate(v6, v11);
              }

              v12 = *(ptr + 49);
              if (v12)
              {
                v13 = *(v12 + 32 * v9 + 24);
                if (v13)
                {
                  free(v13);
                  v12 = *(ptr + 49);
                }

                v14 = v12 + 32 * v9;
                v15 = *(v14 + 16);
                if (v15)
                {
                  if (*(v14 + 8) >= 1)
                  {
                    v16 = 0;
                    do
                    {
                      close(*(*(v12 + 32 * v9 + 16) + 4 * v16++));
                      v12 = *(ptr + 49);
                      v17 = v12 + 32 * v9;
                    }

                    while (v16 < *(v17 + 8));
                    v15 = *(v17 + 16);
                  }

                  free(v15);
                  v12 = *(ptr + 49);
                }

                close(*(v12 + 32 * v9 + 4));
              }

              ++v9;
            }

            while (v9 != v10);
            v7 = *(ptr + 10);
          }

          CFAllocatorDeallocate(v6, v7);
          CFAllocatorDeallocate(v6, *(ptr + 11));
          v18 = *(ptr + 49);
          if (v18)
          {
            CFAllocatorDeallocate(v6, v18);
          }

          v19 = *(ptr + 50);
          if (v19)
          {
            CFAllocatorDeallocate(v6, v19);
          }
        }

        for (i = 104; i != 168; i += 8)
        {
          v21 = *&ptr[i];
          if (v21)
          {
            free(v21);
            *&ptr[i] = 0;
          }
        }

        *(ptr + 12) = 0;
        v22 = *(ptr + 44);
        if (v22)
        {
          dispatch_release(v22);
        }

        v23 = *(ptr + 6);
        if (v23)
        {
          v23(*(ptr + 4));
        }

        *(ptr + 56) = 0;
        *(ptr + 26) = 0u;
        *(ptr + 27) = 0u;
        *(ptr + 24) = 0u;
        *(ptr + 25) = 0u;
        *(ptr + 22) = 0u;
        *(ptr + 23) = 0u;
        *(ptr + 20) = 0u;
        *(ptr + 21) = 0u;
        *(ptr + 18) = 0u;
        *(ptr + 19) = 0u;
        *(ptr + 16) = 0u;
        *(ptr + 17) = 0u;
        *(ptr + 14) = 0u;
        *(ptr + 15) = 0u;
        *(ptr + 12) = 0u;
        *(ptr + 13) = 0u;
        *(ptr + 10) = 0u;
        *(ptr + 11) = 0u;
        *(ptr + 8) = 0u;
        *(ptr + 9) = 0u;
        *(ptr + 6) = 0u;
        *(ptr + 7) = 0u;
        *(ptr + 4) = 0u;
        *(ptr + 5) = 0u;
        *(ptr + 2) = 0u;
        *(ptr + 3) = 0u;
        *ptr = 0u;
        *(ptr + 1) = 0u;
        CFAllocatorDeallocate(v6, ptr);
        CFRelease(v6);
      }
    }
  }

  else
  {
    v3 = fsevent_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _FSEventStreamDeallocate_cold_4();
    }
  }
}

void FSEventStreamScheduleWithRunLoop(FSEventStreamRef streamRef, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (streamRef)
  {
    if (runLoop)
    {
      v6 = (streamRef + 192);
      if (*(streamRef + 48))
      {
LABEL_4:
        if (_createAndAddRunLoopSource("FSEventStreamScheduleWithRunLoop", streamRef, runLoop, runLoopMode))
        {
          v7 = fsevent_default_log();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamScheduleWithRunLoop_cold_2();
          }

          mach_port_deallocate(*MEMORY[0x277D85F48], *v6);
          *v6 = 0;
        }

        else
        {
          *(streamRef + 28) = CFRetain(runLoop);
          *(streamRef + 29) = CFStringCreateCopy(0, runLoopMode);
          if ((*(streamRef + 184) & 4) != 0)
          {
            context.version = 0;
            context.info = streamRef;
            context.retain = _FSEventStreamRetainAndReturnSelf;
            context.release = FSEventStreamRelease;
            context.copyDescription = FSEventStreamCopyDescription;
            v11 = CFFileDescriptorCreate(0, *(streamRef + 102), 1u, cffd_callback, &context);
            *(streamRef + 52) = v11;
            if (v11)
            {
              RunLoopSource = CFFileDescriptorCreateRunLoopSource(0, v11, 0);
              *(streamRef + 53) = RunLoopSource;
              if (RunLoopSource)
              {
                CFRunLoopAddSource(runLoop, RunLoopSource, *MEMORY[0x277CBF058]);
              }

              else
              {
                v16 = fsevent_default_log();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  FSEventStreamScheduleWithRunLoop_cold_3();
                }

                CFFileDescriptorInvalidate(*(streamRef + 52));
                CFRelease(*(streamRef + 52));
                *(streamRef + 52) = 0;
              }
            }

            else
            {
              v15 = fsevent_default_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                FSEventStreamScheduleWithRunLoop_cold_4();
              }
            }
          }
        }

        return;
      }

      if (!allocate_d2f_port("FSEventStreamScheduleWithRunLoop", streamRef))
      {
        pthread_mutex_lock(&FSEvents_streamDict_mutex);
        v13 = *MEMORY[0x277CBECE8];
        if (!FSEvents_streamDict)
        {
          FSEvents_streamDict = CFDictionaryCreateMutable(v13, 0, MEMORY[0x277CBF138], 0);
        }

        v14 = CFNumberCreate(v13, kCFNumberIntType, v6);
        CFDictionaryAddValue(FSEvents_streamDict, v14, streamRef);
        pthread_mutex_unlock(&FSEvents_streamDict_mutex);
        CFRelease(v14);
        goto LABEL_4;
      }

      v10 = fsevent_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamScheduleWithRunLoop_cold_1();
      }
    }

    else
    {
      v9 = fsevent_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamScheduleWithRunLoop_cold_5();
      }
    }
  }

  else
  {
    v8 = fsevent_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamScheduleWithRunLoop_cold_6();
    }
  }
}

uint64_t _createAndAddRunLoopSource(int a1, uint64_t a2, CFRunLoopRef rl, CFRunLoopMode mode)
{
  v5 = *(a2 + 192);
  if (!v5)
  {
    v10 = fsevent_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _createAndAddRunLoopSource_cold_4();
    }

    return 5;
  }

  if (*(a2 + 200))
  {
    v8 = *(a2 + 216);
    if (!v8)
    {
      v9 = fsevent_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _createAndAddRunLoopSource_cold_1();
      }

      return 5;
    }

LABEL_11:
    CFRunLoopAddSource(rl, v8, mode);
    return 0;
  }

  memset(&v16, 0, sizeof(v16));
  v11 = CFMachPortCreateWithPort(0, v5, FSEventsClientProcessMessageCallback, &v16, 0);
  *(a2 + 200) = v11;
  if (v11)
  {
    RunLoopSource = CFMachPortCreateRunLoopSource(*MEMORY[0x277CBECE8], v11, 0);
    *(a2 + 216) = RunLoopSource;
    if (RunLoopSource)
    {
      v8 = RunLoopSource;
      goto LABEL_11;
    }

    v15 = fsevent_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _createAndAddRunLoopSource_cold_2();
    }

    CFMachPortInvalidate(*(a2 + 200));
    CFRelease(*(a2 + 200));
    *(a2 + 200) = 0;
  }

  else
  {
    v14 = fsevent_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      _createAndAddRunLoopSource_cold_3();
    }
  }

  mach_port_deallocate(*MEMORY[0x277D85F48], *(a2 + 196));
  *(a2 + 196) = 0;
  return 5;
}

void cffd_callback(__CFFileDescriptor *a1, int a2, FSEventStreamRef streamRef)
{
  FSEventStreamRetain(streamRef);
  NativeDescriptor = CFFileDescriptorGetNativeDescriptor(a1);
  process_dir_events(NativeDescriptor, streamRef);
  if (*streamRef >= 2 && *(streamRef + 188))
  {
    CFFileDescriptorEnableCallBacks(a1, 1uLL);
  }

  FSEventStreamRelease(streamRef);
}

void FSEventStreamUnscheduleFromRunLoop(FSEventStreamRef streamRef, CFRunLoopRef runLoop, CFStringRef runLoopMode)
{
  if (streamRef)
  {
    if (runLoop)
    {
      v5 = *(streamRef + 27);
      if (v5)
      {
        CFRunLoopRemoveSource(runLoop, v5, runLoopMode);
        v7 = *(streamRef + 53);
        if (v7)
        {
          CFRunLoopRemoveSource(runLoop, v7, runLoopMode);
        }

        _FSEventStreamUnscheduleFromRunLoops(streamRef);
      }

      else
      {
        v10 = fsevent_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamUnscheduleFromRunLoop_cold_1();
        }
      }
    }

    else
    {
      v9 = fsevent_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamUnscheduleFromRunLoop_cold_2();
      }
    }
  }

  else
  {
    v8 = fsevent_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamUnscheduleFromRunLoop_cold_3();
    }
  }
}

void _FSEventStreamUnscheduleFromRunLoops(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 224) = 0;
  }

  v3 = *(a1 + 232);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 232) = 0;
  }
}

void __FSEventStreamSetDispatchQueue_block_invoke_2(uint64_t a1)
{
  close(*(a1 + 48));
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  FSEventStreamRelease(v2);
}

FSEventStreamEventId FSEventStreamFlushAsync(FSEventStreamRef streamRef)
{
  v5 = 0;
  if (streamRef)
  {
    if (*(streamRef + 188))
    {
      if (*(streamRef + 25))
      {
        if (f2d_flush_rpc(*(streamRef + 49), &v5))
        {
          v1 = fsevent_default_log();
          if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamFlushAsync_cold_1();
          }
        }
      }
    }

    else
    {
      v3 = fsevent_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamFlushAsync_cold_2();
      }
    }
  }

  else
  {
    v2 = fsevent_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamFlushAsync_cold_3();
    }
  }

  return v5;
}

void FSEventStreamFlushSync(FSEventStreamRef streamRef)
{
  v14 = 0;
  if (streamRef)
  {
    if (*(streamRef + 188))
    {
      if (*(streamRef + 25) || *(streamRef + 45))
      {
        v2 = *(streamRef + 28);
        if (v2 || *(streamRef + 45))
        {
          v3 = *(streamRef + 27);
          if (v3 || *(streamRef + 45))
          {
            if (v2)
            {
              CFRunLoopAddSource(v2, v3, @"com.apple.FSEvents");
              v13 = 0;
                ;
              }
            }

            else
            {
              pthread_mutex_lock((streamRef + 240));
              while (*(streamRef + 190))
              {
                if (pthread_cond_wait((streamRef + 304), (streamRef + 240)))
                {
                  v6 = fsevent_default_log();
                  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
                  {
                    FSEventStreamFlushSync_cold_1();
                  }

                  break;
                }
              }

              pthread_mutex_unlock((streamRef + 240));
            }

            if (f2d_flush_rpc(*(streamRef + 49), &v14))
            {
              v7 = fsevent_default_log();
              if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
              {
                FSEventStreamFlushSync_cold_2();
              }
            }

            if (!v14)
            {
              goto LABEL_46;
            }

            if (v14 > 0)
            {
              *(streamRef + 56) = v14;
              v13 = 0;
              if (*(streamRef + 28))
              {
                  ;
                }
              }

              else
              {
                pthread_mutex_lock((streamRef + 240));
                while (*(streamRef + 21) < *(streamRef + 56))
                {
                  if (pthread_cond_wait((streamRef + 304), (streamRef + 240)))
                  {
                    v11 = fsevent_default_log();
                    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
                    {
                      FSEventStreamFlushSync_cold_4();
                    }

                    break;
                  }
                }

                pthread_mutex_unlock((streamRef + 240));
              }

              *(streamRef + 56) = 0;
LABEL_46:
              v12 = *(streamRef + 28);
              if (v12)
              {
                CFRunLoopRemoveSource(v12, *(streamRef + 27), @"com.apple.FSEvents");
              }

              return;
            }

            v8 = fsevent_default_log();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              FSEventStreamFlushSync_cold_3();
            }
          }

          else
          {
            v10 = fsevent_default_log();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              FSEventStreamFlushSync_cold_5();
            }
          }
        }

        else
        {
          v9 = fsevent_default_log();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            FSEventStreamFlushSync_cold_6();
          }
        }
      }
    }

    else
    {
      v5 = fsevent_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamFlushSync_cold_7();
      }
    }
  }

  else
  {
    v4 = fsevent_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamFlushSync_cold_8();
    }
  }
}

uint64_t _runRunLoopOnceForFlushSync(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = CFRunLoopRunInMode(@"com.apple.FSEvents", 5.0, 1u);
  v9 = v8;
  if (v8 <= kCFRunLoopRunStopped)
  {
    if (v8 == kCFRunLoopRunFinished)
    {
      v13 = fsevent_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        _runRunLoopOnceForFlushSync_cold_2();
      }

      goto LABEL_13;
    }

    if (v8 == kCFRunLoopRunStopped)
    {
      v10 = fsevent_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        _runRunLoopOnceForFlushSync_cold_1();
      }

LABEL_13:
      result = 1;
      goto LABEL_19;
    }

LABEL_9:
    v12 = fsevent_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 136315906;
      v19 = a1;
      v20 = 2048;
      v21 = a2;
      v22 = 2080;
      v23 = "UNKNOWN";
      v24 = 1024;
      v25 = v9;
      _os_log_error_impl(&dword_24A91B000, v12, OS_LOG_TYPE_ERROR, "%s(streamRef = %p): ERROR: CFRunLoopRunInMode() => %s (%d)", &v18, 0x26u);
    }

    goto LABEL_13;
  }

  if (v8 == kCFRunLoopRunTimedOut)
  {
    v14 = *a3;
    if ((*a3 & ~(-1 << *a4)) == 0)
    {
      v15 = fsevent_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = (*a3 + 1) * 5.0;
        v18 = 136316162;
        v19 = a1;
        v20 = 2048;
        v21 = a2;
        v22 = 2080;
        v23 = "The run loop timed out.";
        v24 = 1024;
        v25 = 3;
        v26 = 2048;
        v27 = v17;
        _os_log_error_impl(&dword_24A91B000, v15, OS_LOG_TYPE_ERROR, "%s(streamRef = %p): WARNING: CFRunLoopRunInMode() => %s (%d) (%.2f seconds)", &v18, 0x30u);
      }

      ++*a4;
      v14 = *a3;
    }

    result = 0;
    *a3 = v14 + 1;
  }

  else
  {
    if (v8 != kCFRunLoopRunHandledSource)
    {
      goto LABEL_9;
    }

    result = 0;
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void FSEventStreamInvalidate(FSEventStreamRef streamRef)
{
  if (streamRef)
  {
    if (*(streamRef + 27) || *(streamRef + 45))
    {
      if (*(streamRef + 188))
      {
        v2 = fsevent_default_log();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          FSEventStreamInvalidate_cold_1();
        }
      }

      *(streamRef + 189) = 1;
      _FSEventStreamUnscheduleFromRunLoops(streamRef);
      v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, streamRef + 192);
      pthread_mutex_lock(&FSEvents_streamDict_mutex);
      CFDictionaryRemoveValue(FSEvents_streamDict, v3);
      pthread_mutex_unlock(&FSEvents_streamDict_mutex);
      CFRelease(v3);
      v4 = *(streamRef + 25);
      if (v4)
      {
        CFMachPortInvalidate(v4);
        CFRelease(*(streamRef + 25));
        *(streamRef + 25) = 0;
        v5 = *(streamRef + 26);
        if (v5)
        {
          CFMachPortSetInvalidationCallBack(v5, 0);
          CFRelease(*(streamRef + 26));
          *(streamRef + 26) = 0;
        }

        v6 = *(streamRef + 27);
        if (v6)
        {
          CFRelease(v6);
          *(streamRef + 27) = 0;
        }
      }

      if (*(streamRef + 45))
      {
        cancel_source(streamRef + 45, streamRef + 92);
      }

      else
      {
        dispose_d2f_port(*(streamRef + 48));
      }

      *(streamRef + 48) = 0;
      if (*(streamRef + 47))
      {
        cancel_source(streamRef + 47, streamRef + 96);
        *(streamRef + 49) = 0;
      }

      if ((*(streamRef + 184) & 4) != 0)
      {
        v8 = *(streamRef + 52);
        if (v8)
        {
          CFFileDescriptorInvalidate(v8);
          CFRelease(*(streamRef + 52));
          *(streamRef + 52) = 0;
          v9 = *(streamRef + 53);
          if (v9)
          {
            CFRelease(v9);
            *(streamRef + 53) = 0;
          }
        }

        if (*(streamRef + 54))
        {
          cancel_source(streamRef + 54, streamRef + 110);
          *(streamRef + 102) = -1;
        }
      }
    }

    else
    {
      v10 = fsevent_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        FSEventStreamInvalidate_cold_2();
      }
    }
  }

  else
  {
    v7 = fsevent_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      FSEventStreamInvalidate_cold_3();
    }
  }
}

void dispose_d2f_port(mach_port_name_t name)
{
  if (name)
  {
    v1 = mach_port_mod_refs(*MEMORY[0x277D85F48], name, 1u, -1);
    if (v1)
    {
      v2 = v1;
      v3 = fsevent_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        dispose_d2f_port_cold_1(v2);
      }
    }
  }
}

FSEventStreamEventId FSEventsGetCurrentEventId(void)
{
  v2 = 0;
  v0 = FSEvents_connect();
  result = 0;
  if (!v0)
  {
    f2d_get_current_event_id_rpc(FSEvents_f2d_public_port, &v2);
    return v2;
  }

  return result;
}

FSEventStreamEventId FSEventsGetLastEventIdForDeviceBeforeTime(dev_t dev, CFAbsoluteTime time)
{
  v6 = 0;
  v4 = FSEvents_connect();
  result = 0;
  if (!v4)
  {
    f2d_get_last_event_for_device_before_time_rpc(FSEvents_f2d_public_port, dev, time, &v6);
    return v6;
  }

  return result;
}

Boolean FSEventStreamSetExclusionPaths(FSEventStreamRef streamRef, CFArrayRef pathsToExclude)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!*(streamRef + 188))
  {
    Count = CFArrayGetCount(pathsToExclude);
    *(streamRef + 12) = Count;
    if (!Count || Count > 8)
    {
      result = 0;
      *(streamRef + 12) = 0;
      goto LABEL_15;
    }

    if (Count < 1)
    {
LABEL_13:
      result = 1;
      goto LABEL_15;
    }

    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(pathsToExclude, v6);
      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(ValueAtIndex) || !CFStringGetFileSystemRepresentation(ValueAtIndex, buffer, 1024))
      {
        break;
      }

      if (*(streamRef + 16) || !fsevent_realpath(buffer, __s1))
      {
        __strlcpy_chk();
      }

      *(streamRef + v6++ + 13) = strdup(__s1);
      if (*(streamRef + 12) <= v6)
      {
        goto LABEL_13;
      }
    }
  }

  result = 0;
LABEL_15:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

Boolean FSEventsPurgeEventsForDeviceUpToEventId(dev_t dev, FSEventStreamEventId eventId)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  if (FSEvents_connect())
  {
    goto LABEL_2;
  }

  v17[0] = 0;
  v5 = getfsstat(0, 0, 2);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    v7 = 2168 * v5;
    v8 = malloc_type_malloc(2168 * v5, 0x100004087E0324AuLL);
    if (v8)
    {
      v9 = v8;
      v10 = getfsstat(v8, v7, 2);
      if ((v10 & 0x80000000) == 0)
      {
        v11 = v10 >= v6 ? v6 : v10;
        if (v11)
        {
          f_mntonname = v9->f_mntonname;
          while (*(f_mntonname - 10) != dev)
          {
            f_mntonname += 2168;
            if (!--v11)
            {
              goto LABEL_15;
            }
          }

          __strlcpy_chk();
        }
      }

LABEL_15:
      free(v9);
    }
  }

  syslog(2, "dev %d (%s) : purging events up to event id %lld", dev, v17, eventId);
  if (!f2d_purge_events_for_device_up_to_event_id_rpc(FSEvents_f2d_public_port, dev, eventId, &v16))
  {
    LOBYTE(v4) = v16 == 0;
    goto LABEL_20;
  }

  v13 = fsevent_default_log();
  v4 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    FSEventsPurgeEventsForDeviceUpToEventId_cold_1();
LABEL_2:
    LOBYTE(v4) = 0;
  }

LABEL_20:
  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

void FSEventStreamShow(ConstFSEventStreamRef streamRef)
{
  v2 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "FSEventStreamRef @ %p:\n", streamRef);
  if (streamRef)
  {
    fprintf(*v2, "   allocator = %p\n", *(streamRef + 1));
    fprintf(*v2, "   callback = %p\n", *(streamRef + 2));
    fprintf(*v2, "   f2d_private_port = 0x%x\n", *(streamRef + 49));
    v3 = *(streamRef + 24);
    fprintf(*v2, "   context = {%lu, %p, %p, %p, %p}\n", *(streamRef + 3), *(streamRef + 4), *(streamRef + 5), *(streamRef + 6), *(streamRef + 7));
    fprintf(*v2, "   numPathsToWatch = %lu\n", *(streamRef + 9));
    fprintf(*v2, "   pathsToWatch = %p\n", *(streamRef + 10));
    if (*(streamRef + 9) >= 1)
    {
      v4 = 0;
      do
      {
        fprintf(*v2, "        pathsToWatch[%d] = '%s'\n", v4, *(*(streamRef + 10) + 8 * v4));
        ++v4;
      }

      while (*(streamRef + 9) > v4);
    }

    fprintf(*v2, "   numPathsToExclude = %lu\n", *(streamRef + 12));
    if (*(streamRef + 12) >= 1)
    {
      v5 = 0;
      do
      {
        fprintf(*v2, "        pathsToExclude[%d] = '%s'\n", v5, *(streamRef + v5 + 13));
        ++v5;
      }

      while (*(streamRef + 12) > v5);
    }

    fprintf(*v2, "   latestEventId = %lld\n", *(streamRef + 21));
    fprintf(*v2, "   latency = %llu (microseconds)\n", *(streamRef + 22));
    fprintf(*v2, "   flags = 0x%08x\n", *(streamRef + 46));
    fprintf(*v2, "   runLoop = %p\n", *(streamRef + 28));
    fprintf(*v2, "   runLoopMode = %p\n", *(streamRef + 29));
  }
}

void server_gone_StreamRef_callback(uint64_t a1)
{
  if (a1 && !*(a1 + 189) && (*(a1 + 360) || *(a1 + 224)))
  {
    v2 = *MEMORY[0x277CBECE8];
    v3 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, (a1 + 192));
    pthread_mutex_lock(&FSEvents_streamDict_mutex);
    CFDictionaryRemoveValue(FSEvents_streamDict, v3);
    pthread_mutex_unlock(&FSEvents_streamDict_mutex);
    CFRelease(v3);
    pthread_mutex_lock(&FSEvents_f2d_public_port_mutex);
    v4 = MEMORY[0x277D85F48];
    mach_port_deallocate(*MEMORY[0x277D85F48], FSEvents_f2d_public_port);
    FSEvents_f2d_public_port = 0;
    pthread_mutex_unlock(&FSEvents_f2d_public_port_mutex);
    v5 = *(a1 + 360);
    if (v5)
    {
      cancel_source((a1 + 360), (a1 + 368));
      *(a1 + 192) = 0;
    }

    v6 = *(a1 + 376);
    if (v6)
    {
      cancel_source((a1 + 376), (a1 + 384));
      *(a1 + 196) = 0;
    }

    v7 = *(a1 + 216);
    if (v7)
    {
      CFRunLoopRemoveSource(*(a1 + 224), v7, *(a1 + 232));
      CFRelease(*(a1 + 216));
      *(a1 + 216) = 0;
    }

    v8 = *(a1 + 208);
    if (v8)
    {
      CFMachPortSetInvalidationCallBack(v8, 0);
      CFMachPortInvalidate(*(a1 + 208));
      CFRelease(*(a1 + 208));
      *(a1 + 208) = 0;
    }

    if (!v6)
    {
      mach_port_deallocate(*v4, *(a1 + 196));
      *(a1 + 196) = 0;
    }

    v9 = *(a1 + 200);
    if (v9)
    {
      CFMachPortInvalidate(v9);
      CFRelease(*(a1 + 200));
      *(a1 + 200) = 0;
    }

    if (!v5)
    {
      dispose_d2f_port(*(a1 + 192));
      *(a1 + 192) = 0;
    }

    if (FSEvents_connect())
    {
      v10 = fsevent_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        server_gone_StreamRef_callback_cold_1();
      }
    }

    else if (allocate_d2f_port("server_gone_StreamRef_callback", a1))
    {
      v11 = fsevent_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        server_gone_StreamRef_callback_cold_2();
      }
    }

    else if (register_with_server(a1, "server_gone_StreamRef_callback", *(a1 + 192), *(a1 + 64), *(a1 + 72), *(a1 + 80), -1, *(a1 + 176), *(a1 + 184), (a1 + 196)))
    {
      v12 = fsevent_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        server_gone_StreamRef_callback_cold_3((a1 + 196));
      }
    }

    else
    {
      v13 = CFNumberCreate(v2, kCFNumberIntType, (a1 + 192));
      pthread_mutex_lock(&FSEvents_streamDict_mutex);
      CFDictionaryAddValue(FSEvents_streamDict, v13, a1);
      pthread_mutex_unlock(&FSEvents_streamDict_mutex);
      CFRelease(v13);
      if (v5)
      {
        if (create_d2f_port_source(a1))
        {
          resume_source(*(a1 + 360), (a1 + 368));
        }

        if (create_f2d_private_port_source(a1))
        {
          resume_source(*(a1 + 376), (a1 + 384));
        }
      }

      else if (*(a1 + 224))
      {
        context.version = 0;
        context.info = a1;
        context.retain = _FSEventStreamRetainAndReturnSelf;
        context.release = FSEventStreamRelease;
        context.copyDescription = FSEventStreamCopyDescription;
        v14 = CFMachPortCreateWithPort(0, *(a1 + 196), FSEventsClientPortCallback, &context, 0);
        *(a1 + 208) = v14;
        if (v14)
        {
          CFMachPortSetInvalidationCallBack(v14, server_gone_callback);
          _createAndAddRunLoopSource("server_gone_StreamRef_callback", a1, *(a1 + 224), *(a1 + 232));
        }

        else
        {
          v15 = fsevent_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            server_gone_StreamRef_callback_cold_4();
          }
        }
      }

      FSEventStreamRetain(a1);
      if (*(a1 + 72) >= 1)
      {
        v16 = 0;
        do
        {
          root_dir_event_callback(a1, v16++, 5);
        }

        while (*(a1 + 72) > v16);
      }

      FSEventStreamRelease(a1);
    }
  }
}

void __create_f2d_private_port_source_block_invoke_2(uint64_t a1)
{
  dispose_f2d_private_port(*(a1 + 48));
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  FSEventStreamRelease(v2);
}

void cancel_source(dispatch_source_t *a1, int *a2)
{
  v4 = *a1;
  if (v4)
  {
    resume_source(v4, a2);
    dispatch_source_cancel(*a1);
    *a1 = 0;
  }

  *a2 = 0;
}

uint64_t FSEventsClientProcessMessageCallback(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v5 = *MEMORY[0x277D85DE8];
  result = FSEventsD2F_server(v1, v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __create_d2f_port_source_block_invoke_2(uint64_t a1)
{
  dispose_d2f_port(*(a1 + 48));
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  FSEventStreamRelease(v2);
}

uint64_t f2d_flush_rpc(int a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D100000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x34u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 66101)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v7 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v12;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v8 = 1;
            }

            else
            {
              v8 = *&msg[32] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t f2d_get_current_event_id_rpc(int a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D300000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x34u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 66103)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v7 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v12;
                goto LABEL_24;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v8 = 1;
            }

            else
            {
              v8 = *&msg[32] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      goto LABEL_24;
    }

    mig_dealloc_special_reply_port();
  }

LABEL_24:
  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t f2d_get_last_event_for_device_before_time_rpc(int a1, int a2, uint64_t a3, void *a4)
{
  *&msg[20] = 0u;
  v13 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  *&msg[32] = a2;
  *&v13 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D400000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x2Cu, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 66104)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v9 = *&msg[32];
              if (!*&msg[32])
              {
                *a4 = v13;
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg[32] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t f2d_purge_events_for_device_up_to_event_id_rpc(int a1, int a2, uint64_t a3, _DWORD *a4)
{
  memset(&v13[16], 0, 28);
  *v13 = 0u;
  *&v13[20] = *MEMORY[0x277D85EF8];
  *&v13[28] = a2;
  *&v13[32] = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v13[4] = a1;
  *&v13[8] = special_reply_port;
  v12 = 5395;
  *&v13[12] = 0x101D500000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(&v12);
    v7 = *&v13[8];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x2Cu, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&v13[16] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&v13[16] == 66105)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (*v13 == 40)
          {
            if (!*&v13[4])
            {
              v9 = *&v13[28];
              if (!*&v13[28])
              {
                *a4 = *&v13[32];
                return v9;
              }

              goto LABEL_23;
            }
          }

          else if (*v13 == 36)
          {
            if (*&v13[4])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&v13[28] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&v13[28];
            }

            goto LABEL_23;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_23:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  return v9;
}

uint64_t f2d_unregister_rpc(int a1)
{
  v8 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x101D600000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162115, 0x18u, 0x2Cu, v3, 0, 0);
  v5 = v4;
  if ((v4 - 268435458) > 0xE || ((1 << (v4 - 2)) & 0x4003) == 0)
  {
    if (v4)
    {
      mig_dealloc_special_reply_port();
      return v5;
    }

    if (*&msg[20] == 71)
    {
      v5 = 4294966988;
    }

    else if (*&msg[20] == 66106)
    {
      v5 = 4294966996;
      if ((*msg & 0x80000000) == 0 && *&msg[4] == 36 && !*&msg[8])
      {
        v5 = *&msg[32];
        if (!*&msg[32])
        {
          return v5;
        }
      }
    }

    else
    {
      v5 = 4294966995;
    }

    mach_msg_destroy(msg);
  }

  return v5;
}

void FSEventStreamStart_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamStart_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamStart_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void register_with_server_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void register_with_server_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void register_with_server_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void register_with_server_cold_4()
{
  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_16(v1, v2);
  mach_error_string(v3);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
  v9 = *MEMORY[0x277D85DE8];
}

void register_with_server_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void register_with_server_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void register_with_server_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamRetainAndReturnSelf_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamRelease_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamRelease_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamCopyDescription_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamCopyDescription_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamStop_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamStop_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void dispose_f2d_private_port_cold_1()
{
  OUTLINED_FUNCTION_14();
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void dispose_f2d_private_port_cold_2(mach_error_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_7(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "implementation_callback_rpc";
  _os_log_error_impl(&dword_24A91B000, log, OS_LOG_TYPE_ERROR, "%s: ERROR: CFNumberCreate() => NULL\n", buf, 0xCu);
}

void implementation_callback_rpc_cold_9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_12()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_14()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_15()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_16()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_17()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void implementation_callback_rpc_cold_18()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamRetain_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamGetLatestEventId_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamGetDeviceBeingWatched_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamCopyPathsBeingWatched_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamCopyPathsBeingWatched_cold_2(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 8 * a2);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void FSEventStreamCopyPathsBeingWatched_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamCopyPathsBeingWatched_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamCreate_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamCreate_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamCreate_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamCreate_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamCreate_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamCreate_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamCreate_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamCreate_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamCreate_cold_9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamCreateRelativeToDevice_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamDeallocate_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamDeallocate_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamDeallocate_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _FSEventStreamDeallocate_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamScheduleWithRunLoop_cold_1()
{
  OUTLINED_FUNCTION_14();
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void FSEventStreamScheduleWithRunLoop_cold_2()
{
  OUTLINED_FUNCTION_14();
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void FSEventStreamScheduleWithRunLoop_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamScheduleWithRunLoop_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamScheduleWithRunLoop_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamScheduleWithRunLoop_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void allocate_d2f_port_cold_1()
{
  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_16(v1, v2);
  mach_error_string(v3);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
  v9 = *MEMORY[0x277D85DE8];
}

void _createAndAddRunLoopSource_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _createAndAddRunLoopSource_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _createAndAddRunLoopSource_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _createAndAddRunLoopSource_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamUnscheduleFromRunLoop_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamUnscheduleFromRunLoop_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamUnscheduleFromRunLoop_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamSetDispatchQueue_cold_1()
{
  OUTLINED_FUNCTION_14();
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void FSEventStreamSetDispatchQueue_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamSetDispatchQueue_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void process_dir_events_cold_1(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  strerror(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void FSEventStreamFlushAsync_cold_1()
{
  OUTLINED_FUNCTION_14();
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

void FSEventStreamFlushAsync_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamFlushAsync_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamFlushSync_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamFlushSync_cold_2()
{
  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_16(v1, v2);
  mach_error_string(v3);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
  v9 = *MEMORY[0x277D85DE8];
}

void FSEventStreamFlushSync_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamFlushSync_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamFlushSync_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamFlushSync_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamFlushSync_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamFlushSync_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void _runRunLoopOnceForFlushSync_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void _runRunLoopOnceForFlushSync_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamInvalidate_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamInvalidate_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventStreamInvalidate_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void dispose_d2f_port_cold_1(mach_error_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  mach_error_string(a1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
  v6 = *MEMORY[0x277D85DE8];
}

void FSEvents_connect_cold_1()
{
  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x277D85DE8];
  v3 = OUTLINED_FUNCTION_16(v1, v2);
  bootstrap_strerror(v3);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x1Cu);
  v9 = *MEMORY[0x277D85DE8];
}

void FSEventsCopyUUIDForDevice_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void FSEventsPurgeEventsForDeviceUpToEventId_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void server_gone_StreamRef_callback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void server_gone_StreamRef_callback_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void server_gone_StreamRef_callback_cold_3(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x18u);
  v6 = *MEMORY[0x277D85DE8];
}

void root_dir_event_callback_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void root_dir_event_callback_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void root_dir_event_callback_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void watch_path_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void watch_path_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x277D85DE8];
}

void watch_path_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x277D85DE8];
}

void watch_all_parents_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void receive_and_dispatch_rcv_msg_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void receive_and_dispatch_rcv_msg_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}