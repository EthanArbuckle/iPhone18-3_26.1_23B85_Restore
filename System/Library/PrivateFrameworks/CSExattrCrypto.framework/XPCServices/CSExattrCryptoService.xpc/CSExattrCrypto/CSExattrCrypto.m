_BYTE *fixPath(_BYTE *a1, _BYTE *a2)
{
  v2 = 0;
  v3 = a2;
  while (1)
  {
    v4 = *a1;
    if (v4 == 47)
    {
      v2 = 1;
      goto LABEL_10;
    }

    if (!*a1)
    {
      break;
    }

    if (v3 - a2 > 1022)
    {
      return 0;
    }

    if (v2)
    {
      *v3++ = 47;
      if (v3 - a2 > 1022)
      {
        return 0;
      }

      LOBYTE(v4) = *a1;
    }

    v2 = 0;
    *v3++ = v4;
LABEL_10:
    ++a1;
  }

  if (v3 == a2 && (v2 & 1) != 0)
  {
    *a2 = 47;
    v3 = a2 + 1;
  }

  *v3 = 0;
  return a2;
}

char *separate_path_parent_child(char *__source, char *__s)
{
  if (__s == __source)
  {
    v3 = strlen(__s);
  }

  else
  {
    v3 = strlcpy(__s, __source, 0x400uLL);
  }

  v4 = v3;
  if (v3 - 1 > 0x3FE)
  {
    return 0;
  }

  v5 = &__s[v3 - 1];
  if (*v5 != 47 || __s[v3])
  {
    v5 = strrchr(__s, 47);
  }

  if (!v5)
  {
    if (v4 <= 0x3FE)
    {
      v6 = __s + 1;
      memmove(__s + 1, __s, v4 + 1);
      *__s = 0;
      return v6;
    }

    return 0;
  }

  if (v5 == __s)
  {
    if (v4 <= 0x3FE)
    {
      memmove(v5 + 2, v5 + 1, v4);
      *__s = 47;
      return v5 + 2;
    }

    return 0;
  }

  *v5 = 0;
  return v5 + 1;
}

