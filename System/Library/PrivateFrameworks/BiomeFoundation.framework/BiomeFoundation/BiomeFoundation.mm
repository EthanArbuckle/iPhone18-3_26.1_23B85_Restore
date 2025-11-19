uint64_t BMIdentifierIsPathSafe(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v3 = __biome_log_for_category(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      BMIdentifierIsPathSafe_cold_3();
    }

    goto LABEL_10;
  }

  if (![v1 length])
  {
    v3 = __biome_log_for_category(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      BMIdentifierIsPathSafe_cold_2();
    }

    goto LABEL_10;
  }

  if ([v2 length] != 1)
  {
    if ([v2 length] > 0xFF)
    {
      v4 = 0;
      goto LABEL_12;
    }

    v3 = v2;
    v6 = objc_opt_self();

    if (!v6)
    {
      goto LABEL_52;
    }

    memset(v25, 0, sizeof(v25));
    Length = CFStringGetLength(v3);
    theString = v3;
    v29 = 0;
    v30 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v3);
    CStringPtr = 0;
    v27 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    }

    v31 = 0;
    v32 = 0;
    v28 = CStringPtr;
    if (Length < 1)
    {
LABEL_52:
      v4 = 1;
      goto LABEL_11;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 64;
    while (1)
    {
      if (v12 >= 4)
      {
        v14 = 4;
      }

      else
      {
        v14 = v12;
      }

      v15 = v30;
      if (v30 <= v12)
      {
        v17 = 0;
      }

      else
      {
        if (v27)
        {
          v16 = &v27[v29];
LABEL_26:
          v17 = v16[v12];
          goto LABEL_28;
        }

        if (!v28)
        {
          if (v32 <= v12 || v11 > v12)
          {
            v21 = v14 + v10;
            v22 = v13 - v14;
            v23 = v12 - v14;
            v24 = v23 + 64;
            if (v23 + 64 >= v30)
            {
              v24 = v30;
            }

            v31 = v23;
            v32 = v24;
            if (v30 >= v22)
            {
              v15 = v22;
            }

            v33.location = v23 + v29;
            v33.length = v15 + v21;
            CFStringGetCharacters(theString, v33, v25);
            v11 = v31;
          }

          v16 = v25 - v11;
          goto LABEL_26;
        }

        v17 = v28[v29 + v12];
      }

LABEL_28:
      v18 = (v17 - 48);
      if (v12)
      {
        if (v18 >= 0xA && ((v17 & 0xFFDF) - 65) >= 0x1Au)
        {
          v19 = v17 - 45;
          if (v19 > 0x32 || ((1 << v19) & 0x4000000002003) == 0)
          {
            goto LABEL_10;
          }
        }
      }

      else if (v18 >= 0xA && (v17 - 65) >= 0x1Au && v17 != 95 && (v17 - 97) >= 0x1Au)
      {
        goto LABEL_10;
      }

      ++v12;
      --v10;
      ++v13;
      if (Length == v12)
      {
        goto LABEL_52;
      }
    }
  }

  v3 = __biome_log_for_category(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    BMIdentifierIsPathSafe_cold_1();
  }

LABEL_10:
  v4 = 0;
LABEL_11:

LABEL_12:
  return v4;
}

id bm_fd_get_path(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (fcntl(a1, 50, v4) < 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t _bm_openat_dprotected(int a1, char *a2, int a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = a4 != -1 && a4 != 6;
  v10 = (a3 & 3) == 2 && v9;
  if ((a3 & 0x200) != 0 && a4 != -1)
  {
    if (_bm_supports_openat_dprotected_syscall_onceToken != -1)
    {
      _bm_openat_dprotected_cold_1();
    }

    if (_bm_supports_openat_dprotected_syscall_supported == 1)
    {
      v11 = openat_dprotected_np(a1, a2, a3 | 0x1000000, a4, 0, 384);
      v12 = __error();
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v13 = *v12;
      if (*v12 != 45)
      {
        if (v13 != 1 || (memset(&v20, 0, 512), v14 = fstatfs(a1, &v20), v14 | v20.f_flags & 0x80))
        {
LABEL_29:
          *__error() = v13;
          v11 = 0xFFFFFFFFLL;
          goto LABEL_30;
        }
      }

      v10 = 0;
    }

    goto LABEL_21;
  }

  if ((a3 & 0x200) != 0)
  {
LABEL_21:
    v19 = 384;
  }

  v15 = openat(a1, a2, a3 | 0x1000000, v19);
  v11 = v15;
  if (v10 && (v15 & 0x80000000) == 0 && _bm_set_protection_class(v15, a4))
  {
    v13 = *__error();
    if (close(v11))
    {
      v16 = __biome_log_for_category(2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        bm_openat_dprotected_cold_2();
      }
    }

    goto LABEL_29;
  }

LABEL_30:
  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t BMDataProtectionClassFromOSProtectionClass(int a1)
{
  if ((a1 - 1) > 6)
  {
    return 3;
  }

  else
  {
    return qword_1AC197580[a1 - 1];
  }
}

uint64_t bm_openat_dprotected(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  v9 = a3 | 0x1000000;
  v41 = a3 | 0x1000000;
  if ((a3 & 0x100000) != 0 && [v7 hasSuffix:@"/"])
  {
    v10 = [v8 substringToIndex:{objc_msgSend(v8, "length") - 1}];

    v8 = v10;
  }

  if ((bm_validate_pathat(a1, v8) & 1) == 0)
  {
    v18 = __biome_log_for_category(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      bm_openat_dprotected_cold_1();
    }

    *__error() = 22;
    goto LABEL_50;
  }

  if (a1 == -3)
  {
    v11 = -2;
  }

  else
  {
    v11 = a1;
  }

  v12 = [v8 fileSystemRepresentation];
  if ((a3 & 0x100000) != 0)
  {
    v19 = bm_opendirat(a1, v8, a3 | 0x1000000u, 0x1C0u);
    if ((v19 & 0x80000000) != 0)
    {
      v22 = *__error();
      v40 = 0;
      v23 = _bm_log_config_for_errno(v22, &v41, &v40, v8);
      v24 = __biome_log_for_category(2);
      if (os_log_type_enabled(v24, v23))
      {
        *buf = 67109378;
        v43 = v22;
        v44 = 2112;
        v45 = v40;
        _os_log_impl(&dword_1AC15D000, v24, v23, "bm_opendirat() failed: %{darwin.errno}d%@", buf, 0x12u);
      }

      *__error() = v22;
      goto LABEL_49;
    }

    v13 = v19;
    if (_bm_set_protection_class(v19, a4))
    {
      v20 = *__error();
      if (close(v13))
      {
        v21 = __biome_log_for_category(2);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          bm_openat_dprotected_cold_2();
        }
      }

      *__error() = v20;
      goto LABEL_50;
    }
  }

  else
  {
    v13 = _bm_openat_dprotected(v11, v12, a3 | 0x1000000u, a4);
    if ((v13 & 0x80000000) != 0)
    {
      if (*__error() != 2 || (a3 & 0x200) == 0)
      {
        goto LABEL_39;
      }

      v14 = [v8 stringByDeletingLastPathComponent];
      v15 = bm_opendirat(a1, v14, a3 & 0x20000300, 0x1C0u);
      if (v15 < 0)
      {
        v25 = *__error();
        v40 = 0;
        v26 = _bm_log_config_for_errno(v25, &v41, &v40, v8);
        v27 = __biome_log_for_category(2);
        if (os_log_type_enabled(v27, v26))
        {
          *buf = 67109378;
          v43 = v25;
          v44 = 2112;
          v45 = v40;
          _os_log_impl(&dword_1AC15D000, v27, v26, "bm_opendirat() failed: %{darwin.errno}d%@", buf, 0x12u);
        }

        *__error() = v25;
        goto LABEL_33;
      }

      v16 = v15;
      if (v15 == a1)
      {
        v17 = __biome_log_for_category(2);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          bm_openat_dprotected_cold_4();
        }

LABEL_33:
LABEL_50:
        v13 = 0xFFFFFFFFLL;
        goto LABEL_51;
      }

      v28 = [v8 lastPathComponent];
      v13 = _bm_openat_dprotected(v16, [v28 fileSystemRepresentation], v9, a4);
      v29 = *__error();
      if (close(v16))
      {
        v30 = __biome_log_for_category(2);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          bm_openat_dprotected_cold_2();
        }
      }

      *__error() = v29;

      if ((v13 & 0x80000000) != 0)
      {
LABEL_39:
        v31 = *__error();
        v40 = 0;
        v32 = _bm_log_config_for_errno(v31, &v41, &v40, v8);
        v33 = __biome_log_for_category(2);
        if (os_log_type_enabled(v33, v32))
        {
          *buf = 67109378;
          v43 = v31;
          v44 = 2112;
          v45 = v40;
          _os_log_impl(&dword_1AC15D000, v33, v32, "_bm_openat_dprotected() failed: %{darwin.errno}d%@", buf, 0x12u);
        }

        if (v31 == 92)
        {
          v34 = __biome_log_for_category(2);
          if (os_log_type_enabled(v34, v32))
          {
            *buf = 0;
            _os_log_impl(&dword_1AC15D000, v34, v32, "_bm_openat_dprotected() unlinking permanently lost file", buf, 2u);
          }

          v35 = unlinkat(v11, [v8 fileSystemRepresentation], 0);
          if (v35)
          {
            v36 = v35;
            v37 = __biome_log_for_category(2);
            if (os_log_type_enabled(v37, v32))
            {
              *buf = 67109120;
              v43 = v36;
              _os_log_impl(&dword_1AC15D000, v37, v32, "_bm_openat_dprotected() unlinkat: %{darwin.errno}d", buf, 8u);
            }
          }
        }

        *__error() = v31;
LABEL_49:

        goto LABEL_50;
      }
    }
  }

LABEL_51:

  v38 = *MEMORY[0x1E69E9840];
  return v13;
}

