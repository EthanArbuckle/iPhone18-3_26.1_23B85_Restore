uint64_t cdf_file_dir_info(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = &off_278348B40;
  for (i = &dword_278348B60; ; i += 20)
  {
    v7 = &sectioninfo[10 * v4];
    v8 = v7[2];
    if (v8)
    {
      break;
    }

LABEL_6:
    ++v4;
    v5 += 10;
    if (v4 == 6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v9 = v5;
  v10 = i;
  while (1)
  {
    v11 = *v10++;
    if (cdf_find_stream(a2, v8, v11) >= 1)
    {
      break;
    }

    v18 = *v9++;
    v8 = v18;
    if (!v18)
    {
      goto LABEL_6;
    }
  }

  v20 = *(a1 + 68);
  if ((v20 & 0x410) == 0)
  {
    result = file_printf(a1, "CDFV2 %s", v12, v13, v14, v15, v16, v17, *v7);
LABEL_12:
    if (result == -1)
    {
      return result;
    }

    return 1;
  }

  if ((v20 & 0x10) != 0)
  {
    result = file_printf(a1, "application/%s", v12, v13, v14, v15, v16, v17, v7[1]);
    goto LABEL_12;
  }

  return 1;
}

const char *cdf_app_to_mime(const char *a1, const char **a2)
{
  v4 = newlocale(2, "C", 0);
  if (!v4)
  {
    __assert_rtn("cdf_app_to_mime", "readcdf.c", 119, "c_lc_ctype != NULL");
  }

  v5 = v4;
  v6 = uselocale(v4);
  if (!v6)
  {
    __assert_rtn("cdf_app_to_mime", "readcdf.c", 121, "old_lc_ctype != NULL");
  }

  v7 = v6;
  v8 = *a2;
  if (*a2)
  {
    v9 = 0;
    v10 = a2 + 2;
    while (!strcasestr(a1, v8))
    {
      ++v9;
      v11 = *v10;
      v10 += 2;
      v8 = v11;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    v12 = a2[2 * v9 + 1];
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

  uselocale(v7);
  freelocale(v5);
  return v12;
}

id WFTypeCheckObject(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3 || (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_opt_class() == a2 || objc_opt_class() == a2 || objc_opt_class() == a2 || objc_opt_class() == a2)
    {
      v7 = [MEMORY[0x277CCAC58] propertyListWithData:v3 options:0 format:0 error:0];
      if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = getWFGeneralLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          v15 = 136315906;
          v16 = "WFEnforceClass";
          v17 = 2114;
          v18 = v7;
          v19 = 2114;
          v20 = objc_opt_class();
          v21 = 2114;
          v22 = a2;
          v9 = v20;
          _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v15, 0x2Au);
        }

        v5 = 0;
      }

      else
      {
        v5 = v7;
      }
    }

    else
    {
      if (objc_opt_class() == a2)
      {
        v4 = [MEMORY[0x277CCACA8] wf_stringWithData:v3];
        goto LABEL_4;
      }

      if (objc_opt_class() != a2)
      {
        goto LABEL_15;
      }

      v14 = MEMORY[0x277CBEBC0];
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
      v5 = [v14 URLWithString:v7];
    }

    goto LABEL_5;
  }

LABEL_15:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_opt_class() == a2)
    {
      v10 = MEMORY[0x277CCA980];
      v11 = [MEMORY[0x277CBEAF8] currentLocale];
      v5 = [v10 decimalNumberWithString:v3 locale:v11];

      if (v5)
      {
        v12 = [MEMORY[0x277CCA980] notANumber];
        v13 = [v5 isEqual:v12];

        if ((v13 & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      if (objc_opt_class() == a2)
      {
        v4 = [v3 dataUsingEncoding:4];
        goto LABEL_4;
      }

      if (objc_opt_class() == a2)
      {
        v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
        goto LABEL_4;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_opt_class() == a2)
  {
    v4 = [v3 description];
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && objc_opt_class() == a2)
  {
    v4 = [v3 absoluteString];
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

id WFLocalizedString(void *a1)
{
  v1 = a1;
  v2 = WFCurrentBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id WFCurrentBundle()
{
  if (WFCurrentBundle_onceToken != -1)
  {
    dispatch_once(&WFCurrentBundle_onceToken, &__block_literal_global_20959);
  }

  v1 = WFCurrentBundle_bundle;

  return v1;
}

void __WFCurrentBundle_block_invoke()
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v4, 0, sizeof(v4));
  if (dladdr(WFCurrentBundle, &v4) && v4.dli_fname)
  {
    v0 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v4.dli_fname isDirectory:0 relativeToURL:0];
    v1 = _CFBundleCopyBundleURLForExecutableURL();
    v2 = [MEMORY[0x277CCA8D8] bundleWithURL:v1];
    v3 = WFCurrentBundle_bundle;
    WFCurrentBundle_bundle = v2;
  }

  else
  {
    v0 = getWFGeneralLogObject();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&dword_21E1BD000, v0, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}

id WFLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = WFCurrentBundle();
  v6 = [v5 localizedStringForKey:v4 value:v3 table:0];

  return v6;
}

id WFLocalizedPluralString(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = MEMORY[0x277CCACA8];
    v3 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    v4 = [v2 stringWithFormat:@"%@ (Pluralization)", v3];

    v5 = WFCurrentBundle();
    v6 = [v5 localizedStringForKey:v4 value:v1 table:0];
  }

  else
  {
    v6 = v1;
  }

  return v6;
}

id WFLocalizedContentPropertyNameMarker(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 stringWithFormat:@"%@ (Content Property Name)", v2];
  v4 = WFDeferrableLocalizedStringWithKey(v3, v2);

  return v4;
}

id WFDeferrableLocalizedStringWithKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277D79F10];
  v4 = a2;
  v5 = a1;
  v6 = [[v3 alloc] initWithString:v4];
  v7 = WFCurrentBundle();
  v8 = [v7 localizedStringForKey:v5 value:v4 table:0];
  [v6 setLocalizedValue:v8];

  v9 = WFLocalizedStringResourceWithKey(v5, v4);

  [v6 setStringResource:v9];

  return v6;
}

id WFLocalizedStringResourceWithKey(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCAEB8];
  v4 = a2;
  v5 = a1;
  v6 = [v3 alloc];
  v7 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v8 = WFCurrentBundle();
  v9 = [v8 bundleURL];
  v10 = [v6 initWithKey:v5 defaultValue:v4 table:0 locale:v7 bundleURL:v9];

  return v10;
}

id WFLocalizedContentPropertyNameMarkerWithContext(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = [v3 stringWithFormat:@"%@ (%@) (Content Property Name)", v4, a2];
  v6 = WFDeferrableLocalizedStringWithKey(v5, v4);

  return v6;
}

id WFLocalizedContentPropertyPossibleValueMarker(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = a1;
  v3 = [v1 stringWithFormat:@"%@ (Content Property Possible Value)", v2];
  v4 = WFDeferrableLocalizedStringWithKey(v3, v2);

  return v4;
}

id WFLocalizedContentPropertyName(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 localizedValue];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (Content Property Name)", v1];
    v2 = WFLocalizedStringWithKey(v3, v1);
  }

  return v2;
}