char *partial_path(_BYTE *a1, const char *a2, char *__dst)
{
  v3 = __dst;
  v4 = a2;
  v6 = *a1;
  if (*a1)
  {
    v7 = a1 + 1;
    while (v6 == *a2)
    {
      ++a2;
      v8 = *v7++;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v3 = 0;
    v9 = -v4;
  }

  else
  {
LABEL_5:
    v9 = a2 - v4;
    if (a2 && v9 <= 0x3FF && ((v10 = &a1[v9], !*v10) && !*a2 || *(v10 - 1) == 47 || (v11 = *a2, ++a2, v11 == 47)))
    {
      v9 = strlcpy(__dst, a2, 0x400uLL);
    }

    else
    {
      v3 = 0;
    }
  }

  if (v9 <= 0x3FF)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

const char *combine_paths(const char *__source, const char *a2, char *__dst)
{
  if (__source)
  {
    v5 = __source;
    if (__source == __dst)
    {
      v6 = 0;
    }

    else
    {
      v6 = strlcpy(__dst, __source, 0x400uLL);
    }

    v7 = *a2;
    if (*a2)
    {
      if (*v5 != 47 || v5[1])
      {
        strlcat(__dst, "/", 0x400uLL);
        v7 = *a2;
      }

      if (v7 == 47)
      {
        v8 = a2 + 1;
      }

      else
      {
        v8 = a2;
      }

      v6 = strlcat(__dst, v8, 0x400uLL);
    }

    if (v6 <= 0x3FF)
    {
      return __dst;
    }

    else
    {
      return 0;
    }
  }

  return __source;
}

_BYTE *faccurate_realpath(int a1, _BYTE *a2)
{
  v2 = a2;
  if (fcntl(a1, 50, a2) < 0 || !*v2)
  {
    return 0;
  }

  return v2;
}

_BYTE *accurate_realpath(char *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = open(a1, 32772);
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  if (*__error() != 13)
  {
    return 0;
  }

  if (geteuid())
  {
    return 0;
  }

  memset(&v7, 0, sizeof(v7));
  if (md_stat_real(a1, &v7))
  {
    return 0;
  }

  if (!v7.st_uid)
  {
    return 0;
  }

  *v6 = 0;
  if (pthread_getugid_np(&v6[1], v6) || pthread_setugid_np(v7.st_uid, v7.st_gid))
  {
    return 0;
  }

  v4 = open(a1, 32772);
  if (pthread_setugid_np(v6[1], v6[0]))
  {
    sub_10000C6C4();
  }

  if (v4 < 0)
  {
    return 0;
  }

LABEL_21:
  if (fcntl(v4, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  close(v4);
  return a2;
}

uint64_t md_stat_real(char *a1, stat *a2)
{
  v4 = fstatat(-2, a1, a2, 512);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstatat(-2, a1, a2, 0);
}

_BYTE *accurate_realpath_nocred(const char *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = open(a1, 32772);
  if (v3 < 0)
  {
    return 0;
  }

  v4 = v3;
  if (fcntl(v3, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  close(v4);
  return a2;
}

_BYTE *faccurate_firmpath(int a1, _BYTE *a2)
{
  v2 = a2;
  if (fcntl(a1, 50, a2) < 0 || !*v2)
  {
    return 0;
  }

  return v2;
}

_BYTE *accurate_firmpath(const char *a1, _BYTE *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = open(a1, 32772);
  if (v3 < 0)
  {
    return 0;
  }

  v4 = v3;
  if (fcntl(v3, 50, a2) < 0 || !*a2)
  {
    a2 = 0;
  }

  close(v4);
  return a2;
}

uint64_t device_for_path()
{
  memset(&v2, 0, sizeof(v2));
  bzero(__s, 0x400uLL);
  if (__strlcpy_chk() > 0x3FF)
  {
    return 0xFFFFFFFFLL;
  }

  while (md_stat_real(__s, &v2))
  {
    v0 = strrchr(__s, 47);
    if (!v0)
    {
      return 0xFFFFFFFFLL;
    }

    *v0 = 0;
  }

  return v2.st_dev;
}

char *device_subpath(char *a1)
{
  if (*a1 != 47)
  {
    return 0;
  }

  v1 = a1;
  memset(&v8, 0, sizeof(v8));
  if (md_stat_real(a1, &v8))
  {
    return 0;
  }

  st_dev = v8.st_dev;
  v5 = v9;
  bzero(v9, 0x400uLL);
  while (1)
  {
    v6 = strchr(v1, 47);
    if (!v6)
    {
      break;
    }

    v2 = v6 + 1;
    v7 = v6 + 1 - v1;
    memcpy(v5, v1, v7);
    v5 += v7;
    *v5 = 0;
    if (md_stat_real(v9, &v8))
    {
      return 0;
    }

    v1 = v2;
    if (v8.st_dev == st_dev)
    {
      return v2;
    }
  }

  return &v1[strlen(v1)];
}

uint64_t create_scratch_directory(char *a1, uid_t a2, gid_t a3, int a4)
{
  memset(&v10, 0, sizeof(v10));
  if (md_stat_real(a1, &v10))
  {
    goto LABEL_2;
  }

  v9 = v10.st_mode & 0xF000;
  if (v9 == 0x4000)
  {
    if ((v10.st_mode & 0x1FF) != a4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v9 != 0x8000)
  {
    return 0;
  }

  if (unlink(a1))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_2:
  if (mkdir(a1, a4))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_3:
  if (chmod(a1, a4))
  {
    return 0xFFFFFFFFLL;
  }

  if (chown(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t nosymlink_open(char *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  if ((a2 & 0x200) != 0)
  {
    v9 = a9;
  }

  else
  {
    v9 = 0;
  }

  return x_openat(-1, a1, a2 | 0x20000000u, a4, a5, a6, a7, a8, v9);
}

uint64_t x_openat(int a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  if ((a3 & 0x200) != 0)
  {
    v12 = a9;
  }

  else
  {
    v12 = 0;
  }

  result = openat(a1, a2, a3, v12);
  if (result == -1)
  {
    v14 = __error();
    result = 0xFFFFFFFFLL;
    if ((a3 & 0x20000000) != 0 && *v14 == 22)
    {
      return openat(a1, a2, a3 & 0xDFFFFFFF, v12);
    }
  }

  return result;
}

uint64_t nosymlink_mkdir(_BYTE *a1, mode_t a2)
{
  v4 = geteuid();
  v5 = getegid();

  return nosymlink_mkdir_chown(a1, v4, v5, a2);
}

uint64_t nosymlink_mkdir_chown(_BYTE *a1, uid_t a2, gid_t a3, mode_t a4)
{
  bzero(__s, 0x400uLL);
  fixed = fixPath(a1, __s);
  if (!fixed || (v9 = separate_path_parent_child(fixed, __s)) == 0)
  {
    v13 = 0xFFFFFFFFLL;
    v14 = 22;
LABEL_14:
    *__error() = v14;
    return v13;
  }

  v10 = v9;
  v11 = open(__s, 537952260);
  if ((v11 & 0x80000000) == 0)
  {
    v12 = v11;
    v13 = mkdirat(v11, v10, a4);
    if (_os_feature_enabled_impl())
    {
      if (v13)
      {
        goto LABEL_9;
      }

      v13 = fchmodat(v12, v10, a4, 2048);
      if (v13)
      {
        goto LABEL_9;
      }

      v13 = fchownat(v12, v10, a2, a3, 2048);
    }

    if (!v13)
    {
      v14 = 0;
      goto LABEL_13;
    }

LABEL_9:
    v14 = *__error();
LABEL_13:
    close(v12);
    goto LABEL_14;
  }

  return 0xFFFFFFFFLL;
}

uint64_t nosymlink_chown_chmod_directory(_BYTE *a1, uid_t a2, gid_t a3, int a4)
{
  bzero(v15, 0x400uLL);
  if (fixPath(a1, v15))
  {
    v8 = open(v15, 537952260);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = v8;
      memset(&v14, 0, sizeof(v14));
      v10 = md_fstat_real(v8, &v14);
      if (v10)
      {
        v11 = v10;
LABEL_25:
        v12 = *__error();
LABEL_26:
        close(v9);
        *__error() = v12;
        return v11;
      }

      if (a2 == -1 || v14.st_uid == a2)
      {
        v11 = 0;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_10000C6F0();
        }

        v11 = fchown(v9, a2, 0xFFFFFFFF);
      }

      if (a3 != -1 && !v11)
      {
        if (v14.st_gid == a3)
        {
          goto LABEL_20;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_10000C76C();
        }

        v11 = fchown(v9, 0xFFFFFFFF, a3);
      }

      if (v11)
      {
        goto LABEL_25;
      }

LABEL_20:
      if ((v14.st_mode & 0x1FF) == a4)
      {
        v11 = 0;
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_10000C7E8();
        }

        v11 = fchmod(v9, a4);
        if (v11)
        {
          goto LABEL_25;
        }
      }

      v12 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    *__error() = 22;
  }

  return 0xFFFFFFFFLL;
}

uint64_t md_fstat_real(int a1, stat *a2)
{
  v4 = fstatat(a1, 0, a2, 1536);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstat(a1, a2);
}

uint64_t x_unlinkat(int a1, const char *a2, int a3)
{
  v6 = unlinkat(a1, a2, a3);
  if (!v6)
  {
    return v6;
  }

  v7 = __error();
  if ((a3 & 0x800) == 0 || *v7 != 22)
  {
    return v6;
  }

  return unlinkat(a1, a2, a3 & 0xFFFFF7FF);
}

uint64_t x_renamex_np(const char *a1, const char *a2, unsigned int a3)
{
  v6 = renamex_np(a1, a2, a3);
  if (!v6)
  {
    return v6;
  }

  v7 = __error();
  if ((a3 & 0x10) == 0 || *v7 != 22)
  {
    return v6;
  }

  return renamex_np(a1, a2, a3 & 0xFFFFFFEF);
}

uint64_t md_savedir(int a1, int *a2)
{
  *a2 = -1;
  memset(&v4, 0, sizeof(v4));
  if (md_fstat_real(a1, &v4))
  {
    return 0;
  }

  *a2 = open(".", 32772);
  if (!pthread_fchdir_np())
  {
    return 1;
  }

  if ((*a2 & 0x80000000) == 0)
  {
    close(*a2);
  }

  result = 0;
  *a2 = -1;
  return result;
}

uint64_t md_resetdir(int a1)
{
  result = pthread_fchdir_np();
  if ((a1 & 0x80000000) == 0)
  {

    return close(a1);
  }

  return result;
}

size_t md_fsgetpath_fast(char *a1, int a2, uint64_t a3)
{
  sprintf(a1, "/.vol/%llu/%llu", a2, a3);

  return strlen(a1);
}

uint64_t md_lstat_real(char *a1, stat *a2)
{
  v4 = fstatat(-2, a1, a2, 544);
  if (!v4 || *__error() != 22)
  {
    return v4;
  }

  return fstatat(-2, a1, a2, 32);
}

uint64_t x_fstatat(int a1, const char *a2, stat *a3, int a4)
{
  v8 = fstatat(a1, a2, a3, a4);
  if (!v8)
  {
    return v8;
  }

  v9 = __error();
  if ((a4 & 0x800) == 0 || *v9 != 22)
  {
    return v8;
  }

  return fstatat(a1, a2, a3, a4 & 0xFFFFF7FF);
}

uint64_t x_faccessat(int a1, const char *a2, int a3, int a4)
{
  v8 = faccessat(a1, a2, a3, a4);
  if (!v8)
  {
    return v8;
  }

  v9 = __error();
  if ((a4 & 0x800) == 0 || *v9 != 22)
  {
    return v8;
  }

  return faccessat(a1, a2, a3, a4 & 0xFFFFF7FF);
}

uint64_t x_fchownat(int a1, const char *a2, uid_t a3, gid_t a4, int a5)
{
  v10 = fchownat(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return fchownat(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t x_linkat(int a1, const char *a2, int a3, const char *a4, int a5)
{
  v10 = linkat(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return linkat(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t x_renameatx_np(int a1, const char *a2, int a3, const char *a4, unsigned int a5)
{
  v10 = renameatx_np(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x10) == 0 || *v11 != 22)
  {
    return v10;
  }

  return renameatx_np(a1, a2, a3, a4, a5 & 0xFFFFFFEF);
}

uint64_t x_getattrlist(const char *a1, void *a2, void *a3, size_t a4, unsigned int a5)
{
  v10 = getattrlist(a1, a2, a3, a4, a5);
  if (!v10)
  {
    return v10;
  }

  v11 = __error();
  if ((a5 & 0x800) == 0 || *v11 != 22)
  {
    return v10;
  }

  return getattrlist(a1, a2, a3, a4, a5 & 0xFFFFF7FF);
}

uint64_t x_getattrlistat(int a1, const char *a2, void *a3, void *a4, size_t a5, unint64_t a6)
{
  v12 = getattrlistat(a1, a2, a3, a4, a5, a6);
  if (!v12)
  {
    return v12;
  }

  v13 = __error();
  if ((a6 & 0x800) == 0 || *v13 != 22)
  {
    return v12;
  }

  return getattrlistat(a1, a2, a3, a4, a5, a6 & 0xFFFFFFFFFFFFF7FFLL);
}

uint64_t x2_openat(int a1, char *a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int16 a9)
{
  if (qword_10001A110 != -1)
  {
    sub_10000C868();
  }

  if (*a2 == 47)
  {
    v12 = 0;
    v13 = 47;
    while (v13 == a2[v12])
    {
      v13 = aSystemVolumesD_0[++v12];
      if (v12 == 37)
      {
LABEL_20:
        v14 = 1;
        goto LABEL_21;
      }
    }

    v15 = 0;
    v16 = 47;
    while (v16 == a2[v15])
    {
      v16 = aSystemVolumesD_1[++v15];
      if (v15 == 51)
      {
        goto LABEL_20;
      }
    }

    v17 = 0;
    v18 = 47;
    while (v18 == a2[v17])
    {
      v18 = aPrivateVarDbSp[++v17];
      if (v17 == 31)
      {
        goto LABEL_20;
      }
    }

    v19 = 0;
    v20 = 47;
    while (v20 == a2[v19])
    {
      v20 = aSystemVolumesD_2[++v19];
      if (v19 == 46)
      {
        goto LABEL_20;
      }
    }

    v26 = 0;
    v27 = 47;
    do
    {
      v28 = a2[v26];
      v14 = v27 == v28;
      if (v27 != v28)
      {
        break;
      }

      v27 = aPrivateVarDbSp_0[++v26];
    }

    while (v26 != 26);
  }

  else
  {
    v14 = 0;
  }

LABEL_21:
  if ((a3 & 0x400) != 0)
  {
    v21 = a3 & 0xDFFFFBFF | 0x20000000;
  }

  else
  {
    v21 = a3 | 0x20000000;
  }

  if ((v21 & 0x200) != 0)
  {
    v22 = a9;
  }

  else
  {
    v22 = 0;
  }

  v23 = x_openat(a1, a2, v21, a4, a5, a6, a7, a8, v22);
  v24 = v23;
  if ((v23 & 0x80000000) == 0)
  {
    memset(&v29, 0, sizeof(v29));
    if (fstat(v23, &v29) || v29.st_nlink != 1 || (bzero(&v30, 0x878uLL), !v14) && (fstatfs(v24, &v30) || *&v30.f_fsid == qword_10001A100 || *&v30.f_fsid == qword_10001A108))
    {
      close(v24);
      *__error() = 1;
      return 0xFFFFFFFFLL;
    }

    else if ((a3 & 0x400) != 0)
    {
      ftruncate(v24, 0);
    }
  }

  return v24;
}

void sub_100002794(id a1)
{
  bzero(&v1, 0x878uLL);
  statfs("/", &v1);
  qword_10001A100 = v1.f_fsid;
  statfs("/System/Volumes/Data", &v1);
  qword_10001A108 = v1.f_fsid;
}

void sub_100002840(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0x18u);
}

void sub_100002C54(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2 == 2)
  {
    objc_begin_catch(exc_buf);
    NSLog(@"%@");

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x100002C24);
}

id sub_100002CF4(void *a1)
{
  [a1 setObject:@"com.apple.Spotlight.Metadata" forKey:kSecAttrAccessGroup];
  [a1 setObject:kCFBooleanTrue forKey:kSecAttrSynchronizable];
  [a1 setObject:kCFBooleanTrue forKey:kSecReturnData];

  return [a1 setObject:kSecAttrKeyClassSymmetric forKey:kSecAttrKeyClass];
}

BOOL sub_100002D94(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v4 = [a2 objectForKey:{kSecAttrLabel, a4}];
  if (v4 == kCFNull)
  {
    v4 = 0;
  }

  return [(__CFNull *)v4 hasPrefix:@"Spotlight Metadata Privacy"];
}

void sub_100002E04(uint64_t a1, void *a2)
{
  v4 = [a2 objectForKey:kSecAttrApplicationLabel];
  if (v4)
  {
    v5 = v4 == kCFNull;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return;
  }

  v6 = v4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = [[NSUUID alloc] initWithUUIDString:v6];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return;
    }

    if ([(__CFNull *)v6 length]!= 16)
    {
      v12 = [[NSString alloc] initWithData:v6 encoding:4];
      v9 = [[NSUUID alloc] initWithUUIDString:v12];

      goto LABEL_10;
    }

    v8 = [[NSUUID alloc] initWithUUIDBytes:{-[__CFNull bytes](v6, "bytes")}];
  }

  v9 = v8;
  [*(*(a1 + 32) + 24) setObject:kCFNull forKey:v8];
LABEL_10:
  v10 = *(a1 + 32);
  v11 = (*(*(a1 + 40) + 8) + 40);

  sub_100002F74(v10, a2, v9, v11);
}

void sub_100002F74(uint64_t a1, void *a2, void *a3, id *a4)
{
  v6 = [a2 objectForKey:kSecAttrCreationDate];
  if (!*(a1 + 8))
  {
    *(a1 + 8) = a3;
    goto LABEL_5;
  }

  if ([*a4 compare:v6] == 1)
  {

    *(a1 + 8) = a3;
LABEL_5:
    *a4 = v6;
    return;
  }
}

id sub_1000030E0(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  qword_10001A120 = result;
  return result;
}

void sub_100003244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000325C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) allKeys];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_100003360(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  if (*(*(*(a1 + 48) + 8) + 24) == kCFNull)
  {
    v5[0] = 0;
    v5[1] = 0;
    [*(a1 + 40) getUUIDBytes:v5];
    v2 = [NSData dataWithBytes:v5 length:16];
    v3 = [NSDictionary dictionaryWithObjectsAndKeys:kSecMatchLimitOne, kSecMatchLimit, kSecClassKey, kSecClass, kSecAttrKeyClassSymmetric, kSecAttrKeyClass, v2, kSecAttrApplicationLabel, kCFBooleanTrue, kSecReturnRef, 0, 0];

    *(*(*(a1 + 48) + 8) + 24) = 0;
    SecItemCopyMatching(v3, (*(*(a1 + 48) + 8) + 24));
    v4 = *(*(*(a1 + 48) + 8) + 24);
    if (v4)
    {
      [*(*(a1 + 32) + 24) setObject:v4 forKey:*(a1 + 40)];
      CFRelease(*(*(*(a1 + 48) + 8) + 24));
    }
  }
}

uint64_t sub_1000035A8(uint64_t a1)
{
  [*(a1 + 32) getKey:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

CFDataRef sub_100003F24(CCOperation a1, const void *a2, size_t a3, void *a4, int a5, int a6)
{
  dataOutAvailable = a3 + 16;
  v13 = [[NSMutableData alloc] initWithCapacity:a3 + 16];
  length = 0;
  iv[0] = a5;
  iv[1] = a6;
  v21 = 0;
  v14 = CCCrypt(a1, 0, 1u, [a4 bytes], objc_msgSend(a4, "length"), iv, a2, a3, objc_msgSend(v13, "bytes"), dataOutAvailable, &length);
  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10000CA20(v15);
    }

    v16 = 0;
  }

  else
  {
    v17 = [v13 bytes];
    v16 = CFDataCreate(kCFAllocatorDefault, v17, length);
  }

  return v16;
}

void sub_10000407C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void *sub_100004104(uint64_t a1, void *a2)
{
  result = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *result = *a2;
  return result;
}

uint64_t XPCUtil_CopyXPCObjectFromCF()
{
  result = _MDPlistBytesCreateMutableUsingMalloc();
  if (result)
  {
    v1 = result;
    _MDPlistBytesAppendPlist();
    ByteVector = _MDPlistBytesGetByteVector();
    ByteVectorCount = _MDPlistBytesGetByteVectorCount();
    v4 = xpc_data_create(ByteVector, ByteVectorCount);
    CFRelease(v1);
    return v4;
  }

  return result;
}

void XPCUtil_PackCFIntoArray(void *a1, size_t a2)
{
  MutableUsingMalloc = _MDPlistBytesCreateMutableUsingMalloc();
  if (MutableUsingMalloc)
  {
    v5 = MutableUsingMalloc;
    _MDPlistBytesAppendPlist();
    ByteVector = _MDPlistBytesGetByteVector();
    ByteVectorCount = _MDPlistBytesGetByteVectorCount();
    xpc_array_set_data(a1, a2, ByteVector, ByteVectorCount);

    CFRelease(v5);
  }
}

void XPCUtil_PackCFIntoDictionary(void *a1, const char *a2)
{
  MutableUsingMalloc = _MDPlistBytesCreateMutableUsingMalloc();
  if (MutableUsingMalloc)
  {
    v5 = MutableUsingMalloc;
    _MDPlistBytesAppendPlist();
    ByteVector = _MDPlistBytesGetByteVector();
    ByteVectorCount = _MDPlistBytesGetByteVectorCount();
    xpc_dictionary_set_data(a1, a2, ByteVector, ByteVectorCount);

    CFRelease(v5);
  }
}

uint64_t XPCUtil_CopyCFFromObject(void *a1)
{
  xpc_data_get_bytes_ptr(a1);
  xpc_data_get_length(a1);
  v2 = _MDPlistBytesCreate();
  v3 = _MDPlistBytesCopyPlistAtIndex();
  CFRelease(v2);
  return v3;
}

uint64_t XPCUtil_CopyCFFromArray(void *a1, size_t a2)
{
  length = 0;
  xpc_array_get_data(a1, a2, &length);
  v2 = _MDPlistBytesCreate();
  v3 = _MDPlistBytesCopyPlistAtIndex();
  CFRelease(v2);
  return v3;
}

uint64_t XPCUtil_CopyCFFromDictionary(void *a1, const char *a2)
{
  length = 0;
  xpc_dictionary_get_data(a1, a2, &length);
  v2 = _MDPlistBytesCreate();
  v3 = _MDPlistBytesCopyPlistAtIndex();
  CFRelease(v2);
  return v3;
}

CFAllocatorRef BWA_Create()
{
  context.version = 0;
  context.info = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  context.retain = &_CFRetain;
  context.release = &_CFRelease;
  context.copyDescription = 0;
  context.allocate = sub_1000045B8;
  context.reallocate = 0;
  context.deallocate = sub_1000045C0;
  context.preferredSize = nullsub_3;
  return CFAllocatorCreate(kCFAllocatorDefault, &context);
}

void sub_1000045C0(void *key, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    Value[2](Value, key);

    CFDictionaryRemoveValue(theDict, key);
  }
}

void BWA_DataAllocate(const __CFAllocator *a1, const void *a2, const void *a3)
{
  memset(&theDict, 0, sizeof(theDict));
  CFAllocatorGetContext(a1, &theDict);
  if (theDict.deallocate == sub_1000045C0)
  {
    v5 = _Block_copy(a3);
    CFDictionaryAddValue(theDict.info, a2, v5);
    _Block_release(v5);
  }
}

void BWA_DataDeallocate(const __CFAllocator *a1, void *a2)
{
  memset(&theDict, 0, sizeof(theDict));
  CFAllocatorGetContext(a1, &theDict);
  if (theDict.deallocate == sub_1000045C0)
  {
    sub_1000045C0(a2, theDict.info);
  }
}

uint64_t MDGetCurrentTimeSpec(__darwin_time_t *a1)
{
  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  gettimeofday(&v4, 0);
  v2 = 1000 * v4.tv_usec;
  *a1 = v4.tv_sec;
  a1[1] = v2;
  return 0;
}

uint64_t CF_RangeUnion(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= a3)
  {
    return a3;
  }

  return result;
}

uint64_t CF_RangeIntersection(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= a3)
  {
    return a3;
  }

  return result;
}

uint64_t mdBufferSprintf(char **a1, size_t *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = vsnprintf(*a1, *a2, a3, &a9);
  if ((result & 0x80000000) == 0)
  {
    if (*a2 >= result)
    {
      *a2 -= result;
      *a1 += result;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

BOOL isValidUUID(const char *a1)
{
  v11 = -1;
  v12 = -1;
  v9 = -1;
  v10 = -1;
  v8 = -1;
  v7 = 0;
  return sscanf(a1, "%*[0-9a-fA-F]%n-%*[0-9a-fA-F]%n-%*[0-9a-fA-F]%n-%*[0-9a-fA-F]%n-%*[0-9a-fA-F]%n%c", &v12, &v11, &v10, &v9, &v8, &v7) == -1 && v12 == 8 && v11 == 13 && v10 == 18 && v9 == 23 && v8 == 36;
}

unsigned __int8 *str_prefix(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    while (v2 == *a2)
    {
      ++a2;
      v4 = *v3++;
      v2 = v4;
      if (!v4)
      {
        return a2;
      }
    }

    return 0;
  }

  return a2;
}

_BYTE *str_common(_BYTE *result, unsigned __int8 *a2)
{
  v2 = *result;
  if (!*result)
  {
    return 0;
  }

  while (v2 == *a2)
  {
    v3 = *++result;
    v2 = v3;
    ++a2;
    if (!v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t strcmp_prefix(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1 + 1;
    while (1)
    {
      v4 = *a2;
      if (v4 != v2)
      {
        return (2 * (v2 - v4));
      }

      ++a2;
      v5 = *v3++;
      v2 = v5;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (*a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t strcmp_nocase(_BYTE *a1, char *a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1 + 1;
    while (1)
    {
      v5 = __tolower(v3);
      if (v5 != __tolower(*a2))
      {
        break;
      }

      ++a2;
      v6 = *v4++;
      v3 = v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v7 = *(v4 - 1);
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  v8 = __tolower(v7);
  return v8 - __tolower(*a2);
}

unsigned __int8 *findExtension(unsigned __int8 *result, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  while (1)
  {
    v2 = a2 - 1;
    if (a2 == 1)
    {
      break;
    }

    v3 = result[--a2];
    if ((v3 & 0xFE) == 0x2E)
    {
      result += v2;
      goto LABEL_7;
    }
  }

  v3 = *result;
LABEL_7:
  if (v3 != 46)
  {
    return 0;
  }

  return result;
}

const char *findNameAndExtension(const char *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1 + 1;
  while (1)
  {
    v3 = a2 - 1;
    if (a2 == 1)
    {
      break;
    }

    v4 = a1[--a2];
    if (v4 == 47)
    {
      a1 += v3;
      v2 = a1 + 1;
      goto LABEL_8;
    }
  }

  if (*a1 != 47)
  {
    return 0;
  }

LABEL_8:
  if (strlen(a1) <= 1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t bsearch_aux(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void *a6)
{
  v6 = a3 - 1;
  if (a3 - 1 < 0)
  {
    v17 = 0;
    v15 = 0;
  }

  else
  {
    v19 = a6;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = (v6 + v13) >> 1;
      v15 = a2 + v14 * a4;
      v16 = a5(a1, v15);
      if (!v16)
      {
        v11 = 0;
        v12 = a2 + v14 * a4;
        a6 = v19;
        goto LABEL_15;
      }

      v17 = v16;
      if (v16 < 0)
      {
        v6 = v14 - 1;
      }

      else
      {
        v13 = v14 + 1;
      }

      if (v16 >= 0)
      {
        v12 = a2 + v14 * a4;
        v11 = v16;
      }
    }

    while (v13 <= v6);
    a6 = v19;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  v11 = v17;
  v12 = v15;
LABEL_15:
  *a6 = v11;
  return v12;
}

uint64_t path_bundle_index(uint64_t a1)
{
  if (qword_10001A128 != -1)
  {
    sub_10000CAA0();
  }

  if (dword_100019FB0 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return fcntl(dword_100019FB0, 52, a1);
  }
}

uint64_t MDRunningInRosetta()
{
  if (byte_10001A130 == 1)
  {
    return byte_10001A131;
  }

  v2 = 0;
  v1 = 4;
  *v3 = 0x2C00000001;
  v4 = getpid();
  v5 = 0;
  sysctl(v3, 3u, &v2, &v1, 0, 0);
  if (v2)
  {
    result = 1;
    byte_10001A131 = 1;
  }

  else
  {
    result = byte_10001A131;
  }

  byte_10001A130 = 1;
  return result;
}

void *MDAddNanoseconds(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *result + a2;
  v4 = result[1] + a3;
  *result = v3;
  result[1] = v4;
  if (v4 >= 1000000000)
  {
    *result = v3 + 1;
    result[1] = v4 - 1000000000;
  }

  return result;
}

uint64_t MDElapsedTime(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(result + 8);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  v7 = 0xFFFFFFFFLL;
  if (v6 < 0 != v5)
  {
    v8 = 1000000;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a3 = *a2 - *result + v7;
  *(a3 + 8) = v6 + v8;
  return result;
}

time_t MDTimeSinceBoot()
{
  v3[1] = 0;
  v4 = 0;
  *v6 = 0x1500000001;
  v3[0] = 0;
  v5 = 16;
  time(&v4);
  v0 = sysctl(v6, 2u, v3, &v5, 0, 0);
  if (v3[0])
  {
    v1 = v0 == -1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  else
  {
    return v4 - v3[0];
  }
}

uint64_t MDBootTime()
{
  *v3 = 0x1500000001;
  v1[0] = 0;
  v1[1] = 0;
  v2 = 16;
  if (sysctl(v3, 2u, v1, &v2, 0, 0) == -1)
  {
    return 0;
  }

  else
  {
    return v1[0];
  }
}

uint64_t MDGetPhysicalRAMSize()
{
  result = qword_10001A138;
  if (!qword_10001A138)
  {
    v5 = 0u;
    v6 = 0u;
    *host_info_out = 0u;
    v1 = mach_host_self();
    host_info_outCnt = 12;
    v2 = host_info(v1, 1, host_info_out, &host_info_outCnt);
    if (v2)
    {
      mach_error("flushsize", v2);
      exit(1);
    }

    result = *(&v6 + 1);
    qword_10001A138 = *(&v6 + 1);
  }

  return result;
}

unint64_t MDSecondsToMachAbsoluteTime(double a1)
{
  if (qword_10001A140 != -1)
  {
    sub_10000CAB4();
  }

  return (*&qword_10001A148 * a1);
}

void sub_100004F50(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v2) = info.numer;
    LODWORD(v1) = info.denom;
    *&qword_10001A148 = v1 * 1000000000.0 / v2;
  }
}

double MDMachAbsoluteTimeDiff(uint64_t a1, uint64_t a2)
{
  if (qword_10001A140 != -1)
  {
    sub_10000CAC8();
  }

  return (a2 - a1) / *&qword_10001A148;
}

void sub_100004FF0(id a1)
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(v2) = info.numer;
    LODWORD(v1) = info.denom;
    *&qword_10001A148 = v1 * 1000000000.0 / v2;
  }
}

uint64_t MDSGetSystemLoadAdvisory()
{
  check = 0;
  notify_check(dword_10001A150, &check);
  if (!check)
  {
    return qword_100019FB8;
  }

  notify_get_state(dword_10001A150, &qword_100019FB8);
  result = qword_100019FB8;
  if (!qword_100019FB8)
  {
    result = 2;
    qword_100019FB8 = 2;
  }

  return result;
}

uint64_t MDSetThreadPriority(integer_t a1)
{
  policy_info = a1;
  v1 = mach_thread_self();
  v2 = thread_policy_set(v1, 3u, &policy_info, 1u);
  mach_port_deallocate(mach_task_self_, v1);
  return v2;
}

uint64_t MDSetThreadVNodeRapidAging(int a1)
{
  *v4 = 0x4400000001;
  if (a1)
  {
    v1 = 2;
  }

  else
  {
    v1 = 4;
  }

  v3 = v1;
  return sysctl(v4, 2u, 0, 0, &v3, 4uLL);
}

uint64_t MDSetProcessVNodeRapidAging(int a1)
{
  *v4 = 0x4400000001;
  if (a1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  v3 = v1;
  return sysctl(v4, 2u, 0, 0, &v3, 4uLL);
}

uint64_t allow_COW_exempt()
{
  if (qword_10001A170 != -1)
  {
    sub_10000CADC();
  }

  return byte_10001A178;
}

BOOL MDKillTask(mach_port_name_t a1)
{
  x = 0;
  v1 = pid_for_task(a1, &x);
  result = 0;
  if (!v1)
  {
    return kill(x, 9) == 0;
  }

  return result;
}

__CFString *MDCopyMachPortDescription(const __CFAllocator *a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(a1, 0);
  if (Mutable)
  {
    *v9 = 0;
    *refs = 0;
    v8 = 0;
    v4 = mach_port_get_refs(mach_task_self_, a2, 1u, &refs[1]);
    if (v4 || (v4 = mach_port_get_refs(mach_task_self_, a2, 0, refs), v4))
    {
      v5 = v4;
      v7 = mach_error_string(v4);
      CFStringAppendFormat(Mutable, 0, @"port:%#010x kr:%u (%s)", a2, v5, v7);
    }

    else
    {
      mach_port_get_refs(mach_task_self_, a2, 2u, &v9[1]);
      mach_port_get_refs(mach_task_self_, a2, 4u, v9);
      mach_port_get_refs(mach_task_self_, a2, 3u, &v8);
      CFStringAppendFormat(Mutable, 0, @"port:%#010x receiveRefs:%u sendRefs:%u sendOnceRefs:%u deadNameRefs:%u portSetRefs:%u", a2, refs[1], refs[0], v9[1], v9[0], v8);
    }
  }

  return Mutable;
}

uint64_t _MDIsAppleInternal()
{
  if (qword_10001A158 != -1)
  {
    sub_10000CAF0();
  }

  return 0;
}

CFDataRef CFDataCreateWithContentsOfURL(const __CFAllocator *a1, const __CFURL *a2)
{
  bzero(buffer, 0x400uLL);
  if (!CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024))
  {
    return 0;
  }

  memset(&v10.st_size, 0, 48);
  v4 = open(buffer, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  if (v4 == -1)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  if (!fstat(v4, &v10) && v10.st_size <= 0xFFFFFF)
  {
    Typed = CFAllocatorAllocateTyped();
    st_size = v10.st_size;
    if (st_size == pread(v5, Typed, v10.st_size, 0))
    {
      v6 = CFDataCreateWithBytesNoCopy(a1, Typed, v10.st_size, a1);
    }

    else
    {
      CFAllocatorDeallocate(a1, Typed);
      v6 = 0;
    }
  }

  close(v5);
  return v6;
}

char *cStringFromCFString(const __CFString *a1, char *a2, CFIndex a3, CFStringEncoding a4)
{
  if (CFStringGetCString(a1, a2, a3, a4))
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

int64x2_t MDTimeInfoDifference(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3)
{
  result = vsubq_s64(*a2, *a1);
  *a3 = result;
  return result;
}

int64x2_t MDTimeInfoSum(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3)
{
  result = vaddq_s64(*a2, *a1);
  *a3 = result;
  return result;
}

uint64_t MDTimeInfoEnd(int64x2_t *a1)
{
  memset(v3, 0, sizeof(v3));
  task_info_outCnt = 8;
  if (task_info(mach_task_self_, 1u, v3[0].i32, &task_info_outCnt))
  {
    return 0;
  }

  *a1 = vsubq_s64(v3[0], *a1);
  return 1;
}

const __CFNumber *MDNumberGetInt32(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

const __CFNumber *MDNumberGetInt64(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

double MDNumberGetDouble(const __CFNumber *a1)
{
  valuePtr = 0.0;
  if (!a1)
  {
    return 0.0;
  }

  CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
  return valuePtr;
}

void MDArrayIterate(const __CFArray *a1, void *a2)
{
  v4.length = CFArrayGetCount(a1);
  v4.location = 0;

  CFArrayApplyFunction(a1, v4, sub_100005934, a2);
}

uint64_t GetSystemBuildVersionStringLocal()
{
  if (qword_10001A168 != -1)
  {
    sub_10000CB04();
  }

  return qword_10001A160;
}

void sub_100005984(id a1)
{
  v1 = _CFCopySystemVersionDictionary();
  Value = CFDictionaryGetValue(v1, _kCFSystemVersionBuildVersionKey);
  qword_10001A160 = Value;
  if (Value)
  {
    qword_10001A160 = CFStringCreateCopy(kCFAllocatorDefault, Value);
  }

  CFRelease(v1);
  if (!qword_10001A160)
  {
    qword_10001A160 = &stru_100015178;
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [(NSXPCListener *)v4 setDelegate:v3];
  [(NSXPCListener *)v4 resume];
  return 0;
}

unint64_t _MDLabelUUIDEncode(unint64_t result, unint64_t a2, uint64_t a3)
{
  *a3 = aAbcdefghijklmn[result >> 3];
  *(a3 + 1) = aAbcdefghijklmn[(result >> 14) & 0xFFFFFFFFFFFFFFE3 | (4 * (result & 7))];
  *(a3 + 2) = aAbcdefghijklmn[(result >> 9) & 0x1F];
  *(a3 + 3) = aAbcdefghijklmn[(BYTE2(result) & 0xF0 | (result & 0x100)) >> 4];
  *(a3 + 4) = aAbcdefghijklmn[(result >> 15) & 0x1E | (result >> 31)];
  *(a3 + 5) = aAbcdefghijklmn[(result >> 26) & 0x1F];
  *(a3 + 6) = aAbcdefghijklmn[(result >> 21) & 0x18 | (result >> 37) & 7];
  *(a3 + 7) = aAbcdefghijklmn[HIDWORD(result) & 0x1F];
  *(a3 + 8) = aAbcdefghijklmn[(result >> 43) & 0x1F];
  *(a3 + 9) = aAbcdefghijklmn[(result >> 38) & 0x1C | (result >> 54) & 3];
  *(a3 + 10) = aAbcdefghijklmn[(result >> 49) & 0x1F];
  *(a3 + 11) = aAbcdefghijklmn[(result >> 44) & 0x10 | (result >> 60)];
  *(a3 + 12) = aAbcdefghijklmn[(result >> 55) & 0x1E | (a2 >> 7) & 1];
  *(a3 + 13) = aAbcdefghijklmn[(a2 >> 2) & 0x1F];
  *(a3 + 14) = aAbcdefghijklmn[(a2 >> 13) & 0xFFFFFFFFFFFFFFE7 | (8 * (a2 & 3))];
  *(a3 + 15) = aAbcdefghijklmn[(a2 >> 8) & 0x1F];
  *(a3 + 16) = aAbcdefghijklmn[(a2 >> 19) & 0x1F];
  *(a3 + 17) = aAbcdefghijklmn[(a2 >> 14) & 0x1C | (a2 >> 30)];
  *(a3 + 18) = aAbcdefghijklmn[(a2 >> 25) & 0x1F];
  *(a3 + 19) = aAbcdefghijklmn[(a2 >> 20) & 0x10 | (a2 >> 36) & 0xF];
  *(a3 + 20) = aAbcdefghijklmn[(a2 >> 31) & 0x1E | (a2 >> 47) & 1];
  *(a3 + 21) = aAbcdefghijklmn[(a2 >> 42) & 0x1F];
  *(a3 + 22) = aAbcdefghijklmn[(a2 >> 37) & 0x18 | (a2 >> 53) & 7];
  *(a3 + 23) = aAbcdefghijklmn[HIWORD(a2) & 0x1F];
  *(a3 + 24) = aAbcdefghijklmn[a2 >> 59];
  *(a3 + 25) = aAbcdefghijklmn[(a2 >> 54) & 0x1C];
  return result;
}

uint64_t _MDPrivateXattrUUIDsGetter()
{
  if (qword_10001A188 != -1)
  {
    sub_10000CB60();
  }

  return qword_10001A180;
}

void sub_100005EA0(id a1)
{
  v1 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0x71u, 0x9Fu, 0xB8u, 0xCAu, 0x18u, 0x13u, 0x49u, 0xB0u, 0x8Bu, 0x20u, 0x36u, 0x5Eu, 0xEBu, 0xC3u, 0xEDu, 0x57u);
  CFUUIDGetUUIDBytes(v1);
  qword_10001A180 = xpc_create_with_format();
}

CFTypeID MDLabelGetTypeID(void)
{
  if (qword_10001A198 != -1)
  {
    sub_10000CB74();
  }

  return qword_10001A190;
}

uint64_t MDHash(unsigned __int8 *a1, unsigned int a2, int a3)
{
  v3 = -1640531527;
  if (a2 < 0xC)
  {
    v5 = -1640531527;
    v4 = a2;
  }

  else
  {
    v4 = a2;
    v5 = -1640531527;
    do
    {
      v6 = *(a1 + 1) + v3;
      v7 = *(a1 + 2) + a3;
      v8 = (*a1 + v5 - (v6 + v7)) ^ (v7 >> 13);
      v9 = (v6 - v7 - v8) ^ (v8 << 8);
      v10 = (v7 - v8 - v9) ^ (v9 >> 13);
      v11 = (v8 - v9 - v10) ^ (v10 >> 12);
      v12 = (v9 - v10 - v11) ^ (v11 << 16);
      v13 = (v10 - v11 - v12) ^ (v12 >> 5);
      v5 = (v11 - v12 - v13) ^ (v13 >> 3);
      v3 = (v12 - v13 - v5) ^ (v5 << 10);
      a3 = (v13 - v5 - v3) ^ (v3 >> 15);
      a1 += 12;
      v4 -= 12;
    }

    while (v4 > 0xB);
  }

  v14 = a3 + a2;
  if (v4 > 5)
  {
    if (v4 > 8)
    {
      if (v4 != 9)
      {
        if (v4 != 10)
        {
          v14 += a1[10] << 24;
        }

        v14 += a1[9] << 16;
      }

      v14 += a1[8] << 8;
    }

    else
    {
      if (v4 == 6)
      {
LABEL_22:
        v3 += a1[5] << 8;
        goto LABEL_23;
      }

      if (v4 == 7)
      {
LABEL_21:
        v3 += a1[6] << 16;
        goto LABEL_22;
      }
    }

    v3 += a1[7] << 24;
    goto LABEL_21;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
LABEL_25:
      v5 += a1[2] << 16;
      goto LABEL_26;
    }

    if (v4 == 4)
    {
LABEL_24:
      v5 += a1[3] << 24;
      goto LABEL_25;
    }

LABEL_23:
    v3 += a1[4];
    goto LABEL_24;
  }

  if (v4 == 1)
  {
    goto LABEL_27;
  }

  if (v4 != 2)
  {
    goto LABEL_28;
  }

LABEL_26:
  v5 += a1[1] << 8;
LABEL_27:
  v5 += *a1;
LABEL_28:
  v15 = (v5 - (v3 + v14)) ^ (v14 >> 13);
  v16 = (v3 - v14 - v15) ^ (v15 << 8);
  v17 = (v14 - v15 - v16) ^ (v16 >> 13);
  v18 = (v15 - v16 - v17) ^ (v17 >> 12);
  v19 = (v16 - v17 - v18) ^ (v18 << 16);
  v20 = (v17 - v18 - v19) ^ (v19 >> 5);
  v21 = (v18 - v19 - v20) ^ (v20 >> 3);
  return (v20 - v21 - ((v19 - v20 - v21) ^ (v21 << 10))) ^ (((v19 - v20 - v21) ^ (v21 << 10)) >> 15);
}

uint64_t MDHashQuick32(int a1)
{
  v1 = (-1640531527 - a1) ^ ((a1 - 4) << 8);
  v2 = (8 - a1 - v1) ^ (v1 >> 13);
  v3 = (a1 - 4 - v1 - v2) ^ (v2 >> 12);
  v4 = (v1 - v2 - v3) ^ (v3 << 16);
  v5 = (v2 - v3 - v4) ^ (v4 >> 5);
  v6 = (v3 - v4 - v5) ^ (v5 >> 3);
  return (v5 - v6 - ((v4 - v5 - v6) ^ (v6 << 10))) ^ (((v4 - v5 - v6) ^ (v6 << 10)) >> 15);
}

uint64_t MDHashQuick32Pair(int a1, int a2)
{
  v2 = a1 - a2 - 8;
  v3 = (a2 - (a1 - a2) - 1640531527) ^ (v2 << 8);
  v4 = (16 - (a1 - a2) - v3) ^ (v3 >> 13);
  v5 = (v2 - v3 - v4) ^ (v4 >> 12);
  v6 = (v3 - v4 - v5) ^ (v5 << 16);
  v7 = (v4 - v5 - v6) ^ (v6 >> 5);
  v8 = (v5 - v6 - v7) ^ (v7 >> 3);
  return (v7 - v8 - ((v6 - v7 - v8) ^ (v8 << 10))) ^ (((v6 - v7 - v8) ^ (v8 << 10)) >> 15);
}

uint64_t MDHashQuick64(uint64_t a1)
{
  v1 = HIDWORD(a1) - a1 - 8;
  v2 = (a1 - (HIDWORD(a1) - a1) - 1640531527) ^ (v1 << 8);
  v3 = (16 - (HIDWORD(a1) - a1) - v2) ^ (v2 >> 13);
  v4 = (v1 - v2 - v3) ^ (v3 >> 12);
  v5 = (v2 - v3 - v4) ^ (v4 << 16);
  v6 = (v3 - v4 - v5) ^ (v5 >> 5);
  v7 = (v4 - v5 - v6) ^ (v6 >> 3);
  return (v6 - v7 - ((v5 - v6 - v7) ^ (v7 << 10))) ^ (((v5 - v6 - v7) ^ (v7 << 10)) >> 15);
}

uint64_t MDHashQuickPtrAsInt(uint64_t a1)
{
  v1 = HIDWORD(a1) - a1 - 8;
  v2 = (a1 - (HIDWORD(a1) - a1) - 1640531527) ^ (v1 << 8);
  v3 = (16 - (HIDWORD(a1) - a1) - v2) ^ (v2 >> 13);
  v4 = (v1 - v2 - v3) ^ (v3 >> 12);
  v5 = (v2 - v3 - v4) ^ (v4 << 16);
  v6 = (v3 - v4 - v5) ^ (v5 >> 5);
  v7 = (v4 - v5 - v6) ^ (v6 >> 3);
  return (v6 - v7 - ((v5 - v6 - v7) ^ (v7 << 10))) ^ (((v5 - v6 - v7) ^ (v7 << 10)) >> 15);
}

unint64_t MDHash64Quick64(uint64_t a1)
{
  v1 = HIDWORD(a1) - a1 + 608135808;
  v2 = (a1 - (HIDWORD(a1) - a1) + 2046299953) ^ (v1 << 8);
  v3 = (-608135800 - (HIDWORD(a1) - a1) - v2) ^ (v2 >> 13);
  v4 = (v1 - v2 - v3) ^ (v3 >> 12);
  v5 = (v2 - v3 - v4) ^ (v4 << 16);
  v6 = (v3 - v4 - v5) ^ (v5 >> 5);
  v7 = (v4 - v5 - v6) ^ (v6 >> 3);
  v8 = (v6 - v7 - ((v5 - v6 - v7) ^ (v7 << 10))) ^ (((v5 - v6 - v7) ^ (v7 << 10)) >> 15);
  v9 = a1 + 608135808 - HIDWORD(a1);
  v10 = (HIDWORD(a1) - (v9 + 8) - 1640531527) ^ (v9 << 8);
  v11 = (8 - v9 - v10) ^ (v10 >> 13);
  v12 = (v9 - v10 - v11) ^ (v11 >> 12);
  v13 = (v10 - v11 - v12) ^ (v12 << 16);
  v14 = (v11 - v12 - v13) ^ (v13 >> 5);
  v15 = (v12 - v13 - v14) ^ (v14 >> 3);
  return v8 | (((v14 - v15 - ((v13 - v14 - v15) ^ (v15 << 10))) ^ (((v13 - v14 - v15) ^ (v15 << 10)) >> 15)) << 32);
}

unint64_t MDUHash32(int a1)
{
  v1 = (2 * a1 + 2046299953) ^ ((608135808 - a1) << 8);
  v2 = (a1 - 608135800 - v1) ^ (v1 >> 13);
  v3 = (608135808 - a1 - v1 - v2) ^ (v2 >> 12);
  v4 = (v1 - v2 - v3) ^ (v3 << 16);
  v5 = (v2 - v3 - v4) ^ (v4 >> 5);
  v6 = (v3 - v4 - v5) ^ (v5 >> 3);
  v7 = (v5 - v6 - ((v4 - v5 - v6) ^ (v6 << 10))) ^ (((v4 - v5 - v6) ^ (v6 << 10)) >> 15);
  v8 = (2046299953 - a1) ^ ((a1 + 608135808) << 8);
  v9 = (-608135800 - a1 - v8) ^ (v8 >> 13);
  v10 = (a1 + 608135808 - v8 - v9) ^ (v9 >> 12);
  v11 = (v8 - v9 - v10) ^ (v10 << 16);
  v12 = (v9 - v10 - v11) ^ (v11 >> 5);
  v13 = (v10 - v11 - v12) ^ (v12 >> 3);
  return v7 | (((v12 - v13 - ((v11 - v12 - v13) ^ (v13 << 10))) ^ (((v11 - v12 - v13) ^ (v13 << 10)) >> 15)) << 32);
}

unint64_t MDUHash64(uint64_t a1)
{
  v1 = HIDWORD(a1) - a1 + 608135808;
  v2 = (a1 - (HIDWORD(a1) - a1) + 2046299953) ^ (v1 << 8);
  v3 = (-608135800 - (HIDWORD(a1) - a1) - v2) ^ (v2 >> 13);
  v4 = (v1 - v2 - v3) ^ (v3 >> 12);
  v5 = (v2 - v3 - v4) ^ (v4 << 16);
  v6 = (v3 - v4 - v5) ^ (v5 >> 5);
  v7 = (v4 - v5 - v6) ^ (v6 >> 3);
  v8 = (v6 - v7 - ((v5 - v6 - v7) ^ (v7 << 10))) ^ (((v5 - v6 - v7) ^ (v7 << 10)) >> 15);
  v9 = a1 + 608135808 - HIDWORD(a1);
  v10 = (HIDWORD(a1) - (v9 + 8) - 1640531527) ^ (v9 << 8);
  v11 = (8 - v9 - v10) ^ (v10 >> 13);
  v12 = (v9 - v10 - v11) ^ (v11 >> 12);
  v13 = (v10 - v11 - v12) ^ (v12 << 16);
  v14 = (v11 - v12 - v13) ^ (v13 >> 5);
  v15 = (v12 - v13 - v14) ^ (v14 >> 3);
  return v8 | (((v14 - v15 - ((v13 - v14 - v15) ^ (v15 << 10))) ^ (((v13 - v14 - v15) ^ (v15 << 10)) >> 15)) << 32);
}

unint64_t MDUHashIntPtr(uint64_t a1)
{
  v1 = HIDWORD(a1) - a1 + 608135808;
  v2 = (a1 - (HIDWORD(a1) - a1) + 2046299953) ^ (v1 << 8);
  v3 = (-608135800 - (HIDWORD(a1) - a1) - v2) ^ (v2 >> 13);
  v4 = (v1 - v2 - v3) ^ (v3 >> 12);
  v5 = (v2 - v3 - v4) ^ (v4 << 16);
  v6 = (v3 - v4 - v5) ^ (v5 >> 5);
  v7 = (v4 - v5 - v6) ^ (v6 >> 3);
  v8 = (v6 - v7 - ((v5 - v6 - v7) ^ (v7 << 10))) ^ (((v5 - v6 - v7) ^ (v7 << 10)) >> 15);
  v9 = a1 + 608135808 - HIDWORD(a1);
  v10 = (HIDWORD(a1) - (v9 + 8) - 1640531527) ^ (v9 << 8);
  v11 = (8 - v9 - v10) ^ (v10 >> 13);
  v12 = (v9 - v10 - v11) ^ (v11 >> 12);
  v13 = (v10 - v11 - v12) ^ (v12 << 16);
  v14 = (v11 - v12 - v13) ^ (v13 >> 5);
  v15 = (v12 - v13 - v14) ^ (v14 >> 3);
  return v8 | (((v14 - v15 - ((v13 - v14 - v15) ^ (v15 << 10))) ^ (((v13 - v14 - v15) ^ (v15 << 10)) >> 15)) << 32);
}

id sub_100006DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) objectAtIndex:?];

  return [v3 setObject:v4 forKey:a2];
}

int64_t sub_10000797C(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = [(NSDictionary *)a2 objectForKey:@"mod_date"];
  v5 = [(NSDictionary *)a3 objectForKey:@"mod_date"];

  return [v4 compare:v5];
}

id copyUpdatedData(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v152 = v2;
  v153 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v1;
  v15 = [v10 objectForKey:@"keys"];
  v16 = [v11 objectForKey:@"values"];
  v163 = 0;
  if (v13)
  {
    v17 = [+[MDPrivateXattrServices defaultServices](MDPrivateXattrServices "defaultServices")];
    if ([v17 count])
    {
      v18 = [NSMutableDictionary alloc];
      v185[0] = [v17 allKeys];
      v185[1] = [v17 allValues];
      v19 = [v18 initWithObjects:+[NSArray arrayWithObjects:count:](NSArray forKeys:{"arrayWithObjects:count:", v185, 2), &off_1000159B8}];

      if (v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v19 = objc_alloc_init(NSMutableDictionary);
LABEL_7:
  v20 = [+[MDKeyRing defaultKeyRing](MDKeyRing "defaultKeyRing")];
  v21 = [v11 objectForKey:@"uuid"];
  v156 = v20;
  v154 = v9;
  if (!v9)
  {
    v72 = [v19 objectForKey:@"uuid"];
    if (!v72 || ![v21 isEqual:v72])
    {
      goto LABEL_84;
    }

    v22 = sub_100008D1C(v19, v15, v16, v7);
LABEL_83:
    if (v22)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v22 = sub_100008D1C(v19, v15, v16, v7);
  if (qword_10001A1F0 != -1)
  {
    sub_10000CC58();
  }

  if (![v15 count] || !objc_msgSend(qword_10001A1E8, "containsObject:", objc_msgSend(v15, "objectAtIndexedSubscript:", 0)))
  {
    goto LABEL_83;
  }

  v149 = v19;
  v23 = [v22 objectForKey:@"keys"];
  v150 = [v22 objectForKey:@"values"];
  v148 = [v22 objectForKey:@"mod_date"];
  if (![v15 count])
  {
    goto LABEL_143;
  }

  v24 = [v23 count];
  if (v24 != [v150 count] || !objc_msgSend(v23, "count"))
  {
    goto LABEL_143;
  }

  v141 = v21;
  v142 = v11;
  v143 = v14;
  v157 = v22;
  v146 = v23;
  v25 = [[NSMutableDictionary alloc] initWithObjects:v150 forKeys:v23];
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v26 = [v15 countByEnumeratingWithState:&v180 objects:v192 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v181;
    v29 = -1;
LABEL_17:
    v30 = 0;
    while (1)
    {
      if (*v181 != v28)
      {
        objc_enumerationMutation(v15);
      }

      v31 = [v25 objectForKeyedSubscript:*(*(&v180 + 1) + 8 * v30)];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_142;
      }

      v32 = [v31 count];
      if (v29 == -1)
      {
        v29 = v32;
        if (!v32)
        {
          goto LABEL_142;
        }
      }

      else if (v29 != v32)
      {
        goto LABEL_142;
      }

      if (v27 == ++v30)
      {
        v27 = [v15 countByEnumeratingWithState:&v180 objects:v192 count:16];
        if (v27)
        {
          goto LABEL_17;
        }

        break;
      }
    }
  }

  v33 = [v25 objectForKeyedSubscript:{objc_msgSend(v15, "objectAtIndexedSubscript:", 0)}];
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v34 = [v33 countByEnumeratingWithState:&v176 objects:v190 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v177;
LABEL_29:
    v37 = 0;
    while (1)
    {
      if (*v177 != v36)
      {
        objc_enumerationMutation(v33);
      }

      v38 = *(*(&v176 + 1) + 8 * v37);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      if (v35 == ++v37)
      {
        v35 = [v33 countByEnumeratingWithState:&v176 objects:v190 count:16];
        if (v35)
        {
          goto LABEL_29;
        }

        goto LABEL_35;
      }
    }

LABEL_142:

    v22 = v157;
    v11 = v142;
    v14 = v143;
    v21 = v141;
    goto LABEL_143;
  }

LABEL_35:
  v139 = v5;
  v140 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
  v39 = [v33 count];
  v145 = [v33 lastObject];
  v147 = +[NSMutableSet set];
  v40 = +[NSMutableDictionary dictionary];
  if (v39)
  {
    v144 = v33;
    do
    {
      v41 = [v33 objectAtIndexedSubscript:--v39];
      [v145 timeIntervalSinceDate:v41];
      if (v42 > 0.0)
      {
        if (v42 >= *"")
        {
          if (v42 >= 2678400.0)
          {
            if (v42 >= 94867200.0)
            {
              v43 = 4;
            }

            else
            {
              v43 = 12;
            }
          }

          else
          {
            v43 = 28;
          }
        }

        else
        {
          v43 = 60;
        }

        v41 = [(NSCalendar *)v140 dateFromComponents:[(NSCalendar *)v140 components:v43 fromDate:v41]];
      }

      v44 = +[NSMutableDictionary dictionary];
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v45 = [v15 countByEnumeratingWithState:&v172 objects:&v188 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v173;
        do
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v173 != v47)
            {
              objc_enumerationMutation(v15);
            }

            v49 = *(*(&v172 + 1) + 8 * i);
            v50 = [v15 objectAtIndexedSubscript:0];
            v51 = v41;
            if (v49 != v50)
            {
              v51 = [objc_msgSend(v25 objectForKeyedSubscript:{v49), "objectAtIndexedSubscript:", v39}];
            }

            [v44 setObject:v51 forKeyedSubscript:v49];
          }

          v46 = [v15 countByEnumeratingWithState:&v172 objects:&v188 count:16];
        }

        while (v46);
      }

      if (([v147 containsObject:v44] & 1) == 0)
      {
        [v147 addObject:v44];
        v170 = 0u;
        v171 = 0u;
        v168 = 0u;
        v169 = 0u;
        v52 = [v15 countByEnumeratingWithState:&v168 objects:v187 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v169;
          do
          {
            for (j = 0; j != v53; j = j + 1)
            {
              if (*v169 != v54)
              {
                objc_enumerationMutation(v15);
              }

              v56 = *(*(&v168 + 1) + 8 * j);
              v57 = [v40 objectForKeyedSubscript:v56];
              if (!v57)
              {
                v57 = +[NSMutableArray array];
                [v40 setObject:v57 forKeyedSubscript:v56];
              }

              [v57 addObject:{objc_msgSend(v44, "objectForKeyedSubscript:", v56)}];
            }

            v53 = [v15 countByEnumeratingWithState:&v168 objects:v187 count:16];
          }

          while (v53);
        }
      }

      v33 = v144;
    }

    while (v39);
  }

  v58 = objc_alloc_init(NSMutableArray);
  v59 = objc_alloc_init(NSMutableArray);
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v60 = [v15 countByEnumeratingWithState:&v164 objects:v186 count:16];
  if (v60)
  {
    v61 = v60;
    v62 = *v165;
    do
    {
      for (k = 0; k != v61; k = k + 1)
      {
        if (*v165 != v62)
        {
          objc_enumerationMutation(v15);
        }

        v64 = *(*(&v164 + 1) + 8 * k);
        v65 = [v40 objectForKeyedSubscript:v64];
        [v58 addObject:v64];
        [v59 addObject:{objc_msgSend(objc_msgSend(v65, "reverseObjectEnumerator"), "allObjects")}];
      }

      v61 = [v15 countByEnumeratingWithState:&v164 objects:v186 count:16];
    }

    while (v61);
  }

  v66 = [[NSSet alloc] initWithArray:v15];
  v67 = [v146 count];
  v20 = v156;
  v9 = v154;
  v21 = v141;
  if (v67)
  {
    v68 = v67;
    for (m = 0; m != v68; ++m)
    {
      v70 = [v146 objectAtIndexedSubscript:m];
      if (([v66 containsObject:v70] & 1) == 0)
      {
        [v58 addObject:v70];
        [v59 addObject:{objc_msgSend(v150, "objectAtIndexedSubscript:", m)}];
      }
    }
  }

  v71 = objc_alloc_init(NSMutableDictionary);
  [v71 setObject:v58 forKeyedSubscript:@"keys"];
  [v71 setObject:v59 forKeyedSubscript:@"values"];

  v22 = v157;
  v5 = v139;
  v11 = v142;
  v14 = v143;
  if (v71)
  {
    [v71 setObject:v148 forKey:@"mod_date"];
    goto LABEL_144;
  }

LABEL_143:
  v71 = [v22 copy];
LABEL_144:

  v22 = v71;
  v19 = v149;
  if (!v22)
  {
LABEL_84:
    v22 = [v11 mutableCopy];
    [v22 removeObjectForKey:@"uuid"];
    [v22 setObject:+[NSDate date](NSDate forKey:{"date"), @"mod_date"}];
  }

LABEL_85:
  v158 = v22;

  memset(v190, 0, sizeof(v190));
  v191 = 0;
  if (v9)
  {
    v73 = v20;
  }

  else
  {
    v73 = v21;
  }

  v189 = 0;
  v188 = 0;
  [v14 digestUUIDBytesWithKey:v20 forUUID:v73 uuidBytes:&v188];
  _MDLabelUUIDEncode(v188, v189, v190);
  v74 = [[NSString alloc] initWithFormat:@"%s%s", "com.apple.metadata:kMDLabel_", v190];
  *v5 = v74;
  [v74 UTF8String];
  v75 = [NSMutableArray alloc];
  v76 = [v75 initWithCapacity:{objc_msgSend(v163, "count")}];
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v77 = v163;
  v78 = [v163 countByEnumeratingWithState:&v159 objects:v184 count:16];
  if (v78)
  {
    v79 = v78;
    v80 = *v160;
    do
    {
      for (n = 0; n != v79; n = n + 1)
      {
        if (*v160 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = *(*(&v159 + 1) + 8 * n);
        if ([v82 hasPrefix:@"com.apple.metadata:kMDLabel_"])
        {
          v83 = v82;
LABEL_97:
          v88 = v83;
          goto LABEL_99;
        }

        if ([v82 hasPrefix:@"com.apple.metadata"])
        {
          v84 = v76;
          v85 = v5;
          v86 = [NSString alloc];
          v138 = [v82 substringFromIndex:19];
          v87 = v86;
          v5 = v85;
          v76 = v84;
          v83 = [v87 initWithFormat:@"%s%@", "com.apple.metadata:kMDLabel_", v138];
          goto LABEL_97;
        }

        v88 = 0;
LABEL_99:
        if (([v88 isEqual:*v5] & 1) == 0)
        {
          [v76 addObject:v88];
        }
      }

      v79 = [v77 countByEnumeratingWithState:&v159 objects:v184 count:16];
    }

    while (v79);
  }

  v89 = v22;
  if (![objc_msgSend(v22 objectForKey:{@"keys", "count"}])
  {
    [v76 addObject:*v5];
    v109 = 0;
    v95 = v156;
    goto LABEL_138;
  }

  bzero(v192, 0x2000uLL);
  if (v154)
  {
    v90 = -14;
  }

  else
  {
    v90 = -15;
  }

  v91 = arc4random();
  v92 = arc4random();
  v93 = v92;
  v186[0] = 0;
  if (v154)
  {
    v94 = sub_100009EB4(v22, v192, 0x2000uLL, v186);
    v95 = v156;
    if (!v94)
    {
      v96 = malloc_type_malloc(0x10000uLL, 0x5D37A958uLL);
      v94 = sub_100009EB4(v22, v96, 0x10000uLL, v186);
      if (!v94)
      {
        sub_10000CCBC(0, v97, v98, v99, v100, v101, v102, v103);
      }
    }

    v104 = v94;
    v105 = v186[0];
    if (v186[0])
    {
      goto LABEL_111;
    }

LABEL_127:
    if (v104 != v192)
    {
      free(v104);
    }

    goto LABEL_135;
  }

  v151 = v92;
  v155 = v90;
  v110 = v91;
  v111 = [v22 objectForKey:@"uuid"];
  v112 = [v22 objectForKey:@"keys"];
  v113 = [v22 objectForKey:@"values"];
  v114 = [v112 count];
  v115 = [v113 count];
  v116 = 24 * v114 + 20;
  if (v116 <= 0x2000)
  {
    v104 = v192;
  }

  else
  {
    v104 = malloc_type_malloc(v116, 0x900D5E5DuLL);
  }

  *v104 = 1279345228;
  v187[0] = v104 + 1;
  v117 = sub_10000A118(v111, v187);
  if (!v117)
  {
    sub_10000CC80(v117, v118, v119, v120, v121, v122, v123, v124);
  }

  if (v114 >= 1)
  {
    for (ii = 0; ii != v114; ++ii)
    {
      if (sub_10000A118([v112 objectAtIndex:ii], v187))
      {
        AbsoluteTime = 0.0;
        if (ii < v115)
        {
          v127 = [v113 objectAtIndex:ii];
          v128 = CFGetTypeID(v127);
          if (v128 == CFDateGetTypeID())
          {
            AbsoluteTime = CFDateGetAbsoluteTime(v127);
          }
        }

        v129 = v187[0];
        *v187[0] = AbsoluteTime;
        v187[0] = v129 + 8;
      }
    }
  }

  v105 = v187[0] - v104;
  v186[0] = v187[0] - v104;
  v95 = v156;
  v89 = v158;
  v91 = v110;
  v90 = v155;
  v93 = v151;
  if (v187[0] == v104)
  {
    goto LABEL_127;
  }

LABEL_111:
  v106 = [NSData alloc];
  v107 = v105 + 9;
  if (v104 == v192)
  {
    v108 = [v106 initWithBytes:v104 length:v107];
  }

  else
  {
    v108 = [v106 initWithBytesNoCopy:v104 length:v107 freeWhenDone:1];
  }

  v130 = v108;
  v131 = (*(v152 + 16))(v152, v95, v91, v93, v108, 1);

  if (!v131)
  {
LABEL_135:
    v109 = 0;
    goto LABEL_138;
  }

  v132 = [v131 length];
  v133 = v132 + 9;
  v134 = v192;
  if ((v132 + 9) > 0x2000)
  {
    v134 = malloc_type_malloc((v132 + 9), 0xF05C1A0FuLL);
  }

  *v134 = v90;
  *(v134 + 1) = v91;
  *(v134 + 5) = v93;
  memcpy(v134 + 9, [v131 bytes], objc_msgSend(v131, "length"));
  v135 = [NSData alloc];
  if (v134 == v192)
  {
    v136 = [v135 initWithBytes:v134 length:v133];
  }

  else
  {
    v136 = [v135 initWithBytesNoCopy:v134 length:v133 freeWhenDone:1];
  }

  v109 = v136;

  v89 = v158;
LABEL_138:
  if ([v76 count])
  {
    *v153 = v76;
  }

  else
  {
  }

  return v109;
}

id sub_100008D1C(void *a1, void *a2, void *a3, char a4)
{
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [a1 objectForKey:@"keys"];
  v10 = [a1 objectForKey:@"values"];
  v11 = [NSMutableArray arrayWithCapacity:0];
  v12 = [NSMutableArray arrayWithCapacity:0];
  v13 = [a2 mutableCopy];
  v14 = [a3 mutableCopy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100009B8C;
  v17[3] = &unk_100014EB0;
  v17[4] = v13;
  v17[5] = v14;
  v18 = a4;
  v17[6] = v10;
  v17[7] = v11;
  v17[8] = v12;
  [v9 enumerateObjectsUsingBlock:v17];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100009D58;
  v16[3] = &unk_100014ED8;
  v16[4] = v14;
  v16[5] = v11;
  v16[6] = v12;
  [v13 enumerateObjectsUsingBlock:v16];

  [v8 setObject:v11 forKey:@"keys"];
  [v8 setObject:v12 forKey:@"values"];
  [v8 setObject:+[NSDate date](NSDate forKey:{"date"), @"mod_date"}];
  return v8;
}

id sub_1000091A0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7 = 0;
  v8 = 0;
  [a1 digestUUIDBytesWithKey:a2 forUUID:a3 uuidBytes:&v7];
  _MDLabelUUIDEncode(v7, v8, v9);
  return [a4 setObject:a2 forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.metadata.%s", v9)}];
}

uint64_t sub_1000094AC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7 = 0;
  v8 = 0;
  [v3 digestUUIDBytesWithKey:v4 forXPCUUID:a3 uuidBytes:&v7];
  _MDLabelUUIDEncode(v7, v8, v9);
  [v5 setObject:v4 forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"com.apple.metadata.%s", v9)}];
  return 1;
}

void sub_1000096FC(id a1)
{
  v1 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0xFEu, 0x65u, 0x61u, 0x5Bu, 0xFu, 0xF3u, 0x4Eu, 0x3Du, 0xBBu, 0x10u, 0xA7u, 0xACu, 0x81u, 0x62u, 0x22u, 0x6Eu);
  v2 = CFUUIDGetUUIDBytes(v1);
  qword_10001A1D8 = [[NSUUID alloc] initWithUUIDBytes:&v2];
}

void sub_100009784(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  if (!(a3 | a4))
  {
    (*(*(a1 + 48) + 16))(*(a1 + 48), [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:32 userInfo:0]);
    goto LABEL_24;
  }

  if ([a3 length] && objc_msgSend(a2, "length"))
  {
    v8 = *(a1 + 56);
    v9 = [a2 UTF8String];
    if ([a3 length])
    {
      v10 = [a3 bytes];
      v11 = [a3 length];
      if (!strcmp(v9, "com.apple.metadata:kMDItemIsShared"))
      {
        v13 = "com.apple.metadata:kMDItemIsShared#PS";
      }

      else
      {
        if (strcmp(v9, "com.apple.metadata:kMDItemSharedItemCurrentUserRole"))
        {
          v12 = v8;
          v13 = v9;
LABEL_13:
          fsetxattr(v12, v13, v10, v11, 0, 0);
          goto LABEL_14;
        }

        v13 = "com.apple.metadata:kMDItemSharedItemCurrentUserRole#PS";
      }

      v12 = v8;
      goto LABEL_13;
    }

    fremovexattr(v8, v9, 0);
  }

LABEL_14:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = [a4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(a4);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        if (([a2 isEqual:v18] & 1) == 0)
        {
          fremovexattr(*(a1 + 56), [v18 UTF8String], 0);
        }
      }

      v15 = [a4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), 0);
LABEL_24:
  close(*(a1 + 56));
}

void sub_100009A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = copyUpdatedData(*(a1 + 32));
  (*(a6 + 16))(a6, 0, v7);
}

const __CFNull *sub_100009B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) indexOfObject:a2];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = [*(a1 + 48) objectAtIndex:a3];
    if (result != kCFNull)
    {
      v8 = result;
      [*(a1 + 56) addObject:a2];
      v9 = *(a1 + 64);

      return [v9 addObject:v8];
    }
  }

  else
  {
    v10 = v6;
    v11 = [*(a1 + 40) objectAtIndex:v6];
    if (v11 != kCFNull)
    {
      v12 = v11;
      if (*(a1 + 72) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [*(a1 + 48) objectAtIndex:a3];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v15 = v13;
            v14 = [NSArray arrayWithObjects:&v15 count:1];
          }

          v12 = [(NSArray *)v14 arrayByAddingObjectsFromArray:v12];
        }
      }

      [*(a1 + 56) addObject:a2];
      [*(a1 + 64) addObject:v12];
    }

    [*(a1 + 32) removeObjectAtIndex:v10];
    return [*(a1 + 40) removeObjectAtIndex:v10];
  }

  return result;
}

const __CFNull *sub_100009D58(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) objectAtIndex:?];
  if (result != kCFNull)
  {
    v5 = result;
    [*(a1 + 40) addObject:a2];
    v6 = *(a1 + 48);

    return [v6 addObject:v5];
  }

  return result;
}

void sub_100009DD8(id a1)
{
  v1[0] = @"kMDItemUserSharedSentDate";
  v1[1] = @"kMDItemUserSharedReceivedDate";
  v1[2] = @"kMDItemUserPrintedDate";
  v1[3] = @"kMDItemUserDownloadedDate";
  v1[4] = @"kMDItemUserModifiedDate";
  v1[5] = @"kMDItemUserCreatedDate";
  qword_10001A1E8 = [[NSSet alloc] initWithArray:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v1, 6)}];
}