id __biome_log_for_category(uint64_t a1)
{
  v1 = &categories[3 * a1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____biome_log_for_category_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (*v1 != -1)
  {
    dispatch_once(&categories[3 * a1], block);
  }

  v2 = v1[1];

  return v2;
}

uint64_t bm_validate_pathat(int a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || ![v3 length] || a1 < 0 && a1 != -3)
  {
    goto LABEL_9;
  }

  if (a1 == -3)
  {
    if (![v4 hasPrefix:@"/"])
    {
LABEL_9:
      v6 = 0;
      goto LABEL_10;
    }

    v5 = [v4 substringFromIndex:1];

    v4 = v5;
  }

  if ([v4 hasPrefix:@"/"])
  {
    goto LABEL_9;
  }

  if ([v4 isEqual:@"."])
  {
    v6 = 1;
  }

  else
  {
    v8 = [v4 componentsSeparatedByString:@"/"];
    v9 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    if ([v9 containsObject:&stru_1F20E2850] & 1) != 0 || (objc_msgSend(v9, "containsObject:", @"."))
    {
      v6 = 0;
    }

    else
    {
      v6 = [v9 containsObject:@".."] ^ 1;
    }
  }

LABEL_10:

  return v6;
}

__CFString *bm_subpath(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    if ([v3 isEqual:v4])
    {
      v5 = @".";
      goto LABEL_14;
    }

    v6 = [v3 hasSuffix:@"/"];
    v7 = [v4 hasPrefix:v3];
    if (v6)
    {
      if (v7)
      {
        v8 = [v3 length];
LABEL_8:
        v5 = [v4 substringFromIndex:v8];
        goto LABEL_14;
      }
    }

    else if (v7)
    {
      v9 = [v4 length];
      if (v9 > [v3 length] && objc_msgSend(v4, "characterAtIndex:", objc_msgSend(v3, "length")) == 47)
      {
        v8 = [v3 length] + 1;
        goto LABEL_8;
      }
    }
  }

  v5 = 0;
LABEL_14:

  return v5;
}

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

uint64_t BMFileAccessModeFromOFlags(__int16 a1)
{
  if ((a1 & 3u) - 1 < 2)
  {
    return 2;
  }

  if ((a1 & 3) == 3)
  {
    return 0;
  }

  if (a1 < 0)
  {
    return 3;
  }

  return 1;
}

uint64_t _bm_set_protection_class(int a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 == -1)
  {
    goto LABEL_14;
  }

  v2 = a2;
  v4 = fcntl(a1, 64, a2);
  v5 = __error();
  result = 0;
  if (!v4)
  {
    goto LABEL_18;
  }

  v7 = *v5;
  if (*v5 == 45)
  {
    goto LABEL_18;
  }

  switch(v7)
  {
    case 22:
      goto LABEL_7;
    case 9:
      v9 = fcntl(a1, 63);
      if (v9 == -1)
      {
        v10 = *__error();
        v11 = __biome_log_for_category(2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          _bm_set_protection_class_cold_1();
        }

        *__error() = v10;
      }

      if (v9 != v2)
      {
        break;
      }

      goto LABEL_14;
    case 1:
LABEL_7:
      memset(&v14, 0, 512);
      v8 = fstatfs(a1, &v14);
      if (v8 | v14.f_flags & 0x80)
      {
        break;
      }

LABEL_14:
      result = 0;
      goto LABEL_18;
  }

  v12 = __biome_log_for_category(2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    _bm_set_protection_class_cold_2();
  }

  *__error() = v7;
  result = 0xFFFFFFFFLL;
LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t bm_new_temporary_file(int a1, unsigned int a2, int a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  strcpy(path, ".tmp.XXXXXXXX");
  memset(&v21, 0, sizeof(v21));
  if (a1 < 0)
  {
    v14 = __biome_log_for_category(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      bm_new_temporary_file_cold_6();
    }

    goto LABEL_12;
  }

  if (a2 + 1 >= 9)
  {
    v14 = __biome_log_for_category(2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      bm_new_temporary_file_cold_1();
    }

LABEL_12:

    *__error() = 22;
LABEL_28:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_29;
  }

  v8 = mkostempsat_np(a1, path, 0, 0x1000000);
  v9 = __error();
  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (!a3 || (v10 = unlinkat(a1, path, 0), v11 = __error(), !v10))
  {
    if (a2 == 4 || (a2 != -1 ? (v15 = a2) : (v15 = 3), !_bm_set_protection_class(v8, v15)))
    {
      v16 = fstat(v8, &v21);
      v17 = __error();
      if (!v16)
      {
        if ((v21.st_mode & 0xF000) == 0x8000)
        {
          if (v21.st_nlink == (a3 ^ 1))
          {
            goto LABEL_32;
          }

          v20 = __biome_log_for_category(2);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            bm_new_temporary_file_cold_5();
          }

          v12 = 31;
        }

        else
        {
          v20 = __biome_log_for_category(2);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            bm_new_temporary_file_cold_4();
          }

          v12 = 79;
        }

        goto LABEL_26;
      }

      v12 = *v17;
      v13 = __biome_log_for_category(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        bm_new_temporary_file_cold_3();
      }

      goto LABEL_24;
    }

    v9 = __error();
LABEL_19:
    v12 = *v9;
    if (*v9)
    {
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  v12 = *v11;
  v13 = __biome_log_for_category(2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    bm_new_temporary_file_cold_2();
  }

LABEL_24:

  if (v12)
  {
LABEL_25:
    if ((v8 & 0x80000000) != 0)
    {
LABEL_27:
      *__error() = v12;
      goto LABEL_28;
    }

LABEL_26:
    close(v8);
    goto LABEL_27;
  }

LABEL_32:
  if (a4)
  {
    *a4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{path, *&v21.st_dev, *&v21.st_uid, *&v21.st_atimespec, *&v21.st_mtimespec, *&v21.st_ctimespec, *&v21.st_birthtimespec, *&v21.st_size, *&v21.st_blksize, *v21.st_qspare}];
  }