uint64_t dophn_core(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t __fd, off_t a5, uint64_t a6, uint64_t __nbyte, uint64_t a8, int *a9, _WORD *a10)
{
  v64 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 68) & 0x410) != 0)
  {
    return 0;
  }

  v11 = a6;
  if (!a6)
  {
    v48 = ", no program header";
    goto LABEL_50;
  }

  v13 = __nbyte;
  v15 = 56;
  if (a2 == 1)
  {
    v15 = 32;
  }

  if (v15 != __nbyte)
  {
    v48 = ", corrupted program header size";
LABEL_50:
    if (file_printf(a1, v48, a3, __fd, a5, a6, __nbyte, a8, v55) == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  v17 = __fd;
  v61 = 0u;
  v62 = 0u;
  memset(v58, 0, sizeof(v58));
  v19 = v58;
  if (a2 == 1)
  {
    v19 = &v61;
  }

  __buf = v19;
  v59 = 0uLL;
  v21 = a5;
  v22 = a6;
  v60 = 0;
  while (1)
  {
    if (pread(v17, __buf, v13, v21) < v13)
    {
      v49 = __error();
      file_error(a1, *v49, "error reading", v50, v51, v52, v53, v54, v55);
      return 0xFFFFFFFFLL;
    }

    if (a8 == -1)
    {
      break;
    }

    if (a2 == 1)
    {
      v23 = bswap32(DWORD1(v61));
      v24 = a3 ? v23 : DWORD1(v61);
    }

    else
    {
      v24 = *(&v58[0] + 1);
      v25 = bswap64(*(&v58[0] + 1));
      if (a3)
      {
        v24 = v25;
      }
    }

    if (v24 <= a8)
    {
      break;
    }

LABEL_46:
    v13 = __nbyte;
    v21 += __nbyte;
    if (!--v22)
    {
      return 0;
    }
  }

  if (a2 == 1)
  {
    v26 = v61;
    v27 = bswap32(v61);
    if (a3)
    {
      v26 = v27;
    }

    if (v26 != 4)
    {
      goto LABEL_46;
    }

    v28 = v62;
    v29 = bswap32(v62);
    if (a3)
    {
      v28 = v29;
    }

    v30 = bswap32(DWORD1(v61));
    if (a3)
    {
      v31 = v30;
    }

    else
    {
      v31 = DWORD1(v61);
    }

    if (v28 >= 0x400)
    {
      v32 = 1024;
    }

    else
    {
      v32 = v28;
    }
  }

  else
  {
    v33 = v58[0];
    v34 = bswap32(v58[0]);
    if (a3)
    {
      v33 = v34;
    }

    if (v33 != 4)
    {
      goto LABEL_46;
    }

    v35 = v59;
    v36 = bswap64(v59);
    if (a3)
    {
      v35 = v36;
    }

    v37 = bswap64(*(&v58[0] + 1));
    if (a3)
    {
      v31 = v37;
    }

    else
    {
      v31 = *(&v58[0] + 1);
    }

    if (v35 >= 0x400)
    {
      v32 = 1024;
    }

    else
    {
      v32 = v35;
    }
  }

  v38 = pread(v17, v63, v32, v31);
  if (v38 != -1)
  {
    v46 = v38;
    v47 = 0;
    do
    {
      if (v47 >= v46)
      {
        break;
      }

      v47 = donote(a1, v63, v47, v46, a2, a3, 4uLL, a9, a10, v17, a5, v11, a8);
    }

    while (v47);
    goto LABEL_46;
  }

  file_badread(a1, v39, v40, v41, v42, v43, v44, v45, v55);
  return 0xFFFFFFFFLL;
}

uint64_t dophn_exec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t __fd, off_t a5, uint64_t a6, uint64_t __nbyte, uint64_t a8, int a9, int *a10, _WORD *a11)
{
  v91 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    v63 = ", no program header";
    goto LABEL_108;
  }

  v12 = __nbyte;
  v14 = 56;
  if (a2 == 1)
  {
    v14 = 32;
  }

  if (v14 != __nbyte)
  {
    v63 = ", corrupted program header size";
LABEL_108:
    if (file_printf(a1, v63, a3, __fd, a5, a6, __nbyte, a8, v76) == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = __fd;
  v20 = v81;
  if (a2 == 1)
  {
    v20 = &v84;
  }

  __buf = v20;
  if (a2 == 1)
  {
    v21 = 8;
  }

  else
  {
    v21 = 16;
  }

  v84 = 0uLL;
  v85 = 0uLL;
  v78 = "statically";
  memset(v81, 0, sizeof(v81));
  v82 = 0uLL;
  v83 = 0;
  v87[0] = 0;
  do
  {
    if (pread(v18, __buf, v12, v17) < v12)
    {
LABEL_111:
      v64 = __error();
      file_error(a1, *v64, "error reading", v65, v66, v67, v68, v69, v76);
      return 0xFFFFFFFFLL;
    }

    v28 = v81;
    if (a2 == 1)
    {
      v28 = &v84;
    }

    v29 = *v28;
    v30 = bswap32(v29);
    if (a3)
    {
      v31 = v30;
    }

    else
    {
      v31 = v29;
    }

    if (v31 == 2)
    {
      v78 = "dynamically";
      goto LABEL_27;
    }

    v32 = 4;
    if (v31 == 3)
    {
      goto LABEL_28;
    }

    if (v31 == 4)
    {
      if (a9)
      {
        goto LABEL_103;
      }

      if (a2 == 1)
      {
        if (HIDWORD(v85))
        {
          v33 = bswap32(HIDWORD(v85));
          if (a3)
          {
            v32 = v33;
          }

          else
          {
            v32 = HIDWORD(v85);
          }

          goto LABEL_97;
        }

LABEL_96:
        v32 = 4;
        goto LABEL_97;
      }

      if (!v83)
      {
        goto LABEL_96;
      }

      v61 = bswap64(v83);
      if (a3)
      {
        v32 = v61;
      }

      else
      {
        v32 = v83;
      }

LABEL_97:
      if (v32 < 4 || (v32 & 0x80000000) != 0)
      {
        result = file_printf(a1, ", invalid note alignment %#lx", v22, v23, v24, v25, v26, v27, v32);
        if (result == -1)
        {
          return result;
        }

LABEL_27:
        v32 = 4;
      }

LABEL_28:
      if (a2 == 1)
      {
        v34 = v85;
        v35 = bswap32(v85);
        if (a3)
        {
          v34 = v35;
        }

        v36 = bswap32(DWORD1(v84));
        if (a3)
        {
          v37 = v36;
        }

        else
        {
          v37 = DWORD1(v84);
        }

        if (v34 >= 0x400)
        {
          v38 = 1024;
        }

        else
        {
          v38 = v34;
        }
      }

      else
      {
        v39 = v82;
        v40 = bswap64(v82);
        if (a3)
        {
          v39 = v40;
        }

        v41 = bswap64(*(&v81[0] + 1));
        if (a3)
        {
          v37 = v41;
        }

        else
        {
          v37 = *(&v81[0] + 1);
        }

        if (v39 >= 0x400)
        {
          v38 = 1024;
        }

        else
        {
          v38 = v39;
        }
      }

      v42 = pread(v18, v90, v38, v37);
      if (v42 == -1)
      {
        goto LABEL_111;
      }

      v43 = v42;
      v44 = v81;
      if (a2 == 1)
      {
        v44 = &v84;
      }

      v29 = *v44;
      v30 = bswap32(v29);
      goto LABEL_58;
    }

    if (v15 != -1)
    {
      if (a2 == 1)
      {
        v45 = bswap32(DWORD1(v84));
        v46 = a3 ? v45 : DWORD1(v84);
      }

      else
      {
        v46 = *(&v81[0] + 1);
        v47 = bswap64(*(&v81[0] + 1));
        if (a3)
        {
          v46 = v47;
        }
      }

      if (v46 > v15)
      {
        goto LABEL_103;
      }
    }

    v43 = 0;
    v32 = 4;
LABEL_58:
    if (a3)
    {
      v29 = v30;
    }

    switch(v29)
    {
      case 4u:
        if ((*(a1 + 68) & 0x410) != 0)
        {
          return 0;
        }

        v22 = 0;
        do
        {
          if (v22 >= v43)
          {
            break;
          }

          v22 = donote(a1, v90, v22, v43, a2, a3, v32, a10, a11, v18, 0, 0, 0);
        }

        while (v22);
        break;
      case 3u:
        if ((*(a1 + 68) & 0x410) == 0)
        {
          if (v43 && v90[0])
          {
            v90[v43 - 1] = 0;
            __memcpy_chk();
          }

          else
          {
            __strlcpy_chk();
          }
        }

        break;
      case 2u:
        v48 = 0;
        v49 = *(a1 + 96);
        v50 = v49 & 0xFFFFFFB6;
        *(a1 + 96) = v49 & 0xFFB6;
        while (1)
        {
          if (v48 >= v43)
          {
LABEL_82:
            v15 = a8;
            goto LABEL_102;
          }

          v51 = v48 + v21;
          if (v48 + v21 <= v43)
          {
            v86 = 0;
            v89 = 0;
            v88 = 0;
            __memcpy_chk();
            if (a2 == 1)
            {
              v52 = v86;
              v53 = bswap32(v86);
              if (a3)
              {
                v52 = v53;
              }

              if (v52 != 1879048187)
              {
                goto LABEL_81;
              }

              v54 = HIDWORD(v86);
              v55 = bswap32(HIDWORD(v86));
              if (a3)
              {
                v54 = v55;
              }
            }

            else
            {
              v56 = v88;
              v57 = bswap64(v88);
              if (a3)
              {
                v56 = v57;
              }

              if (v56 != 1879048187)
              {
                goto LABEL_81;
              }

              v54 = v89;
              v58 = bswap64(v89);
              if (a3)
              {
                v54 = v58;
              }
            }

            v59 = v50 & 0xFFFFFFB6;
            if ((v54 & 0x8000000) != 0)
            {
              v60 = 73;
            }

            else
            {
              v60 = 0;
            }

            v50 = v60 | v59;
            *(a1 + 96) = v60 | v59;
          }

LABEL_81:
          v48 = v51;
          if (!v51)
          {
            goto LABEL_82;
          }
        }

      default:
        break;
    }

LABEL_102:
    v12 = __nbyte;
LABEL_103:
    v17 += v12;
    --v16;
  }

  while (v16);
  if ((*(a1 + 68) & 0x410) != 0)
  {
    return 0;
  }

  result = file_printf(a1, ", %s linked", v22, v23, v24, v25, v26, v27, v78);
  if (result != -1)
  {
    if (!v87[0])
    {
      return 0;
    }

    file_printable(&v88, 1024, v87, 1024);
    result = file_printf(a1, ", interpreter %s", v70, v71, v72, v73, v74, v75, &v88);
    if (result != -1)
    {
      return 0;
    }
  }

  return result;
}

uint64_t doshn(uint64_t a1, int a2, uint64_t a3, uint64_t __fd, uint64_t a5, uint64_t a6, uint64_t __nbyte, uint64_t a8, unsigned int a9, unsigned int a10, int *a11, _WORD *a12)
{
  v153 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 68) & 0x410) != 0)
  {
    return 0;
  }

  v13 = a6;
  if (!a6)
  {
    v23 = ", no section header";
    goto LABEL_14;
  }

  v17 = 64;
  if (a2 == 1)
  {
    v17 = 40;
  }

  if (v17 != __nbyte)
  {
    v23 = ", corrupted section header size";
    goto LABEL_14;
  }

  v19 = a5;
  v20 = __fd;
  v149 = 0;
  v147 = 0u;
  v148 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  if (a2 == 1)
  {
    v22 = &v147;
  }

  else
  {
    v22 = &v143;
  }

  if (pread(__fd, v22, __nbyte, a5 + a10 * __nbyte) < __nbyte)
  {
    v23 = ", missing section headers";
LABEL_14:
    v24 = file_printf(a1, v23, a3, __fd, a5, a6, __nbyte, a8, v133);
    goto LABEL_15;
  }

  if (a2 == 1)
  {
    v25 = bswap32(v148);
    if (a3)
    {
      v26 = v25;
    }

    else
    {
      v26 = v148;
    }
  }

  else
  {
    v26 = *(&v144 + 1);
    v27 = bswap64(*(&v144 + 1));
    if (a3)
    {
      v26 = v27;
    }
  }

  v140 = v26;
  if (a8 != -1 && v26 > a8)
  {
    v24 = file_printf(a1, ", too large section header offset %jd", a3, __fd, a5, a6, __nbyte, a8, v26);
    goto LABEL_15;
  }

  v137 = 0;
  v138 = 0;
  v139 = 0;
  v142 = 0;
  v136 = v22;
  v28 = 16;
  if (a2 == 1)
  {
    v28 = 8;
  }

  v141 = v28;
  v29 = vdup_n_s32(a3 == 0);
  v30 = vcltz_s32(vshl_n_s32(v29, 0x1FuLL));
  v31.i64[0] = v29.u32[0];
  v31.i64[1] = v29.u32[1];
  v135 = vcltzq_s64(vshlq_n_s64(v31, 0x3FuLL));
  v32 = 1;
  do
  {
    v33 = &v143;
    if (a2 == 1)
    {
      v33 = &v147;
    }

    LODWORD(v33) = *v33;
    v34 = bswap32(v33);
    if (a3)
    {
      v33 = v34;
    }

    else
    {
      v33 = v33;
    }

    v35 = pread(v20, &__buf, 0x31uLL, v140 + v33);
    if (v35 == -1)
    {
      goto LABEL_178;
    }

    *(&__buf + v35) = 0;
    v43 = __buf ^ 0x695F67756265642ELL | v152 ^ 0x6F666ELL;
    v44 = v43 == 0;
    if (!v43)
    {
      v32 = 0;
    }

    v45 = v142;
    if (v44)
    {
      v45 = 1;
    }

    v142 = v45;
    if (pread(v20, v22, __nbyte, v19) < __nbyte)
    {
LABEL_178:
      file_badread(a1, v36, v37, v38, v39, v40, v41, v42, v133);
      return 0xFFFFFFFFLL;
    }

    if (a2 == 1)
    {
      v46 = DWORD1(v147);
      v47 = bswap32(DWORD1(v147));
      if (a3)
      {
        v46 = v47;
      }

      if (v46 == 2)
      {
        v48 = 0;
      }

      else
      {
        v48 = v32;
      }

      if (a8 == -1 || v46 == 2)
      {
        goto LABEL_65;
      }

      v49 = bswap32(v148);
      if (a3)
      {
        v50 = v49;
      }

      else
      {
        v50 = v148;
      }
    }

    else
    {
      v46 = DWORD1(v143);
      v51 = bswap32(DWORD1(v143));
      if (a3)
      {
        v46 = v51;
      }

      if (v46 == 2)
      {
        v48 = 0;
      }

      else
      {
        v48 = v32;
      }

      if (a8 == -1 || v46 == 2)
      {
LABEL_65:
        v32 = v48;
        goto LABEL_66;
      }

      v50 = *(&v144 + 1);
      v52 = bswap64(*(&v144 + 1));
      if (a3)
      {
        v50 = v52;
      }
    }

    if (v50 > a8)
    {
      goto LABEL_124;
    }

LABEL_66:
    if (v46 != 1879048181)
    {
      if (v46 != 7)
      {
        goto LABEL_124;
      }

      if (a2 == 1)
      {
        v53 = bswap32(DWORD1(v148));
        if (a3)
        {
          v54 = v53;
        }

        else
        {
          v54 = DWORD1(v148);
        }

        LODWORD(v55) = bswap32(v148);
        if (a3)
        {
          v55 = v55;
        }

        else
        {
          v55 = v148;
        }

        if (v55 + v54 <= a8)
        {
          v56 = malloc_type_malloc(v54, 0xA72EE54CuLL);
          if (v56)
          {
            v57 = v56;
            v58 = bswap32(DWORD1(v148));
            if (a3)
            {
              v59 = v58;
            }

            else
            {
              v59 = DWORD1(v148);
            }

            v60 = bswap32(v148);
            if (a3)
            {
              v61 = v60;
            }

            else
            {
              v61 = v148;
            }

            v62 = pread(v20, v56, v59, v61);
            v70 = bswap32(DWORD1(v148));
            if (a3)
            {
              v71 = v70;
            }

            else
            {
              v71 = DWORD1(v148);
            }

LABEL_108:
            if (v62 >= v71)
            {
              v82 = 0;
              while (1)
              {
                if (a2 == 1)
                {
                  v83 = bswap32(DWORD1(v148));
                  if (a3)
                  {
                    v84 = v83;
                  }

                  else
                  {
                    v84 = DWORD1(v148);
                  }

                  if (v82 >= v84)
                  {
                    goto LABEL_122;
                  }

                  v85 = donote(a1, v57, v82, v84, 1, a3, 4uLL, a11, a12, v20, 0, 0, 0);
                }

                else
                {
                  v86 = bswap64(v145);
                  if (a3)
                  {
                    v87 = v86;
                  }

                  else
                  {
                    v87 = v145;
                  }

                  if (v82 >= v87)
                  {
LABEL_122:
                    free(v57);
                    goto LABEL_123;
                  }

                  v85 = donote(a1, v57, v82, v87, 2, a3, 4uLL, a11, a12, v20, 0, 0, 0);
                }

                v82 = v85;
                if (!v85)
                {
                  goto LABEL_122;
                }
              }
            }

            file_badread(a1, v63, v64, v65, v66, v67, v68, v69, v133);
            free(v57);
            return 0xFFFFFFFFLL;
          }

LABEL_191:
          v118 = __error();
          file_error(a1, *v118, "Cannot allocate memory for note", v119, v120, v121, v122, v123, v133);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v74 = bswap64(v145);
        if (a3)
        {
          v75 = v74;
        }

        else
        {
          v75 = v145;
        }

        v55 = bswap64(*(&v144 + 1));
        if (!a3)
        {
          v55 = *(&v144 + 1);
        }

        if (v55 + v75 <= a8)
        {
          v76 = malloc_type_malloc(v75, 0xA72EE54CuLL);
          if (v76)
          {
            v57 = v76;
            v77 = bswap64(v145);
            if (a3)
            {
              v78 = v77;
            }

            else
            {
              v78 = v145;
            }

            v79 = bswap64(*(&v144 + 1));
            if (a3)
            {
              v80 = v79;
            }

            else
            {
              v80 = *(&v144 + 1);
            }

            v62 = pread(v20, v76, v78, v80);
            v71 = v145;
            v81 = bswap64(v145);
            if (a3)
            {
              v71 = v81;
            }

            goto LABEL_108;
          }

          goto LABEL_191;
        }
      }

      v24 = file_printf(a1, ", note offset/size %#jx+%#jx exceeds file size %#jx", v37, v38, v39, v40, v41, v42, v55);
LABEL_15:
      if (v24 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 0;
      }
    }

    if (a9 <= 0x3E && ((1 << a9) & 0x400408000000000CLL) != 0 && v139 <= 5)
    {
      if (a2 == 1)
      {
        v72 = bswap32(v148);
        if (a3)
        {
          v73 = v72;
        }

        else
        {
          v73 = v148;
        }
      }

      else
      {
        v88 = bswap64(*(&v144 + 1));
        if (a3)
        {
          v73 = v88;
        }

        else
        {
          v73 = *(&v144 + 1);
        }
      }

      if (lseek(v20, v73, 0) != -1)
      {
        v91 = 0;
        while (1)
        {
          if (a2 == 1)
          {
            v92 = bswap32(DWORD1(v148));
            if (a3)
            {
              v93 = v92;
            }

            else
            {
              v93 = DWORD1(v148);
            }
          }

          else
          {
            v93 = v145;
            v94 = bswap64(v145);
            if (a3)
            {
              v93 = v94;
            }
          }

          v37 = v141;
          v91 += v141;
          if (v91 > v93)
          {
            goto LABEL_123;
          }

          v95 = read(v20, v150, v141);
          v37 = v141;
          if (v95 != v141)
          {
            goto LABEL_178;
          }

          if (v150[0] == 65)
          {
LABEL_123:
            v22 = v136;
            goto LABEL_124;
          }

          __memcpy_chk();
          if (a2 == 1)
          {
            v97 = bswap32(0);
            if (a3)
            {
              v98 = v97;
            }

            else
            {
              v98 = 0;
            }

            if (!v98)
            {
              continue;
            }
          }

          else
          {
            v98 = 0;
            v99 = bswap64(0);
            if (a3)
            {
              v98 = v99;
            }

            if (!v98)
            {
              continue;
            }
          }

          if (v98 == 2)
          {
            if (a2 == 1)
            {
              v102 = bswap32(0);
              if (a3)
              {
                v103 = v102;
              }

              else
              {
                v103 = 0;
              }
            }

            else
            {
              v103 = 0;
              v105 = bswap64(0);
              if (a3)
              {
                v103 = v105;
              }
            }

            v138 |= v103;
          }

          else if (v98 == 1)
          {
            if (a2 == 1)
            {
              v100 = bswap32(0);
              if (a3)
              {
                v101 = v100;
              }

              else
              {
                v101 = 0;
              }
            }

            else
            {
              v101 = 0;
              v106 = bswap64(0);
              if (a3)
              {
                v101 = v106;
              }
            }

            v137 |= v101;
          }

          else
          {
            if (a2 == 1)
            {
              v104 = vbsl_s8(v30, 0, vrev32_s8(0)).u8[0];
            }

            else
            {
              v104 = vbslq_s8(v135, 0, vrev64q_s8(0)).u8[0];
            }

            if (file_printf(a1, ", with unknown capability %#llx = %#llx", v96, v38, v39, v40, v41, v42, v104) == -1)
            {
              return 0xFFFFFFFFLL;
            }

            if (v139 >= 3)
            {
              if (a2 == 1)
              {
                v107 = bswap32(DWORD1(v148));
                if (a3)
                {
                  v91 = v107;
                }

                else
                {
                  v91 = DWORD1(v148);
                }
              }

              else
              {
                v108 = bswap64(v145);
                if (a3)
                {
                  v91 = v108;
                }

                else
                {
                  v91 = v145;
                }
              }
            }

            ++v139;
          }
        }
      }

      file_badseek(a1, v89, v90, v38, v39, v40, v41, v42, v133);
      return 0xFFFFFFFFLL;
    }

LABEL_124:
    v19 += __nbyte;
    --v13;
  }

  while (v13);
  if (v142)
  {
    result = file_printf(a1, ", with debug_info", v37, v38, v39, v40, v41, v42, v133);
    if (result == -1)
    {
      return result;
    }
  }

  v109 = "";
  if (!v32)
  {
    v109 = "not ";
  }

  result = file_printf(a1, ", %sstripped", v37, v38, v39, v40, v41, v42, v109);
  if (result == -1)
  {
    return result;
  }

  v116 = v137;
  if (!v137)
  {
    goto LABEL_206;
  }

  if (a9 > 0x3E)
  {
    goto LABEL_203;
  }

  if (((1 << a9) & 0x80000040004) == 0)
  {
    if (((1 << a9) & 0x4004000000000008) != 0)
    {
      v117 = &cap_desc_386;
      goto LABEL_194;
    }

LABEL_203:
    result = file_printf(a1, ", uses", v110, v111, v112, v113, v114, v115, v134);
    if (result != -1)
    {
      result = file_printf(a1, " hardware capability %#llx", v126, v127, v128, v129, v130, v131, v137);
LABEL_205:
      if (result != -1)
      {
        goto LABEL_206;
      }
    }

    return result;
  }

  v117 = &cap_desc_sparc;
LABEL_194:
  result = file_printf(a1, ", uses", v110, v111, v112, v113, v114, v115, v134);
  if (result != -1)
  {
    v124 = v117[1];
    if (!v124)
    {
      goto LABEL_201;
    }

    do
    {
      v125 = *v117;
      if ((*v117 & v116) != 0)
      {
        result = file_printf(a1, " %s", v110, v111, v112, v113, v114, v115, v124);
        if (result == -1)
        {
          return result;
        }

        v116 &= ~v125;
      }

      v124 = v117[3];
      v117 += 2;
    }

    while (v124);
    if (v116)
    {
LABEL_201:
      result = file_printf(a1, " unknown hardware capability %#llx", v110, v111, v112, v113, v114, v115, v116);
      goto LABEL_205;
    }

LABEL_206:
    if (!v138)
    {
      return 0;
    }

    if ((v138 & 2) == 0 || ((v138 & 1) != 0 ? (v132 = ", uses frame pointer") : (v132 = ", not known to use frame pointer"), result = file_printf(a1, v132, v110, v111, v112, v113, v114, v115, v134), result != -1))
    {
      if ((v138 & 0xFFFFFFFFFFFFFFFCLL) == 0)
      {
        return 0;
      }

      result = file_printf(a1, ", with unknown software capability %#llx", v110, v111, v112, v113, v114, v115, v138 & 0xFC);
      if (result != -1)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t donote(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int *a8, _WORD *a9, int a10, off_t a11, int a12, int64_t a13)
{
  v71 = *MEMORY[0x277D85DE8];
  if (!*a9)
  {
    return 0;
  }

  --*a9;
  v14 = a3 + 12;
  if (a3 + 12 > a4)
  {
    return a3 + 12;
  }

  v16 = a6;
  v17 = a5;
  v69 = 0;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  if (a5 == 1)
  {
    v19 = &v68;
  }

  else
  {
    v19 = &v66;
  }

  v20 = *(a2 + a3);
  *v19 = v20;
  *(v19 + 2) = *(a2 + a3 + 8);
  v21 = bswap32(v20);
  if (a6)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v23 = HIDWORD(v20);
  v24 = bswap32(HIDWORD(v20));
  if (a6)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  if (!(v22 | v25))
  {
    return a4;
  }

  if ((v22 & 0x80000000) != 0)
  {
    v28 = file_printf(a1, ", bad note name size %#lx", a3, a4, a5, a6, a7, a8, v22);
    goto LABEL_22;
  }

  if ((v25 & 0x80000000) != 0)
  {
    v28 = file_printf(a1, ", bad note description size %#lx", a3, a4, a5, a6, a7, a8, v25);
LABEL_22:
    if (v28 == -1)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  v26 = v14 + v22;
  v27 = (a7 - 1 + v26) / a7 * a7;
  if (v26 > a4)
  {
    return (a7 - 1 + v26) / a7 * a7;
  }

  v30 = v27 + v25;
  v15 = (a7 - 1 + v30) / a7 * a7;
  if (v30 <= a4)
  {
    v32 = *a8;
    v64 = v27;
    v65 = a1;
    if ((*a8 & 8) == 0)
    {
      v33 = bswap32(*(v19 + 2));
      if (a6)
      {
        v34 = v33;
      }

      else
      {
        v34 = *(v19 + 2);
      }

      if (do_os_note(a1, a2, v34, a6, v22, v25, v14, v27, a8))
      {
        return v15;
      }

      v32 = *a8;
      v27 = v64;
      a1 = v65;
    }

    if ((v32 & 0x10) == 0)
    {
      v35 = bswap32(*(v19 + 2));
      if (v16)
      {
        v36 = v35;
      }

      else
      {
        v36 = *(v19 + 2);
      }

      if (do_bid_note(a1, a2, v36, v22, v25, v14, v27, a8))
      {
        return v15;
      }

      v32 = *a8;
      v27 = v64;
      a1 = v65;
    }

    if ((v32 & 0x40) == 0)
    {
      v37 = bswap32(*(v19 + 2));
      if (v16)
      {
        v38 = v37;
      }

      else
      {
        v38 = *(v19 + 2);
      }

      if (do_pax_note(a1, a2, v38, v16, v22, v25, v14, v27, a8))
      {
        return v15;
      }

      v32 = *a8;
      v27 = v64;
      a1 = v65;
    }

    if ((v32 & 4) == 0)
    {
      v39 = bswap32(*(v19 + 2));
      if (v16)
      {
        v40 = v39;
      }

      else
      {
        v40 = *(v19 + 2);
      }

      v63 = a4;
      v41 = v27;
      if (do_core_note(a1, a2, v40, v16, v22, v25, v14, v27, a8, v63, v17))
      {
        return v15;
      }

      v32 = *a8;
      a1 = v65;
      v27 = v41;
    }

    if ((v32 & 0x1000) != 0)
    {
      v44 = v27;
      if (v22 != 7)
      {
        return v15;
      }
    }

    else
    {
      v42 = bswap32(*(v19 + 2));
      if (v16)
      {
        v43 = v42;
      }

      else
      {
        v43 = *(v19 + 2);
      }

      v44 = v27;
      v45 = do_auxv_note(a1, a2, v43, v16, v25, v27, a8, v17, a10, a11, a12, a13);
      if (v22 != 7 || v45)
      {
        return v15;
      }
    }

    if (strcmp((a2 + v14), "NetBSD"))
    {
      return v15;
    }

    if (v25 >= 0x64)
    {
      v52 = 100;
    }

    else
    {
      v52 = v25;
    }

    v53 = *(v19 + 2);
    v54 = bswap32(v53);
    if (v16)
    {
      v53 = v54;
    }

    if (v53 <= 4)
    {
      if (v53 == 1)
      {
        return v15;
      }

      if (v53 == 2)
      {
        v55 = "emulation:";
        v56 = 512;
        goto LABEL_78;
      }

LABEL_75:
      if ((*a8 & 0x400) == 0)
      {
        *a8 |= 0x400u;
        file_printf(v65, ", note=%u", v46, v47, v48, v49, v50, v51, v53);
      }

      return v15;
    }

    if (v53 == 5)
    {
      v55 = "compiled for";
      v56 = 128;
    }

    else
    {
      if (v53 != 6)
      {
        goto LABEL_75;
      }

      v55 = "compiler model";
      v56 = 256;
    }

LABEL_78:
    if ((*a8 & v56) == 0)
    {
      *a8 |= v56;
      strlcpy(__dst, (a2 + v44), (v52 + 1));
      file_printf(v65, ", %s: %s", v57, v58, v59, v60, v61, v62, v55);
    }

    return v15;
  }

  if (v15 <= a4)
  {
    return a4;
  }

  else
  {
    return (a7 - 1 + v30) / a7 * a7;
  }
}

uint64_t do_os_note(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  v16 = 0;
  if (a5 <= 6)
  {
    if (a5 != 4)
    {
      if (a5 != 5)
      {
        return v16;
      }

      v32 = strcmp((a2 + a7), "SuSE");
      v16 = 0;
      if (a6 != 2 || a3 != 1 || v32)
      {
        return v16;
      }

      *a9 |= 8u;
      v39 = file_printf(a1, ", for SuSE %d.%d", v33, v34, v35, v36, v37, v38, *(a2 + a8));
LABEL_82:
      if (v39 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

    v76 = strcmp((a2 + a7), "GNU");
    v16 = 0;
    if (a6 != 16 || a3 != 1 || v76)
    {
      return v16;
    }

    v84 = *(a2 + a8);
    v83 = *(a2 + a8 + 4);
    *a9 |= 8u;
    if (file_printf(a1, ", for GNU/", v77, v78, v79, v80, v81, v82, v110) == -1)
    {
      return 0xFFFFFFFFLL;
    }

    v91 = bswap32(v84);
    if (!a4)
    {
      v91 = v84;
    }

    if (v91 <= 1)
    {
      if (!v91)
      {
        v92 = "Linux";
        goto LABEL_77;
      }

      if (v91 == 1)
      {
        v92 = "Hurd";
        goto LABEL_77;
      }
    }

    else
    {
      switch(v91)
      {
        case 2:
          v92 = "Solaris";
          goto LABEL_77;
        case 3:
          v92 = "kFreeBSD";
          goto LABEL_77;
        case 4:
          v92 = "kNetBSD";
LABEL_77:
          if (file_printf(a1, v92, v85, v86, v87, v88, v89, v90, v112) == -1)
          {
            return 0xFFFFFFFFLL;
          }

          v103 = bswap32(v83);
          if (!a4)
          {
            v103 = v83;
          }

          v110 = v103;
          v75 = " %d.%d.%d";
LABEL_81:
          v39 = file_printf(a1, v75, v69, v70, v71, v72, v73, v74, v110);
          goto LABEL_82;
      }
    }

    v92 = "<unknown>";
    goto LABEL_77;
  }

  switch(a5)
  {
    case 7:
      v16 = 0;
      if (strcmp((a2 + a7), "NetBSD") || a3 != 1 || a6 != 4)
      {
        return v16;
      }

      *a9 |= 8u;
      v46 = bswap32(*(a2 + a8));
      if (a4)
      {
        v47 = v46;
      }

      else
      {
        v47 = *(a2 + a8);
      }

      if (file_printf(a1, ", for NetBSD", v40, v41, v42, v43, v44, v45, v110) == -1)
      {
        return 0xFFFFFFFFLL;
      }

      if (v47 >= 0x5F5E101)
      {
        if (file_printf(a1, " %u.%u", v48, v49, v50, v51, v52, v53, v47 / 0x5F5E100) == -1)
        {
          return 0xFFFFFFFFLL;
        }

        v60 = v47 / 0x2710 - 100 * ((42949673 * (v47 / 0x2710)) >> 32);
        if (v60)
        {
          v61 = 1;
        }

        else
        {
          v61 = v47 / 0x64 == 100 * ((42949673 * (v47 / 0x64)) >> 32);
        }

        if (!v61)
        {
          v106 = file_printf(a1, ".%u", v54, v55, v56, v57, v58, v59, (v47 / 0x64) - 100 * ((42949673 * (v47 / 0x64)) >> 32));
          goto LABEL_97;
        }

        if (v60)
        {
          if (v60 >= 0x1B)
          {
            while (file_printf(a1, "Z", v54, v55, v56, v57, v58, v59, v111) != -1)
            {
              v60 -= 26;
              if (v60 <= 0x1A)
              {
                goto LABEL_38;
              }
            }

            return 0xFFFFFFFFLL;
          }

LABEL_38:
          v106 = file_printf(a1, "%c", v54, v55, v56, v57, v58, v59, v60 | 0x40);
          goto LABEL_97;
        }
      }

      return 1;
    case 8:
      if (!strcmp((a2 + a7), "FreeBSD") && a3 == 1 && a6 == 4)
      {
        *a9 |= 8u;
        v93 = bswap32(*(a2 + a8));
        if (a4)
        {
          v94 = v93;
        }

        else
        {
          v94 = *(a2 + a8);
        }

        if (file_printf(a1, ", for FreeBSD", v62, v63, v64, v65, v66, v67, v110) == -1)
        {
          return 0xFFFFFFFFLL;
        }

        if (v94 == 460002)
        {
          v101 = " 4.6.2";
LABEL_96:
          v106 = file_printf(a1, v101, v95, v96, v97, v98, v99, v100, v113);
LABEL_97:
          if (v106 != -1)
          {
            return 1;
          }

          return 0xFFFFFFFFLL;
        }

        if (v94 < 0x70544)
        {
          if (file_printf(a1, " %d.%d", v95, v96, v97, v98, v99, v100, v94 / 0x186A0) == -1 || (v94 / 0x3E8) % 0xAu && file_printf(a1, ".%d", v95, v96, v97, v98, v99, v100, (v94 / 0x3E8) % 0xAu) == -1)
          {
            return 0xFFFFFFFFLL;
          }

          HIDWORD(v102) = 652835029 * v94;
          LODWORD(v102) = 652835029 * v94;
          if ((v102 >> 3) <= 0x418937 && v94 % 0x186A0)
          {
            return 1;
          }

LABEL_95:
          v113 = v94;
          v101 = " (%d)";
          goto LABEL_96;
        }

        if (v94 > 0x7A11F)
        {
          if (file_printf(a1, " %d.%d", v95, v96, v97, v98, v99, v100, v94 / 0x186A0) == -1)
          {
            return 0xFFFFFFFFLL;
          }

          HIDWORD(v107) = -858993459 * (v94 / 0x64);
          LODWORD(v107) = HIDWORD(v107);
          if ((v107 >> 1) > 0x19999999 || v94 % 0x186A0 <= 0x63)
          {
            goto LABEL_95;
          }

          v105 = v94 / 0xA;
        }

        else
        {
          if (file_printf(a1, " %d.%d", v95, v96, v97, v98, v99, v100, 4) == -1)
          {
            return 0xFFFFFFFFLL;
          }

          HIDWORD(v104) = -858993459 * (v94 / 0x64);
          LODWORD(v104) = HIDWORD(v104);
          if ((v104 >> 1) >= 0x1999999A)
          {
            goto LABEL_95;
          }

          v105 = (v94 / 0xA);
        }

        v108 = v105 - 10 * ((429496730 * v105) >> 32);
        if (v108)
        {
          v106 = file_printf(a1, ".%d", v95, v96, v97, v98, v99, v100, v108);
          goto LABEL_97;
        }

        return 1;
      }

      v68 = strcmp((a2 + a7), "OpenBSD");
      v16 = 0;
      if (a6 != 4 || a3 != 1 || v68)
      {
        return v16;
      }

      *a9 |= 8u;
      v75 = ", for OpenBSD";
      goto LABEL_81;
    case 10:
      v17 = strcmp((a2 + a7), "DragonFly");
      v16 = 0;
      if (a6 == 4 && a3 == 1 && !v17)
      {
        *a9 |= 8u;
        v16 = 0xFFFFFFFFLL;
        if (file_printf(a1, ", for DragonFly", v18, v19, v20, v21, v22, v23, v110) != -1)
        {
          v30 = *(a2 + a8);
          v31 = bswap32(v30);
          if (a4)
          {
            v30 = v31;
          }

          if (file_printf(a1, " %d.%d.%d", v24, v25, v26, v27, v28, v29, v30 / 0x186A0) == -1)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 1;
          }
        }
      }

      break;
  }

  return v16;
}

uint64_t do_bid_note(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a4 != 4)
  {
    return 0;
  }

  LODWORD(v10) = a5;
  v14 = (a2 + a6);
  v15 = strcmp((a2 + a6), "GNU");
  if ((v10 - 4) > 0x10 || a3 != 3 || v15)
  {
    if (*v14 == 71 && v14[1] == 111)
    {
      result = 0;
      if (v10 <= 0x7F && a3 == 4 && !v14[2])
      {
        strlcpy(__dst, (a2 + a7), (v10 + 1));
        if (file_printf(a1, ", Go BuildID=%s", v24, v25, v26, v27, v28, v29, __dst) == -1)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return 1;
        }
      }

      return result;
    }

    return 0;
  }

  *a8 |= 0x10u;
  switch(v10)
  {
    case 8:
      v22 = "xxHash";
      break;
    case 0x14:
      v22 = "sha1";
      break;
    case 0x10:
      v22 = "md5/uuid";
      break;
    default:
      v22 = "unknown";
      break;
  }

  result = file_printf(a1, ", BuildID[%s]=", v16, v17, v18, v19, v20, v21, v22);
  if (result != -1)
  {
    v10 = v10;
    v30 = __dst;
    __memcpy_chk();
    while (1)
    {
      v37 = *v30++;
      result = file_printf(a1, "%02x", v31, v32, v33, v34, v35, v36, v37);
      if (result == -1)
      {
        break;
      }

      if (!--v10)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t do_pax_note(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  if (a5 != 4)
  {
    return 0;
  }

  v21 = strcmp((a2 + a7), "PaX");
  result = 0;
  if (a6 == 4 && a3 == 3 && !v21)
  {
    *a9 |= 0x40u;
    v23 = bswap32(*(a2 + a8));
    v24 = a4 ? v23 : *(a2 + a8);
    if (!v24 || (result = file_printf(a1, ", PaX: ", v15, v16, v17, v18, v19, v20, v28), result != -1))
    {
      v25 = 0;
      for (i = 0; i != 6; ++i)
      {
        if ((v24 >> i))
        {
          if (v25)
          {
            v27 = ",";
          }

          else
          {
            v27 = "";
          }

          result = file_printf(a1, "%s%s", v15, v16, v17, v18, v19, v20, v27);
          if (result == -1)
          {
            return result;
          }

          ++v25;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t do_core_note(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, int a11)
{
  v16 = a9;
  v87 = *MEMORY[0x277D85DE8];
  switch(a5)
  {
    case 8u:
      if (strcmp((a2 + a7), "FreeBSD"))
      {
        goto LABEL_20;
      }

      v23 = 1;
      goto LABEL_13;
    case 5u:
      if (strcmp((a2 + a7), "CORE"))
      {
        goto LABEL_20;
      }

LABEL_7:
      v23 = 0;
      goto LABEL_13;
    case 4u:
      if (strncmp((a2 + a7), "CORE", 4uLL))
      {
        goto LABEL_20;
      }

      goto LABEL_7;
  }

  if (a5 < 0xB || strncmp((a2 + a7), "NetBSD-CORE", 0xBuLL))
  {
    goto LABEL_20;
  }

  v23 = 2;
LABEL_13:
  v24 = *a9;
  if ((*a9 & 0x20) == 0)
  {
    result = file_printf(a1, ", %s-style", v17, v18, v19, v20, v21, v22, &os_style_names[8 * v23]);
    if (result == -1)
    {
      return result;
    }

    v24 = v23 | *a9 | 0x20;
    *a9 = v24;
  }

  if (v23 == 1)
  {
    result = 0;
    if (a3 == 3 && (v24 & 0x800) != 0)
    {
      v56 = a11 == 1 ? 25 : 33;
      result = file_printf(a1, ", from '%.80s'", v17, v18, v19, v20, v21, v22, a2 + a8 + v56);
      if (result != -1)
      {
        if (a8 + v56 + 83 + 4 > a10)
        {
          goto LABEL_75;
        }

        v63 = *(a2 + a8 + v56 + 83);
        v64 = bswap32(v63);
        if (a4)
        {
          LOBYTE(v63) = v64;
        }

        result = file_printf(a1, ", pid=%u", v57, v58, v59, v60, v61, v62, v63);
        if (result != -1)
        {
LABEL_75:
          result = 0;
          *a9 |= 4u;
        }
      }
    }

    return result;
  }

  if (v23 == 2)
  {
    if (a3 == 1)
    {
      memset(v85, 0, sizeof(v85));
      __memcpy_chk();
      file_printable(__dst, 512, v85 + 12, 32);
      result = file_printf(a1, ", from '%.31s', pid=%u, uid=%u, gid=%u, nlwps=%u, lwp=%u (signal %u/code %u)", v26, v27, v28, v29, v30, v31, __dst);
LABEL_98:
      if (result != -1)
      {
        *v16 |= 4u;
        return 1;
      }

      return result;
    }

    return 0;
  }

LABEL_20:
  if (a3 != 3 || (*(a9 + 1) & 8) == 0)
  {
    return 0;
  }

  v82 = a1;
  v32 = 0;
  v33 = 5;
  if (a11 == 1)
  {
    v33 = 7;
  }

  v83 = v33;
  v34 = a6;
  v35 = MEMORY[0x277D85DE0];
  while (2)
  {
    v36 = 0;
    if (a11 == 1)
    {
      v37 = &prpsoffsets32;
    }

    else
    {
      v37 = &prpsoffsets64;
    }

    v38 = v37[v32];
    v39 = v38 + a8;
    while (v39 < a10 && v38 < v34)
    {
      v40 = *(a2 + v39);
      if (!*(a2 + v39))
      {
        if (v36)
        {
LABEL_44:
          v41 = v32 + 1;
          v42 = v83;
          if (v32 + 1 >= v83)
          {
            v51 = v32;
            v44 = v82;
            v16 = a9;
            v43 = a8;
            v45 = a11;
          }

          else
          {
            v43 = a8;
            v44 = v82;
            v16 = a9;
            v45 = a11;
            do
            {
              if (v45 == 1)
              {
                v46 = &prpsoffsets32;
              }

              else
              {
                v46 = &prpsoffsets64;
              }

              v47 = v46[v41];
              v48 = v46[v32];
              v49 = v48 - v47;
              if (v48 <= v47)
              {
                v51 = v32;
              }

              else
              {
                v50 = v48 + v43;
                v51 = v41;
                if (v47 + v43 < v50)
                {
                  v52 = (a2 + a8 + v47);
                  v53 = 1;
                  do
                  {
                    if (v53)
                    {
                      v54 = *v52;
                      if (v54 < 0)
                      {
                        v55 = __maskrune(*v52, 0x40000uLL);
                      }

                      else
                      {
                        v55 = *(v35 + 4 * v54 + 60) & 0x40000;
                      }

                      v53 = v55 != 0;
                    }

                    ++v52;
                    --v49;
                  }

                  while (v49);
                  if (v53)
                  {
                    v51 = v41;
                  }

                  else
                  {
                    v51 = v32;
                  }

                  v42 = v83;
                  v43 = a8;
                  v45 = a11;
                }
              }

              ++v41;
              v32 = v51;
            }

            while (v41 != v42);
          }

          if (v45 == 1)
          {
            v65 = &prpsoffsets32;
          }

          else
          {
            v65 = &prpsoffsets64;
          }

          v66 = v65[v51];
          v67 = (a2 + v43 + v66);
          v68 = (a2 + a10);
          v69 = v67;
          if (v67 < a2 + a10)
          {
            v70 = a10 - (v66 + v43);
            v69 = v67;
            while (1)
            {
              v71 = *v69;
              if (!*v69)
              {
                break;
              }

              if ((v71 & 0x80) != 0)
              {
                if (!__maskrune(v71, 0x40000uLL))
                {
                  break;
                }
              }

              else if ((*(v35 + 4 * v71 + 60) & 0x40000) == 0)
              {
                break;
              }

              ++v69;
              if (!--v70)
              {
                v69 = v68;
                break;
              }
            }
          }

          while (1)
          {
            v72 = v69 - v67;
            if (v69 <= v67)
            {
              break;
            }

            v74 = *--v69;
            v73 = v74;
            if (v74 < 0)
            {
              if (!__maskrune(v73, 0x4000uLL))
              {
                break;
              }
            }

            else if ((*(v35 + 4 * v73 + 60) & 0x4000) == 0)
            {
              break;
            }
          }

          if ((v72 + 1) < 0x100)
          {
            v75 = v72 + 1;
          }

          else
          {
            v75 = 256;
          }

          strlcpy(__dst, v67, v75);
          result = file_printf(v44, ", from '%s'", v76, v77, v78, v79, v80, v81, __dst);
          goto LABEL_98;
        }

        break;
      }

      if ((v40 & 0x80) != 0)
      {
        if (!__maskrune(*(a2 + v39), 0x40000uLL))
        {
          break;
        }
      }

      else if ((*(v35 + 4 * *(a2 + v39) + 60) & 0x40000) == 0)
      {
        break;
      }

      {
        break;
      }

      ++v36;
      ++v39;
      ++v38;
      if (v36 == 16)
      {
        goto LABEL_44;
      }
    }

    result = 0;
    if (++v32 != v83)
    {
      continue;
    }

    return result;
  }
}

uint64_t do_auxv_note(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, uint64_t a6, _DWORD *a7, int a8, int a9, off_t a10, int a11, int64_t a12)
{
  result = 0;
  v91 = *MEMORY[0x277D85DE8];
  if (a8 == 1)
  {
    v14 = 8;
  }

  else
  {
    v14 = 16;
  }

  if (a3 != 6 || (*a7 & 0x823) != 0x820)
  {
    return result;
  }

  *a7 |= 0x1000u;
  if (v14 > a5)
  {
    return 1;
  }

  v17 = 0;
  v18 = a5;
  v19 = &v84;
  if (a8 == 1)
  {
    v19 = &v88;
  }

  __buf = v19;
  if (a8 == 1)
  {
    v20 = 32;
  }

  else
  {
    v20 = 56;
  }

  v21 = v14;
  v81 = a5;
  v82 = a1;
  v80 = v14;
LABEL_13:
  v22 = v21;
  __memcpy_chk();
  if (v17 == 50)
  {
    file_error(a1, 0, "Too many ELF Auxv elements", v24, v25, v26, v27, v28, v78);
    return 1;
  }

  if (a8 == 1)
  {
    v29 = bswap32(0);
    if (a4)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v31 = bswap64(0);
    if (a4)
    {
      v30 = v31;
    }
  }

  if (v30 > 13)
  {
    switch(v30)
    {
      case 14:
        v32 = "effective gid";
        goto LABEL_32;
      case 31:
        v33 = "execfn";
        break;
      case 15:
        v33 = "platform";
        break;
      default:
        goto LABEL_99;
    }

    v79 = v33;
    if (a8 == 1)
    {
      v34 = bswap32(0);
      if (a4)
      {
        v35 = v34;
      }

      else
      {
        v35 = 0;
      }
    }

    else
    {
      v36 = bswap64(0);
      if (a4)
      {
        v35 = v36;
      }

      else
      {
        v35 = 0;
      }
    }

    if (!a11)
    {
LABEL_83:
      v52 = 0;
      v18 = v81;
      a1 = v82;
      goto LABEL_84;
    }

    v88 = 0u;
    v89 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v37 = a10;
    v38 = a11;
    v87 = 0;
    while (1)
    {
      if (pread(a9, __buf, v20, v37) < v20)
      {
        v63 = __error();
        a1 = v82;
        file_error(v82, *v63, "error reading", v64, v65, v66, v67, v68, v78);
        v18 = v81;
        goto LABEL_94;
      }

      if (a12 != -1)
      {
        if (a8 == 1)
        {
          v39 = bswap32(DWORD1(v88));
          v40 = a4 ? v39 : DWORD1(v88);
        }

        else
        {
          v40 = *(&v84 + 1);
          v41 = bswap64(*(&v84 + 1));
          if (a4)
          {
            v40 = v41;
          }
        }

        if (v40 > a12)
        {
          goto LABEL_82;
        }
      }

      if (a8 == 1)
      {
        if (!DWORD2(v88))
        {
          goto LABEL_62;
        }

        v42 = bswap32(DWORD2(v88));
        if (a4)
        {
          v43 = v42;
        }

        else
        {
          v43 = DWORD2(v88);
        }
      }

      else
      {
        v43 = v85;
        if (!v85)
        {
LABEL_62:
          v43 = 4;
          goto LABEL_63;
        }

        v44 = bswap64(v85);
        if (a4)
        {
          v43 = v44;
        }
      }

LABEL_63:
      if (v43 <= v35)
      {
        if (a8 == 1)
        {
          v45 = bswap32(DWORD2(v88));
          if (!a4)
          {
            v45 = DWORD2(v88);
          }

          v46 = bswap32(v89);
          if (a4)
          {
            v47 = v46;
          }

          else
          {
            v47 = v89;
          }

          if (DWORD2(v88))
          {
            v48 = v45;
          }

          else
          {
            v48 = 4;
          }

          if (v48 + v47 > v35)
          {
            v75 = bswap32(DWORD1(v88));
            if (a4)
            {
              v76 = v75;
            }

            else
            {
              v76 = DWORD1(v88);
            }

            goto LABEL_106;
          }
        }

        else
        {
          v49 = v86;
          v50 = bswap64(v85);
          if (!a4)
          {
            v50 = v85;
          }

          v51 = bswap64(v86);
          if (a4)
          {
            v49 = v51;
          }

          v48 = 4;
          if (v85)
          {
            v48 = v50;
          }

          if (v48 + v49 > v35)
          {
            v76 = *(&v84 + 1);
            v77 = bswap64(*(&v84 + 1));
            if (a4)
            {
              v76 = v77;
            }

LABEL_106:
            v18 = v81;
            a1 = v82;
            v52 = v76 + v35 - v48;
            if (v52 < 0)
            {
LABEL_94:
              v69 = __error();
              file_error(a1, *v69, "error reading", v70, v71, v72, v73, v74, v78);
              goto LABEL_98;
            }

LABEL_84:
            v53 = pread(a9, v90, 0x100uLL, v52);
            if (v53 <= 0)
            {
              goto LABEL_94;
            }

            v90[v53 - 1] = 0;
            v60 = v90[0];
            if (!v90[0])
            {
              goto LABEL_98;
            }

            v61 = v90;
            while (2)
            {
              if ((v60 & 0x80) == 0)
              {
                if ((*(MEMORY[0x277D85DE0] + 4 * v60 + 60) & 0x40000) == 0)
                {
                  break;
                }

                goto LABEL_91;
              }

              if (__maskrune(v60, 0x40000uLL))
              {
LABEL_91:
                v62 = *(v61 + 1);
                v61 = (v61 + 1);
                v60 = v62;
                if (!v62)
                {
                  goto LABEL_97;
                }

                continue;
              }

              break;
            }

            if (*v61 || v61 == v90)
            {
              goto LABEL_98;
            }

LABEL_97:
            result = file_printf(a1, ", %s: '%s'", v54, v55, v56, v57, v58, v59, v79);
            if (result == -1)
            {
              return result;
            }

LABEL_98:
            v14 = v80;
LABEL_99:
            ++v17;
            v21 = v22 + v14;
            if (v22 + v14 > v18)
            {
              return 1;
            }

            goto LABEL_13;
          }
        }
      }

LABEL_82:
      v37 += v20;
      if (!--v38)
      {
        goto LABEL_83;
      }
    }
  }

  switch(v30)
  {
    case 11:
      v32 = "real uid";
      break;
    case 12:
      v32 = "effective uid";
      break;
    case 13:
      v32 = "real gid";
      break;
    default:
      goto LABEL_99;
  }

LABEL_32:
  result = file_printf(a1, ", %s: %d", v23, v24, v25, v26, v27, v28, v32);
  if (result != -1)
  {
    goto LABEL_99;
  }

  return result;
}

id getCNPhoneNumberClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCNPhoneNumberClass_softClass_21363;
  v7 = getCNPhoneNumberClass_softClass_21363;
  if (!getCNPhoneNumberClass_softClass_21363)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCNPhoneNumberClass_block_invoke_21364;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCNPhoneNumberClass_block_invoke_21364(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E30DEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNPhoneNumberClass_block_invoke_21364(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_21365)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __ContactsLibraryCore_block_invoke_21366;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278349028;
    v8 = 0;
    ContactsLibraryCore_frameworkLibrary_21365 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_21365)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFPhoneNumber.m" lineNumber:16 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CNPhoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNPhoneNumberClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFPhoneNumber.m" lineNumber:17 description:{@"Unable to find class %s", "CNPhoneNumber"}];

LABEL_10:
    __break(1u);
  }

  getCNPhoneNumberClass_softClass_21363 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_21366()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_21365 = result;
  return result;
}

void sub_21E30F8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E30FA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E310540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void get_SFReaderExtractorErrorDomain()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = get_SFReaderExtractorErrorDomainSymbolLoc_ptr;
  v9 = get_SFReaderExtractorErrorDomainSymbolLoc_ptr;
  if (!get_SFReaderExtractorErrorDomainSymbolLoc_ptr)
  {
    v1 = SafariServicesLibrary();
    v7[3] = dlsym(v1, "_SFReaderExtractorErrorDomain");
    get_SFReaderExtractorErrorDomainSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *get_SFReaderExtractorErrorDomain(void)"];
    [v4 handleFailureInFunction:v5 file:@"WFArticle.m" lineNumber:61 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_21E3106B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSDocumentTypeDocumentOptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIFoundationLibrary_21586();
  result = dlsym(v2, "NSDocumentTypeDocumentOption");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSDocumentTypeDocumentOptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *UIFoundationLibrary_21586()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UIFoundationLibraryCore_frameworkLibrary_21604)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIFoundationLibraryCore_block_invoke_21605;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2783490F8;
    v6 = 0;
    UIFoundationLibraryCore_frameworkLibrary_21604 = _sl_dlopen();
  }

  v0 = UIFoundationLibraryCore_frameworkLibrary_21604;
  if (!UIFoundationLibraryCore_frameworkLibrary_21604)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFArticle.m" lineNumber:26 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getNSHTMLTextDocumentTypeSymbolLoc_block_invoke_21590(uint64_t a1)
{
  v2 = UIFoundationLibrary_21586();
  result = dlsym(v2, "NSHTMLTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSHTMLTextDocumentTypeSymbolLoc_ptr_21589 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getNSCharacterEncodingDocumentAttributeSymbolLoc_block_invoke_21594(uint64_t a1)
{
  v2 = UIFoundationLibrary_21586();
  result = dlsym(v2, "NSCharacterEncodingDocumentAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSCharacterEncodingDocumentAttributeSymbolLoc_ptr_21593 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIFoundationLibraryCore_block_invoke_21605()
{
  result = _sl_dlopen();
  UIFoundationLibraryCore_frameworkLibrary_21604 = result;
  return result;
}

void *SafariServicesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SafariServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2783490E0;
    v6 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SafariServicesLibraryCore_frameworkLibrary;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFArticle.m" lineNumber:59 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __SafariServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  return result;
}

id WFNumberFromString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 objectForKey:*MEMORY[0x277CBE6B8]];
  v4 = [v1 stringByReplacingOccurrencesOfString:v3 withString:&stru_282F53518];

  v5 = [MEMORY[0x277CCAC80] scannerWithString:v4];
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  [v5 setLocale:v6];

  v17 = 0.0;
  if ([v5 scanDouble:&v17])
  {
    v7 = MEMORY[0x277CCA980];
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    v9 = v8;
    if (v8)
    {
      [v8 decimalValue];
    }

    else
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
    }

    v13 = [v7 decimalNumberWithDecimal:v15];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v9 setNumberStyle:5];
    v10 = [v1 lowercaseString];
    v11 = [v9 numberFromString:v10];

    if (v11)
    {
      v12 = MEMORY[0x277CCA980];
      [v11 decimalValue];
      v13 = [v12 decimalNumberWithDecimal:v15];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

id WFDictionariesFromString(void *a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [v4 invertedSet];
  v6 = [v3 rangeOfCharacterFromSet:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || ([v3 characterAtIndex:v6] & 0xFFFFFFDF) != 0x5B)
  {
  }

  else
  {
    v7 = MEMORY[0x277CCAAA0];
    v8 = [v3 dataUsingEncoding:4];
    v9 = [v7 JSONObjectWithData:v8 options:0 error:0];

    v10 = WFDictionariesFromObject(v9);

    if (v10)
    {
      if (!a2)
      {
        goto LABEL_20;
      }

      v11 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/json"];
LABEL_11:
      *a2 = v11;
      goto LABEL_20;
    }
  }

  v12 = v3;
  if ([v12 hasPrefix:@"<?xml version=1.0 encoding=UTF-8?>"])
  {
    v13 = MEMORY[0x277CCAC58];
    v14 = [v12 dataUsingEncoding:4];
    v15 = [v13 propertyListWithData:v14 options:0 format:0 error:0];

    v10 = WFDictionariesFromObject(v15);

    if (v10)
    {
      if (!a2)
      {
        goto LABEL_20;
      }

      v11 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E38]];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v16 = v12;
  if ([v16 rangeOfString:@"="] == 0x7FFFFFFFFFFFFFFFLL)
  {

LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  v17 = [MEMORY[0x277CBEBC0] dc_queryItemsFromQueryString:v16];
  v18 = [[WFOrderedDictionary alloc] initWithQueryItems:v17];

  if (!v18)
  {
    goto LABEL_19;
  }

  if (a2)
  {
    *a2 = [MEMORY[0x277D79F68] typeFromMIMEType:@"application/x-www-form-urlencoded"];
  }

  v20[0] = v18;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

LABEL_20:

  return v10;
}

id WFDictionariesFromObject(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = v1;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 objectsMatchingClass:objc_opt_class()];
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

id initEMContentRepresentationTypeHTML()
{
  if (EmailLibrary_sOnce != -1)
  {
    dispatch_once(&EmailLibrary_sOnce, &__block_literal_global_117_21888);
  }

  v0 = dlsym(EmailLibrary_sLib, "EMContentRepresentationTypeHTML");
  if (!v0)
  {
    __assert_rtn("initEMContentRepresentationTypeHTML", "WFEmail.m", 32, "constant");
  }

  objc_storeStrong(&constantEMContentRepresentationTypeHTML, *v0);
  getEMContentRepresentationTypeHTML = EMContentRepresentationTypeHTMLFunction;
  v1 = constantEMContentRepresentationTypeHTML;

  return v1;
}

void *__EmailLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Email.framework/Email", 2);
  EmailLibrary_sLib = result;
  return result;
}

Class initEMContentRequestOptions()
{
  if (EmailLibrary_sOnce != -1)
  {
    dispatch_once(&EmailLibrary_sOnce, &__block_literal_global_117_21888);
  }

  result = objc_getClass("EMContentRequestOptions");
  classEMContentRequestOptions = result;
  getEMContentRequestOptionsClass = EMContentRequestOptionsFunction;
  return result;
}

Class initEMObjectID()
{
  if (EmailLibrary_sOnce != -1)
  {
    dispatch_once(&EmailLibrary_sOnce, &__block_literal_global_117_21888);
  }

  result = objc_getClass("EMObjectID");
  classEMObjectID = result;
  getEMObjectIDClass = EMObjectIDFunction;
  return result;
}

id initEMContentRepresentationTypeRaw()
{
  if (EmailLibrary_sOnce != -1)
  {
    dispatch_once(&EmailLibrary_sOnce, &__block_literal_global_117_21888);
  }

  v0 = dlsym(EmailLibrary_sLib, "EMContentRepresentationTypeRaw");
  if (!v0)
  {
    __assert_rtn("initEMContentRepresentationTypeRaw", "WFEmail.m", 33, "constant");
  }

  objc_storeStrong(&constantEMContentRepresentationTypeRaw, *v0);
  getEMContentRepresentationTypeRaw = EMContentRepresentationTypeRawFunction;
  v1 = constantEMContentRepresentationTypeRaw;

  return v1;
}

Class initEMDaemonInterface()
{
  if (EmailLibrary_sOnce != -1)
  {
    dispatch_once(&EmailLibrary_sOnce, &__block_literal_global_117_21888);
  }

  result = objc_getClass("EMDaemonInterface");
  classEMDaemonInterface = result;
  getEMDaemonInterfaceClass = EMDaemonInterfaceFunction;
  return result;
}

Class initEMMailboxScope()
{
  if (EmailLibrary_sOnce != -1)
  {
    dispatch_once(&EmailLibrary_sOnce, &__block_literal_global_117_21888);
  }

  result = objc_getClass("EMMailboxScope");
  classEMMailboxScope = result;
  getEMMailboxScopeClass = EMMailboxScopeFunction;
  return result;
}

Class initEMMessageObjectID()
{
  if (EmailLibrary_sOnce != -1)
  {
    dispatch_once(&EmailLibrary_sOnce, &__block_literal_global_117_21888);
  }

  result = objc_getClass("EMMessageObjectID");
  classEMMessageObjectID = result;
  getEMMessageObjectIDClass = EMMessageObjectIDFunction;
  return result;
}

void sub_21E3136B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getEKAttachmentClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!EventKitLibraryCore_frameworkLibrary_21972)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __EventKitLibraryCore_block_invoke_21973;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278349300;
    v8 = 0;
    EventKitLibraryCore_frameworkLibrary_21972 = _sl_dlopen();
  }

  if (!EventKitLibraryCore_frameworkLibrary_21972)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *EventKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFCalendarEventContentItemChangeTransaction.m" lineNumber:13 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("EKAttachment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getEKAttachmentClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFCalendarEventContentItemChangeTransaction.m" lineNumber:14 description:{@"Unable to find class %s", "EKAttachment"}];

LABEL_10:
    __break(1u);
  }

  getEKAttachmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __EventKitLibraryCore_block_invoke_21973()
{
  result = _sl_dlopen();
  EventKitLibraryCore_frameworkLibrary_21972 = result;
  return result;
}

Class initNSTextAttachment()
{
  if (UIKitLibrary_sOnce_22030 != -1)
  {
    dispatch_once(&UIKitLibrary_sOnce_22030, &__block_literal_global_22031);
  }

  result = objc_getClass("NSTextAttachment");
  classNSTextAttachment = result;
  getNSTextAttachmentClass = NSTextAttachmentFunction;
  return result;
}

void *__UIKitLibrary_block_invoke_22035()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib_22037 = result;
  return result;
}

void sub_21E314B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAVMetadataCommonKeyTitleSymbolLoc_block_invoke_22067(uint64_t a1)
{
  v2 = AVFoundationLibrary_22068();
  result = dlsym(v2, "AVMetadataCommonKeyTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAVMetadataCommonKeyTitleSymbolLoc_ptr_22066 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AVFoundationLibrary_22068()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AVFoundationLibraryCore_frameworkLibrary_22086)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AVFoundationLibraryCore_block_invoke_22087;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278349498;
    v6 = 0;
    AVFoundationLibraryCore_frameworkLibrary_22086 = _sl_dlopen();
  }

  v0 = AVFoundationLibraryCore_frameworkLibrary_22086;
  if (!AVFoundationLibraryCore_frameworkLibrary_22086)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AVFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFObjectNameProvider.m" lineNumber:38 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void __getAVURLAssetClass_block_invoke_22076(uint64_t a1)
{
  AVFoundationLibrary_22068();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVURLAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAVURLAssetClass_softClass_22075 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAVURLAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFObjectNameProvider.m" lineNumber:39 description:{@"Unable to find class %s", "AVURLAsset"}];

    __break(1u);
  }
}

uint64_t __AVFoundationLibraryCore_block_invoke_22087()
{
  result = _sl_dlopen();
  AVFoundationLibraryCore_frameworkLibrary_22086 = result;
  return result;
}

void sub_21E314FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMPMediaItemPropertyTitleSymbolLoc_block_invoke_22095(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_22097)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MediaPlayerLibraryCore_block_invoke_22098;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278349480;
    v7 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_22097 = _sl_dlopen();
  }

  v2 = MediaPlayerLibraryCore_frameworkLibrary_22097;
  if (!MediaPlayerLibraryCore_frameworkLibrary_22097)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"WFObjectNameProvider.m" lineNumber:34 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MPMediaItemPropertyTitle");
  *(*(a1[4] + 8) + 24) = result;
  getMPMediaItemPropertyTitleSymbolLoc_ptr_22094 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_22098()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_22097 = result;
  return result;
}

void sub_21E3153C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPHImportSessionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!PhotosLibraryCore_frameworkLibrary_22126)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __PhotosLibraryCore_block_invoke_22127;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278349468;
    v8 = 0;
    PhotosLibraryCore_frameworkLibrary_22126 = _sl_dlopen();
  }

  if (!PhotosLibraryCore_frameworkLibrary_22126)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PhotosLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFObjectNameProvider.m" lineNumber:25 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PHImportSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPHImportSessionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFObjectNameProvider.m" lineNumber:26 description:{@"Unable to find class %s", "PHImportSession"}];

LABEL_10:
    __break(1u);
  }

  getPHImportSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PhotosLibraryCore_block_invoke_22127()
{
  result = _sl_dlopen();
  PhotosLibraryCore_frameworkLibrary_22126 = result;
  return result;
}

