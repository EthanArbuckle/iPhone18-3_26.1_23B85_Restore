_BYTE *copy_string(const void *a1, size_t a2)
{
  v4 = a2 + 1;
  v5 = malloc_type_malloc(a2 + 1, 0x64BDC953uLL);
  v6 = v5;
  if (v5)
  {
    memcpy(v5, a1, a2);
    v6[a2] = 0;
  }

  else
  {
    v7 = *MEMORY[0x277D85DF8];
    v8 = __error();
    v9 = strerror(*v8);
    fprintf(v7, "Could not allocate copy buffer of %ld bytes: %s\n", v4, v9);
  }

  return v6;
}

uint64_t BOMCopierSourceEntryNewFromFSObject(const char *a1, uint64_t a2, __int16 a3, void *a4)
{
  v59 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1023, "BOMCopierSourceEntryNewFromFSObject", "Invalid source_path");
    goto LABEL_11;
  }

  if (!a2)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1029, "BOMCopierSourceEntryNewFromFSObject", "Invalid fso");
    goto LABEL_11;
  }

  v8 = BOMFSObjectMode(a2);
  v9 = BOMFSObjectPathName(a2);
  if (!v9)
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1047, "BOMCopierSourceEntryNewFromFSObject", "Could not retrieve path from fso\n");
    goto LABEL_11;
  }

  v10 = v9;
  v11 = mode_to_source_entry_type(v8);
  if (*v10 == 46)
  {
    v12 = *(v10 + 1) == 0;
    if (*(v10 + 1))
    {
      v13 = 0;
    }

    else
    {
      v13 = 6;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v13;
  }

  v18 = BOMCopierSourceEntryNew(v17, a4);
  v14 = v18;
  if (!v18)
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1063, "BOMCopierSourceEntryNewFromFSObject", "Could not create BOMCopierSourceEntry from %d", v17);
    goto LABEL_12;
  }

  *v18 = 4;
  v19 = strdup(v10);
  *(v14 + 24) = v19;
  if (!v19)
  {
    v22 = __error();
    strerror(*v22);
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1076, "BOMCopierSourceEntryNewFromFSObject", "Could not duplicate fso_path %s: %s\n");
    goto LABEL_65;
  }

  v57 = 0;
  if (v12)
  {
    v20 = strdup(a1);
    v57 = v20;
    if (!v20)
    {
      v21 = __error();
      strerror(*v21);
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1087, "BOMCopierSourceEntryNewFromFSObject", "Could not duplicate %s: %s\n");
      goto LABEL_65;
    }
  }

  else if (asprintf(&v57, "%s/%s", a1, (v10 + 2)) == -1 || (v20 = v57) == 0)
  {
    v31 = __error();
    strerror(*v31);
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1097, "BOMCopierSourceEntryNewFromFSObject", "Could not construct path from %s and %s: %s\n", a1);
    goto LABEL_65;
  }

  memset(&v56, 0, sizeof(v56));
  v23 = lstat(v20, &v56);
  if (v23)
  {
    if (*__error() != 13 && *__error() != 1)
    {
      v35 = *__error();
      v36 = __error();
      strerror(*v36);
      BOMCopierErrorCapture(a4, v35, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1121, "BOMCopierSourceEntryNewFromFSObject", "Could not lstat %s: %s\n");
      goto LABEL_65;
    }

    if ((a3 & 0x100) == 0)
    {
      v24 = *__error();
      v25 = __error();
      strerror(*v25);
      BOMCopierErrorCapture(a4, v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1113, "BOMCopierSourceEntryNewFromFSObject", "Could not lstat %s: %s\n");
      goto LABEL_65;
    }
  }

  v55 = 0;
  v26 = resolve_path(v57, v17 == 9, &v55);
  *(v14 + 16) = v26;
  if (!v26)
  {
    Code = BOMCopierErrorGetCode(v55);
    if (Code == 13 || Code == 1)
    {
      if ((a3 & 0x100) == 0)
      {
        v33 = *__error();
        v34 = __error();
        strerror(*v34);
        BOMCopierErrorCapture(a4, v33, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1137, "BOMCopierSourceEntryNewFromFSObject", "Could not resolve path for %s: %s\n");
        goto LABEL_65;
      }

      BOMCopierErrorFree(v55);
      goto LABEL_49;
    }

    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1147, "BOMCopierSourceEntryNewFromFSObject", "Could not resolve %s", v57);
    BOMCopierSourceEntryFree(v14);
    free(v57);
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  if (v23)
  {
LABEL_49:
    v37 = v57;
    v38 = strdup(v57);
    *(v14 + 16) = v38;
    if (v38)
    {
      free(v37);
      if (v17 == 9)
      {
        v39 = BOMFSObjectSymlinkTarget(a2);
        if (!v39)
        {
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1183, "BOMCopierSourceEntryNewFromFSObject", "Could not get symlink target from fso\n", v53, v54);
          goto LABEL_65;
        }

        v40 = strdup(v39);
        *(v14 + 48) = v40;
        if (!v40)
        {
          v50 = __error();
          strerror(*v50);
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1191, "BOMCopierSourceEntryNewFromFSObject", "Could not duplicate %s: %s\n");
          goto LABEL_65;
        }
      }

      *(v14 + 92) = BOMFSObjectMode(a2);
      *(v14 + 84) = BOMFSObjectUserID(a2);
      *(v14 + 88) = BOMFSObjectGroupID(a2);
      v41 = BOMFSObjectSize(a2);
      *(v14 + 104) = 0;
      *(v14 + 112) = 0;
      *(v14 + 96) = v41;
      *(v14 + 120) = BOMFSObjectModTime(a2);
      *(v14 + 128) = 0;
      *(v14 + 136) = 0;
      *(v14 + 144) = 0;
      *(v14 + 152) = 0;
      goto LABEL_12;
    }

    v42 = *__error();
    v43 = v57;
    v44 = __error();
    v45 = strerror(*v44);
    BOMCopierErrorCapture(a4, v42, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1165, "BOMCopierSourceEntryNewFromFSObject", "Could not duplicate %s: %s", v43, v45);
    free(v57);
LABEL_65:
    BOMCopierSourceEntryFree(v14);
    goto LABEL_11;
  }

  free(v57);
  if (v17 == 9)
  {
    bzero(__s1, 0x400uLL);
    v27 = readlink(*(v14 + 16), __s1, 0x400uLL);
    if (v27 == -1)
    {
      v47 = *__error();
      v48 = *(v14 + 16);
      v49 = __error();
      strerror(*v49);
      BOMCopierErrorCapture(a4, v47, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1226, "BOMCopierSourceEntryNewFromFSObject", "Could not readlink %s: %s\n");
      goto LABEL_65;
    }

    __s1[v27] = 0;
    v28 = strdup(__s1);
    *(v14 + 48) = v28;
    if (!v28)
    {
      v51 = *__error();
      v52 = __error();
      strerror(*v52);
      BOMCopierErrorCapture(a4, v51, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1236, "BOMCopierSourceEntryNewFromFSObject", "Could not duplicate %s: %s\n");
      goto LABEL_65;
    }
  }

  *(v14 + 84) = *&v56.st_uid;
  st_mtimespec = v56.st_mtimespec;
  *(v14 + 104) = v56.st_atimespec;
  *(v14 + 64) = v56.st_dev;
  *(v14 + 72) = v56.st_ino;
  *(v14 + 80) = v56.st_nlink;
  *(v14 + 92) = v56.st_mode;
  *(v14 + 96) = v56.st_size;
  *(v14 + 120) = st_mtimespec;
  *(v14 + 136) = v56.st_ctimespec;
  *(v14 + 152) = v56.st_flags;
  if ((a3 & 0x80) != 0)
  {
    *(v14 + 84) = BOMFSObjectUserID(a2);
  }

  if ((a3 & 2) != 0 && v17 == 8)
  {
    v30 = parse_regular_file(v14, a4);
    if (v30)
    {
      BOMCopierErrorCapture(a4, v30, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1280, "BOMCopierSourceEntryNewFromFSObject", "Could not parse the regular file", v53, v54);
      goto LABEL_65;
    }
  }

  v46 = capture_extended_attributes(v14, a3, a4);
  if (v46)
  {
    BOMCopierErrorCapture(a4, v46, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1294, "BOMCopierSourceEntryNewFromFSObject", "Could not capture extended attributes", v53, v54);
    goto LABEL_65;
  }

  if ((a3 & 0x20) != 0 && capture_acl(v14, a4))
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1308, "BOMCopierSourceEntryNewFromFSObject", "Could not capture access control list", v53, v54);
    goto LABEL_65;
  }

LABEL_12:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t BOMCopierSourceEntryNewFromLibarchive(uint64_t a1, uint64_t a2, __int16 a3, void *a4)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1343, "BOMCopierSourceEntryNewFromLibarchive", "Invalid archive");
    return 0;
  }

  if (!a2)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1349, "BOMCopierSourceEntryNewFromLibarchive", "Invalid archive_entry");
    return 0;
  }

  v8 = archive_entry_mode();
  v9 = mode_to_source_entry_type(v8);
  v10 = BOMCopierSourceEntryNew(v9, 0);
  v11 = v10;
  if (!v10)
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1364, "BOMCopierSourceEntryNewFromLibarchive", "Could not create BOMCopierSourceEntry from %d", v9);
    return v11;
  }

  *v10 = 5;
  v12 = archive_entry_pathname();
  v13 = strlen(v12) - 1;
  if (v12[v13] == 47)
  {
    v14 = strdup(v12);
    if (!v14)
    {
      v36 = *__error();
      v37 = __error();
      strerror(*v37);
      BOMCopierErrorCapture(a4, v36, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1386, "BOMCopierSourceEntryNewFromLibarchive", "Could not duplicate %s: %s");
      goto LABEL_22;
    }

    v15 = v14;
    v14[v13] = 0;
    v12 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = strdup(v12);
  *(v11 + 24) = v16;
  if (!v16)
  {
    v32 = *__error();
    v33 = __error();
    strerror(*v33);
    BOMCopierErrorCapture(a4, v32, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1398, "BOMCopierSourceEntryNewFromLibarchive", "Could not duplicate %s: %s");
LABEL_22:
    BOMCopierSourceEntryFree(v11);
    return 0;
  }

  v17 = strdup(v12);
  *(v11 + 16) = v17;
  if (!v17)
  {
    v34 = *__error();
    v35 = __error();
    strerror(*v35);
    BOMCopierErrorCapture(a4, v34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1406, "BOMCopierSourceEntryNewFromLibarchive", "Could not duplicate %s: %s");
    goto LABEL_22;
  }

  if (v15)
  {
    free(v15);
  }

  *(v11 + 256) = a1;
  *(v11 + 264) = a2;
  *(v11 + 64) = archive_entry_dev();
  v18 = *(v11 + 264);
  *(v11 + 72) = archive_entry_ino();
  v19 = *(v11 + 264);
  *(v11 + 80) = archive_entry_nlink();
  v20 = *(v11 + 264);
  *(v11 + 92) = archive_entry_mode();
  v21 = *(v11 + 264);
  *(v11 + 84) = archive_entry_uid();
  v22 = *(v11 + 264);
  *(v11 + 88) = archive_entry_gid();
  v23 = *(v11 + 264);
  *(v11 + 96) = archive_entry_size();
  v24 = *(v11 + 264);
  *(v11 + 104) = archive_entry_atime();
  v25 = *(v11 + 264);
  *(v11 + 112) = archive_entry_atime_nsec();
  v26 = *(v11 + 264);
  *(v11 + 120) = archive_entry_mtime();
  v27 = *(v11 + 264);
  *(v11 + 128) = archive_entry_mtime_nsec();
  v28 = *(v11 + 264);
  *(v11 + 136) = archive_entry_ctime();
  v29 = *(v11 + 264);
  *(v11 + 144) = archive_entry_ctime_nsec();
  if ((a3 & 0x200) != 0)
  {
    v30 = *(v11 + 92);
    if ((v30 & 0xF000) == 0x4000)
    {
      v31 = v30 | 0x1ED;
    }

    else if ((*(v11 + 92) & 0xE00) != 0)
    {
      v31 = -32348;
    }

    else
    {
      v31 = v30 | 0x1A4;
    }

    *(v11 + 92) = v31;
  }

  if (v9 != 8)
  {
    if (v9 != 9)
    {
      return v11;
    }

    v39 = archive_entry_symlink();
    if (v39)
    {
      v40 = strdup(v39);
      *(v11 + 48) = v40;
      if (v40)
      {
        *(v11 + 96) = strlen(v40);
        return v11;
      }

      v41 = *__error();
      v42 = __error();
      strerror(*v42);
      BOMCopierErrorCapture(a4, v41, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1461, "BOMCopierSourceEntryNewFromLibarchive", "Could not duplicate %s: %s\n");
    }

    else
    {
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1453, "BOMCopierSourceEntryNewFromLibarchive", "Could not get symlink target from Libarchive entry\n");
    }

    goto LABEL_22;
  }

  if ((a3 & 2) != 0 && parse_regular_file(v11, a4))
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1480, "BOMCopierSourceEntryNewFromLibarchive", "Could not parse the regular file");
    goto LABEL_22;
  }

  return v11;
}

uint64_t BOMCopierSourceEntryNewFromDataArchive(uint64_t a1, _DWORD *a2, __int16 a3, void *a4)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1500, "BOMCopierSourceEntryNewFromDataArchive", "Invalid data_archive");
    return 0;
  }

  if (!a2)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1506, "BOMCopierSourceEntryNewFromDataArchive", "Invalid data_archive_entry");
    return 0;
  }

  type = data_archive_entry_get_type(a2);
  v9 = data_archive_entry_mode(a2);
  v10 = mode_to_source_entry_type(v9);
  v11 = v10;
  if (type == 3)
  {
    switch(v10)
    {
      case 6:
        v11 = 14;
        break;
      case 9:
        v11 = 16;
        break;
      case 8:
        v11 = 15;
        break;
      default:
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1533, "BOMCopierSourceEntryNewFromDataArchive", "Unexpected post order entry type: %u");
        return 0;
    }
  }

  v12 = BOMCopierSourceEntryNew(v11, a4);
  v13 = v12;
  if (!v12)
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1541, "BOMCopierSourceEntryNewFromDataArchive", "Could not create BOMCopierSourceEntry from %d", v11);
    return v13;
  }

  *v12 = 6;
  v14 = data_archive_entry_path(a2);
  v15 = strlen(v14) - 1;
  if (v14[v15] == 47)
  {
    v16 = strdup(v14);
    if (!v16)
    {
      v28 = *__error();
      v29 = __error();
      strerror(*v29);
      BOMCopierErrorCapture(a4, v28, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1563, "BOMCopierSourceEntryNewFromDataArchive", "Could not duplicate %s: %s");
      goto LABEL_41;
    }

    v17 = v16;
    v16[v15] = 0;
    v14 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = strdup(v14);
  *(v13 + 24) = v18;
  if (!v18)
  {
    v24 = *__error();
    v25 = __error();
    strerror(*v25);
    BOMCopierErrorCapture(a4, v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1575, "BOMCopierSourceEntryNewFromDataArchive", "Could not duplicate %s: %s");
LABEL_41:
    BOMCopierSourceEntryFree(v13);
    return 0;
  }

  v19 = strdup(v14);
  *(v13 + 16) = v19;
  if (!v19)
  {
    v26 = *__error();
    v27 = __error();
    strerror(*v27);
    BOMCopierErrorCapture(a4, v26, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1583, "BOMCopierSourceEntryNewFromDataArchive", "Could not duplicate %s: %s");
    goto LABEL_41;
  }

  if (v17)
  {
    free(v17);
  }

  *(v13 + 272) = a1;
  *(v13 + 280) = a2;
  *(v13 + 64) = data_archive_entry_dev(a2);
  *(v13 + 72) = data_archive_entry_inode(a2);
  *(v13 + 80) = data_archive_entry_nlink(a2);
  *(v13 + 92) = data_archive_entry_mode(a2);
  *(v13 + 84) = data_archive_entry_uid(a2);
  *(v13 + 88) = data_archive_entry_gid(a2);
  v20 = data_archive_entry_size(a2);
  if ((v11 - 15) >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  *(v13 + 96) = v21;
  *(v13 + 104) = data_archive_entry_atime(a2);
  *(v13 + 112) = data_archive_entry_atime_nsec(a2);
  *(v13 + 120) = data_archive_entry_mtime(a2);
  *(v13 + 128) = data_archive_entry_atime_nsec(a2);
  *(v13 + 136) = data_archive_entry_ctime(a2);
  *(v13 + 144) = data_archive_entry_atime_nsec(a2);
  *(v13 + 156) = data_archive_entry_is_streamed(a2);
  if ((a3 & 0x200) != 0)
  {
    v22 = *(v13 + 92);
    if ((v22 & 0xF000) == 0x4000)
    {
      v23 = v22 | 0x1ED;
    }

    else if ((*(v13 + 92) & 0xE00) != 0)
    {
      v23 = -32348;
    }

    else
    {
      v23 = v22 | 0x1A4;
    }

    *(v13 + 92) = v23;
  }

  if ((a3 & 2) != 0 && v11 == 8 && parse_regular_file(v13, a4))
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1649, "BOMCopierSourceEntryNewFromDataArchive", "Could not parse the regular file");
    goto LABEL_41;
  }

  return v13;
}

uint64_t BOMCopierSourceEntryNewFromAppleArchive(uint64_t a1, AAHeader header, unsigned __int8 a3, void *a4)
{
  value[128] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1669, "BOMCopierSourceEntryNewFromAppleArchive", "Invalid aa_decoder");
LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  if (!header)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1675, "BOMCopierSourceEntryNewFromAppleArchive", "Invalid header");
    goto LABEL_26;
  }

  value[0] = 0;
  v9.ikey = 5265748;
  KeyIndex = AAHeaderGetKeyIndex(header, v9);
  if ((KeyIndex & 0x80000000) != 0 || ((FieldUInt = AAHeaderGetFieldUInt(header, KeyIndex, value), FieldUInt <= 1) ? (v12 = 1) : (v12 = FieldUInt), v12 < 1))
  {
LABEL_25:
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1686, "BOMCopierSourceEntryNewFromAppleArchive", "Unknown source entry type");
    goto LABEL_26;
  }

  if (SLODWORD(value[0]) > 75)
  {
    if (SLODWORD(value[0]) > 82)
    {
      if (LODWORD(value[0]) == 83)
      {
        v13 = 10;
        goto LABEL_32;
      }

      if (LODWORD(value[0]) == 87)
      {
        v13 = 11;
        goto LABEL_32;
      }
    }

    else
    {
      if (LODWORD(value[0]) == 76)
      {
        v13 = 9;
        goto LABEL_32;
      }

      if (LODWORD(value[0]) == 80)
      {
        v13 = 4;
        goto LABEL_32;
      }
    }

    goto LABEL_25;
  }

  if (SLODWORD(value[0]) > 67)
  {
    if (LODWORD(value[0]) == 68)
    {
      v13 = 6;
      goto LABEL_32;
    }

    if (LODWORD(value[0]) == 70)
    {
      v14 = 0;
      v13 = 8;
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  if (LODWORD(value[0]) == 66)
  {
    v13 = 7;
    goto LABEL_32;
  }

  if (LODWORD(value[0]) != 67)
  {
    goto LABEL_25;
  }

  v13 = 5;
LABEL_32:
  v14 = 1;
LABEL_33:
  v18 = BOMCopierSourceEntryNew(v13, 0);
  v15 = v18;
  if (!v18)
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1693, "BOMCopierSourceEntryNewFromAppleArchive", "Could not create BOMCopierSourceEntry from %d", v13);
    goto LABEL_27;
  }

  *v18 = 7;
  *(v18 + 36) = a1;
  *(v18 + 37) = header;
  v18[76] = 5521732;
  FieldCount = AAHeaderGetFieldCount(header);
  if (FieldCount)
  {
    v20 = FieldCount;
    v21 = 0;
    while (1)
    {
      FieldType = AAHeaderGetFieldType(header, v21);
      v23 = FieldType;
      if (FieldType < 0)
      {
        BOMCopierErrorCapture(a4, FieldType, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5541, "populate_source_entry_from_apple_archive", "Could not get field type from AppleArchive header index %u: %d");
        goto LABEL_159;
      }

      FieldKey = AAHeaderGetFieldKey(header, v21);
      if (!FieldKey.ikey)
      {
        BOMCopierErrorCapture(a4, v23, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5548, "populate_source_entry_from_apple_archive", "Could not get field key from AppleArchive header index %u: %u");
        goto LABEL_159;
      }

      if (v23 >= 5)
      {
        if (v23 != 5)
        {
          BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5633, "populate_source_entry_from_apple_archive", "Unknown AppleArchive field type: %u");
          goto LABEL_159;
        }

        v25 = FieldKey;
        if (FieldKey.ikey != 5521732)
        {
          break;
        }
      }

LABEL_39:
      if (v20 == ++v21)
      {
        goto LABEL_52;
      }
    }

    value[0] = 0;
    offset.tv_sec = 0;
    FieldBlob = AAHeaderGetFieldBlob(header, v21, value, &offset);
    if (FieldBlob < 0)
    {
      BOMCopierErrorCapture(a4, FieldBlob, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5593, "populate_source_entry_from_apple_archive", "Could not get AppleArchive blob: %d");
      goto LABEL_159;
    }

    v27 = v14;
    v28 = *(v15 + 308);
    v29 = v28 + 1;
    v30 = malloc_type_realloc(*(v15 + 312), 32 * (v28 + 1), 0xEF11D041uLL);
    if (!v30)
    {
      v89 = *__error();
      v90 = __error();
      strerror(*v90);
      BOMCopierErrorCapture(a4, v89, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5604, "populate_source_entry_from_apple_archive", "Could not allocate blob list: %s");
      goto LABEL_159;
    }

    v31 = &v30[32 * v28];
    *v31 = v25;
    *(v31 + 2) = value[0];
    *(v31 + 1) = offset.tv_sec;
    v32 = a3 >> 5;
    v14 = v27;
    if (v25.ikey != 4997953)
    {
      if (v25.ikey != 5521752)
      {
LABEL_50:
        *(v15 + 308) = v29;
        *(v15 + 312) = v30;
        goto LABEL_39;
      }

      v32 = a3 >> 2;
    }

    v31[24] = v32 & 1;
    goto LABEL_50;
  }

LABEL_52:
  bzero(value, 0x400uLL);
  length = 0;
  v33.ikey = 5521744;
  v34 = AAHeaderGetKeyIndex(header, v33);
  if ((v34 & 0x80000000) != 0)
  {
    v37 = 0;
LABEL_140:
    BOMCopierErrorCapture(a4, v37, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5654, "populate_source_entry_from_apple_archive", "Could not get path from AppleArchive: %d");
    goto LABEL_159;
  }

  v35 = value;
  FieldString = AAHeaderGetFieldString(header, v34, 0x400uLL, value, &length);
  if (FieldString <= 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = FieldString;
  }

  if (v37 <= 0)
  {
    goto LABEL_140;
  }

  if (!length)
  {
    v35 = ".";
  }

  v38 = strdup(v35);
  *(v15 + 24) = v38;
  if (!v38)
  {
    v84 = *__error();
    v85 = __error();
    strerror(*v85);
    BOMCopierErrorCapture(a4, v84, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5671, "populate_source_entry_from_apple_archive", "Could not duplicate %s: %s");
    goto LABEL_159;
  }

  v39 = strdup(value);
  *(v15 + 16) = v39;
  if (!v39)
  {
    v86 = *__error();
    v87 = __error();
    strerror(*v87);
    BOMCopierErrorCapture(a4, v86, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5678, "populate_source_entry_from_apple_archive", "Could not duplicate %s: %s");
    goto LABEL_159;
  }

  if (*(v15 + 4) == 9)
  {
    bzero(&offset, 0x400uLL);
    v96 = 0;
    v40.ikey = 4935244;
    v41 = AAHeaderGetKeyIndex(header, v40);
    if ((v41 & 0x80000000) != 0 || ((v42 = AAHeaderGetFieldString(header, v41, 0x400uLL, &offset, &v96), v42 <= 1) ? (v43 = 1) : (v43 = v42), v43 <= 0))
    {
      v88 = *__error();
      BOMCopierErrorCapture(a4, v88, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5694, "populate_source_entry_from_apple_archive", "Could not get symlink target path: %d");
      goto LABEL_159;
    }

    v44 = strdup(&offset);
    *(v15 + 48) = v44;
    if (!v44)
    {
      v91 = *__error();
      v92 = __error();
      strerror(*v92);
      BOMCopierErrorCapture(a4, v91, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5701, "populate_source_entry_from_apple_archive", "Could not duplicate %s: %s\n");
      goto LABEL_159;
    }
  }

  v96 = 0;
  v45.ikey = 5653828;
  v46 = AAHeaderGetKeyIndex(header, v45);
  if ((v46 & 0x80000000) == 0)
  {
    v47 = AAHeaderGetFieldUInt(header, v46, &v96);
    if (v47 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v47;
    }

    if (v48 < 0)
    {
      BOMCopierErrorCapture(a4, v48, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5714, "populate_source_entry_from_apple_archive", "Could not get AppleArchive device: %d");
LABEL_159:
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1706, "BOMCopierSourceEntryNewFromAppleArchive", "Could not populate source entry from AppleArchive");
      goto LABEL_160;
    }

    if (v47 <= 1)
    {
      *(v15 + 64) = v96;
    }
  }

  v49.ikey = 5197385;
  v50 = AAHeaderGetKeyIndex(header, v49);
  if ((v50 & 0x80000000) != 0)
  {
    goto LABEL_82;
  }

  v51 = AAHeaderGetFieldUInt(header, v50, &v96);
  if (v51 <= 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = v51;
  }

  if (v52 < 0)
  {
    BOMCopierErrorCapture(a4, v52, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5726, "populate_source_entry_from_apple_archive", "Could not get AppleArchive inode: %d");
    goto LABEL_159;
  }

  if (v51 <= 1)
  {
    *(v15 + 72) = v96;
  }

