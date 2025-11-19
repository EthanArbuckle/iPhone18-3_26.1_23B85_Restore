uint64_t create_sqlite3_db_profile(uint64_t a1, uint64_t **a2, _DWORD *a3, _BYTE *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    *a3 = 8;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v8 = *(a1 + 80);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *buf = 0;
  if (!(*(v10 + 72))(v9, 0, &v22, 100, buf, 0))
  {
    goto LABEL_12;
  }

  if (*buf <= 0x63uLL)
  {
    goto LABEL_12;
  }

  v11 = v23;
  v12 = __rev16(v23);
  LOWORD(v23) = v12;
  v13 = malloc_type_realloc(0, 0x38uLL, 0x1000040C4DFEAEFuLL);
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v13[6] = 0;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *(v13 + 52) = 1;
  v15 = 0x10000;
  if (v11 != 256)
  {
    v15 = v12;
  }

  *v13 = v8;
  v13[1] = v15;
  *(v13 + 8) = 4;
  if (*(a1 + 164) < ((v8 + 5242879) / 5242880))
  {
    free(v13);
LABEL_12:
    if (a4)
    {
      *a4 = 1;
    }

    v16 = (*(a1 + 168))(a1, a2, a3, 0);
    goto LABEL_15;
  }

  *a2 = v13;
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_10 != -1)
    {
      create_sqlite3_db_profile_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
    {
      v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"returning %u sections for %s\n", 1, *(a1 + 104));
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        create_sqlite3_db_profile_cold_2();
      }

      v20 = CK_DEFAULT_LOG_INTERNAL_10;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v19)
      {
        CFRelease(v19);
      }
    }

    v16 = 1;
    print_sections(v14, 1u);
  }

  else
  {
    v16 = 1;
  }

LABEL_15:
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

os_log_t __createChunkProfile_block_invoke_113()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __print_sections_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __print_sections_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __extension_from_uti_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __extension_from_uti_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __canonize_extension_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __canonize_extension_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_165()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_2_172()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_176()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_2_183()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_187()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_201()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_2_208()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_212()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_3_223()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_227()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_fixed_profile_block_invoke_3_235()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_safe_rabin_profile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_safe_rabin_profile_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_safe_rabin_profile_block_invoke_251()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_safe_rabin_profile_block_invoke_3_262()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_rabin_profile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_default_rabin_profile_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

uint64_t detect_magics(uint64_t a1, int *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v4 = (a1 + 32);
  v5 = *(a1 + 24);
  if (v5 >= 4 && (*v4 == 67324752 || *v4 == 101010256))
  {
    v6 = 3;
    goto LABEL_27;
  }

  if (is_ID3v2_tag(a1 + 32, v5))
  {
    v6 = 4;
LABEL_27:
    *a2 = v6;
    goto LABEL_28;
  }

  if (v5 >= 0xC)
  {
    v7 = *(a1 + 36);
    v8 = v7 != 1887007846;
    if (v7 == 1887007846 || *(a1 + 36) == 1987014509 || *(a1 + 36) == 1952539757)
    {
      LODWORD(v9) = 0;
      for (i = 0; i != 4; ++i)
      {
        v9 = *(v4 + i) | (v9 << 8);
      }

      if (gVerbose == 2)
      {
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          detect_magics_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"qt sz:0x%x, has_type:%d, %c%c%c%c\n", v9, !v8, *(a1 + 40), *(a1 + 41), *(a1 + 42), *(a1 + 43));
          if (CK_DEFAULT_LOG_BLOCK_10 != -1)
          {
            detect_magics_cold_2();
          }

          v12 = CK_DEFAULT_LOG_INTERNAL_10;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v17 = v11;
            _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (v11)
          {
            CFRelease(v11);
          }
        }
      }

      if (v8)
      {
        if (v9 >= 8)
        {
LABEL_25:
          v6 = 5;
          goto LABEL_27;
        }
      }

      else if (v9 >= 0xC)
      {
        v15 = *(a1 + 40) == 28781 && *(a1 + 42) == 52;
        if (v15 || *(a1 + 40) == 538997873 || *(a1 + 40) == 542520397 || *(a1 + 40) == 541144141)
        {
          goto LABEL_25;
        }
      }
    }
  }