id WFPageTitleFromHTMLFile(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a1 options:8 error:0];
  v2 = v1;
  if (v1)
  {
    v3 = WFPageTitleFromHTMLData(v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id WFPageTitleFromHTMLData(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v3 = [v1 bytes];

  v4 = WFCaseInsensitiveRangeOfStringInData(v3, v2, @"<title");
  v6 = 0;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v4 + v5;
    v8 = __OFSUB__(v2, v4 + v5);
    v9 = v2 - (v4 + v5);
    if (!((v9 < 0) ^ v8 | (v9 == 0)))
    {
      v10 = &v3[v7];
      v11 = WFCaseInsensitiveRangeOfStringInData(&v3[v7], v9, @">");
      v6 = 0;
      if (v11 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = &v10[v11 + v12];
        if (v13 < &v3[v2])
        {
          v14 = WFCaseInsensitiveRangeOfStringInData(v13, &v3[v2] - v13, @"</title");
          if (v14 == 0x7FFFFFFFFFFFFFFFLL || &v13[v14] >= &v3[v2])
          {
            v6 = 0;
          }

          else
          {
            v16 = [MEMORY[0x277CBEA90] dataWithBytes:v13 length:v14];
            v6 = [MEMORY[0x277CCACA8] wf_stringWithData:v16];
          }
        }
      }
    }
  }

  return v6;
}

uint64_t WFCaseInsensitiveRangeOfStringInData(const char *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 UTF8String];
  v8 = (v6 + 1);
  v7 = *v6;
  i = a1;
  if (v7)
  {
    v10 = __tolower(v7);
    v11 = strlen(v8);
    v12 = a2 - 1;
    for (i = a1; v12 != -1 && *i; ++i)
    {
      if (__tolower(*i) == v10)
      {
        if (v11 > v12)
        {
          break;
        }

        if (!strncasecmp(i + 1, v8, v11))
        {
          goto LABEL_10;
        }
      }

      --v12;
    }

    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
LABEL_10:
    v13 = i - a1;
    [v5 lengthOfBytesUsingEncoding:4];
  }

  return v13;
}