LABEL_29:
  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t bm_opendirat(uint64_t a1, void *a2, int a3, mode_t a4)
{
  v7 = a2;
  v34 = a3;
  v33 = objc_opt_new();
  v32 = a4;
  if ((a4 - 512) <= 0xFE00u)
  {
    bm_opendirat_cold_7();
LABEL_79:
    v19 = 0;
    v11 = 0;
LABEL_81:
    v14 = 0xFFFFFFFFLL;
    LODWORD(v15) = 22;
    goto LABEL_63;
  }

  if ((a3 & 0x9EEFFCFF) != 0)
  {
    bm_opendirat_cold_1();
    goto LABEL_79;
  }

  if ((a3 & 0x20000100) == 0x20000100)
  {
    v28 = __biome_log_for_category(2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      bm_opendirat_cold_3();
    }

    LODWORD(v15) = 22;
    v29 = [MEMORY[0x1E696AD98] numberWithInt:22];
    [v33 addObject:v29];

    v19 = 0;
    v11 = 0;
    goto LABEL_62;
  }

  if ((a3 & 0x20000100) != 0)
  {
    if ((a3 & 0x100000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_77;
  }

  v30 = __biome_log_for_category(2);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    bm_opendirat_cold_2();
  }

  a3 |= 0x100u;
  if ((a3 & 0x100000) == 0)
  {
LABEL_77:
    bm_opendirat_cold_4(a3, &v35);
    a3 = v35;
  }

LABEL_6:
  v34 = a3 | 0x1000000;
  if ([v7 hasSuffix:@"/"])
  {
    v8 = [v7 substringToIndex:{objc_msgSend(v7, "length") - 1}];

    v7 = v8;
  }

  if ((bm_validate_pathat(a1, v7) & 1) == 0)
  {
    bm_opendirat_cold_5();
    goto LABEL_79;
  }

  if (a1 == -3)
  {
    v9 = -2;
  }

  else
  {
    v9 = a1;
  }

  v10 = [[BMPathEnumerator alloc] initWithPath:v7];
  v11 = v10;
  if (!v10)
  {
    bm_opendirat_cold_6();
    v19 = 0;
    goto LABEL_81;
  }

  v12 = [(BMPathEnumerator *)v10 peekPath];
  if (v12)
  {
    v31 = v7;
    v13 = 0;
    do
    {
      v14 = openat(v9, [v12 fileSystemRepresentation], a3 & 0xFEFFFDFF | 0x1000000 | v13);
      if ((v14 & 0x80000000) != 0)
      {
        v15 = *__error();
      }

      else
      {
        v15 = 0;
      }

      v16 = [MEMORY[0x1E696AD98] numberWithInt:v15];
      [v33 addObject:v16];

      if ((v14 & 0x80000000) == 0)
      {
        v19 = [(BMPathEnumerator *)v11 navigateDown];
        a1 = v14;
        v7 = v31;
        goto LABEL_38;
      }

      if ((a3 & 0x200) == 0)
      {
        v19 = v12;
        v7 = v31;
        goto LABEL_58;
      }

      if (v15 != 2)
      {
        v7 = v31;
        goto LABEL_29;
      }

      v17 = [(BMPathEnumerator *)v11 navigateUp];

      if (!v17)
      {
        break;
      }

      v18 = [(BMPathEnumerator *)v11 peekPath];

      v13 = 1074790400;
      v12 = v18;
    }

    while (v18);
    v7 = v31;
    if (v9 == -2)
    {
      LODWORD(v15) = 2;
      goto LABEL_29;
    }

    v19 = [(BMPathEnumerator *)v11 navigateDown];
    LODWORD(v15) = 2;
  }

  else
  {
    LODWORD(v15) = 0;
    v14 = 0xFFFFFFFFLL;
LABEL_29:
    if (v9 != -2)
    {
      v19 = v12;
      v9 = a1;
      goto LABEL_58;
    }

    if (v15 > 0x14 || ((1 << v15) & 0x102002) == 0)
    {
      v19 = v12;
      v9 = -2;
      goto LABEL_58;
    }

    v20 = [(BMPathEnumerator *)v11 navigateDown];
    if (v20)
    {
      v19 = [(BMPathEnumerator *)v11 peekPath];
    }

    else
    {
      v19 = 0;
    }

    a1 = 4294967294;
    v12 = v20;
  }

LABEL_38:

  if (v19)
  {
    while (1)
    {
      v21 = [v19 fileSystemRepresentation];
      v15 = mkdirat(a1, v21, v32) ? *__error() : 0;
      v22 = [MEMORY[0x1E696AD98] numberWithInt:v15];
      [v33 addObject:v22];

      if (v15 != 17)
      {
        if (v15)
        {
          break;
        }
      }

      v23 = [(BMPathEnumerator *)v11 navigateDown];
      if (v23)
      {
        v24 = 1074790400;
      }

      else
      {
        v24 = 0;
      }

      v14 = openat(a1, v21, v34 & 0xFFFFFDFF | v24);
      v15 = 0;
      if ((v14 & 0x80000000) != 0)
      {
        v15 = *__error();
      }

      v25 = [MEMORY[0x1E696AD98] numberWithInt:v15];
      [v33 addObject:v25];

      if (v15)
      {

        break;
      }

      if (a1 != v9)
      {
        close(a1);
      }

      a1 = v14;
      v19 = v23;
      if (!v23)
      {
        goto LABEL_68;
      }
    }

    v14 = a1;
    goto LABEL_59;
  }

  v14 = a1;
LABEL_58:
  if (!v15)
  {
    goto LABEL_68;
  }

LABEL_59:
  if ((v14 & 0x80000000) == 0)
  {
    if (v14 != v9)
    {
      close(v14);
    }

LABEL_62:
    v14 = 0xFFFFFFFFLL;
  }

LABEL_63:
  if (_bm_log_config_for_errno(v15, &v34, 0, 0) == 17)
  {
    v26 = __biome_log_for_category(2);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      bm_opendirat_cold_8(v7, v33, v26);
    }
  }

  *__error() = v15;
LABEL_68:

  return v14;
}

