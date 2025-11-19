unsigned int *_CSChunkRefsForToken(uint64_t a1, sqlite3_int64 a2, size_t *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v6 = _CSPrepareStatement(a1, @"SELECT clt_count, clt_chunkRowIDs FROM CSStorageChunkListTable WHERE clt_rowid = ?", "SELECT clt_count, clt_chunkRowIDs FROM CSStorageChunkListTable WHERE clt_rowid = ?");
  v7 = v6;
  if (!v6 || sqlite3_bind_int64(v6[2], 1, a2))
  {
    goto LABEL_3;
  }

  v11 = CS_sqlite3_step(v7);
  if (v11 != 100)
  {
    v21 = v11;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkRefsForToken_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v22 = *MEMORY[0x277CBECE8];
      v23 = sqlite3_errmsg(*(a1 + 24));
      v24 = CFStringCreateWithFormat(v22, 0, @"sqlite3_step returned: %d %s, for listToken:%llu\n", v21, v23, a2);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkRefsForToken_cold_2();
      }

      v25 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v29 = v24;
        _os_log_impl(&dword_243431000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v24)
      {
        CFRelease(v24);
      }
    }

    goto LABEL_3;
  }

  v12 = sqlite3_column_int64(v7[2], 0);
  if (!v12 || (v13 = v12, (v14 = malloc_type_calloc(v12, 8uLL, 0x100004000313F17uLL)) == 0))
  {
LABEL_3:
    _CSFinishPreparedStatement(v7);
    v8 = 0;
    goto LABEL_4;
  }

  v15 = v14;
  v16 = sqlite3_column_blob(v7[2], 1);
  memcpy(v15, v16, 8 * v13);
  v17 = malloc_type_calloc(v13, 0x10uLL, 0x1000040D9A13B51uLL);
  v8 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = v17 + 2;
    while (1)
    {
      v20 = _CSChunkSizeForToken(a1, *(v15 + v18));
      if (!v20)
      {
        break;
      }

      *v19 = v20;
      *(v19 - 1) = *(v15 + v18++);
      v19 += 4;
      if (v13 == v18)
      {
        *a3 = v13;
        goto LABEL_13;
      }
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkRefsForToken_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v26 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"_CSChunkSizeForToken failed for file token %llu, chunk token:%llu (count:%llu)\n", a2, *(v15 + v18), v13);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkRefsForToken_cold_4();
      }

      v27 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v29 = v26;
        _os_log_impl(&dword_243431000, v27, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v26)
      {
        CFRelease(v26);
      }
    }

    _CSFinishPreparedStatement(v7);
    free(v8);
    v8 = 0;
  }

  else
  {
LABEL_13:
    _CSFinishPreparedStatement(v7);
  }

  free(v15);
LABEL_4:
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

CFStringRef _CSChunkSignatureForToken(uint64_t a1, sqlite3_int64 a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = _CSPrepareStatement(a1, @"SELECT cid FROM CSChunkTable WHERE ct_rowid = ?", "SELECT cid FROM CSChunkTable WHERE ct_rowid = ?");
  v6 = v5;
  if (!v5 || sqlite3_bind_int64(v5[2], 1, a2))
  {
    goto LABEL_3;
  }

  if (CS_sqlite3_step(v6) == 100)
  {
    v10 = sqlite3_column_blob(v6[2], 0);
    v11 = CKSchemeAndSignatureSize(v10);
    v7 = v11;
    if (a3)
    {
      memcpy(a3, v10, v11);
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkSignatureForToken_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"no signature for token %llu\n", a2);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkSignatureForToken_cold_2();
    }

    v12 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v7)
    {
      CFRelease(v7);
LABEL_3:
      v7 = 0;
    }
  }

  _CSFinishPreparedStatement(v6);
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL _CSReleaseChunkForSignature(uint64_t a1, _BYTE *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = _CSPrepareStatement(a1, @"SELECT refCount, dataLen, ft_rowid, ct_rowid FROM CSChunkTable WHERE cid = ? AND location = ?", "SELECT refCount, dataLen, ft_rowid, ct_rowid FROM CSChunkTable WHERE cid = ? AND location = ?");
  if (!v4)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSReleaseChunkForSignature_cold_17();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null sqlite3_stmt (sel_stmt)\n");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSReleaseChunkForSignature_cold_18();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 138543362;
    v52 = v13;
    goto LABEL_21;
  }

  v5 = CKSchemeAndSignatureSize(a2);
  v6 = sqlite3_bind_blob(v4[2], 1, a2, v5, 0);
  if (v6 || (v6 = sqlite3_bind_int(v4[2], 2, 115), v6))
  {
    v7 = v6;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSReleaseChunkForSignature_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v8 = *MEMORY[0x277CBECE8];
      v9 = sqlite3_errmsg(*(a1 + 24));
      v10 = CFStringCreateWithFormat(v8, 0, @"sqlite3_bind failed: %s (%d)\n", v9, v7);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSReleaseChunkForSignature_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = v10;
        _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }

    goto LABEL_13;
  }

  v17 = CS_sqlite3_step(v4);
  if (v17 != 100)
  {
    v18 = v17;
    if (v17 == 101)
    {
LABEL_13:
      v12 = 1;
      goto LABEL_25;
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSReleaseChunkForSignature_cold_15();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v19 = *MEMORY[0x277CBECE8];
      v20 = sqlite3_errmsg(*(a1 + 24));
      v13 = CFStringCreateWithFormat(v19, 0, @"sqlite3_step failed: %s (%d)\n", v20, v18);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSReleaseChunkForSignature_cold_16();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 138543362;
      v52 = v13;
LABEL_21:
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_22:
      if (v13)
      {
        CFRelease(v13);
      }
    }

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  v21 = sqlite3_column_int64(v4[2], 0);
  v22 = sqlite3_column_int(v4[2], 1);
  v23 = sqlite3_column_int64(v4[2], 2);
  v24 = sqlite3_column_int64(v4[2], 3);
  if (v21)
  {
    v25 = v21 - 1;
    if (v25)
    {
      v26 = _CSPrepareStatement(a1, @"UPDATE CSChunkTable SET refCount = ? WHERE ct_rowid = ?", "UPDATE CSChunkTable SET refCount = ? WHERE ct_rowid = ?");
      if (v26)
      {
        v27 = v26;
        sqlite3_bind_int64(v26[2], 1, v25);
        sqlite3_bind_int64(v27[2], 2, v24);
        v28 = CS_sqlite3_step(v27);
        if (v28 != 101)
        {
          v29 = v28;
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSReleaseChunkForSignature_cold_3();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v30 = *MEMORY[0x277CBECE8];
            v31 = sqlite3_errmsg(*(a1 + 24));
            v32 = CFStringCreateWithFormat(v30, 0, @"sqlite3_step returned: %d %s\n", v29, v31);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSReleaseChunkForSignature_cold_4();
            }

            v33 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v52 = v32;
              _os_log_impl(&dword_243431000, v33, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
            }

            if (v32)
            {
              CFRelease(v32);
            }
          }
        }

        _CSFinishPreparedStatement(v27);
        goto LABEL_13;
      }

      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSReleaseChunkForSignature_cold_5();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null sqlite3_stmt (stmt)\n");
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSReleaseChunkForSignature_cold_6();
        }

        v14 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_22;
        }

        *buf = 138543362;
        v52 = v13;
        goto LABEL_21;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSReleaseChunkForSignature_cold_7();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v34 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"refCount already zero for:");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSReleaseChunkForSignature_cold_8();
      }

      v35 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = v34;
        _os_log_impl(&dword_243431000, v35, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v34)
      {
        CFRelease(v34);
      }
    }

    printSignature(a2);
  }

  v36 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "UPDATE CSChunkTable SET refCount = 0 WHERE ct_rowid = %lld", v24);
  v12 = v36 == 0;
  if (v36)
  {
    v37 = v36;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSReleaseChunkForSignature_cold_9();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v38 = *MEMORY[0x277CBECE8];
      v39 = sqlite3_errmsg(*(a1 + 24));
      v40 = CFStringCreateWithFormat(v38, 0, @"CSsql_do returned: %d %s\n", v37, v39);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSReleaseChunkForSignature_cold_10();
      }

      v41 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = v40;
        _os_log_impl(&dword_243431000, v41, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v40)
      {
        CFRelease(v40);
      }
    }
  }

  v50 = 0;
  if (CSsql_get64_safe(a1, 1, &v50, "SELECT ft_pspace FROM CSStorageFileTable WHERE ft_rowid = %lld", v23))
  {
    v42 = v50 + v22;
    if (!__CFADD__(v50, v22))
    {
      v50 += v22;
      v45 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "UPDATE CSStorageFileTable SET ft_pspace = %lld WHERE ft_rowid = %lld", v42, v23);
      if (!v45)
      {
        goto LABEL_25;
      }

      v46 = v45;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSReleaseChunkForSignature_cold_11();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v47 = *MEMORY[0x277CBECE8];
      v48 = sqlite3_errmsg(*(a1 + 24));
      v43 = CFStringCreateWithFormat(v47, 0, @"CSsql_do returned: %d %s\n", v46, v48);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSReleaseChunkForSignature_cold_12();
      }

      v49 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v52 = v43;
        _os_log_impl(&dword_243431000, v49, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      v12 = 0;
      goto LABEL_88;
    }
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSReleaseChunkForSignature_cold_13();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v43 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"unable to update purgable space for SF rowID:%llu\n", v23);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSReleaseChunkForSignature_cold_14();
    }

    v44 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v52 = v43;
      _os_log_impl(&dword_243431000, v44, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

LABEL_88:
    if (v43)
    {
      CFRelease(v43);
    }
  }

LABEL_25:
  _CSFinishPreparedStatement(v4);
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

CFStringRef _CSChunkSizeForToken(uint64_t a1, sqlite3_int64 a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = _CSPrepareStatement(a1, @"SELECT cid, dataLen FROM CSChunkTable WHERE ct_rowid = ? AND location = ?", "SELECT cid, dataLen FROM CSChunkTable WHERE ct_rowid = ? AND location = ?");
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (sqlite3_bind_int64(v4[2], 1, a2))
  {
    goto LABEL_4;
  }

  if (sqlite3_bind_int(v5[2], 2, 115))
  {
    goto LABEL_4;
  }

  v9 = CS_sqlite3_step(v5);
  if (v9 == 101)
  {
    goto LABEL_4;
  }

  v10 = v9;
  if (v9 == 100)
  {
    v11 = sqlite3_column_blob(v5[2], 0);
    v12 = CKSchemeAndSignatureSize(v11);
    v13 = sqlite3_column_int64(v5[2], 1);
    if (v13 - v12 >= 4)
    {
      v14 = v13 - v12 - 4;
    }

    else
    {
      v14 = 0;
    }

    if (v13 >= v12)
    {
      v6 = v14;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_5;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSChunkSizeForToken_cold_1();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v15 = *MEMORY[0x277CBECE8];
  v16 = sqlite3_errmsg(*(a1 + 24));
  v6 = CFStringCreateWithFormat(v15, 0, @"sqlite3_step returned: %d %s, for _CSChunkSizeForToken\n", v10, v16);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSChunkSizeForToken_cold_2();
  }

  v17 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (v6)
  {
    CFRelease(v6);
    goto LABEL_4;
  }

LABEL_5:
  _CSFinishPreparedStatement(v5);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

CFStringRef _CSChunkIsInvalid(uint64_t a1, sqlite3_int64 a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = _CSPrepareStatement(a1, @"SELECT CSChunkTable.ct_rowid, CSStorageFileTable.ft_rowid, CSStorageFileTable.ft_status FROM CSStorageFileTable INNER JOIN CSChunkTable on CSChunkTable.ft_rowid = CSStorageFileTable.ft_rowid WHERE CSChunkTable.ct_rowid = ? ", "SELECT CSChunkTable.ct_rowid, CSStorageFileTable.ft_rowid, CSStorageFileTable.ft_status FROM CSStorageFileTable INNER JOIN CSChunkTable on CSChunkTable.ft_rowid = CSStorageFileTable.ft_rowid WHERE CSChunkTable.ct_rowid = ? ");
  v5 = v4;
  if (!v4)
  {
    goto LABEL_3;
  }

  if (sqlite3_bind_int64(v4[2], 1, a2))
  {
    goto LABEL_3;
  }

  v9 = CS_sqlite3_step(v5);
  if (v9 == 101)
  {
    goto LABEL_3;
  }

  v10 = v9;
  if (v9 == 100)
  {
    v6 = (sqlite3_column_int(v5[2], 2) == 109);
    goto LABEL_4;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSChunkIsInvalid_cold_1();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_3;
  }

  v11 = *MEMORY[0x277CBECE8];
  v12 = sqlite3_errmsg(*(a1 + 24));
  v6 = CFStringCreateWithFormat(v11, 0, @"sqlite3_step returned in %s: %s (%d)", "_CSChunkIsInvalid", v12, v10);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSChunkIsInvalid_cold_2();
  }

  v13 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (v6)
  {
    CFRelease(v6);
LABEL_3:
    v6 = 0;
  }

LABEL_4:
  _CSFinishPreparedStatement(v5);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

sqlite3_int64 _CSTokenForChunkSignature(uint64_t a1, _BYTE *a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = _CSPrepareStatement(a1, @"SELECT ct_rowid FROM CSChunkTable WHERE cid = ? AND location = ?", "SELECT ct_rowid FROM CSChunkTable WHERE cid = ? AND location = ?");
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = CKSchemeAndSignatureSize(a2);
  if (sqlite3_bind_blob(v6[2], 1, a2, v7, 0) || sqlite3_bind_int(v6[2], 2, a3))
  {
    goto LABEL_17;
  }

  v8 = CS_sqlite3_step(v6);
  v9 = v8;
  if ((v8 - 102) <= 0xFFFFFFFD)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSTokenForChunkSignature_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v10 = *MEMORY[0x277CBECE8];
      v11 = sqlite3_errmsg(*(a1 + 24));
      v12 = CFStringCreateWithFormat(v10, 0, @"sqlite3_step returned: %d %s, for signature:", v9, v11);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSTokenForChunkSignature_cold_2();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v12;
        _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    printSignature(a2);
    goto LABEL_17;
  }

  if (v8 != 100)
  {
LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  v14 = sqlite3_column_int64(v6[2], 0);
LABEL_18:
  _CSFinishPreparedStatement(v6);
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

sqlite3_int64 _CSAddChunk(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 17) & 1) == 0)
  {
    insert_rowid = _CSTokenForChunkSignature(a1, a2, 115);
    if (insert_rowid)
    {
      goto LABEL_30;
    }

    v7 = _CSPrepareStatement(a1, @"INSERT INTO CSChunkTable (cid, ft_rowid, offset, dataLen, refCount, timestamp, location) VALUES (?, ?, ?, ?, ?, ?, ?)", "INSERT INTO CSChunkTable (cid, ft_rowid, offset, dataLen, refCount, timestamp, location) VALUES (?, ?, ?, ?, ?, ?, ?)");
    if (!v7)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSAddChunk_cold_3();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null sqlite3_stmt\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSAddChunk_cold_4();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 138543362;
      v20 = v12;
      goto LABEL_25;
    }

    v8 = CKSchemeAndSignatureSize(a2);
    v9 = 1;
    sqlite3_bind_blob(v7[2], 1, a2, v8, 0);
    sqlite3_bind_int64(v7[2], 2, *(a3 + 12));
    sqlite3_bind_int64(v7[2], 3, *(a3 + 24));
    sqlite3_bind_int(v7[2], 5, *(a3 + 40));
    v10 = *(a3 + 52);
    if (v10 != 115)
    {
      if (v10 != 101)
      {
LABEL_9:
        sqlite3_bind_int64(v7[2], 7, *(a3 + 44));
        sqlite3_bind_int(v7[2], 8, *(a3 + 52));
        v11 = CS_sqlite3_step(v7);
        if (v11 == 101)
        {
          insert_rowid = sqlite3_last_insert_rowid(*(a1 + 24));
LABEL_29:
          _CSFinishPreparedStatement(v7);
          goto LABEL_30;
        }

        v14 = v11;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSAddChunk_cold_1();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
LABEL_28:
          insert_rowid = 0;
          goto LABEL_29;
        }

        v15 = *MEMORY[0x277CBECE8];
        v16 = sqlite3_errmsg(*(a1 + 24));
        v12 = CFStringCreateWithFormat(v15, 0, @"sqlite3_step returned: %d %s\n", v14, v16);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSAddChunk_cold_2();
        }

        v13 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
LABEL_26:
          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_28;
        }

        *buf = 138543362;
        v20 = v12;
LABEL_25:
        _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        goto LABEL_26;
      }

      v9 = 0;
    }

    sqlite3_bind_int(v7[2], 6, v9);
    goto LABEL_9;
  }

  insert_rowid = 0;
LABEL_30:
  v17 = *MEMORY[0x277D85DE8];
  return insert_rowid;
}

uint64_t _CSChunkForToken(uint64_t a1, void *a2, sqlite3_int64 a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = _CSPrepareStatement(a1, @"SELECT * FROM CSChunkTable WHERE ct_rowid = ?", "SELECT * FROM CSChunkTable WHERE ct_rowid = ?");
  v7 = v6;
  if (!v6)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkForToken_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null sqlite3_stmt\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkForToken_cold_4();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v18 = 138543362;
        v19 = v12;
        _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "%{public}@", &v18, 0xCu);
      }

      if (!v12)
      {
        v9 = 0;
        goto LABEL_28;
      }

      CFRelease(v12);
    }

    goto LABEL_15;
  }

  sqlite3_bind_int64(v6[2], 1, a3);
  if (CS_sqlite3_step(v7) != 100)
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v8 = sqlite3_column_blob(v7[2], 1);
  v9 = CSCreateStoredChunk(*v8);
  if (!v9)
  {
LABEL_16:
    v12 = 0;
    goto LABEL_28;
  }

  v10 = CKSchemeAndSignatureSize(v8);
  v9[2] = a3;
  memcpy(v9 + 7, v8, v10);
  v11 = sqlite3_column_int64(v7[2], 3);
  v9[4] = sqlite3_column_int64(v7[2], 4);
  *(v9 + 10) = sqlite3_column_int(v7[2], 5);
  *(v9 + 13) = sqlite3_column_int(v7[2], 8);
  *(v9 + 44) = sqlite3_column_int64(v7[2], 7);
  if (*(v9 + 13) == 115)
  {
    v9[3] = v10 + v9[4] + 4;
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSChunkForToken_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v14 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"not a stored chunk");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSChunkForToken_cold_2();
      }

      v15 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v18 = 138543362;
        v19 = v14;
        _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", &v18, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  *(v9 + 3) = v11;
  *(v9 + 4) = _CSStorageFileInode(a1, v11, 0);
  *v9 = *(a1 + 128);
  v12 = 1;
LABEL_28:
  _CSFinishPreparedStatement(v7);
  *a2 = v9;
  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

const __CFString *_CSStorageFileInode(uint64_t a1, sqlite3_int64 a2, char a3)
{
  v31 = *MEMORY[0x277D85DE8];
  memset(&v27, 0, sizeof(v27));
  bzero(v30, 0x400uLL);
  if (__CSCreateStoragePath(a1, a2, 0, v30, 0x400uLL))
  {
    if (!stat(v30, &v27))
    {
      st_ino = v27.st_ino;
      goto LABEL_49;
    }

    if ((a3 & 1) == 0)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStorageFileInode_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v6 = *MEMORY[0x277CBECE8];
        v7 = __error();
        v8 = strerror(*v7);
        v9 = CFStringCreateWithFormat(v6, 0, @"Attempting first aid in %s after stat failed for %s: %s\n", "_CSStorageFileInode", v30, v8);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStorageFileInode_cold_4();
        }

        v10 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v29 = v9;
          _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v9)
        {
          CFRelease(v9);
        }
      }

      CSAttemptAutomaticFirstAidForStorageFile(a1, a2);
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSStorageFileInode_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v11 = *MEMORY[0x277CBECE8];
      v12 = __error();
      v13 = strerror(*v12);
      v14 = CFStringCreateWithFormat(v11, 0, @"stat failed for path: %s : %s", v30, v13);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStorageFileInode_cold_2();
      }

      v15 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v29 = v14;
        _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  v16 = _CSPrepareStatement(a1, @"SELECT ft_inode FROM CSStorageFileTable WHERE ft_rowid = ?", "SELECT ft_inode FROM CSStorageFileTable WHERE ft_rowid = ?");
  if (v16)
  {
    v17 = v16;
    sqlite3_bind_int64(v16[2], 1, a2);
    v18 = CS_sqlite3_step(v17);
    if (v18 != 101)
    {
      v19 = v18;
      if (v18 == 100)
      {
        st_ino = sqlite3_column_int64(v17[2], 0);
LABEL_48:
        _CSFinishPreparedStatement(v17);
        goto LABEL_49;
      }

      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSStorageFileInode_cold_5();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v22 = *MEMORY[0x277CBECE8];
        v23 = sqlite3_errmsg(*(a1 + 24));
        st_ino = CFStringCreateWithFormat(v22, 0, @"sqlite3_step returned: %d %s\n", v19, v23);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSStorageFileInode_cold_6();
        }

        v24 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v29 = st_ino;
          _os_log_impl(&dword_243431000, v24, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (!st_ino)
        {
          goto LABEL_48;
        }

        CFRelease(st_ino);
      }
    }

    st_ino = 0;
    goto LABEL_48;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSStorageFileInode_cold_7();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_36;
  }

  st_ino = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null sqlite3_stmt\n");
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSStorageFileInode_cold_8();
  }

  v21 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v29 = st_ino;
    _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (st_ino)
  {
    CFRelease(st_ino);
LABEL_36:
    st_ino = 0;
  }