uint64_t sub_100009EB4(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (qword_10001A200 != -1)
  {
    sub_10000CD0C();
  }

  v7 = [a1 objectForKey:@"keys"];
  v8 = [a1 objectForKey:@"values"];
  v19 = [a1 objectForKey:@"mod_date"];
  v9 = [v7 count];
  v10 = [v7 count];
  if (v9 >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v20 = 0;
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = [v7 objectAtIndex:v12];
      v14 = qword_10001A1F8;
      if (v14 == CFGetTypeID(v13))
      {
        v15 = [v8 objectAtIndex:v12];
        if (v15 != kCFNull)
        {
          v16 = v15;
          if (!sub_10000A1A8(a2, &v20, a3, v13) || !sub_10000A414(a2, &v20, a3, v16))
          {
            return 0;
          }
        }
      }
    }

    while (v11 != ++v12);
  }

  if (!sub_10000A1A8(a2, &v20, a3, @"mod_date") || !sub_10000A414(a2, &v20, a3, v19))
  {
    return 0;
  }

  *a4 = v20;
  return a2;
}

void sub_10000A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9[0] = 0;
  v9[1] = &a9;
  vasprintf(v9, "%s:%u: failed assertion '%s' %s ", &a9);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v11 = v9[0];
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  free(v9[0]);
}