uint64_t BMShouldRetry(void *a1, unint64_t *a2, unint64_t a3, char a4)
{
  v7 = a1;
  v8 = v7;
  v9 = 0;
  if (v7 && a2)
  {
    if (*a2 < a3 && ([v7 domain], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", *MEMORY[0x1E696A250]), v10, v11))
    {
      if ([v8 code] == 4097 || (v12 = objc_msgSend(v8, "code"), v9 = 0, (a4 & 1) != 0) && v12 == 4099)
      {
        ++*a2;
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t bm_replace_file(int a1, int a2, int a3, void *a4, uint64_t a5, unsigned int a6)
{
  v52 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = v11;
  memset(&v36, 0, sizeof(v36));
  v50 = 0u;
  memset(v51, 0, 31);
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
  *path = 0u;
  if (a1 < 0)
  {
    v13 = __biome_log_for_category(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      bm_replace_file_cold_17();
    }

    goto LABEL_16;
  }

  if (a2 < 0)
  {
    v13 = __biome_log_for_category(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      bm_replace_file_cold_16();
    }

    goto LABEL_16;
  }

  if (a3 < 0)
  {
    v13 = __biome_log_for_category(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      bm_replace_file_cold_15();
    }

    goto LABEL_16;
  }

  if (![v11 length] || (objc_msgSend(v12, "containsString:", @"/") & 1) != 0 || (objc_msgSend(v12, "isEqual:", @".") & 1) != 0 || objc_msgSend(v12, "isEqual:", @".."))
  {
    v13 = __biome_log_for_category(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      bm_replace_file_cold_14();
    }

LABEL_16:
    v14 = 22;
    goto LABEL_17;
  }

  v18 = fstat(a1, &v36);
  v19 = __error();
  if (v18)
  {
    v14 = *v19;
    v20 = __biome_log_for_category(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      bm_new_temporary_file_cold_3();
    }

LABEL_23:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_24;
  }

  if ((v36.st_mode & 0xF000) != 0x8000)
  {
    v13 = __biome_log_for_category(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      bm_new_temporary_file_cold_4();
    }

    v14 = 79;
    goto LABEL_17;
  }

  if (v36.st_nlink)
  {
    v13 = __biome_log_for_category(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      bm_new_temporary_file_cold_5();
    }

    v14 = 31;
    goto LABEL_17;
  }

  v21 = lseek(a1, 0, 0);
  v22 = __error();
  if (v21)
  {
    v14 = *v22;
    v20 = __biome_log_for_category(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      bm_replace_file_cold_4();
    }

    goto LABEL_23;
  }

  if ((a5 & 0xFFFFFFFB) != 2)
  {
    do
    {
      if (__strlcpy_chk() != 15)
      {
        v13 = __biome_log_for_category(2);
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }

      mktemp(path);
      v27 = fclonefileat(a1, a2, path, 3u);
      v14 = *__error();
    }

    while (v27 && v14 == 17);
    if (v27)
    {
      if (v14 == 45)
      {
        goto LABEL_42;
      }

      v20 = __biome_log_for_category(2);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        bm_replace_file_cold_6();
      }

      goto LABEL_23;
    }

    v23 = a3;
    v15 = openat(a2, path, 553648130);
    v31 = __error();
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    v14 = *v31;
    v30 = __biome_log_for_category(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      bm_replace_file_cold_7();
    }

    goto LABEL_73;
  }

LABEL_42:
  if (__strlcpy_chk() != 15)
  {
    v13 = __biome_log_for_category(2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
LABEL_57:
      bm_replace_file_cold_5();
    }

LABEL_58:
    v14 = 14;
    goto LABEL_17;
  }

  v23 = a3;
  v15 = mkostempsat_np(a2, path, 0, 0x1000000);
  v24 = __error();
  if ((v15 & 0x80000000) != 0)
  {
    v14 = *v24;
    v20 = __biome_log_for_category(2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      bm_replace_file_cold_12();
    }

    goto LABEL_24;
  }

  if (a5 != -1)
  {
    v25 = _bm_set_protection_class(v15, a5);
    v26 = __error();
    if (v25)
    {
      v14 = *v26;
LABEL_74:
      if (!unlinkat(a2, path, 0))
      {
        goto LABEL_25;
      }

      v20 = __biome_log_for_category(2);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        bm_replace_file_cold_11();
      }

LABEL_24:

LABEL_25:
      if (!v14)
      {
        goto LABEL_19;
      }

      if ((v15 & 0x80000000) != 0 || !close(v15))
      {
        goto LABEL_18;
      }

      v13 = __biome_log_for_category(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        bm_openat_dprotected_cold_2();
      }

LABEL_17:

LABEL_18:
      *__error() = v14;
      v15 = 0xFFFFFFFFLL;
      goto LABEL_19;
    }
  }

  v28 = fcopyfile(a1, v15, 0, 8u);
  v29 = __error();
  if (v28)
  {
    v14 = *v29;
    v30 = __biome_log_for_category(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      bm_replace_file_cold_9();
    }

LABEL_73:

    goto LABEL_74;
  }

LABEL_65:
  v32 = [v12 fileSystemRepresentation];
  if (a6)
  {
    v33 = renameatx_np(a2, path, v23, v32, a6);
  }

  else
  {
    v33 = renameat(a2, path, v23, v32);
  }

  v34 = v33;
  v35 = __error();
  if (v34)
  {
    v14 = *v35;
    v30 = __biome_log_for_category(2);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      bm_replace_file_cold_10();
    }

    goto LABEL_73;
  }

LABEL_19:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

id BMFileServerValidateAndParsePath(void *a1)
{
  v11 = 0;
  v1 = BMValidatePath(a1, &v11);
  v2 = v11;
  v3 = v2;
  if (v1)
  {
    v4 = [v2 mutableCopy];

    v5 = MEMORY[0x1E696AD98];
    v6 = [v4 objectForKeyedSubscript:@"streamType"];
    if ([v6 isEqual:@"public"])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v8 = [v5 numberWithUnsignedInteger:v7];
    [v4 setObject:v8 forKeyedSubscript:@"streamType"];

    v3 = v4;
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL BMValidatePath(void *a1, void *a2)
{
  v53[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [@"streams" stringByAppendingString:@"/"];
  v5 = [v3 hasPrefix:v4];

  if (v5)
  {
    if (BMStreamsPathRegex_onceToken != -1)
    {
      BMValidatePath_cold_3();
    }

    v6 = @"streams";
    v7 = &BMStreamsPathRegex_regex;
    v8 = &BMStreamsPathRegex_names;
    goto LABEL_9;
  }

  v9 = [@"compute" stringByAppendingString:@"/"];
  v10 = [v3 hasPrefix:v9];

  if (!v10)
  {
    if ([v3 hasPrefix:@"sharedSync"])
    {
      v41 = __biome_log_for_category(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        BMValidatePath_cold_1();
      }

      if (a2)
      {
LABEL_31:
        v13 = 0;
        v15 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      if ([v3 hasPrefix:@"resourceGeneration"])
      {
        if (a2)
        {
          v52 = @"pathType";
          v53[0] = @"resourceGeneration";
          v18 = 1;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
          v13 = 0;
          *a2 = v15 = 0;
        }

        else
        {
          v13 = 0;
          v15 = 0;
          v18 = 1;
        }

        goto LABEL_39;
      }

      if (a2)
      {
        goto LABEL_31;
      }
    }

    v13 = 0;
    v15 = 0;
LABEL_38:
    v18 = 0;
    goto LABEL_39;
  }

  if (BMComputePathRegex_onceToken != -1)
  {
    BMValidatePath_cold_2();
  }

  v6 = @"compute";
  v7 = &BMComputePathRegex_regex;
  v8 = &BMComputePathRegex_names;
LABEL_9:
  v11 = *v8;
  v12 = *v8;
  v13 = *v7;
  v14 = v11;
  v15 = v14;
  if (!v13 || !v14)
  {
    v40 = __biome_log_for_category(0);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      BMValidatePath_cold_4();
    }

    if (!a2)
    {
      goto LABEL_38;
    }

LABEL_32:
    v18 = 0;
    *a2 = 0;
    goto LABEL_39;
  }

  v16 = [v13 firstMatchInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];
  v17 = v16;
  v18 = v16 != 0;
  if (a2 && v16)
  {
    v44 = v6;
    v45 = v16 != 0;
    v46 = v13;
    v47 = a2;
    v51 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/"];
    v19 = objc_opt_new();
    if ([v17 numberOfRanges])
    {
      v20 = 0;
      v48 = v15;
      v50 = v19;
      do
      {
        v21 = [v17 rangeAtIndex:v20];
        if (v21 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v23 = v21;
          v24 = v22;
          v25 = [v15 objectAtIndexedSubscript:v20];
          v26 = [v25 isEqual:&stru_1F20E2850];

          if ((v26 & 1) == 0)
          {
            v27 = [v15 objectAtIndexedSubscript:v20];
            v28 = [v19 objectForKeyedSubscript:v27];

            v29 = v19;
            if (v28)
            {
              v30 = [MEMORY[0x1E696AAA8] currentHandler];
              v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL BMValidatePath(NSString *__strong _Nonnull, NSDictionary *__autoreleasing * _Nullable)"}];
              v49 = [v15 objectAtIndexedSubscript:v20];
              v32 = [v50 objectForKeyedSubscript:v49];
              v33 = [v15 objectAtIndexedSubscript:v20];
              [v3 substringWithRange:{v23, v24}];
              v35 = v34 = v3;
              [v30 handleFailureInFunction:v31 file:@"BMSecurity.m" lineNumber:312 description:{@"Dictionary already has value %@ for key %@; new value %@", v32, v33, v35}];

              v3 = v34;
              v15 = v48;

              v29 = v50;
            }

            v36 = [v3 substringWithRange:{v23, v24}];
            v37 = [v36 stringByTrimmingCharactersInSet:v51];
            v38 = [v15 objectAtIndexedSubscript:v20];
            [v29 setObject:v37 forKeyedSubscript:v38];

            v19 = v29;
          }
        }

        ++v20;
      }

      while (v20 < [v17 numberOfRanges]);
    }

    [v19 setObject:v44 forKeyedSubscript:@"pathType"];
    v39 = v19;
    *v47 = v19;

    v18 = v45;
    v13 = v46;
  }

LABEL_39:
  v42 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t BMServiceDomainForStream(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v5 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_0;
    v18 = getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_0;
    if (!getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_0)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_0;
      v14[3] = &unk_1E796AC10;
      v14[4] = &v15;
      __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_0(v14);
      v5 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (!v5)
    {
      BMServiceDomainForStream_cold_1();
    }

    v6 = v5();
    v7 = [v6 streamWithIdentifier:v3 error:0];
    v8 = v7;
    if (v7 && ([v7 valueForKeyPath:@"configuration.storeConfig.domain"], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      v4 = [v9 integerValue];
    }

    else if ([&unk_1F20EC220 containsObject:v3])
    {
      v4 = 1;
    }

    else if ([&unk_1F20EC238 containsObject:v3])
    {
      v11 = +[BMProcess current];
      v12 = [v11 isRunningInUserContext];

      v4 = v12 ^ 1u;
    }

    else
    {
      v4 = 0;
    }
  }

  else if (a1 == 1)
  {
    v4 = [BMPublicStreamUtilities domainForStream:[BMPublicStreamUtilities streamForStreamIdentifier:v3]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1AC1632B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _bm_log_config_for_errno(int a1, uint64_t a2, void **a3, void *a4)
{
  v7 = a4;
  if (a3)
  {
    v8 = *a3;
    *a3 = &stru_1F20E2850;
  }

  if (a2)
  {
    if ((*(a2 + 1) & 2) != 0)
    {
      v9 = 17;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  if (a1 == 1)
  {
    v12 = [MEMORY[0x1E69C5D08] deviceLockState];
    if (a3)
    {
      if (v7)
      {
        v13 = v7;
      }

      else
      {
        v13 = &stru_1F20E2850;
      }

      if (v7)
      {
        v14 = @" ";
      }

      else
      {
        v14 = &stru_1F20E2850;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@%@lockState:%d expired:%d", v13, v14, v12, +[BMDataProtection isClassCXUnlocked](BMDataProtection, "isClassCXUnlocked") ^ 1];
      v16 = *a3;
      *a3 = v15;
    }

    if (v12 == 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 16;
    }
  }

  else
  {
    if (a1 != 2)
    {
      v9 = 17;
    }

    if (a3 && v7)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v7];
      v11 = *a3;
      *a3 = v10;
    }
  }

  return v9;
}

id BMAppleInternalVariantOfEntitlement(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByReplacingOccurrencesOfString:@"com.apple.private." withString:@"com.apple.internal." options:8 range:{0, objc_msgSend(v1, "length")}];

  return v2;
}

uint64_t BMResourceTypeFromEntitlementResourceTypeString(uint64_t a1)
{
  v1 = [&unk_1F20EC478 objectForKeyedSubscript:a1];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedLongLongValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __BMNormalizedResourcesAndAccessModesListedUnderEntitlement_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([v6 isEqual:&unk_1F20EBC20] & 1) == 0)
  {
    v7 = [v5 type];
    if (v7 == 4)
    {
      v17 = [v5 name];
      v8 = [&unk_1F20EC3D8 objectForKeyedSubscript:v17];

      if (!v8)
      {
LABEL_11:
        [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
LABEL_23:

        goto LABEL_24;
      }

      v18 = [[BMResourceSpecifier alloc] initWithType:1 name:v8];
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v18];
LABEL_10:

      goto LABEL_11;
    }

    if (v7 == 1)
    {
      v8 = +[BMAccessControlPolicy library];
      v9 = [v5 name];
      v10 = [v8 streamWithIdentifier:v9 error:0];

      if (v10)
      {
        goto LABEL_5;
      }

      v19 = legacyViewResourceMapper();
      v20 = [v19 streamIdentifierForUUIDString];

      if (v20)
      {
        v21 = legacyViewResourceMapper();
        v22 = [v21 streamIdentifierForUUIDString];
        v23 = [v5 name];
        v24 = (v22)[2](v22, v23);

        v10 = [v8 streamWithIdentifier:v24 error:0];

        if (v10)
        {
          goto LABEL_5;
        }
      }

      v25 = legacyViewResourceMapper();
      v26 = [v25 streamIdentifierForLegacyStreamName];

      if (v26)
      {
        v27 = legacyViewResourceMapper();
        v28 = [v27 streamIdentifierForLegacyStreamName];
        v29 = [v5 name];
        v30 = (v28)[2](v28, v29);

        v10 = [v8 streamWithIdentifier:v30 error:0];

        if (v10)
        {
LABEL_5:
          v11 = [v10 valueForKey:@"identifier"];
          v12 = [v10 valueForKeyPath:@"configuration.allowedClients"];
          if (v12 && (v13 = (a1 + 40), [*(a1 + 40) identifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v12, "containsObject:", v14), v14, (v15 & 1) == 0))
          {
            v31 = __biome_log_for_category(0);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              __BMNormalizedResourcesAndAccessModesListedUnderEntitlement_block_invoke_cold_1(v13);
            }
          }

          else
          {
            v16 = [[BMResourceSpecifier alloc] initWithType:1 name:v11];
            [*(a1 + 32) setObject:v6 forKeyedSubscript:v16];
          }

          goto LABEL_23;
        }
      }

      v18 = __biome_log_for_category(0);
      if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
      {
        __BMNormalizedResourcesAndAccessModesListedUnderEntitlement_block_invoke_cold_2(v5);
      }

      goto LABEL_10;
    }

    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

LABEL_24:
}

void sub_1AC1642D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id BMNonnullSetOfStringsFromEntitlementValue(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x1E695DFD8] setWithObject:v1];
LABEL_16:
    v3 = v2;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_15:
    v2 = [MEMORY[0x1E695DFD8] set];
    goto LABEL_16;
  }

  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v1;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

LABEL_17:
  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

void __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = [[BMResourceSpecifier alloc] initWithType:1 name:v5];

  if (v6)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }
}

uint64_t ____biome_log_for_category_block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.Biome", *(&categories + 3 * *(a1 + 32) + 2));
  v3 = &categories + 24 * *(a1 + 32);
  v4 = *(v3 + 1);
  *(v3 + 1) = v2;

  return MEMORY[0x1EEE66BB8]();
}

void bm_service_connection_handler(void *a1)
{
  v1 = a1;
  v2 = +[BMXPCListener serviceListener];
  v3 = [v2 queue];
  v4 = v3;
  if (v3)
  {
    v5 = v3 == MEMORY[0x1E69E96A0];
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    [v2 _handleConnection:v1];
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __bm_service_connection_handler_block_invoke;
    v6[3] = &unk_1E796B1D0;
    v7 = v2;
    v8 = v1;
    dispatch_sync(v4, v6);
  }
}

void __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v5 isEqual:MEMORY[0x1E695E118]] & 1) == 0)
    {
      goto LABEL_10;
    }

    v6 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = BMAccessModeFromEntitlementAccessModeString(v5);
    if (!v6)
    {
      goto LABEL_10;
    }

LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKeyedSubscript:@"mode"];
    v6 = BMAccessModeFromEntitlementAccessModeString(v7);

    if (v6)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
}