LABEL_49:
  v25 = *MEMORY[0x277D85DE8];
  return st_ino;
}

uint64_t _CSRetainChunkForRowID(uint64_t a1, sqlite3_int64 a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = _CSPrepareStatement(a1, @"SELECT refCount, dataLen, ft_rowid FROM CSChunkTable WHERE ct_rowid = ?", "SELECT refCount, dataLen, ft_rowid FROM CSChunkTable WHERE ct_rowid = ?");
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = sqlite3_bind_int64(v4[2], 1, a2);
  if (v6)
  {
    v7 = v6;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRetainChunkForRowID_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v8 = *MEMORY[0x277CBECE8];
    v9 = sqlite3_errmsg(*(a1 + 24));
    v10 = CFStringCreateWithFormat(v8, 0, @"sqlite3_bind_int64 failed for row id %lld: %d %s", a2, v7, v9);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRetainChunkForRowID_cold_2();
    }

    v11 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v35 = v10;
LABEL_10:
      _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v14 = CS_sqlite3_step(v5);
    if (v14 == 101)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRetainChunkForRowID_cold_3();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Attempted to retain row ID %llu that did not exist\n", a2);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRetainChunkForRowID_cold_4();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v35 = v10;
        goto LABEL_10;
      }
    }

    else
    {
      v15 = v14;
      if (v14 == 100)
      {
        v16 = sqlite3_column_int64(v5[2], 0);
        if (v16 || (v17 = sqlite3_column_int64(v5[2], 1), v18 = sqlite3_column_int(v5[2], 2), v19 = CSsql_get64(a1, 1, "SELECT ft_pspace FROM CSStorageFileTable WHERE ft_rowid = %lld", v17), v19 < v18) || !CSsql_corruption_checking_do_0(a1, *(a1 + 24), "UPDATE CSStorageFileTable SET ft_pspace = %lld WHERE ft_rowid = %lld", &v19[-v18], v17))
        {
          _CSFinishPreparedStatement(v5);
          v20 = _CSPrepareStatement(a1, @"UPDATE CSChunkTable SET refCount = ? WHERE ct_rowid = ?", "UPDATE CSChunkTable SET refCount = ? WHERE ct_rowid = ?");
          v5 = v20;
          if (!v20)
          {
            goto LABEL_13;
          }

          v21 = v16 + 1;
          v22 = sqlite3_bind_int64(v20[2], 1, v16 + 1);
          if (v22)
          {
            v23 = v22;
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSRetainChunkForRowID_cold_7();
            }

            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_13;
            }

            v24 = *MEMORY[0x277CBECE8];
            v25 = sqlite3_errmsg(*(a1 + 24));
            v10 = CFStringCreateWithFormat(v24, 0, @"sqlite3_bind_int64 failed for refCount %lld: %d %s", v21, v23, v25);
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSRetainChunkForRowID_cold_8();
            }

            v11 = CK_DEFAULT_LOG_INTERNAL_1;
            if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v35 = v10;
              goto LABEL_10;
            }
          }

          else
          {
            v26 = sqlite3_bind_int64(v5[2], 2, a2);
            if (v26)
            {
              v27 = v26;
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSRetainChunkForRowID_cold_9();
              }

              if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_13;
              }

              v28 = *MEMORY[0x277CBECE8];
              v29 = sqlite3_errmsg(*(a1 + 24));
              v10 = CFStringCreateWithFormat(v28, 0, @"sqlite3_bind_int64 failed for rowId %lld: %d %s", a2, v27, v29);
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSRetainChunkForRowID_cold_10();
              }

              v11 = CK_DEFAULT_LOG_INTERNAL_1;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v35 = v10;
                goto LABEL_10;
              }
            }

            else
            {
              v30 = CS_sqlite3_step(v5);
              if (v30 == 101)
              {
                v10 = 1;
                goto LABEL_14;
              }

              v31 = v30;
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSRetainChunkForRowID_cold_11();
              }

              if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_13;
              }

              v32 = *MEMORY[0x277CBECE8];
              v33 = sqlite3_errmsg(*(a1 + 24));
              v10 = CFStringCreateWithFormat(v32, 0, @"sqlite3_step failed: %d %s", v31, v33);
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSRetainChunkForRowID_cold_12();
              }

              v11 = CK_DEFAULT_LOG_INTERNAL_1;
              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v35 = v10;
                goto LABEL_10;
              }
            }
          }
        }

        else
        {
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSRetainChunkForRowID_cold_5();
          }

          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_13;
          }

          v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"setFT_pSpace failed for ftRowId:%llu, rowId:%llu\n", v17, a2);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSRetainChunkForRowID_cold_6();
          }

          v11 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v35 = v10;
            goto LABEL_10;
          }
        }
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRetainChunkForRowID_cold_13();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }

        v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Failed to get row ID %llu from database (%d)\n", a2, v15);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRetainChunkForRowID_cold_14();
        }

        v11 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v35 = v10;
          goto LABEL_10;
        }
      }
    }
  }

  if (v10)
  {
    CFRelease(v10);
LABEL_13:
    v10 = 0;
  }

LABEL_14:
  _CSFinishPreparedStatement(v5);
  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

sqlite3_int64 _CSRefCountForChunkWithRowID(uint64_t a1, sqlite3_int64 a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = _CSPrepareStatement(a1, @"SELECT refCount FROM CSChunkTable WHERE ct_rowid = ? AND location = ?", "SELECT refCount FROM CSChunkTable WHERE ct_rowid = ? AND location = ?");
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = sqlite3_bind_int64(v4[2], 1, a2);
  if (v6 || (v6 = sqlite3_bind_int(v5[2], 2, 115), v6))
  {
    v7 = v6;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRefCountForChunkWithRowID_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v8 = *MEMORY[0x277CBECE8];
    v9 = sqlite3_errmsg(*(a1 + 24));
    v10 = CFStringCreateWithFormat(v8, 0, @"sqlite3_bind returned: %s (%d)", v9, v7);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRefCountForChunkWithRowID_cold_2();
    }

    v11 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138543362;
    v21 = v10;
    goto LABEL_11;
  }

  v14 = CS_sqlite3_step(v5);
  if (v14 != 100)
  {
    v15 = v14;
    if (v14 == 101)
    {
      goto LABEL_14;
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRefCountForChunkWithRowID_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v16 = *MEMORY[0x277CBECE8];
    v17 = sqlite3_errmsg(*(a1 + 24));
    v10 = CFStringCreateWithFormat(v16, 0, @"sqlite3_step returned: %s (%d)", v17, v15);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRefCountForChunkWithRowID_cold_4();
    }

    v11 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138543362;
    v21 = v10;
LABEL_11:
    _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_12:
    if (v10)
    {
      CFRelease(v10);
    }

LABEL_14:
    v12 = *MEMORY[0x277D85DE8];
    return -1;
  }

  v18 = v5[2];
  v19 = *MEMORY[0x277D85DE8];

  return sqlite3_column_int64(v18, 0);
}

uint64_t addRegisteredChunk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, char a6, _BYTE *a7, _BYTE *a8, unsigned __int8 *a9, int a10)
{
  v14 = CKSignatureSize(a8);
  v15 = CKSchemeAndSignatureSize(a8);
  if (a9)
  {
    v16 = CKSchemeAndEncryptionKeySize(a9);
  }

  else
  {
    v16 = 0;
  }

  v37 = a5;
  if (a7)
  {
    v17 = CKSchemeAndSignatureSize(a7 + 1);
    v18 = CKSubchunkMaxLength(a7);
    if (v18)
    {
      v19 = vcvtps_u32_f32(a5 / v18);
    }

    else
    {
      v19 = 0;
    }

    v20 = v19 * v17 + 1;
    if (*a1)
    {
      v21 = CKRegisteredChunkSubchunkBlobSize(*a1);
    }

    else
    {
      v21 = v20;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v22 = v14 + v16 + v21;
  v23 = v22 + 36;
  v25 = *(a1 + 8);
  LODWORD(v24) = *(a1 + 12);
  if (v25 != v24)
  {
    v29 = *(a1 + 8);
LABEL_23:
    if (v29 >= v24)
    {
      addRegisteredChunk_cold_1();
    }

    if (!*a1)
    {
      addRegisteredChunk_cold_3();
    }

    v30 = *a1 + v23 * v25;
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 32) = 0;
    *v30 = a2;
    *(v30 + 8) = a3;
    *(v30 + 16) = a4;
    *(v30 + 24) = v37;
    *(v30 + 28) = a6;
    *(v30 + 31) = a10;
    v31 = v30 + 35;
    memcpy((v30 + 35), a8, v15);
    if (a9)
    {
      memcpy((v31 + v15), a9, v16);
      *(v30 + 30) = 1;
    }

    *(v30 + 29) = v20 != 0;
    memcpy((v31 + v16 + v15), a7, v20);
    v32 = *(a1 + 8) + 1;
    *(a1 + 8) = v32;
    if (v25 >= v32)
    {
      addRegisteredChunk_cold_2();
    }

    return 0;
  }

  if (v22 == -36)
  {
    addRegisteredChunk_cold_4();
  }

  if (v25 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = *(a1 + 8);
  }

  v27 = 2 * v26;
  if (v25 >= 0x10000)
  {
    v24 = (v25 + 1000);
  }

  else
  {
    v24 = v27;
  }

  if (v24 < v25)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (0xFFFFFFFF / v23 >= v24)
  {
    v33 = malloc_type_realloc(*a1, v23 * v24, 0x100004077774924uLL);
    if (!v33)
    {
      return 0xFFFFFFFFLL;
    }

    *a1 = v33;
    *(a1 + 12) = v24;
    v29 = *(a1 + 8);
    goto LABEL_23;
  }

  return result;
}

uint64_t addStoredChunk(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, char a9, _BYTE *a10)
{
  v15 = CKSignatureSize(a10);
  v16 = CKSchemeAndSignatureSize(a10);
  v17 = v15 + 57;
  v18 = *(a1 + 8);
  LODWORD(v19) = *(a1 + 12);
  if (v18 != v19)
  {
    v23 = *(a1 + 8);
LABEL_12:
    if (v23 >= v19)
    {
      addStoredChunk_cold_1();
    }

    if (!*a1)
    {
      addStoredChunk_cold_3();
    }

    v24 = *a1 + v17 * v18;
    *v24 = 0u;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 41) = 0u;
    *v24 = a2;
    *(v24 + 4) = a3;
    *(v24 + 12) = a5;
    *(v24 + 16) = a4;
    *(v24 + 24) = a6 + v16 + 4;
    *(v24 + 32) = a6;
    *(v24 + 40) = a7;
    *(v24 + 44) = a8;
    *(v24 + 52) = a9;
    memcpy((v24 + 56), a10, v16);
    v25 = *(a1 + 8) + 1;
    *(a1 + 8) = v25;
    if (v18 >= v25)
    {
      addStoredChunk_cold_2();
    }

    return 0;
  }

  if (!v17)
  {
    addStoredChunk_cold_4();
  }

  if (v18 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = *(a1 + 8);
  }

  v21 = 2 * v20;
  if (v18 >= 0x10000)
  {
    v19 = (v18 + 1000);
  }

  else
  {
    v19 = v21;
  }

  if (v19 < v18)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (0xFFFFFFFF / v17 >= v19)
  {
    v26 = malloc_type_realloc(*a1, v17 * v19, 0x100004077774924uLL);
    if (!v26)
    {
      return 0xFFFFFFFFLL;
    }

    *a1 = v26;
    *(a1 + 12) = v19;
    v23 = *(a1 + 8);
    goto LABEL_12;
  }

  return result;
}

BOOL _CSRegisterChunkList(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 264);
  v5 = *(a2 + 308);
  v6 = *(a2 + 272);
  if (*(a2 + 183) == 1)
  {
    *(a2 + 528) = mach_absolute_time();
  }

  if (!v6)
  {
LABEL_9:
    v9 = 1;
    goto LABEL_20;
  }

  if (_CSRegisterChunk(a1, v4, *(v4 + 28)))
  {
    v7 = 0;
    while (1)
    {
      v8 = CKRegisteredChunkSubchunkBlobSize(v4);
      if (v6 - 1 == v7)
      {
        goto LABEL_9;
      }

      v4 += v8 + v5;
      ++v7;
      if (!_CSRegisterChunk(a1, v4, *(v4 + 28)))
      {
        v9 = v7 >= v6;
        goto LABEL_11;
      }
    }
  }

  v9 = 0;
LABEL_11:
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSRegisterChunkList_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v10 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"_CSRegisterChunk failed\n");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRegisterChunkList_cold_2();
    }

    v11 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", &v14, 0xCu);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

LABEL_20:
  if (*(a2 + 183) == 1)
  {
    *(a2 + 536) += mach_absolute_time() - *(a2 + 528);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

sqlite3_int64 _CSRegisterChunk(uint64_t a1, uint64_t a2, int a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    _CSRegisterChunk_cold_5();
  }

  v6 = (a2 + 35);
  v7 = CKChunkSchemeSignatureAndKeySize((a2 + 35));
  if (v7)
  {
    v8 = v7;
    if (*(a2 + 29) && v6[v7] && (v9 = vcvtps_u32_f32(*(a2 + 24) / (v6[v7] << 10))) != 0)
    {
      v10 = CKChunkSchemeAndSignatureSize(&v6[v7 + 1]) * v9 + 1;
    }

    else
    {
      v10 = 0;
    }

    v11 = _CSPrepareStatement(a1, @"INSERT INTO CSChunkTable (cid, ct_iid, offset, dataLen, location, subchunksBlob, key) VALUES (?, ?, ?, ?, ?, ?, ?)", "INSERT INTO CSChunkTable (cid, ct_iid, offset, dataLen, location, subchunksBlob, key) VALUES (?, ?, ?, ?, ?, ?, ?)");
    if (v11)
    {
      v12 = CKChunkSchemeAndSignatureSize(v6);
      sqlite3_bind_blob(v11[2], 1, v6, v12, 0);
      sqlite3_bind_int64(v11[2], 2, *(a2 + 8));
      sqlite3_bind_int64(v11[2], 3, *(a2 + 16));
      sqlite3_bind_int(v11[2], 4, *(a2 + 24));
      sqlite3_bind_int(v11[2], 5, a3);
      sqlite3_bind_blob(v11[2], 6, &v6[v8], v10, 0);
      v13 = *(a2 + 30);
      if (*(a2 + 35) < 0)
      {
        if (!*(a2 + 30))
        {
          _CSRegisterChunk_cold_1();
        }

        v15 = CKChunkSchemeAndSignatureSize(v6);
        v16 = CKChunkSchemeAndEncryptionKeySize(&v6[v15]);
        sqlite3_bind_blob(v11[2], 7, &v6[v15], v16, 0);
      }

      else if (*(a2 + 30))
      {
        _CSRegisterChunk_cold_2();
      }

      v17 = CS_sqlite3_step(v11);
      if (v17 == 101)
      {
        insert_rowid = sqlite3_last_insert_rowid(*(a1 + 24));
        *a2 = insert_rowid;
        *(a2 + 28) = a3;
LABEL_28:
        _CSFinishPreparedStatement(v11);
        goto LABEL_29;
      }

      v18 = v17;
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSRegisterChunk_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v19 = *MEMORY[0x277CBECE8];
        v20 = sqlite3_errmsg(*(a1 + 24));
        v21 = CFStringCreateWithFormat(v19, 0, @"sqlite3_step returned: %d %s, for chunk:\n", v18, v20);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRegisterChunk_cold_4();
        }

        v22 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v21;
          _os_log_impl(&dword_243431000, v22, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v21)
        {
          CFRelease(v21);
        }
      }

      printRegisteredChunk(a2);
    }

    insert_rowid = 0;
    goto LABEL_28;
  }

  insert_rowid = 0;
LABEL_29:
  v23 = *MEMORY[0x277D85DE8];
  return insert_rowid;
}

uint64_t _CSGetRegisteredChunk(uint64_t a1, _BYTE *a2, char **a3)
{
  v28 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v6 = CKChunkSchemeAndSignatureSize(a2);
  v7 = _CSPrepareStatement(a1, @"SELECT * FROM CSChunkTable WHERE cid = ?", "SELECT * FROM CSChunkTable WHERE cid = ?");
  v8 = v7;
  if (v7)
  {
    sqlite3_bind_blob(v7[2], 1, a2, v6, 0);
    do
    {
      v9 = CS_sqlite3_step(v8);
      if (v9 != 100)
      {
        v14 = v9;
        if ((v9 - 102) > 0xFFFFFFFD)
        {
          goto LABEL_22;
        }

        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSGetRegisteredChunk_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v15 = *MEMORY[0x277CBECE8];
          v16 = sqlite3_errmsg(*(a1 + 24));
          v17 = CFStringCreateWithFormat(v15, 0, @"sqlite3_step returned: %d %s, for signature:\n", v14, v16);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSGetRegisteredChunk_cold_2();
          }

          v18 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v27 = v17;
            _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v17)
          {
            CFRelease(v17);
          }
        }

        printSignature(a2);
        _CSFinishPreparedStatement(v8);
        v19 = 0;
        goto LABEL_24;
      }

      v10 = sqlite3_column_int(v8[2], 8);
      v11 = v10;
    }

    while (v10 != 116 && v10 != 114);
    v12 = sqlite3_column_blob(v8[2], 1);
    if (*v12 < 0)
    {
      v13 = sqlite3_column_blob(v8[2], 9);
    }

    else
    {
      v13 = 0;
    }

    v20 = sqlite3_column_int(v8[2], 5);
    v21 = sqlite3_column_blob(v8[2], 10);
    v22 = CKCreateRegisteredChunkWithSubchunkBlob(v12, v13, v20, v21);
    if (v22)
    {
      v23 = v22;
      *(v22 + 1) = sqlite3_column_int64(v8[2], 2);
      *v23 = sqlite3_column_int64(v8[2], 0);
      *(v23 + 2) = sqlite3_column_int64(v8[2], 4);
      *(v23 + 6) = v20;
      v23[28] = v11;
      *a3 = v23;
      v19 = 1;
      goto LABEL_23;
    }
  }

LABEL_22:
  v19 = 0;
LABEL_23:
  _CSFinishPreparedStatement(v8);
LABEL_24:
  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t _CSGetRegisteredChunks(uint64_t a1, _BYTE *a2, void *a3, int *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v32 = 0;
  v33 = 0;
  v8 = CKChunkSchemeAndSignatureSize(a2);
  v9 = _CSPrepareStatement(a1, @"SELECT * FROM CSChunkTable WHERE cid = ?", "SELECT * FROM CSChunkTable WHERE cid = ?");
  v10 = v9;
  if (!v9)
  {
LABEL_32:
    v24 = 0;
    goto LABEL_33;
  }

  v31 = a1;
  sqlite3_bind_blob(v9[2], 1, a2, v8, 0);
  v11 = *a4;
  if (*a4 < 1)
  {
    v12 = 0;
    v22 = 0;
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v13 = CS_sqlite3_step(v10);
      if (v13 != 100)
      {
        break;
      }

      v14 = sqlite3_column_int(v10[2], 8);
      v15 = v14;
      if (v14 == 116 || v14 == 114)
      {
        if (*sqlite3_column_blob(v10[2], 1) < 0)
        {
          v16 = sqlite3_column_blob(v10[2], 9);
        }

        else
        {
          v16 = 0;
        }

        v17 = sqlite3_column_int64(v10[2], 2);
        v18 = sqlite3_column_int64(v10[2], 0);
        v19 = sqlite3_column_int64(v10[2], 4);
        v20 = sqlite3_column_int(v10[2], 5);
        v21 = sqlite3_column_blob(v10[2], 10);
        if (addRegisteredChunk(&v32, v18, v17, v19, v20, v15, v21, a2, v16, 0))
        {
          goto LABEL_32;
        }

        v12 = v33;
      }

      if (v12 >= *a4)
      {
        goto LABEL_21;
      }
    }

    v22 = v13;
    v11 = *a4;
  }

  if (v11)
  {
    v23 = (v22 - 102) > 0xFFFFFFFD;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSGetRegisteredChunks_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v25 = *MEMORY[0x277CBECE8];
      v26 = sqlite3_errmsg(*(v31 + 24));
      v27 = CFStringCreateWithFormat(v25, 0, @"sqlite3_step returned: %d %s, for signature:\n", v22, v26);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetRegisteredChunks_cold_2();
      }

      v28 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v35 = v27;
        _os_log_impl(&dword_243431000, v28, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v27)
      {
        CFRelease(v27);
      }
    }

    printSignature(a2);
    goto LABEL_32;
  }

LABEL_21:
  *a3 = v32;
  *a4 = v12;
  v32 = 0;
  v24 = 1;
LABEL_33:
  _CSFinishPreparedStatement(v10);
  clearChunksArray(&v32);
  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