LABEL_82:
  v53.ikey = 4934734;
  v54 = AAHeaderGetKeyIndex(header, v53);
  if ((v54 & 0x80000000) != 0)
  {
    goto LABEL_89;
  }

  v55 = AAHeaderGetFieldUInt(header, v54, &v96);
  if (v55 <= 1)
  {
    v56 = 1;
  }

  else
  {
    v56 = v55;
  }

  if (v56 < 0)
  {
    BOMCopierErrorCapture(a4, v56, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5738, "populate_source_entry_from_apple_archive", "Could not get AppleArchive nlink: %d");
    goto LABEL_159;
  }

  if (v55 <= 1)
  {
    *(v15 + 80) = v96;
  }

LABEL_89:
  v57.ikey = 4476749;
  v58 = AAHeaderGetKeyIndex(header, v57);
  if ((v58 & 0x80000000) != 0)
  {
    goto LABEL_98;
  }

  v59 = AAHeaderGetFieldUInt(header, v58, &v96);
  if (v59 <= 1)
  {
    v60 = 1;
  }

  else
  {
    v60 = v59;
  }

  if (v60 < 0)
  {
    BOMCopierErrorCapture(a4, v60, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5750, "populate_source_entry_from_apple_archive", "Could not get AppleArchive mode: %d");
    goto LABEL_159;
  }

  if (v59 > 1)
  {
    goto LABEL_98;
  }

  v61 = v96;
  *(v15 + 92) = v96;
  v62 = *(v15 + 4) - 4;
  if (v62 >= 8 || ((0xF7u >> v62) & 1) == 0)
  {
    v93 = *(v15 + 4);
    BOMCopierErrorCapture(a4, 45, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5797, "populate_source_entry_from_apple_archive", "Unsupported entry type: %u");
    goto LABEL_159;
  }

  *(v15 + 92) = word_241C78F80[v62] | v61;
LABEL_98:
  v63.ikey = 4475221;
  v64 = AAHeaderGetKeyIndex(header, v63);
  if ((v64 & 0x80000000) != 0)
  {
    goto LABEL_105;
  }

  v65 = AAHeaderGetFieldUInt(header, v64, &v96);
  if (v65 <= 1)
  {
    v66 = 1;
  }

  else
  {
    v66 = v65;
  }

  if (v66 < 0)
  {
    BOMCopierErrorCapture(a4, v66, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5806, "populate_source_entry_from_apple_archive", "Could not get AppleArchive uid: %d");
    goto LABEL_159;
  }

  if (v65 <= 1)
  {
    *(v15 + 84) = v96;
  }

LABEL_105:
  v67.ikey = 4475207;
  v68 = AAHeaderGetKeyIndex(header, v67);
  if ((v68 & 0x80000000) != 0)
  {
    goto LABEL_112;
  }

  v69 = AAHeaderGetFieldUInt(header, v68, &v96);
  if (v69 <= 1)
  {
    v70 = 1;
  }

  else
  {
    v70 = v69;
  }

  if (v70 < 0)
  {
    BOMCopierErrorCapture(a4, v70, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5818, "populate_source_entry_from_apple_archive", "Could not get AppleArchive gid: %d");
    goto LABEL_159;
  }

  if (v69 <= 1)
  {
    *(v15 + 88) = v96;
  }

LABEL_112:
  v94 = 0;
  size = 0;
  v71.ikey = 5521732;
  v72 = AAHeaderGetKeyIndex(header, v71);
  if ((v72 & 0x80000000) != 0)
  {
    goto LABEL_119;
  }

  v73 = AAHeaderGetFieldBlob(header, v72, &size, &v94);
  if (v73 <= 1)
  {
    v74 = 1;
  }

  else
  {
    v74 = v73;
  }

  if (v74 < 0)
  {
    BOMCopierErrorCapture(a4, v74, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5832, "populate_source_entry_from_apple_archive", "Could not get AppleArchive data size: %d");
    goto LABEL_159;
  }

  if (v73 <= 1)
  {
    *(v15 + 96) = size;
  }

LABEL_119:
  v75.ikey = 5917011;
  v76 = AAHeaderGetKeyIndex(header, v75);
  if ((v76 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

  v77 = AAHeaderGetFieldUInt(header, v76, &v96);
  if (v77 <= 1)
  {
    v78 = 1;
  }

  else
  {
    v78 = v77;
  }

  if (v78 < 0)
  {
    BOMCopierErrorCapture(a4, v78, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5844, "populate_source_entry_from_apple_archive", "Could not get AppleArchive size: %d");
    goto LABEL_159;
  }

  if (v77 <= 1)
  {
    *(v15 + 96) = v96;
  }

LABEL_126:
  offset.tv_sec = 0;
  offset.tv_nsec = 0;
  v79.ikey = 5067853;
  v80 = AAHeaderGetKeyIndex(header, v79);
  if ((v80 & 0x80000000) != 0)
  {
    goto LABEL_133;
  }

  FieldTimespec = AAHeaderGetFieldTimespec(header, v80, &offset);
  if (FieldTimespec <= 1)
  {
    v82 = 1;
  }

  else
  {
    v82 = FieldTimespec;
  }

  if (v82 < 0)
  {
    BOMCopierErrorCapture(a4, v82, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5857, "populate_source_entry_from_apple_archive", "Could not get AppleArchive modification timespec: %d");
    goto LABEL_159;
  }

  if (FieldTimespec <= 1)
  {
    *(v15 + 120) = offset;
  }

LABEL_133:
  *(v15 + 104) = 0;
  *(v15 + 112) = 0;
  *(v15 + 136) = 0;
  *(v15 + 144) = 0;
  if ((a3 & 2) != 0)
  {
    v83 = v14;
  }

  else
  {
    v83 = 1;
  }

  if ((v83 & 1) == 0 && parse_regular_file(v15, a4))
  {
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 1722, "BOMCopierSourceEntryNewFromAppleArchive", "Could not parse the regular file");
LABEL_160:
    BOMCopierSourceEntryFree(v15);
    goto LABEL_26;
  }

LABEL_27:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t BOMCopierSourceEntryGetActualPath(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetType(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetPath(uint64_t a1)
{
  if (a1)
  {
    result = *(a1 + 24);
    if (!result)
    {
      return *(a1 + 16);
    }
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  return result;
}

char *BOMCopierSourceEntryGetParent(void *a1)
{
  if (!a1)
  {
    v4 = *MEMORY[0x277D85DF8];
    v5 = "Invalid source_entry";
    v6 = 20;
LABEL_11:
    fwrite(v5, v6, 1uLL, v4);
    return 0;
  }

  v2 = a1[4];
  if (v2)
  {
    return v2;
  }

  v3 = a1[3];
  if (!v3)
  {
    v3 = a1[2];
    if (!v3)
    {
      v4 = *MEMORY[0x277D85DF8];
      v5 = "Missing entry_path";
      v6 = 18;
      goto LABEL_11;
    }
  }

  if (*v3 == 46 && !*(v3 + 1))
  {
    v2 = strdup(".");
    goto LABEL_15;
  }

  v2 = malloc_type_calloc(1uLL, 0x400uLL, 0x69CFC21EuLL);
  if (v2)
  {
    if (v2 != dirname_r(v3, v2))
    {
      free(v2);
      return 0;
    }

LABEL_15:
    a1[4] = v2;
  }

  return v2;
}

char *BOMCopierSourceEntryGetName(void *a1)
{
  if (!a1)
  {
    v4 = *MEMORY[0x277D85DF8];
    v5 = "Invalid source_entry";
    v6 = 20;
LABEL_11:
    fwrite(v5, v6, 1uLL, v4);
    return 0;
  }

  v2 = a1[5];
  if (v2)
  {
    return v2;
  }

  v3 = a1[3];
  if (!v3)
  {
    v3 = a1[2];
    if (!v3)
    {
      v4 = *MEMORY[0x277D85DF8];
      v5 = "Missing entry_path";
      v6 = 18;
      goto LABEL_11;
    }
  }

  if (*v3 == 46 && !*(v3 + 1))
  {
    v2 = strdup(".");
    goto LABEL_15;
  }

  v2 = malloc_type_calloc(1uLL, 0x400uLL, 0xB9B90B28uLL);
  if (v2)
  {
    if (v2 != basename_r(v3, v2))
    {
      free(v2);
      return 0;
    }

LABEL_15:
    a1[5] = v2;
  }

  return v2;
}

uint64_t BOMCopierSourceEntryGetDevice(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 64);
  }

  BOMCopierErrorCapture(a1, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2026, "BOMCopierSourceEntryGetDevice", "Invalid source_entry", v1, v2);
  return 0xFFFFFFFFLL;
}

uint64_t BOMCopierSourceEntryGetInode(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 72);
  }

  BOMCopierErrorCapture(a1, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2040, "BOMCopierSourceEntryGetInode", "Invalid source_entry", v1, v2);
  return -1;
}

uint64_t BOMCopierSourceEntryGetHardlinkCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 80);
  }

  BOMCopierErrorCapture(a1, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2054, "BOMCopierSourceEntryGetHardlinkCount", "Invalid source_entry", v1, v2);
  return 0xFFFFLL;
}

uint64_t BOMCopierSourceEntryGetSize(uint64_t a1)
{
  if (a1)
  {
    if (*a1)
    {
      return *(a1 + 96);
    }

    else
    {
      return *(a1 + 248);
    }
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }
}

uint64_t BOMCopierSourceEntryGetMode(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 92);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetUserID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 84);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0xFFFFFFFFLL;
}

uint64_t BOMCopierSourceEntryGetGroupID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 88);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0xFFFFFFFFLL;
}

uint64_t BOMCopierSourceEntryGetFlags(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 152);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0xFFFFFFFFLL;
}

uint64_t BOMCopierSourceEntryGetAccessTime(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = 0;
      *a2 = *(a1 + 104);
    }

    else
    {
      v2 = 1;
      fwrite("Invalid access_time", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntryGetModificationTime(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = 0;
      *a2 = *(a1 + 120);
    }

    else
    {
      v2 = 1;
      fwrite("Invalid modification_time", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntryGetStatusTime(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = 0;
      *a2 = *(a1 + 136);
    }

    else
    {
      v2 = 1;
      fwrite("Invalid status_time", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);
    }
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntryGetSymlinkTarget(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 48);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetAppleDoubleTarget(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

BOOL BOMCopierSourceEntryIsCompressed(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 152);
    return (v1 & 0x20) != 0 && (v1 & 0x40000000) == 0;
  }

  return result;
}

uint64_t BOMCopierSourceEntryIsRestricted(uint64_t result)
{
  if (result)
  {
    return (*(result + 154) >> 3) & 1;
  }

  return result;
}

uint64_t BOMCopierSourceEntryGetBinaryType(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 192);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetArchCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 196);
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

uint64_t BOMCopierSourceEntryGetArchRecord(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4)
{
  if (a1)
  {
    if (*(a1 + 196) <= a2)
    {
      BOMCopierErrorCapture(a4, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2344, "BOMCopierSourceEntryGetArchRecord", "index is out of range");
    }

    else
    {
      if (a3)
      {
        result = 0;
        v6 = (*(a1 + 200) + 32 * a2);
        v7 = v6[1];
        *a3 = *v6;
        a3[1] = v7;
        return result;
      }

      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2350, "BOMCopierSourceEntryGetArchRecord", "Invalid arch_record");
    }
  }

  else
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2338, "BOMCopierSourceEntryGetArchRecord", "Invalid source_entry");
  }

  return 1;
}

uint64_t BOMCopierSourceEntryGetExtendedAttributeCount(uint64_t a1, void *a2)
{
  if (a1)
  {
    return *(a1 + 208);
  }

  BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2370, "BOMCopierSourceEntryGetExtendedAttributeCount", "source_entry is NULL", v2, v3);
  return 0;
}

uint64_t BOMCopierSourceEntryGetExtendedAttributeName(uint64_t a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    if (*(a1 + 208) > a2)
    {
      return *(*(a1 + 216) + 24 * a2);
    }

    BOMCopierErrorCapture(a3, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2395, "BOMCopierSourceEntryGetExtendedAttributeName", "index is out of range");
  }

  else
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2389, "BOMCopierSourceEntryGetExtendedAttributeName", "source_entry is NULL");
  }

  return 0;
}

uint64_t BOMCopierSourceEntryGetExtendedAttributeSize(uint64_t a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    if (*(a1 + 208) > a2)
    {
      return *(*(a1 + 216) + 24 * a2 + 8);
    }

    BOMCopierErrorCapture(a3, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2420, "BOMCopierSourceEntryGetExtendedAttributeSize", "index is out of range");
  }

  else
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2414, "BOMCopierSourceEntryGetExtendedAttributeSize", "source_entry is NULL");
  }

  return 0;
}

ssize_t BOMCopierSourceEntryCopyExtendedAttribute(uint64_t a1, unsigned int a2, void *__dst, size_t __n, u_int32_t a5, void *a6)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a6, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2442, "BOMCopierSourceEntryCopyExtendedAttribute", "source_entry is NULL");
    return -1;
  }

  if (*(a1 + 208) <= a2)
  {
    BOMCopierErrorCapture(a6, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2448, "BOMCopierSourceEntryCopyExtendedAttribute", "index is out of range");
    return -1;
  }

  if (!__dst)
  {
    BOMCopierErrorCapture(a6, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2454, "BOMCopierSourceEntryCopyExtendedAttribute", "value is NULL");
    return -1;
  }

  v8 = __n;
  if (!__n)
  {
    BOMCopierErrorCapture(a6, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2460, "BOMCopierSourceEntryCopyExtendedAttribute", "size is 0");
    return -1;
  }

  v10 = *(a1 + 216);
  v11 = v10 + 24 * a2;
  if (__n + a5 > *(v11 + 8))
  {
    BOMCopierErrorCapture(a6, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2473, "BOMCopierSourceEntryCopyExtendedAttribute", "size + position are out of range");
    return -1;
  }

  v13 = *(v10 + 24 * a2 + 16);
  if (v13)
  {
    memcpy(__dst, (v13 + a5), __n);
    return v8;
  }

  v14 = *v11;
  v15 = string_compare(*v11, "com.apple.decmpfs");
  if (string_compare(v14, "com.apple.ResourceFork"))
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = 33;
  }

  else
  {
    v17 = 1;
  }

  v18 = *(a1 + 16);

  return getxattr(v18, v14, __dst, v8, a5, v17);
}

uint64_t string_compare(const char *a1, const char *a2)
{
  v4 = strlen(a1);
  v5 = strlen(a2);
  if (v5 <= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  return strncmp(a1, a2, v6);
}

uint64_t BOMCopierSourceEntryGetACL(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    if (a2)
    {
      v4 = a1 + 224;
      result = *(a1 + 224);
      *a2 = *(v4 + 8);
      return result;
    }

    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2516, "BOMCopierSourceEntryGetACL", "acl_text_size is NULL");
  }

  else
  {
    BOMCopierErrorCapture(a3, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2510, "BOMCopierSourceEntryGetACL", "source_entry is NULL");
  }

  return 0;
}

uint64_t BOMCopierSourceEntryGetQuarantine(uint64_t a1, void *a2)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2536, "BOMCopierSourceEntryGetQuarantine", "source_entry is NULL");
  }

  return 0;
}

uint64_t BOMCopierSourceEntryCheckAccess(uint64_t a1, void *a2)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a2, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2555, "BOMCopierSourceEntryCheckAccess", "Invalid source_entry");
    return 0xFFFFFFFFLL;
  }

  if ((*a1 - 1) > 3)
  {
    return 0;
  }

  v4 = *(a1 + 4);
  if (v4 == 6)
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  if (v4 == 9)
  {
    v6 = 48;
  }

  else
  {
    v6 = 16;
  }

  result = faccessat(-2, *(a1 + 16), v5, v6);
  if (result)
  {
    v8 = *__error();
    v9 = *(a1 + 16);
    v10 = __error();
    strerror(*v10);
    BOMCopierErrorCapture(a2, v8, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2603, "BOMCopierSourceEntryCheckAccess", "Could not faccess %s: %s");
    return 0xFFFFFFFFLL;
  }

  return result;
}

size_t BOMCopierSourceEntryRead(uint64_t a1, char *__dst, size_t a3, void *a4)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2622, "BOMCopierSourceEntryRead", "Invalid source_entry");
    return -1;
  }

  v5 = __dst;
  if (!__dst)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2628, "BOMCopierSourceEntryRead", "Invalid buffer");
    return -1;
  }

  v6 = a3;
  if (!a3)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2634, "BOMCopierSourceEntryRead", "Invalid num_bytes");
    return -1;
  }

  v9 = (a1 + 168);
  v8 = *(a1 + 168);
  if (!v8)
  {
    v11 = 0;
    goto LABEL_16;
  }

  v10 = *(a1 + 184);
  if (*(a1 + 176) - v10 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = *(a1 + 176) - v10;
  }

  memcpy(__dst, (v8 + v10), v11);
  v5 += v11;
  v6 -= v11;
  v12 = *(a1 + 176);
  v13 = *(a1 + 184) + v11;
  *(a1 + 184) = v13;
  if (v13 == v12)
  {
    *(a1 + 160) = 0;
    free(*(a1 + 168));
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  if (v6)
  {
LABEL_16:
    v14 = open_origin(a1, a4);
    if (v14)
    {
      BOMCopierErrorCapture(a4, v14, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2681, "BOMCopierSourceEntryRead", "Could not open the underlying origin");
    }

    else
    {
      v20 = read_from_origin(a1, v5, v6, a4, v15, v16, v17, v18);
      if (v20 != -1)
      {
        if (v20 >= 1)
        {
          *(a1 + 328) += v20;
        }

        v11 += v20;
        return v11;
      }

      BOMCopierErrorCapture(a4, -1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2693, "BOMCopierSourceEntryRead", "Could not read from the underlying origin");
    }

    return -1;
  }

  return v11;
}

uint64_t open_origin(uint64_t a1, void *a2)
{
  if ((*a1 - 1) > 3)
  {
    return 0;
  }

  if (*(a1 + 324) != -1)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    BOMCopierErrorCapture(a2, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4767, "open_origin", "source entry has no actual path");
    return 0xFFFFFFFFLL;
  }

  v6 = open(*(a1 + 16), 0);
  if (v6 == -1)
  {
    v11 = *__error();
    v12 = __error();
    strerror(*v12);
    BOMCopierErrorCapture(a2, v11, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4774, "open_origin", "Could not open %s: %s");
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (*(a1 + 321) == 1 && fcntl(v6, 48, 1))
  {
    v8 = *__error();
    v9 = __error();
    v10 = strerror(*v9);
    BOMCopierErrorCapture(a2, v8, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4783, "open_origin", "Could not F_NOCACHE %s: %s", v5, v10);
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 324) = v7;
  }

  return result;
}

uint64_t read_from_origin(uint64_t a1, void *a2, size_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = -1;
  if (*a1 <= 4)
  {
    if ((v11 - 1) >= 4)
    {
      if (!v11)
      {
        v18 = *(a1 + 240);
        if (v18 && (v19 = *(a1 + 248), v20 = *(a1 + 328), v21 = v19 > v20, v22 = v19 - v20, v21))
        {
          if (v22 >= a3)
          {
            v12 = a3;
          }

          else
          {
            v12 = v22;
          }

          memcpy(a2, (v18 + v20), v12);
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v12 = read(*(a1 + 324), a2, a3);
      if (v12 == -1)
      {
        v13 = *__error();
        v14 = __error();
        v15 = strerror(*v14);
        BOMCopierErrorCapture(a4, v13, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4857, "read_from_origin", "Could not read %ld bytes from file descriptor: %s", a3, v15);
        return -1;
      }
    }

    return v12;
  }

  if (v11 != 5)
  {
    if (v11 == 6)
    {
      v26 = 0;
      v12 = data_archive_read_data(*(a1 + 272), a2, a3, &v26, a5, a6, a7, a8);
      if (v12 == -1)
      {
        v24 = __error();
        BOMCopierErrorCapture(a4, *v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4874, "read_from_origin", "Could not read %ld bytes from data_archive: %s", a3, *(v26 + 4));
        release_error(v26);
      }
    }

    else if (v11 == 7)
    {
      v16 = *(a1 + 304);
      Blob = AAArchiveStreamReadBlob(*(a1 + 288), v16, a2, a3);
      if (Blob)
      {
        BOMCopierErrorCapture(a4, Blob, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4886, "read_from_origin", "Could not read %lu bytes from data_archive: %u", a3, Blob);
      }

      else
      {
        return a3;
      }
    }

    return v12;
  }

  v23 = *(a1 + 256);

  return MEMORY[0x2821F7010](v23, a2, a3);
}

uint64_t BOMCopierSourceEntrySeek(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, void *a5)
{
  if (a1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v11 = (a1 + 168);
      v10 = *(a1 + 168);
      if (v10)
      {
        v12 = *(a1 + 176);
        v13 = *(a1 + 184);
        if (v12 - v13 >= a2)
        {
          v14 = a2;
        }

        else
        {
          v14 = v12 - v13;
        }

        v15 = v14 + v13;
        *(a1 + 184) = v15;
        if (v15 == v12)
        {
          *(a1 + 160) = 0;
          free(v10);
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v17 = a2 - v14;
      if (!v17)
      {
        return 0;
      }

      v18 = open_origin(a1, a5);
      if (v18)
      {
        v16 = v18;
        BOMCopierErrorCapture(a5, v18, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2773, "BOMCopierSourceEntrySeek", "Could not open the origin");
        return v16;
      }

      v23 = *(a1 + 328);
      v24 = v23 + v17;
      v25 = *a1;
      if ((*a1 - 1) < 4)
      {
        v23 = lseek(*(a1 + 324), v17, 1);
        if (v23 != -1)
        {
LABEL_29:
          *(a1 + 328) = v23;
          goto LABEL_39;
        }

        v28 = *__error();
        v29 = __error();
        strerror(*v29);
        BOMCopierErrorCapture(a5, v28, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4979, "seek_from_origin", "Could not lseek: %s");
      }

      else if ((v25 - 5) >= 3)
      {
        if (v25 || !*(a1 + 240))
        {
LABEL_39:
          if (v24 != v23)
          {
            v16 = 1;
            BOMCopierErrorCapture(a5, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2785, "BOMCopierSourceEntrySeek", "Could not seek forward in the origin");
            return v16;
          }

          goto LABEL_40;
        }

        if (v24 <= *(a1 + 248))
        {
LABEL_40:
          v16 = 0;
          *(a1 + 328) = v24;
          return v16;
        }

        BOMCopierErrorCapture(a5, 34, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 4948, "seek_from_origin", "Cannot seek beyond the end of entry data");
      }

      else
      {
        if (*(a1 + 4) != 8)
        {
          goto LABEL_39;
        }

        if (a3)
        {
          if (a4)
          {
            v26 = 0;
            while (1)
            {
              v27 = v17 - v26 >= a4 ? a4 : v17 - v26;
              if (read_from_origin(a1, a3, v27, a5, v19, v20, v21, v22) != v27)
              {
                break;
              }

              v26 += v27;
              if (v26 == v17)
              {
                v23 = *(a1 + 328) + v17;
                goto LABEL_29;
              }
            }

            v30 = *__error();
            BOMCopierErrorCapture(a5, v30, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5073, "seek_from_origin", "Could not read %lld bytes from archive for seeking");
          }

          else
          {
            BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5051, "seek_from_origin", "seek_buffer_size is 0");
          }
        }

        else
        {
          BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5045, "seek_from_origin", "seek_buffer is NULL");
        }
      }

      v23 = -1;
      goto LABEL_39;
    }

    v16 = 22;
    BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2728, "BOMCopierSourceEntrySeek", "Invalid seek_amount");
  }

  else
  {
    v16 = 22;
    BOMCopierErrorCapture(a5, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2722, "BOMCopierSourceEntrySeek", "source_entry is NULL");
  }

  return v16;
}

uint64_t BOMCopierSourceEntrySkip(uint64_t a1, void *__dst, size_t a3, void *a4)
{
  if (!a1)
  {
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2805, "BOMCopierSourceEntrySkip", "Invalid source_entry");
    return 1;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0x4000000;
  }

  v8 = __dst;
  if (!__dst)
  {
    v8 = malloc_type_malloc(v7, 0xD0FB173EuLL);
    if (!v8)
    {
      v11 = *__error();
      v12 = __error();
      strerror(*v12);
      BOMCopierErrorCapture(a4, v11, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2827, "BOMCopierSourceEntrySkip", "Could not allocate %ld bytes for skip buffer: %s\n");
      return 1;
    }
  }

  if ((*a1 - 5) < 2)
  {
    if (skip_remaining_file_data(a1, v8, v7))
    {
      v9 = 1;
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2844, "BOMCopierSourceEntrySkip", "Could not skip remaining libarchive file data");
LABEL_10:
      if (v8 != __dst)
      {
        free(v8);
      }

      return v9;
    }

    goto LABEL_29;
  }

  if (*a1 != 7)
  {
    goto LABEL_29;
  }

  v10 = skip_remaining_file_data(a1, v8, v7);
  if (v10)
  {
    BOMCopierErrorCapture(a4, v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2865, "BOMCopierSourceEntrySkip", "Could not skip remaining AppleArchive file data");
    if (v8 != __dst)
    {
      free(v8);
    }

    return 1;
  }

  if (*(a1 + 308))
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      v15 = *(a1 + 312) + v13;
      *(a1 + 304) = *v15;
      v16 = *(v15 + 16);
      if (BOMCopierSourceEntryRead(a1, v8, v16, a4) != v16)
      {
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5906, "parse_apple_archive_blobs", "Could not read AppleArchive blob data");
        goto LABEL_34;
      }

      if (*(*(a1 + 312) + v13 + 24) == 1)
      {
        v17 = *(a1 + 304);
        if (v17 == 4997953)
        {
          if (parse_apple_archive_acl_blob(a1, v8, v16, a4))
          {
            BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5921, "parse_apple_archive_blobs", "Could not parse AppleArchive ACL blob: %d");
            goto LABEL_34;
          }

          v17 = *(a1 + 304);
        }

        if (v17 == 5521752 && parse_apple_archive_xat_blob(a1, v8, v16, a4))
        {
          break;
        }
      }

      ++v14;
      v13 += 32;
      if (v14 >= *(a1 + 308))
      {
        goto LABEL_29;
      }
    }

    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5931, "parse_apple_archive_blobs", "Could not read parse AppleArchive XAT blob: %d");