uint64_t BMAccessModeFromEntitlementAccessModeString(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [&unk_1F20EC4A0 objectForKeyedSubscript:a1];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 48) != 1 || [v5 isEqualToNumber:&unk_1F20EBC08])
  {
    v7 = [[BMResourceSpecifier alloc] initWithType:*(a1 + 40) name:v8];
    if (v7)
    {
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
    }
  }
}

uint64_t BMSandboxCheck(_OWORD *a1, void *a2, int a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  [(__CFString *)v7 UTF8String];
  if ((a3 & 0x87FFFFFF) <= 0xE)
  {
    if (((1 << a3) & 0x300E) != 0)
    {
      [(__CFString *)v8 UTF8String];
LABEL_6:
      v9 = a1[1];
      *buf = *a1;
      *&buf[16] = v9;
      goto LABEL_7;
    }

    if (((1 << a3) & 0x4400) != 0)
    {
      [(__CFString *)v8 unsignedIntValue];
      goto LABEL_6;
    }

    if ((a3 & 0x87FFFFFF) == 0)
    {
      v20 = a1[1];
      *buf = *a1;
      *&buf[16] = v20;
LABEL_7:
      v10 = sandbox_check_by_audit_token();
      v11 = *__error();
      v12 = @"sandboxed";
      if (v7)
      {
        v12 = v7;
      }

      v13 = v12;

      switch(v10)
      {
        case 0xFFFFFFFF:
          v14 = __biome_log_for_category(0);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          v15 = @", ";
          *buf = 138544130;
          v16 = &stru_1F20E2850;
          *&buf[4] = v13;
          *&buf[12] = 2114;
          if (v8)
          {
            v16 = v8;
          }

          else
          {
            v15 = &stru_1F20E2850;
          }

          *&buf[14] = v15;
          *&buf[22] = 2114;
          *&buf[24] = v16;
          v25 = 1024;
          v26 = v11;
          v17 = "BMSandboxCheck(%{public}@%{public}@%{public}@) failed with error %{darwin.errno}d";
          break;
        case 0:
LABEL_22:
          v7 = v13;
          goto LABEL_23;
        case 1:
          if ((*MEMORY[0x1E69E9BD0] & ~a3) != 0)
          {
            v10 = 2;
          }

          else
          {
            v10 = 1;
          }

          goto LABEL_22;
        default:
          v14 = __biome_log_for_category(0);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
LABEL_21:

            v10 = 0xFFFFFFFFLL;
            goto LABEL_22;
          }

          v22 = @", ";
          *buf = 138544130;
          v23 = &stru_1F20E2850;
          *&buf[4] = v13;
          *&buf[12] = 2114;
          if (v8)
          {
            v23 = v8;
          }

          else
          {
            v22 = &stru_1F20E2850;
          }

          *&buf[14] = v22;
          *&buf[22] = 2114;
          *&buf[24] = v23;
          v25 = 1024;
          v26 = v10;
          v17 = "sandbox_check(%{public}@%{public}@%{public}@) returned unexpected value %d";
          break;
      }

      _os_log_error_impl(&dword_1AC15D000, v14, OS_LOG_TYPE_ERROR, v17, buf, 0x26u);
      goto LABEL_21;
    }
  }

  v21 = __biome_log_for_category(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    BMSandboxCheck_cold_1();
  }

  v10 = 0xFFFFFFFFLL;
LABEL_23:

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t BMServiceDomainForResource(void *a1)
{
  v1 = a1;
  v2 = [v1 type];
  v3 = 0;
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      v4 = [v1 name];
      v3 = BMServiceDomainForStream(2, v4);
      goto LABEL_9;
    }

    if (v2 != 2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v4 = [v1 name];
    v3 = 0;
LABEL_9:

    goto LABEL_10;
  }

  if (v2 == 3 || v2 == 4)
  {
    goto LABEL_7;
  }

LABEL_10:

  return v3;
}

__CFString *BMAccessModePrintableDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown (%llu)", a1];
  }

  else
  {
    v2 = off_1E796AD68[a1];
  }

  return v2;
}

__CFString *BMResourceContainerTypeDescription(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%u)", a1];
  }

  else
  {
    v2 = off_1E796B168[(a1 - 1)];
  }

  return v2;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_0_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void __BMNormalizedResourcesAndAccessModesListedUnderEntitlement_block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [a1 name];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

void __BMNormalizedResourcesAndAccessModesListedUnderEntitlement_block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = [*a1 identifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t BMStorageErrorShouldTryAgainLater(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  v3 = [v2 isEqual:@"BiomeStorageError"];

  if (v3 && [v1 code] == 5)
  {
    v4 = [v1 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"UserControlled"];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t BiomeStreamsLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __BiomeStreamsLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E796AC78;
    v5 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BiomeStreamsLibraryCore_frameworkLibrary;
  if (!BiomeStreamsLibraryCore_frameworkLibrary)
  {
    BiomeStreamsLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

id legacyViewResourceMapper()
{
  if (legacyViewResourceMapper__pasOnceToken2 != -1)
  {
    legacyViewResourceMapper_cold_1();
  }

  v1 = legacyViewResourceMapper__pasExprOnceResult;

  return v1;
}

void __legacyViewResourceMapper_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = legacyViewResourceMapper__pasExprOnceResult;
  legacyViewResourceMapper__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id BMPremigratedStreamIdentifierForBiomeLibraryStreamIdentifier(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = +[BMPublicStreamUtilities libraryPublicStreamMigrationPaths];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:v8];
        [v2 setObject:v8 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v10 = +[BMStreamMigrations libraryRestrictedStreamMigrationPaths];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * j);
        v16 = [v10 objectForKeyedSubscript:v15];
        [v2 setObject:v15 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v12);
  }

  v17 = [v2 objectForKeyedSubscript:v1];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

id BMSyncableStreamIdentifiers()
{
  if (BMSyncableStreamIdentifiers_onceToken != -1)
  {
    BMSyncableStreamIdentifiers_cold_1();
  }

  v1 = BMSyncableStreamIdentifiers_identifiers;

  return v1;
}

void sub_1AC16C508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeStreamsLibrary();
  result = dlsym(v2, "BiomeLibraryAndInternalLibraryNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BiomeStreamsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __BMSyncableStreamIdentifiers_block_invoke()
{
  v0 = objc_opt_new();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v1 = getBMStreamSyncPolicyClass_softClass;
  v14 = getBMStreamSyncPolicyClass_softClass;
  if (!getBMStreamSyncPolicyClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getBMStreamSyncPolicyClass_block_invoke;
    v10[3] = &unk_1E796AC10;
    v10[4] = &v11;
    __getBMStreamSyncPolicyClass_block_invoke(v10);
    v1 = v12[3];
  }

  v2 = v1;
  _Block_object_dispose(&v11, 8);
  v3 = [v1 valueForKeyPath:@"syncableStreamConfigurations.streamIdentifier"];
  [v0 addObjectsFromArray:v3];

  v4 = +[BMAccessControlPolicy contextSyncMapping];
  v5 = [v4 allKeys];
  [v0 addObjectsFromArray:v5];

  v6 = +[BMAccessControlPolicy contextSyncMapping];
  v7 = [v6 allValues];
  [v0 addObjectsFromArray:v7];

  [v0 addObject:@"Location.Semantic"];
  v8 = [v0 copy];
  v9 = BMSyncableStreamIdentifiers_identifiers;
  BMSyncableStreamIdentifiers_identifiers = v8;
}

void sub_1AC16D194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMStreamSyncPolicyClass_block_invoke(uint64_t a1)
{
  BiomeStreamsLibrary();
  result = objc_getClass("BMStreamSyncPolicy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBMStreamSyncPolicyClass_block_invoke_cold_1();
  }

  getBMStreamSyncPolicyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_321(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = [[BMResourceSpecifier alloc] initWithType:1 name:v5];

  if (v6)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }
}

void __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_2_322(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = [[BMResourceSpecifier alloc] initWithType:1 name:v5];

  if (v6)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }
}

void __BMResourcesAndAccessModesListedUnderEntitlement_block_invoke_3_323(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = [[BMResourceSpecifier alloc] initWithType:1 name:v5];

  if (v6)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }
}

Class __getCCSetConfigurationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CascadeSetsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CascadeSetsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E796AD50;
    v6 = 0;
    CascadeSetsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CascadeSetsLibraryCore_frameworkLibrary)
  {
    __getCCSetConfigurationClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CCSetConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCCSetConfigurationClass_block_invoke_cold_1();
  }

  getCCSetConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CascadeSetsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CascadeSetsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t BMDevicePlatformFromModelString(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"iPhone"])
  {
    v2 = 2;
  }

  else if ([v1 hasPrefix:@"iPad"])
  {
    v2 = 1;
  }

  else if ([v1 hasPrefix:@"Watch"])
  {
    v2 = 6;
  }

  else if ([v1 hasPrefix:@"AppleTV"])
  {
    v2 = 5;
  }

  else if ([v1 hasPrefix:@"AudioAccessory"])
  {
    v2 = 7;
  }

  else if ([v1 hasPrefix:@"MacBook"])
  {
    v2 = 4;
  }

  else if ([v1 hasPrefix:@"Mac"] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", @"iMac"))
  {
    v2 = 3;
  }

  else if ([v1 hasPrefix:@"RealityDevice"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *BMDevicePlatformGetDescription(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%lu)", a1];
  }

  else
  {
    v2 = off_1E796ADB0[a1];
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_7()
{

  return [v0 pid];
}

uint64_t BMDataProtectionClassFromNSFileProtectionType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E696A3A8]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E696A398]])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E696A388]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E696A380]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E696A378]])
  {
    v2 = 0;
  }

  else
  {
    v2 = 3;
  }

  return v2;
}