uint64_t sub_10000A118(void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFUUIDGetTypeID())
  {
    v6 = CFUUIDGetUUIDBytes(a1);
    v5 = *&v6.byte0;
    *a2 = v6;
LABEL_5:
    *a2 = v5 + 16;
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a1 getUUIDBytes:*a2];
    v5 = *a2;
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_10000A1A8(uint64_t a1, unint64_t *a2, unint64_t a3, const __CFString *key)
{
  v4 = *a2;
  if (*a2 >= a3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(qword_10001A220, key);
  if (!Value)
  {
    *(a1 + v4) = 1;
    Length = CFStringGetLength(key);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v15 = MaximumSizeForEncoding;
    if (MaximumSizeForEncoding < 1024)
    {
      v16 = v25;
    }

    else
    {
      v16 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x8FCC2362uLL);
    }

    v17 = v4 + 1;
    bzero(v25, 0x400uLL);
    if (!CFStringGetCString(key, v16, v15 + 1, 0x8000100u))
    {
      *v16 = 0;
    }

    v18 = strlen(v16) + 1;
    v19 = v18 + v17;
    if (v18 + v17 < a3)
    {
      memcpy((a1 + v17), v16, v18);
      if (v16 != v25)
      {
        free(v16);
      }

      *a2 = v19;
      return 1;
    }

    if (v16 != v25)
    {
      free(v16);
    }

    return 0;
  }

  v10 = *a2;
  if (*a2 >= a3)
  {
    return 0;
  }

  v11 = v10 + 1;
  *(a1 + v10) = 4;
  if (Value >= 0x80)
  {
    if (Value >= 0x4000)
    {
      v21 = 4;
      if (Value >> 28)
      {
        v21 = 5;
      }

      if (Value < 0x200000)
      {
        v21 = 3;
      }

      if (v11 + v21 < a3)
      {
        if (Value >> 21)
        {
          v24 = a1 + v11;
          if (Value >> 28)
          {
            *v24 = -16;
            *(v24 + 1) = Value;
            v12 = v10 + 6;
          }

          else
          {
            *v24 = BYTE3(Value) | 0xE0;
            *(v24 + 1) = BYTE2(Value);
            *(v24 + 2) = BYTE1(Value);
            v12 = v10 + 5;
            *(v24 + 3) = Value;
          }
        }

        else
        {
          v22 = (a1 + v11);
          *v22 = BYTE2(Value) | 0xC0;
          v22[1] = BYTE1(Value);
          v12 = v10 + 4;
          v22[2] = Value;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v12 = v10 + 3;
      if (v12 < a3)
      {
        v20 = (a1 + v11);
        *v20 = BYTE1(Value) | 0x80;
        v20[1] = Value;
        goto LABEL_32;
      }
    }

    return 0;
  }

  v12 = v10 + 2;
  if (v12 >= a3)
  {
    return 0;
  }

  *(a1 + v11) = Value;
LABEL_32:
  *a2 = v12;
  return 1;
}

uint64_t sub_10000A414(uint64_t a1, unint64_t *a2, unint64_t a3, const __CFString *a4)
{
  v8 = CFGetTypeID(a4);
  if (qword_10001A1F8 != v8)
  {
    if (qword_10001A208 == v8)
    {
      v10 = *a2;
      if (*a2 < a3)
      {
        v11 = a1 + v10;
        *v11 = 5;
        AbsoluteTime = CFDateGetAbsoluteTime(a4);
        v13 = v10 + 9;
        if (v10 + 9 < a3)
        {
          *(v11 + 1) = AbsoluteTime;
LABEL_9:
          *a2 = v13;
          return 1;
        }
      }

      return 0;
    }

    if (qword_10001A210 == v8)
    {
      v15 = *a2;
      if (*a2 < a3)
      {
        v16 = v15 + 1;
        *(a1 + v15) = 2;
        *a2 = v15 + 1;
        Count = CFArrayGetCount(a4);
        if (Count >= 0x80)
        {
          if (Count >= 0x4000)
          {
            v32 = 4;
            if (Count >> 28)
            {
              v32 = 5;
            }

            if (Count < 0x200000)
            {
              v32 = 3;
            }

            if (v32 + v16 >= a3)
            {
              return 0;
            }

            if (Count >> 21)
            {
              if (Count >> 28)
              {
                v39 = a1 + v16;
                *v39 = -16;
                *(v39 + 1) = Count;
                v29 = v15 + 6;
              }

              else
              {
                v37 = (a1 + v16);
                *v37 = HIBYTE(Count) | 0xE0;
                v37[1] = BYTE2(Count);
                v37[2] = BYTE1(Count);
                v29 = v15 + 5;
                v37[3] = Count;
              }
            }

            else
            {
              v33 = (a1 + v16);
              *v33 = BYTE2(Count) | 0xC0;
              v33[1] = BYTE1(Count);
              v29 = v15 + 4;
              v33[2] = Count;
            }
          }

          else
          {
            v29 = v15 + 3;
            if (v15 + 3 >= a3)
            {
              return 0;
            }

            v30 = (a1 + v16);
            *v30 = BYTE1(Count) | 0x80;
            v30[1] = Count;
          }

          valuePtr = v29;
        }

        else
        {
          v13 = v15 + 2;
          if (v15 + 2 >= a3)
          {
            return 0;
          }

          *(a1 + v16) = Count;
          valuePtr = v15 + 2;
          if (!Count)
          {
            goto LABEL_9;
          }
        }

        v40 = 0;
        v41 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, v40);
          if ((sub_10000A414(a1, &valuePtr, a3, ValueAtIndex) & 1) == 0)
          {
            break;
          }

          if (v41 == ++v40)
          {
            v13 = valuePtr;
            goto LABEL_9;
          }
        }
      }

      return 0;
    }

    if (qword_10001A230 != v8)
    {
      v23 = *a2;
      if (qword_10001A218 == v8)
      {
        v24 = v23 + 10 >= a3;
        v14 = v23 + 10 < a3;
        if (!v24)
        {
          IsFloatType = CFNumberIsFloatType(a4);
          v26 = IsFloatType;
          if (IsFloatType)
          {
            valuePtr = 0x7FF8000000000000;
            v27 = a4;
            v28 = kCFNumberFloat64Type;
          }

          else
          {
            valuePtr = 0;
            v27 = a4;
            v28 = kCFNumberSInt64Type;
          }

          CFNumberGetValue(v27, v28, &valuePtr);
          v35 = valuePtr;
          v36 = a1 + v23;
          *v36 = 7;
          *(v36 + 1) = v26;
          *(v36 + 2) = v35;
          *a2 = v23 + 10;
        }

        return v14;
      }

      if (v23 < a3)
      {
        v13 = v23 + 1;
        *(a1 + v23) = 3;
        goto LABEL_9;
      }

      return 0;
    }

    v18 = *a2;
    if (*a2 >= a3)
    {
      return 0;
    }

    Length = CFDataGetLength(a4);
    v20 = Length;
    if (Length >= 0x80)
    {
      if (Length >= 0x4000)
      {
        if (Length >= 0x200000)
        {
          if (Length >> 28)
          {
            v43 = Length >> 35;
            v44 = Length >> 42;
            v45 = 7;
            v46 = Length >> 49;
            v47 = 8;
            if (HIBYTE(Length))
            {
              v47 = 9;
            }

            if (v46)
            {
              v45 = v47;
            }

            if (!v44)
            {
              v45 = 6;
            }

            if (!v43)
            {
              v45 = 5;
            }

            v48 = v18 + 1;
            if (Length + v45 + v18 + 1 >= a3)
            {
              return 0;
            }

            *(a1 + v18) = 6;
            if (v43)
            {
              if (v44)
              {
                if (v46)
                {
                  v52 = a1 + v48;
                  if (HIBYTE(Length))
                  {
                    *v52 = -1;
                    *(v52 + 1) = Length;
                    v21 = v18 + 10;
                  }

                  else
                  {
                    *v52 = -2;
                    *(v52 + 1) = BYTE6(Length);
                    *(v52 + 2) = BYTE5(Length);
                    *(v52 + 3) = BYTE4(Length);
                    *(v52 + 4) = BYTE3(Length);
                    *(v52 + 5) = BYTE2(Length);
                    *(v52 + 6) = BYTE1(Length);
                    v21 = v18 + 9;
                    *(v52 + 7) = Length;
                  }
                }

                else
                {
                  v51 = (a1 + v48);
                  *v51 = BYTE6(Length) | 0xFC;
                  v51[1] = BYTE5(Length);
                  v51[2] = BYTE4(Length);
                  v51[3] = BYTE3(Length);
                  v51[4] = BYTE2(Length);
                  v51[5] = BYTE1(Length);
                  v21 = v18 + 8;
                  v51[6] = Length;
                }
              }

              else
              {
                v50 = (a1 + v48);
                *v50 = BYTE5(Length) | 0xF8;
                v50[1] = BYTE4(Length);
                v50[2] = BYTE3(Length);
                v50[3] = BYTE2(Length);
                v50[4] = BYTE1(Length);
                v21 = v18 + 7;
                v50[5] = Length;
              }
            }

            else
            {
              v49 = (a1 + v48);
              *v49 = BYTE4(Length) | 0xF0;
              v49[1] = BYTE3(Length);
              v49[2] = BYTE2(Length);
              v49[3] = BYTE1(Length);
              v21 = v18 + 6;
              v49[4] = Length;
            }

            goto LABEL_51;
          }

          if (Length + v18 + 1 + 4 >= a3)
          {
            return 0;
          }

          *(a1 + v18) = 6;
          v34 = (a1 + v18 + 1);
          *v34 = BYTE3(Length) | 0xE0;
          v34[1] = BYTE2(Length);
          v34[2] = BYTE1(Length);
          v21 = v18 + 5;
        }

        else
        {
          v21 = v18 + 4;
          if (v18 + 4 + Length >= a3)
          {
            return 0;
          }

          v34 = (a1 + v18);
          *v34 = 6;
          v34[1] = BYTE2(Length) | 0xC0;
          v34[2] = BYTE1(Length);
        }

        v34[3] = Length;
        goto LABEL_51;
      }

      v21 = v18 + 3;
      if (v18 + 3 + Length >= a3)
      {
        return 0;
      }

      v31 = (a1 + v18);
      *v31 = 6;
      v31[1] = BYTE1(Length) | 0x80;
      v31[2] = Length;
    }

    else
    {
      v21 = v18 + 2;
      if (Length + v18 + 2 >= a3)
      {
        return 0;
      }

      v22 = (a1 + v18);
      *v22 = 6;
      v22[1] = Length;
    }

LABEL_51:
    BytePtr = CFDataGetBytePtr(a4);
    memcpy((a1 + v21), BytePtr, v20);
    v13 = v21 + v20;
    goto LABEL_9;
  }

  return sub_10000A1A8(a1, a2, a3, a4);
}