const __CFString *registerItem(uint64_t a1, uint64_t a2, sqlite3_int64 a3, uint64_t a4, int a5)
{
  v44 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    registerItem_cold_7();
  }

  v10 = CKFileDigestResultsFileSignature(a2);
  if (((*v10 & 0x7F) - 3) <= 0xFDu)
  {
    v11 = *v10;
    if (v11 > 0xB || ((1 << v11) & 0x910) == 0)
    {
      v13 = v11 - 132;
      v14 = v13 > 7;
      v15 = (1 << v13) & 0x91;
      if (v14 || v15 == 0)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          registerItem_cold_5();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          insert_rowid = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file signature scheme:0x%x for itemID:%lld\n", *v10, a3);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            registerItem_cold_6();
          }

          v37 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v43 = insert_rowid;
            _os_log_impl(&dword_243431000, v37, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (!insert_rowid)
          {
            v19 = 0;
            goto LABEL_65;
          }

          CFRelease(insert_rowid);
        }

        v19 = 0;
        goto LABEL_64;
      }
    }
  }

  unregisterItem(a1, a3);
  if (a5)
  {
    _CSUnregisterChunksForItem(a1, a3);
  }

  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      registerItem_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Registering itemID:%lld", a3);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        registerItem_cold_2();
      }

      v18 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v43 = v17;
        _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }
  }

  v19 = _CSPrepareStatement(a1, @"INSERT INTO CSRegisteredFileTable (crt_id, crt_iid, crt_filekey, crt_filesize, crt_profileType, crt_profileTypeIsDefault, crt_profileConfigurationVersion, crt_profileResolvedFileExtension) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", "INSERT INTO CSRegisteredFileTable (crt_id, crt_iid, crt_filekey, crt_filesize, crt_profileType, crt_profileTypeIsDefault, crt_profileConfigurationVersion, crt_profileResolvedFileExtension) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
  if (!v19)
  {
    goto LABEL_64;
  }

  v20 = CKFileSchemeAndSignatureSize(v10);
  sqlite3_bind_blob(v19[2], 1, v10, v20, 0);
  sqlite3_bind_int64(v19[2], 2, a3);
  v21 = CKFileDigestResultsFileVerificationKey(a2);
  if (v21)
  {
    v22 = v21;
    BytePtr = CFDataGetBytePtr(v21);
    Length = CFDataGetLength(v22);
    sqlite3_bind_blob(v19[2], 3, BytePtr, Length, 0);
  }

  else
  {
    sqlite3_bind_null(v19[2], 3);
  }

  if (CKFileDigestResultsHasFileLength(a2))
  {
    v25 = CKFileDigestResultsFileLength(a2);
    sqlite3_bind_int64(v19[2], 4, v25);
  }

  else
  {
    sqlite3_bind_null(v19[2], 4);
  }

  v26 = CKProfileResultsType(a4);
  sqlite3_bind_int(v19[2], 5, v26);
  IsDefault = CKProfileResultsIsDefault(a4);
  if (IsDefault)
  {
    v28 = CFBooleanGetValue(IsDefault) != 0;
    sqlite3_bind_int(v19[2], 6, v28);
  }

  else
  {
    sqlite3_bind_null(v19[2], 6);
  }

  v29 = CKProfileResultsConfigurationVersion(a4);
  bzero(buffer, 0x400uLL);
  if (v29 && CFStringGetCString(v29, buffer, 1024, 0x8000100u))
  {
    sqlite3_bind_text(v19[2], 7, buffer, 1024, 0);
  }

  else
  {
    sqlite3_bind_null(v19[2], 7);
  }

  v30 = CKProfileResultsResolvedFileExtension(a4);
  bzero(v40, 0x400uLL);
  if (v30 && CFStringGetCString(v30, v40, 1024, 0x8000100u))
  {
    sqlite3_bind_text(v19[2], 8, v40, 1024, 0);
  }

  else
  {
    sqlite3_bind_null(v19[2], 8);
  }

  v31 = CS_sqlite3_step(v19);
  if (v31 == 101)
  {
    insert_rowid = sqlite3_last_insert_rowid(*(a1 + 24));
    goto LABEL_65;
  }

  v33 = v31;
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    registerItem_cold_3();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
LABEL_64:
    insert_rowid = 0;
    goto LABEL_65;
  }

  v34 = *MEMORY[0x277CBECE8];
  v35 = sqlite3_errmsg(*(a1 + 24));
  insert_rowid = CFStringCreateWithFormat(v34, 0, @"sqlite3_step returned: %d %s\n", v33, v35);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    registerItem_cold_4();
  }

  v36 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v43 = insert_rowid;
    _os_log_impl(&dword_243431000, v36, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (insert_rowid)
  {
    CFRelease(insert_rowid);
    goto LABEL_64;
  }

LABEL_65:
  _CSFinishPreparedStatement(v19);
  v38 = *MEMORY[0x277D85DE8];
  return insert_rowid;
}

os_log_t __registerItem_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __registerItem_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t unregisterItem(uint64_t a1, sqlite3_int64 a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    unregisterItem_cold_5();
  }

  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      unregisterItem_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unregistering itemID:%lld", a2);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        unregisterItem_cold_2();
      }

      v5 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v18 = v4;
        _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  v6 = _CSPrepareStatement(a1, @"DELETE FROM CSRegisteredFileTable WHERE crt_iid = ?", "DELETE FROM CSRegisteredFileTable WHERE crt_iid = ?");
  v7 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v8 = 1;
  sqlite3_bind_int64(v6[2], 1, a2);
  v9 = CS_sqlite3_step(v7);
  if (v9 != 101)
  {
    v10 = v9;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      unregisterItem_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v11 = *MEMORY[0x277CBECE8];
      v12 = sqlite3_errmsg(*(a1 + 24));
      v13 = CFStringCreateWithFormat(v11, 0, @"sqlite3_step returned: %d %s, for itemID:%lld\n", v10, v12, a2);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        unregisterItem_cold_4();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v13;
        _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

LABEL_24:
    v8 = 0;
  }

  _CSFinishPreparedStatement(v7);
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL _CSUnregisterChunksForItem(uint64_t a1, sqlite3_int64 a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSUnregisterChunksForItem_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unregistering chunks for itemID:%lld", a2);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSUnregisterChunksForItem_cold_2();
      }

      v5 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v20 = v4;
        _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  if (*(a1 + 17))
  {
    v6 = 0;
  }

  else
  {
    v7 = _CSPrepareStatement(a1, @"DELETE FROM CSChunkTable WHERE ct_iid = ? AND location = 114", "DELETE FROM CSChunkTable WHERE ct_iid = ? AND location = 114");
    if (v7)
    {
      v8 = v7;
      sqlite3_bind_int64(v7[2], 1, a2);
      v9 = CS_sqlite3_step(v8);
      v6 = v9 == 101;
      if (v9 != 101)
      {
        v10 = v9;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUnregisterChunksForItem_cold_3();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v11 = *MEMORY[0x277CBECE8];
          v12 = sqlite3_errmsg(*(a1 + 24));
          v13 = CFStringCreateWithFormat(v11, 0, @"sqlite3_step returned: %d %s, for itemID:%lld\n", v10, v12, a2);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSUnregisterChunksForItem_cold_4();
          }

          v14 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v20 = v13;
            _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v13)
          {
            CFRelease(v13);
          }
        }
      }

      _CSFinishPreparedStatement(v8);
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSUnregisterChunksForItem_cold_5();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v15 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null sqlite3_stmt\n");
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSUnregisterChunksForItem_cold_6();
        }

        v16 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v20 = v15;
          _os_log_impl(&dword_243431000, v16, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v15)
        {
          CFRelease(v15);
        }
      }

      v6 = 1;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v6;
}

os_log_t __registerItem_block_invoke_1130()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __registerItem_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __registerItem_block_invoke_1148()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __registerItem_block_invoke_2_1152()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __unregisterItem_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __unregisterItem_block_invoke_3()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __unregisterItem_block_invoke_1172()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __unregisterItem_block_invoke_2_1179()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

CFStringRef _CSCopyChunkListForItemID(uint64_t a1, sqlite3_int64 a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  *a3 = 0;
  v6 = _CSPrepareStatement(a1, @"SELECT ct_rowid, cid, offset, dataLen, location, subchunksBlob, key FROM CSChunkTable WHERE ct_iid = ? ORDER BY offset", "SELECT ct_rowid, cid, offset, dataLen, location, subchunksBlob, key FROM CSChunkTable WHERE ct_iid = ? ORDER BY offset");
  v7 = v6;
  if (!v6)
  {
    goto LABEL_20;
  }

  sqlite3_bind_int64(v6[2], 1, a2);
  while (1)
  {
    v8 = CS_sqlite3_step(v7);
    if (v8 != 100)
    {
      break;
    }

    v9 = sqlite3_column_int64(v7[2], 0);
    v10 = sqlite3_column_blob(v7[2], 1);
    if (*v10 < 0)
    {
      v11 = sqlite3_column_blob(v7[2], 6);
    }

    else
    {
      v11 = 0;
    }

    v12 = sqlite3_column_int64(v7[2], 2);
    v13 = sqlite3_column_int(v7[2], 3);
    v14 = sqlite3_column_int(v7[2], 4);
    v15 = sqlite3_column_blob(v7[2], 5);
    if (addRegisteredChunk(&v23, v9, a2, v12, v13, v14, v15, v10, v11, 0))
    {
      goto LABEL_20;
    }
  }

  v16 = v8;
  if (v8 == 101)
  {
    v17 = v23;
    v23 = 0;
    *a3 = v24;
    goto LABEL_21;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSCopyChunkListForItemID_cold_1();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

  v18 = *MEMORY[0x277CBECE8];
  v19 = sqlite3_errmsg(*(a1 + 24));
  v17 = CFStringCreateWithFormat(v18, 0, @"sqlite3_step returned: %d %s, for itemID:%lld\n", v16, v19, a2);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSCopyChunkListForItemID_cold_2();
  }

  v20 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v26 = v17;
    _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (v17)
  {
    CFRelease(v17);
    goto LABEL_20;
  }

LABEL_21:
  _CSFinishPreparedStatement(v7);
  clearChunksArray(&v23);
  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

void _CSGetItemIdsForFileSignature(uint64_t a1, _BYTE *a2, unsigned int (*a3)(sqlite3_int64, uint64_t), uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = _CSPrepareStatement(a1, @"SELECT crt_iid FROM CSRegisteredFileTable WHERE crt_id = ?", "SELECT crt_iid FROM CSRegisteredFileTable WHERE crt_id = ?");
  if (v8)
  {
    v9 = v8;
    v10 = CKFileSchemeAndSignatureSize(a2);
    sqlite3_bind_blob(v9[2], 1, a2, v10, 0);
    while (1)
    {
      v11 = CS_sqlite3_step(v9);
      if (v11 != 100)
      {
        break;
      }

      v12 = sqlite3_column_int64(v9[2], 0);
      if (a3(v12, a4))
      {
        goto LABEL_16;
      }
    }

    v13 = v11;
    if (v11 != 101)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetItemIdsForFileSignature_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v14 = *MEMORY[0x277CBECE8];
        v15 = sqlite3_errmsg(*(a1 + 24));
        v16 = CFStringCreateWithFormat(v14, 0, @"sqlite3_step returned: %d %s\n", v13, v15);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSGetItemIdsForFileSignature_cold_2();
        }

        v17 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v22 = v16;
          _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        if (v16)
        {
          CFRelease(v16);
        }
      }
    }

LABEL_16:
    _CSFinishPreparedStatement(v9);
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSGetItemIdsForFileSignature_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null sqlite3_stmt\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetItemIdsForFileSignature_cold_4();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v22 = v18;
        _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v18)
      {
        CFRelease(v18);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t _CSGetItemIdForFileSignature(uint64_t a1, unsigned __int8 *a2)
{
  v9 = 0;
  if (((*a2 & 0x7F) - 3) <= 0xFDu)
  {
    v2 = *a2;
    if (v2 > 0xB || ((1 << v2) & 0x910) == 0)
    {
      v4 = v2 - 132;
      v5 = v4 > 7;
      v6 = (1 << v4) & 0x91;
      if (v5 || v6 == 0)
      {
        return 0;
      }
    }
  }

  _CSGetItemIdsForFileSignature(a1, a2, _CSFetchOneItemCB, &v9);
  return v9;
}

uint64_t _CSGetSignatureForItemID(uint64_t a1, sqlite3_int64 a2, int a3, CFTypeRef *a4, uint64_t *a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v55 = a3;
  cf = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v9 = _CSPrepareStatement(a1, @"SELECT crt_id, crt_filekey, crt_filesize, crt_profileType, crt_profileTypeIsDefault, crt_profileConfigurationVersion, crt_profileResolvedFileExtension FROM CSRegisteredFileTable WHERE crt_iid = ?", "SELECT crt_id, crt_filekey, crt_filesize, crt_profileType, crt_profileTypeIsDefault, crt_profileConfigurationVersion, crt_profileResolvedFileExtension FROM CSRegisteredFileTable WHERE crt_iid = ?");
  if (!v9)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSGetSignatureForItemID_cold_7();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null sqlite3_stmt\n");
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetSignatureForItemID_cold_8();
      }

      v13 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v57 = v12;
        _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v12)
      {
        CFRelease(v12);
      }
    }

    v14 = 0;
    goto LABEL_90;
  }

  v10 = v9;
  sqlite3_bind_int64(v9[2], 1, a2);
  v45 = a4;
  v46 = a5;
  v47 = a1;
  if (a3)
  {
    v11 = CKFileSchemeAndSignatureSize(&v55);
  }

  else
  {
    v11 = 0;
  }

  v50 = 0;
  v51 = 0;
  v52 = 0;
  v15 = 0;
  v16 = *MEMORY[0x277CBECE8];
  v49 = *MEMORY[0x277CBED28];
  v48 = *MEMORY[0x277CBED10];
  while (1)
  {
    v17 = CS_sqlite3_step(v10);
    if (v17 != 100)
    {
      break;
    }

    v18 = sqlite3_column_blob(v10[2], 1);
    v19 = sqlite3_column_bytes(v10[2], 1);
    if (v18)
    {
      v20 = v19 < 1;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = CFDataCreate(v16, v18, v19);
    }

    if (sqlite3_column_type(v10[2], 2) == 5)
    {
      v22 = -1;
    }

    else
    {
      v22 = sqlite3_column_int64(v10[2], 2);
    }

    if (sqlite3_column_type(v10[2], 3) != 5)
    {
      v23 = sqlite3_column_int(v10[2], 3);
      if ((v23 - 1) < 9)
      {
        v15 = v23;
      }
    }

    if (sqlite3_column_type(v10[2], 4) != 5)
    {
      v24 = sqlite3_column_int(v10[2], 4);
      if (v24 == 1)
      {
        v25 = v49;
        goto LABEL_38;
      }

      if (!v24)
      {
        v25 = v48;
LABEL_38:
        v52 = v25;
      }
    }

    if (sqlite3_column_type(v10[2], 5) != 5)
    {
      v26 = sqlite3_column_text(v10[2], 5);
      v27 = sqlite3_column_bytes(v10[2], 5);
      v28 = strnlen(v26, v27);
      if (v28 < v27)
      {
        if (v28)
        {
          v50 = CFStringCreateWithCString(v16, v26, 0x8000100u);
        }
      }
    }

    if (sqlite3_column_type(v10[2], 6) != 5)
    {
      v29 = sqlite3_column_text(v10[2], 6);
      v30 = sqlite3_column_bytes(v10[2], 6);
      v31 = strnlen(v29, v30);
      if (v31 < v30)
      {
        if (v31)
        {
          v51 = CFStringCreateWithCString(v16, v29, 0x8000100u);
        }
      }
    }

    v32 = sqlite3_column_blob(v10[2], 0);
    v33 = sqlite3_column_bytes(v10[2], 0);
    v34 = v33;
    if (v32 && (!v55 || v33 >= v11))
    {
      if (CKFileSchemeAndSignatureSize(v32))
      {
        if ((!v55 || v55 == *v32) && CKFileDigestResultsCreate(&cf, v32, v22, v21))
        {
          if (v21)
          {
            CFRelease(v21);
          }

          _CSFinishPreparedStatement(v10);
          v42 = v50;
          v41 = v51;
          if (v45 && cf)
          {
            CFRetain(cf);
            *v45 = cf;
          }

          if (v46)
          {
            CKProfileResultsCreate(v46, v15, v50, v51, v52, 0);
          }

          v14 = 1;
          goto LABEL_84;
        }
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSGetSignatureForItemID_cold_1();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v35 = CFStringCreateWithFormat(v16, 0, @"signature size is 0, itemID:%lld\n", a2);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSGetSignatureForItemID_cold_2();
          }

          v36 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
LABEL_56:
            *buf = 138543362;
            v57 = v35;
            _os_log_impl(&dword_243431000, v36, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

LABEL_57:
          if (v35)
          {
            CFRelease(v35);
          }
        }
      }
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetSignatureForItemID_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v35 = CFStringCreateWithFormat(v16, 0, @"sqlite3_column_blob returned bad data for itemID:%lld, blobSize:%d, expectedSize:%u\n", a2, v34, v11);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSGetSignatureForItemID_cold_4();
        }

        v36 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }

        goto LABEL_57;
      }
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }

  v37 = v17;
  if (v17 != 101)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSGetSignatureForItemID_cold_5();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v38 = sqlite3_errmsg(*(v47 + 24));
      v39 = CFStringCreateWithFormat(v16, 0, @"sqlite3_step returned: %d %s, for itemID:%lld\n", v37, v38, a2);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSGetSignatureForItemID_cold_6();
      }

      v40 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v57 = v39;
        _os_log_impl(&dword_243431000, v40, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v39)
      {
        CFRelease(v39);
      }
    }
  }

  _CSFinishPreparedStatement(v10);
  v14 = 0;
  v42 = v50;
  v41 = v51;
LABEL_84:
  if (cf)
  {
    CKBaseRelease(cf);
  }

  cf = 0;
  if (v42)
  {
    CKBaseRelease(v42);
  }

  if (v41)
  {
    CKBaseRelease(v41);
  }

LABEL_90:
  v43 = *MEMORY[0x277D85DE8];
  return v14;
}

CFStringRef _CSCopyChunkListForFileSignature(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v5 = _CSGetItemIdForFileSignature(a1, a2);

  return _CSCopyChunkListForItemID(a1, v5, a3);
}

uint64_t _CSUnregisterAllTemporaryChunks(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    _CSUnregisterAllTemporaryChunks_cold_3();
  }

  v2 = _CSPrepareStatement(a1, @"DELETE FROM CSChunkTable WHERE location = ?", "DELETE FROM CSChunkTable WHERE location = ?");
  v3 = v2;
  if (!v2)
  {
    goto LABEL_13;
  }

  v4 = 1;
  sqlite3_bind_int(v2[2], 1, 116);
  v5 = CS_sqlite3_step(v3);
  if (v5 != 101)
  {
    v6 = v5;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSUnregisterAllTemporaryChunks_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v7 = *MEMORY[0x277CBECE8];
      v8 = sqlite3_errmsg(*(a1 + 24));
      v9 = CFStringCreateWithFormat(v7, 0, @"sqlite3_step returned: %d %s\n", v6, v8);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSUnregisterAllTemporaryChunks_cold_2();
      }

      v10 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }

LABEL_13:
    v4 = 0;
  }

  _CSFinishPreparedStatement(v3);
  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t _CSUnregisterTemporaryChunks(uint64_t a1, sqlite3_int64 a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    _CSUnregisterTemporaryChunks_cold_5();
  }

  v4 = _CSPrepareStatement(a1, @"DELETE FROM CSChunkTable WHERE location = ? AND ct_iid = ?", "DELETE FROM CSChunkTable WHERE location = ? AND ct_iid = ?");
  v5 = v4;
  if (!v4)
  {
    goto LABEL_23;
  }

  sqlite3_bind_int(v4[2], 1, 116);
  sqlite3_bind_int64(v5[2], 2, a2);
  v6 = CS_sqlite3_step(v5);
  if (v6 != 101)
  {
    v15 = v6;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSUnregisterTemporaryChunks_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v16 = *MEMORY[0x277CBECE8];
    v17 = sqlite3_errmsg(*(a1 + 24));
    v13 = CFStringCreateWithFormat(v16, 0, @"sqlite3_step returned: %d %s for itemID:%lld\n", v15, v17, a2);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSUnregisterTemporaryChunks_cold_2();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 138543362;
    v21 = v13;
LABEL_20:
    _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_21:
    if (v13)
    {
      CFRelease(v13);
    }

    goto LABEL_23;
  }

  _CSFinishPreparedStatement(v5);
  v7 = _CSPrepareStatement(a1, @"DELETE FROM CSChunkTable WHERE location = ? AND ct_iid = ?", "DELETE FROM CSChunkTable WHERE location = ? AND ct_iid = ?");
  v5 = v7;
  if (!v7)
  {
LABEL_23:
    v8 = 0;
    goto LABEL_24;
  }

  v8 = 1;
  sqlite3_bind_int(v7[2], 1, 110);
  sqlite3_bind_int64(v5[2], 2, a2);
  v9 = CS_sqlite3_step(v5);
  if (v9 != 101)
  {
    v10 = v9;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSUnregisterTemporaryChunks_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v11 = *MEMORY[0x277CBECE8];
    v12 = sqlite3_errmsg(*(a1 + 24));
    v13 = CFStringCreateWithFormat(v11, 0, @"sqlite3_step returned: %d %s for itemID:%lld\n", v10, v12, a2);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSUnregisterTemporaryChunks_cold_4();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 138543362;
    v21 = v13;
    goto LABEL_20;
  }