LABEL_34:
    v9 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2883, "BOMCopierSourceEntrySkip", "Could not parse AppleArchive payload blobs");
    goto LABEL_10;
  }

LABEL_29:
  if (v8 != __dst)
  {
    free(v8);
  }

  return 0;
}

uint64_t skip_remaining_file_data(uint64_t a1, char *__dst, size_t a3)
{
  if (*(a1 + 4) != 8)
  {
    return 0;
  }

  if (*(a1 + 156))
  {
    while (1)
    {
      v6 = BOMCopierSourceEntryRead(a1, __dst, a3, 0);
      if (!v6)
      {
        break;
      }

      if (v6 == -1)
      {
        v7 = 1;
        fwrite("Could not read from source entry\n", 0x21uLL, 1uLL, *MEMORY[0x277D85DF8]);
        return v7;
      }
    }

    return 0;
  }

  Size = BOMCopierSourceEntryGetSize(a1);
  if (!Size || !BOMCopierSourceEntrySeek(a1, Size - *(a1 + 328), __dst, a3, 0))
  {
    return 0;
  }

  v7 = 1;
  fwrite("Could not seek to the end of the source entry\n", 0x2EuLL, 1uLL, *MEMORY[0x277D85DF8]);
  return v7;
}

uint64_t BOMCopierSourceEntryClone(unsigned int *a1, char *__s1, _BYTE *a3, void *a4)
{
  if (a1)
  {
    if (__s1)
    {
      if (a3)
      {
        *a3 = 0;
        if ((*a1 | 2) == 3)
        {
          if (a1[1] == 8)
          {
            v8 = strdup(__s1);
            if (v8)
            {
              v9 = v8;
              if (!dirname_r(__s1, v8))
              {
                v14 = __error();
                strerror(*v14);
                v11 = 1;
                BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2981, "BOMCopierSourceEntryClone", "Could not dirname %s: %s");
                goto LABEL_18;
              }

              memset(&v20, 0, sizeof(v20));
              if (stat(v9, &v20))
              {
                v10 = __error();
                strerror(*v10);
                v11 = 1;
                BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2991, "BOMCopierSourceEntryClone", "Could not stat %s: %s");
LABEL_18:
                free(v9);
                return v11;
              }

              free(v9);
              if (a1[16] == v20.st_dev)
              {
                if (!copyfile(*(a1 + 2), __s1, 0, 0x200000Fu))
                {
                  v11 = 0;
                  *a3 = 1;
                  return v11;
                }

                if (*__error() != 45)
                {
                  v15 = *__error();
                  v16 = *(a1 + 2);
                  v17 = __error();
                  v18 = strerror(*v17);
                  BOMCopierErrorCapture(a4, v15, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 3008, "BOMCopierSourceEntryClone", "Could not clone %s to %s: %s", v16, __s1, v18);
                  return 1;
                }
              }

              return 0;
            }

            else
            {
              v12 = __error();
              strerror(*v12);
              v11 = 1;
              BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2974, "BOMCopierSourceEntryClone", "Could not duplicate %s: %s");
            }
          }

          else
          {
            v11 = 1;
            BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2967, "BOMCopierSourceEntryClone", "Entry is not a regular file");
          }
        }

        else
        {
          v19 = *a1;
          v11 = 1;
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2961, "BOMCopierSourceEntryClone", "Origin %u does not support filesystem cloning");
        }
      }

      else
      {
        v11 = 22;
        BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2933, "BOMCopierSourceEntryClone", "Invalid cloned");
      }
    }

    else
    {
      v11 = 22;
      BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2927, "BOMCopierSourceEntryClone", "Invalid path");
    }
  }

  else
  {
    v11 = 22;
    BOMCopierErrorCapture(a4, 22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 2921, "BOMCopierSourceEntryClone", "Invalid source_entry");
  }

  return v11;
}

uint64_t BOMCopierSourceEntrySetRoot(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = 0;
    *(a1 + 157) = a2;
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntryIsRoot(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 157);
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v1 = 0;
  }

  return v1 & 1;
}

BOOL BOMCopierSourceEntryIsResourceFork(_DWORD *a1)
{
  if (a1)
  {
    return *a1 == 2;
  }

  fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return 0;
}