void sub_10000A9AC(id a1)
{
  qword_10001A1F8 = CFStringGetTypeID();
  qword_10001A208 = CFDateGetTypeID();
  qword_10001A210 = CFArrayGetTypeID();
  CFNullGetTypeID();
  qword_10001A218 = CFNumberGetTypeID();
  qword_10001A220 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
  qword_10001A228 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(qword_10001A220, @"kMDItemOriginApplicationIdentifier", 1);
  CFDictionaryAddValue(qword_10001A228, 1, @"kMDItemOriginApplicationIdentifier");
  CFDictionaryAddValue(qword_10001A220, @"kMDItemOriginSenderHandle", 2);
  CFDictionaryAddValue(qword_10001A228, 2, @"kMDItemOriginSenderHandle");
  CFDictionaryAddValue(qword_10001A220, @"kMDItemOriginSenderDisplayName", 3);
  CFDictionaryAddValue(qword_10001A228, 3, @"kMDItemOriginSenderDisplayName");
  CFDictionaryAddValue(qword_10001A220, @"kMDItemOriginSubject", 4);
  CFDictionaryAddValue(qword_10001A228, 4, @"kMDItemOriginSubject");
  CFDictionaryAddValue(qword_10001A220, @"kMDItemDestinationRecipients", 5);
  CFDictionaryAddValue(qword_10001A228, 5, @"kMDItemDestinationRecipients");
  CFDictionaryAddValue(qword_10001A220, @"kMDItemOriginMessageID", 6);
  CFDictionaryAddValue(qword_10001A228, 6, @"kMDItemOriginMessageID");
  qword_10001A230 = CFDataGetTypeID();
}