LABEL_24:
  _CSFinishPreparedStatement(v5);
  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t _CSRelocateRegisteredChunk(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    _CSRelocateRegisteredChunk_cold_9();
  }

  v8 = CKChunkSchemeAndSignatureSize((a2 + 35));
  v9 = *a2;
  if (*a2)
  {
    v10 = _CSPrepareStatement(a1, @"UPDATE CSChunkTable SET location = ? WHERE rowid = ? AND location = ? AND ct_iid = ? AND cid = ? AND offset = ? AND dataLen = ?", "UPDATE CSChunkTable SET location = ? WHERE rowid = ? AND location = ? AND ct_iid = ? AND cid = ? AND offset = ? AND dataLen = ?");
    v11 = v10;
    if (!v10)
    {
      goto LABEL_49;
    }

    sqlite3_bind_int(v10[2], 1, a4);
    sqlite3_bind_int64(v11->data, 2, v9);
    sqlite3_bind_int(v11->data, 3, a3);
    sqlite3_bind_int64(v11->data, 4, *(a2 + 8));
    sqlite3_bind_blob(v11->data, 5, (a2 + 35), v8, 0);
    sqlite3_bind_int64(v11->data, 6, *(a2 + 16));
    sqlite3_bind_int(v11->data, 7, *(a2 + 24));
    v12 = CS_sqlite3_step(v11);
    if (v12 == 101)
    {
      v13 = sqlite3_changes(*(a1 + 24));
      _CSFinishPreparedStatement(v11);
      if (!v13)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRelocateRegisteredChunk_cold_3();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Couldn't update chunk ('%c'/'%c') for itemID:%lld, o:0x%llx, sz:0x%x, rowID:%llu\n", a3, a4, *(a2 + 8), *(a2 + 16), *(a2 + 24), v9);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSRelocateRegisteredChunk_cold_4();
          }

          v14 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v30 = v11;
            _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (!v11)
          {
            goto LABEL_49;
          }

          CFRelease(v11);
        }

        v11 = 0;
LABEL_49:
        v19 = 0;
        goto LABEL_50;
      }

LABEL_19:
      *(a2 + 28) = a4;
      if (gVerbose == 2)
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSRelocateRegisteredChunk_cold_7();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Moved registered chunk ('%c'/'%c') for itemID:%lld, o:0x%llx, sz:0x%x, rowID:%llu\n", a3, a4, *(a2 + 8), *(a2 + 16), *(a2 + 24), v9);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSRelocateRegisteredChunk_cold_8();
          }

          v18 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v30 = v11;
            _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
          }

          if (!v11)
          {
            goto LABEL_31;
          }

          CFRelease(v11);
        }
      }

      v11 = 0;
LABEL_31:
      v19 = 1;
      goto LABEL_50;
    }

    v20 = v12;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRelocateRegisteredChunk_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    v21 = *MEMORY[0x277CBECE8];
    v22 = sqlite3_errmsg(*(a1 + 24));
    v19 = CFStringCreateWithFormat(v21, 0, @"sqlite3_step returned: %d %s\n", v20, v22);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRelocateRegisteredChunk_cold_2();
    }

    v23 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = v19;
LABEL_46:
      _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v15 = _CSPrepareStatement(a1, @"UPDATE CSChunkTable INDEXED BY CSChunkTable_cid_inx SET location = ? WHERE location = ? AND ct_iid = ? AND cid = ? AND offset = ? AND dataLen = ?", "UPDATE CSChunkTable INDEXED BY CSChunkTable_cid_inx SET location = ? WHERE location = ? AND ct_iid = ? AND cid = ? AND offset = ? AND dataLen = ?");
    v11 = v15;
    if (!v15)
    {
      goto LABEL_49;
    }

    sqlite3_bind_int(v15[2], 1, a4);
    sqlite3_bind_int(v11->data, 2, a3);
    sqlite3_bind_int64(v11->data, 3, *(a2 + 8));
    sqlite3_bind_blob(v11->data, 4, (a2 + 35), v8, 0);
    sqlite3_bind_int64(v11->data, 5, *(a2 + 16));
    sqlite3_bind_int(v11->data, 6, *(a2 + 24));
    v16 = CS_sqlite3_step(v11);
    if (v16 == 101)
    {
      v17 = sqlite3_changes(*(a1 + 24));
      _CSFinishPreparedStatement(v11);
      if (!v17)
      {
        v11 = 0;
        v19 = _CSRegisterChunk(a1, a2, a4) != 0;
        goto LABEL_50;
      }

      goto LABEL_19;
    }

    v24 = v16;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRelocateRegisteredChunk_cold_5();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    v25 = *MEMORY[0x277CBECE8];
    v26 = sqlite3_errmsg(*(a1 + 24));
    v19 = CFStringCreateWithFormat(v25, 0, @"sqlite3_step returned: %d %s\n", v24, v26);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSRelocateRegisteredChunk_cold_6();
    }

    v23 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = v19;
      goto LABEL_46;
    }
  }

  if (v19)
  {
    CFRelease(v19);
    goto LABEL_49;
  }

LABEL_50:
  _CSFinishPreparedStatement(v11);
  v27 = *MEMORY[0x277D85DE8];
  return v19;
}

uint64_t _CSUnregisterChunk(uint64_t a1, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    _CSUnregisterChunk_cold_3();
  }

  v6 = _CSPrepareStatement(a1, @"DELETE FROM CSChunkTable INDEXED BY CSChunkTable_cid_inx WHERE location = ? AND ct_iid = ? AND cid = ? AND offset = ? AND dataLen = ?", "DELETE FROM CSChunkTable INDEXED BY CSChunkTable_cid_inx WHERE location = ? AND ct_iid = ? AND cid = ? AND offset = ? AND dataLen = ?");
  v7 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  v8 = 1;
  sqlite3_bind_int(v6[2], 1, a3);
  sqlite3_bind_int64(v7[2], 2, *(a2 + 8));
  v9 = CKChunkSchemeAndSignatureSize((a2 + 35));
  sqlite3_bind_blob(v7[2], 3, (a2 + 35), v9, 0);
  sqlite3_bind_int64(v7[2], 4, *(a2 + 16));
  sqlite3_bind_int(v7[2], 5, *(a2 + 24));
  v10 = CS_sqlite3_step(v7);
  if (v10 != 101)
  {
    v11 = v10;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSUnregisterChunk_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v12 = *MEMORY[0x277CBECE8];
      v13 = sqlite3_errmsg(*(a1 + 24));
      v14 = CFStringCreateWithFormat(v12, 0, @"sqlite3_step returned: %d %s, for signature\n", v11, v13);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSUnregisterChunk_cold_2();
      }

      v15 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = v14;
        _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v14)
      {
        CFRelease(v14);
      }
    }

    printSignature((a2 + 35));
LABEL_14:
    v8 = 0;
  }

  _CSFinishPreparedStatement(v7);
  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t _CSConvertTemporaryChunks(uint64_t a1, sqlite3_int64 a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    _CSConvertTemporaryChunks_cold_3();
  }

  CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSChunkTable WHERE location = 114 AND ct_iid = %llu;", a2);
  v4 = _CSPrepareStatement(a1, @"UPDATE CSChunkTable SET location = 114 WHERE ct_iid = ? AND location = 116", "UPDATE CSChunkTable SET location = 114 WHERE ct_iid = ? AND location = 116");
  v5 = v4;
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = 1;
  sqlite3_bind_int64(v4[2], 1, a2);
  v7 = CS_sqlite3_step(v5);
  if (v7 != 101)
  {
    v8 = v7;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSConvertTemporaryChunks_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v9 = *MEMORY[0x277CBECE8];
      v10 = sqlite3_errmsg(*(a1 + 24));
      v11 = CFStringCreateWithFormat(v9, 0, @"sqlite3_step returned: %d %s, for itemID:%lld\n", v8, v10, a2);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSConvertTemporaryChunks_cold_2();
      }

      v12 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v16 = v11;
        _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

LABEL_13:
    v6 = 0;
  }

  _CSFinishPreparedStatement(v5);
  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t _CSKeyForRegisteredChunk(uint64_t a1, _BYTE *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSKeyForRegisteredChunk_cold_9();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"key param is NULL, failing.");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSKeyForRegisteredChunk_cold_10();
    }

    v18 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 138543362;
    v27 = v17;
    goto LABEL_22;
  }

  v6 = _CSPrepareStatement(a1, @"SELECT key FROM CSChunkTable WHERE cid = ?", "SELECT key FROM CSChunkTable WHERE cid = ?");
  if (v6)
  {
    v7 = v6;
    v8 = CKSchemeAndSignatureSize(a2);
    sqlite3_bind_blob(v7[2], 1, a2, v8, 0);
    v9 = CS_sqlite3_step(v7);
    if (v9 != 101)
    {
      v10 = v9;
      if (v9 == 100)
      {
        v11 = sqlite3_column_blob(v7[2], 0);
        if (v11)
        {
          v12 = v11;
          v13 = CKSchemeAndEncryptionKeySize(v11);
          if (v13)
          {
            v14 = v13;
            v15 = malloc_type_malloc(v13, 0x100004077774924uLL);
            *a3 = v15;
            memcpy(v15, v12, v14);
            v16 = 1;
LABEL_37:
            _CSFinishPreparedStatement(v7);
            goto LABEL_38;
          }

          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSKeyForRegisteredChunk_cold_1();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Bad size for key...");
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSKeyForRegisteredChunk_cold_2();
            }

            v25 = CK_DEFAULT_LOG_INTERNAL_1;
            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_54;
            }

            *buf = 138543362;
            v27 = v16;
LABEL_53:
            _os_log_impl(&dword_243431000, v25, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_54:
            if (!v16)
            {
              goto LABEL_37;
            }

            CFRelease(v16);
          }
        }

        else
        {
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSKeyForRegisteredChunk_cold_3();
          }

          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            v16 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"sqlite3_column_blob returned NULL.");
            if (CK_DEFAULT_LOG_BLOCK_1 != -1)
            {
              _CSKeyForRegisteredChunk_cold_4();
            }

            v25 = CK_DEFAULT_LOG_INTERNAL_1;
            if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_54;
            }

            *buf = 138543362;
            v27 = v16;
            goto LABEL_53;
          }
        }
      }

      else
      {
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSKeyForRegisteredChunk_cold_5();
        }

        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v19 = *MEMORY[0x277CBECE8];
          v20 = sqlite3_errmsg(*(a1 + 24));
          v21 = CFStringCreateWithFormat(v19, 0, @"sqlite3_step returned: %d %s, for signature: ", v10, v20);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            _CSKeyForRegisteredChunk_cold_6();
          }

          v22 = CK_DEFAULT_LOG_INTERNAL_1;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v27 = v21;
            _os_log_impl(&dword_243431000, v22, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          }

          if (v21)
          {
            CFRelease(v21);
          }
        }

        printSignature(a2);
      }
    }

    v16 = 0;
    goto LABEL_37;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSKeyForRegisteredChunk_cold_7();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"null sqlite3_stmt\n");
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSKeyForRegisteredChunk_cold_8();
    }

    v18 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 138543362;
    v27 = v17;
LABEL_22:
    _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
LABEL_23:
    if (v17)
    {
      CFRelease(v17);
    }
  }

LABEL_25:
  v16 = 0;
LABEL_38:
  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t _CSUnregisterAllChunksForItem(uint64_t a1, sqlite3_int64 a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 17) == 1)
  {
    _CSUnregisterAllChunksForItem_cold_5();
  }

  if (gVerbose == 2)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSUnregisterAllChunksForItem_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG) && os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unregistering all chunks for itemID:%lld", a2);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSUnregisterAllChunksForItem_cold_2();
      }

      v5 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v18 = v4;
        _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  v6 = _CSPrepareStatement(a1, @"DELETE FROM CSChunkTable WHERE ct_iid = ?", "DELETE FROM CSChunkTable WHERE ct_iid = ?");
  v7 = v6;
  if (!v6)
  {
    goto LABEL_24;
  }

  v8 = 1;
  sqlite3_bind_int64(v6[2], 1, a2);
  v9 = CS_sqlite3_step(v7);
  if (v9 != 101)
  {
    v10 = v9;
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSUnregisterAllChunksForItem_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v11 = *MEMORY[0x277CBECE8];
      v12 = sqlite3_errmsg(*(a1 + 24));
      v13 = CFStringCreateWithFormat(v11, 0, @"sqlite3_step returned: %d %s\n", v10, v12);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSUnregisterAllChunksForItem_cold_4();
      }

      v14 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v13;
        _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v13)
      {
        CFRelease(v13);
      }
    }

LABEL_24:
    v8 = 0;
  }

  _CSFinishPreparedStatement(v7);
  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t _CSRegisteredItemCount(uint64_t a1, sqlite3_int64 *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *a2 = 0;
  }

  v4 = _CSPrepareStatement(a1, @"SELECT count(*) FROM CSRegisteredFileTable", "SELECT count(*) FROM CSRegisteredFileTable");
  v5 = v4;
  if (!v4)
  {
    goto LABEL_17;
  }

  v6 = CS_sqlite3_step(v4);
  if (v6 == 100)
  {
    v7 = sqlite3_column_int64(v5[2], 0);
    if (a2)
    {
      *a2 = v7;
    }

    v8 = 1;
    goto LABEL_18;
  }

  v9 = v6;
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSRegisteredItemCount_cold_1();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v10 = *MEMORY[0x277CBECE8];
  v11 = sqlite3_errmsg(*(a1 + 24));
  v8 = CFStringCreateWithFormat(v10, 0, @"sqlite3_step returned: %d %s\n", v9, v11);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSRegisteredItemCount_cold_2();
  }

  v12 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (v8)
  {
    CFRelease(v8);
    goto LABEL_17;
  }

LABEL_18:
  _CSFinishPreparedStatement(v5);
  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t _CSGetRegisteredItems(uint64_t a1, sqlite3_int64 a2, uint64_t a3, sqlite3_int64 *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    _CSGetRegisteredItems_cold_4();
  }

  v5 = *a4;
  if (!*a4)
  {
    _CSGetRegisteredItems_cold_3();
  }

  *a4 = 0;
  v9 = _CSPrepareStatement(a1, @"SELECT crt_iid FROM CSRegisteredFileTable WHERE crt_iid > ? ORDER BY crt_iid ASC LIMIT ?", "SELECT crt_iid FROM CSRegisteredFileTable WHERE crt_iid > ? ORDER BY crt_iid ASC LIMIT ?");
  v10 = v9;
  if (!v9)
  {
    v15 = 0;
    i = 0;
    goto LABEL_22;
  }

  sqlite3_bind_int64(v9[2], 1, a2);
  sqlite3_bind_int64(v10[2], 2, v5);
  for (i = 0; ; ++i)
  {
    v12 = CS_sqlite3_step(v10);
    if (v12 != 100)
    {
      break;
    }

    v13 = sqlite3_column_int64(v10[2], 0);
    if (a3)
    {
      *(a3 + 8 * i) = v13;
    }
  }

  v14 = v12;
  if (v12 == 101)
  {
    v15 = 1;
    goto LABEL_22;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSGetRegisteredItems_cold_1();
  }

  if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v16 = *MEMORY[0x277CBECE8];
  v17 = sqlite3_errmsg(*(a1 + 24));
  v15 = CFStringCreateWithFormat(v16, 0, @"sqlite3_step returned: %d %s\n", v14, v17);
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSGetRegisteredItems_cold_2();
  }

  v18 = CK_DEFAULT_LOG_INTERNAL_1;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v22 = v15;
    _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (v15)
  {
    CFRelease(v15);
    goto LABEL_21;
  }

LABEL_22:
  _CSFinishPreparedStatement(v10);
  *a4 = i;
  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

os_log_t __CSChunkStoreOpenDB_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSChunkStoreOpenDB_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSChunkStoreOpenDB_block_invoke_1631()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSChunkStoreOpenDB_block_invoke_2_1635()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSChunkStoreOpenDB_block_invoke_1639()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSChunkStoreOpenDB_block_invoke_2_1643()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSChunkStoreOpenDB_block_invoke_1647()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSChunkStoreOpenDB_block_invoke_2_1654()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSChunkStoreOpenDB_block_invoke_1658()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSChunkStoreOpenDB_block_invoke_2_1665()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSRename_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSRename_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSRename_block_invoke_1679()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSRename_block_invoke_2_1686()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSRename_block_invoke_1690()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __CSRename_block_invoke_2_1697()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

void _CSFinalizeDBStmts(const __CFString *a1, sqlite3_stmt **a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    _CSFinalizeDBStmts_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    bzero(buffer, 0x400uLL);
    if (CFStringGetCString(a1, buffer, 1024, 0x8000100u))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSFinalizeDBStmts_cold_2();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"finalizing %s\n", buffer);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          _CSFinalizeDBStmts_cold_3();
        }

        v7 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v15 = v6;
          _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v6)
        {
          CFRelease(v6);
        }
      }
    }
  }

  v8 = sqlite3_finalize(a2[2]);
  free(a2);
  if (v8)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSFinalizeDBStmts_cold_4();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v9 = *MEMORY[0x277CBECE8];
      v10 = sqlite3_errmsg(*(a3 + 24));
      v11 = CFStringCreateWithFormat(v9, 0, @"sqlite3_finalize returned %d: %s", v8, v10);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSFinalizeDBStmts_cold_5();
      }

      v12 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buffer = 138543362;
        v17 = v11;
        _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buffer, 0xCu);
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void _CSReleaseOrphanedChunks(uint64_t a1, sqlite3_int64 *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (a3)
    {
      v6 = _CSChunkSignatureForToken(a1, *a2, 0);
      if (v6)
      {
        v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
        if (v7)
        {
          v8 = v7;
          v9 = 0;
          v10 = *MEMORY[0x277CBECE8];
          do
          {
            if (_CSChunkSignatureForToken(a1, a2[v9], v8) && !_CSReleaseChunkForSignature(a1, v8))
            {
              if (CK_DEFAULT_LOG_BLOCK_1 != -1)
              {
                _CSReleaseOrphanedChunks_cold_1();
              }

              if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
              {
                v11 = CFStringCreateWithFormat(v10, 0, @"Unable to release chunk at token %lld (%llu)\n", a2[v9], v9);
                if (CK_DEFAULT_LOG_BLOCK_1 != -1)
                {
                  _CSReleaseOrphanedChunks_cold_2();
                }

                v12 = CK_DEFAULT_LOG_INTERNAL_1;
                if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v15 = v11;
                  _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
                }

                if (v11)
                {
                  CFRelease(v11);
                }
              }
            }

            ++v9;
          }

          while (a3 != v9);
          free(v8);
        }
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

os_log_t __fsopen_block_invoke_0()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunks_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunks_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_1871()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_2_1878()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_1886()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_2_1893()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_1897()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_2_1904()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_1908()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_2_1912()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_1916()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_2_1923()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_1931()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_2_1938()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

uint64_t truncateStorageFile(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v66 = *MEMORY[0x277D85DE8];
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    truncateStorageFile_cold_1();
  }

  v10 = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG);
  v11 = MEMORY[0x277CBECE8];
  if (v10)
  {
    v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"ftRowId:%llu, offset:0x%llx, spaceDelta:%llu\n", a2, a3, a4);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_2();
    }

    v13 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v65 = v12;
      _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  _CSCloseCachedStorageFile(a1, a2, 0);
  bzero(buf, 0x400uLL);
  if (!__CSCreateStoragePath(a1, a2, 0, buf, 0x400uLL))
  {
    goto LABEL_50;
  }

  v14 = open(buf, 2, 384);
  v15 = v14;
  if (v14 == -1)
  {
    if (!a3 && *__error() == 2)
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        truncateStorageFile_cold_21();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        v20 = CFStringCreateWithFormat(*v11, 0, @"open failed for %s with ENOENT, but we can clear the storage file reference anyway", buf);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          truncateStorageFile_cold_22();
        }

        v21 = CK_DEFAULT_LOG_INTERNAL_1;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          v63.st_dev = 138543362;
          *&v63.st_mode = v20;
          _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", &v63, 0xCu);
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }

LABEL_33:
      v22 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSChunkTable WHERE ft_rowid = %lld", a2);
      if (v22)
      {
        v23 = v22;
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          truncateStorageFile_cold_23();
        }

        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_142;
        }

        v24 = *v11;
        v25 = sqlite3_errmsg(*(a1 + 24));
        v26 = CFStringCreateWithFormat(v24, 0, @"sqlite3_step error: %d, %s", v23, v25);
        if (CK_DEFAULT_LOG_BLOCK_1 != -1)
        {
          truncateStorageFile_cold_24();
        }

        v27 = CK_DEFAULT_LOG_INTERNAL_1;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_140;
        }

        v63.st_dev = 138543362;
        *&v63.st_mode = v26;
      }

      else
      {
        v42 = CSsql_corruption_checking_do_0(a1, *(a1 + 24), "DELETE FROM CSStorageFileTable WHERE ft_rowid = %lld", a2);
        if (v42)
        {
          v43 = v42;
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            truncateStorageFile_cold_25();
          }

          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_142;
          }

          v44 = *v11;
          v45 = sqlite3_errmsg(*(a1 + 24));
          v26 = CFStringCreateWithFormat(v44, 0, @"CSsql_do error: %d, %s", v43, v45);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            truncateStorageFile_cold_26();
          }

          v27 = CK_DEFAULT_LOG_INTERNAL_1;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_140;
          }

          v63.st_dev = 138543362;
          *&v63.st_mode = v26;
        }

        else
        {
          if (!unlink(buf))
          {
            v33 = 0;
LABEL_143:
            if (v15 == -1)
            {
              goto LABEL_145;
            }

            goto LABEL_144;
          }

          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            truncateStorageFile_cold_27();
          }

          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