id WFDefaultLocalizedLabelForContentOperator(uint64_t a1)
{
  v3 = 0;
  if (a1 > 98)
  {
    if (a1 > 999)
    {
      if (a1 > 1001)
      {
        if (a1 == 1002)
        {
          v4 = @"is today";
        }

        else
        {
          if (a1 != 1003)
          {
            goto LABEL_38;
          }

          v4 = @"is between";
        }
      }

      else if (a1 == 1000)
      {
        v4 = @"is in the next";
      }

      else
      {
        v4 = @"is in the last";
      }
    }

    else if (a1 > 100)
    {
      if (a1 == 101)
      {
        v4 = @"does not have any value";
      }

      else
      {
        if (a1 != 999)
        {
          goto LABEL_38;
        }

        v4 = @"does not contain";
      }
    }

    else if (a1 == 99)
    {
      v4 = @"contains";
    }

    else
    {
      v4 = @"has any value";
    }
  }

  else if (a1 > 3)
  {
    if (a1 > 7)
    {
      if (a1 == 8)
      {
        v4 = @"begins with";
      }

      else
      {
        if (a1 != 9)
        {
          goto LABEL_38;
        }

        v4 = @"ends with";
      }
    }

    else if (a1 == 4)
    {
      v4 = @"is";
    }

    else
    {
      if (a1 != 5)
      {
        goto LABEL_38;
      }

      v4 = @"is not";
    }
  }

  else if (a1 > 1)
  {
    if (a1 == 2)
    {
      v4 = @"is greater than";
    }

    else
    {
      v4 = @"is greater than or equal to";
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_38;
    }

    v4 = @"is less than or equal to";
  }

  else
  {
    v4 = @"is less than";
  }

  v3 = WFLocalizedString(v4);
LABEL_38:

  return v3;
}