BOOL BOMCopierSourceEntrySetPath(void *a1, char *__s)
{
  if (a1)
  {
    if (!__s)
    {
      v5 = *MEMORY[0x277D85DF8];
      v6 = "Invalid entry_path";
      v7 = 1;
      v8 = 18;
      goto LABEL_7;
    }

    v4 = strlen(__s);
    if (v4 >= 0x400)
    {
      v5 = *MEMORY[0x277D85DF8];
      v6 = "entry_path is too long";
      v7 = 1;
      v8 = 22;
LABEL_7:
      fwrite(v6, v8, 1uLL, v5);
      return v7;
    }

    v9 = v4;
    v10 = a1[3];
    if (v10)
    {
      free(v10);
      a1[3] = 0;
    }

    v11 = a1[4];
    if (v11)
    {
      free(v11);
      a1[4] = 0;
    }

    v12 = a1[5];
    if (v12)
    {
      free(v12);
      a1[5] = 0;
    }

    v13 = copy_string(__s, v9);
    a1[3] = v13;
    return v13 == 0;
  }

  else
  {
    v7 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v7;
}

BOOL BOMCopierSourceEntrySetParent(uint64_t a1, char *__s)
{
  if (a1)
  {
    if (__s)
    {
      v4 = strlen(__s);
      if (v4 < 0x400)
      {
        v9 = copy_string(__s, v4);
        *(a1 + 32) = v9;
        return v9 == 0;
      }

      v5 = *MEMORY[0x277D85DF8];
      v6 = "entry_path is too long";
      v7 = 1;
      v8 = 22;
    }

    else
    {
      v5 = *MEMORY[0x277D85DF8];
      v6 = "Invalid entry_parent";
      v7 = 1;
      v8 = 20;
    }

    fwrite(v6, v8, 1uLL, v5);
  }

  else
  {
    v7 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v7;
}

BOOL BOMCopierSourceEntrySetName(uint64_t a1, char *__s)
{
  if (a1)
  {
    if (__s)
    {
      v4 = strlen(__s);
      if (v4 < 0xFF)
      {
        v9 = copy_string(__s, v4);
        *(a1 + 40) = v9;
        return v9 == 0;
      }

      v5 = *MEMORY[0x277D85DF8];
      v6 = "entry_name is too long";
      v7 = 1;
      v8 = 22;
    }

    else
    {
      v5 = *MEMORY[0x277D85DF8];
      v6 = "Invalid entry_name";
      v7 = 1;
      v8 = 18;
    }

    fwrite(v6, v8, 1uLL, v5);
  }

  else
  {
    v7 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v7;
}

uint64_t BOMCopierSourceEntrySetData(uint64_t a1, const void *a2, size_t size)
{
  if (!a1)
  {
    v9 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return v9;
  }

  if (!a2)
  {
    v10 = *MEMORY[0x277D85DF8];
    v11 = "Invalid data";
    v9 = 1;
    v12 = 12;
LABEL_11:
    fwrite(v11, v12, 1uLL, v10);
    return v9;
  }

  if (!size)
  {
    v10 = *MEMORY[0x277D85DF8];
    v11 = "Invalid data size";
    v9 = 1;
    v12 = 17;
    goto LABEL_11;
  }

  v6 = *(a1 + 240);
  if (v6)
  {
    free(v6);
    *(a1 + 248) = 0;
  }

  v7 = malloc_type_malloc(size, 0x387F3603uLL);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  memcpy(v7, a2, size);
  v9 = 0;
  *(a1 + 240) = v8;
  *(a1 + 248) = size;
  return v9;
}

uint64_t BOMCopierSourceEntrySetMode(uint64_t a1, __int16 a2)
{
  if (a1)
  {
    v2 = 0;
    *(a1 + 92) = a2;
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntrySetSize(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0;
    *(a1 + 96) = a2;
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntrySetUserID(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = 0;
    *(a1 + 84) = a2;
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntrySetGroupID(uint64_t a1, int a2)
{
  if (a1)
  {
    v2 = 0;
    *(a1 + 88) = a2;
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntrySetAccessTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0;
    *(a1 + 104) = a2;
    *(a1 + 112) = a3;
  }

  else
  {
    v3 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v3;
}

uint64_t BOMCopierSourceEntrySetModificationTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0;
    *(a1 + 120) = a2;
    *(a1 + 128) = a3;
  }

  else
  {
    v3 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v3;
}

uint64_t BOMCopierSourceEntrySetStatusTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0;
    *(a1 + 136) = a2;
    *(a1 + 144) = a3;
  }

  else
  {
    v3 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v3;
}

BOOL BOMCopierSourceEntrySetSymlinkTarget(uint64_t a1, char *__s1)
{
  if (a1)
  {
    v3 = *(a1 + 4);
    if (v3 == 18 || v3 == 9)
    {
      v6 = *(a1 + 48);
      if (v6)
      {
        free(v6);
      }

      v7 = strdup(__s1);
      *(a1 + 48) = v7;
      return v7 == 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v8 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v8;
}

BOOL BOMCopierSourceEntrySetAppleDoubleTarget(uint64_t a1, char *__s1)
{
  if (a1)
  {
    if (*(a1 + 4) == 17)
    {
      v4 = *(a1 + 56);
      if (v4)
      {
        free(v4);
      }

      v5 = strdup(__s1);
      *(a1 + 56) = v5;
      return v5 == 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v6 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v6;
}

uint64_t BOMCopierSourceEntrySetSegmentedFile(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = 0;
    *(a1 + 158) = a2;
  }

  else
  {
    v2 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  return v2;
}

uint64_t BOMCopierSourceEntryIsSegmentedFile(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 158);
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t BOMCopierSourceEntryIsStreamed(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 156);
  }

  else
  {
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t BOMCopierSourceEntrySetOption(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (!a1)
  {
    v6 = 1;
    fwrite("Invalid source_entry", 0x14uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return v6;
  }

  if (!cf1)
  {
    v7 = *MEMORY[0x277D85DF8];
    v8 = "Invalid key";
    v6 = 1;
    v9 = 11;
LABEL_9:
    fwrite(v8, v9, 1uLL, v7);
    return v6;
  }

  if (!a3)
  {
    v7 = *MEMORY[0x277D85DF8];
    v8 = "Invalid value";
    v6 = 1;
    v9 = 13;
    goto LABEL_9;
  }

  if (CFEqual(cf1, @"DeleteOnFree") != 1)
  {
    return 1;
  }

  v5 = CFEqual(a3, *MEMORY[0x277CBED28]);
  v6 = 0;
  *(a1 + 320) = v5 != 0;
  return v6;
}

uint64_t BOMCopierSourceEntryCompare(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v9 = *MEMORY[0x277D85DF8];
    v10 = "Invalid source_entry";
    v11 = 20;
LABEL_9:
    fwrite(v10, v11, 1uLL, v9);
    v8 = 0;
    goto LABEL_10;
  }

  if (!a2)
  {
    v9 = *MEMORY[0x277D85DF8];
    v10 = "Invalid other_entry";
    v11 = 19;
    goto LABEL_9;
  }

  if (!a4)
  {
    v9 = *MEMORY[0x277D85DF8];
    v10 = "Invalid compare_handler";
    v11 = 23;
    goto LABEL_9;
  }

  (*(a4 + 16))(a4, a1, a2, 0, "");
  if (*a1 == *a2)
  {
    v8 = 1;
  }

  else
  {
    snprintf(__str, 0x400uLL, "entry_origin: %d vs %d", *a1, *a2);
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_origin", __str);
  }

  v14 = *(a1 + 4);
  v15 = *(a2 + 4);
  if (v14 != v15)
  {
    v16 = BOMCopierSourceEntryTypeString(v14);
    v17 = BOMCopierSourceEntryTypeString(v15);
    snprintf(__str, 0x400uLL, "entry_type: %s vs %s", v16, v17);
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_type", __str) & v8;
  }

  if ((compare_strings("entry_resolved_path", *(a1 + 16), *(a2 + 16), __str) & 1) == 0)
  {
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_resolved_path", __str) & v8;
  }

  if ((compare_strings("entry_path", *(a1 + 24), *(a2 + 24), __str) & 1) == 0)
  {
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_path", __str) & v8;
  }

  BOMCopierSourceEntryGetParent(a1);
  BOMCopierSourceEntryGetParent(a2);
  if ((compare_strings("entry_parent", *(a1 + 32), *(a2 + 32), __str) & 1) == 0)
  {
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_parent", __str) & v8;
  }

  BOMCopierSourceEntryGetName(a1);
  BOMCopierSourceEntryGetName(a2);
  if ((compare_strings("entry_name", *(a1 + 40), *(a2 + 40), __str) & 1) == 0)
  {
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_name", __str) & v8;
  }

  if ((compare_strings("entry_symlink_target", *(a1 + 48), *(a2 + 48), __str) & 1) == 0)
  {
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_symlink_target", __str) & v8;
  }

  v18 = *(a2 + 84);
  if (*(a1 + 84) != v18)
  {
    snprintf(__str, 0x400uLL, "entry_uid: %d vs %d", *(a1 + 84), v18);
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_uid", __str) & v8;
  }

  v19 = *(a2 + 88);
  if (*(a1 + 88) != v19)
  {
    snprintf(__str, 0x400uLL, "entry_gid: %d vs %d", *(a1 + 88), v19);
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_gid", __str) & v8;
  }

  v20 = *(a1 + 92);
  if (v20 != *(a2 + 92))
  {
    strmode(v20, __bp);
    strmode(*(a2 + 92), v24);
    snprintf(__str, 0x400uLL, "entry_mode: %s vs %s", __bp, v24);
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_mode", __str) & v8;
  }

  v21 = *(a2 + 96);
  if (*(a1 + 96) != v21)
  {
    snprintf(__str, 0x400uLL, "entry_size: %lld vs %lld", *(a1 + 96), v21);
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_size", __str) & v8;
  }

  if ((compare_times("entry_access_time", (a1 + 104), (a2 + 104), a3, __str) & 1) == 0)
  {
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_access_time", __str) & v8;
  }

  if ((compare_times("entry_modification_time", (a1 + 120), (a2 + 120), a3, __str) & 1) == 0)
  {
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_modification_time", __str) & v8;
  }

  if ((compare_times("entry_status_time", (a1 + 136), (a2 + 136), a3, __str) & 1) == 0)
  {
    v8 = (*(a4 + 16))(a4, a1, a2, "entry_status_time", __str) & v8;
  }

  if (*(a1 + 157) != *(a2 + 157))
  {
    if (*(a1 + 157))
    {
      v22 = "yes";
    }

    else
    {
      v22 = "no";
    }

    if (*(a2 + 157))
    {
      v23 = "yes";
    }

    else
    {
      v23 = "no";
    }

    snprintf(__str, 0x400uLL, "is_root: %s vs %s", v22, v23);
    v8 = (*(a4 + 16))(a4, a1, a2, "is_root", __str) & v8;
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t compare_strings(int a1, char *__s1, char *__s2, char *__str)
{
  if (__s1 && !__s2 || !__s1 && __s2)
  {
    snprintf(__str, 0x400uLL, "%s is missing %s");
    return 0;
  }

  result = 1;
  if (__s1 && __s2)
  {
    if (!strcmp(__s1, __s2))
    {
      return 1;
    }

    snprintf(__str, 0x400uLL, "%s: %s vs %s");
    return 0;
  }

  return result;
}

uint64_t compare_times(const char *a1, void *a2, void *a3, unint64_t a4, char *__str)
{
  if (*a2 != *a3)
  {
    snprintf(__str, 0x400uLL, "%s.tv_sec: %ld vs %ld", a1, *a2, *a3);
  }

  v10 = a2[1];
  v11 = a3[1];
  v12 = v10 - v11;
  if (v10 == v11)
  {
    return 1;
  }

  if (v12 < 0)
  {
    v12 = v11 - v10;
  }

  if (v12 < a4)
  {
    return 1;
  }

  snprintf(__str, 0x400uLL, "%s.tv_nsec: %ld vs %ld (%ld margin)", a1, v10, a3[1], a4);
  return 0;
}

uint64_t parse_apple_archive_acl_blob(uint64_t a1, uint8_t *data, size_t data_size, void *a4)
{
  v6 = AAEntryACLBlobCreateWithEncodedData(data, data_size);
  if (v6)
  {
    v7 = v6;
    dir = 0;
    v8 = getpid();
    asprintf(&dir, "/tmp/.BCSE.%u.T_XXXXXX", v8);
    if (dir)
    {
      v9 = mkstemp(dir);
      if (v9 == -1)
      {
        v14 = dir;
        v15 = __error();
        v16 = strerror(*v15);
        v26 = v14;
        v11 = 1;
        BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5972, "parse_apple_archive_acl_blob", "Could not mkstemp %s: %s\n", v26, v16);
        free(dir);
      }

      else
      {
        close(v9);
        v10 = AAEntryACLBlobApplyToPath(v7, dir, "", 0);
        if (v10)
        {
          BOMCopierErrorCapture(a4, v10, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5982, "parse_apple_archive_acl_blob", "Could not apply AppleArchive ACL blob to %s: %d\n");
        }

        else
        {
          file = acl_get_file(dir, ACL_TYPE_EXTENDED);
          if (file)
          {
            v18 = file;
            len_p = 0;
            v19 = acl_to_text(file, &len_p);
            acl_free(v18);
            if (v19)
            {
              v21 = len_p;
              v20 = dir;
              *(a1 + 224) = v19;
              *(a1 + 232) = v21;
              unlink(v20);
              free(dir);
              AAEntryACLBlobClear(v7);
              AAEntryACLBlobDestroy(v7);
              return 0;
            }

            v24 = *__error();
            v25 = __error();
            strerror(*v25);
            BOMCopierErrorCapture(a4, v24, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 6002, "parse_apple_archive_acl_blob", "Could not convert ACL to text for %s: %s");
          }

          else
          {
            v22 = *__error();
            v23 = __error();
            strerror(*v23);
            BOMCopierErrorCapture(a4, v22, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5990, "parse_apple_archive_acl_blob", "Could not get ACL for %s: %s\n");
          }
        }

        free(dir);
        return 1;
      }
    }

    else
    {
      v12 = __error();
      strerror(*v12);
      v11 = 1;
      BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5965, "parse_apple_archive_acl_blob", "Could not create ACL file path: %s\n");
    }
  }

  else
  {
    v11 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 5957, "parse_apple_archive_acl_blob", "Could not decode AppleArchive ACL data blob");
  }

  return v11;
}

uint64_t parse_apple_archive_xat_blob(uint64_t a1, uint8_t *data, size_t data_size, void *a4)
{
  v6 = AAEntryXATBlobCreateWithEncodedData(data, data_size);
  if (v6)
  {
    v7 = v6;
    EntryCount = AAEntryXATBlobGetEntryCount(v6);
    if (EntryCount)
    {
      v9 = EntryCount;
      v10 = 0;
      while (1)
      {
        data_sizea = 0;
        key_length = 0;
        if (AAEntryXATBlobGetEntry(v7, v10, 0, 0, &key_length, 0, 0, &data_sizea))
        {
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 6061, "parse_apple_archive_xat_blob", "Could not retrieve AppleArchive XAT entry sizes: %d");
          return 1;
        }

        v11 = key_length;
        v12 = malloc_type_malloc(key_length + 1, 0x46A99D50uLL);
        if (!v12)
        {
          v21 = *__error();
          v22 = __error();
          strerror(*v22);
          BOMCopierErrorCapture(a4, v21, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 6069, "parse_apple_archive_xat_blob", "Could not allocate xattr name: %s");
          return 1;
        }

        v13 = v12;
        v14 = malloc_type_malloc(data_sizea, 0x7189F90DuLL);
        if (!v14)
        {
          v23 = *__error();
          v24 = __error();
          v25 = strerror(*v24);
          BOMCopierErrorCapture(a4, v23, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 6076, "parse_apple_archive_xat_blob", "Could not allocate xattr value: %s", v25);
          goto LABEL_19;
        }

        v15 = v14;
        if (AAEntryXATBlobGetEntry(v7, v10, v11 + 1, v13, &key_length, data_sizea, v14, &data_sizea))
        {
          BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 6084, "parse_apple_archive_xat_blob", "Could not retrieve AppleArchive XAT entry: %d");
          goto LABEL_18;
        }

        v16 = *(a1 + 208);
        v17 = malloc_type_realloc(*(a1 + 216), 24 * (v16 + 1), 0x6B117987uLL);
        if (!v17)
        {
          break;
        }

        v18 = data_sizea;
        v19 = &v17[24 * v16];
        *v19 = v13;
        v19[1] = v18;
        v19[2] = v15;
        *(a1 + 208) = v16 + 1;
        *(a1 + 216) = v17;
        if (v9 == ++v10)
        {
          goto LABEL_10;
        }
      }

      v26 = *__error();
      v27 = __error();
      strerror(*v27);
      BOMCopierErrorCapture(a4, v26, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 6102, "parse_apple_archive_xat_blob", "Could not allocate new_extended_attribute_list: %s");
LABEL_18:
      free(v15);
LABEL_19:
      free(v13);
      return 1;
    }

    else
    {
LABEL_10:
      AAEntryXATBlobClear(v7);
      AAEntryXATBlobDestroy(v7);
      return 0;
    }
  }

  else
  {
    v20 = 1;
    BOMCopierErrorCapture(a4, 1, "/Library/Caches/com.apple.xbs/Sources/Bom/Copier/BOMCopierSourceEntry.c", 6038, "parse_apple_archive_xat_blob", "Could not decode AppleArchive XAT data blob");
  }

  return v20;
}

uint64_t BOMFSOTypeInfoArchiveLength(uint64_t a1)
{
  v1 = *a1;
  if (*a1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        return 5;
      }

      return -1;
    }

    v3 = *(a1 + 64);
    if ((B_CKSUMS & *(a1 + 40)) != 0)
    {
      v4 = v3 + 5;
    }

    else
    {
      v4 = v3 + 1;
    }

    return v4 + 5;
  }

  else
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 1;
      }

      return -1;
    }

    if ((B_CKSUMS & *(a1 + 40)) != 0)
    {
      return 5;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t BOMFSOTypeInfoArchive(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  result = 1;
  if (*a2 > 2)
  {
    if (v4 == 3)
    {
      BOMStreamWriteUInt8(a1, 1);
      if ((B_CKSUMS & *(a2 + 40)) != 0)
      {
        BOMStreamWriteUInt32(a1, *(a2 + 88));
      }

      v6 = *(a2 + 64) + 1;
      BOMStreamWriteUInt32(a1, v6);
      BOMStreamWriteBuffer(a1, *(a2 + 96), v6);
      return 0;
    }

    if (v4 != 4)
    {
      return result;
    }

    BOMStreamWriteUInt8(a1, 1);
    goto LABEL_9;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      return result;
    }

    BOMStreamWriteUInt8(a1, 1);
    return 0;
  }

  BOMStreamWriteUInt8(a1, 1);
  if ((B_CKSUMS & *(a2 + 40)) != 0)
  {
LABEL_9:
    BOMStreamWriteUInt32(a1, *(a2 + 88));
  }

  return 0;
}

uint64_t BOMFSOTypeInfoUnarchive(uint64_t a1, uint64_t a2)
{
  v2 = 1;
  if (!a1 || !a2)
  {
    return v2;
  }

  v5 = *a2;
  v2 = 1;
  if (*a2 <= 2)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        if (BOMStreamReadUInt8(a1) != 1)
        {
          fprintf(*MEMORY[0x277D85DF8], "Directory object has an invalid version: 0x%X\nCannot dearchive.\n");
          return 1;
        }

        return 0;
      }

      return v2;
    }

    if (BOMStreamReadUInt8(a1) != 1)
    {
      fprintf(*MEMORY[0x277D85DF8], "File object has an invalid version: 0x%X\nCannot dearchive.\n");
      return 1;
    }

    if ((B_CKSUMS & *(a2 + 40)) == 0)
    {
      return 0;
    }

LABEL_14:
    v2 = 0;
    *(a2 + 88) = BOMStreamReadUInt32(a1);
    return v2;
  }

  if (v5 == 3)
  {
    if (BOMStreamReadUInt8(a1) != 1)
    {
      fprintf(*MEMORY[0x277D85DF8], "Symlink object has an invalid version: 0x%X\nCannot dearchive.\n");
      return 1;
    }

    if ((B_CKSUMS & *(a2 + 40)) != 0)
    {
      *(a2 + 88) = BOMStreamReadUInt32(a1);
    }

    UInt32 = BOMStreamReadUInt32(a1);
    if (UInt32)
    {
      v7 = UInt32;
      v8 = BOM_malloc(UInt32);
      if (!v8)
      {
        return 1;
      }

      v9 = v8;
      BOMStreamReadBuffer(a1, v8, v7);
    }

    else
    {
      v2 = 1;
      v10 = BOM_malloc(1uLL);
      if (!v10)
      {
        return v2;
      }

      v9 = v10;
      *v10 = 0;
    }

    BOMFSObjectSetSymlinkTarget(a2, v9, 0);
    return 0;
  }

  if (v5 == 4)
  {
    if (BOMStreamReadUInt8(a1) != 1)
    {
      fprintf(*MEMORY[0x277D85DF8], "Device object has an invalid version: 0x%X\nCannot dearchive.\n");
      return 1;
    }

    goto LABEL_14;
  }

  return v2;
}

uint64_t BOMFSOTypeInfoInitialize(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = BOMFSObjectType(a1);
  if (v4 == 4)
  {
    *(a1 + 88) = *(a2 + 24);
  }

  else if (v4 == 3)
  {
    v7 = (*(*(a1 + 160) + 256))(*(*(a1 + 160) + 8), *(a1 + 72), __s, 1024);
    if (v7 < 0 || v7 == 1024)
    {
      v8 = BOMExceptionHandlerMessage("can't access symlink for %s", *(a1 + 72));
      v9 = __error();
      _BOMExceptionHandlerCall(v8, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/FSObject/BOMFSOTypeInfo.c", 95, *v9);
      v7 = 0;
    }

    __s[v7] = 0;
    v10 = strlen(__s);
    v11 = BOM_malloc(v10 + 1);
    memmove(v11, __s, v10 + 1);
    BOMFSOTypeInfoSetSymlinkTarget(a1, v11, 0);
  }

  else if (v4 == 1 && (B_CKSUMS & *(a1 + 40)) != 0 && _getFileChecksum(a1))
  {
    v5 = BOMExceptionHandlerMessage("can't compute checksum for %s", *(a1 + 72));
    v6 = __error();
    _BOMExceptionHandlerCall(v5, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/FSObject/BOMFSOTypeInfo.c", 88, *v6);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t _getFileChecksum(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    v3 = &v6;
    return BOMCRC32ForBuffer(v3, (a1 + 88), v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    return BOMCRC32ForBuffer(v3, (a1 + 88), v2);
  }

  if ((*(*(a1 + 160) + 64))(*(*(a1 + 160) + 8), *(a1 + 16), 0, 0) < 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);

  return BOMCRC32ForFileDesc(v4, (a1 + 88), v2);
}

_DWORD *BOMFSOTypeInfoSetSymlinkTarget(_DWORD *result, char *__s, int a3)
{
  if (__s)
  {
    v3 = result;
    if (*result == 3)
    {
      v5 = __s;
      result = strlen(__s);
      v6 = result;
      if (a3)
      {
        v7 = BOM_malloc(result + 1);
        result = memmove(v7, v5, v6);
        *(v7 + v6) = 0;
        v5 = v7;
      }

      v3[22] = 0;
      *(v3 + 12) = v5;
      if ((B_CKSUMS & v3[10]) != 0)
      {
        v8 = strlen(v5);
        result = BOMCRC32ForBuffer(v5, v3 + 22, v8);
      }

      *(v3 + 8) = v6;
    }
  }

  return result;
}

uint64_t BOMFSOTypeInfoInitializeDeferred(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = BOMFSObjectType(a1);
  switch(v8)
  {
    case 4:
      if ((B_STAT & a4) != 0)
      {
        *(a1 + 88) = *(a2 + 24);
      }

      break;
    case 3:
      if ((B_STAT & a4) != 0)
      {
        v12 = (*(*(a1 + 160) + 256))(*(*(a1 + 160) + 8), a3, __s, 1024);
        if (v12 < 0 || v12 == 1024)
        {
          v13 = BOMExceptionHandlerMessage("can't access symlink for %s", *(a1 + 72));
          v14 = __error();
          _BOMExceptionHandlerCall(v13, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/FSObject/BOMFSOTypeInfo.c", 136, *v14);
          v12 = 0;
        }

        __s[v12] = 0;
        v15 = strlen(__s);
        v16 = BOM_malloc(v15 + 1);
        memmove(v16, __s, v15 + 1);
        v17 = *(a1 + 96);
        if (v17)
        {
          free(v17);
        }

        *(a1 + 96) = v16;
      }

      if ((B_CKSUMS & *(a1 + 40)) != 0 && (B_CKSUMS & a4) != 0)
      {
        v19 = strlen(*(a1 + 96));
        BOMCRC32ForBuffer(*(a1 + 96), (a1 + 88), v19);
      }

      break;
    case 1:
      v9 = (B_CKSUMS & *(a1 + 40)) == 0 || (B_CKSUMS & a4) == 0;
      if (!v9 && _getFileChecksum(a1))
      {
        v10 = BOMExceptionHandlerMessage("can't compute checksum for %s", *(a1 + 72));
        v11 = __error();
        _BOMExceptionHandlerCall(v10, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/FSObject/BOMFSOTypeInfo.c", 127, *v11);
      }

      break;
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

void BOMFSOTypeInfoRelease(uint64_t a1)
{
  if (*a1 == 3)
  {
    v1 = *(a1 + 96);
    if (v1)
    {
      free(v1);
    }
  }
}

uint64_t BOMFSOTypeInfoCopy(uint64_t a1, uint64_t a2)
{
  if (*a1 != 3)
  {
    return 0;
  }

  v4 = strlen(*(a1 + 96));
  v5 = BOM_malloc(v4 + 1);
  *(a2 + 96) = v5;
  if (!v5)
  {
    return 1;
  }

  strlcpy(v5, *(a1 + 96), v4 + 1);
  return 0;
}

uint64_t BOMFSOTypeInfoChecksum(_DWORD *a1)
{
  if ((*a1 | 2) == 3)
  {
    return a1[22];
  }

  else
  {
    return 0;
  }
}

uint64_t BOMFSOTypeInfoSymlinkTarget(uint64_t a1)
{
  if (*a1 == 3)
  {
    return *(a1 + 96);
  }

  else
  {
    return 0;
  }
}

CFStringRef BOMFSOTypeInfoSymlinkTargetString(uint64_t a1)
{
  if (*a1 == 3)
  {
    return CFStringCreateWithCString(*MEMORY[0x277CBECE8], *(a1 + 96), 0x8000100u);
  }

  else
  {
    return 0;
  }
}

uint64_t BOMFSOTypeInfoDeviceID(_DWORD *a1)
{
  if (*a1 == 4)
  {
    return a1[22];
  }

  else
  {
    return 0;
  }
}

_DWORD *BOMFSOTypeInfoSetChecksum(_DWORD *result, int a2)
{
  if ((*result | 2) == 3)
  {
    result[22] = a2;
  }

  return result;
}

_DWORD *BOMFSOTypeInfoSetDeviceID(_DWORD *result, int a2)
{
  if (*result == 4)
  {
    result[22] = a2;
  }

  return result;
}

const char *BOMFSOTypeInfoSummary(uint64_t a1, int a2, int a3, int a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = printBuffer;
  if (!printBuffer)
  {
    v8 = BOM_malloc(0x1000uLL);
    printBuffer = v8;
  }

  if ((B_INFOMASK & *(a1 + 40)) != B_PATHONLY)
  {
    v13 = *a1;
    v10 = "";
    if (*a1 > 2)
    {
      if (v13 == 3)
      {
        v21 = *(a1 + 72);
        if (a3)
        {
          v37 = *(a1 + 88);
          v39 = *(a1 + 96);
          v31 = *(a1 + 48);
          v34 = *(a1 + 64);
          v29 = *(a1 + 44);
          snprintf(v8, 0x1000uLL, "%s\t%d/%d\t%lld\t%05u\t%s\n", v21);
        }

        else
        {
          v40 = *(a1 + 88);
          v41 = *(a1 + 96);
          v35 = *(a1 + 48);
          v38 = *(a1 + 64);
          v32 = *(a1 + 44);
          snprintf(v8, 0x1000uLL, "%s\t%o\t%d/%d\t%lld\t%05u\t%s\n", v21, *(a1 + 42));
        }

        goto LABEL_5;
      }

      if (v13 != 4)
      {
        goto LABEL_6;
      }

      v15 = *(a1 + 72);
      v16 = *(a1 + 42);
      v17 = *(a1 + 44);
      v18 = *(a1 + 48);
      if (!a3)
      {
        v33 = *(a1 + 48);
        v36 = *(a1 + 88);
        snprintf(v8, 0x1000uLL, "%s\t%o\t%d/%d\t%d\n");
        goto LABEL_5;
      }

      goto LABEL_26;
    }

    if (v13 != 1)
    {
      if (v13 != 2)
      {
        goto LABEL_6;
      }

      v14 = *(a1 + 72);
      if (a3)
      {
        v28 = *(a1 + 44);
        v30 = *(a1 + 48);
        snprintf(v8, 0x1000uLL, "%s\t%d/%d\n");
        goto LABEL_5;
      }

      v22 = *(a1 + 42);
      v23 = *(a1 + 44);
      v24 = *(a1 + 48);
LABEL_26:
      snprintf(v8, 0x1000uLL, "%s\t%o\t%d/%d\n");
      goto LABEL_5;
    }

    *v42 = 0u;
    v43 = 0u;
    if (a4 == -1)
    {
      v20 = (a1 + 64);
      v25 = (a1 + 88);
    }

    else
    {
      v19 = *(a1 + 104);
      if (!v19)
      {
LABEL_21:
        if (!a2)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v20 = (*(a1 + 112) + 8);
      while (*(v20 - 2) != a4)
      {
        v20 += 3;
        if (!--v19)
        {
          goto LABEL_21;
        }
      }

      v25 = (v20 + 1);
    }

    v26 = *v20;
    v27 = *v25;
    if (!a2)
    {
      goto LABEL_32;
    }

LABEL_31:
    ctime_r((a1 + 56), v42);
    v8 = printBuffer;
LABEL_32:
    snprintf(v8, 0x1000uLL, "%s\t%o\t%d/%d\t%llu\t%u%s%s%s", *(a1 + 72), *(a1 + 42), *(a1 + 44), *(a1 + 48));
    goto LABEL_5;
  }

  v9 = *(a1 + 72);
  snprintf(v8, 0x1000uLL, "%s\n");
LABEL_5:
  v10 = printBuffer;
LABEL_6:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t BOMFSOTypeInfoSummaryWithFormat(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = printBuffer;
  if (!printBuffer)
  {
    v6 = BOM_malloc(0x1000uLL);
    printBuffer = v6;
  }

  *&v73[8] = 0;
  v72 = 0;
  v7 = 0;
  *v73 = BOMFSObjectType(a1);
  v8 = *v73 & 0xFFFFFFFD;
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_4:
        while (1)
        {
          v10 = *a2++;
          v9 = v10;
          if (v10 <= 84)
          {
            break;
          }

          if (v9 <= 107)
          {
            if (v9 > 101)
            {
              if (v9 == 102)
              {
                if (v7)
                {
                  continue;
                }

                v7 |= 1u;
                v26 = printBuffer - v6;
                BOMFSObjectPathName(a1);
LABEL_88:
                v17 = v26 + 4096;
                goto LABEL_89;
              }

              if (v9 == 103 && (v7 & 0x10) == 0)
              {
                v7 |= 0x10u;
                v11 = printBuffer - v6;
                BOMFSObjectGroupID(a1);
                goto LABEL_38;
              }
            }

            else if (v9 == 85)
            {
              if ((v7 & 0x80) == 0)
              {
                if (!BOMFSOTypeInfoSummaryWithFormat_userNameHash)
                {
                  BOMFSOTypeInfoSummaryWithFormat_userNameHash = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
                }

                v7 |= 0x80u;
                v23 = BOMFSObjectUserID(a1);
                if (CFDictionaryContainsKey(BOMFSOTypeInfoSummaryWithFormat_userNameHash, v23))
                {
                  Value = CFDictionaryGetValue(BOMFSOTypeInfoSummaryWithFormat_userNameHash, v23);
                  UTF8String = BOMCFStringGetUTF8String(Value);
                  v6 += snprintf(v6, printBuffer - v6 + 4096, "%s\t", UTF8String);
                  free(UTF8String);
                }

                else
                {
                  v37 = BOMFSObjectUserID(a1);
                  v38 = getpwuid(v37);
                  if (v38)
                  {
                    pw_name = v38->pw_name;
                  }

                  else
                  {
                    pw_name = "<unknown>";
                  }

                  v42 = CFStringCreateWithCString(0, pw_name, 0x8000100u);
                  v6 += snprintf(v6, printBuffer - v6 + 4096, "%s\t", pw_name);
                  CFDictionarySetValue(BOMFSOTypeInfoSummaryWithFormat_userNameHash, v23, v42);
                  CFRelease(v42);
                }
              }
            }

            else if (v9 == 99 && (v7 & 0x1000) == 0)
            {
              v7 |= 0x1000u;
              if (v8 == 1)
              {
                if (a3 == -1)
                {
                  v40 = printBuffer - v6;
                  v41 = *(a1 + 88);
                }

                else
                {
                  v12 = *(a1 + 104);
                  if (!v12)
                  {
                    continue;
                  }

                  v13 = (*(a1 + 112) + 16);
                  while (*(v13 - 4) != a3)
                  {
                    v13 += 6;
                    if (!--v12)
                    {
                      goto LABEL_4;
                    }
                  }

                  v40 = printBuffer - v6;
                  v50 = *v13;
                }

                v16 = snprintf(v6, v40 + 4096, "%u\t");
                goto LABEL_90;
              }

              goto LABEL_91;
            }
          }

          else
          {
            if (v9 <= 114)
            {
              if (v9 != 108)
              {
                if (v9 != 109)
                {
                  continue;
                }

LABEL_54:
                if ((v7 & 4) != 0)
                {
                  continue;
                }

                v7 |= 4u;
                v21 = printBuffer - v6;
                BOMFSObjectMode(a1);
                v16 = snprintf(v6, v21 + 4096, "%o\t");
                goto LABEL_90;
              }

              if ((v7 & 2) != 0)
              {
                continue;
              }

              v7 |= 2u;
              if (*v73 != B_SymlinkType)
              {
                goto LABEL_91;
              }

              v26 = printBuffer - v6;
              BOMFSObjectSymlinkTarget(a1);
              goto LABEL_88;
            }

            if (v9 == 115)
            {
              if ((v7 & 0x400) != 0)
              {
                continue;
              }

              v7 |= 0x400u;
              if (BOMFSObjectType(a1) == B_DirectoryType)
              {
                v16 = snprintf(v6, printBuffer - v6 + 4096, "\t", v68, v71);
                goto LABEL_90;
              }

              if (a3 == -1)
              {
                v69 = *(a1 + 64);
                v16 = snprintf(v6, printBuffer - v6 + 4096, "%llu\t");
                goto LABEL_90;
              }

              v35 = *(a1 + 104);
              if (!v35)
              {
                continue;
              }

              v36 = (*(a1 + 112) + 8);
              while (*(v36 - 2) != a3)
              {
                v36 += 3;
                if (!--v35)
                {
                  goto LABEL_4;
                }
              }

              v70 = *v36;
              v34 = printBuffer - v6 + 4096;
LABEL_84:
              v16 = snprintf(v6, v34, "%lu\t");
              goto LABEL_90;
            }

            if (v9 == 116)
            {
              if ((v7 & 0x100) != 0)
              {
                continue;
              }

              v7 |= 0x100u;
              if (v8 == 1)
              {
                v33 = printBuffer - v6;
                BOMFSObjectModTime(a1);
                v34 = v33 + 4096;
                goto LABEL_84;
              }

LABEL_91:
              *v6++ = 9;
              continue;
            }

            if (v9 == 117 && (v7 & 0x40) == 0)
            {
              v7 |= 0x40u;
              v11 = printBuffer - v6;
              BOMFSObjectUserID(a1);
LABEL_38:
              v16 = snprintf(v6, v11 + 4096, "%d\t");
LABEL_90:
              v6 += v16;
              continue;
            }
          }
        }

        if (v9 <= 75)
        {
          break;
        }

        if (v9 > 82)
        {
          if (v9 == 83)
          {
            if ((v7 & 0x800) != 0)
            {
              continue;
            }

            v7 |= 0x800u;
            if (v8 != 1)
            {
              *v6 = 0;
              continue;
            }

            if (a3 == -1)
            {
              v31 = snprintf(&__str, 0xCuLL, "%lld");
              goto LABEL_129;
            }

            v29 = *(a1 + 104);
            if (v29)
            {
              v30 = *(a1 + 112) + 8;
              v31 = v72;
              while (*(v30 - 8) != a3)
              {
                v30 += 24;
                if (!--v29)
                {
                  goto LABEL_110;
                }
              }

              v31 = snprintf(&__str, 0xCuLL, "%lu");
LABEL_129:
              if (!v31)
              {
                goto LABEL_130;
              }

LABEL_111:
              if (__str == 45)
              {
                --v31;
                *v6++ = __str;
                p_str = v75;
              }

              else
              {
                p_str = &__str;
              }

              v44 = (v31 - 1);
              if (v31 >= 1)
              {
                v45 = v44 + 1;
                v46 = v6;
                while (1)
                {
                  v47 = *p_str++;
                  *v46++ = v47;
                  v48 = v44 - 1;
                  if (v44)
                  {
                    if (!(v44 % 3))
                    {
                      break;
                    }
                  }

                  if (!v44)
                  {
                    v49 = 9;
                    goto LABEL_121;
                  }

LABEL_122:
                  LODWORD(v44) = v48;
                  v6 = v46;
                  if (!--v45)
                  {
                    v72 = 0;
                    v6 = v46;
                    goto LABEL_4;
                  }
                }

                v49 = 44;
LABEL_121:
                v46 = v6 + 2;
                v6[1] = v49;
                goto LABEL_122;
              }

              v72 = v31;
            }

            else
            {
              v31 = v72;
LABEL_110:
              if (v31)
              {
                goto LABEL_111;
              }

LABEL_130:
              v72 = 0;
            }
          }

          else if (v9 == 84 && (v7 & 0x200) == 0)
          {
            v7 |= 0x200u;
            if (v8 != 1)
            {
              goto LABEL_91;
            }

            *&v73[4] = BOMFSObjectModTime(a1);
            ctime_r(&v73[4], __s);
            __s[strlen(__s) - 1] = 0;
            v15 = printBuffer - v6;
LABEL_44:
            v17 = v15 + 4096;
LABEL_89:
            v16 = snprintf(v6, v17, "%s\t");
            goto LABEL_90;
          }
        }

        else
        {
          if (v9 == 76)
          {
            if ((v7 & 2) != 0)
            {
              continue;
            }

            v7 |= 2u;
            if (*v73 == B_SymlinkType)
            {
              v27 = printBuffer - v6;
              v28 = BOMFSObjectSymlinkTarget(a1);
              v6 += snprintf(v6, v27 + 4096, "%s\t", v28);
            }

            else
            {
              *v6++ = 9;
            }

            goto LABEL_54;
          }

          if (v9 == 77 && (v7 & 8) == 0)
          {
            v7 |= 8u;
            v14 = BOMFSObjectMode(a1);
            strmode(v14, __bp);
            v15 = printBuffer - v6;
            goto LABEL_44;
          }
        }
      }

      if (v9 <= 69)
      {
        break;
      }

      if (v9 == 70)
      {
        if (v7)
        {
          goto LABEL_4;
        }

        v7 |= 1u;
        v32 = printBuffer - v6;
        BOMFSObjectPathName(a1);
        v16 = snprintf(v6, v32 + 4096, "%s\t");
        goto LABEL_90;
      }

      if (v9 == 71 && (v7 & 0x20) == 0)
      {
        if (!BOMFSOTypeInfoSummaryWithFormat_groupNameHash)
        {
          BOMFSOTypeInfoSummaryWithFormat_groupNameHash = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
        }

        v7 |= 0x20u;
        v18 = BOMFSObjectGroupID(a1);
        if (CFDictionaryContainsKey(BOMFSOTypeInfoSummaryWithFormat_groupNameHash, v18))
        {
          v19 = CFDictionaryGetValue(BOMFSOTypeInfoSummaryWithFormat_groupNameHash, v18);
          v20 = BOMCFStringGetUTF8String(v19);
          v6 += snprintf(v6, printBuffer - v6 + 4096, "%s\t", v20);
          free(v20);
          goto LABEL_4;
        }

LABEL_143:
        v61 = BOMFSObjectGroupID(a1);
        v62 = getgrgid(v61);
        if (v62)
        {
          gr_name = v62->gr_name;
        }

        else
        {
          gr_name = "<unknown>";
        }

        v64 = CFStringCreateWithCString(0, gr_name, 0x8000100u);
        v6 += snprintf(v6, printBuffer - v6 + 4096, "%s\t", gr_name);
        CFDictionarySetValue(BOMFSOTypeInfoSummaryWithFormat_groupNameHash, v18, v64);
        CFRelease(v64);
      }
    }

    if (v9 == 47)
    {
      if ((v7 & 0x2000) != 0)
      {
        goto LABEL_4;
      }

      v7 |= 0x2000u;
      v22 = printBuffer - v6;
      BOMFSObjectUserID(a1);
      BOMFSObjectGroupID(a1);
      v16 = snprintf(v6, v22 + 4096, "%d/%d\t");
      goto LABEL_90;
    }

    if (v9 != 63)
    {
      break;
    }

    if ((v7 & 0x4000) != 0)
    {
      goto LABEL_4;
    }

    if (!BOMFSOTypeInfoSummaryWithFormat_userNameHash)
    {
      BOMFSOTypeInfoSummaryWithFormat_userNameHash = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    }

    v51 = BOMFSObjectUserID(a1);
    if (CFDictionaryContainsKey(BOMFSOTypeInfoSummaryWithFormat_userNameHash, v51))
    {
      v52 = CFDictionaryGetValue(BOMFSOTypeInfoSummaryWithFormat_userNameHash, v51);
      v53 = BOMCFStringGetUTF8String(v52);
      v54 = snprintf(v6, printBuffer - v6 + 4096, "%s/", v53);
      free(v53);
    }

    else
    {
      v55 = BOMFSObjectUserID(a1);
      v56 = getpwuid(v55);
      if (v56)
      {
        v57 = v56->pw_name;
      }

      else
      {
        v57 = "<unknown>";
      }

      v58 = CFStringCreateWithCString(0, v57, 0x8000100u);
      v54 = snprintf(v6, printBuffer - v6 + 4096, "%s/", v57);
      CFDictionarySetValue(BOMFSOTypeInfoSummaryWithFormat_userNameHash, v51, v58);
      CFRelease(v58);
    }

    if (!BOMFSOTypeInfoSummaryWithFormat_groupNameHash)
    {
      BOMFSOTypeInfoSummaryWithFormat_groupNameHash = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    }

    v7 |= 0x4000u;
    v6 += v54;
    v18 = BOMFSObjectGroupID(a1);
    if (!CFDictionaryContainsKey(BOMFSOTypeInfoSummaryWithFormat_groupNameHash, v18))
    {
      goto LABEL_143;
    }

    v59 = CFDictionaryGetValue(BOMFSOTypeInfoSummaryWithFormat_groupNameHash, v18);
    v60 = BOMCFStringGetUTF8String(v59);
    v6 += snprintf(v6, printBuffer - v6 + 4096, "%s\t", v60);
    free(v60);
  }

  if (v9)
  {
    goto LABEL_4;
  }

  v65 = printBuffer;
  if (v6 > printBuffer)
  {
    *--v6 = 0;
    v65 = printBuffer;
  }

  snprintf(v6, v65 - v6 + 4096, "\n");
  result = printBuffer;
  v67 = *MEMORY[0x277D85DE8];
  return result;
}

_DWORD *BOMFSOTypeInfoParseSummaryWithSys(const char *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  *__str = 0u;
  *v26 = 0u;
  *__s = 0u;
  v3 = strdup(a1);
  v4 = 0;
  __endptr = 0;
  __stringp = v3;
  v21 = 0;
  while (1)
  {
    v5 = strsep(&__stringp, "\t");
    __s[v4] = v5;
    if (!v5)
    {
      break;
    }

    if (++v4 == 10)
    {
      goto LABEL_46;
    }
  }

  if (v4)
  {
    if (v4 != 10)
    {
      for (i = 0; i != v4; ++i)
      {
        if (!*__s[i])
        {
          warnx("Empty field in summary");
          goto LABEL_49;
        }
      }

      if (v4 <= 1)
      {
        goto LABEL_47;
      }

      v7 = __s[0];
      v8 = strrchr(__s[0], 47);
      if (v8)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = v7;
      }

      v10 = strtol(__s[1], &__endptr, 8);
      if (!*__endptr)
      {
        v11 = v10;
        v12 = BOMFSObjectTypeForMode(v10);
        v13 = v12;
        v14 = 0;
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            if (v4 == 6)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v12 != 4)
            {
              goto LABEL_43;
            }

            if (v4 == 4)
            {
              goto LABEL_23;
            }
          }
        }

        else
        {
          if (v12 != 1)
          {
            if (v12 == 2)
            {
              if (v4 != 3)
              {
                goto LABEL_19;
              }

LABEL_23:
              if (!a2)
              {
                a2 = BomSys_default();
              }

              v15 = BOMFSObjectNewWithSys(v13, a2);
              v14 = v15;
              if (!v15)
              {
                warnx("Can't create FSO for %s");
LABEL_44:
                if (v3)
                {
                  goto LABEL_50;
                }

                goto LABEL_51;
              }

              BOMFSObjectSetFlags(v15, B_CKSUMS | B_STAT);
              BOMFSObjectSetPathName(v14, v7, 1);
              BOMFSObjectSetShortName(v14, v9, 1);
              BOMFSObjectSetMode(v14, v11);
              if (sscanf(__str[0], "%d/%d", &v21 + 4, &v21) == 2)
              {
                BOMFSObjectSetUserID(v14, SHIDWORD(v21));
                BOMFSObjectSetGroupID(v14, v21);
                switch(v13)
                {
                  case 1:
LABEL_30:
                    v16 = strtoll(__str[1], &__endptr, 10);
                    if (!*__endptr)
                    {
                      BOMFSObjectSetSize(v14, v16);
                      v17 = strtoul(v26[0], &__endptr, 10);
                      if (!*__endptr)
                      {
                        BOMFSObjectSetChecksum(v14, v17);
                        if (v13 == 3)
                        {
                          BOMFSObjectSetSymlinkTarget(v14, v26[1], 1);
                        }

                        goto LABEL_34;
                      }
                    }

                    break;
                  case 4:
                    v18 = strtoul(__str[1], &__endptr, 10);
                    if (!*__endptr)
                    {
                      BOMFSObjectSetDeviceID(v14, v18);
                      if (!v3)
                      {
                        goto LABEL_53;
                      }

                      goto LABEL_42;
                    }

                    break;
                  case 3:
                    goto LABEL_30;
                  default:
LABEL_34:
                    if (!v3)
                    {
                      goto LABEL_53;
                    }

LABEL_42:
                    free(v3);
                    goto LABEL_53;
                }
              }
            }

LABEL_43:
            warnx("Improperly formatted field");
            goto LABEL_44;
          }

          if (v4 == 5)
          {
            goto LABEL_23;
          }
        }
      }

LABEL_19:
      v14 = 0;
      goto LABEL_43;
    }

LABEL_46:
    warnx("Improperly formatted input, too many fields");
  }

  else
  {
LABEL_47:
    warnx("Not enough fields");
  }

LABEL_49:
  v14 = 0;
  if (v3)
  {
LABEL_50:
    free(v3);
  }

LABEL_51:
  if (v14)
  {
    BOMFSObjectFree(v14);
    v14 = 0;
  }

LABEL_53:
  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t BOMFSOArchInfoArchiveLength(uint64_t a1)
{
  if (*a1 != 1 || !((B_ARCHMASK & *(a1 + 40)) >> B_ARCHOFFT))
  {
    return 0;
  }

  v1 = *(a1 + 104);
  v2 = 4 * v1;
  v3 = 12 * v1;
  if ((B_CKSUMS & *(a1 + 40)) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v3 + v4 + 5;
}

uint64_t BOMFSOArchInfoArchive(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    if ((B_ARCHMASK & *(a2 + 40)) >> B_ARCHOFFT)
    {
      v4 = *(a2 + 104);
      BOMStreamWriteUInt8(a1, 1);
      BOMStreamWriteUInt32(a1, v4);
      if (v4 >= 1)
      {
        v5 = 0;
        v6 = 24 * v4;
        do
        {
          BOMStreamWriteUInt32(a1, *(*(a2 + 112) + v5));
          BOMStreamWriteUInt32(a1, *(*(a2 + 112) + v5 + 4));
          BOMStreamWriteUInt32(a1, *(*(a2 + 112) + v5 + 8));
          if ((B_CKSUMS & *(a2 + 40)) != 0)
          {
            BOMStreamWriteUInt32(a1, *(*(a2 + 112) + v5 + 16));
          }

          v5 += 24;
        }

        while (v6 != v5);
      }
    }
  }

  return 0;
}

uint64_t BOMFSOArchInfoUnarchive(uint64_t a1, uint64_t a2)
{
  result = 1;
  if (!a1 || !a2)
  {
    return result;
  }

  if (*a2 != 1 || !((B_ARCHMASK & *(a2 + 40)) >> B_ARCHOFFT))
  {
    return 0;
  }

  UInt8 = BOMStreamReadUInt8(a1);
  if (UInt8 != 1)
  {
    fprintf(*MEMORY[0x277D85DF8], "Architecture info has an invalid version: 0x%X\nCannot dearchive.\n", UInt8);
    return 1;
  }

  UInt32 = BOMStreamReadUInt32(a1);
  *(a2 + 104) = UInt32;
  v7 = BOM_malloc(24 * UInt32);
  *(a2 + 112) = v7;
  if (!v7)
  {
    return 1;
  }

  if (UInt32 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 24 * UInt32;
  do
  {
    *(*(a2 + 112) + v8) = BOMStreamReadUInt32(a1);
    *(*(a2 + 112) + v8 + 4) = BOMStreamReadUInt32(a1);
    *(*(a2 + 112) + v8 + 8) = BOMStreamReadUInt32(a1);
    if ((*(a2 + 40) & B_CKSUMS) != 0)
    {
      *(*(a2 + 112) + v8 + 16) = BOMStreamReadUInt32(a1);
    }

    result = 0;
    v8 += 24;
  }

  while (v9 != v8);
  return result;
}

uint64_t BOMStorageNewWithOptionsAndSys(const char *a1, uint64_t a2, uint64_t (**a3)(void, const char *, uint64_t, uint64_t))
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v5 = v3[2](v3[1], a1, 1538, 420);
  if (v5 == -1)
  {
    v8 = *MEMORY[0x277D85DF8];
    v9 = __error();
    v10 = strerror(*v9);
    fprintf(v8, "can't open %s: %s\n", a1, v10);
    goto LABEL_7;
  }

  v6 = v5;
  bzero(v12, 0x460uLL);
  v13 = v6;
  v14 = v3;
  if (_WriteRootPage(v12))
  {
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  (v3[4])(v3[1], v6);
  result = BOMStorageOpenWithSys(a1, 1, v3);
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _WriteRootPage(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 1120);
  }

  else
  {
    v2 = 0;
  }

  v3 = 1;
  v4 = BOMStreamWithFileAndSys(*(a1 + 1028), 0, 0x200uLL, 1, 0, v2);
  if (v4)
  {
    v5 = v4;
    BOMStreamWriteUInt32(v4, 0x424F4D53u);
    BOMStreamWriteUInt32(v5, 0x746F7265u);
    BOMStreamWriteUInt32(v5, 1u);
    BOMStreamWriteUInt32(v5, *(a1 + 1056));
    BOMStreamWriteUInt32(v5, *(a1 + 1060));
    BOMStreamWriteUInt32(v5, *(a1 + 1064));
    BOMStreamWriteUInt32(v5, *(a1 + 1096));
    BOMStreamWriteUInt32(v5, *(a1 + 1100));
    v3 = BOMStreamFree(v5);
    if ((*(v2 + 72))(*(v2 + 8), *(a1 + 1028)))
    {
      v6 = *MEMORY[0x277D85DF8];
      v7 = __error();
      v8 = strerror(*v7);
      fprintf(v6, "fsync: %s\n", v8);
      return 1;
    }
  }

  return v3;
}

uint64_t BOMStorageOpenWithSys(const char *a1, int a2, void *a3)
{
  v3 = a3;
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  v6 = (*(v3 + 2))(*(v3 + 1), a1, 2 * (a2 != 0), 420);
  if (v6 != -1)
  {
    v7 = v6;
    if ((*(v3 + 11))(*(v3 + 1), v6, &v49) == -1)
    {
      v21 = *MEMORY[0x277D85DF8];
      v22 = __error();
      v47 = strerror(*v22);
      v23 = "fstat: %s\n";
LABEL_15:
      v24 = v21;
LABEL_19:
      fprintf(v24, v23, v47, v48, v49, v50, v51, v52, v53, v54);
      goto LABEL_20;
    }

    v8 = BOMStreamWithFileAndSys(v7, 0, 0x200uLL, 0, 0, v3);
    if (!v8)
    {
      v24 = *MEMORY[0x277D85DF8];
      v47 = a1;
      v23 = "can't read from %s\n";
      goto LABEL_19;
    }

    v9 = v8;
    if (BOMStreamReadUInt32(v8) == 1112493395 && BOMStreamReadUInt32(v9) == 1953460837)
    {
      UInt32 = BOMStreamReadUInt32(v9);
      if (UInt32 == 1)
      {
        v11 = BOM_malloc(0x468uLL);
        v12 = v11;
        if (!v11)
        {
          v28 = *MEMORY[0x277D85DF8];
          v29 = __error();
          v30 = strerror(*v29);
          fprintf(v28, "malloc: %s\n", v30);
          BOMStreamFree(v9);
          (*(v3 + 4))(*(v3 + 1), v7);
          return v12;
        }

        bzero(v11, 0x468uLL);
        *(v12 + 1120) = v3;
        *(v12 + 1028) = v7;
        v13 = v55;
        *(v12 + 1032) = v55;
        *(v12 + 1036) = v13;
        *(v12 + 1052) = a2;
        *(v12 + 1053) = 0;
        *(v12 + 1056) = BOMStreamReadUInt32(v9);
        *(v12 + 1060) = BOMStreamReadUInt32(v9);
        *(v12 + 1064) = BOMStreamReadUInt32(v9);
        *(v12 + 1096) = BOMStreamReadUInt32(v9);
        *(v12 + 1100) = BOMStreamReadUInt32(v9);
        BOMStreamFree(v9);
        v14 = *(v12 + 1060);
        v15 = *(v12 + 1064);
        v16 = __CFADD__(v15, v14);
        v17 = v15 + v14;
        if (!v16)
        {
          v31 = *(v12 + 1032);
          if (v17 > v31)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s: stream invalid; admin range is outside file\n");
            goto LABEL_20;
          }

          v32 = *(v12 + 1096);
          v33 = *(v12 + 1100);
          v16 = __CFADD__(v33, v32);
          v34 = v33 + v32;
          if (v16)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s: stream invalid; overflow of toc offset+size\n");
            goto LABEL_20;
          }

          if (v34 > v31)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s: stream invalid; toc range is outside file\n");
            goto LABEL_20;
          }

          if (a2)
          {
            if (v31 <= 0x4000)
            {
              v35 = 0x4000;
            }

            else
            {
              v35 = *(v12 + 1032);
            }

            *(v12 + 1048) = v35;
            _CreateMapAddress(v12, v35);
            v36 = *(v12 + 1040);
            if (!v36)
            {
              goto LABEL_20;
            }

            *(v12 + 1053) = 1;
            v37 = *(v12 + 1096);
            if (v37)
            {
              v38 = BOMStreamWithFileAndSys(*(v12 + 1028), v37, *(v12 + 1100), 0, (v36 + v37), v3);
              if (!v38)
              {
                goto LABEL_20;
              }

              BOMStreamFree(v38);
            }

            _CreateBlockTable(v12);
            v39 = *(v12 + 1060);
            if (v39)
            {
              v40 = BOMStreamWithFileAndSys(v7, v39, *(v12 + 1064), 0, 0, v3);
LABEL_45:
              v43 = v40;
              if (!v40)
              {
                v45 = *MEMORY[0x277D85DF8];
                v46 = __error();
                strerror(*v46);
                fprintf(v45, "can't read from %s: %s\n");
                goto LABEL_20;
              }

              if (_ReadBlockTable(v12, v40) || _ReadFreeList(v12, v43))
              {
                goto LABEL_20;
              }

              BOMStreamFree(v43);
LABEL_50:
              __strlcpy_chk();
              return v12;
            }

            goto LABEL_49;
          }

          v41 = (*(v3 + 40))(*(v3 + 1), 0);
          if (v41 != -1)
          {
            *(v12 + 1048) = *(v12 + 1032);
            *(v12 + 1040) = v41;
            *(v12 + 1053) = 1;
            _CreateBlockTable(v12);
            v42 = *(v12 + 1060);
            if (v42)
            {
              v40 = BOMStreamWithAddress(*(v12 + 1040) + v42, *(v12 + 1064), 0);
              goto LABEL_45;
            }

LABEL_49:
            *(v12 + 1088) = _NewFreeList();
            goto LABEL_50;
          }

          v21 = *MEMORY[0x277D85DF8];
          v44 = __error();
          v47 = strerror(*v44);
          v23 = "mmap: %s\n";
          goto LABEL_15;
        }

        fprintf(*MEMORY[0x277D85DF8], "%s: stream invalid; overflow of admin offset+size\n");
LABEL_20:
        (*(v3 + 4))(*(v3 + 1), v7);
        return 0;
      }

      fprintf(*MEMORY[0x277D85DF8], "%s has an unknown version: 0x%X\n", a1, UInt32);
    }

    else
    {
      v25 = BOMExceptionHandlerMessage("%s is not a BOMStorage file\n", a1);
      v26 = __error();
      _BOMExceptionHandlerCall(v25, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 323, *v26);
    }

    BOMStreamFree(v9);
    goto LABEL_20;
  }

  v18 = *MEMORY[0x277D85DF8];
  v19 = __error();
  v20 = strerror(*v19);
  fprintf(v18, "can't open %s: %s\n", a1, v20);
  return 0;
}

uint64_t BOMStorageNewInRAM()
{
  v0 = BOM_malloczero(0x468uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 1028) = 0x200FFFFFFFFLL;
    *(v0 + 259) = 512;
    *(v0 + 526) = 1;
    *(v0 + 140) = BomSys_default();
    if (*(v1 + 1032) <= 0x4000u)
    {
      v2 = 0x4000;
    }

    else
    {
      v2 = *(v1 + 1032);
    }

    *(v1 + 1048) = v2;
    _CreateMapAddress(v1, v2);
    if (*(v1 + 1040))
    {
      *(v1 + 1053) = 1;
      _CreateBlockTable(v1);
      __strlcpy_chk();
      *(v1 + 1088) = _NewFreeList();
    }

    else
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t _CreateMapAddress(uint64_t a1, unsigned int a2)
{
  v3 = a2 % *MEMORY[0x277D85FA0];
  if (v3)
  {
    v4 = *MEMORY[0x277D85FA0] - v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + a2;
  result = (*(*(a1 + 1120) + 320))(*(*(a1 + 1120) + 8), 0, v5, 3, 4098, 0xFFFFFFFFLL, 0);
  if (result == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = result;
  }

  *(a1 + 1040) = v7;
  *(a1 + 1048) = v5;
  return result;
}

uint64_t _CreateBlockTable(uint64_t a1)
{
  v2 = 0x4000uLL % *MEMORY[0x277D85FA0];
  if (v2)
  {
    v3 = *MEMORY[0x277D85FA0] - v2 + 0x4000;
  }

  else
  {
    v3 = 0x4000;
  }

  result = vm_allocate(*MEMORY[0x277D85F48], (a1 + 1072), v3, 1);
  if (result)
  {
    *(a1 + 1072) = 0;
  }

  *(a1 + 1080) = v3;
  return result;
}

_DWORD *_NewFreeList()
{
  v0 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v2 = getenv("BOMFREELISTIMPLEMENTATION");
  if (v2)
  {
    v3 = CFStringCreateWithCString(v0, v2, 0x8000100u);
    CFDictionaryAddValue(Mutable, @"Implementation", v3);
    CFRelease(v3);
  }

  v4 = _BOMFreeListAllocate(Mutable);
  CFRelease(Mutable);
  return v4;
}

uint64_t _ReadBlockTable(uint64_t a1, uint64_t a2)
{
  UInt32 = BOMStreamReadUInt32(a2);
  if (!UInt32)
  {
    return 0;
  }

  v5 = UInt32;
  if (!(UInt32 >> 29) && *(a1 + 1064) >= 8 * UInt32)
  {
    _ExpandBlockTable(a1, 12 * UInt32);
    if (!*(a1 + 1072))
    {
      v14 = *MEMORY[0x277D85DF8];
      v15 = __error();
      v16 = strerror(*v15);
      fprintf(v14, "realloc: %s\n", v16);
      return 1;
    }

    v7 = 0;
    *(a1 + 1068) = v5;
    v8 = 12 * v5;
    do
    {
      *(*(a1 + 1072) + v7) = BOMStreamReadUInt32(a2);
      v9 = BOMStreamReadUInt32(a2);
      v10 = *(a1 + 1072);
      v11 = v10 + v7;
      *(v10 + v7 + 4) = v9;
      *(v11 + 8) = *(v10 + v7) == -1 && v9 == -1;
      *(v10 + v7 + 9) = 0;
      v7 += 12;
    }

    while (v8 != v7);
    return 0;
  }

  v6 = 1;
  fwrite("bad value for block table count\n", 0x20uLL, 1uLL, *MEMORY[0x277D85DF8]);
  return v6;
}

uint64_t _ReadFreeList(uint64_t a1, uint64_t a2)
{
  UInt32 = BOMStreamReadUInt32(a2);
  *(a1 + 1088) = _NewFreeList();
  if (!UInt32)
  {
    return 0;
  }

  v5 = 8 * UInt32;
  v6 = 8 * UInt32;
  v7 = BOM_malloc(v5);
  if (v7)
  {
    v8 = v7;
    BOMStreamReadBuffer(a2, v7, v6);
    v9 = *(a1 + 1088);
    v10 = *(v9 + 16);
    v11 = BOMStreamGetByteOrder(a2) == 1;
    v10(v9, v8, v6, v11);
    free(v8);
    return 0;
  }

  return 1;
}

uint64_t BOMStorageOpenInRAM(uint64_t a1, unint64_t a2, char a3)
{
  if (a2 <= 0x1FF)
  {
    fwrite("stream invalid; root page is outside of address range\n", 0x36uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 0;
  }

  v4 = a2;
  v6 = BOMStreamWithAddress(a1, 0x200uLL, 0);
  if (!v6)
  {
    fprintf(*MEMORY[0x277D85DF8], "can't read from %s\n");
    return 0;
  }

  v7 = v6;
  if (BOMStreamReadUInt32(v6) != 1112493395 || BOMStreamReadUInt32(v7) != 1953460837)
  {
    v14 = BOMExceptionHandlerMessage("%s is not a BOMStorage file\n", "<memory>");
    v15 = __error();
    _BOMExceptionHandlerCall(v14, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 490, *v15);
LABEL_12:
    BOMStreamFree(v7);
    return 0;
  }

  if (BOMStreamReadUInt32(v7) != 1)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s has an unknown version: 0x%X\n");
    goto LABEL_12;
  }

  v8 = BOM_malloc(0x468uLL);
  if (!v8)
  {
    v17 = *MEMORY[0x277D85DF8];
    v18 = __error();
    strerror(*v18);
    fprintf(v17, "malloc: %s\n");
    goto LABEL_12;
  }

  v9 = v8;
  bzero(v8, 0x468uLL);
  *(v9 + 1120) = BomSys_default();
  *(v9 + 1028) = -1;
  *(v9 + 1032) = v4;
  *(v9 + 1036) = v4;
  *(v9 + 1052) = a3;
  *(v9 + 1053) = 0;
  *(v9 + 1056) = BOMStreamReadUInt32(v7);
  *(v9 + 1060) = BOMStreamReadUInt32(v7);
  *(v9 + 1064) = BOMStreamReadUInt32(v7);
  *(v9 + 1096) = BOMStreamReadUInt32(v7);
  *(v9 + 1100) = BOMStreamReadUInt32(v7);
  BOMStreamFree(v7);
  v10 = *(v9 + 1060);
  v11 = *(v9 + 1064);
  v12 = __CFADD__(v11, v10);
  v13 = v11 + v10;
  if (v12)
  {
    fprintf(*MEMORY[0x277D85DF8], "%s: stream invalid; overflow of admin offset+size\n");
  }

  else
  {
    v19 = *(v9 + 1032);
    if (v13 <= v19)
    {
      v20 = *(v9 + 1096);
      v21 = *(v9 + 1100);
      v12 = __CFADD__(v21, v20);
      v22 = v21 + v20;
      if (v12)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s: stream invalid; overflow of toc offset+size\n");
      }

      else
      {
        if (v22 <= v19)
        {
          *(v9 + 1048) = v19;
          *(v9 + 1040) = a1;
          _CreateBlockTable(v9);
          v23 = *(v9 + 1060);
          if (v23)
          {
            v24 = BOMStreamWithAddress(*(v9 + 1040) + v23, *(v9 + 1064), 0);
            if (!v24)
            {
              v26 = *MEMORY[0x277D85DF8];
              v27 = __error();
              strerror(*v27);
              fprintf(v26, "can't read from %s: %s\n");
              return 0;
            }

            v25 = v24;
            if (_ReadBlockTable(v9, v24) || _ReadFreeList(v9, v25))
            {
              return 0;
            }

            BOMStreamFree(v25);
          }

          else
          {
            *(v9 + 1088) = _NewFreeList();
          }

          __strlcpy_chk();
          return v9;
        }

        fprintf(*MEMORY[0x277D85DF8], "%s: stream invalid; toc range is outside file\n");
      }
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s: stream invalid; admin range is outside file\n");
    }
  }

  return 0;
}

BOOL BOMStorageIsStorageFileWithSys(const char *a1, void *a2)
{
  v2 = a2;
  if (!a2)
  {
    v2 = BomSys_default();
  }

  v4 = (*(v2 + 2))(*(v2 + 1), a1, 0, 420);
  if (v4 == -1)
  {
    v9 = *MEMORY[0x277D85DF8];
    v10 = __error();
    v11 = strerror(*v10);
    fprintf(v9, "can't open %s: %s\n", a1, v11);
    return 0;
  }

  else
  {
    v5 = v4;
    v6 = BOMStreamWithFileAndSys(v4, 0, 0x200uLL, 0, 0, v2);
    if (v6)
    {
      v7 = v6;
      v8 = BOMStreamReadUInt32(v6) == 1112493395 && BOMStreamReadUInt32(v7) == 1953460837;
      BOMStreamFree(v7);
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "can't read from %s\n", a1);
      v8 = 0;
    }

    (*(v2 + 4))(*(v2 + 1), v5);
  }

  return v8;
}

uint64_t BOMStorageFree(_DWORD *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1[279] && BOMStorageCommit(a1))
  {
    return 1;
  }

  v3 = *(a1 + 134);
  if (v3 && MEMORY[0x245CFCA20](*MEMORY[0x277D85F48], v3, a1[270]))
  {
    v4 = __error();
    _BOMExceptionHandlerCall("vm_deallocate failed", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 1550, *v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    v5[4](*(a1 + 136));
    free(v5);
  }

  if (*(a1 + 130))
  {
    if (*(a1 + 1053))
    {
      v6 = *(a1 + 1052);
      v7 = a1[262];
      v8 = (*(*(a1 + 140) + 328))(*(*(a1 + 140) + 8));
      if (v6)
      {
        if (v8 == -1)
        {
          v9 = __error();
          _BOMExceptionHandlerCall("munmap failed", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 1417, *v9);
        }
      }
    }
  }

  if (a1[257] != -1)
  {
    (*(*(a1 + 140) + 32))(*(*(a1 + 140) + 8));
  }

  free(a1);
  return 0;
}

uint64_t BOMStorageCommit(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 1116))
  {
    return 0;
  }

  if (*(a1 + 1028) == -1)
  {
    v2 = 0;
    *(a1 + 1036) = *(a1 + 1032);
    goto LABEL_8;
  }

  _FlushWriteCache(a1);
  if (_AdjustFileSize(a1, 0, 0))
  {
    return 1;
  }

  v4 = *(a1 + 1088);
  v5 = 8 * (*(a1 + 1068) + *(v4 + 8));
  v6 = (v5 + 24);
  if (v5 == -24)
  {
    v7 = 0;
  }

  else
  {
    v7 = (*(v4 + 48))(v4, v6);
    if (!v7)
    {
      v7 = *(a1 + 1032);
    }
  }

  v8 = *(a1 + 1060);
  v9 = *(a1 + 1064);
  *(a1 + 1060) = v7;
  *(a1 + 1064) = v6;
  if (v8 && v9)
  {
    (*(*(a1 + 1088) + 40))();
  }

  v10 = v7;
  v2 = 1;
  v11 = BOMStreamWithFile(*(a1 + 1028), v10, v6, 1, 0);
  if (v11)
  {
    v12 = v11;
    v13 = *(a1 + 1068);
    BOMStreamWriteUInt32(v11, *(a1 + 1068));
    if (v13)
    {
      v14 = 0;
      v15 = 12 * v13;
      do
      {
        BOMStreamWriteUInt32(v12, *(*(a1 + 1072) + v14));
        BOMStreamWriteUInt32(v12, *(*(a1 + 1072) + v14 + 4));
        v14 += 12;
      }

      while (v15 != v14);
    }

    BOMStreamWriteUInt32(v12, *(*(a1 + 1088) + 8));
    __len = 0;
    v16 = *(a1 + 1088);
    v17 = *(v16 + 24);
    v18 = BOMStreamGetByteOrder(v12) == 1;
    v19 = v17(v16, v18, &__len);
    BOMStreamWriteBuffer(v12, v19, __len);
    free(v19);
    v20 = BOMStreamFree(v12);
    if (_AdjustFileSize(a1, 0, 0))
    {
      return 1;
    }

    *(a1 + 1036) = *(a1 + 1032);
    v2 = (_WriteRootPage(a1) | v20) != 0;
LABEL_8:
    *(a1 + 1116) = 0;
  }

  return v2;
}