LABEL_142:
            v33 = 0xFFFFFFFFLL;
            goto LABEL_143;
          }

          v53 = *v11;
          v54 = __error();
          v55 = strerror(*v54);
          v26 = CFStringCreateWithFormat(v53, 0, @"unlink failed for ftRowId:%llu, path:%s: %s\n", a2, buf, v55);
          if (CK_DEFAULT_LOG_BLOCK_1 != -1)
          {
            truncateStorageFile_cold_28();
          }

          v27 = CK_DEFAULT_LOG_INTERNAL_1;
          if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
          {
LABEL_140:
            if (v26)
            {
              CFRelease(v26);
            }

            goto LABEL_142;
          }

          v63.st_dev = 138543362;
          *&v63.st_mode = v26;
        }
      }

      _os_log_impl(&dword_243431000, v27, OS_LOG_TYPE_ERROR, "%{public}@", &v63, 0xCu);
      goto LABEL_140;
    }

    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_19();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v33 = 0xFFFFFFFFLL;
      goto LABEL_147;
    }

    v28 = *v11;
    v29 = __error();
    v30 = strerror(*v29);
    v31 = CFStringCreateWithFormat(v28, 0, @"open failed for %s: %s", buf, v30);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_20();
    }

    v32 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v63.st_dev = 138543362;
      *&v63.st_mode = v31;
      _os_log_impl(&dword_243431000, v32, OS_LOG_TYPE_ERROR, "%{public}@", &v63, 0xCu);
    }

    if (v31)
    {
      CFRelease(v31);
    }

LABEL_50:
    v33 = 0xFFFFFFFFLL;
    goto LABEL_145;
  }

  if (!a3)
  {
    goto LABEL_33;
  }

  memset(&v63, 0, sizeof(v63));
  if (fstat(v14, &v63) == -1)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_17();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

    v34 = *MEMORY[0x277CBECE8];
    v35 = __error();
    v36 = strerror(*v35);
    v18 = CFStringCreateWithFormat(v34, 0, @"fstat failed for %s: %s", buf, v36);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_18();
    }

    v19 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_128;
    }

    *v61 = 138543362;
    v62 = v18;
    goto LABEL_127;
  }

  st_size = v63.st_size;
  v17 = v63.st_size - a3;
  if (v63.st_size < a3)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_15();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_130;
    }

    v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Invalid file size/offset for %s: fileSize:0x%llx, offset:0x%llx\n", buf, st_size, a3);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_16();
    }

    v19 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_128;
    }

    *v61 = 138543362;
    v62 = v18;
    goto LABEL_127;
  }

  v11 = MEMORY[0x277CBECE8];
  if (v17 != a4)
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_3();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEFAULT))
    {
      v37 = CFStringCreateWithFormat(*v11, 0, @"Invalid free space for %s: diffSize:%llu, spaceDelta:%llu\n", buf, v17, a4);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        truncateStorageFile_cold_4();
      }

      v38 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 138543362;
        v62 = v37;
        _os_log_impl(&dword_243431000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@", v61, 0xCu);
      }

      v11 = MEMORY[0x277CBECE8];
      if (v37)
      {
        CFRelease(v37);
      }
    }
  }

  if (a4)
  {
    v39 = CSsql_get64(a1, 1, "SELECT ft_space FROM CSStorageFileTable WHERE ft_rowid = %lld", a2);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_5();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      cf = CFStringCreateWithFormat(*v11, 0, @"Updating free space for ftRowId:%llu, spaceDelta:%llu, space:%llu\n", a2, a4, v39);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        truncateStorageFile_cold_6();
      }

      v40 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *v61 = 138543362;
        v62 = cf;
        _os_log_impl(&dword_243431000, v40, OS_LOG_TYPE_DEBUG, "%{public}@", v61, 0xCu);
      }

      v11 = MEMORY[0x277CBECE8];
      if (cf)
      {
        CFRelease(cf);
      }
    }

    v41 = &v39[a4] >= 0x1400064 ? 20971620 : &v39[a4];
    if (CSsql_corruption_checking_do_0(a1, *(a1 + 24), "UPDATE CSStorageFileTable SET ft_space = %lld WHERE ft_rowid = %lld", v41, a2))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        truncateStorageFile_cold_7();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_130;
      }

      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to set the free space for ftRowId:%llu, path:%s, space:0x%llx\n", a2, buf, v41);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        truncateStorageFile_cold_8();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_128;
      }

      *v61 = 138543362;
      v62 = v18;
      goto LABEL_127;
    }
  }

  if (a5)
  {
    v46 = CSsql_get64(a1, 1, "SELECT ft_pspace FROM CSStorageFileTable WHERE ft_rowid = %lld", a2);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_9();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v47 = CFStringCreateWithFormat(*v11, 0, @"Updating free pspace for ftRowId:%llu, pspaceDelta:%llu, pspace:%llu\n", a2, a5, v46);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        truncateStorageFile_cold_10();
      }

      v48 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
      {
        *v61 = 138543362;
        v62 = v47;
        _os_log_impl(&dword_243431000, v48, OS_LOG_TYPE_DEBUG, "%{public}@", v61, 0xCu);
      }

      v11 = MEMORY[0x277CBECE8];
      if (v47)
      {
        CFRelease(v47);
      }
    }

    v49 = v46 >= a5 ? &v46[-a5] : 0;
    if (CSsql_corruption_checking_do_0(a1, *(a1 + 24), "UPDATE CSStorageFileTable SET ft_pspace = %lld WHERE ft_rowid = %lld", v49, a2))
    {
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        truncateStorageFile_cold_11();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_130;
      }

      v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"failed to set the free pspace for ftRowId:%llu, path:%s, pspace:0x%llx\n", a2, buf, v49);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        truncateStorageFile_cold_12();
      }

      v19 = CK_DEFAULT_LOG_INTERNAL_1;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_128;
      }

      *v61 = 138543362;
      v62 = v18;
      goto LABEL_127;
    }
  }

  if (!ftruncate(v15, a3))
  {
    v33 = 0;
    goto LABEL_144;
  }

  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    truncateStorageFile_cold_13();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
  {
    v50 = *MEMORY[0x277CBECE8];
    v51 = __error();
    v52 = strerror(*v51);
    v18 = CFStringCreateWithFormat(v50, 0, @"ftruncate failed for ftRowId:%llu, path:%s, offset:0x%llx: %s\n", a2, buf, a3, v52);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_14();
    }

    v19 = CK_DEFAULT_LOG_INTERNAL_1;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_128;
    }

    *v61 = 138543362;
    v62 = v18;
LABEL_127:
    _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_ERROR, "%{public}@", v61, 0xCu);
LABEL_128:
    if (v18)
    {
      CFRelease(v18);
    }
  }

LABEL_130:
  v33 = 0xFFFFFFFFLL;
  v11 = MEMORY[0x277CBECE8];
LABEL_144:
  close(v15);
LABEL_145:
  if (CK_DEFAULT_LOG_BLOCK_1 != -1)
  {
    truncateStorageFile_cold_29();
  }

LABEL_147:
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
  {
    v56 = CFStringCreateWithFormat(*v11, 0, @"ftRowId:%llu, rc:%d\n", a2, v33);
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      truncateStorageFile_cold_30();
    }

    v57 = CK_DEFAULT_LOG_INTERNAL_1;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_DEBUG))
    {
      v63.st_dev = 138543362;
      *&v63.st_mode = v56;
      _os_log_impl(&dword_243431000, v57, OS_LOG_TYPE_DEBUG, "%{public}@", &v63, 0xCu);
    }

    if (v56)
    {
      CFRelease(v56);
    }
  }

  v58 = *MEMORY[0x277D85DE8];
  return v33;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_1942()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __removeUnreferencedChunksAtEof_block_invoke_2_1949()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_1962()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_1969()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_1973()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_1980()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_1985()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_1989()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_1994()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_2001()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2005()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_2012()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2016()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_2023()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2027()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_2034()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2038()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_2045()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2049()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_2056()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2060()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_2067()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2071()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_2078()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2082()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_2089()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2093()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_2100()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2104()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __truncateStorageFile_block_invoke_2_2111()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __copyReferencedChunks_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

os_log_t __copyReferencedChunks_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_1 = result;
  return result;
}

void _CSHandleCorruptDatabase(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  bzero(__s, 0x400uLL);
  if (CKChunkStoreGetLocation(a1, __s, 0x400uLL) && (v2 = strlen(__s), 1024 - v2 <= snprintf(&__s[v2], 1024 - v2, "/%s", "ChunkStoreDatabase")))
  {
    if (CK_DEFAULT_LOG_BLOCK_1 != -1)
    {
      _CSHandleCorruptDatabase_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"safe_snprintf truncated %s", __s);
      if (CK_DEFAULT_LOG_BLOCK_1 != -1)
      {
        _CSHandleCorruptDatabase_cold_2();
      }

      v5 = CK_DEFAULT_LOG_INTERNAL_1;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_1, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v7 = v4;
        _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }
  }

  else
  {
    _CSBruteForceDatabaseCorruptionRecovery(__s, *(a1 + 24), *(a1 + 104) != 0);
  }

  v3 = *MEMORY[0x277D85DE8];
}

uint64_t CSChunkCopier_Destroy(uint64_t a1, CFErrorRef *a2)
{
  if (a1 && (v4 = *(a1 + 72)) != 0)
  {
    v5 = v4[1];
    if (v5)
    {
      free(v5);
    }

    free(v4);
    *(a1 + 72) = 0;
    return 1;
  }

  else
  {
    v7 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
    result = 0;
    *a2 = v7;
  }

  return result;
}

uint64_t CSChunkCopier_Initialize(uint64_t a1, int a2, CFErrorRef *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0;
  theData = 0;
  if (CSCopier_ExportCopyCredentials(a1, &theData, &v15, a3))
  {
    v6 = malloc_type_malloc(0x10uLL, 0x600405C6656D0uLL);
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v19 = 0;
      v18 = 0;
      v17 = a2;
      do
      {
        v9 = *(&v17 + v8);
        *(&v17 + v8) = CFDataGetBytePtr(theData)[v8] ^ v9;
        ++v8;
      }

      while (v8 != 8);
      v10 = ccaes_ctr_crypt_mode();
      *v7 = v10;
      v7[1] = malloc_type_malloc(*v10, 0x1000040451B5BE8uLL);
      v11 = *v7;
      CFDataGetLength(v15);
      CFDataGetBytePtr(v15);
      ccctr_init();
      cc_clear();
      *(a1 + 72) = v7;
      v12 = 1;
    }

    else
    {
      v12 = 0;
      *a3 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 1, 0);
    }
  }

  else
  {
    v12 = 0;
  }

  if (theData)
  {
    CFRelease(theData);
    theData = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t CSChunkCopier_Update(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    ccctr_update();
    return 1;
  }

  else
  {
    v9 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 7, 0);
    result = 0;
    *a4 = v9;
  }

  return result;
}

uint64_t CSContext_Initialize(void *a1, CFErrorRef *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x50uLL, 0x600401D44175AuLL);
  if (v4)
  {
    v4[3] = 0u;
    v4[4] = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    *a1 = v4;
    return 1;
  }

  else
  {
    *a1 = 0;
    v6 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 1, 0);
    result = 0;
    *a2 = v6;
  }

  return result;
}

uint64_t CSContext_InititializeFromBoundaryKey(const __CFData *a1, uint64_t a2, CFMutableDataRef **a3, CFErrorRef *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = malloc_type_calloc(1uLL, 0x50uLL, 0x600401D44175AuLL);
  if (!v8)
  {
    *a3 = 0;
    v13 = *MEMORY[0x277CBECE8];
    v14 = *MEMORY[0x277CBEE48];
    v15 = 1;
    goto LABEL_9;
  }

  v9 = v8;
  *(v8 + 3) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  *v8 = 0u;
  v10 = *MEMORY[0x277CBECE8];
  Length = CFDataGetLength(a1);
  *v9 = CFDataCreateMutableCopy(v10, Length, a1);
  if (!a2)
  {
    ccsha256_di();
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    *bytes = 0u;
    v19 = 0u;
    if (!cchkdf())
    {
      v9[3] = CFDataCreate(v10, bytes, 32);
      *bytes = 0u;
      v19 = 0u;
      if (!cchkdf())
      {
        v9[2] = CFDataCreate(v10, bytes, 32);
        *bytes = 0u;
        v19 = 0u;
        if (!cchkdf())
        {
          v9[4] = CFDataCreate(v10, bytes, 32);
          cc_clear();
          goto LABEL_3;
        }
      }
    }

    cc_clear();
    free(v9);
    *a3 = 0;
    v14 = *MEMORY[0x277CBEE48];
    v13 = v10;
    v15 = 2;
LABEL_9:
    v16 = CFErrorCreate(v13, v14, v15, 0);
    result = 0;
    *a4 = v16;
    goto LABEL_10;
  }

LABEL_3:
  *a3 = v9;
  result = 1;
LABEL_10:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CSContext_InitializeFromChunkKey(const __CFData *a1, uint64_t a2, void *a3, CFErrorRef *a4)
{
  v7 = malloc_type_calloc(1uLL, 0x50uLL, 0x600401D44175AuLL);
  if (v7)
  {
    v8 = v7;
    v7[3] = 0u;
    v7[4] = 0u;
    v7[1] = 0u;
    v7[2] = 0u;
    *v7 = 0u;
    if (a1)
    {
      v9 = *MEMORY[0x277CBECE8];
      Length = CFDataGetLength(a1);
      *(v8 + 3) = CFDataCreateMutableCopy(v9, Length, a1);
      *a3 = v8;
      return 1;
    }

    free(v7);
    *a3 = 0;
    v12 = *MEMORY[0x277CBECE8];
    v13 = *MEMORY[0x277CBEE48];
    v14 = 2;
  }

  else
  {
    *a3 = 0;
    v12 = *MEMORY[0x277CBECE8];
    v13 = *MEMORY[0x277CBEE48];
    v14 = 1;
  }

  v15 = CFErrorCreate(v12, v13, v14, 0);
  result = 0;
  *a4 = v15;
  return result;
}

uint64_t CSContext_InitializeFromFileKey(const __CFData *a1, uint64_t a2, void *a3, CFErrorRef *a4)
{
  v7 = malloc_type_calloc(1uLL, 0x50uLL, 0x600401D44175AuLL);
  if (v7)
  {
    v8 = v7;
    v7[3] = 0u;
    v7[4] = 0u;
    v7[1] = 0u;
    v7[2] = 0u;
    *v7 = 0u;
    if (a1)
    {
      v9 = *MEMORY[0x277CBECE8];
      Length = CFDataGetLength(a1);
      *(v8 + 2) = CFDataCreateMutableCopy(v9, Length, a1);
      *a3 = v8;
      return 1;
    }

    free(v7);
    *a3 = 0;
    v12 = *MEMORY[0x277CBECE8];
    v13 = *MEMORY[0x277CBEE48];
    v14 = 2;
  }

  else
  {
    *a3 = 0;
    v12 = *MEMORY[0x277CBECE8];
    v13 = *MEMORY[0x277CBEE48];
    v14 = 1;
  }

  v15 = CFErrorCreate(v12, v13, v14, 0);
  result = 0;
  *a4 = v15;
  return result;
}

uint64_t CSContext_Destroy(const void **a1, CFErrorRef *a2)
{
  if (a1)
  {
    v4 = *a1;
    if (v4)
    {
      CFRelease(v4);
      *a1 = 0;
    }

    v5 = a1[1];
    if (v5)
    {
      CFRelease(v5);
      a1[1] = 0;
    }

    v6 = a1[2];
    if (v6)
    {
      CFRelease(v6);
      a1[2] = 0;
    }

    v7 = a1[3];
    if (v7)
    {
      CFRelease(v7);
      a1[3] = 0;
    }

    v8 = a1[4];
    if (v8)
    {
      CFRelease(v8);
      a1[4] = 0;
    }

    if (a1[5])
    {
      v9 = CSFileDigester_Destroy(a1, a2) | 1;
      a1[5] = 0;
    }

    else
    {
      v9 = 1;
    }

    if (a1[6])
    {
      v9 = CSChunkDigester_Destroy(a1, a2) | v9;
      a1[6] = 0;
    }

    if (a1[7])
    {
      v9 = CSChunkCryptor_Destroy(a1, a2) | v9;
      a1[7] = 0;
    }

    if (a1[8])
    {
      v9 = CSCopier_Destroy(a1, a2) | v9;
      a1[8] = 0;
    }

    if (a1[9])
    {
      v9 = CSChunkCopier_Destroy(a1, a2) | v9;
    }

    free(a1);
  }

  else
  {
    v9 = 0;
    *a2 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], 6, 0);
  }

  return v9;
}

void CKChunkCryptorV1Finalize(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (*(v2 + 8))
  {
    off_28562C120();
    free(*(*(a1 + 40) + 8));
    *(*(a1 + 40) + 8) = 0;
    v2 = *(a1 + 40);
  }

  v3 = CCCryptorRelease(*v2);
  if (v3)
  {
    v4 = v3;
    if (CK_DEFAULT_LOG_BLOCK_2 != -1)
    {
      CKChunkCryptorV1Finalize_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
    {
      v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CCCryptorRelease() => %d\n", v4);
      if (CK_DEFAULT_LOG_BLOCK_2 != -1)
      {
        CKChunkCryptorV1Finalize_cold_2();
      }

      v6 = CK_DEFAULT_LOG_INTERNAL_2;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v9 = v5;
        _os_log_impl(&dword_243431000, v6, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  **(a1 + 40) = 0;
  v7 = *MEMORY[0x277D85DE8];
}

os_log_t __CKChunkCryptorV1Finalize_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_2 = result;
  return result;
}

os_log_t __CKChunkCryptorV1Finalize_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_2 = result;
  return result;
}

BOOL CKChunkCryptorV1Init(uint64_t a1, char a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = CKChunkDigestResultsChunkKey(a3);
  v6 = CKChunkEncryptionKeySize(v5);
  if (v6 != 16)
  {
    if (CK_DEFAULT_LOG_BLOCK_2 != -1)
    {
      CKChunkCryptorV1Init_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"expected key size 16; got %u\n", v6);
      if (CK_DEFAULT_LOG_BLOCK_2 != -1)
      {
        CKChunkCryptorV1Init_cold_2();
      }

      v8 = CK_DEFAULT_LOG_INTERNAL_2;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v7;
        _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }

  *(a1 + 32) = a2;
  v20 = 0u;
  v21 = 0u;
  *buf = 0u;
  v19 = 0u;
  v9 = CCCryptorCreate(0, 0, 2u, v5 + 1, v6, buf, *(a1 + 40));
  *(*(a1 + 40) + 8) = malloc_type_malloc(modeCFB_desc, 0x1000040881B329AuLL);
  v10 = *(a1 + 40);
  v11 = *(v10 + 8);
  if (!v11)
  {
    goto LABEL_22;
  }

  (off_28562C108)(*v10, 0, v11);
  if (!v9)
  {
    result = 1;
    goto LABEL_24;
  }

  if (CK_DEFAULT_LOG_BLOCK_2 != -1)
  {
    CKChunkCryptorV1Init_cold_3();
  }

  result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v13 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"CCCryptorCreate() => %d\n", v9);
    if (CK_DEFAULT_LOG_BLOCK_2 != -1)
    {
      CKChunkCryptorV1Init_cold_4();
    }

    v14 = CK_DEFAULT_LOG_INTERNAL_2;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
    {
      *v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_ERROR, "%{public}@", v16, 0xCu);
    }

    if (v13)
    {
      CFRelease(v13);
    }

LABEL_22:
    result = 0;
  }

LABEL_24:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __CKChunkCryptorV1Init_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_2 = result;
  return result;
}

os_log_t __CKChunkCryptorV1Init_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_2 = result;
  return result;
}

os_log_t __CKChunkCryptorV1Init_block_invoke_16()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_2 = result;
  return result;
}

os_log_t __CKChunkCryptorV1Init_block_invoke_2_23()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_2 = result;
  return result;
}

BOOL CKChunkCryptorV1Update(uint64_t a1, char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *v4;
  v6 = *(v4 + 8);
  if (v3)
  {
    v7 = (off_28562C110[0])(v5, a2, a2, a3, v6);
  }

  else
  {
    v7 = (off_28562C118)(v5, a2, a2, a3, v6);
  }

  if (v7)
  {
    if (CK_DEFAULT_LOG_BLOCK_2 != -1)
    {
      CKChunkCryptorV1Update_cold_1();
    }

    result = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"crypting:CCCryptorUpdate() => %d\n", 4294962996);
      if (CK_DEFAULT_LOG_BLOCK_2 != -1)
      {
        CKChunkCryptorV1Update_cold_2();
      }

      v10 = CK_DEFAULT_LOG_INTERNAL_2;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      result = 0;
    }
  }

  else
  {
    result = 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __CKChunkCryptorV1Update_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_2 = result;
  return result;
}

os_log_t __CKChunkCryptorV1Update_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_2 = result;
  return result;
}

uint64_t CKChunkDigestArgumentsV2Alloc(void *a1)
{
  *a1 = 0;
  v3 = 0;
  result = CKChunkDigestArgumentsAllocate(&v3, 2, 16);
  if (result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t CKChunkDigestArgumentsV2ChunkSchemeByte(uint64_t a1)
{
  if (*(a1 + 20))
  {
    return 132;
  }

  else
  {
    return 4;
  }
}

void CKChunkDigestArgumentsV2Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*v2)
  {
    CKBaseRelease(*v2);
    v2 = *(a1 + 24);
  }

  *v2 = 0;
  v3 = *(a1 + 24);
  v4 = *(v3 + 8);
  if (v4)
  {
    CKBaseRelease(v4);
    v3 = *(a1 + 24);
  }

  *(v3 + 8) = 0;
}