void sub_1AC173218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  os_activity_scope_leave((v47 - 224));
  _Unwind_Resume(a1);
}

void sub_1AC173678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  os_activity_scope_leave((v29 - 120));
  _Unwind_Resume(a1);
}

__CFString *BMResourceOptionsDescription(int a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"UserVault"];
    }

    v4 = [v3 componentsJoinedByString:@"|"];
  }

  else
  {
    v4 = &stru_1F20E2850;
  }

  return v4;
}

__CFString *BMDevicePlatformToString(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Platform(%lu)", a1];
  }

  else
  {
    v2 = off_1E796B240[a1];
  }

  return v2;
}

uint64_t BMDevicePlatformFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:@"iPad"])
  {
    v2 = 1;
  }

  else if ([v1 isEqual:@"iPhone"])
  {
    v2 = 2;
  }

  else if ([v1 isEqual:@"MacDesktop"])
  {
    v2 = 3;
  }

  else if ([v1 isEqual:@"MacPortable"])
  {
    v2 = 4;
  }

  else if ([v1 isEqual:@"TV"])
  {
    v2 = 5;
  }

  else if ([v1 isEqual:@"Watch"])
  {
    v2 = 6;
  }

  else if ([v1 isEqual:@"HomePod"])
  {
    v2 = 7;
  }

  else if ([v1 isEqual:@"Vision"])
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *BMDevicePlatformOptionsToString(uint64_t a1)
{
  v1 = a1;
  if ((~a1 & 0x1FE) == 0)
  {
    v2 = @"All";
    goto LABEL_28;
  }

  v3 = objc_opt_new();
  while (1)
  {
    v4 = v1 & -v1;
    if (v4 > 15)
    {
      if (v4 <= 63)
      {
        if (v4 == 16)
        {
          v5 = @"MacPortable";
          goto LABEL_26;
        }

        if (v4 == 32)
        {
          v5 = @"TV";
          goto LABEL_26;
        }
      }

      else
      {
        switch(v4)
        {
          case 64:
            v5 = @"Watch";
            goto LABEL_26;
          case 128:
            v5 = @"HomePod";
            goto LABEL_26;
          case 256:
            v5 = @"Vision";
            goto LABEL_26;
        }
      }

      goto LABEL_25;
    }

    if (v4 > 3)
    {
      if (v4 == 4)
      {
        v5 = @"iPhone";
        goto LABEL_26;
      }

      if (v4 == 8)
      {
        v5 = @"MacDesktop";
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v5 = @"Unknown";
    if (v4 == 1)
    {
      goto LABEL_26;
    }

    if (v4 == 2)
    {
      v5 = @"iPad";
      goto LABEL_26;
    }

    if (!v4)
    {
      break;
    }

LABEL_25:
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Platform(%lu)", v1 & -v1];
LABEL_26:
    [v3 addObject:v5];

    v1 ^= v4;
  }

  v2 = [v3 componentsJoinedByString:{@", "}];

LABEL_28:

  return v2;
}

void sub_1AC177D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC178468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC178850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1AC178CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_1AC1793EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC179594(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC1795F8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1AC179604);
  }

  JUMPOUT(0x1AC1795F0);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return MEMORY[0x1EEDC70C8](v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_5(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 1024;
  *(a4 + 14) = v4;
  return result;
}

void *BMSetError(void *result, id a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = a2;
      *v3 = a2;
    }
  }

  return result;
}

id BMGetOrCreateDirectoryPath(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:a1 isDirectory:1];
    v4 = BMGetOrCreateDirectoryURL(v3, a2);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:-1000 userInfo:0];
    v3 = v5;
    v4 = 0;
    if (a2 && v5)
    {
      v6 = v5;
      v4 = 0;
      *a2 = v3;
    }
  }

  return v4;
}

id BMGetOrCreateDirectoryURL(void *a1, void *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:a2];

    v6 = 0;
    if (v5)
    {
      v6 = v3;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:-1000 userInfo:0];
    if (a2 && v7)
    {
      v7 = v7;
      *a2 = v7;
    }

    v6 = 0;
  }

  return v6;
}

uint64_t BMRemoveItemIfExistsAtPath(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];

    v5 = BMRemoveItemIfExistsAtURL(v4, a2);
    v6 = *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path: %@", v3, *MEMORY[0x1E696A578]];

    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v8 errorWithDomain:v9 code:-1000 userInfo:v11];
    if (a2)
    {
      if (v12)
      {
        v12 = v12;
        *a2 = v12;
      }
    }

    v13 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t BMRemoveItemIfExistsAtURL(void *a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = 0;
    v5 = [v4 removeItemAtURL:v3 error:&v17];
    v6 = v17;
    v7 = v6;
    if (v5)
    {

LABEL_9:
      v12 = 1;
      goto LABEL_10;
    }

    v13 = [v6 code];

    if (v13 == 4)
    {
      goto LABEL_9;
    }

    v12 = 0;
    if (a2 && v7)
    {
      v16 = v7;
      v12 = 0;
      *a2 = v7;
    }
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v18 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid item URL: %@", 0];
    v19[0] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v8 errorWithDomain:v9 code:-1000 userInfo:v10];
    if (a2 && v11)
    {
      v11 = v11;
      *a2 = v11;
    }

    v12 = 0;
  }

LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t BMWritePropertyList(uint64_t a1, void *a2, int a3, uint64_t *a4)
{
  v7 = a2;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:a1 format:200 options:0 error:a4];
  if ([v8 length])
  {
    v9 = [v7 path];
    v10 = open_dprotected_np([v9 UTF8String], 1538, a3, 0, 420);

    v11 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v10 closeOnDealloc:1];
    v12 = [v11 writeData:v8 error:a4];
    if ((v12 & 1) == 0)
    {
      v13 = __biome_log_for_category(16);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        BMWritePropertyList_cold_1(a4, v13);
      }

      v14 = [v7 URLByDeletingLastPathComponent];
      v15 = [v14 path];

      v20 = 0;
      v16 = [MEMORY[0x1E696AC08] defaultManager];
      v17 = [v16 fileExistsAtPath:v15 isDirectory:&v20];

      if ((v17 & 1) == 0)
      {
        v18 = __biome_log_for_category(16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          BMWritePropertyList_cold_2(v15, &v20, v18);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id BMReadPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a1 options:0 error:a3];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:a2 format:0 error:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id BMDataFromNSUUID(void *a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = 0;
    v5[1] = 0;
    [v1 getUUIDBytes:v5];
    v2 = [MEMORY[0x1E695DEF0] dataWithBytes:v5 length:16];
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

__CFString *BMStringForServiceDomain(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"System";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BMServiceDomain(%ld)", a1];
    }
  }

  else
  {
    v2 = @"User";
  }

  return v2;
}