id WFSupportedItemClassesForItemClass(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = +[WFContentItemRegistry sharedRegistry];
        v12 = [v11 contentItemClassForType:v10];

        if (v12)
        {
          v13 = v12 == a1;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

id __WFCachedRecursivelySupportedTypes_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = [objc_alloc(MEMORY[0x277CBEB40]) initWithObject:v2];
  v5 = WFRecursivelySupportedTypesExcludingTraversedClasses(v1, isKindOfClass & 1, 0, v4);

  return v5;
}

id WFRecursivelySupportedTypesExcludingTraversedClasses(void *a1, uint64_t a2, char a3, void *a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a4;
  if (a3)
  {
    [objc_opt_class() supportedTypesExcludingInstanceSpecificTypes];
  }

  else
  {
    [v7 supportedTypes];
  }
  v30 = ;
  v9 = [v30 mutableCopy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = [v7 supportedItemClasses];
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    v33 = v7;
    v34 = *v40;
    v32 = a2;
    v31 = v10;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        if (([v8 containsObject:v15] & 1) == 0)
        {
          [v8 addObject:v15];
          if ([v15 supportedTypesMustBeDeterminedByInstance])
          {
            v16 = a2 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v17 = v15;
            v18 = a2;
            v19 = 0;
          }

          else
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              v21 = +[WFCoercionOptions new];
              v22 = [v7 itemsByCoercingToItemClass:v15 options:v21 error:0];

              if ([v22 count])
              {
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                v23 = v22;
                v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
                if (v24)
                {
                  v25 = v24;
                  v26 = *v36;
                  do
                  {
                    for (j = 0; j != v25; ++j)
                    {
                      if (*v36 != v26)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v28 = WFRecursivelySupportedTypesExcludingTraversedClasses(*(*(&v35 + 1) + 8 * j), 1, 0, v8);
                      [v9 unionOrderedSet:v28];
                    }

                    v25 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
                  }

                  while (v25);
                  v7 = v33;
                  a2 = v32;
                  v10 = v31;
                }
              }

              else
              {
                v23 = [v15 supportedTypesExcludingInstanceSpecificTypes];
                [v9 unionOrderedSet:v23];
              }

              v13 = v34;
              goto LABEL_30;
            }

            v17 = v15;
            v18 = 1;
            v19 = 1;
          }

          v22 = WFRecursivelySupportedTypesExcludingTraversedClasses(v17, v18, v19, v8);
          [v9 unionOrderedSet:v22];
LABEL_30:

          continue;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v12);
  }

  return v9;
}