__CFString *CKChunkDigestArgumentsV2CopyDescription(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*v1)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"v2 boundaryKey");
  }

  if (v1[1])
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"v2 chunkKey");
  }

  return @"v2 invalid";
}

uint64_t _CKChunkDigestArgumentsV2Create(void *a1, const void *a2, const void *a3, CFTypeRef *a4)
{
  v15 = 0;
  cf = 0;
  *a1 = 0;
  v8 = CKChunkDigestArgumentsAllocate(&v15, 2, 16);
  v9 = 0;
  v10 = v15;
  if (!v8 || !v15)
  {
    goto LABEL_17;
  }

  if (!_CKChunkDigestArgumentsInit(v15, 1, &cf))
  {
    v9 = 0;
    v12 = cf;
    if (a4 && cf)
    {
      CFRetain(cf);
      v9 = 0;
      v12 = cf;
      *a4 = cf;
    }

    goto LABEL_14;
  }

  if (a2)
  {
    CFRetain(a2);
    **(v15 + 3) = a2;
  }

  if (a3)
  {
    CFRetain(a3);
    v11 = v15;
    *(*(v15 + 3) + 8) = a3;
  }

  else
  {
    v11 = v15;
    if (!v15)
    {
      v13 = 0;
      goto LABEL_13;
    }
  }

  CFRetain(v11);
  v13 = v15;
LABEL_13:
  *a1 = v13;
  v9 = 1;
  v12 = cf;
LABEL_14:
  if (v12)
  {
    CFRelease(v12);
  }

  v10 = v15;
LABEL_17:
  if (v10)
  {
    CFRelease(v10);
  }

  return v9;
}

void *CKFileSignatureCopy(_BYTE *a1)
{
  v2 = CKFileSignatureSize(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_malloc(v2 + 1, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, v3 + 1);
}

uint64_t CKFileSchemeAndSignatureSize(_BYTE *a1)
{
  v1 = CKFileSignatureSize(a1);
  if (v1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CKFileSignatureSize(_BYTE *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1 & 0x7F;
  if (v1 - 1) < 0xB && ((0x48Bu >> (v1 - 1)))
  {
    result = 20;
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_3 != -1)
    {
      CKFileSignatureSize_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unknown file signature scheme: 0x%x\n", v1);
      if (CK_DEFAULT_LOG_BLOCK_3 != -1)
      {
        CKFileSignatureSize_cold_2();
      }

      v4 = CK_DEFAULT_LOG_INTERNAL_3;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v7 = v3;
        _os_log_impl(&dword_243431000, v4, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }

    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __CKFileSignatureSize_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_3 = result;
  return result;
}

os_log_t __CKFileSignatureSize_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_3 = result;
  return result;
}

void *CKFileSchemeAndSignatureCopyCString(char *a1)
{
  v2 = CKFileSignatureSize(a1);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = malloc_type_malloc((2 * v3) | 1, 0x100004077774924uLL);
  CShex_to_string(a1, v3, v4);
  return v4;
}

BOOL CKFileSignatureIsValidN(_BYTE *a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = CKFileSignatureSize(a1);
    if (v5)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = 0;
    }

    return v6 == a2;
  }

  return result;
}

void *CKFileSignatureCreateWithHexString(char *a1)
{
  v6 = 0;
  v7 = 0;
  if (ck_buffer_create_with_hex_string(a1, &v7, &v6))
  {
    v2 = v6;
    result = v7;
    if (v7)
    {
      v3 = v6 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      goto LABEL_12;
    }

    v4 = CKFileSignatureSize(v7);
    if (v4)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v2)
    {
      return v7;
    }
  }

  result = v7;
LABEL_12:
  if (result)
  {
    free(result);
    return 0;
  }

  return result;
}

BOOL CKFileSignaturesEqual(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = CKFileSignatureSize(a1);
    v6 = v5 == 0;
    if (v5)
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = CKFileSignatureSize(a2);
    v9 = v8 + 1 == v7;
    if (!v8)
    {
      v9 = v6;
    }

    return v9 && memcmp(a1, a2, v7) == 0;
  }

  return result;
}

uint64_t CKFileSignatureGeneratorV1Init(uint64_t a1)
{
  CC_SHA1_Init(*(a1 + 48));
  CC_SHA1_Update(*(a1 + 48), "com.apple.XattrObjectSalt", 0x1Au);
  CC_SHA1_Update(*(a1 + 48), "com.apple.DataObjectSalt", 0x19u);
  *(a1 + 40) = 0;
  return 1;
}

uint64_t CKFileSignatureGeneratorV1Update(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  *(a1 + 40) += a3;
  CC_SHA1_Update(v3, a2, a3);
  return 1;
}

uint64_t CKFileSignatureGeneratorV1Finish(uint64_t a1, uint64_t a2, void *a3, CFErrorRef *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  *md = 0;
  v23 = 0;
  v24 = 0;
  v8 = (a1 + 32);
  if (*(a1 + 32))
  {
    v9 = 0;
    goto LABEL_5;
  }

  CC_SHA1_Final(md, *(a1 + 48));
  v21 = CKFileDigestArgumentsFileSchemeByte(*(a1 + 24));
  v9 = CKFileSchemeAndSignatureSize(&v21);
  v12 = CKFileSignatureSize(&v21);
  if (!v9)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = malloc_type_calloc(1uLL, v9, 0x100004077774924uLL);
  v9 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

  *v14 = v21;
  memcpy(v14 + 1, md, v13);
  CKFileDigestResultsCreate((a1 + 32), v9, *(a1 + 40), 0);
  v15 = *(a1 + 32);
  if (!v15)
  {
    goto LABEL_22;
  }

  if (!a2)
  {
LABEL_5:
    v10 = 1;
    if (!a3)
    {
      goto LABEL_23;
    }

    goto LABEL_6;
  }

  v16 = CKFileDigestResultsEqual(a2, v15);
  if (!v16)
  {
    v17 = CFErrorCreate(*MEMORY[0x277CBECE8], @"com.apple.chunkinglibrary", 3, 0);
    v18 = v17;
    if (a4 && v17)
    {
      CFRetain(v17);
      *a4 = v18;
LABEL_21:
      CFRelease(v18);
      goto LABEL_22;
    }

    if (v17)
    {
      goto LABEL_21;
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v10 = v16;
  if (!a3)
  {
    goto LABEL_23;
  }

LABEL_6:
  if (*v8)
  {
    CFRetain(*v8);
    v11 = *v8;
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
LABEL_23:
  free(v9);
  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t CKFileDigestResultsV2Alloc(void *a1)
{
  *a1 = 0;
  v3 = 0;
  result = CKFileDigestResultsAllocate(&v3, 2, 8);
  if (result)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t CKFileDigestResultsV2Create(void *a1, _BYTE *a2, uint64_t a3, const void *a4)
{
  cf = 0;
  v13 = 0;
  *a1 = 0;
  v8 = CKFileDigestResultsAllocate(&cf, 2, 8);
  v9 = 0;
  v10 = cf;
  if (v8 && cf)
  {
    if (!_CKFileDigestResultsInit(cf, a2, a3, &v13))
    {
      v9 = 0;
      v10 = cf;
      if (!cf)
      {
        return v9;
      }

      goto LABEL_10;
    }

    if (a4)
    {
      CFRetain(a4);
      **(cf + 5) = a4;
    }

    v10 = cf;
    if (cf)
    {
      CFRetain(cf);
      v10 = cf;
    }

    *a1 = v10;
    v9 = 1;
  }

  if (v10)
  {
LABEL_10:
    CFRelease(v10);
  }

  return v9;
}

void CKFileDigestResultsV2Finalize(uint64_t a1)
{
  v2 = **(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
    **(a1 + 40) = 0;
  }
}

BOOL CKFileDigestResultsV2IsEqual(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 != v3)
  {
    if (v2)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      return CKFileSignaturesEqual(v2, v3);
    }

    return 0;
  }

  return 1;
}

CFStringRef CKFileDigestResultsV2CopyDescription(uint64_t a1)
{
  v2 = CKFileSchemeAndSignatureCopyCString(*(a1 + 32));
  v3 = *(a1 + 24);
  if (**(a1 + 40))
  {
    v4 = "present";
  }

  else
  {
    v4 = "not-present";
  }

  v5 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"sig %s len %llu fileVerificationKey %s", v2, *(a1 + 24), v4);
  free(v2);
  return v5;
}

void _CSBruteForceDatabaseCorruptionRecovery(const char *a1, sqlite3 *pDb, char a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    CScloseDB(pDb);
    if (!a1)
    {
      if (CK_DEFAULT_LOG_BLOCK_4 != -1)
      {
        _CSBruteForceDatabaseCorruptionRecovery_cold_11();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
      {
        v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: could not unlink files, dbname null");
        if (CK_DEFAULT_LOG_BLOCK_4 != -1)
        {
          _CSBruteForceDatabaseCorruptionRecovery_cold_12();
        }

        v5 = CK_DEFAULT_LOG_INTERNAL_4;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_18;
        }

        v13 = 138543362;
        v14 = v4;
LABEL_17:
        _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_ERROR, "%{public}@", &v13, 0xCu);
LABEL_18:
        if (v4)
        {
          CFRelease(v4);
        }

        goto LABEL_20;
      }

      goto LABEL_20;
    }

    _CSRemoveDatabaseFilesAtPath(a1);
    if (CSContinueOnCorruptDB())
    {
      if (CK_DEFAULT_LOG_BLOCK_4 != -1)
      {
        _CSBruteForceDatabaseCorruptionRecovery_cold_7();
      }

      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
      {
LABEL_35:
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
        {
          v9 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: aborting");
          if (CK_DEFAULT_LOG_BLOCK_4 != -1)
          {
            _CSBruteForceDatabaseCorruptionRecovery_cold_10();
          }

          v10 = CK_DEFAULT_LOG_INTERNAL_4;
          if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
          {
            v13 = 138543362;
            v14 = v9;
            _os_log_impl(&dword_243431000, v10, OS_LOG_TYPE_ERROR, "%{public}@", &v13, 0xCu);
          }

          if (v9)
          {
            CFRelease(v9);
          }
        }

        abort();
      }

      v7 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: would normally abort here");
      if (CK_DEFAULT_LOG_BLOCK_4 != -1)
      {
        _CSBruteForceDatabaseCorruptionRecovery_cold_8();
      }

      v8 = CK_DEFAULT_LOG_INTERNAL_4;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
      {
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&dword_243431000, v8, OS_LOG_TYPE_ERROR, "%{public}@", &v13, 0xCu);
      }

      if (v7)
      {
        CFRelease(v7);
      }

LABEL_33:
      if (CK_DEFAULT_LOG_BLOCK_4 != -1)
      {
        _CSBruteForceDatabaseCorruptionRecovery_cold_9();
      }

      goto LABEL_35;
    }

    if (os_variant_has_internal_content())
    {
      if (!CSExitOnCorruptDB())
      {
        goto LABEL_33;
      }

      if (CK_DEFAULT_LOG_BLOCK_4 != -1)
      {
        _CSBruteForceDatabaseCorruptionRecovery_cold_5();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
      {
        v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: would normally abort here.  Exiting instead");
        if (CK_DEFAULT_LOG_BLOCK_4 != -1)
        {
          _CSBruteForceDatabaseCorruptionRecovery_cold_6();
        }

        v12 = CK_DEFAULT_LOG_INTERNAL_4;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        v13 = 138543362;
        v14 = v11;
LABEL_57:
        _os_log_impl(&dword_243431000, v12, OS_LOG_TYPE_ERROR, "%{public}@", &v13, 0xCu);
LABEL_58:
        if (v11)
        {
          CFRelease(v11);
        }
      }
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK_4 != -1)
      {
        _CSBruteForceDatabaseCorruptionRecovery_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
      {
        v11 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"exiting due to chunk store database corruption");
        if (CK_DEFAULT_LOG_BLOCK_4 != -1)
        {
          _CSBruteForceDatabaseCorruptionRecovery_cold_4();
        }

        v12 = CK_DEFAULT_LOG_INTERNAL_4;
        if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_58;
        }

        v13 = 138543362;
        v14 = v11;
        goto LABEL_57;
      }
    }

    exit(1);
  }

  if (CK_DEFAULT_LOG_BLOCK_4 != -1)
  {
    _CSBruteForceDatabaseCorruptionRecovery_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: retaining contents, isRegistry false");
    if (CK_DEFAULT_LOG_BLOCK_4 != -1)
    {
      _CSBruteForceDatabaseCorruptionRecovery_cold_2();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_4;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v13 = 138543362;
    v14 = v4;
    goto LABEL_17;
  }

LABEL_20:
  v6 = *MEMORY[0x277D85DE8];
}