uint64_t BMServiceDomainLookupFromConfigurationForSet(void *a1)
{
  v1 = a1;
  v2 = getCCSetLibraryConfigurationRegistryClass();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 configurationForSetIdentifier:v1];
    v5 = v4;
    if (v4 && ([v4 valueForKeyPath:@"resourceDomain"], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v6;
      v8 = [v6 integerValue];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = __biome_log_for_category(6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      BMServiceDomainLookupFromConfigurationForSet_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v8 = 0;
  }

  return v8;
}

id getCCSetLibraryConfigurationRegistryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCCSetLibraryConfigurationRegistryClass_softClass;
  v7 = getCCSetLibraryConfigurationRegistryClass_softClass;
  if (!getCCSetLibraryConfigurationRegistryClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCCSetLibraryConfigurationRegistryClass_block_invoke;
    v3[3] = &unk_1E796AC10;
    v3[4] = &v4;
    __getCCSetLibraryConfigurationRegistryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AC17A9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BMServiceDomainOverrideLookupFromConfigurationForSet(void *a1)
{
  v1 = a1;
  v2 = BMServiceDomainLookupFromConfigurationForSet(v1);
  v3 = BMResourceDescriptorsLookupFromConfigurationForSet(v1);

  if (BMServiceDomainSystemOverrideIsPresentInDescriptors(v3))
  {
    v4 = 1;
  }

  else
  {
    v4 = v2;
  }

  return v4;
}

id BMResourceDescriptorsLookupFromConfigurationForSet(void *a1)
{
  v1 = a1;
  v2 = getCCSetLibraryConfigurationRegistryClass();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 configurationForSetIdentifier:v1];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 valueForKeyPath:@"configuredDescriptors"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = __biome_log_for_category(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      BMServiceDomainLookupFromConfigurationForSet_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t BMServiceDomainSystemOverrideIsPresentInDescriptors(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 key];
        if ([v7 isEqualToString:@"domainOverride"])
        {
          v8 = [v6 value];
          v9 = [v8 isEqualToString:@"system"];

          if (v9)
          {
            v10 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v10 = 0;
LABEL_13:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

id BMResourceSyncPolicyLookupFromConfigurationForSet(void *a1)
{
  v1 = a1;
  v2 = getCCSetLibraryConfigurationRegistryClass();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 configurationForSetIdentifier:v1];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 valueForKeyPath:@"syncPolicy"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = __biome_log_for_category(6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      BMServiceDomainLookupFromConfigurationForSet_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    v6 = 0;
  }

  return v6;
}

void *__getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BiomeStreamsLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E796B3D8;
    v7 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = BiomeStreamsLibraryCore_frameworkLibrary_0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary_0)
  {
    __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "BiomeLibraryAndInternalLibraryNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeStreamsLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCCSetLibraryConfigurationRegistryClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IntelligencePlatformLibraryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E796B3F0;
    v6 = 0;
    IntelligencePlatformLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntelligencePlatformLibraryLibraryCore_frameworkLibrary)
  {
    __getCCSetLibraryConfigurationRegistryClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CCSetLibraryConfigurationRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCCSetLibraryConfigurationRegistryClass_block_invoke_cold_1();
  }

  getCCSetLibraryConfigurationRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IntelligencePlatformLibraryLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntelligencePlatformLibraryLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC17C16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC17C548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getRBSProcessHandleClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSProcessHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRBSProcessHandleClass_block_invoke_cold_1();
  }

  getRBSProcessHandleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void RunningBoardServicesLibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __RunningBoardServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E796B440;
    v3 = 0;
    RunningBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    RunningBoardServicesLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getRBSTargetClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSTarget");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRBSTargetClass_block_invoke_cold_1();
  }

  getRBSTargetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRBSAssertionClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRBSAssertionClass_block_invoke_cold_1();
  }

  getRBSAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRBSDomainAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSDomainAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRBSDomainAttributeClass_block_invoke_cold_1();
  }

  getRBSDomainAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRBSAcquisitionCompletionAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSAcquisitionCompletionAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRBSAcquisitionCompletionAttributeClass_block_invoke_cold_1();
  }

  getRBSAcquisitionCompletionAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __BMStreamsPathRegex_block_invoke()
{
  v10[14] = *MEMORY[0x1E69E9840];
  v10[0] = @"path";
  v10[1] = @"streamType";
  v10[2] = @"stream";
  v10[3] = @"lock";
  v10[4] = @"metadata";
  v10[5] = @"deviceType";
  v10[6] = @"tombstone";
  v10[7] = @"segment";
  v10[8] = @"deviceType";
  v10[9] = @"device";
  v10[10] = @"tombstone";
  v10[11] = @"segment";
  v10[12] = @"subscriptions";
  v10[13] = @"segment";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:14];
  v1 = BMStreamsPathRegex_names;
  BMStreamsPathRegex_names = v0;

  v9 = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^streams/(public|restricted)(?:/([a-zA-Z0-9_][a-zA-Z0-9_\\-\\.:]*+)(?:(/lock)|(/metadata)|(/local)(/tombstone)?(/[0-9][0-9]*+)?|(/remote)(?:(/[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12})(/tombstone)?(/[0-9][0-9]*+)?)?|(/subscriptions)(/[0-9][0-9]*+)?))?$" options:0 error:&v9];
  v3 = v9;
  v4 = BMStreamsPathRegex_regex;
  BMStreamsPathRegex_regex = v2;

  if (v3)
  {
    v5 = __biome_log_for_category(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __BMStreamsPathRegex_block_invoke_cold_1();
    }

    v6 = BMStreamsPathRegex_regex;
    BMStreamsPathRegex_regex = 0;

    v7 = BMStreamsPathRegex_names;
    BMStreamsPathRegex_names = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __BMComputePathRegex_block_invoke()
{
  v10[16] = *MEMORY[0x1E69E9840];
  v10[0] = @"path";
  v10[1] = @"artifacts";
  v10[2] = @"artifactIdentifier";
  v10[3] = @"persistent";
  v10[4] = @"clientIdentifier";
  v10[5] = @"subscriptionIdentifier";
  v10[6] = @"sessions";
  v10[7] = @"sessionIdentifier";
  v10[8] = @"bookmarks";
  v10[9] = @"client";
  v10[10] = @"clientIdentifier";
  v10[11] = @"subscriptionIdentifier";
  v10[12] = @"sessions";
  v10[13] = @"sessionIdentifier";
  v10[14] = @"subscriptions";
  v10[15] = @"stream";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:16];
  v1 = BMComputePathRegex_names;
  BMComputePathRegex_names = v0;

  v9 = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^compute(?:(/artifacts)(/[a-zA-Z0-9_][a-zA-Z0-9_\\-\\.:]*+)|(/persistent)(/[a-zA-Z0-9_][a-zA-Z0-9_\\-\\.:]*+)(/[a-zA-Z0-9_][a-zA-Z0-9_\\-\\.:]*+)?|(/sessions)(/[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12})(/bookmarks)(/client)(/[a-zA-Z0-9_][a-zA-Z0-9_\\-\\.:]*+)(/[a-zA-Z0-9_][a-zA-Z0-9_\\-\\.:]*+)?|(/sessions)(/[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12})(/subscriptions)(/[a-zA-Z0-9_][a-zA-Z0-9_\\-\\.:]*+)?)$" options:0 error:&v9];
  v3 = v9;
  v4 = BMComputePathRegex_regex;
  BMComputePathRegex_regex = v2;

  if (v3)
  {
    v5 = __biome_log_for_category(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __BMStreamsPathRegex_block_invoke_cold_1();
    }

    v6 = BMComputePathRegex_regex;
    BMComputePathRegex_regex = 0;

    v7 = BMComputePathRegex_names;
    BMComputePathRegex_names = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

__CFString *BMDevicePlatformAsKeyString(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E796B528[a1 - 1];
  }
}

uint64_t BMStorageErrorGetErrno(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 domain];
  v3 = *MEMORY[0x1E696A798];
  v4 = [v2 isEqual:*MEMORY[0x1E696A798]];

  if (v4)
  {
    v5 = [v1 code];
  }

  else
  {
    v6 = [v1 domain];
    v7 = [v6 isEqual:@"BiomeStorageError"];

    if (v7)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v1 underlyingErrors];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            v14 = [v13 domain];
            v15 = [v14 isEqual:v3];

            if (v15)
            {
              v5 = [v13 code];

              goto LABEL_15;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    v5 = 0;
  }

LABEL_15:

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1AC17E918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  os_activity_scope_leave((v29 - 120));
  _Unwind_Resume(a1);
}