uint64_t sub_10000AB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [[NSData alloc] initWithBytesNoCopy:a4 + 9 length:a5 - 9 freeWhenDone:0];
  v9 = (*(a1 + 16))(a1, a3, *(a2 + 1), *(a2 + 5), v8, 0);

  return v9;
}

__CFArray *sub_10000ABF4(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v4 = *a2;
  v34 = v4;
  if (v4 >= a3)
  {
    goto LABEL_74;
  }

  Mutable = 0;
  v8 = v4 + 1;
  v34 = v4 + 1;
  v9 = *(a1 + v4);
  if (v9 <= 3)
  {
    if (v9 == 1)
    {
      v13 = v4 + 1;
      while (a3 != v13)
      {
        v14 = v13 + 1;
        if (!*(a1 + v13++))
        {
          v34 = v14;
          v16 = CFStringCreateWithCString(kCFAllocatorDefault, (a1 + v8), 0x8000100u);
          goto LABEL_51;
        }
      }

      Mutable = 0;
      v34 = a3;
      goto LABEL_75;
    }

    if (v9 != 2)
    {
      if (v9 != 3)
      {
        goto LABEL_75;
      }

LABEL_50:
      v16 = CFRetain(kCFNull);
LABEL_51:
      Mutable = v16;
      goto LABEL_75;
    }

    if (v8 < a3)
    {
      if (*(a1 + v8) < 0)
      {
        v25 = *(a1 + v8);
        if (v25 >= 0xC0)
        {
          if (v25 >= 0xE0)
          {
            v26 = v25 >= 0xF0;
            v23 = 4;
            if (v26)
            {
              v23 = 5;
            }
          }

          else
          {
            v23 = 3;
          }
        }

        else
        {
          v23 = 2;
        }
      }

      else
      {
        v23 = 1;
      }

      if (v23 + v8 < a3)
      {
        Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v27 = sub_10000AFB4(a1, &v34);
        if (v27)
        {
          v28 = v27;
          do
          {
            v29 = sub_10000ABF4(a1, &v34, a3);
            if (v29)
            {
              v30 = v29;
              CFArrayAppendValue(Mutable, v29);
              CFRelease(v30);
            }

            --v28;
          }

          while (v28);
        }

        goto LABEL_75;
      }
    }

LABEL_74:
    Mutable = 0;
    goto LABEL_75;
  }

  if (*(a1 + v4) > 5u)
  {
    if (v9 == 6)
    {
      if (v8 < a3)
      {
        if (*(a1 + v8) < 0)
        {
          v24 = *(a1 + v8);
          if (v24 >= 0xC0)
          {
            if (v24 >= 0xE0)
            {
              if (v24 >= 0xF0)
              {
                if (v24 >= 0xF8)
                {
                  if (v24 >= 0xFC)
                  {
                    if (v24 >= 0xFE)
                    {
                      v31 = v24 == 255;
                      v22 = 8;
                      if (v31)
                      {
                        v22 = 9;
                      }
                    }

                    else
                    {
                      v22 = 7;
                    }
                  }

                  else
                  {
                    v22 = 6;
                  }
                }

                else
                {
                  v22 = 5;
                }
              }

              else
              {
                v22 = 4;
              }
            }

            else
            {
              v22 = 3;
            }
          }

          else
          {
            v22 = 2;
          }
        }

        else
        {
          v22 = 1;
        }

        if (v22 + v8 < a3)
        {
          v32 = sub_10000B04C(a1, &v34);
          v10 = v34 + v32;
          if (v34 + v32 < a3)
          {
            v12 = CFDataCreate(kCFAllocatorDefault, (a1 + v34), v32);
            goto LABEL_34;
          }
        }
      }
    }

    else
    {
      if (v9 != 7)
      {
        goto LABEL_75;
      }

      v10 = v4 + 10;
      if (v4 + 10 < a3)
      {
        if (*(a1 + v8))
        {
          v11 = kCFNumberFloat64Type;
        }

        else
        {
          v11 = kCFNumberSInt64Type;
        }

        v12 = CFNumberCreate(kCFAllocatorDefault, v11, (a1 + v4 + 2));
        goto LABEL_34;
      }
    }

    goto LABEL_74;
  }

  if (v9 == 4)
  {
    v17 = v4 + 2;
    v18 = a1 + v8;
    v19 = *(a1 + v8);
    v20 = *(a1 + v8);
    if (v19 < 0)
    {
      if (v20 > 0xBF)
      {
        if (v20 > 0xDF)
        {
          if (v20 > 0xEF)
          {
            v20 = *(a1 + v17);
            v17 = v4 + 6;
          }

          else
          {
            v20 = ((v20 & 0xF) << 24) | (*(a1 + v17) << 16) | (*(v18 + 2) << 8) | *(v18 + 3);
            v17 = v4 + 5;
          }
        }

        else
        {
          v20 = ((v20 & 0x1F) << 16) | (*(a1 + v17) << 8) | *(v18 + 2);
          v17 = v4 + 4;
        }
      }

      else
      {
        v21 = *(a1 + v17) | ((v20 & 0x3F) << 8);
        v17 = v4 + 3;
        v20 = v21;
      }
    }

    v34 = v17;
    Mutable = CFDictionaryGetValue(qword_10001A228, v20);
    if (Mutable)
    {
      goto LABEL_75;
    }

    goto LABEL_50;
  }

  if (v9 == 5)
  {
    v10 = v4 + 9;
    if (v4 + 9 > a3)
    {
      Mutable = 0;
LABEL_35:
      v34 = v10;
      goto LABEL_75;
    }

    v12 = CFDateCreate(kCFAllocatorDefault, *(a1 + v8));
LABEL_34:
    Mutable = v12;
    goto LABEL_35;
  }

LABEL_75:
  *a2 = v34;
  return Mutable;
}