void _CSRemoveDatabaseFilesAtPath(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  _CSUnlinkAndLog(a1, "database");
  if (snprintf(__str, 0x400uLL, "%s-journal", a1) <= 0x3FF)
  {
    _CSUnlinkAndLog(__str, "journal");
  }

  if (snprintf(__str, 0x400uLL, "%s-wal", a1) <= 0x3FF)
  {
    _CSUnlinkAndLog(__str, "wal");
  }

  if (snprintf(__str, 0x400uLL, "%s-shm", a1) <= 0x3FF)
  {
    _CSUnlinkAndLog(__str, "shm");
  }

  if (CK_DEFAULT_LOG_BLOCK_4 != -1)
  {
    _CSRemoveDatabaseFilesAtPath_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
  {
    v2 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk store database corruption: unlinked database files");
    if (CK_DEFAULT_LOG_BLOCK_4 != -1)
    {
      _CSRemoveDatabaseFilesAtPath_cold_2();
    }

    v3 = CK_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = v2;
      _os_log_impl(&dword_243431000, v3, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v2)
    {
      CFRelease(v2);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void _CSUnlinkAndLog(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (unlink(a1))
  {
    if (*__error() != 2)
    {
      if (CK_DEFAULT_LOG_BLOCK_4 != -1)
      {
        _CSUnlinkAndLog_cold_1();
      }

      v4 = CK_DEFAULT_LOG_INTERNAL_4;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
      {
        v5 = __error();
        v6 = strerror(*v5);
        v7 = *__error();
        v13 = 136446978;
        v14 = a2;
        v15 = 2080;
        v16 = a1;
        v17 = 2082;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = "chunk store database corruption: unable to unlink %{public}s (%s): %{public}s (%d)";
        v9 = v4;
        v10 = 38;
LABEL_11:
        _os_log_impl(&dword_243431000, v9, OS_LOG_TYPE_ERROR, v8, &v13, v10);
      }
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_4 != -1)
    {
      _CSUnlinkAndLog_cold_2();
    }

    v11 = CK_DEFAULT_LOG_INTERNAL_4;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_4, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446466;
      v14 = a2;
      v15 = 2080;
      v16 = a1;
      v8 = "chunk store database corruption: unlinked %{public}s (%s)";
      v9 = v11;
      v10 = 22;
      goto LABEL_11;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t CKFileDigestArgumentsAllocate(uint64_t *a1, int a2, uint64_t a3)
{
  *a1 = 0;
  v6 = CKTypeRegister(&CKFileDigestArgumentsGetTypeID_typeID);
  result = CKTypeCreateInstance_(0, v6, a3 + 32);
  if (result)
  {
    *(result + 16) = a2;
    *(result + 24) = result + 32;
    *a1 = result;
    return 1;
  }

  return result;
}

uint64_t CKFileDigestArgumentsFileScheme(uint64_t a1)
{
  v1 = _requestCallbacks_4[6 * *(a1 + 16)];
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t CKFileDigestArgumentsFileSchemeByte(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_4[6 * v1 + 1])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKFileDigestArgumentsBoundaryKey(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    return (_requestCallbacks_4[6 * v1 + 2])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKFileDigestArgumentsFileKey(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 2)
  {
    return (_requestCallbacks_4[6 * v1 + 3])();
  }

  else
  {
    return 0;
  }
}

uint64_t _CKFileDigestArgumentsCFFinalize(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return (_requestCallbacks_4[6 * v1 + 5])();
  }

  return result;
}

uint64_t _CKFileDigestArgumentsCFCopyFormatDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_4[6 * v1 + 4])();
  }

  else
  {
    return 0;
  }
}

uint64_t _CKFileDigestArgumentsCFCopyDebugDescription(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (_requestCallbacks_4[6 * v1 + 4])();
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkSignatureSize(_BYTE *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1 & 0x7F;
  if (v1 == 1 || v1 == 4)
  {
    result = 20;
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_5 != -1)
    {
      CKChunkSignatureSize_cold_1();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_ERROR))
    {
      v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unknown chunk signature scheme: 0x%x\n", v1);
      if (CK_DEFAULT_LOG_BLOCK_5 != -1)
      {
        CKChunkSignatureSize_cold_2();
      }

      v5 = CK_DEFAULT_LOG_INTERNAL_5;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v8 = v4;
        _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __CKChunkSignatureSize_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_5 = result;
  return result;
}

os_log_t __CKChunkSignatureSize_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_5 = result;
  return result;
}

uint64_t CKChunkSchemeAndSignatureSize(_BYTE *a1)
{
  v1 = CKChunkSignatureSize(a1);
  if (v1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CKSchemeAndSignatureSize(_BYTE *a1)
{
  v1 = CKChunkSignatureSize(a1);
  if (v1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkSignatureAndKeySize(_BYTE *a1)
{
  v2 = *a1;
  v3 = CKChunkSignatureSize(a1);
  if (v2 < 0)
  {
    v4 = CKChunkSignatureSize(a1);
    if (v4)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    v6 = CKChunkEncryptionKeySize(&a1[v5]);
    if (v6)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = 0;
    }

    v3 += v7;
  }

  return v3;
}

uint64_t CKChunkSchemeAndEncryptionKeySize(unsigned __int8 *a1)
{
  v1 = CKChunkEncryptionKeySize(a1);
  if (v1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkSchemeSignatureAndKeySize(_BYTE *a1)
{
  v2 = *a1;
  v3 = CKChunkSignatureSize(a1);
  if (v3)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v2 < 0)
  {
    v5 = CKChunkEncryptionKeySize(&a1[v4]);
    if (v5)
    {
      v4 += v5 + 1;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t CKSchemeAndEncryptionKeySize(unsigned __int8 *a1)
{
  v1 = CKChunkEncryptionKeySize(a1);
  if (v1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t CKChunkEncryptionKeySize(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*a1 < 0)
  {
    CKChunkEncryptionKeySize_cold_1();
  }

  v1 = *a1;
  if (v1 == 1)
  {
    result = 16;
  }

  else if (v1 == 4)
  {
    result = 32;
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_5 != -1)
    {
      CKChunkEncryptionKeySize_cold_2();
    }

    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_ERROR))
    {
      v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Unknown key scheme: 0x%x\n", v1);
      if (CK_DEFAULT_LOG_BLOCK_5 != -1)
      {
        CKChunkEncryptionKeySize_cold_3();
      }

      v4 = CK_DEFAULT_LOG_INTERNAL_5;
      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v7 = v3;
        _os_log_impl(&dword_243431000, v4, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
      }

      if (v3)
      {
        CFRelease(v3);
      }
    }

    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

os_log_t __CKChunkEncryptionKeySize_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_5 = result;
  return result;
}

os_log_t __CKChunkEncryptionKeySize_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_5 = result;
  return result;
}

uint64_t CKSubchunkBlobSize(unsigned __int8 *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = (a2 + (*a1 << 10) - 1) / (*a1 << 10);
  v3 = CKChunkSignatureSize(a1 + 1);
  if (v3)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 * v2 + 1;
}

uint64_t CKRegisteredChunkSubchunkBlobSize(uint64_t a1)
{
  if (!*(a1 + 29))
  {
    return 0;
  }

  v1 = *(a1 + 24);
  v2 = (a1 + 35 + CKChunkSchemeSignatureAndKeySize((a1 + 35)));

  return CKSubchunkBlobSize(v2, v1);
}

unint64_t CKSubchunkMaxLength(_BYTE *a1)
{
  if (!a1 || !*a1)
  {
    CKSubchunkMaxLength_cold_1();
  }

  return *a1 << 10;
}

void *CKChunkEncryptionKeyCopy(unsigned __int8 *a1)
{
  v2 = CKChunkEncryptionKeySize(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_malloc(v2 + 1, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, v3 + 1);
}

void *CKChunkSignatureCopy(_BYTE *a1)
{
  v2 = CKChunkSignatureSize(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_malloc(v2 + 1, 0x100004077774924uLL);
  if (!v4)
  {
    return 0;
  }

  return memcpy(v4, a1, v3 + 1);
}

BOOL CKChunkSignaturesEqual(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = CKChunkSignatureSize(a1);
    v6 = v5 == 0;
    if (v5)
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = CKChunkSignatureSize(a2);
    v9 = v8 + 1 == v7;
    if (!v8)
    {
      v9 = v6;
    }

    return v9 && memcmp(a1, a2, v7) == 0;
  }

  return result;
}

BOOL CKChunkKeysEqual(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = CKChunkEncryptionKeySize(a1);
    v6 = v5 == 0;
    if (v5)
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = 0;
    }

    v8 = CKChunkEncryptionKeySize(a2);
    v9 = v8 + 1 == v7;
    if (!v8)
    {
      v9 = v6;
    }

    return v9 && memcmp(a1, a2, v7) == 0;
  }

  return result;
}

void *CKChunkSchemeAndSignatureCopyCString(char *a1)
{
  v2 = CKChunkSignatureSize(a1);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = malloc_type_malloc((2 * v3) | 1, 0x100004077774924uLL);
  CShex_to_string(a1, v3, v4);
  return v4;
}

void *CKChunkKeySchemeAndSignatureCopyCString(unsigned __int8 *a1)
{
  v2 = CKChunkEncryptionKeySize(a1);
  if (v2)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = malloc_type_malloc((2 * v3) | 1, 0x100004077774924uLL);
  CShex_to_string(a1, v3, v4);
  return v4;
}

BOOL CKChunkSignatureIsValidN(_BYTE *a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = CKChunkSignatureSize(a1);
    if (v5)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = 0;
    }

    return v6 == a2;
  }

  return result;
}

BOOL CKChunkKeyIsValidN(unsigned __int8 *a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = CKChunkEncryptionKeySize(a1);
    if (v5)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = 0;
    }

    return v6 == a2;
  }

  return result;
}

void *CKChunkSignatureCreateWithHexString(char *a1)
{
  v6 = 0;
  v7 = 0;
  if (ck_buffer_create_with_hex_string(a1, &v7, &v6))
  {
    v2 = v6;
    result = v7;
    if (v7)
    {
      v3 = v6 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      goto LABEL_12;
    }

    v4 = CKChunkSignatureSize(v7);
    if (v4)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v2)
    {
      return v7;
    }
  }

  result = v7;
LABEL_12:
  if (result)
  {
    free(result);
    return 0;
  }

  return result;
}

void *CKChunkKeyCreateWithHexString(char *a1)
{
  v6 = 0;
  v7 = 0;
  if (ck_buffer_create_with_hex_string(a1, &v7, &v6))
  {
    v2 = v6;
    result = v7;
    if (v7)
    {
      v3 = v6 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      goto LABEL_12;
    }

    v4 = CKChunkEncryptionKeySize(v7);
    if (v4)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v2)
    {
      return v7;
    }
  }

  result = v7;
LABEL_12:
  if (result)
  {
    free(result);
    return 0;
  }

  return result;
}

void *_CSCopyStoredChunkListForStorageFileID(uint64_t a1, sqlite3_int64 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v35 = 0;
  v36 = 0;
  if (*(a1 + 104))
  {
    v10 = CKCreateInternalWrongStoreError("_CSCopyStoredChunkListForStorageFileID", 1, a3, a4, a5, a6, a7, a8);
    v11 = 0;
LABEL_9:
    v21 = 0;
    goto LABEL_10;
  }

  v14 = *(a1 + 128);
  v15 = _CSStorageFileInode(a1, a2, 1);
  v16 = _CSPrepareStatement(a1, @"SELECT ct_rowid, cid, offset, dataLen, timestamp, location FROM CSChunkTable WHERE ft_rowid = ? ORDER BY offset", "SELECT ct_rowid, cid, offset, dataLen, timestamp, location FROM CSChunkTable WHERE ft_rowid = ? ORDER BY offset");
  v11 = v16;
  if (!v16)
  {
    v19 = @"Could not create prepared sqlite3 statement in %s";
    v20 = 1;
    goto LABEL_8;
  }

  v17 = CS_sqlite3_bind_int64(v16, 1, a2);
  if (v17)
  {
    v18 = v17;
    v30 = sqlite3_errmsg(*(a1 + 24));
    v31 = v18;
    v19 = @"sqlite3_bind failed in %s: %s (%d)";
LABEL_6:
    v20 = v18;
LABEL_8:
    v10 = CKSQLiteErrorCreateWithFormat(v20, v19, "_CSCopyStoredChunkListForStorageFileID", v30, v31, v32);
    goto LABEL_9;
  }

  v33 = v9;
  v34 = v8;
  while (1)
  {
    v23 = CS_sqlite3_step(v11);
    if (v23 != 100)
    {
      break;
    }

    v24 = CS_sqlite3_column_int64(v11, 0);
    v25 = CS_sqlite3_column_blob(v11, 1);
    v26 = CS_sqlite3_column_int64(v11, 2);
    v27 = CS_sqlite3_column_int(v11, 3);
    v28 = CS_sqlite3_column_int64(v11, 4);
    v29 = CS_sqlite3_column_int(v11, 5);
    if (addStoredChunk(&v35, v14, v15, v24, a2, v26, v27, v28, v29, v25))
    {
      v21 = 0;
      v10 = 0;
      v9 = v33;
      v8 = v34;
      goto LABEL_10;
    }
  }

  v18 = v23;
  v9 = v33;
  v8 = v34;
  if (v23 != 101)
  {
    v31 = sqlite3_errmsg(*(a1 + 24));
    v32 = v18;
    v30 = a2;
    v19 = @"sqlite3_step in %s failed for ft_rowid %lld: %s (%d)";
    goto LABEL_6;
  }

  v10 = 0;
  v21 = v35;
  v35 = 0;
LABEL_10:
  _CSFinishPreparedStatement(v11);
  free(v35);
  if (v9)
  {
    *v9 = v36;
  }

  if (v8)
  {
    *v8 = v10;
  }

  else if (v10)
  {
    CFRelease(v10);
  }

  return v21;
}

uint64_t CSAttemptFirstAidForStorageFile(uint64_t a1, sqlite3_int64 a2, __CFError **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v84 = *MEMORY[0x277D85DE8];
  if (*(a1 + 104))
  {
    v9 = CKCreateInternalWrongStoreError("CSAttemptFirstAidForStorageFile", 1, a3, a4, a5, a6, a7, a8);
LABEL_3:
    v10 = 0;
    goto LABEL_4;
  }

  if (CK_DEFAULT_LOG_BLOCK_6 != -1)
  {
    CSAttemptFirstAidForStorageFile_cold_1();
  }

  v14 = CK_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_DEBUG))
  {
    buf.st_dev = 134217984;
    *&buf.st_mode = a2;
    _os_log_impl(&dword_243431000, v14, OS_LOG_TYPE_DEBUG, "Validating storage file with ft_rowid %llu", &buf, 0xCu);
  }

  bzero(v81, 0x400uLL);
  if (_CSCreateStoragePath(a1, a2, v81, 0x400uLL))
  {
    memset(&buf, 0, sizeof(buf));
    if (!stat(v81, &buf))
    {
      result = 1;
      if (!a3)
      {
        goto LABEL_18;
      }

      v9 = 0;
      goto LABEL_6;
    }

    if (*__error() == 2)
    {
      v25 = CKInternalErrorCreateWithFormat(5u, 0, @"Storage file with ft_rowid %lld is missing", v20, v21, v22, v23, v24, a2);
    }

    else
    {
      v34 = *__error();
      v35 = __error();
      v36 = strerror(*v35);
      v37 = __error();
      v25 = CKPOSIXErrorCreateWithFormat(v34, @"stat failed in %s for path %s: %s (%d)", "_CSValidateStorageFile", v81, v36, *v37);
    }
  }

  else
  {
    v25 = CKInternalErrorCreateWithFormat(4u, 0, @"Could not construct path for storage file with ft_rowid %llu", v15, v16, v17, v18, v19, a2);
  }

  v9 = v25;
  Domain = CFErrorGetDomain(v25);
  if (!CFEqual(Domain, @"com.apple.chunkinglibrary.internal") || CFErrorGetCode(v9) != 5)
  {
    goto LABEL_3;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  *v81 = 0;
  *&buf.st_dev = 0;
  v32 = _CSCopyStoredChunkListForStorageFileID(a1, a2, v81, &buf, v28, v29, v30, v31);
  v33 = v32;
  if (*&buf.st_dev)
  {
    free(v32);
    v10 = 0;
    v9 = *&buf.st_dev;
    goto LABEL_4;
  }

  v10 = malloc_type_malloc(8 * *v81, 0x100004000313F17uLL);
  v38 = v81[0];
  if (*v81)
  {
    v39 = 0;
    do
    {
      v10[v39] = *(CKStoredChunkAtIndex(v33, v39) + 16);
      ++v39;
    }

    while (v39 < *v81);
  }

  free(v33);
  if (*(a1 + 17) == 1)
  {
    v46 = CKInternalErrorCreateWithFormat(6u, 0, @"First aid found %llu inconsistent chunks in storage file with ft_rowid %llu, but chunk store is read-only", v41, v42, v43, v44, v45, a2);
LABEL_34:
    v9 = v46;
    goto LABEL_4;
  }

  if (*(a1 + 104))
  {
    v47 = CKCreateInternalWrongStoreError("_CSPurgeInvalidStorageFileID", 1, v40, v41, v42, v43, v44, v45);
    v48 = 0;
    goto LABEL_61;
  }

  if (CK_DEFAULT_LOG_BLOCK_6 != -1)
  {
    CSAttemptFirstAidForStorageFile_cold_2();
  }

  v49 = CK_DEFAULT_LOG_INTERNAL_6;
  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
  {
    *v81 = 134217984;
    *&v81[4] = a2;
    _os_log_impl(&dword_243431000, v49, OS_LOG_TYPE_ERROR, "Purging invalid storage file with ft_rowid %llu", v81, 0xCu);
  }

  v50 = 0;
  while (1)
  {
    v51 = *(*(a1 + 264) + v50);
    if (v51)
    {
      if (*(v51 + 16) == a2)
      {
        break;
      }
    }

    v50 += 8;
    if (v50 == 40)
    {
      goto LABEL_47;
    }
  }

  _CSCloseStorageFile(a1, v51, 0);
LABEL_47:
  v52 = _CSPrepareStatement(a1, @"UPDATE CSStorageFileTable SET ft_status = ? WHERE ft_rowid = ?", "UPDATE CSStorageFileTable SET ft_status = ? WHERE ft_rowid = ?");
  v48 = v52;
  if (!v52)
  {
    goto LABEL_58;
  }

  v53 = CS_sqlite3_bind_int(v52, 1, 109);
  if (v53 || (v53 = CS_sqlite3_bind_int64(v48, 2, a2), v53))
  {
    v54 = v53;
    v78 = sqlite3_errmsg(*(a1 + 24));
    v79 = v54;
    v55 = @"sqlite3_bind failed in %s: %s (%d)";
LABEL_51:
    v56 = v54;
LABEL_59:
    v67 = CKSQLiteErrorCreateWithFormat(v56, v55, "_CSPurgeInvalidStorageFileID", v78, v79);
    goto LABEL_60;
  }

  v57 = CS_sqlite3_step(v48);
  if (v57 != 101)
  {
    v54 = v57;
    v78 = sqlite3_errmsg(*(a1 + 24));
    v79 = v54;
    v55 = @"sqlite3_step failed in %s: %s (%d)";
    goto LABEL_51;
  }

  _CSFinishPreparedStatement(v48);
  v58 = _CSPrepareStatement(a1, @"SELECT changes()", "SELECT changes()");
  v48 = v58;
  if (!v58)
  {
LABEL_58:
    v55 = @"Could not create prepared sqlite3 statement in %s";
    v56 = 1;
    goto LABEL_59;
  }

  v59 = CS_sqlite3_step(v58);
  if (v59 != 100)
  {
    v54 = v59;
    v78 = sqlite3_errmsg(*(a1 + 24));
    v79 = v54;
    v55 = @"sqlite3_step failed for changes() in %s: %s (%d)";
    goto LABEL_51;
  }

  v60 = CS_sqlite3_column_int64(v48, 0);
  if (v60 == 1)
  {
LABEL_69:
    _CSFinishPreparedStatement(v48);
    _CSFinishPreparedStatement(0);
    v46 = CKInternalErrorCreateWithFormat(7u, 0, @"First aid found %llu inconsistent chunks in storage file with ft_rowid %llu, and returned database to consistent state", v73, v74, v75, v76, v77, v38);
    goto LABEL_34;
  }

  v66 = v60;
  if (v60)
  {
    if (CK_DEFAULT_LOG_BLOCK_6 != -1)
    {
      CSAttemptFirstAidForStorageFile_cold_3();
    }

    v72 = CK_DEFAULT_LOG_INTERNAL_6;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_FAULT))
    {
      *v81 = 134218240;
      *&v81[4] = v66;
      v82 = 2048;
      v83 = a2;
      _os_log_impl(&dword_243431000, v72, OS_LOG_TYPE_FAULT, "Update appeared to change %lld rows when marking storage file with ft_rowid %llu as missing", v81, 0x16u);
    }

    goto LABEL_69;
  }

  v67 = CKInternalErrorCreateWithFormat(3u, 0, @"Storage file with ft_rowid %llu does not exist in database", v61, v62, v63, v64, v65, a2);
LABEL_60:
  v47 = v67;
LABEL_61:
  _CSFinishPreparedStatement(v48);
  v9 = CKInternalWrappingErrorCreateWithFormat(8u, v47, 0, @"First aid found %llu inconsistent chunks in storage file with ft_rowid %llu, but could not invalidate storage file", v68, v69, v70, v71, v38);
  if (v47)
  {
    CFRelease(v47);
  }

LABEL_4:
  free(v10);
  if (a3)
  {
    result = 0;
LABEL_6:
    *a3 = v9;
    goto LABEL_18;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  result = 0;
LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CSAttemptAutomaticFirstAidForStorageFile(uint64_t a1, sqlite3_int64 a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ((CKChunkStoreTestFlags(a1) & 4) != 0)
  {
    v9 = 1;
    goto LABEL_22;
  }

  err = 0;
  v9 = CSAttemptFirstAidForStorageFile(a1, a2, &err, v4, v5, v6, v7, v8);
  if (v9)
  {
    goto LABEL_20;
  }

  if (!err)
  {
    goto LABEL_22;
  }

  Domain = CFErrorGetDomain(err);
  if (CFEqual(Domain, @"com.apple.chunkinglibrary.internal"))
  {
    if (CFErrorGetCode(err) == 7)
    {
      if (CK_DEFAULT_LOG_BLOCK_6 != -1)
      {
        CSAttemptAutomaticFirstAidForStorageFile_cold_2();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_6;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 138412290;
      v17 = err;
      v12 = "Automatic first aid found some missing chunks and made the database consistent again: %@";
    }

    else
    {
      if (CK_DEFAULT_LOG_BLOCK_6 != -1)
      {
        CSAttemptAutomaticFirstAidForStorageFile_cold_1();
      }

      v11 = CK_DEFAULT_LOG_INTERNAL_6;
      if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 138412290;
      v17 = err;
      v12 = "Automatic first aid failed: %@";
    }
  }

  else
  {
    if (CK_DEFAULT_LOG_BLOCK_6 != -1)
    {
      CSAttemptAutomaticFirstAidForStorageFile_cold_3();
    }

    v11 = CK_DEFAULT_LOG_INTERNAL_6;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v17 = err;
    v12 = "Automatic first aid failed: %@";
  }

  _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
LABEL_20:
  if (err)
  {
    CFRelease(err);
  }

LABEL_22:
  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

os_log_t __CSAttemptAutomaticFirstAidForStorageFile_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_6 = result;
  return result;
}

os_log_t __CSAttemptAutomaticFirstAidForStorageFile_block_invoke_23()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_6 = result;
  return result;
}

os_log_t __CSAttemptAutomaticFirstAidForStorageFile_block_invoke_27()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_6 = result;
  return result;
}