LABEL_28:
  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

BOOL is_ID3v2_tag(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xA)
  {
    return 0;
  }

  v2 = *a1 == 17481 && *(a1 + 2) == 51;
  return v2 && *(a1 + 3) != 255 && *(a1 + 4) != 255 && *(a1 + 6) <= 0x80u && *(a1 + 7) <= 0x80u && *(a1 + 8) <= 0x80u && *(a1 + 9) < 0x81u;
}

os_log_t __is_qt_header_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __is_qt_header_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_custom_fixed_profile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_custom_fixed_profile_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_320()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_331()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_335()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_343()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_347()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_358()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

uint64_t locate_zip64_extra_field(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, _DWORD *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3 >= 4)
  {
    v7 = a3;
    v9 = *(a1 + 8);
    v10 = *(a1 + 16);
    v18 = 0;
    while (1)
    {
      v17 = 0;
      if (((*(v10 + 72))(v9, a2, &v18, 4, &v17, 0) & 1) == 0)
      {
        break;
      }

      if (v17 != 4)
      {
        if (gVerbose == 2)
        {
          if (CK_DEFAULT_LOG_BLOCK_10 != -1)
          {
            locate_zip64_extra_field_cold_3();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
          {
            v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to read extra-field-hdr at 0x%llx\n", a2);
            if (CK_DEFAULT_LOG_BLOCK_10 != -1)
            {
              locate_zip64_extra_field_cold_4();
            }

            v14 = CK_DEFAULT_LOG_INTERNAL_10;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v20 = v13;
LABEL_28:
              _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
            }

            goto LABEL_29;
          }
        }

        goto LABEL_31;
      }

      v11 = HIWORD(v18) + 4;
      v12 = v7 >= v11;
      v7 -= v11;
      if (!v12)
      {
        goto LABEL_31;
      }

      if (v18 == 1)
      {
        result = 0;
        *a4 = a2;
        *a5 = v11;
        goto LABEL_32;
      }

      a2 += v11;
      if (v7 <= 3)
      {
        goto LABEL_31;
      }
    }

    if (gVerbose == 2)
    {
      if (CK_DEFAULT_LOG_BLOCK_10 != -1)
      {
        locate_zip64_extra_field_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
      {
        v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to read extra-field-hdr at 0x%llx\n", a2);
        if (CK_DEFAULT_LOG_BLOCK_10 != -1)
        {
          locate_zip64_extra_field_cold_2();
        }

        v14 = CK_DEFAULT_LOG_INTERNAL_10;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v20 = v13;
          goto LABEL_28;
        }

LABEL_29:
        if (v13)
        {
          CFRelease(v13);
        }
      }
    }
  }

LABEL_31:
  result = 0xFFFFFFFFLL;
LABEL_32:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __create_zip_profile_block_invoke_362()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_373()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_378()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_389()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_393()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_401()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_405()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_416()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

uint64_t cmp_dir_rec_data(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

os_log_t __create_zip_profile_block_invoke_420()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_431()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

char *add_sections(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = malloc_type_realloc(a1, 56 * (a3 + a2), 0x1000040C4DFEAEFuLL);
  v6 = v5;
  if (v5)
  {
    bzero(&v5[56 * a2], 56 * a3);
  }

  return v6;
}

os_log_t __create_zip_profile_block_invoke_435()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_446()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_450()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_458()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_462()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_473()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_477()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_488()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_492()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_503()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_507()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_zip_profile_block_invoke_3_515()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_529()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_2_533()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_537()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_551()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_2_558()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_562()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_2_566()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_570()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_3_581()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_585()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_2_592()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_596()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_2_600()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_604()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_3_615()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_619()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_3_630()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_634()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_central_dir_block_invoke_3_645()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_zip64_extra_field_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_zip64_extra_field_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_zip64_extra_field_block_invoke_661()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __locate_zip64_extra_field_block_invoke_3_669()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_mp3_profile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_mp3_profile_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_mp3_profile_block_invoke_685()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_mp3_profile_block_invoke_2_692()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_mp3_profile_block_invoke_697()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_mp3_profile_block_invoke_3_710()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_mp3_profile_block_invoke_715()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_mp3_profile_block_invoke_3_723()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_sqlite3_db_wal_profile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_sqlite3_db_wal_profile_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_sqlite3_db_profile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

os_log_t __create_sqlite3_db_profile_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_10 = result;
  return result;
}