id __WFInvokeObjectRepresentationsResultHandlerWithRepresentations_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 object];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 wfName];
    if (v6)
    {
      [v5 addObject:v6];
    }

    else
    {
      v7 = [MEMORY[0x277CBEB68] null];
      [v5 addObject:v7];
    }

    v8 = v4;
  }

  return v4;
}

void sub_21E31BC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__252(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E31C624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__22805(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t WFAnyInTypesConformsToType(void *a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    v9 = *MEMORY[0x277CE1D48];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isEqualToUTType:{v9, v14}] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_msgSend(v11, "conformsToType:", v4) & 1) != 0)
        {
          v12 = 1;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_13:

  return v12;
}

id WFPopStringForKey(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:v3];
  [v4 removeObjectForKey:v3];

  return v5;
}

id WFMakeContentAttributionSetFromOrigin(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  if (v7)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"WFContentAttributionSet * _Nonnull WFMakeContentAttributionSetFromOrigin(WFContentLocation * _Nonnull __strong, WFDisclosureLevel, NSArray<WFDisclosureWarning *> * _Nonnull __strong, NSUUID *__autoreleasing *)"}];
    [v13 handleFailureInFunction:v14 file:@"WFContentItem.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"origin"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"WFContentAttributionSet * _Nonnull WFMakeContentAttributionSetFromOrigin(WFContentLocation * _Nonnull __strong, WFDisclosureLevel, NSArray<WFDisclosureWarning *> * _Nonnull __strong, NSUUID *__autoreleasing *)"}];
  [v15 handleFailureInFunction:v16 file:@"WFContentItem.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"cachingIdentifier"}];

LABEL_3:
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [WFContentAttributionSet attributionSetWithOrigin:v7 disclosureLevel:a2 disclosureWarnings:v8 originalItemIdentifier:v9];
  v11 = v9;
  *a4 = v9;

  return v10;
}

void WFContactFromCNContactProperty(void *a1)
{
  v1 = a1;
  v2 = [v1 key];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v3 = getCNContactPhoneNumbersKeySymbolLoc_ptr_23376;
  v27 = getCNContactPhoneNumbersKeySymbolLoc_ptr_23376;
  if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_23376)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getCNContactPhoneNumbersKeySymbolLoc_block_invoke_23377;
    v23 = &unk_27834A178;
    v4 = ContactsLibrary_23378();
    v25[3] = dlsym(v4, "CNContactPhoneNumbersKey");
    getCNContactPhoneNumbersKeySymbolLoc_ptr_23376 = v25[3];
    v3 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v3)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactPhoneNumbersKey(void)"];
    [v18 handleFailureInFunction:v19 file:@"WFContactsUtilities.m" lineNumber:15 description:{@"%s", dlerror(), v20, v21, v22, v23}];