uint64_t CKStreamCoderCreate(CCCryptorRef **a1, int a2, CFDataRef theData, const __CFData *a4, CFErrorRef *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  if (!theData || CFDataGetLength(theData) != 12)
  {
    v18 = CKErrorCreateWithFormat(6, @"Bad iv");
    goto LABEL_13;
  }

  if (!a4 || CFDataGetLength(a4) != 32)
  {
    v18 = CKErrorCreateWithFormat(6, @"Bad key");
    goto LABEL_13;
  }

  if ((a2 - 1) >= 2)
  {
    v18 = CKErrorCreateWithFormat(6, @"Bad mode");
LABEL_13:
    v19 = v18;
    v12 = 0;
    if (!a5)
    {
      goto LABEL_20;
    }

LABEL_14:
    if (v19)
    {
      CFRetain(v19);
      *a5 = v19;
LABEL_21:
      CKBaseRelease(v19);
LABEL_22:
      v22 = 0;
      result = 0;
      if (!v12)
      {
        return result;
      }

      goto LABEL_23;
    }

LABEL_20:
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v10 = CKTypeRegister(&CKStreamCoderGetTypeID_typeID);
  result = CKTypeCreateInstance_(0, v10, 0x28uLL);
  if (!result)
  {
    return result;
  }

  v12 = result;
  v13 = a2 != 1;
  *(result + 16) = a2;
  *(result + 32) = 0;
  BytePtr = CFDataGetBytePtr(a4);
  Length = CFDataGetLength(a4);
  v16 = CCCryptorCreateWithMode(v13, 0xBu, 0, 0, 0, BytePtr, Length, 0, 0, 0, 0, v12 + 3);
  if (v16)
  {
    v17 = CKErrorCreateWithFormat(2, @"CCCryptorCreateWithMode %d", v16);
    goto LABEL_19;
  }

  v20 = v12[3];
  CFDataGetBytePtr(theData);
  CFDataGetLength(theData);
  v21 = CCCryptorGCMSetIV();
  if (v21)
  {
    v17 = CKErrorCreateWithFormat(2, @"CCCryptorGCMSetIV %d", v21);
LABEL_19:
    v19 = v17;
    if (!a5)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if (a1)
  {
    CFRetain(v12);
    *a1 = v12;
  }

  v22 = 1;
LABEL_23:
  CKBaseRelease(v12);
  return v22;
}

uint64_t CKStreamCoderUpdate(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  v7 = *(a1 + 16);
  if (v7 == 2)
  {
    v8 = MEMORY[0x245D36250](*(a1 + 24), a2, a3, a2);
    if (!v8)
    {
LABEL_6:
      *(a1 + 32) += a3;
      return 1;
    }
  }

  else
  {
    if (v7 != 1)
    {
      CKStreamCoderUpdate_cold_1();
    }

    v8 = MEMORY[0x245D36260](*(a1 + 24), a2, a3, a2);
    if (!v8)
    {
      goto LABEL_6;
    }
  }

  v10 = CKErrorCreateWithFormat(5, @"CCCryptorGCMDecrypt %d", v8);
  v11 = v10;
  if (a4 && v10)
  {
    CFRetain(v10);
    *a4 = v11;
LABEL_12:
    CFRelease(v11);
    return 0;
  }

  if (v10)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t CKStreamCoderFinish(uint64_t a1, const __CFData **a2, uint64_t *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    CKStreamCoderFinish_cold_4();
  }

  if (!a3)
  {
    CKStreamCoderFinish_cold_3();
  }

  v5 = *(a1 + 16);
  if (v5 != 2)
  {
    if (v5 != 1)
    {
      CKStreamCoderFinish_cold_2();
    }

    *a3 = 0;
    *a2 = 0;
    *bytes = 0;
    v19 = 0;
    v6 = *(a1 + 24);
    v7 = CCCryptorGCMFinalize();
    if (v7)
    {
      v8 = CKErrorCreateWithFormat(5, @"CCCryptorGCMFinalize %d", v7, *bytes, v19, v20);
    }

    else
    {
      v14 = CFDataCreate(*MEMORY[0x277CBECE8], bytes, 16);
      if (v14)
      {
        v9 = v14;
        CFRetain(v14);
        *a2 = v9;
        v10 = 1;
        goto LABEL_16;
      }

      v8 = CKErrorCreateWithFormat(2, @"_CKStreamCoderFinishEncrypt", v17, *bytes, v19, v20);
    }

    v9 = v8;
    if (v8)
    {
      CFRetain(v8);
      v10 = 0;
      *a3 = v9;
LABEL_16:
      CFRelease(v9);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v11 = *a2;
  if (!*a2)
  {
    CKStreamCoderFinish_cold_1();
  }

  *a3 = 0;
  v12 = *(a1 + 24);
  CFDataGetBytePtr(v11);
  CFDataGetLength(v11);
  if (!CCCryptorGCMFinalize())
  {
    v10 = 1;
    goto LABEL_18;
  }

  v13 = CKErrorCreateWithFormat(5, @"Tag failure on decrypt");
  v10 = v13;
  if (v13)
  {
    CFRetain(v13);
    *a3 = v10;
    CFRelease(v10);
LABEL_13:
    v10 = 0;
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

_CCCryptor *_CKStreamCoderCFFinalize(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = CCCryptorRelease(result);
    *(a1 + 24) = 0;
  }

  return result;
}

CFStringRef _CKStreamCoderCFCopyFormatDescription(uint64_t a1)
{
  v1 = "unknown";
  v2 = *(a1 + 16);
  if (v2 == 2)
  {
    v1 = "decrypt";
  }

  if (v2 == 1)
  {
    v1 = "encrypt";
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stream %s coder", v1);
}

CFStringRef _CKStreamCoderCFCopyDebugDescription(uint64_t a1)
{
  v1 = "unknown";
  v2 = *(a1 + 16);
  if (v2 == 2)
  {
    v1 = "decrypt";
  }

  if (v2 == 1)
  {
    v1 = "encrypt";
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"stream %s coder", v1);
}

void *CSrabin_init()
{
  pthread_once(&CSrabin_init_once, compute_ringing);
  v0 = malloc_type_malloc(0x1028uLL, 0x1010040AF70EBD3uLL);
  v1 = v0;
  if (v0)
  {
    v0[1026] = 48;
    v2 = malloc_type_malloc(0x30uLL, 0x100004077774924uLL);
    v1[515] = v2;
    if (v2)
    {
      v3 = v2;
      v1[516] = 0xB15E234BD3792F63;
      memcpy(v1, old_ringing, 0x800uLL);
      memcpy(v1 + 256, new_ringing, 0x800uLL);
      v1[512] = 0;
      v1[514] = v3;
      if (*(v1 + 1026) >= 1)
      {
        v4 = 0;
        do
        {
          *(v1[515] + v4++) = 0;
        }

        while (v4 < *(v1 + 1026));
      }
    }

    else
    {
      free(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t CSrabin_reset(uint64_t result)
{
  *(result + 4096) = 0;
  *(result + 4112) = *(result + 4120);
  if (*(result + 4104) >= 1)
  {
    v1 = 0;
    do
    {
      *(*(result + 4120) + v1++) = 0;
    }

    while (v1 < *(result + 4104));
  }

  return result;
}

uint64_t CSrabin_slide8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4112);
  v3 = *v2;
  *v2 = a2;
  v4 = *(a1 + 4112) - 1;
  *(a1 + 4112) = v4;
  if (v4 < *(a1 + 4120))
  {
    *(a1 + 4112) = v4 + *(a1 + 4104);
  }

  v5 = (*(a1 + 8 * (*(a1 + 4096) >> 55) + 2048) ^ (a2 | (*(a1 + 4096) << 8)) ^ *(a1 + 8 * v3)) & 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 4096) = v5;
  return v5;
}

void CSrabin_free(void *a1)
{
  if (a1)
  {
    v2 = a1[515];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

void compute_ringing()
{
  for (i = 0; i != 256; ++i)
  {
    v1 = 384;
    v2 = i;
    do
    {
      v3 = 2 * v2;
      v2 = (2 * v2) ^ 0xB15E234BD3792F63;
      if (v3 >= 0)
      {
        v2 = v3;
      }

      --v1;
    }

    while (v1);
    old_ringing[i] = v2;
  }

  for (j = 0; j != 256; ++j)
  {
    v5 = j << 55;
    v6 = 8;
    do
    {
      v7 = 2 * v5;
      v5 = (2 * v5) ^ 0xB15E234BD3792F63;
      if (v7 >= 0)
      {
        v5 = v7;
      }

      --v6;
    }

    while (v6);
    new_ringing[j] = v5;
  }
}

BOOL CKChunkCoderCreate(uint64_t *a1, int a2, const void *a3, _BYTE *a4, unsigned __int8 *a5, unsigned int a6, uint64_t a7)
{
  v14 = CKTypeRegister(&CKChunkCoderGetTypeID_typeID);
  Instance = CKTypeCreateInstance_(0, v14, 0x48uLL);
  if (Instance)
  {
    v16 = Instance;
    *(Instance + 16) = a2;
    *(Instance + 48) = 0;
    *(Instance + 56) = a6;
    *(Instance + 64) = a7;
    if (CKChunkDigestResultsCreate((Instance + 40), a4, a5, a6))
    {
      v17 = *(v16 + 16);
      if (v17 == 3)
      {
        if (a6 != a7)
        {
          goto LABEL_5;
        }
      }

      else if (!CKChunkCryptorCreate((v16 + 24), v17 == 1, *(v16 + 40), a7))
      {
        goto LABEL_5;
      }

      v19 = CKChunkSignatureGeneratorCreate((v16 + 32), a3);
      v18 = v19 != 0;
      if (a1 && v19)
      {
        CFRetain(v16);
        *a1 = v16;
        v18 = 1;
      }

      goto LABEL_11;
    }

LABEL_5:
    v18 = 0;
LABEL_11:
    CKBaseRelease(v16);
    return v18;
  }

  return 0;
}

uint64_t CKChunkCoderUpdate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 56);
  *(a1 + 48);
  v5 = *(a1 + 16);
  if (v5 == 3)
  {
LABEL_10:
    result = CKChunkSignatureGeneratorUpdate(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      result = CKChunkCryptorUpdate(v8);
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_10;
  }

  if (v5 != 1)
  {
    CKChunkCoderUpdate_cold_1();
  }

  result = CKChunkSignatureGeneratorUpdate(*(a1 + 32));
  if (result)
  {
    v7 = *(a1 + 24);
    if (!v7 || (result = CKChunkCryptorUpdate(v7), result))
    {
LABEL_11:
      *(a1 + 48) += a3;
      return 1;
    }
  }

  return result;
}

uint64_t CKChunkCoderFinish(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v3 = CKChunkSignatureGeneratorFinish(a1[4]);
  v4 = a1[4];
  if (v4)
  {
    CKBaseRelease(v4);
  }

  a1[4] = 0;
  if (!v3)
  {
    goto LABEL_26;
  }

  if (!CKChunkDigestResultsSignatureAndKeyEqual(a1[5], 0))
  {
    if (CK_DEFAULT_LOG_BLOCK_7 != -1)
    {
      CKChunkCoderFinish_cold_3();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Chunk digest results differ\n");
    if (CK_DEFAULT_LOG_BLOCK_7 != -1)
    {
      CKChunkCoderFinish_cold_4();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_7;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    *buf = 138543362;
    v11 = v6;
LABEL_23:
    _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
LABEL_24:
    if (!v6)
    {
      goto LABEL_27;
    }

    CFRelease(v6);
LABEL_26:
    v6 = 0;
    goto LABEL_27;
  }

  v5 = a1[3];
  if (v5 && !CKChunkCryptorFinish(v5))
  {
    goto LABEL_26;
  }

  if (a1[6] != a1[8])
  {
    if (CK_DEFAULT_LOG_BLOCK_7 != -1)
    {
      CKChunkCoderFinish_cold_1();
    }

    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_26;
    }

    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"Not enough bytes tranversed coder\n");
    if (CK_DEFAULT_LOG_BLOCK_7 != -1)
    {
      CKChunkCoderFinish_cold_2();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_7;
    if (!os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_7, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    *buf = 138543362;
    v11 = v6;
    goto LABEL_23;
  }

  v6 = 1;
LABEL_27:
  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

os_log_t __CKChunkCoderFinish_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_7 = result;
  return result;
}

os_log_t __CKChunkCoderFinish_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_7 = result;
  return result;
}

os_log_t __CKChunkCoderFinish_block_invoke_9()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_7 = result;
  return result;
}

os_log_t __CKChunkCoderFinish_block_invoke_2_16()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_7 = result;
  return result;
}

void _CKChunkCoderCFFinalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CKBaseRelease(v2);
  }

  a1[3] = 0;
  v3 = a1[4];
  if (v3)
  {
    CKBaseRelease(v3);
  }

  a1[4] = 0;
  v4 = a1[5];
  if (v4)
  {
    CKBaseRelease(v4);
  }

  a1[5] = 0;
}

CFStringRef _CKChunkCoderCFCopyFormatDescription(uint64_t a1)
{
  v1 = *(a1 + 16) - 1;
  if (v1 > 2)
  {
    v2 = "unknown";
  }

  else
  {
    v2 = off_278DBA6E0[v1];
  }

  v3 = CFCopyDescription(*(a1 + 40));
  v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"chunk %s coder expected %@ ", v2, v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t CSCopyData(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a3 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  if (!v8)
  {
    v10 = -1;
    goto LABEL_42;
  }

  v9 = v8;
  if (a3 < 1)
  {
    v10 = 0;
    goto LABEL_41;
  }

  v10 = 0;
  while (1)
  {
    v11 = read(a1, v9, v7);
    if (v7 != v11)
    {
      v14 = v11;
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        CSCopyData_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        v15 = *MEMORY[0x277CBECE8];
        v16 = *__error();
        v17 = __error();
        v18 = strerror(*v17);
        v19 = CFStringCreateWithFormat(v15, 0, @"read failed (read %ld bytes of requested %lld bytes) for fd:%d : %d (%s)\n", v14, v7, a1, v16, v18);
        if (CK_DEFAULT_LOG_BLOCK_8 != -1)
        {
          CSCopyData_cold_2();
        }

        v20 = CK_DEFAULT_LOG_INTERNAL_8;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v28 = v19;
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      goto LABEL_41;
    }

    if (a2 == -1)
    {
      goto LABEL_11;
    }

    v12 = write(a2, v9, v7);
    if (v12 < 0)
    {
      break;
    }

    v13 = v12;
    if (v7 != v12)
    {
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        CSCopyData_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
      {
        v19 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"write failed for fd:%d, %lld != %lld", a2, v13, v7);
        if (CK_DEFAULT_LOG_BLOCK_8 != -1)
        {
          CSCopyData_cold_4();
        }

        v20 = CK_DEFAULT_LOG_INTERNAL_8;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v28 = v19;
LABEL_38:
          _os_log_impl(&dword_243431000, v20, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
        }

        goto LABEL_39;
      }

      goto LABEL_41;
    }

LABEL_11:
    v10 += v7;
    if (a3 - v10 < v7)
    {
      v7 = a3 - v10;
    }

    if (a3 <= v10)
    {
      goto LABEL_41;
    }
  }

  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    CSCopyData_cold_5();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v21 = *MEMORY[0x277CBECE8];
    v22 = *__error();
    v23 = __error();
    v24 = strerror(*v23);
    v19 = CFStringCreateWithFormat(v21, 0, @"write failed for fd:%d, %d (%s)", a2, v22, v24);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      CSCopyData_cold_6();
    }

    v20 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v19;
      goto LABEL_38;
    }

LABEL_39:
    if (v19)
    {
      CFRelease(v19);
    }
  }

LABEL_41:
  free(v9);
LABEL_42:
  v25 = *MEMORY[0x277D85DE8];
  return v10;
}

os_log_t __CSCopyData_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CSCopyData_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CSCopyData_block_invoke_7()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CSCopyData_block_invoke_2_14()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CSCopyData_block_invoke_18()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __CSCopyData_block_invoke_2_25()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

uint64_t idIsNull(_BYTE *a1)
{
  if (CKSchemeAndSignatureSize(a1) < 2)
  {
    return 1;
  }

  v3 = 1;
  do
  {
    v2 = a1[v3] == 0;
    if (a1[v3])
    {
      break;
    }

    ++v3;
  }

  while (v3 < CKSchemeAndSignatureSize(a1));
  return v2;
}

uint64_t CShex_to_string(char *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    v3 = (a3 + 1);
    v4 = 2 * a2;
    do
    {
      *(v3 - 1) = CShex_to_string_hex[*a1 >> 4];
      v5 = *a1++;
      *v3 = CShex_to_string_hex[v5 & 0xF];
      v3 += 2;
      --a2;
    }

    while (a2);
  }

  else
  {
    v4 = 0;
  }

  *(a3 + v4) = 0;
  return a3;
}

uint64_t ck_buffer_create_with_hex_string(char *__s, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (!__s)
  {
    return 0;
  }

  v6 = strlen(__s);
  result = 0;
  if (v6)
  {
    if ((v6 & 1) == 0)
    {
      result = malloc_type_malloc(v6 >> 1, 0x100004077774924uLL);
      if (result)
      {
        v8 = *__s;
        if (*__s)
        {
          v9 = 0;
          v10 = __s + 2;
          v11 = result;
          do
          {
            v12 = v8 - 48;
            v13 = (v8 - 48);
            v14 = (v8 - 97);
            if ((v8 - 65) < 6u)
            {
              v9 = v8 - 55;
            }

            v15 = v8 - 87;
            if (v14 > 5)
            {
              v15 = v9;
            }

            if (v13 < 0xA)
            {
              v15 = v12;
            }

            v16 = 16 * v15;
            v17 = *(v10 - 1);
            v18 = v17 - 48;
            v19 = v17 - 97;
            if ((v17 - 65) <= 5)
            {
              v20 = (v17 - 55) | v16;
            }

            else
            {
              v20 = v16;
            }

            v9 = (v17 - 87) | v16;
            if (v19 > 5)
            {
              v9 = v20;
            }

            v21 = v18 | v16;
            if (v18 <= 9)
            {
              v9 = v21;
            }

            *v11++ = v9;
            v22 = *v10;
            v10 += 2;
            v8 = v22;
          }

          while (v22);
        }

        if (a2)
        {
          *a2 = result;
        }

        if (a3)
        {
          *a3 = (v6 >> 1);
        }

        return 1;
      }
    }
  }

  return result;
}

CFDataRef ck_cfdata_create_with_hexstring(char *a1)
{
  v4 = 0;
  v5 = 0;
  v1 = ck_buffer_create_with_hex_string(a1, &v5, &v4);
  result = 0;
  if (v1)
  {
    if (v5)
    {
      v3 = v4 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      return CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v5, v4, *MEMORY[0x277CBECF0]);
    }
  }

  return result;
}

CFStringRef ck_cfstring_create_hex_with_data(const __CFData *a1)
{
  Length = CFDataGetLength(a1);
  result = malloc_type_malloc((2 * Length) | 1, 0x100004077774924uLL);
  if (result)
  {
    v4 = result;
    BytePtr = CFDataGetBytePtr(a1);
    CShex_to_string(BytePtr, Length, v4);
    v6 = strlen(v4);
    v7 = *MEMORY[0x277CBECF0];
    v8 = *MEMORY[0x277CBECE8];

    return CFStringCreateWithBytesNoCopy(v8, v4, v6, 0x600u, 0, v7);
  }

  return result;
}

void *createPathFromUrl(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  if (v2 && !CFURLGetFileSystemRepresentation(a1, 1u, v2, 1024))
  {
    free(v2);
    return 0;
  }

  return v2;
}

void printNbytes(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  bzero(v11, 0x401uLL);
  if (a2)
  {
    v4 = 0;
    v5 = v11;
    do
    {
      if (v4 == 512)
      {
        break;
      }

      sprintf(v5, "%02x", *(a1 + v4++));
      v5 += 2;
    }

    while (a2 != v4);
  }

  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    printNbytes_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
  {
    v6 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%s\n", v11);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printNbytes_cold_2();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

os_log_t __printNbytes_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printNbytes_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

void printSignature(unsigned __int8 *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = CKSchemeAndSignatureSize(a1);
  v3 = (2 * v2) | 1;
  v4 = malloc_type_malloc(v3, 0x100004077774924uLL);
  if (v4)
  {
    v5 = v4;
    v6 = *a1;
    v7 = 0;
    if (v2)
    {
      v8 = a1;
      v9 = v2;
      v10 = v4;
      do
      {
        *v10 = CShex_to_string_hex[*v8 >> 4];
        v11 = *v8++;
        v10[1] = CShex_to_string_hex[v11 & 0xF];
        v7 -= 2;
        v10 += 2;
        --v9;
      }

      while (v9);
      v7 = -v7;
    }

    *(v4 + v7) = 0;
    if ((v6 & 0x80000000) == 0)
    {
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        printSignature_cold_3();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
      {
        v12 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"signature:%s\n", v5);
        if (CK_DEFAULT_LOG_BLOCK_8 != -1)
        {
          printSignature_cold_4();
        }

        v13 = CK_DEFAULT_LOG_INTERNAL_8;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v24 = v12;
          _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }

      v14 = v5;
LABEL_31:
      free(v14);
      goto LABEL_32;
    }

    v15 = &a1[v2];
    v16 = CKSchemeAndEncryptionKeySize(v15);
    v17 = malloc_type_malloc(v3, 0x100004077774924uLL);
    if (v17)
    {
      v14 = v17;
      v18 = v17;
      if (v16)
      {
        v18 = v17;
        do
        {
          *v18 = CShex_to_string_hex[*v15 >> 4];
          v19 = *v15++;
          v18[1] = CShex_to_string_hex[v19 & 0xF];
          v18 += 2;
          --v16;
        }

        while (v16);
      }

      *v18 = 0;
      if (CK_DEFAULT_LOG_BLOCK_8 != -1)
      {
        printSignature_cold_1();
      }

      if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
      {
        v20 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"signature:%s, key:%s\n", v5, v14);
        if (CK_DEFAULT_LOG_BLOCK_8 != -1)
        {
          printSignature_cold_2();
        }

        v21 = CK_DEFAULT_LOG_INTERNAL_8;
        if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v24 = v20;
          _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_DEBUG, "%{public}@", buf, 0xCu);
        }

        if (v20)
        {
          CFRelease(v20);
        }
      }

      free(v5);
      goto LABEL_31;
    }
  }

LABEL_32:
  v22 = *MEMORY[0x277D85DE8];
}

os_log_t __printSignature_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printSignature_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printSignature_block_invoke_48()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printSignature_block_invoke_2_55()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

void printChunk(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v23 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x800uLL);
  v11 = CKSchemeAndSignatureSize((a1 + 12));
  if (v11 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = malloc_type_calloc((2 * v12) | 1, 1uLL, 0x100004077774924uLL);
  v14 = 12;
  v15 = v13;
  do
  {
    *v15 = CShex_to_string_hex[*(a1 + v14) >> 4];
    v15[1] = CShex_to_string_hex[*(a1 + v14) & 0xF];
    v15 += 2;
    ++v14;
    --v12;
  }

  while (v12);
  *v15 = 0;
  if (a2)
  {
    vsnprintf(__str, 0x800uLL, a2, &a9);
  }

  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    printChunk_cold_1();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v16 = __str;
    if (!a2)
    {
      v16 = &unk_243480212;
    }

    v17 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%soffset: %llu, length: %u, signature: %s\n", v16, *a1, *(a1 + 8), v13);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printChunk_cold_2();
    }

    v18 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v17;
      _os_log_impl(&dword_243431000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  free(v13);
  v19 = *MEMORY[0x277D85DE8];
}

os_log_t __printChunk_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printChunk_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

void printChunkReference(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    printChunkReference_cold_1();
  }

  v2 = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR);
  v3 = MEMORY[0x277CBECE8];
  if (v2)
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"\tChunkReference at %p:\n", a1);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printChunkReference_cold_2();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printChunkReference_cold_3();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v6 = CFStringCreateWithFormat(*v3, 0, @"\tChunkReference token %llu:\n", *a1);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printChunkReference_cold_4();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printChunkReference_cold_5();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v8 = CFStringCreateWithFormat(*v3, 0, @"\tChunkReference length %u:\n", *(a1 + 8));
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printChunkReference_cold_6();
    }

    v9 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v8;
      _os_log_impl(&dword_243431000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

os_log_t __printChunkReference_block_invoke()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printChunkReference_block_invoke_2()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printChunkReference_block_invoke_78()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printChunkReference_block_invoke_2_85()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printChunkReference_block_invoke_89()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

os_log_t __printChunkReference_block_invoke_2_96()
{
  result = os_log_create("com.apple.chunkinglibrary", "default");
  CK_DEFAULT_LOG_INTERNAL_8 = result;
  return result;
}

void printStoredChunk(unsigned int *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    printStoredChunk_cold_1();
  }

  v2 = os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR);
  v3 = MEMORY[0x277CBECE8];
  if (v2)
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"\tStoredChunk at %p:\n\tStoredChunk ", a1);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_2();
    }

    v5 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v4;
      _os_log_impl(&dword_243431000, v5, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  printSignature(a1 + 56);
  if (CK_DEFAULT_LOG_BLOCK_8 != -1)
  {
    printStoredChunk_cold_3();
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v6 = CFStringCreateWithFormat(*v3, 0, @"\tStoredChunk volume info: ");
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_4();
    }

    v7 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v6;
      _os_log_impl(&dword_243431000, v7, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_5();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v8 = CFStringCreateWithFormat(*v3, 0, @"\tStoredChunk device: %d\n", *a1);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_6();
    }

    v9 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&dword_243431000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_7();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v10 = CFStringCreateWithFormat(*v3, 0, @"\tStoredChunk inode: %lld\n", *(a1 + 1));
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_8();
    }

    v11 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v10;
      _os_log_impl(&dword_243431000, v11, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_9();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v12 = CFStringCreateWithFormat(*v3, 0, @"\tStoredChunk stgPath: 0x%08x\n", a1[3]);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_10();
    }

    v13 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&dword_243431000, v13, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_11();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v14 = CFStringCreateWithFormat(*v3, 0, @"\tStoredChunk token: %lld\n", *(a1 + 2));
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_12();
    }

    v15 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v14;
      _os_log_impl(&dword_243431000, v15, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_13();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v16 = CFStringCreateWithFormat(*v3, 0, @"\tStoredChunk offset: %lld\n", *(a1 + 3));
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_14();
    }

    v17 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v16;
      _os_log_impl(&dword_243431000, v17, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_15();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v18 = CFStringCreateWithFormat(*v3, 0, @"\tStoredChunk length: %d\n", a1[10]);
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_16();
    }

    v19 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v18;
      _os_log_impl(&dword_243431000, v19, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_17();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v20 = CFStringCreateWithFormat(*v3, 0, @"\tStoredChunk location: %c\n", *(a1 + 52));
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_18();
    }

    v21 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v20;
      _os_log_impl(&dword_243431000, v21, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v20)
    {
      CFRelease(v20);
    }

    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_19();
    }
  }

  if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
  {
    v22 = CFStringCreateWithFormat(*v3, 0, @"\tStoredChunk data: ");
    if (CK_DEFAULT_LOG_BLOCK_8 != -1)
    {
      printStoredChunk_cold_20();
    }

    v23 = CK_DEFAULT_LOG_INTERNAL_8;
    if (os_log_type_enabled(CK_DEFAULT_LOG_INTERNAL_8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&dword_243431000, v23, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    if (v22)
    {
      CFRelease(v22);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}