uint64_t CKProfileResultsCreate(uint64_t *a1, int a2, const void *a3, const void *a4, uint64_t a5, void *a6)
{
  if (!a1)
  {
    CKProfileResultsCreate_cold_1();
  }

  if (a6)
  {
    *a6 = 0;
  }

  *a1 = 0;
  v11 = CKTypeRegister(&CKProfileResultsGetTypeID_typeID);
  result = CKTypeCreateInstance_(0, v11, 0x30uLL);
  if (result)
  {
    v13 = result;
    *(result + 16) = a2;
    *(result + 24) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    *(v13 + 32) = a4;
    if (a4)
    {
      CFRetain(a4);
    }

    *(v13 + 40) = a5;
    *a1 = v13;
    return 1;
  }

  return result;
}

uint64_t CKProfileResultsType(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t CKProfileResultsConfigurationVersion(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t CKProfileResultsResolvedFileExtension(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t CKProfileResultsIsDefault(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

const char *CKProfileTypeDescription(unsigned int a1)
{
  if (a1 > 9)
  {
    return "kCKProfileTypeUnknown";
  }

  else
  {
    return (&off_278DBC560)[a1];
  }
}

uint64_t CKProfileTypeFromString(const void *a1)
{
  if (CFEqual(a1, @"kCKProfileTypeNone"))
  {
    return 0;
  }

  if (CFEqual(a1, @"kCKProfileTypeFixed"))
  {
    return 1;
  }

  if (CFEqual(a1, @"kCKProfileTypeRabin"))
  {
    return 2;
  }

  if (CFEqual(a1, @"kCKProfileTypeZip"))
  {
    return 3;
  }

  if (CFEqual(a1, @"kCKProfileTypeMP3"))
  {
    return 4;
  }

  if (CFEqual(a1, @"kCKProfileTypeQuicktime"))
  {
    return 5;
  }

  if (CFEqual(a1, @"kCKProfileTypeCustomFixed"))
  {
    return 6;
  }

  if (CFEqual(a1, @"kCKProfileTypeSQLiteDatabaseWAL"))
  {
    return 7;
  }

  if (CFEqual(a1, @"kCKProfileTypeSQLiteDatabase"))
  {
    return 8;
  }

  if (CFEqual(a1, @"kCKProfileTypeSQLiteDatabaseS"))
  {
    return 9;
  }

  return 0;
}

const char *CKDefaultProfilePolicyTypeDescription(int a1)
{
  v1 = "kCKDefaultProfilePolicyTypeUnknown";
  if (a1 == 1)
  {
    v1 = "kCKDefaultProfilePolicyTypeFixedLength";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "kCKDefaultProfilePolicyTypeInferred";
  }
}

void _CKProfileResultsCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 24) = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  *(a1 + 32) = 0;
}

CFStringRef _CKProfileResultsCFCopyFormatDescription(uint64_t a1)
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v5 = "(null)";
  }

  else if (CFBooleanGetValue(0))
  {
    v5 = "T";
  }

  else
  {
    v5 = "F";
  }

  v6 = CKProfileTypeDescription(v2);
  return CFStringCreateWithFormat(v1, 0, @"type:%s configVersion:%@ ext:%@ isDefault:%s", v6, v3, v4, v5);
}

uint64_t CKChunkSignatureGeneratorV1Init(uint64_t a1)
{
  CC_SHA256_Init(*(a1 + 48));
  *(a1 + 40) = 0;
  return 1;
}

uint64_t CKChunkSignatureGeneratorV1Update(uint64_t a1, const void *a2, CC_LONG a3)
{
  *(a1 + 40) += a3;
  CC_SHA256_Update(*(a1 + 48), a2, a3);
  return 1;
}