LABEL_23:

    __break(1u);
    return;
  }

  if ([v2 isEqualToString:*v3])
  {
    v5 = 3;
    goto LABEL_17;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v6 = getCNContactEmailAddressesKeySymbolLoc_ptr_23383;
  v27 = getCNContactEmailAddressesKeySymbolLoc_ptr_23383;
  if (!getCNContactEmailAddressesKeySymbolLoc_ptr_23383)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getCNContactEmailAddressesKeySymbolLoc_block_invoke_23384;
    v23 = &unk_27834A178;
    v7 = ContactsLibrary_23378();
    v25[3] = dlsym(v7, "CNContactEmailAddressesKey");
    getCNContactEmailAddressesKeySymbolLoc_ptr_23383 = v25[3];
    v6 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v6)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactEmailAddressesKey(void)"];
    [v18 handleFailureInFunction:v19 file:@"WFContactsUtilities.m" lineNumber:16 description:{@"%s", dlerror(), v20, v21, v22, v23}];
    goto LABEL_23;
  }

  if ([v2 isEqualToString:*v6])
  {
    v5 = 4;
    goto LABEL_17;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v8 = getCNContactUrlAddressesKeySymbolLoc_ptr_23387;
  v27 = getCNContactUrlAddressesKeySymbolLoc_ptr_23387;
  if (!getCNContactUrlAddressesKeySymbolLoc_ptr_23387)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getCNContactUrlAddressesKeySymbolLoc_block_invoke_23388;
    v23 = &unk_27834A178;
    v9 = ContactsLibrary_23378();
    v25[3] = dlsym(v9, "CNContactUrlAddressesKey");
    getCNContactUrlAddressesKeySymbolLoc_ptr_23387 = v25[3];
    v8 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v8)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getCNContactUrlAddressesKey(void)"];
    [v18 handleFailureInFunction:v19 file:@"WFContactsUtilities.m" lineNumber:17 description:{@"%s", dlerror(), v20, v21, v22, v23}];
    goto LABEL_23;
  }

  if ([v2 isEqualToString:*v8])
  {
    v5 = 22;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

LABEL_17:
  v10 = [v1 contact];
  v11 = [v10 valueForKey:v2];
  v12 = [v11 valueForKey:@"identifier"];
  v13 = [v1 identifier];
  v14 = [v12 indexOfObject:v13];

  v15 = [v1 contact];
  v16 = [WFCNContact contactWithCNContact:v15 propertyID:v5 multivalueIndex:v14];

  v17 = v16;
}

void sub_21E324A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCNContactPhoneNumbersKeySymbolLoc_block_invoke_23377(uint64_t a1)
{
  v2 = ContactsLibrary_23378();
  result = dlsym(v2, "CNContactPhoneNumbersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactPhoneNumbersKeySymbolLoc_ptr_23376 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *ContactsLibrary_23378()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_23398)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_23399;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2783499A0;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_23398 = _sl_dlopen();
  }

  v0 = ContactsLibraryCore_frameworkLibrary_23398;
  if (!ContactsLibraryCore_frameworkLibrary_23398)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFContactsUtilities.m" lineNumber:14 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getCNContactEmailAddressesKeySymbolLoc_block_invoke_23384(uint64_t a1)
{
  v2 = ContactsLibrary_23378();
  result = dlsym(v2, "CNContactEmailAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactEmailAddressesKeySymbolLoc_ptr_23383 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getCNContactUrlAddressesKeySymbolLoc_block_invoke_23388(uint64_t a1)
{
  v2 = ContactsLibrary_23378();
  result = dlsym(v2, "CNContactUrlAddressesKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCNContactUrlAddressesKeySymbolLoc_ptr_23387 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_23399()
{
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_23398 = result;
  return result;
}

id WFPredicateForEnablingPerson(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 if_map:&__block_literal_global_23403];
    v3 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  return v3;
}

id WFPredicateForSelectionOfPerson(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __WFPredicateForSelectionOfPerson_block_invoke;
    v5[3] = &unk_27834A228;
    v6 = v1;
    v2 = [v6 if_map:v5];
    v3 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v2];
  }

  else
  {
    v3 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  return v3;
}

id __WFPredicateForSelectionOfPerson_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __WFPredicateForSelectionOfPerson_block_invoke_2;
  v9[3] = &unk_27834A228;
  v10 = v3;
  v5 = v3;
  v6 = [v4 if_map:v9];
  v7 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v6];

  return v7;
}

id __WFPredicateForSelectionOfPerson_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqualToString:v3])
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count == 1", *(a1 + 32)];
  }

  else
  {
    [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count == 0", v3];
  }
  v4 = ;

  return v4;
}

id getFPSandboxingURLWrapperClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFPSandboxingURLWrapperClass_softClass;
  v7 = getFPSandboxingURLWrapperClass_softClass;
  if (!getFPSandboxingURLWrapperClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFPSandboxingURLWrapperClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getFPSandboxingURLWrapperClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E325778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFPSandboxingURLWrapperClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!FileProviderLibraryCore_frameworkLibrary_23466)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __FileProviderLibraryCore_block_invoke_23467;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2783499B8;
    v8 = 0;
    FileProviderLibraryCore_frameworkLibrary_23466 = _sl_dlopen();
  }

  if (!FileProviderLibraryCore_frameworkLibrary_23466)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFSecurityScopedFileCoder.m" lineNumber:18 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("FPSandboxingURLWrapper");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFPSandboxingURLWrapperClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFSecurityScopedFileCoder.m" lineNumber:19 description:{@"Unable to find class %s", "FPSandboxingURLWrapper"}];

LABEL_10:
    __break(1u);
  }

  getFPSandboxingURLWrapperClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FileProviderLibraryCore_block_invoke_23467()
{
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary_23466 = result;
  return result;
}

uint64_t handle_mime(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 & 0x10) != 0)
  {
    result = file_printf(a1, "inode/%s", a3, a4, a5, a6, a7, a8, a3);
    if (result == -1)
    {
      return result;
    }

    if ((a2 & 0x400) == 0)
    {
      return 0;
    }

    result = file_printf(a1, "; charset=", v11, v12, v13, v14, v15, v16, v18);
    if (result == -1)
    {
      return result;
    }

LABEL_7:
    result = file_printf(a1, "binary", a3, a4, a5, a6, a7, a8, v17);
    if (result == -1)
    {
      return result;
    }

    return 0;
  }

  if ((a2 & 0x400) != 0)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t bad_link(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = *(a1 + 68);
  if ((v11 & 0x10) == 0 || (result = file_printf(a1, "inode/symlink", a3, a4, a5, a6, a7, a8, v13), result != -1))
  {
    if ((v11 & 0x410) != 0)
    {
      return 1;
    }

    if ((*(a1 + 69) & 2) != 0)
    {
      file_error(a1, a2, "broken symbolic link to %s", a4, a5, a6, a7, a8, v8);
      return 0xFFFFFFFFLL;
    }

    else
    {
      result = file_printf(a1, "broken symbolic link to %s", a3, a4, a5, a6, a7, a8, v8);
      if (result != -1)
      {
        return 1;
      }
    }
  }

  return result;
}

id WFURLSchemesInBundle(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v1 objectForInfoDictionaryKey:{@"CFBundleURLTypes", 0}];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) objectForKey:@"CFBundleURLSchemes"];
        [v2 addObjectsFromArray:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

id getCLLocationClass_24982()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLLocationClass_softClass_25057;
  v7 = getCLLocationClass_softClass_25057;
  if (!getCLLocationClass_softClass_25057)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLLocationClass_block_invoke_25058;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCLLocationClass_block_invoke_25058(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E32DCC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCLPlacemarkClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLPlacemarkClass_softClass_25050;
  v7 = getCLPlacemarkClass_softClass_25050;
  if (!getCLPlacemarkClass_softClass_25050)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLPlacemarkClass_block_invoke_25051;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCLPlacemarkClass_block_invoke_25051(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E32DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCLGeocoderClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCLGeocoderClass_softClass_25034;
  v7 = getCLGeocoderClass_softClass_25034;
  if (!getCLGeocoderClass_softClass_25034)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCLGeocoderClass_block_invoke_25035;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getCLGeocoderClass_block_invoke_25035(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E32DFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E32E6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMKLocalSearchRequestClass_block_invoke_25005(uint64_t a1)
{
  MapKitLibrary_25009();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLocalSearchRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLocalSearchRequestClass_softClass_25004 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKLocalSearchRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFLocationContentItem.m" lineNumber:36 description:{@"Unable to find class %s", "MKLocalSearchRequest"}];

    __break(1u);
  }
}

void __getMKLocalSearchClass_block_invoke_25007(uint64_t a1)
{
  MapKitLibrary_25009();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKLocalSearch");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKLocalSearchClass_softClass_25006 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKLocalSearchClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFLocationContentItem.m" lineNumber:37 description:{@"Unable to find class %s", "MKLocalSearch"}];

    __break(1u);
  }
}

void *MapKitLibrary_25009()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MapKitLibraryCore_frameworkLibrary_25017)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MapKitLibraryCore_block_invoke_25018;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278349D90;
    v6 = 0;
    MapKitLibraryCore_frameworkLibrary_25017 = _sl_dlopen();
  }

  v0 = MapKitLibraryCore_frameworkLibrary_25017;
  if (!MapKitLibraryCore_frameworkLibrary_25017)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MapKitLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFLocationContentItem.m" lineNumber:35 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MapKitLibraryCore_block_invoke_25018()
{
  result = _sl_dlopen();
  MapKitLibraryCore_frameworkLibrary_25017 = result;
  return result;
}

id getMKPlacemarkClass_25029()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMKPlacemarkClass_softClass_25030;
  v7 = getMKPlacemarkClass_softClass_25030;
  if (!getMKPlacemarkClass_softClass_25030)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMKPlacemarkClass_block_invoke_25031;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getMKPlacemarkClass_block_invoke_25031(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E32F10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMKPlacemarkClass_block_invoke_25031(uint64_t a1)
{
  MapKitLibrary_25009();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKPlacemark");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKPlacemarkClass_softClass_25030 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKPlacemarkClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFLocationContentItem.m" lineNumber:43 description:{@"Unable to find class %s", "MKPlacemark"}];

    __break(1u);
  }
}

void __getCLGeocoderClass_block_invoke_25035(uint64_t a1)
{
  CoreLocationLibrary_25036();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLGeocoder");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLGeocoderClass_softClass_25034 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLGeocoderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFLocationContentItem.m" lineNumber:33 description:{@"Unable to find class %s", "CLGeocoder"}];

    __break(1u);
  }
}