uint64_t sub_10000AFB4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 + 1;
  v5 = (a1 + *a2);
  result = *v5;
  if (*v5 < 0)
  {
    if (result > 0xBF)
    {
      if (result > 0xDF)
      {
        if (result > 0xEF)
        {
          result = *(a1 + v4);
          v4 = v3 + 5;
        }

        else
        {
          result = ((result & 0xF) << 24) | (*(a1 + v4) << 16) | (v5[2] << 8) | v5[3];
          v4 = v3 + 4;
        }
      }

      else
      {
        result = ((result & 0x1F) << 16) | (*(a1 + v4) << 8) | v5[2];
        v4 = v3 + 3;
      }
    }

    else
    {
      v7 = *(a1 + v4) | ((result & 0x3F) << 8);
      v4 = v3 + 2;
      result = v7;
    }
  }

  *a2 = v4;
  return result;
}

unint64_t sub_10000B04C(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  if (*a2 != -1)
  {
    v4 = v2 + 1;
    v5 = (a1 + v2);
    v6 = *(a1 + v2);
    result = *(a1 + v2);
    if ((v6 & 0x80000000) == 0)
    {
LABEL_3:
      *a2 = v4;
      return result;
    }

    if (v6 > 0xBFu)
    {
      if (v6 > 0xDFu)
      {
        if (v6 > 0xEFu)
        {
          if (v6 > 0xF7u)
          {
            if (v6 > 0xFBu)
            {
              if (v6 > 0xFDu)
              {
                if (v6 == 255)
                {
                  if (v2 <= 0xFFFFFFFFFFFFFFF6)
                  {
                    result = *(a1 + v4);
                    v4 = v2 + 9;
                    goto LABEL_3;
                  }
                }

                else if (v2 <= 0xFFFFFFFFFFFFFFF7)
                {
                  result = (*(a1 + v4) << 48) | (v5[2] << 40) | (v5[3] << 32) | (v5[4] << 24) | (v5[5] << 16) | (v5[6] << 8) | v5[7];
                  v4 = v2 + 8;
                  goto LABEL_3;
                }
              }

              else if (v2 <= 0xFFFFFFFFFFFFFFF8)
              {
                result = ((result & 1) << 48) | (*(a1 + v4) << 40) | (v5[2] << 32) | (v5[3] << 24) | (v5[4] << 16) | (v5[5] << 8) | v5[6];
                v4 = v2 + 7;
                goto LABEL_3;
              }
            }

            else if (v2 <= 0xFFFFFFFFFFFFFFF9)
            {
              result = ((result & 3) << 40) | (*(a1 + v4) << 32) | (v5[2] << 24) | (v5[3] << 16) | (v5[4] << 8) | v5[5];
              v4 = v2 + 6;
              goto LABEL_3;
            }
          }

          else if (v2 <= 0xFFFFFFFFFFFFFFFALL)
          {
            result = ((result & 7) << 32) | (*(a1 + v4) << 24) | (v5[2] << 16) | (v5[3] << 8) | v5[4];
            v4 = v2 + 5;
            goto LABEL_3;
          }
        }

        else if (v2 <= 0xFFFFFFFFFFFFFFFBLL)
        {
          result = ((result & 0xF) << 24) | (*(a1 + v4) << 16) | (v5[2] << 8) | v5[3];
          v4 = v2 + 4;
          goto LABEL_3;
        }
      }

      else if (v2 <= 0xFFFFFFFFFFFFFFFCLL)
      {
        result = ((result & 0x1F) << 16) | (*(a1 + v4) << 8) | v5[2];
        v4 = v2 + 3;
        goto LABEL_3;
      }
    }

    else if (v2 != -2)
    {
      v8 = *(a1 + v4) | ((result & 0x3F) << 8);
      v4 = v2 + 2;
      result = v8;
      goto LABEL_3;
    }
  }

  return 0;
}