uint64_t BOMStorageGetSys(uint64_t result)
{
  if (result)
  {
    return *(result + 1120);
  }

  return result;
}

uint64_t BOMStorageIsOpenForWriting(uint64_t result)
{
  if (result)
  {
    return *(result + 1052);
  }

  return result;
}

uint64_t BOMStorageNewBlock(uint64_t a1)
{
  if (!a1 || !*(a1 + 1052))
  {
    return 0;
  }

  v2 = (*(a1 + 1056) + 1);
  *(a1 + 1056) = v2;
  if (v2 >= *(a1 + 1068))
  {
    v3 = *(a1 + 1080);
    if (v3 >= 0x100000)
    {
      v4 = v3 + 0x100000;
    }

    else
    {
      v4 = 2 * v3;
    }

    _ExpandBlockTable(a1, v4);
    *(a1 + 1068) = *(a1 + 1080) / 0xCu;
  }

  *(*(a1 + 1072) + 12 * v2 + 8) = 0;
  return v2;
}

uint64_t _ExpandBlockTable(uint64_t result, unsigned int a2)
{
  v2 = result;
  v3 = *(result + 1080);
  if (v3 >= a2)
  {
    if (*(result + 1072))
    {
      return result;
    }

    goto LABEL_14;
  }

  address = 0;
  v4 = a2 % *MEMORY[0x277D85FA0];
  if (v4)
  {
    v5 = *MEMORY[0x277D85FA0] - v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + a2;
  v7 = MEMORY[0x277D85F48];
  if (vm_allocate(*MEMORY[0x277D85F48], &address, v6, 1))
  {
    v8 = __error();
    _BOMExceptionHandlerCall("vm_allocate failed", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 1570, *v8);
  }

  if (vm_copy(*v7, *(v2 + 1072), v3, address))
  {
    v9 = __error();
    _BOMExceptionHandlerCall("vm_copy failed", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 1572, *v9);
  }

  result = MEMORY[0x245CFCA20](*v7, *(v2 + 1072), v3);
  if (result)
  {
    v10 = __error();
    result = _BOMExceptionHandlerCall("vm_deallocate failed", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 1575, *v10);
  }

  v11 = address;
  *(v2 + 1072) = address;
  *(v2 + 1080) = v6;
  if (!v11)
  {
LABEL_14:
    v12 = __error();
    return _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 1591, *v12);
  }

  return result;
}