void CoreLocationLibrary_25036()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!CoreLocationLibraryCore_frameworkLibrary_25039)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __CoreLocationLibraryCore_block_invoke_25040;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278349D78;
    v5 = 0;
    CoreLocationLibraryCore_frameworkLibrary_25039 = _sl_dlopen();
  }

  if (!CoreLocationLibraryCore_frameworkLibrary_25039)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreLocationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"WFLocationContentItem.m" lineNumber:30 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __CoreLocationLibraryCore_block_invoke_25040()
{
  result = _sl_dlopen();
  CoreLocationLibraryCore_frameworkLibrary_25039 = result;
  return result;
}

void __getCLPlacemarkClass_block_invoke_25051(uint64_t a1)
{
  CoreLocationLibrary_25036();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLPlacemark");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLPlacemarkClass_softClass_25050 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLPlacemarkClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFLocationContentItem.m" lineNumber:32 description:{@"Unable to find class %s", "CLPlacemark"}];

    __break(1u);
  }
}

void __getCLLocationClass_block_invoke_25058(uint64_t a1)
{
  CoreLocationLibrary_25036();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CLLocation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCLLocationClass_softClass_25057 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCLLocationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFLocationContentItem.m" lineNumber:31 description:{@"Unable to find class %s", "CLLocation"}];

    __break(1u);
  }
}

void sub_21E32FCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMKMapSnapshotOptionsClass_block_invoke(uint64_t a1)
{
  MapKitLibrary_25009();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKMapSnapshotOptions");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKMapSnapshotOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKMapSnapshotOptionsClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFLocationContentItem.m" lineNumber:40 description:{@"Unable to find class %s", "MKMapSnapshotOptions"}];

    __break(1u);
  }
}

void *__getMKCoordinateRegionMakeWithDistanceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MapKitLibrary_25009();
  result = dlsym(v2, "MKCoordinateRegionMakeWithDistance");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKCoordinateRegionMakeWithDistanceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getMKMapItemClass_25062()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMKMapItemClass_softClass_25067;
  v7 = getMKMapItemClass_softClass_25067;
  if (!getMKMapItemClass_softClass_25067)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMKMapItemClass_block_invoke_25068;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getMKMapItemClass_block_invoke_25068(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E32FF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMKMapSnapshotCustomFeatureAnnotationClass_block_invoke(uint64_t a1)
{
  MapKitLibrary_25009();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKMapSnapshotCustomFeatureAnnotation");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKMapSnapshotCustomFeatureAnnotationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKMapSnapshotCustomFeatureAnnotationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFLocationContentItem.m" lineNumber:39 description:{@"Unable to find class %s", "MKMapSnapshotCustomFeatureAnnotation"}];

    __break(1u);
  }
}

void __getMKMapSnapshotterClass_block_invoke(uint64_t a1)
{
  MapKitLibrary_25009();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKMapSnapshotter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKMapSnapshotterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKMapSnapshotterClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFLocationContentItem.m" lineNumber:41 description:{@"Unable to find class %s", "MKMapSnapshotter"}];

    __break(1u);
  }
}

void __getMKMapItemClass_block_invoke_25068(uint64_t a1)
{
  MapKitLibrary_25009();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MKMapItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMKMapItemClass_softClass_25067 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMKMapItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFLocationContentItem.m" lineNumber:38 description:{@"Unable to find class %s", "MKMapItem"}];

    __break(1u);
  }
}

void sub_21E3331F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getNSDocumentTypeDocumentAttributeSymbolLoc_block_invoke_25583(uint64_t a1)
{
  v2 = UIFoundationLibrary_25584();
  result = dlsym(v2, "NSDocumentTypeDocumentAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSDocumentTypeDocumentAttributeSymbolLoc_ptr_25582 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *UIFoundationLibrary_25584()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UIFoundationLibraryCore_frameworkLibrary_25599)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIFoundationLibraryCore_block_invoke_25600;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278349F38;
    v6 = 0;
    UIFoundationLibraryCore_frameworkLibrary_25599 = _sl_dlopen();
  }

  v0 = UIFoundationLibraryCore_frameworkLibrary_25599;
  if (!UIFoundationLibraryCore_frameworkLibrary_25599)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIFoundationLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFNSItemProviderContentItem.m" lineNumber:20 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getNSHTMLTextDocumentTypeSymbolLoc_block_invoke_25590(uint64_t a1)
{
  v2 = UIFoundationLibrary_25584();
  result = dlsym(v2, "NSHTMLTextDocumentType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNSHTMLTextDocumentTypeSymbolLoc_ptr_25589 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIFoundationLibraryCore_block_invoke_25600()
{
  result = _sl_dlopen();
  UIFoundationLibraryCore_frameworkLibrary_25599 = result;
  return result;
}

void sub_21E333E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25619(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E336D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21E3373B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMPMediaItemCollectionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_26318)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaPlayerLibraryCore_block_invoke_26319;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_27834A100;
    v8 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_26318 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_26318)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFMediaCollectionContentItem.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPMediaItemCollection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemCollectionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFMediaCollectionContentItem.m" lineNumber:16 description:{@"Unable to find class %s", "MPMediaItemCollection"}];

LABEL_10:
    __break(1u);
  }

  getMPMediaItemCollectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_26319()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_26318 = result;
  return result;
}

id getFIUIWorkoutActivityTypeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getFIUIWorkoutActivityTypeClass_softClass;
  v7 = getFIUIWorkoutActivityTypeClass_softClass;
  if (!getFIUIWorkoutActivityTypeClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getFIUIWorkoutActivityTypeClass_block_invoke;
    v3[3] = &unk_27834A178;
    v3[4] = &v4;
    __getFIUIWorkoutActivityTypeClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21E3377D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFIUIWorkoutActivityTypeClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!FitnessUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __FitnessUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_27834A118;
    v8 = 0;
    FitnessUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FitnessUILibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FitnessUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"WFFitnessWorkoutActivityTypeContentItem.m" lineNumber:14 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("FIUIWorkoutActivityType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFIUIWorkoutActivityTypeClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"WFFitnessWorkoutActivityTypeContentItem.m" lineNumber:15 description:{@"Unable to find class %s", "FIUIWorkoutActivityType"}];

LABEL_10:
    __break(1u);
  }

  getFIUIWorkoutActivityTypeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FitnessUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FitnessUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_21E33AA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaItemClass_block_invoke_26904(uint64_t a1)
{
  MediaPlayerLibrary_26905();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaItemClass_softClass_26903 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMPMediaLibraryFiltering.m" lineNumber:18 description:{@"Unable to find class %s", "MPMediaItem"}];

    __break(1u);
  }
}

void *MediaPlayerLibrary_26905()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_26916)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MediaPlayerLibraryCore_block_invoke_26917;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27834A198;
    v6 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_26916 = _sl_dlopen();
  }

  v0 = MediaPlayerLibraryCore_frameworkLibrary_26916;
  if (!MediaPlayerLibraryCore_frameworkLibrary_26916)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"WFMPMediaLibraryFiltering.m" lineNumber:15 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_26917()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_26916 = result;
  return result;
}

void *__getMPMediaItemPropertyMediaTypeSymbolLoc_block_invoke_26927(uint64_t a1)
{
  v2 = MediaPlayerLibrary_26905();
  result = dlsym(v2, "MPMediaItemPropertyMediaType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMPMediaItemPropertyMediaTypeSymbolLoc_ptr_26926 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WFMPMediaTypeMapping()
{
  v10[7] = *MEMORY[0x277D85DE8];
  v9[0] = &unk_282F7BD58;
  v0 = WFLocalizedContentPropertyPossibleValueMarker(@"Music");
  v10[0] = v0;
  v9[1] = &unk_282F7BD70;
  v1 = WFLocalizedContentPropertyPossibleValueMarker(@"Podcast");
  v10[1] = v1;
  v9[2] = &unk_282F7BD88;
  v2 = WFLocalizedContentPropertyPossibleValueMarker(@"Audiobook");
  v10[2] = v2;
  v9[3] = &unk_282F7BDA0;
  v3 = WFLocalizedContentPropertyPossibleValueMarker(@"iTunes U");
  v10[3] = v3;
  v9[4] = &unk_282F7BDB8;
  v4 = WFLocalizedContentPropertyPossibleValueMarker(@"Movie");
  v10[4] = v4;
  v9[5] = &unk_282F7BDD0;
  v5 = WFLocalizedContentPropertyPossibleValueMarker(@"TV Show");
  v10[5] = v5;
  v9[6] = &unk_282F7BDE8;
  v6 = WFLocalizedContentPropertyPossibleValueMarker(@"Music Video");
  v10[6] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:7];

  return v7;
}

void __getMPMediaPropertyPredicateClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary_26905();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaPropertyPredicate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaPropertyPredicateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaPropertyPredicateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMPMediaLibraryFiltering.m" lineNumber:16 description:{@"Unable to find class %s", "MPMediaPropertyPredicate"}];

    __break(1u);
  }
}

id getWFMediaLibraryFilteringLogObject()
{
  if (getWFMediaLibraryFilteringLogObject_onceToken != -1)
  {
    dispatch_once(&getWFMediaLibraryFilteringLogObject_onceToken, &__block_literal_global_26938);
  }

  v1 = getWFMediaLibraryFilteringLogObject_log;

  return v1;
}

void __getMPMediaQueryClass_block_invoke_26934(uint64_t a1)
{
  MediaPlayerLibrary_26905();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass_26933 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"WFMPMediaLibraryFiltering.m" lineNumber:17 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

uint64_t __getWFMediaLibraryFilteringLogObject_block_invoke()
{
  getWFMediaLibraryFilteringLogObject_log = os_log_create(*MEMORY[0x277D7A500], "MediaLibraryFiltering");

  return MEMORY[0x2821F96F8]();
}

void sub_21E33B9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__26995(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_21E33C034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFEntitlementsForExecutableAtPath(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  staticCode = 0;
  v1 = 0;
  if (!SecStaticCodeCreateWithPath([MEMORY[0x277CBEBC0] fileURLWithPath:a1], 0, &staticCode))
  {
    v5 = 0;
    SecCodeCopySigningInformation(staticCode, 4u, &v5);
    CFRelease(staticCode);
    v2 = v5;
    v1 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x277CDC258]];
    if (!v1)
    {
      v3 = getWFGeneralLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v8 = "WFEntitlementsForExecutableAtPath";
        _os_log_impl(&dword_21E1BD000, v3, OS_LOG_TYPE_FAULT, "%s Failed to retrieve entitlements of executable", buf, 0xCu);
      }
    }
  }

  return v1;
}

void WFGetContentLocationFromURLActionInput(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __WFGetContentLocationFromURLActionInput_block_invoke;
    v6[3] = &unk_27834A4C8;
    v7 = v4;
    [v3 getObjectRepresentations:v6 forClass:objc_opt_class()];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

void __WFGetContentLocationFromURLActionInput_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (a4)
  {
    v8 = *(*(a1 + 32) + 16);
LABEL_3:
    v8();
    goto LABEL_25;
  }

  if (![v6 count])
  {
    v8 = *(*(a1 + 32) + 16);
    goto LABEL_3;
  }

  v29 = a1;
  v9 = [v7 if_map:&__block_literal_global_27105];

  v30 = 0;
  v10 = v9;
  v11 = [MEMORY[0x277CBEB58] set];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v10;
  v12 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        v17 = [MEMORY[0x277CC1E80] defaultWorkspace];
        v18 = [v17 applicationsAvailableForOpeningURL:v16];
        v19 = [v18 firstObject];
        v20 = [v19 correspondingApplicationRecord];

        if (v20)
        {
          v21 = [v20 bundleIdentifier];
          [v11 addObject:v21];
        }
      }

      v13 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v13);
  }

  if ([v11 count] && objc_msgSend(v11, "count") < 2 && !objc_msgSend(v11, "containsObject:", *MEMORY[0x277D7A2C8]))
  {
    v25 = objc_alloc(MEMORY[0x277CD3A58]);
    v26 = [v11 anyObject];
    v22 = [v25 initWithBundleIdentifier:v26];

    v27 = [MEMORY[0x277CD3A88] sharedResolver];
    v28 = [v27 resolvedAppMatchingDescriptor:v22];

    v23 = [WFAppContentLocation locationWithAppDescriptor:v28];
  }

  else
  {
    v22 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v23 = [WFURLContentLocation locationWithURLs:v22 error:&v30];
  }

  v24 = v30;
  if (!v23)
  {
    if ([v7 count])
    {
      v23 = +[(WFContentLocation *)WFAppContentLocation];
    }

    else
    {
      v23 = 0;
    }
  }

  (*(*(v29 + 32) + 16))();

LABEL_25:
}

void sub_21E33EE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFRepresentationsFromCoercionHandlerResult(void *a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 if_map:&__block_literal_global_27793];
  }

  else if (v1)
  {
    v3 = WFRepresentationFromCoercionHandlerResultObject(v1);
    v5[0] = v3;
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id WFRepresentationFromCoercionHandlerResultObject(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"WFRepresentation * _Nonnull WFRepresentationFromCoercionHandlerResultObject(id  _Nonnull __strong)"];
    [v5 handleFailureInFunction:v6 file:@"WFCoercion.m" lineNumber:128 description:{@"The result of a coercion must be a representation, not a WFContentItem."}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = [WFObjectRepresentation object:v1];
  }

  v3 = v2;

  return v3;
}

void sub_21E342760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27927(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}