void sub_10000B238()
{
  MEMORY[0xBAD] = -559038737;

  abort();
}

const __CFNumber *MDFSOnlyMDNumberGetInt64(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

const __CFNumber *MDFSOnlyMDNumberGetInt32(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

const __CFNumber *MDFSOnlyMDNumberGetBool(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return (valuePtr != 0);
  }

  return result;
}

CFNullRef MDCopyDecodedXattrFromData(void *a1, CFNullRef cf)
{
  v4 = kCFNull;
  result = kCFNull;
  if (kCFNull == cf)
  {
LABEL_4:
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFDataGetTypeID())
  {
    result = MDPropertyCopyDecodedValue();
    goto LABEL_4;
  }

LABEL_5:
  if (![a1 isEqualToString:@"com.apple.metadata:_kMDItemUserTags"])
  {
    return 0;
  }

  if (qword_10001A238 != -1)
  {
    sub_10000CD20();
  }

  v26 = 0;
  v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:qword_10001A240 fromData:cf error:&v26];
  v8 = v26;
  if (v26)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = a1;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Decoding error: %@ for %@", buf, 0x16u);
    }

    return v4;
  }

  v9 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (![objc_msgSend(v9 objectForKeyedSubscript:{@"v", "isEqual:", &off_1000159D0}])
  {
    return 0;
  }

  v10 = [v9 objectForKeyedSubscript:@"t"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v11 = [v10 count];
  v12 = v11;
  if (v11 > 99)
  {
    return 0;
  }

  v13 = 8 * v11;
  (__chkstk_darwin)();
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v14, 8 * v12);
  __chkstk_darwin([v10 getObjects:v14 range:{0, v12}]);
  v15 = v14;
  bzero(v14, 8 * v12);
  if (v12 < 1)
  {
    return 0;
  }

  v16 = 0;
  do
  {
    v17 = *v14;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = *v14;
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_32;
      }

      v22 = *v14;
      goto LABEL_31;
    }

    v20 = [*v14 count];
    if (v20 == 2)
    {
      [v19 objectAtIndexedSubscript:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_32;
      }

      v22 = [v19 objectAtIndexedSubscript:0];
      v23 = [v19 objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v23 intValue];
        if ((v24 - 1) <= 6)
        {
          v21 = [v22 stringByAppendingFormat:@"\n%d", v24];
LABEL_23:
          v22 = v21;
        }
      }

      if (!v22)
      {
        goto LABEL_32;
      }

LABEL_31:
      v15[v16++] = v22;
      goto LABEL_32;
    }

    if (v20 == 1)
    {
      [v19 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [v19 objectAtIndexedSubscript:0];
        goto LABEL_23;
      }
    }

LABEL_32:
    ++v14;
    --v12;
  }

  while (v12);
  if (v16 > 0)
  {
    return [[NSArray alloc] initWithObjects:v15 count:v16];
  }

  return 0;
}

void sub_10000B7D0(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    if (a2 == 2)
    {
      objc_end_catch();
      JUMPOUT(0x10000B770);
    }

    objc_exception_rethrow();
  }

  JUMPOUT(0x10000B7C8);
}

void sub_10000B834(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  sub_10000B7C4(a1);
}

void sub_10000B83C(id a1)
{
  v1 = [NSSet alloc];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  qword_10001A240 = [v1 initWithObjects:{v2, v3, v4, objc_opt_class(), 0}];
}

CFNullRef MDFSOnlyCopyExtendedAttributesFromFd(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v7 = value;
  bzero(value, 0x1000uLL);
  v8 = fgetxattr(v6, v5, value, 0x1000uLL, 0, 0);
  if (v8 == -1)
  {
    if (*__error() != 34)
    {
      return 0;
    }

    v9 = fgetxattr(v6, v5, 0, 0, 0, 0);
    v7 = malloc_type_malloc(v9, 0x6EEED0F6uLL);
    v8 = fgetxattr(v6, v5, v7, v9, 0, 0);
  }

  else
  {
    v9 = v8;
  }

  v10 = 0;
  if (v9 >= 1 && v8 == v9)
  {
    if ((*v7 & 0x80000000) == 0)
    {
LABEL_8:
      v11 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v7, v9, kCFAllocatorNull);
      v12 = CFStringCreateWithCString(kCFAllocatorDefault, v5, 0x8000100u);
      v10 = MDCopyDecodedXattrFromData(v12, v11);
      CFRelease(v11);
      CFRelease(v12);
      goto LABEL_9;
    }

    v14 = *v7;
    if ((v14 - 241) >= 2)
    {
      if (v14 != 129)
      {
        goto LABEL_8;
      }

      if (v9 != 9)
      {
        goto LABEL_8;
      }

      v10 = CFDateCreate(kCFAllocatorDefault, *(v7 + 1));
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else if (v3)
    {
      *v3 = 1;
      v10 = CFDataCreate(kCFAllocatorDefault, v7, v9);
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_9:
  if (v7 != value)
  {
    free(v7);
  }

  return v10;
}

CFMutableDictionaryRef MDFSOnlyMDCopyXattrsDictionaryForFD(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v7 = namebuff;
  bzero(namebuff, 0x1000uLL);
  v8 = flistxattr(v6, namebuff, 0x1000uLL, 0);
  if (v8 < 0)
  {
    if (*__error() != 34)
    {
      return CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    v9 = flistxattr(v6, 0, 0, 0);
    v37 = malloc_type_malloc(v9, 0x7C8DE1E7uLL);
    if (!v37)
    {
      return 0;
    }

    v7 = v37;
    if (flistxattr(v6, v37, v9, 0) < 0)
    {
      return 0;
    }
  }

  else
  {
    v9 = v8;
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v9 >= 1)
  {
    v39 = v3;
    __s1 = v7;
    v11 = [[NSUUID alloc] initWithUUIDBytes:&unk_10000F070];
    v12 = [[NSMutableArray alloc] initWithObjects:{v11, 0}];

    v41 = objc_alloc_init(NSMutableArray);
    v40 = objc_alloc_init(NSMutableArray);
    if (v9 >= 3)
    {
      v13 = __s1;
      do
      {
        if (!*v13)
        {
          break;
        }

        if (!strncmp(v13, "com.apple.metadata", 0x12uLL))
        {
          v20 = v13[18];
          LOBYTE(valuePtr) = 0;
          if (v20 != 58)
          {
            if (v20 != 46)
            {
              goto LABEL_46;
            }

            LOBYTE(valuePtr) = 1;
          }

          v17 = MDFSOnlyCopyExtendedAttributesFromFd(v6);
          if (v17)
          {
            if (valuePtr)
            {
LABEL_32:
              if (!strncmp(v13, "com.apple.metadata:kMDLabel_", 0x1CuLL))
              {
                bzero(&value, 0x400uLL);
                snprintf(&value, 0x400uLL, "%s.%s", "com.apple.metadata", v13 + 28);
                [v40 addObject:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", &value)}];
                [v41 addObject:v17];
              }

              if (!v17)
              {
                goto LABEL_46;
              }
            }

            else if ((v5 & 1) == 0)
            {
              v21 = CFStringCreateWithCString(kCFAllocatorDefault, v13 + 19, 0x8000100u);
              if (v21)
              {
                v22 = v21;
                CFDictionaryAddValue(Mutable, v21, v17);
                CFRelease(v22);
              }
            }

            goto LABEL_35;
          }

          if (valuePtr)
          {
            goto LABEL_32;
          }
        }

        else if ((v5 & 1) == 0)
        {
          if (!strcmp(v13, "com.apple.lastuseddate#PS"))
          {
            value = 0;
            v53 = 0;
            v54 = 0;
            if (v6 == -1)
            {
              goto LABEL_45;
            }

            v23 = fgetxattr(v6, "com.apple.lastuseddate#PS", &value, 0x18uLL, 0, 0);
            if ((v23 & 0x8000000000000000) == 0)
            {
              if (v23 != 16)
              {
LABEL_45:
                *__error() = 22;
                goto LABEL_46;
              }

              if (value)
              {
                v17 = CFDateCreate(kCFAllocatorDefault, v53 / 1000000000.0 + value - kCFAbsoluteTimeIntervalSince1970);
                v18 = Mutable;
                v19 = @"kMDItemLastUsedDate";
LABEL_30:
                CFDictionarySetValue(v18, v19, v17);
LABEL_35:
                CFRelease(v17);
              }
            }
          }

          else if (!strcmp(v13, "com.apple.TextEncoding"))
          {
            p_value = &value;
            bzero(&value, 0x400uLL);
            if (fgetxattr(v6, v13, &value, 0x400uLL, 0, 0) > 0)
            {
              goto LABEL_39;
            }

            if (*__error() == 34)
            {
              v25 = fgetxattr(v6, v13, 0, 0, 0, 0);
              p_value = malloc_type_calloc(1uLL, v25 + 1, 0x100004077774924uLL);
              fgetxattr(v6, v13, p_value, v25, 0, 0);
LABEL_39:
              v26 = strchr(p_value, 59);
              if (v26)
              {
                encoding = 0;
                if (sscanf(v26 + 1, "%u", &encoding) == 1)
                {
                  if (CFStringIsEncodingAvailable(encoding))
                  {
                    valuePtr = encoding;
                    v27 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
                    CFDictionarySetValue(Mutable, @"--_kMDItemTextEncodingHint", v27);
                    CFRelease(v27);
                  }
                }
              }

              if (p_value != &value)
              {
                free(p_value);
              }
            }
          }

          else if (!strncmp(v13, "com.apple.SharedWithYou", 0x17uLL))
          {
            v14 = &value;
            bzero(&value, 0x400uLL);
            if (fgetxattr(v6, v13, &value, 0x400uLL, 0, 0) <= 0)
            {
              if (*__error() != 34)
              {
                goto LABEL_46;
              }

              v15 = fgetxattr(v6, v13, 0, 0, 0, 0);
              v14 = malloc_type_calloc(1uLL, v15 + 1, 0x100004077774924uLL);
              fgetxattr(v6, v13, v14, v15, 0, 0);
            }

            v16 = CFStringCreateWithCString(kCFAllocatorDefault, v14, 0x8000100u);
            if (v16)
            {
              v17 = v16;
              v18 = Mutable;
              v19 = @"com.apple.SharedWithYou";
              goto LABEL_30;
            }
          }
        }

LABEL_46:
        v28 = strlen(v13) + 1;
        v13 += v28;
        v9 -= v28;
      }

      while (v9 > 2);
    }

    if ([v40 count])
    {
      if (v39)
      {
        v29 = _MDPlistContainerCreateMutable();
        _MDPlistContainerBeginContainer();
        _MDPlistContainerBeginDictionary();
        _MDPlistContainerAddCString();
        _MDPlistContainerAddObject();
        _MDPlistContainerAddCString();
        _MDPlistContainerBeginArray();
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v30 = [v12 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v44;
          do
          {
            for (i = 0; i != v31; i = i + 1)
            {
              if (*v44 != v32)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v43 + 1) + 8 * i) UUIDString];
              _MDPlistContainerAddObject();
            }

            v31 = [v12 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v31);
        }

        _MDPlistContainerEndArray();
        _MDPlistContainerAddCString();
        _MDPlistContainerAddObject();
        _MDPlistContainerEndDictionary();
        _MDPlistContainerEndContainer();
        v34 = [NSData alloc];
        Bytes = _MDPlistContainerGetBytes();
        v36 = [v34 initWithBytes:Bytes length:_MDPlistContainerGetLength()];
        CFDictionarySetValue(Mutable, @"_kMDItemEncryptedData", v36);

        CFRelease(v29);
      }

      else
      {
        v49[0] = @"xids";
        v49[1] = @"uuids";
        v50[0] = v40;
        v50[1] = v12;
        v49[2] = @"datas";
        v50[2] = v41;
        CFDictionarySetValue(Mutable, @"_kMDItemEncryptedDataDictionary", [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3]);
      }
    }

    if (__s1 != namebuff)
    {
      free(__s1);
    }
  }

  return Mutable;
}

CFMutableDictionaryRef MDFSOnlyMDCopyXattrsDictionary(const char *a1)
{
  v1 = open(a1, 33024);
  if (v1 == -1)
  {
    return 0;
  }

  v2 = v1;
  v3 = MDFSOnlyMDCopyXattrsDictionaryForFD(v1);
  close(v2);
  return v3;
}

void sub_10000CA20(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "_copyCryptedDataWithKey() failed. CCCrypt() returned %d.", v1, 8u);
}

void sub_10000CB88(uint64_t a1)
{
  v1 = 136315394;
  v2 = "[_MDLabel initWithUUID:attributes:forUserUUID:]";
  v3 = 2112;
  v4 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%s: can't extract attributeBits from label attributes %@", &v1, 0x16u);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}