uint64_t BOMStorageNewNamedBlock(uint64_t a1, const char *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 1052))
  {
    goto LABEL_4;
  }

  if (_tocGet(a1, a2))
  {
    fprintf(*MEMORY[0x277D85DF8], "name %s already exists!\n", a2);
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  v4 = BOMStorageNewBlock(a1);
  v7 = strlen(a2);
  if ((v7 & 0xFFFFFF00) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "name '%s' is > %d\n", a2, 255);
  }

  else
  {
    v8 = v7;
    if (*(a1 + 1096))
    {
      v9 = *(a1 + 1100);
    }

    else
    {
      v9 = 4;
    }

    v10 = v7 + v9;
    v11 = v10 + 5;
    if (v10 == -5)
    {
      v12 = 0;
    }

    else
    {
      v12 = (*(*(a1 + 1088) + 48))();
      if (!v12)
      {
        v12 = *(a1 + 1032);
      }
    }

    _ExpandMapAddress(a1, v12 + v11);
    v13 = *(a1 + 1096);
    if (v13)
    {
      v14 = BOMStreamWithAddress(*(a1 + 1040) + v13, *(a1 + 1100), 0);
      if (!v14)
      {
        goto LABEL_5;
      }

      v15 = v14;
      UInt32 = BOMStreamReadUInt32(v14);
    }

    else
    {
      UInt32 = 0;
      v15 = 0;
    }

    v17 = BOMStreamWithAddress(*(a1 + 1040) + v12, v11, 1);
    if (v17)
    {
      v18 = v17;
      BOMStreamWriteUInt32(v17, UInt32 + 1);
      if (v15)
      {
        v23 = v12;
        for (i = v11; UInt32; --UInt32)
        {
          v19 = BOMStreamReadUInt32(v15);
          UInt8 = BOMStreamReadUInt8(v15);
          v21 = UInt8;
          v22 = UInt8;
          BOMStreamReadBuffer(v15, __dst, UInt8);
          BOMStreamWriteUInt32(v18, v19);
          BOMStreamWriteUInt8(v18, v21);
          BOMStreamWriteBuffer(v18, __dst, v22);
        }

        BOMStreamFree(v15);
        if (*(a1 + 1096) && *(a1 + 1100))
        {
          (*(*(a1 + 1088) + 40))();
        }

        v11 = i;
        v12 = v23;
      }

      BOMStreamWriteUInt32(v18, v4);
      BOMStreamWriteUInt8(v18, v8);
      BOMStreamWriteBuffer(v18, a2, v8);
      BOMStreamFree(v18);
      *(a1 + 1096) = v12;
      *(a1 + 1100) = v11;
      _AdjustFileSize(a1, v12, v11);
      if (*(a1 + 1028) != -1)
      {
        _AddToWriteCache(a1, v12, v11);
      }

      *(a1 + 1116) = 1;
    }
  }

LABEL_5:
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t _tocGet(uint64_t a1, const char *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1 && (v2 = *(a1 + 1096), v2) && (v4 = *(a1 + 1100), v4) && (v5 = BOMStreamWithAddress(*(a1 + 1040) + v2, v4, 0)) != 0)
  {
    v6 = v5;
    UInt32 = BOMStreamReadUInt32(v5);
    if (UInt32)
    {
      v8 = UInt32;
      while (1)
      {
        v9 = BOMStreamReadUInt32(v6);
        UInt8 = BOMStreamReadUInt8(v6);
        BOMStreamReadBuffer(v6, __s2, UInt8);
        __s2[UInt8] = 0;
        if (!strcmp(a2, __s2))
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v9 = 0;
    }

    BOMStreamFree(v6);
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t BOMStorageSizeOfBlock(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 1056) < a2)
    {
      return 0;
    }

    if (*(a1 + 1068) <= a2)
    {
      return 0;
    }

    v4 = *(a1 + 1072) + 12 * a2;
    if (*(v4 + 8) == 1)
    {
      return 0;
    }

    else
    {
      return *(v4 + 4);
    }
  }

  return result;
}

double BOMStorageFreeBlock(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 1056) >= a2)
      {
        v3 = *(a1 + 1072);
        v4 = v3 + 12 * a2;
        if (!*(v4 + 8))
        {
          if (*v4)
          {
            v6 = *(v4 + 4) == 0;
          }

          else
          {
            v6 = 1;
          }

          if (!v6)
          {
            (*(*(a1 + 1088) + 40))();
            v3 = *(a1 + 1072);
          }

          v7 = v3 + 12 * a2;
          result = NAN;
          *v7 = -1;
          *(v7 + 8) = 1;
        }
      }
    }
  }

  return result;
}

void BOMStorageFreeNamedBlock(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (a2)
    {
      v4 = _tocGet(a1, a2);
      if (v4)
      {
        BOMStorageFreeBlock(a1, v4);
        if (*(a1 + 1096))
        {
          v5 = strlen(a2);
          v6 = *(a1 + 1100);
          if (v6)
          {
            v7 = *(a1 + 1100);
            v8 = (*(*(a1 + 1088) + 48))();
            if (!v8)
            {
              v8 = *(a1 + 1032);
            }
          }

          else
          {
            v8 = 0;
          }

          v9 = (v6 - v5 - 5);
          _ExpandMapAddress(a1, v8 + v9);
          v10 = BOMStreamWithAddress(*(a1 + 1040) + *(a1 + 1096), *(a1 + 1100), 0);
          if (v10)
          {
            v11 = v10;
            v12 = BOMStreamWithAddress(*(a1 + 1040) + v8, v9, 1);
            if (v12)
            {
              v13 = v12;
              UInt32 = BOMStreamReadUInt32(v11);
              BOMStreamWriteUInt32(v13, UInt32 - 1);
              for (; UInt32; --UInt32)
              {
                v15 = BOMStreamReadUInt32(v11);
                UInt8 = BOMStreamReadUInt8(v11);
                BOMStreamReadBuffer(v11, __s1, UInt8);
                __s1[UInt8] = 0;
                if (strcmp(__s1, a2))
                {
                  BOMStreamWriteUInt32(v13, v15);
                  BOMStreamWriteUInt8(v13, UInt8);
                  BOMStreamWriteBuffer(v13, __s1, UInt8);
                }
              }

              BOMStreamFree(v11);
              BOMStreamFree(v13);
              if (*(a1 + 1096) && *(a1 + 1100))
              {
                (*(*(a1 + 1088) + 40))();
              }

              *(a1 + 1096) = v8;
              *(a1 + 1100) = v9;
              _AdjustFileSize(a1, v8, v9);
              if (*(a1 + 1028) != -1)
              {
                _AddToWriteCache(a1, v8, v9);
              }

              *(a1 + 1116) = 1;
            }
          }
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t BOMStorageCount(uint64_t result)
{
  if (result)
  {
    return *(result + 1056);
  }

  return result;
}

uint64_t BOMStorageCopyToBlock(uint64_t a1, unsigned int a2, const void *a3, size_t a4)
{
  if (a1 && a2 && *(a1 + 1056) >= a2 && *(a1 + 1052))
  {
    return BOMStorageCopyToBlockRange(a1, a2, a3, a4, 0, *(*(a1 + 1072) + 12 * a2 + 4));
  }

  else
  {
    return 1;
  }
}

uint64_t BOMStorageCopyToBlockRange(uint64_t a1, unsigned int a2, const void *a3, size_t a4, unint64_t a5, uint64_t a6)
{
  result = 1;
  if (!a1 || !a2 || *(a1 + 1056) < a2 || !*(a1 + 1052))
  {
    return result;
  }

  v10 = (*(a1 + 1072) + 12 * a2);
  v11 = v10[1];
  v12 = a6 + a5;
  if (a6 + a5 > v11)
  {
    v13 = *__error();
    v14 = "BOMStorageCopyToBlockRange: length extends beyond block size";
    v15 = 893;
LABEL_7:
    _BOMExceptionHandlerCall(v14, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", v15, v13);
    return 1;
  }

  v18 = *v10;
  if (v11 <= a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = v10[1];
  }

  v20 = a4 - a6 + v19;
  if (v11 == v20 && v18 >= *(a1 + 1036))
  {
    v22 = v18;
  }

  else
  {
    if (v18)
    {
      v21 = v11 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      (*(*(a1 + 1088) + 40))();
    }

    if (v20)
    {
      v22 = (*(*(a1 + 1088) + 48))();
      if (!v22)
      {
        v22 = *(a1 + 1032);
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = (*(a1 + 1072) + 12 * a2);
    *v23 = v22;
    v23[1] = v20;
  }

  if (v20)
  {
    v24 = v22 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    return 0;
  }

  v36 = v22 + v20;
  _ExpandMapAddress(a1, v22 + v20);
  if (a5)
  {
    memmove((*(a1 + 1040) + v22), (*(a1 + 1040) + v18), a5);
    v25 = a5;
  }

  else
  {
    v25 = 0;
  }

  if (v11 <= a5 || v22 < v18 || v22 >= v11 + v18)
  {
    if (a4)
    {
      v28 = a3;
      v29 = v25;
      memmove((*(a1 + 1040) + v22 + v25), v28, a4);
      v25 = v29 + a4;
    }

    if (v20 > v25)
    {
      memmove((*(a1 + 1040) + v22 + v25), (*(a1 + 1040) + a5 + a6 + v18), v20 - v25);
      *(*(a1 + 1072) + 12 * a2 + 9) = 1;
      goto LABEL_51;
    }
  }

  else
  {
    v30 = (v11 - v12);
    if (v30)
    {
      v31 = *(a1 + 1040);
      v32 = (v31 + a5 + a6 + v18);
      v33 = v25;
      memmove((v31 + v22 + a5 + a4), v32, v30);
      v25 = v33;
    }

    if (a4)
    {
      v34 = v25;
      memmove((*(a1 + 1040) + v22 + v25), a3, a4);
      v25 = v34 + a4;
    }

    v25 += v30;
  }

  *(*(a1 + 1072) + 12 * a2 + 9) = 1;
  if (v25 != v20)
  {
    v13 = *__error();
    v14 = "BOMStorageCopyToBlockRange: internal consistency error";
    v15 = 997;
    goto LABEL_7;
  }

LABEL_51:
  if (*(a1 + 1028) == -1)
  {
    if (v36 > *(a1 + 1032))
    {
      *(a1 + 1032) = v36;
    }
  }

  else
  {
    _AddToWriteCache(a1, v22, v20);
  }

  v35 = _AdjustFileSize(a1, v22, v20);
  result = 1;
  if (!v35)
  {
    *(a1 + 1116) = 1;
    return 0;
  }

  return result;
}

uint64_t _ExpandMapAddress(uint64_t result, unsigned int a2)
{
  v2 = result;
  v3 = *(result + 1048);
  if (v3 >= a2)
  {
    if (*(result + 1040))
    {
      return result;
    }
  }

  else
  {
    if (v3 >= 0x100000)
    {
      LODWORD(v4) = v3 + 0x100000;
    }

    else
    {
      LODWORD(v4) = 2 * v3;
    }

    if (v4 <= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = v4;
    }

    v5 = v4 % *MEMORY[0x277D85FA0];
    v6 = *MEMORY[0x277D85FA0] - v5;
    if (!v5)
    {
      v6 = 0;
    }

    v7 = (v6 + v4);
    v8 = (*(*(result + 1120) + 320))(*(*(result + 1120) + 8), 0, v7, 3, 4098, 0xFFFFFFFFLL, 0);
    if (v8 == -1)
    {
      v11 = *__error();
      v12 = "mmap failed";
      v13 = 1443;
      goto LABEL_20;
    }

    v9 = v8;
    if (vm_copy(*MEMORY[0x277D85F48], *(v2 + 1040), *(v2 + 1048), v8))
    {
      v10 = __error();
      _BOMExceptionHandlerCall("vm_copy failed", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 1447, *v10);
    }

    result = (*(*(v2 + 1120) + 328))(*(*(v2 + 1120) + 8), *(v2 + 1040), *(v2 + 1048));
    if (result == -1)
    {
      v11 = *__error();
      v12 = "munmap failed";
      v13 = 1449;
      goto LABEL_20;
    }

    *(v2 + 1040) = v9;
    *(v2 + 1048) = v7;
    if (v9)
    {
      return result;
    }
  }

  v11 = *__error();
  v12 = "Out of memory.";
  v13 = 1460;
LABEL_20:

  return _BOMExceptionHandlerCall(v12, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", v13, v11);
}

void _AddToWriteCache(uint64_t a1, unsigned int a2, int a3)
{
  if (!a2 || !a3)
  {
    return;
  }

  v5 = (a1 + 1104);
  v6 = *(a1 + 1104);
  if (!v6)
  {
    *(a1 + 1104) = _newFreeListEntry(a2, a3);
    v12 = 1;
LABEL_23:
    *(a1 + 1112) = v12;
LABEL_24:
    if (*(a1 + 1112) < 0x10u)
    {
      v15 = *v5;
      if (*v5)
      {
        v16 = 0;
        do
        {
          v17 = *(v15 + 3);
          if (v17 < 0xFFFF)
          {
            v18 = *v15;
            v16 = v15;
          }

          else
          {
            v18 = *v15;
            if (v16)
            {
              v19 = v16;
            }

            else
            {
              v19 = v5;
            }

            *v19 = v18;
            _WriteAddress(a1, *(v15 + 2), v17);
            free(v15);
            --*(a1 + 1112);
          }

          v15 = v18;
        }

        while (v18);
      }
    }

    else
    {

      _FlushWriteCache(a1);
    }

    return;
  }

  v7 = v6[2];
  if (v7 <= a2)
  {
    while (1)
    {
      v8 = v6;
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v9 = v6[2];
      if (v9 >= a2)
      {
        v11 = v8[3];
        if (v11 + v8[2] != a2)
        {
          goto LABEL_6;
        }

        v8[3] = v11 + a3;
        if (a3 + a2 == v6[2])
        {
          v8[3] = v6[3] + v11 + a3;
          *v8 = *v6;
          free(v6);
          v12 = *(a1 + 1112) - 1;
          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    v14 = v8[3];
    if (v14 + v8[2] == a2)
    {
      v8[3] = v14 + a3;
      goto LABEL_24;
    }

    v13 = _newFreeListEntry(a2, a3);
    if (v13)
    {
      *v13 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
    v9 = v6[2];
LABEL_6:
    if (a3 + a2 == v9)
    {
      v10 = v6[3] + a3;
      v6[2] = a2;
      v6[3] = v10;
      goto LABEL_24;
    }

    v13 = _newFreeListEntry(a2, a3);
    if (v13)
    {
      *v13 = v6;
      if (v7 <= a2)
      {
LABEL_21:
        *v8 = v13;
      }

      else
      {
        *v5 = v13;
      }

      v12 = *(a1 + 1112) + 1;
      goto LABEL_23;
    }
  }

  v20 = *__error();

  _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 2068, v20);
}

uint64_t _AdjustFileSize(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    if ((a3 + a2) <= *(a1 + 1032))
    {
      return 0;
    }

    else
    {
      result = 0;
      *(a1 + 1032) = a3 + a2;
    }
  }

  else
  {
    v5 = (*(*(a1 + 1120) + 64))(*(*(a1 + 1120) + 8), *(a1 + 1028), 0, 2);
    if (v5 == -1)
    {
      v7 = *MEMORY[0x277D85DF8];
      v8 = __error();
      v9 = strerror(*v8);
      fprintf(v7, "lseek: %s\n", v9);
      return 1;
    }

    else
    {
      v6 = v5;
      result = 0;
      *(a1 + 1032) = v6;
    }
  }

  return result;
}

uint64_t BOMStorageCopyFromBlock(uint64_t a1, unsigned int a2, void *a3)
{
  if (!a1 || !a2)
  {
    if (a1)
    {
      if (!a2)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlock: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 1035, *v9);
      if (!a2)
      {
LABEL_12:
        v4 = *__error();
        v5 = "BOMStorageCopyFromBlock: !bid";
        v6 = 1039;
        goto LABEL_13;
      }
    }

    return 1;
  }

  if (*(a1 + 1056) < a2)
  {
    v4 = *__error();
    v5 = "BOMStorageCopyFromBlock: bid > storage->blocks";
    v6 = 1047;
LABEL_13:
    _BOMExceptionHandlerCall(v5, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", v6, v4);
    return 1;
  }

  v7 = *(*(a1 + 1072) + 12 * a2 + 4);

  return BOMStorageCopyFromBlockRange(a1, a2, 0, v7, a3);
}

uint64_t BOMStorageCopyFromBlockRange(uint64_t a1, unsigned int a2, uint64_t a3, size_t __len, void *__dst)
{
  if (!a1 || !a2 || !__dst)
  {
    if (a1)
    {
      if (a2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlockRange: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 1066, *v12);
      if (a2)
      {
LABEL_8:
        if (!__dst)
        {
          goto LABEL_14;
        }

        return 1;
      }
    }

    v13 = __error();
    _BOMExceptionHandlerCall("BOMStorageCopyFromBlockRange: !bid", 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 1070, *v13);
    if (!__dst)
    {
LABEL_14:
      v8 = *__error();
      v9 = "BOMStorageCopyFromBlockRange: !data";
      v10 = 1074;
      goto LABEL_15;
    }

    return 1;
  }

  if (*(a1 + 1056) < a2)
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: bad block (bid > storage->blocks)";
    v10 = 1081;
LABEL_15:
    _BOMExceptionHandlerCall(v9, 0, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", v10, v8);
    return 1;
  }

  v11 = (*(a1 + 1072) + 12 * a2);
  if (*(v11 + 8))
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: reading from free block";
    v10 = 1087;
    goto LABEL_15;
  }

  v17 = *v11;
  v16 = v11[1];
  if ((v16 + v17) >> 32)
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: 32-bit overflow with block address+size";
    v10 = 1098;
    goto LABEL_15;
  }

  if (v16 + v17 > *(a1 + 1032))
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: block extends past end of storage";
    v10 = 1103;
    goto LABEL_15;
  }

  if (__len + a3 > v16)
  {
    v8 = *__error();
    v9 = "BOMStorageCopyRangeFromBlockRange: length extends beyond block size";
    v10 = 1110;
    goto LABEL_15;
  }

  if (v16)
  {
    if (!v17)
    {
      v8 = *__error();
      v9 = "BOMStorageCopyRangeFromBlockRange: bad block address";
      v10 = 1123;
      goto LABEL_15;
    }

    if (!*(v11 + 9))
    {
      if (*(a1 + 1052))
      {
        v19 = *(a1 + 1028);
        if (v19 != -1)
        {
          v20 = BOMStreamWithFile(v19, v17, v16, 0, (*(a1 + 1040) + v17));
          if (!v20)
          {
            v8 = *__error();
            v9 = "BOMStorageCopyRangeFromBlockRange: !stream";
            v10 = 1147;
            goto LABEL_15;
          }

          BOMStreamFree(v20);
          *(*(a1 + 1072) + 12 * a2 + 9) = 1;
        }
      }
    }

    memmove(__dst, (*(a1 + 1040) + a3 + v17), __len);
  }

  return 0;
}

void _FlushWriteCache(uint64_t a1)
{
  for (i = *(a1 + 1104); i; i = *(a1 + 1104))
  {
    *(a1 + 1104) = *i;
    _WriteAddress(a1, i[2], i[3]);
    free(i);
  }

  *(a1 + 1112) = 0;
}

uint64_t BOMStorageCompact(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a1 || !*(a1 + 1052) || *(a1 + 1028) == -1)
  {
    goto LABEL_30;
  }

  v2 = *(a1 + 1120);
  BOMStorageCommit(a1);
  __strlcpy_chk();
  __strlcpy_chk();
  v3 = strrchr(__s, 47);
  if (v3)
  {
    *v3 = 0;
  }

  else
  {
    __strlcpy_chk();
  }

  __strlcat_chk();
  if (!(*(v2 + 336))(*(v2 + 8), __s))
  {
    v13 = 1;
    fwrite("can't get temp file.\n", 0x15uLL, 1uLL, *MEMORY[0x277D85DF8]);
    goto LABEL_31;
  }

  v5 = BOMStorageNewWithOptionsAndSys(__s, v4, v2);
  if (!v5)
  {
LABEL_30:
    v13 = 1;
    goto LABEL_31;
  }

  v6 = v5;
  if (*(a1 + 1056))
  {
    v7 = 1;
    while (v7 == BOMStorageNewBlock(v6))
    {
      v8 = *(a1 + 1072) + 12 * v7;
      if (*(v8 + 8))
      {
        BOMStorageFreeBlock(v6, v7);
      }

      else
      {
        v9 = BOM_malloc(*(v8 + 4));
        BOMStorageCopyFromBlock(a1, v7, v9);
        BOMStorageCopyToBlock(v6, v7, v9, *(*(a1 + 1072) + 12 * v7 + 4));
        free(v9);
      }

      if (++v7 > *(a1 + 1056))
      {
        goto LABEL_16;
      }
    }

    fprintf(*MEMORY[0x277D85DF8], "unable to reserve block %d.\n");
    goto LABEL_30;
  }

LABEL_16:
  if (*(a1 + 1096))
  {
    v10 = *(a1 + 1100);
    *(v6 + 1100) = v10;
    if (v10)
    {
      v11 = (*(*(v6 + 1088) + 48))();
      v12 = v10;
      if (!v11)
      {
        v11 = *(v6 + 1032);
        v12 = v10;
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    *(v6 + 1096) = v11;
    _ExpandMapAddress(v6, v11 + v10);
    memmove((*(v6 + 1040) + *(v6 + 1096)), (*(a1 + 1040) + *(a1 + 1096)), v12);
    _AdjustFileSize(v6, v11, v10);
    if (*(v6 + 1028) != -1)
    {
      _AddToWriteCache(v6, v11, v10);
    }

    *(v6 + 1116) = 1;
  }

  BOMStorageCommit(v6);
  v14 = BOM_malloc(0x468uLL);
  if (!v14)
  {
    BOMStorageFree(v6);
    v20 = *MEMORY[0x277D85DF8];
    v21 = __error();
    strerror(*v21);
    fprintf(v20, "malloc: %s\n");
    goto LABEL_30;
  }

  v15 = v14;
  memcpy(v14, a1, 0x468uLL);
  BOMStorageFree(v15);
  if ((*(v2 + 264))(*(v2 + 8), __s, v25))
  {
    v16 = *MEMORY[0x277D85DF8];
    v17 = __error();
    v18 = strerror(*v17);
    fprintf(v16, "rename: %s\n", v18);
    BOMStorageFree(v6);
    v13 = 1;
    v19 = BOMStorageOpenWithSys(v25, 1, v2);
    memcpy(a1, v19, 0x468uLL);
    free(v19);
  }

  else
  {
    memcpy(a1, v6, 0x468uLL);
    free(v6);
    v13 = 0;
  }

LABEL_31:
  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

void BOMStorageFindActualFreeSpace(uint64_t a1)
{
  v8 = _newFreeListEntry(0, *(a1 + 1032));
  v2 = *(a1 + 1056);
  if (v2)
  {
    for (i = 1; i <= v2; ++i)
    {
      v4 = *(a1 + 1072) + 12 * i;
      if (!*(v4 + 8))
      {
        _ClearAddress(&v8, *v4, *(v4 + 4));
        v2 = *(a1 + 1056);
      }
    }
  }

  _ClearAddress(&v8, *(a1 + 1060), *(a1 + 1064));
  _ClearAddress(&v8, *(a1 + 1096), *(a1 + 1100));
  v5 = v8;
  if (v8)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      printf("Node %u:\n", v7);
      printf("\taddr = %u\n\tsize = %u\n", v5[2], v5[3]);
      v6 += v5[3];
      v5 = *v5;
      ++v7;
    }

    while (v5);
    if (v6)
    {
      printf("======\nTotal free bytes: %u\n", v6);
    }
  }
}

_DWORD *_newFreeListEntry(int a1, int a2)
{
  v4 = BOM_malloc(0x10uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0;
    v4[2] = a1;
    v4[3] = a2;
  }

  else
  {
    v6 = *MEMORY[0x277D85DF8];
    v7 = __error();
    v8 = strerror(*v7);
    fprintf(v6, "malloc: %s\n", v8);
  }

  return v5;
}

void _ClearAddress(void *a1, unsigned int a2, int a3)
{
  if (a2)
  {
    if (a3)
    {
      v3 = *a1;
      if (*a1)
      {
        v5 = 0;
        while (1)
        {
          v6 = v3;
          v7 = v3[2];
          if (v7 <= a2)
          {
            v8 = v3[3];
            v9 = v8 + v7;
            if (v8 + v7 > a2)
            {
              break;
            }
          }

          v3 = *v6;
          v5 = v6;
          if (!*v6)
          {
            return;
          }
        }

        if (v7 == a2)
        {
          v10 = v8 - a3;
          if (v10)
          {
            v6[2] = a2 + a3;
            v6[3] = v10;
          }

          else
          {
            if (!v5)
            {
              v5 = a1;
            }

            *v5 = *v6;

            free(v6);
          }
        }

        else
        {
          v11 = a3 + a2;
          v12 = v9 - (a3 + a2);
          if (v9 == v11)
          {
            v6[3] = v8 - a3;
          }

          else
          {
            v13 = _newFreeListEntry(v11, v12);
            if (v13)
            {
              *v13 = *v6;
              v6[3] = a2 - v6[2];
              *v6 = v13;
            }

            else
            {
              v14 = *__error();

              _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 1750, v14);
            }
          }
        }
      }
    }
  }
}

uint64_t _BOMStoragePrintDiagnostics(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "   # blocks : %d\n", *(result + 1056));
    fprintf(*v2, "   adm size : %d\n", *(v1 + 1064));
    fprintf(*v2, "   bt size  : %d\n", (8 * *(v1 + 1068)) | 4);
    fprintf(*v2, "   fl size  : %d\n", *(*(v1 + 1088) + 8));
    return fprintf(*v2, "   toc size : %d\n", *(v1 + 1100));
  }

  return result;
}

uint64_t BOMStorageDump(uint64_t a1, int a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!a1 || (v3 = *(a1 + 1096), !v3) || (v5 = *(a1 + 1100), !v5))
  {
    v10 = 1;
    goto LABEL_9;
  }

  v6 = BOMStreamWithAddress(*(a1 + 1040) + v3, v5, 0);
  if (!v6)
  {
    v10 = 2;
    goto LABEL_9;
  }

  v7 = v6;
  UInt32 = BOMStreamReadUInt32(v6);
  if (*(a1 + 1052))
  {
    if (*(a1 + 1116))
    {
      v9 = "read/write [dirty]";
    }

    else
    {
      v9 = "read/write";
    }
  }

  else
  {
    v9 = "readonly";
  }

  v13 = MEMORY[0x277D85E08];
  fprintf(*MEMORY[0x277D85E08], "Storage: open %s (%u blocks)\n", v9, *(a1 + 1056));
  fprintf(*v13, "    ToC: %u entries (%u bytes)\n", UInt32, *(a1 + 1100));
  if (!UInt32)
  {
    v10 = 0;
    goto LABEL_71;
  }

  v30 = 0;
  do
  {
    v14 = BOMStreamReadUInt32(v7);
    UInt8 = BOMStreamReadUInt8(v7);
    BOMStreamReadBuffer(v7, &__dst, UInt8);
    *(&__dst + UInt8) = 0;
    if (v14)
    {
      if (*(a1 + 1056) >= v14 && *(a1 + 1068) > v14)
      {
        v16 = *(a1 + 1072) + 12 * v14;
        if (*(v16 + 8) != 1)
        {
          v26 = *(v16 + 4);
        }
      }
    }

    v17 = *v13;
    if (a2)
    {
      fprintf(v17, "    Bid: 0x%08x (%u) '%s' (%lu bytes)");
    }

    else
    {
      fprintf(v17, "    Bid: '%s' (%lu bytes)");
    }

    if (__dst == 0x6F666E496D6F42 || (__dst == 1752457552 ? (v18 = WORD2(__dst) == 115) : (v18 = 0), v18 || __dst == 0x7865646E494C48 || (__dst == 1684949334 ? (v19 = *(&__dst + 3) == 7890276) : (v19 = 0), v19 || (__dst == 1702521171 ? (v20 = *(&__dst + 3) == 3421797) : (v20 = 0), v20))))
    {
      fwrite(" [BOM]\n", 7uLL, 1uLL, *v13);
    }

    else
    {
      if (__dst == 0x547463656A6F7250 && *(&__dst + 1) == 0x656C6261546761)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v13);
        v30 |= 0x10u;
        v27 = a2 | 0x210000;
        v28 = a1;
        p_dst = "ProjectTagTable";
      }

      else if (__dst == 0x546567616B636150 && *(&__dst + 1) == 0x656C6261546761)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v13);
        v30 |= 0x20u;
        v27 = a2 | 0x210000;
        v28 = a1;
        p_dst = "PackageTagTable";
      }

      else if (__dst == 0x5467615468746150 && *(&__dst + 5) == 0x656C6261546761)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v13);
        v30 |= 0x40u;
        v27 = a2 | 0x210000;
        v28 = a1;
        p_dst = "PathTagTable";
      }

      else if (__dst == 0x547463656A6F7250 && *(&__dst + 1) == 0x657254687461506FLL && v32 == 101)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v13);
        v30 |= 0x80u;
        v27 = a2 | 0x1310000;
        v28 = a1;
        p_dst = "ProjectToPathTree";
      }

      else
      {
        if ((v30 & 0x20) == 0)
        {
          fputc(10, *v13);
          goto LABEL_59;
        }

        fwrite(" [Package]\n", 0xBuLL, 1uLL, *v13);
        p_dst = &__dst;
        v27 = a2 | 0x230000;
        v28 = a1;
      }

      BOMStorageDumpTree(v28, p_dst, v27);
    }