void ___bm_supports_openat_dprotected_syscall_block_invoke()
{
  v0 = +[BMProcess current];
  _bm_supports_openat_dprotected_syscall_supported = [v0 canPerformSyscall:&unk_1F20EBD28 report:0];
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1)
{

  return [v1 addObject:a1];
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_5_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

void sub_1AC184180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BiomeStreamsLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E796B5D8;
    v7 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v2 = BiomeStreamsLibraryCore_frameworkLibrary_1;
  if (!BiomeStreamsLibraryCore_frameworkLibrary_1)
  {
    __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_cold_1_0(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "BiomeLibraryAndInternalLibraryNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeStreamsLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_1AC186F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

id BMRegularVariantOfAppleInternalEntitlement(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByReplacingOccurrencesOfString:@"com.apple.internal." withString:@"com.apple.private." options:8 range:{0, objc_msgSend(v1, "length")}];

  return v2;
}

id get_DKMachServiceName()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = get_DKMachServiceNameSymbolLoc_ptr;
  v7 = get_DKMachServiceNameSymbolLoc_ptr;
  if (!get_DKMachServiceNameSymbolLoc_ptr)
  {
    v1 = CoreDuetLibrary();
    v5[3] = dlsym(v1, "_DKMachServiceName");
    get_DKMachServiceNameSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    get_DKMachServiceName_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1AC187B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC187FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, os_activity_scope_state_s state)
{
  _Block_object_dispose((v21 - 96), 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_1AC188414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t CoreDuetLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreDuetLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E796B7B8;
    v5 = 0;
    CoreDuetLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreDuetLibraryCore_frameworkLibrary;
  if (!CoreDuetLibraryCore_frameworkLibrary)
  {
    CoreDuetLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t __CoreDuetLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreDuetLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC188944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BiomeStreamsLibraryCore_frameworkLibrary_2)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __BiomeStreamsLibraryCore_block_invoke_2;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E796B7D0;
    v7 = 0;
    BiomeStreamsLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v2 = BiomeStreamsLibraryCore_frameworkLibrary_2;
  if (!BiomeStreamsLibraryCore_frameworkLibrary_2)
  {
    __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_cold_1_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "BiomeLibraryAndInternalLibraryNode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibraryAndInternalLibraryNodeSymbolLoc_ptr_2 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __BiomeStreamsLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BiomeStreamsLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_5_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

void sub_1AC18C724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for ManagedConfiguration()) init];
  static ManagedConfiguration.shared = result;
  return result;
}

id ManagedConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static ManagedConfiguration.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static ManagedConfiguration.shared;

  return v1;
}

BiomeFoundation::ManagedSetting __swiftcall ManagedSetting.init(wrappedValue:named:)(Swift::Bool wrappedValue, Swift::String named)
{
  *(v2 + 16) = wrappedValue;
  *v2 = named;
  *&result.key._object = named;
  LOBYTE(result.key._countAndFlagsBits) = wrappedValue;
  return result;
}

uint64_t ManagedConfiguration.allowAppleIntelligenceReport.getter()
{
  v1 = v0 + OBJC_IVAR____BMManagedConfiguration__allowAppleIntelligenceReport;
  v2 = *(v0 + OBJC_IVAR____BMManagedConfiguration__allowAppleIntelligenceReport);
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x1AC5AD040](v2, v3);
    v8 = [v6 effectiveBoolValueForSetting_];

    if (v8 == 2)
    {
      return 0;
    }

    if (v8 == 1)
    {
      return 1;
    }

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ManagedSetting.wrappedValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x1AC5AD040](v2, v1);
    v7 = [v5 effectiveBoolValueForSetting_];

    if (v7 == 1)
    {
      return 1;
    }

    if (v7 == 2)
    {
      return 0;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id ManagedConfiguration.init()()
{
  v1 = &v0[OBJC_IVAR____BMManagedConfiguration__allowAppleIntelligenceReport];
  *v1 = 0xD00000000000001CLL;
  *(v1 + 1) = 0x80000001AC19C550;
  v1[16] = 1;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for ManagedConfiguration();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ManagedConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ManagedSetting(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedSetting(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void BiomeStreamsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeStreamsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BMAccessControlPolicy.m" lineNumber:41 description:{@"%s", *a1}];

  __break(1u);
}

void __getBMStreamSyncPolicyClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBMStreamSyncPolicyClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMAccessControlPolicy.m" lineNumber:43 description:{@"Unable to find class %s", "BMStreamSyncPolicy"}];

  __break(1u);
}

void __getCCSetConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCSetConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMAccessControlPolicy.m" lineNumber:47 description:{@"Unable to find class %s", "CCSetConfiguration"}];

  __break(1u);
}

void __getCCSetConfigurationClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CascadeSetsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BMAccessControlPolicy.m" lineNumber:46 description:{@"%s", *a1}];

  __break(1u);
}

void BMWritePropertyList_cold_1(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_ERROR, "Failed to write data to handle with error %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void BMWritePropertyList_cold_2(uint64_t a1, unsigned __int8 *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138412546;
  v6 = a1;
  v7 = 1024;
  v8 = v3;
  _os_log_error_impl(&dword_1AC15D000, log, OS_LOG_TYPE_ERROR, "Parent directory: %@ does not exist (isDirectory: %i)", &v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

void BMServiceDomainForStream_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<_BMRootLibrary> __softlink__BiomeLibraryAndInternalLibraryNode(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMServiceDomain.m" lineNumber:31 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeStreamsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BMServiceDomain.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void __getCCSetLibraryConfigurationRegistryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCCSetLibraryConfigurationRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMServiceDomain.m" lineNumber:33 description:{@"Unable to find class %s", "CCSetLibraryConfigurationRegistry"}];

  __break(1u);
}

void __getCCSetLibraryConfigurationRegistryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntelligencePlatformLibraryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BMServiceDomain.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void BMSandboxCheck_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __getRBSProcessHandleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSProcessHandleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMProcess.m" lineNumber:33 description:{@"Unable to find class %s", "RBSProcessHandle"}];

  __break(1u);
}

void RunningBoardServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RunningBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BMProcess.m" lineNumber:32 description:{@"%s", *a1}];

  __break(1u);
}

void __getRBSTargetClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSTargetClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMProcess.m" lineNumber:34 description:{@"Unable to find class %s", "RBSTarget"}];

  __break(1u);
}

void __getRBSAssertionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSAssertionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMProcess.m" lineNumber:36 description:{@"Unable to find class %s", "RBSAssertion"}];

  __break(1u);
}

void __getRBSDomainAttributeClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSDomainAttributeClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMProcess.m" lineNumber:35 description:{@"Unable to find class %s", "RBSDomainAttribute"}];

  __break(1u);
}

void __getRBSAcquisitionCompletionAttributeClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRBSAcquisitionCompletionAttributeClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"BMProcess.m" lineNumber:37 description:{@"Unable to find class %s", "RBSAcquisitionCompletionAttribute"}];

  __break(1u);
}

void bm_openat_dprotected_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void bm_openat_dprotected_cold_2()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void bm_opendirat_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __biome_log_for_category(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  v1 = [MEMORY[0x1E696AD98] numberWithInt:22];
  OUTLINED_FUNCTION_6_0(v1);

  v2 = *MEMORY[0x1E69E9840];
}

void bm_opendirat_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void bm_opendirat_cold_3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void bm_opendirat_cold_4(int a1, int *a2)
{
  v4 = __biome_log_for_category(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1AC15D000, v4, OS_LOG_TYPE_ERROR, "bm_opendirat() should be passed O_DIRECTORY", v5, 2u);
  }

  *a2 = a1 | 0x100000;
}

void bm_opendirat_cold_5()
{
  v0 = __biome_log_for_category(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  v1 = [MEMORY[0x1E696AD98] numberWithInt:22];
  OUTLINED_FUNCTION_6_0(v1);
}

void bm_opendirat_cold_6()
{
  v0 = __biome_log_for_category(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0_1();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void bm_opendirat_cold_7()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = __biome_log_for_category(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_4_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
  }

  v1 = [MEMORY[0x1E696AD98] numberWithInt:22];
  OUTLINED_FUNCTION_6_0(v1);

  v2 = *MEMORY[0x1E69E9840];
}

void bm_opendirat_cold_8(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 componentsJoinedByString:{@", "}];
  v7 = 138478083;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_fault_impl(&dword_1AC15D000, a3, OS_LOG_TYPE_FAULT, "bm_opendirat(%{private}@) failed with sequence: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void _bm_set_protection_class_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  _os_log_fault_impl(&dword_1AC15D000, v0, OS_LOG_TYPE_FAULT, "fcntl(fd, F_GETPROTECTIONCLASS) failed: %{darwin.errno}d", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void _bm_set_protection_class_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  v4 = 1024;
  v5 = v0;
  _os_log_fault_impl(&dword_1AC15D000, v1, OS_LOG_TYPE_FAULT, "fcntl(fd, F_SETPROTECTIONCLASS, %d) failed: %{darwin.errno}d", v3, 0xEu);
  v2 = *MEMORY[0x1E69E9840];
}

void bm_new_temporary_file_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void bm_new_temporary_file_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void bm_new_temporary_file_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void bm_new_temporary_file_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void bm_new_temporary_file_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void bm_new_temporary_file_cold_6()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void bm_replace_file_cold_4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void bm_replace_file_cold_5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void bm_replace_file_cold_6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void bm_replace_file_cold_7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void bm_replace_file_cold_9()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void bm_replace_file_cold_10()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void bm_replace_file_cold_11()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *__error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x1E69E9840];
}

void bm_replace_file_cold_12()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void bm_replace_file_cold_14()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void bm_replace_file_cold_15()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void bm_replace_file_cold_16()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void bm_replace_file_cold_17()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeStreamsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BMAccessServer.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void get_DKMachServiceName_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *get_DKMachServiceName(void)"];
  [v0 handleFailureInFunction:v1 file:@"BMXPCConnectionFactory.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void CoreDuetLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreDuetLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BMXPCConnectionFactory.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getBiomeLibraryAndInternalLibraryNodeSymbolLoc_block_invoke_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BiomeStreamsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"BMFileServer.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}