uint64_t CKChunkSignatureGeneratorV1Finish(uint64_t a1, uint64_t a2, uint64_t *a3, CFErrorRef *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  *md = 0u;
  v30 = 0u;
  v9 = (a1 + 32);
  v8 = *(a1 + 32);
  if (!v8)
  {
    CC_SHA256_Final(md, *(a1 + 48));
    v28 = CKChunkDigestArgumentsChunkSchemeByte(*(a1 + 24));
    v13 = CKChunkDigestArgumentsChunkEncryptionKeySchemeByte(*(a1 + 24));
    v27 = v13;
    if (v13)
    {
      v14 = CKSchemeAndEncryptionKeySize(&v27);
      v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
      v10 = v15;
      if (!v15)
      {
        v11 = 0;
        goto LABEL_21;
      }

      *v15 = v27;
      v16 = CKChunkEncryptionKeySize(v15);
      bzero(v10 + 1, v16);
      v17 = 0;
      v18 = &v30;
      do
      {
        v19 = *(v18 - 16);
        v20 = *v18++;
        v10[++v17] = v20 ^ v19;
      }

      while (v17 != 16);
    }

    else
    {
      v10 = 0;
    }

    v21 = CKChunkSchemeAndSignatureSize(&v28);
    v11 = malloc_type_malloc(v21, 0x100004077774924uLL);
    if (!v11)
    {
      goto LABEL_21;
    }

    CC_SHA256(md, 0x20u, md);
    *v11 = v28;
    v22 = *md;
    *(v11 + 17) = v30;
    *(v11 + 1) = v22;
    if (!CKChunkDigestResultsCreate((a1 + 32), v11, v10, *(a1 + 40)))
    {
      goto LABEL_21;
    }

    if (a2)
    {
      v12 = CKChunkDigestResultsSignatureAndKeyEqual(a2, *v9);
      if (!v12)
      {
        v23 = CFErrorCreate(*MEMORY[0x277CBECE8], @"com.apple.chunkinglibrary", 4, 0);
        v24 = v23;
        if (a4 && v23)
        {
          CFRetain(v23);
          *a4 = v24;
LABEL_27:
          CFRelease(v24);
          goto LABEL_21;
        }

        if (v23)
        {
          goto LABEL_27;
        }

LABEL_21:
        v12 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v12 = 1;
    }

    v8 = *v9;
    if (!*v9)
    {
      CKChunkSignatureGeneratorV1Finish_cold_1();
    }

    goto LABEL_5;
  }

  v10 = 0;
  v11 = 0;
  v12 = 1;
LABEL_5:
  if (a3)
  {
    CFRetain(v8);
    *a3 = *v9;
  }

LABEL_22:
  free(v10);
  free(v11);
  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t CKFileDigestResultsV1Alloc(void *a1)
{
  *a1 = 0;
  v3 = 0;
  result = CKFileDigestResultsAllocate(&v3, 1, 0);
  if (result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t CKFileDigestResultsV1Create(void *a1, _BYTE *a2, uint64_t a3)
{
  cf = 0;
  v12 = 0;
  *a1 = 0;
  v6 = CKFileDigestResultsAllocate(&cf, 1, 0);
  v7 = 0;
  v8 = cf;
  if (v6 && cf)
  {
    v9 = _CKFileDigestResultsInit(cf, a2, a3, &v12);
    v8 = cf;
    if (!v9)
    {
      v7 = 0;
      if (!cf)
      {
        return v7;
      }

      goto LABEL_8;
    }

    if (cf)
    {
      CFRetain(cf);
      v8 = cf;
    }

    *a1 = v8;
    v7 = 1;
  }

  if (v8)
  {
LABEL_8:
    CFRelease(v8);
  }

  return v7;
}

BOOL CKFileDigestResultsV1IsEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 == v3)
  {
    return 1;
  }

  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4 && CKFileSignaturesEqual(v2, v3);
}

CFStringRef CKFileDigestResultsV1CopyDescription(uint64_t a1)
{
  v2 = CKFileSchemeAndSignatureCopyCString(*(a1 + 32));
  v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"sig %s len %llu", v2, *(a1 + 24));
  free(v2);
  return v3;
}