LABEL_59:
    --UInt32;
  }

  while (UInt32);
  v10 = 0;
  if ((v30 & 0xF0) != 0 && (v30 & 0xF0) != 0xF0)
  {
    fprintf(*MEMORY[0x277D85DF8], "WARNING: file appears to be a corrupt Metabom! (found %04x expected %04x or %04x)\n", v30 & 0xF0, 240, 0);
    v10 = 3;
  }

LABEL_71:
  BOMStreamFree(v7);
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t _WriteAddress(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = BOMStreamWithFile(*(a1 + 1028), a2, a3, 1, (*(a1 + 1040) + a2));
  if (v3)
  {
    v4 = v3;
    BOMStreamFlush(v3);

    return BOMStreamFree(v4);
  }

  else
  {
    v6 = *__error();

    return _BOMExceptionHandlerCall("Unable to create write stream.", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMStorage.c", 2141, v6);
  }
}

uint64_t _buildKey(char *a1, char **a2)
{
  *a1 = 0;
  v9 = a2 + 1;
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    if ((v5 & 1) == 0)
    {
      if (v4 >= 0x3FF)
      {
        break;
      }

      *&a1[v4++] = 47;
    }

    if (strchr(v2, 47))
    {
      fprintf(*MEMORY[0x277D85DF8], "invalid key segment: '%s'\n", v2);
      return 1;
    }

    v4 += strlen(v2);
    if (v4 >= 0x400)
    {
      break;
    }

    strlcat(a1, v2, 0x400uLL);
    v5 = 0;
    v6 = v9++;
    v2 = *v6;
    if (!*v6)
    {
      if (v4 != 1023)
      {
        return 0;
      }

      break;
    }
  }

  v7 = 1;
  fwrite("key too long\n", 0xDuLL, 1uLL, *MEMORY[0x277D85DF8]);
  return v7;
}

uint64_t BOMCKTreeCount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v26 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = &a9;
  if (!_buildKey(__s, &a9))
  {
    LODWORD(v11) = strlen(__s);
    v12 = (v11 + 1);
    v13 = BOMTreeIteratorNew(a1, __s, v12, &v22);
    if (v13)
    {
      v14 = v13;
      if (!v22)
      {
        if (!BOMTreeIteratorKey(v13) || (__strlcpy_chk(), strlen(__s1) == v11))
        {
          v10 = 0;
          goto LABEL_9;
        }

        if (v11)
        {
          if (__strlcat_chk() >= 0x400)
          {
            v11 = v11;
          }

          else
          {
            v11 = v12;
          }
        }

        else
        {
          v11 = 0;
        }

        v17 = strchr(&__s1[v11], 47);
        if (v17)
        {
          v17[1] = 0;
        }

        v18 = strlen(__s1);
        BOMTreeIteratorNext(v14);
        if (!BOMTreeIteratorIsAtEnd(v14))
        {
          v19 = v18;
          v10 = 1;
          do
          {
            v20 = BOMTreeIteratorKey(v14);
            if (strncmp(__s, v20, v11))
            {
              break;
            }

            if (strncmp(__s1, v20, v19))
            {
              __strlcpy_chk();
              v21 = strchr(&__s1[v11], 47);
              if (v21)
              {
                v21[1] = 0;
              }

              v19 = strlen(__s1);
              v10 = (v10 + 1);
            }

            BOMTreeIteratorNext(v14);
          }

          while (!BOMTreeIteratorIsAtEnd(v14));
          goto LABEL_9;
        }
      }

      v10 = 1;
LABEL_9:
      BOMTreeIteratorFree(v14);
      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

char *BOMCKTreeGet(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &a9;
  if (!_buildKey(__s, &a9))
  {
    v12 = strlen(__s);
    v13 = (v12 + 1);
    v14 = BOMTreeIteratorNew(a1, __s, v13, &v24);
    if (v14)
    {
      v15 = v14;
      if (v24)
      {
        v11 = BOMTreeIteratorValue(v14);
      }

      else
      {
        if (BOMTreeIteratorKey(v14))
        {
          __strlcpy_chk();
          if (v12)
          {
            __strlcat_chk();
          }

          else
          {
            v13 = 0;
          }

          v11 = &BOMCKTreeGet_next[v13];
          v16 = strchr(&BOMCKTreeGet_next[v13], 47);
          if (v16)
          {
            v16[1] = 0;
          }

          if (!a2)
          {
LABEL_21:
            v21 = strchr(&BOMCKTreeGet_next[v13], 47);
            if (v21)
            {
              *v21 = 0;
            }

            goto LABEL_24;
          }

          v17 = 0;
          v18 = strlen(BOMCKTreeGet_next);
          while (!BOMTreeIteratorIsAtEnd(v15))
          {
            v19 = BOMTreeIteratorKey(v15);
            if (strncmp(__s, v19, v13))
            {
              break;
            }

            if (strncmp(BOMCKTreeGet_next, v19, v18))
            {
              __strlcpy_chk();
              v20 = strchr(&BOMCKTreeGet_next[v13], 47);
              if (v20)
              {
                v20[1] = 0;
              }

              v18 = strlen(BOMCKTreeGet_next);
              ++v17;
            }

            BOMTreeIteratorNext(v15);
            if (v17 == a2)
            {
              goto LABEL_21;
            }
          }
        }

        v11 = 0;
      }

LABEL_24:
      BOMTreeIteratorFree(v15);
      goto LABEL_25;
    }
  }

  v11 = 0;
LABEL_25:
  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

_DWORD *platform_toolbox_new(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0xD0uLL, 0x1080040013202F3uLL);
  if (result)
  {
    *result = 1885499256;
    result[50] = 2020565616;
  }

  return result;
}

void platform_toolbox_free(void *a1)
{
  if (a1 && *a1 == 1885499256 && *(a1 + 50) == 2020565616)
  {
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    free(a1);
  }
}

void *platform_malloc(uint64_t a1, size_t size)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return 0;
  }

  v4 = *(a1 + 4);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    *__error() = v4;
    *(a1 + 4) = 0;
    return 0;
  }

  *(a1 + 8) = v5 - 1;
LABEL_7:
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 16);

    return v6(a1, v7, size);
  }

LABEL_11:

  return malloc_type_malloc(size, 0x299D2A80uLL);
}

void platform_free(uint64_t a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return;
  }

  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      *__error() = v4;
      *(a1 + 4) = 0;
      return;
    }

    *(a1 + 8) = v5 - 1;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(a1 + 16);

    v6(a1, v7, a2);
  }

  else
  {
LABEL_11:

    free(a2);
  }
}

void *platform_calloc(uint64_t a1, size_t count, size_t size)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return 0;
  }

  v6 = *(a1 + 4);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    *__error() = v6;
    *(a1 + 4) = 0;
    return 0;
  }

  *(a1 + 8) = v7 - 1;
LABEL_7:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 16);

    return v8(a1, v9, count, size);
  }

LABEL_11:

  return malloc_type_calloc(count, size, 0x49EA653FuLL);
}

void *platform_valloc(uint64_t a1, size_t size)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return 0;
  }

  v4 = *(a1 + 4);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    *__error() = v4;
    *(a1 + 4) = 0;
    return 0;
  }

  *(a1 + 8) = v5 - 1;
LABEL_7:
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = *(a1 + 16);

    return v6(a1, v7, size);
  }

LABEL_11:

  return malloc_type_valloc(size, 0x4F07AE8BuLL);
}

void *platform_realloc(uint64_t a1, void *ptr, size_t size)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return 0;
  }

  v6 = *(a1 + 4);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    *__error() = v6;
    *(a1 + 4) = 0;
    return 0;
  }

  *(a1 + 8) = v7 - 1;
LABEL_7:
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = *(a1 + 16);

    return v8(a1, v9, ptr, size);
  }

LABEL_11:

  return malloc_type_realloc(ptr, size, 0xEB00CD20uLL);
}

void *platform_memset(uint64_t a1, void *__b, uint64_t __c, size_t __len)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return 0;
  }

  v8 = *(a1 + 4);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    *__error() = v8;
    *(a1 + 4) = 0;
    return 0;
  }

  *(a1 + 8) = v9 - 1;
LABEL_7:
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = *(a1 + 16);

    return v10(a1, v11, __b, __c, __len);
  }

LABEL_11:

  return memset(__b, __c, __len);
}

void *platform_memcpy(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return 0;
  }

  v8 = *(a1 + 4);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    *__error() = v8;
    *(a1 + 4) = 0;
    return 0;
  }

  *(a1 + 8) = v9 - 1;
LABEL_7:
  v10 = *(a1 + 72);
  if (v10)
  {
    v11 = *(a1 + 16);

    return v10(a1, v11, __dst, __src, __n);
  }

LABEL_11:

  return memcpy(__dst, __src, __n);
}

uint64_t platform_memcmp(uint64_t a1, void *__s1, void *__s2, size_t __n)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 4);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    *__error() = v8;
    *(a1 + 4) = 0;
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v9 - 1;
LABEL_7:
  v10 = *(a1 + 80);
  if (v10)
  {
    v11 = *(a1 + 16);

    return v10(a1, v11, __s1, __s2, __n);
  }

LABEL_11:

  return memcmp(__s1, __s2, __n);
}

size_t platform_strlen(uint64_t a1, char *__s)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return -1;
  }

  v4 = *(a1 + 4);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    *__error() = v4;
    *(a1 + 4) = 0;
    return -1;
  }

  *(a1 + 8) = v5 - 1;
LABEL_7:
  v6 = *(a1 + 88);
  if (v6)
  {
    v7 = *(a1 + 16);

    return v6(a1, v7, __s);
  }

LABEL_11:

  return strlen(__s);
}

size_t platform_strnlen(uint64_t a1, char *__s1, size_t __n)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return -1;
  }

  v6 = *(a1 + 4);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(a1 + 8);
  if (!v7)
  {
    *__error() = v6;
    *(a1 + 4) = 0;
    return -1;
  }

  *(a1 + 8) = v7 - 1;
LABEL_7:
  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = *(a1 + 16);

    return v8(a1, v9, __s1, __n);
  }

LABEL_11:

  return strnlen(__s1, __n);
}

uint64_t platform_strncmp(uint64_t a1, char *__s1, char *__s2, size_t __n)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 4);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    *__error() = v8;
    *(a1 + 4) = 0;
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v9 - 1;
LABEL_7:
  v10 = *(a1 + 104);
  if (v10)
  {
    v11 = *(a1 + 16);

    return v10(a1, v11, __s1, __s2, __n);
  }

LABEL_11:

  return strncmp(__s1, __s2, __n);
}

char *platform_strdup(uint64_t a1, char *__s1)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return 0;
  }

  v4 = *(a1 + 4);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    *__error() = v4;
    *(a1 + 4) = 0;
    return 0;
  }

  *(a1 + 8) = v5 - 1;
LABEL_7:
  v6 = *(a1 + 120);
  if (v6)
  {
    v7 = *(a1 + 16);

    return v6(a1, v7, __s1);
  }

LABEL_11:

  return strdup(__s1);
}

uint64_t platform_strtoq(uint64_t a1, char *__str, char **__endptr, uint64_t __base)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return -1;
  }

  v8 = *(a1 + 4);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    *__error() = v8;
    *(a1 + 4) = 0;
    return -1;
  }

  *(a1 + 8) = v9 - 1;
LABEL_7:
  v10 = *(a1 + 136);
  if (v10)
  {
    v11 = *(a1 + 16);

    return v10(a1, v11, __str, __endptr, __base);
  }

LABEL_11:

  return strtoq(__str, __endptr, __base);
}

ssize_t platform_read(uint64_t a1, uint64_t a2, void *a3, size_t a4)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return -1;
  }

  v8 = *(a1 + 4);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    *__error() = v8;
    *(a1 + 4) = 0;
    return -1;
  }

  *(a1 + 8) = v9 - 1;
LABEL_7:
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a1 + 16);

    return v10(a1, v11, a2, a3, a4);
  }

LABEL_11:

  return read(a2, a3, a4);
}

uint64_t platform_close(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 4);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    *__error() = v4;
    *(a1 + 4) = 0;
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v5 - 1;
LABEL_7:
  v6 = *(a1 + 176);
  if (v6)
  {
    v7 = *(a1 + 16);

    return v6(a1, v7, a2);
  }

LABEL_11:

  return close(a2);
}

time_t platform_mktime(uint64_t a1, tm *a2)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  if (*a1 != 1885499256 || *(a1 + 200) != 2020565616)
  {
    return -1;
  }

  v4 = *(a1 + 4);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    *__error() = v4;
    *(a1 + 4) = 0;
    return -1;
  }

  *(a1 + 8) = v5 - 1;
LABEL_7:
  v6 = *(a1 + 184);
  if (v6)
  {
    v7 = *(a1 + 16);

    return v6(a1, v7, a2);
  }

LABEL_11:

  return mktime(a2);
}

void *BOMTreeNew(uint64_t a1, unsigned int a2)
{
  if (a1 && a2)
  {
    return _BOMTreeNew(a1, 0, a2, 0, 0);
  }

  else
  {
    return 0;
  }
}

void *_BOMTreeNew(uint64_t a1, const char *a2, unsigned int a3, int a4, char a5)
{
  result = _newBOMTree(a1, a2);
  if (result)
  {
    v11 = result;
    *(result + 4) = a3;
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = 4096;
    }

    *(result + 78) = v12;
    v13 = v12 - 16;
    *(result + 79) = v13 >> 3;
    *(result + 80) = (v13 >> 3) + 1;
    *(result + 81) = v13 >> 4;
    *(result + 294) = a5;
    v14 = _NewPage(result, 0);
    *(v11 + 24) = v14;
    *(v14 + 2) |= 1u;
    *(v11 + 292) = 1;
    BOMTreeFree(v11);

    return _BOMTreeOpen(a1, a2, a3, 1);
  }

  return result;
}

void *BOMTreeNewWithName(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = BOMStorageNewNamedBlock(a1, a2);
  if (!v4)
  {
    return 0;
  }

  return _BOMTreeNew(a1, a2, v4, 0, 0);
}

void *BOMTreeNewWithOptions(uint64_t a1, unsigned int a2, const char *a3, unsigned int a4, char a5)
{
  if (!a1)
  {
    return 0;
  }

  v6 = a4;
  v8 = a2;
  if (!a2 && !a3)
  {
    return 0;
  }

  if (a4)
  {
    if (a4 < 0x30)
    {
      return 0;
    }

    if (!a2)
    {
LABEL_9:
      v8 = BOMStorageNewNamedBlock(a1, a3);
      if (v8)
      {
        goto LABEL_10;
      }

      return 0;
    }
  }

  else
  {
    v6 = 4096;
    if (!a2)
    {
      goto LABEL_9;
    }
  }

LABEL_10:

  return _BOMTreeNew(a1, a3, v8, v6, a5);
}

uint64_t BOMTreeOpen(uint64_t a1, unsigned int a2, char a3)
{
  if (a1 && a2)
  {
    return _BOMTreeOpen(a1, 0, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t _BOMTreeOpen(uint64_t a1, const char *a2, unsigned int a3, char a4)
{
  v7 = a1;
  v18 = *MEMORY[0x277D85DE8];
  v8 = _newBOMTree(a1, a2);
  v9 = v8;
  if (v8)
  {
    *v8 = v7;
    *(v8 + 4) = a3;
    if (!a2)
    {
      snprintf(__str, 0x100uLL, "<Tree %d>", a3);
      v7 = *v9;
      a3 = *(v9 + 16);
    }

    v10 = BOMStreamWithBlockID(v7, a3, 0, 0);
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = v10;
    if (BOMStreamReadUInt32(v10) == 1953654117)
    {
      if (BOMStreamReadUInt32(v11) == 1)
      {
        UInt32 = BOMStreamReadUInt32(v11);
        *(v9 + 312) = BOMStreamReadUInt32(v11);
        *(v9 + 20) = BOMStreamReadUInt32(v11);
        *(v9 + 294) = BOMStreamReadUInt8(v11);
        BOMStreamFree(v11);
        v13 = *(v9 + 312) - 16;
        *(v9 + 316) = v13 >> 3;
        *(v9 + 320) = (v13 >> 3) + 1;
        *(v9 + 324) = v13 >> 4;
        v14 = _NewPage(v9, UInt32);
        *(v9 + 24) = v14;
        if (v14 && !_ReadPage(v9, v14))
        {
          *(v9 + 293) = a4;
          goto LABEL_14;
        }

LABEL_13:
        BOMTreeFree(v9);
        v9 = 0;
        goto LABEL_14;
      }

      fprintf(*MEMORY[0x277D85DF8], "Tree '%s' has an unknown version: 0x%X\n");
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "%s is not a Tree\n");
    }

    BOMStreamFree(v11);
    goto LABEL_13;
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t BOMTreeOpenWithName(uint64_t a1, const char *a2, char a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  NamedBlock = BOMStorageGetNamedBlock(a1, a2);
  if (!NamedBlock)
  {
    return 0;
  }

  return _BOMTreeOpen(a1, a2, NamedBlock, a3);
}

uint64_t BOMTreeFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 292) && BOMTreeCommit(result))
    {
      return 1;
    }

    else
    {
      for (i = 32; i != 288; i += 8)
      {
        v3 = *(v1 + i);
        if (v3)
        {
          if ((v3[2] & 2) != 0)
          {
            _WritePage(v1, *(v1 + i));
          }

          _FreePage(v3);
          *(v1 + i) = 0;
        }
      }

      _FreePage(*(v1 + 24));
      *(v1 + 24) = 0;
      v4 = *(v1 + 8);
      if (v4)
      {
        free(v4);
        *(v1 + 8) = 0;
      }

      v5 = *(v1 + 304);
      if (v5)
      {
        CFRelease(v5);
        *(v1 + 304) = 0;
      }

      v6 = *(v1 + 344);
      if (v6)
      {
        free(v6);
        *(v1 + 344) = 0;
      }

      v7 = *(v1 + 328);
      if (v7)
      {
        free(v7);
      }

      free(v1);
      return 0;
    }
  }

  return result;
}

uint64_t BOMTreeCommit(uint64_t a1)
{
  if (!a1 || !*(a1 + 292))
  {
    return 0;
  }

  _SyncCache(a1);
  _WritePage(a1, *(a1 + 24));
  v2 = 1;
  v3 = BOMStreamWithBlockID(*a1, *(a1 + 16), 0x15uLL, 1);
  if (v3)
  {
    v4 = v3;
    BOMStreamWriteUInt32(v3, 0x74726565u);
    BOMStreamWriteUInt32(v4, 1u);
    BOMStreamWriteUInt32(v4, **(a1 + 24));
    BOMStreamWriteUInt32(v4, *(a1 + 312));
    BOMStreamWriteUInt32(v4, *(a1 + 20));
    BOMStreamWriteUInt8(v4, *(a1 + 294));
    if (!BOMStreamFree(v4))
    {
      v2 = 0;
      *(a1 + 292) = 0;
    }
  }

  return v2;
}

void _FreePage(void *a1)
{
  if (a1)
  {
    *a1 = -1;
    *(a1 + 1) = -1;
    free(*(a1 + 3));
    *(a1 + 3) = 0;
    free(*(a1 + 4));

    free(a1);
  }
}

uint64_t BOMTreeRemoveAndFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = BOMTreeIteratorNew(result, 0, 0, 0);
    if (v3)
    {
      for (i = v3; !BOMTreeIteratorIsAtEnd(i); BOMTreeIteratorNext(i))
      {
        v5 = BOMTreeIteratorKey(i);
        v6 = BOMTreeIteratorKeySize(i);
        BOMTreeRemoveValue(v1, v5, v6);
      }

      BOMTreeIteratorFree(i);
      BOMStorageFreeBlock(v2, **(v1 + 24));
      _FreePage(*(v1 + 24));
      *(v1 + 24) = 0;
      v7 = *(v1 + 8);
      if (v7)
      {
        BOMStorageFreeNamedBlock(v2, v7);
      }

      else
      {
        BOMStorageFreeBlock(v2, *(v1 + 16));
      }

      v8 = *(v1 + 8);
      if (v8)
      {
        free(v8);
        *(v1 + 8) = 0;
      }

      v9 = *(v1 + 304);
      if (v9)
      {
        CFRelease(v9);
      }

      free(v1);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *BOMTreeIteratorNew(uint64_t a1, const void *a2, size_t a3, BOOL *a4)
{
  v8 = BOM_malloczero(0x48uLL);
  v9 = v8;
  if (v8)
  {
    *v8 = a1;
    BOMTreeIteratorSet(v8, a2, a3, a4);
    v10 = *(a1 + 304);
    if (v10)
    {
      v11 = BOMCFArrayMaxRange(v10);
      v13 = v12;
      v17.location = v11;
      v17.length = v13;
      if (CFArrayContainsValue(*(a1 + 304), v17, v9))
      {
LABEL_8:
        v9[3] = BOM_malloc(v9[4]);
        v9[6] = BOM_malloc(v9[7]);
        return v9;
      }

      Mutable = *(a1 + 304);
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
      *(a1 + 304) = Mutable;
      if (!Mutable)
      {
        v15 = __error();
        _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMTree.c", 2460, *v15);
        goto LABEL_8;
      }
    }

    CFArrayAppendValue(Mutable, v9);
    goto LABEL_8;
  }

  return v9;
}

uint64_t BOMTreeIteratorIsAtEnd(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a1 + 67))
  {
    return 1;
  }

  if (!*(a1 + 65))
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      if (*v3 == *(a1 + 16))
      {
        return 0;
      }
    }
  }

  if (_revalidateIterator(a1))
  {
    return *(a1 + 67);
  }

  result = 1;
  *(a1 + 67) = 1;
  return result;
}

uint64_t BOMTreeIteratorKey(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 67))
    {
      return 0;
    }

    if ((*(result + 65) || (v2 = *(result + 8)) == 0 || *v2 != *(result + 16)) && !_revalidateIterator(result))
    {
      result = 0;
      *(v1 + 67) = 1;
      return result;
    }

    if (*(*v1 + 294))
    {
      return *(*(*(v1 + 8) + 24) + 4 * *(v1 + 20));
    }

    if (!*(v1 + 40))
    {
      v3 = BOMStorageSizeOfBlock(**v1, *(*(*(v1 + 8) + 24) + 4 * *(v1 + 20)));
      v4 = *(v1 + 24);
      v5 = *(v1 + 32);
      if (v3 > v5)
      {
        v6 = v3;
        if (v4)
        {
          free(*(v1 + 24));
          *(v1 + 24) = 0;
          v5 = *(v1 + 32);
        }

        if (v6 <= 2 * v5)
        {
          v7 = 2 * v5;
        }

        else
        {
          v7 = v6;
        }

        *(v1 + 32) = v7;
        v4 = BOM_malloc(v7);
        *(v1 + 24) = v4;
      }

      if (BOMStorageCopyFromBlock(**v1, *(*(*(v1 + 8) + 24) + 4 * *(v1 + 20)), v4))
      {
        return 0;
      }

      *(v1 + 40) = 1;
    }

    return *(v1 + 24);
  }

  return result;
}

uint64_t BOMTreeIteratorKeySize(uint64_t a1)
{
  if (!a1 || *(a1 + 67))
  {
    return 0;
  }

  if ((*(a1 + 65) || (v5 = *(a1 + 8)) == 0 || *v5 != *(a1 + 16)) && !_revalidateIterator(a1))
  {
    *(a1 + 67) = 1;
    return 0;
  }

  if (*(*a1 + 294))
  {
    return 0;
  }

  v2 = **a1;
  v3 = *(*(*(a1 + 8) + 24) + 4 * *(a1 + 20));

  return BOMStorageSizeOfBlock(v2, v3);
}

uint64_t BOMTreeRemoveValue(uint64_t a1, const void *a2, size_t a3)
{
  v3 = 1;
  if (a1 && a2)
  {
    if (a3 || *(a1 + 294))
    {
      if (*(a1 + 293))
      {
        v6 = *(a1 + 24);
        v3 = _findRemove(a1, &v6, 0, 0, 0, 0, a2, a3, 0);
        if (!v3)
        {
          --*(a1 + 20);
          *(a1 + 292) = 1;
        }
      }

      else
      {
        v3 = 1;
        fwrite("tree is read-only\n", 0x12uLL, 1uLL, *MEMORY[0x277D85DF8]);
      }
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

uint64_t BOMTreeIteratorNext(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 67))
    {
      if (!*(result + 65) && (v5 = *(result + 8)) != 0 && *v5 == *(result + 16) || (result = _revalidateIterator(result), result))
      {
        if (*(v1 + 66))
        {
          v2 = *(v1 + 20) + 1;
          *(v1 + 20) = v2;
          v3 = *(v1 + 8);
          if (v2 >= *(v3 + 16))
          {
            *(v1 + 20) = 0;
            v4 = *(v3 + 8);
            if (!v4 || (*(v1 + 16) = v4, result = _findPage(*v1, v4), (*(v1 + 8) = result) == 0))
            {
              *(v1 + 67) = 1;
            }
          }
        }

        else
        {
          *(v1 + 66) = 1;
        }

        *(v1 + 40) = 0;
        *(v1 + 64) = 0;
      }

      else
      {
        *(v1 + 67) = 1;
      }
    }
  }

  return result;
}

void BOMTreeIteratorFree(char *a1)
{
  if (a1)
  {
    *(a1 + 65) = 1;
    a1[67] = 1;
    v2 = *(a1 + 3);
    if (v2)
    {
      free(v2);
      *(a1 + 3) = 0;
    }

    a1[40] = 0;
    v3 = *(a1 + 6);
    if (v3)
    {
      free(v3);
      *(a1 + 6) = 0;
    }

    a1[64] = 0;
    *(a1 + 4) = -1;
    *(a1 + 1) = 0;
    v4 = *a1;
    v5 = *(*a1 + 304);
    if (v5)
    {
      v6 = BOMCFArrayMaxRange(v5);
      v8 = v7;
      v11.location = v6;
      v11.length = v8;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v4 + 304), v11, a1);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(*(v4 + 304), FirstIndexOfValue);
        if (!CFArrayGetCount(*(v4 + 304)))
        {
          CFRelease(*(v4 + 304));
          *(v4 + 304) = 0;
        }
      }
    }

    free(a1);
  }
}

uint64_t _SyncCache(uint64_t result)
{
  if (result)
  {
    v1 = result;
    for (i = 32; i != 288; i += 8)
    {
      v3 = *(v1 + i);
      if (v3)
      {
        if ((*(v3 + 4) & 2) != 0)
        {
          result = _WritePage(v1, v3);
        }
      }
    }
  }

  return result;
}

uint64_t _WritePage(uint64_t a1, uint64_t a2)
{
  result = BOMStreamWithBlockID(*a1, *a2, *(a1 + 312), 1);
  if (result)
  {
    v4 = result;
    BOMStreamWriteUInt16(result, *(a2 + 4) & 1);
    BOMStreamWriteUInt16(v4, *(a2 + 16));
    BOMStreamWriteUInt32(v4, *(a2 + 8));
    BOMStreamWriteUInt32(v4, *(a2 + 12));
    if (*(a2 + 16))
    {
      v5 = 0;
      do
      {
        BOMStreamWriteUInt32(v4, *(*(a2 + 32) + 4 * v5));
        BOMStreamWriteUInt32(v4, *(*(a2 + 24) + 4 * v5++));
        v6 = *(a2 + 16);
      }

      while (v5 < v6);
    }

    else
    {
      v6 = 0;
    }

    BOMStreamWriteUInt32(v4, *(*(a2 + 32) + 4 * v6));
    result = BOMStreamFree(v4);
    *(a2 + 4) &= ~2u;
  }

  return result;
}

uint64_t BOMTreeStorage(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t BOMTreeSetCompareFunc(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 296) = a2;
  }

  return result;
}

uint64_t BOMTreeCount(uint64_t result)
{
  if (result)
  {
    return *(result + 20);
  }

  return result;
}

uint64_t BOMTreeSetValue(void *a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v5 = 1;
  if (!a1 || !a2)
  {
    return v5;
  }

  if (!a3 && !*(a1 + 294))
  {
    return 1;
  }

  if (!*(a1 + 293))
  {
    v5 = 1;
    fwrite("tree is read-only\n", 0x12uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return v5;
  }

  PagesForKey = _FindPagesForKey(a1, a2, a3);
  if (!PagesForKey)
  {
    return 1;
  }

  v12 = PagesForKey;
  if (*(a1 + 294))
  {
    v13 = a2;
    goto LABEL_9;
  }

  v15 = BOMStackPeek(PagesForKey);
  if (!v15)
  {
    goto LABEL_23;
  }

  v16 = v15;
  IndexForKey = _findIndexForKey(a1, v15, a2, a3, &v22);
  if (!v22)
  {
    v19 = BOMStorageNewBlock(*a1);
    if (!v19)
    {
      goto LABEL_23;
    }

    v13 = v19;
    if (BOMStorageSetBlockData(*a1, v19, a2, a3))
    {
      goto LABEL_23;
    }

LABEL_9:
    v14 = BOMStorageNewBlock(*a1);
    if (!v14)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  v18 = v16[4];
  v13 = *(v16[3] + 4 * IndexForKey);
  v14 = *(v18 + 4 * IndexForKey);
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!BOMStorageSetBlockData(*a1, v14, a4, a5) && !_PageSetValue(a1, v12, a2, a3, v13, v14))
  {
    if (!v22)
    {
      ++*(a1 + 5);
    }

    v5 = 0;
    *(a1 + 292) = 1;
    goto LABEL_25;
  }

LABEL_23:
  v5 = 1;
LABEL_25:
  while (!BOMStackIsEmpty(v12))
  {
    v20 = BOMStackPop(v12);
    *(v20 + 2) &= ~8u;
  }

  BOMStackFree(v12);
  return v5;
}

void **_FindPagesForKey(uint64_t a1, const void *a2, size_t a3)
{
  v6 = BOMStackNew();
  if (!_findPagesForKey(a1, v6, a2, a3))
  {
    BOMStackFree(v6);
    return 0;
  }

  return v6;
}

uint64_t _findIndexForKey(uint64_t a1, uint64_t a2, const void *a3, size_t a4, BOOL *a5)
{
  if (*(a2 + 16))
  {
    v9 = 0;
    v10 = *(a2 + 16) - 1;
    while (1)
    {
      v11 = v9 + ((v10 - v9) >> 1);
      v12 = *(*(a2 + 24) + 4 * v11);
      if (!v12)
      {
        break;
      }

      if (*(a1 + 294))
      {
        goto LABEL_13;
      }

      v13 = BOMStorageSizeOfBlock(*a1, v12);
      v14 = v13;
      v15 = *(a1 + 352);
      v12 = *(a1 + 344);
      if (v13 > v15)
      {
        v16 = (2 * v15);
        if (v13 > v16)
        {
          LODWORD(v16) = v13;
        }

        *(a1 + 352) = v16;
        if (v12)
        {
          free(v12);
          *(a1 + 344) = 0;
          LODWORD(v16) = *(a1 + 352);
        }

        v12 = BOM_malloc(v16);
        *(a1 + 344) = v12;
      }

      BOMStorageCopyFromBlock(*a1, *(*(a2 + 24) + 4 * v11), v12);
LABEL_14:
      v17 = *(a1 + 296);
      if (v17)
      {
        v18 = v17(a3, a4, v12, v14);
      }

      else
      {
        if (*(a1 + 294))
        {
          if (v12 <= a3)
          {
            v19 = 0;
          }

          else
          {
            v19 = -1;
          }

          if (v12 < a3)
          {
            v18 = 1;
          }

          else
          {
            v18 = v19;
          }

          goto LABEL_23;
        }

        if (v12 == a3)
        {
          if (!a5)
          {
            return v11;
          }

          v18 = 0;
          v20 = 1;
          goto LABEL_25;
        }

        if (a3)
        {
          if (!v12)
          {
            v18 = 1;
            goto LABEL_23;
          }

          if (a4 >= v14)
          {
            v21 = v14;
          }

          else
          {
            v21 = a4;
          }

          v18 = memcmp(a3, v12, v21);
          if (v18)
          {
            goto LABEL_23;
          }

          if (v14 <= a4)
          {
            v18 = v14 < a4;
            goto LABEL_23;
          }
        }

        v18 = -1;
      }

LABEL_23:
      if (!a5)
      {
        goto LABEL_26;
      }

      v20 = v18 == 0;
LABEL_25:
      *a5 = v20;
LABEL_26:
      if (v10 == v9)
      {
        if (v18 <= 0)
        {
          return v11;
        }

        else
        {
          return (v11 + 1);
        }
      }

      if (v18 >= 1)
      {
        if (v11 == v10)
        {
          v9 += (v10 - v9) >> 1;
        }

        else
        {
          v9 = v11 + 1;
        }
      }

      else
      {
        if ((v18 & 0x80000000) == 0)
        {
          return v11;
        }

        v10 = v11 - ((v10 - v9) > 1);
      }
    }

    v12 = 0;
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v11 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  return v11;
}

uint64_t _PageSetValue(uint64_t a1, uint64_t *a2, const void *a3, size_t a4, int a5, int a6)
{
  v47 = 0;
  v6 = 1;
  if (a5)
  {
    if (a6)
    {
      v13 = BOMStackPop(a2);
      if (v13)
      {
        v14 = v13;
        v15 = (*(v13 + 2) & 1) == 0;
        _invalidateIteratorsForPageID(a1, *v13);
        IndexForKey = _findIndexForKey(a1, v14, a3, a4, &v47);
        if (v47)
        {
          v17 = *(v14 + 16);
        }

        else
        {
          v18 = *(v14 + 24);
          if (*(v18 + 4 * IndexForKey))
          {
            if (*(a1 + 295))
            {
              *(a1 + 295) = 0;
            }

            v19 = *(v14 + 16);
            v20 = v19 - IndexForKey;
            if (v19 != IndexForKey)
            {
              v21 = *(v14 + 32);
              v22 = v19 + v15;
              v23 = *(v14 + 16);
              do
              {
                *(v18 + 4 * v23) = *(v18 + 4 * (v23 - 1));
                *(v21 + 4 * v22) = *(v21 + 4 * (v22 - 1));
                --v23;
                --v22;
                --v20;
              }

              while (v20);
            }
          }

          else
          {
            LOWORD(v19) = *(v14 + 16);
          }

          *(v18 + 4 * IndexForKey) = a5;
          v17 = v19 + 1;
          *(v14 + 16) = v19 + 1;
        }

        *(*(v14 + 32) + 4 * (IndexForKey + v15)) = a6;
        *(v14 + 4) |= 2u;
        if (*(a1 + 316) >= v17)
        {
          v6 = 0;
        }

        else
        {
          v24 = _NewPage(a1, 0);
          if (v24)
          {
            v25 = v24;
            *(v24 + 2) = *(v24 + 2) & 0xFFFC | *(v14 + 4) & 1 | 2;
            if ((*(v14 + 4) & 1) == 0 || (v26 = *v24, v27 = *v14, *(v24 + 2) = *(v14 + 8), *(v14 + 8) = v26, *(v24 + 3) = v27, (v28 = *(v24 + 2)) == 0))
            {
LABEL_22:
              if (*(a1 + 295))
              {
                LODWORD(v30) = *(a1 + 316) - 1;
                v31 = *(v14 + 16);
              }

              else
              {
                v31 = *(v14 + 16);
                LODWORD(v30) = v31 >> 1;
              }

              if (v30 + 1 >= v31)
              {
                v34 = *(v25 + 4);
                v37 = *(v25 + 8);
                v30 = v30;
                v38 = v31;
                v32 = *(v14 + 24);
                v33 = *(v14 + 32);
              }

              else
              {
                v32 = *(v14 + 24);
                v33 = *(v14 + 32);
                v35 = *(v25 + 3);
                v34 = *(v25 + 4);
                v30 = v30;
                v36 = v30 + 1;
                v37 = *(v25 + 8);
                do
                {
                  *(v35 + 4 * v37) = *(v32 + 4 * v36);
                  *(v34 + 4 * v37++) = *(v33 + 4 * v36);
                  *(v32 + 4 * v36) = 0;
                  *(v25 + 8) = v37;
                  *(v33 + 4 * v36++) = 0;
                  v38 = *(v14 + 16);
                }

                while (v36 < v38);
                LOWORD(v31) = *(v14 + 16);
              }

              *(v34 + 4 * v37) = *(v33 + 4 * v38);
              *(v33 + 4 * v38) = 0;
              *(v14 + 16) = v31 - v37;
              v39 = *(v32 + 4 * v30);
              if ((*(v14 + 4) & 1) == 0)
              {
                *(v32 + 4 * v30) = 0;
                *(v14 + 16) = v31 - v37 - 1;
              }

              _addPageToCache(a1, v25);
              if (BOMStackIsEmpty(a2))
              {
                v40 = _NewPage(a1, 0);
                v6 = 1;
                if (v40)
                {
                  v41 = v40;
                  v42 = v40[4];
                  *v40[3] = v39;
                  *v42 = *v14;
                  v42[1] = *v25;
                  *(v40 + 8) = 1;
                  *(v40 + 2) |= 2u;
                  _addPageToCache(a1, v14);
                  v6 = 0;
                  *(a1 + 24) = v41;
                }
              }

              else
              {
                v6 = _PageSetValue(a1, a2, a3, a4, v39, *v25);
              }

              goto LABEL_41;
            }

            Page = _findPage(a1, v28);
            if (Page)
            {
              if (*(Page + 3) == *v14)
              {
                *(Page + 3) = *v25;
                *(Page + 2) |= 2u;
                goto LABEL_22;
              }

              v43 = *__error();
              v44 = "internal btree error";
              v6 = 1;
              v45 = 1998;
            }

            else
            {
              v43 = *__error();
              v44 = "missing tree page";
              v6 = 1;
              v45 = 1994;
            }

            _BOMExceptionHandlerCall(v44, 1u, "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMTree.c", v45, v43);
          }

          else
          {
            v6 = 1;
          }
        }

LABEL_41:
        *(v14 + 4) &= ~8u;
      }
    }
  }

  return v6;
}

uint64_t BOMTreeGetValueSize(uint64_t a1, const void *a2, size_t a3, uint64_t *a4)
{
  result = 1;
  if (a1 && a2 && a4 && (a3 || *(a1 + 294)))
  {
    PagesForKey = _findPagesForKey(a1, 0, a2, a3);
    if (PagesForKey && (v10 = PagesForKey, v13 = 0, IndexForKey = _findIndexForKey(a1, PagesForKey, a2, a3, &v13), v13))
    {
      v12 = BOMStorageSizeOfBlock(*a1, *(*(v10 + 32) + 4 * IndexForKey));
      result = 0;
      *a4 = v12;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t BOMTreeGetValue(uint64_t a1, const void *a2, size_t a3)
{
  result = 0;
  v13 = 0;
  if (a1 && a2)
  {
    if (!a3 && !*(a1 + 294))
    {
      return 0;
    }

    result = _findPagesForKey(a1, 0, a2, a3);
    if (!result)
    {
      return result;
    }

    v7 = result;
    IndexForKey = _findIndexForKey(a1, result, a2, a3, &v13);
    if (!v13)
    {
      return 0;
    }

    v9 = IndexForKey;
    result = BOMStorageSizeOfBlock(*a1, *(*(v7 + 32) + 4 * IndexForKey));
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = *(a1 + 328);
    if (v11)
    {
      if (result <= *(a1 + 336))
      {
        goto LABEL_16;
      }

      free(*(a1 + 328));
      *(a1 + 328) = 0;
      v12 = (2 * *(a1 + 336));
      if (v10 <= v12)
      {
        result = v12;
      }

      else
      {
        result = v10;
      }

      *(a1 + 336) = result;
    }

    else
    {
      *(a1 + 336) = result;
      result = result;
    }

    v11 = BOM_malloc(result);
    *(a1 + 328) = v11;
LABEL_16:
    if (!BOMStorageCopyFromBlock(*a1, *(*(v7 + 32) + 4 * v9), v11))
    {
      return *(a1 + 328);
    }

    return 0;
  }

  return result;
}

uint64_t _findRemove(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, size_t a8, char *a9)
{
  v13 = a2;
  v15 = a9;
  v77 = 0;
  v16 = *a2;
  v76 = 0;
  v75 = 0;
  if (!a9)
  {
    v15 = &v75;
  }

  v74 = v15;
  IndexForKey = _findIndexForKey(a1, v16, a7, a8, &v77);
  v18 = IndexForKey;
  *(v16 + 20) = IndexForKey;
  if (*(v16 + 4))
  {
    if (!v77)
    {
      return 1;
    }

    goto LABEL_43;
  }

  if (IndexForKey)
  {
    Page = _findPage(a1, *(*(v16 + 32) + 4 * (IndexForKey - 1)));
    v20 = *(Page + 2);
    if ((v20 & 8) == 0)
    {
      v69 = v16;
LABEL_12:
      v70 = 0;
      *(Page + 2) = v20 | 8;
      goto LABEL_16;
    }

    v70 = 1;
    v69 = v16;
  }

  else if (a3)
  {
    Page = _findPage(a1, *(*(a3 + 32) + 4 * *(a3 + 16)));
    v20 = *(Page + 2);
    if ((v20 & 8) == 0)
    {
      v69 = a5;
      goto LABEL_12;
    }

    v70 = 1;
    v69 = a5;
  }

  else
  {
    v69 = 0;
    Page = 0;
    v70 = 1;
  }

LABEL_16:
  v71 = a4;
  if (v18 == *(v16 + 16))
  {
    if (a4)
    {
      a4 = _findPage(a1, **(a4 + 32));
      v22 = *(a4 + 4);
      if ((v22 & 8) == 0)
      {
        v23 = a6;
LABEL_22:
        v68 = 0;
        *(a4 + 4) = v22 | 8;
        goto LABEL_26;
      }

      v68 = 1;
      v23 = a6;
    }

    else
    {
      v23 = 0;
      v68 = 1;
    }
  }

  else
  {
    a4 = _findPage(a1, *(*(v16 + 32) + 4 * (v18 + 1)));
    v22 = *(a4 + 4);
    if ((v22 & 8) == 0)
    {
      v23 = v16;
      goto LABEL_22;
    }

    v68 = 1;
    v23 = v16;
  }

LABEL_26:
  v66 = v13;
  v24 = _findPage(a1, *(*(v16 + 32) + 4 * v18));
  v76 = v24;
  if (!v24)
  {
    v64 = __error();
    _BOMFatalException("BOMTree in invalid state - nextNode is NULL!\n", "/Library/Caches/com.apple.xbs/Sources/Bom/Storage/BOMTree.c", 1604, *v64);
  }

  v25 = *(v24 + 2);
  if ((v25 & 8) == 0)
  {
    *(v24 + 2) = v25 | 8;
  }

  if (a3)
  {
    *(a3 + 4) &= ~4u;
  }

  if (v71)
  {
    *(v71 + 4) &= ~4u;
  }

  *(v24 + 2) &= ~4u;
  result = _findRemove(a1, &v76, Page, a4, v69, v23, a7, a8, v74);
  if ((v70 & 1) == 0)
  {
    *(Page + 2) &= ~8u;
  }

  if ((v68 & 1) == 0)
  {
    *(a4 + 4) &= ~8u;
  }

  if ((v25 & 8) == 0 && v76)
  {
    *(v76 + 2) &= ~8u;
  }

  if (!result)
  {
    a4 = v71;
    v13 = v66;
    if ((*(v16 + 4) & 1) == 0 || !v77)
    {
      if (!*v74)
      {
        return 0;
      }

      goto LABEL_44;
    }

LABEL_43:
    _invalidateIteratorsForPageID(a1, *v16);
LABEL_44:
    v26 = *(v16 + 16);
    v27 = *(v16 + 24);
    v28 = v26 - v18;
    if (v26 == v18)
    {
      v29 = 0;
      v30 = 0;
      *(v27 + 4 * (v18 - 1)) = 0;
      v31 = *(v16 + 32);
    }

    else
    {
      v29 = *(v27 + 4 * v18);
      v31 = *(v16 + 32);
      v30 = *(v31 + 4 * v18);
      v32 = v18;
      do
      {
        *(v27 + 4 * v32) = *(v27 + 4 * (v32 + 1));
        *(v31 + 4 * v32) = *(v31 + 4 * (v32 + 1));
        ++v32;
        --v28;
      }

      while (v28);
    }

    *(v31 + 4 * v26) = 0;
    *(v16 + 16) = v26 - 1;
    if (*(v16 + 4))
    {
      if (*(a1 + 294))
      {
        v33 = 1;
      }

      else
      {
        v33 = v29 == 0;
      }

      if (!v33)
      {
        BOMStorageFreeBlock(*a1, v29);
      }

      if (v30)
      {
        BOMStorageFreeBlock(*a1, v30);
      }
    }

    v34 = *(v16 + 4);
    *(v16 + 4) = v34 | 2;
    v35 = *(v16 + 16);
    if (v34)
    {
      v36 = a6;
      if (a6 && v18 == v35)
      {
        *(*(a6 + 24) + 4 * *(a6 + 20)) = *(*(v16 + 24) + 4 * (v18 - 1));
        *(a6 + 4) |= 2u;
        v35 = *(v16 + 16);
      }
    }

    else
    {
      v36 = a6;
    }

    v37 = *(a1 + 324);
    if (v37 <= v35)
    {
      result = 0;
      *v74 = 0;
      return result;
    }

    v38 = *(a1 + 24);
    if (v16 == v38)
    {
      if ((*(v38 + 4) & 1) == 0 && !*(v38 + 16))
      {
        v46 = **(v38 + 32);
        if (v46)
        {
          v47 = _findPage(a1, v46);
          v47[2] &= ~8u;
          _removePageFromCache(a1, v47);
          *(a1 + 24) = v47;
          BOMStorageFreeBlock(*a1, *v38);
          _FreePage(v38);
        }
      }
    }

    else if (a3 | a4)
    {
      v39 = *v13;
      if (a3)
      {
        v40 = a3;
      }

      else
      {
        v40 = a4;
      }

      v41 = a5;
      if (!a3)
      {
        v41 = v36;
      }

      v42 = a3;
      if (a4)
      {
        v43 = a3 != 0;
      }

      else
      {
        v43 = 0;
      }

      v65 = v42;
      if (v43)
      {
        v44 = *(v42 + 16);
        v45 = *(a4 + 16);
        if (v44 >= v45)
        {
          if (v44 <= v45)
          {
            v63 = *(*(v36 + 32) + 4 * *(v36 + 20));
            if (*v39 == v63)
            {
              v40 = a4;
            }

            else
            {
              v40 = v42;
            }

            if (*v39 != v63)
            {
              v36 = a5;
            }
          }

          else
          {
            v40 = v42;
            v36 = a5;
          }
        }

        else
        {
          v40 = a4;
        }
      }

      else
      {
        v36 = v41;
      }

      v67 = v13;
      v48 = *(v40 + 16);
      v49 = a4;
      v33 = v40 == a4;
      v50 = v40 == a4;
      if (v33)
      {
        v51 = *v13;
      }

      else
      {
        v51 = v40;
      }

      if (v39[2])
      {
        v52 = v36;
        _invalidateIteratorsForPageID(a1, *v40);
        v36 = v52;
      }

      v53 = *(v36 + 20) - (v40 != v49);
      if ((v51[2] & 1) == 0)
      {
        v54 = v51[8];
        *(*(v51 + 3) + 4 * v54) = *(*(v36 + 24) + 4 * v53);
        v51[8] = v54 + 1;
        v51[2] |= 2u;
      }

      if (v37 < v48)
      {
        v55 = a1;
        v56 = v36;
        _shiftKeysAndValues(v55, v39, v40, v50);
        v57 = *(*(v51 + 3) + 4 * v51[8] - 4);
        v58 = *(v56 + 24);
        if (*(v58 + 4 * v53) != v57)
        {
          *(v58 + 4 * v53) = v57;
          *(v56 + 4) |= 2u;
        }

        v59 = 0;
        if ((v51[2] & 1) == 0)
        {
          v60 = v51[8] - 1;
          v51[8] = v60;
          *(*(v51 + 3) + 4 * v60) = 0;
          v51[2] |= 2u;
        }

        v62 = v67;
        goto LABEL_113;
      }

      v61 = v49;
      _shiftKeysAndValues(a1, v40, v39, v40 != v49);
      if (v43)
      {
        v62 = v67;
        *(v65 + 8) = *v61;
        *(v61 + 12) = *v65;
        *(v65 + 4) |= 2u;
      }

      else
      {
        v62 = v67;
        if (v65)
        {
          *(v65 + 8) = 0;
          v61 = v65;
        }

        else
        {
          if (!v61)
          {
LABEL_112:
            v39[2] &= ~8u;
            _removePageFromCache(a1, v39);
            BOMStorageFreeBlock(*a1, *v39);
            _FreePage(v39);
            v39 = 0;
            v59 = 1;
LABEL_113:
            result = 0;
            *v74 = v59;
            *v62 = v39;
            return result;
          }

          *(v61 + 12) = 0;
        }
      }

      *(v61 + 4) |= 2u;
      goto LABEL_112;
    }

    return 0;
  }

  return result;
}