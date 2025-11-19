uint64_t get_id_for_path_64(uint64_t *a1, const char *a2, uint64_t *a3, void *a4, char a5, uint64_t a6)
{
  v29[34] = *MEMORY[0x1E69E9840];
  v28 = 0;
  memset(&v29[1], 0, 264);
  v29[0] = 2;
  *a3 = 0;
  if (a4)
  {
    *a4 = 2;
  }

  v12 = *a2;
  if (*a2)
  {
    v27 = a6 + 16;
    v13 = 2;
    v14 = a2;
    do
    {
      while (v12 == 47)
      {
        v15 = *++v14;
        v12 = v15;
      }

      v16 = v14;
      if (!v12)
      {
        break;
      }

      do
      {
        if (v12 == 47)
        {
          break;
        }

        v17 = *++v16;
        v12 = v17;
      }

      while (v17);
      v18 = v16 - v14;
      if (((v16 - v14) & 0xFF00) != 0)
      {
        v18 = 255;
      }

      WORD2(v29[1]) = v18;
      __strncpy_chk();
      v19 = WORD2(v29[1]);
      ++WORD2(v29[1]);
      *(&v29[1] + v19 + 6) = 0;
      LODWORD(v29[1]) = 0;
      if (*v16 == 47)
      {
        v14 = v16 + 1;
      }

      else
      {
        v14 = v16;
      }

      v20 = psid_lookup_5012(a1, v29, &v28);
      if (v20)
      {
        if ((a5 & 1) == 0)
        {
          result = 2;
          goto LABEL_27;
        }

        if (a6)
        {
          v25 = &v25;
          v26 = a1;
          MEMORY[0x1EEE9AC00](v20);
          v22 = &v25 - v21;
          bzero(&v25 - v21, v14 - a2 + 1);
          strncat(v22, a2, v14 - a2);
          v22[v14 - a2] = 0;
          a1 = v26;
          v28 = (*(a6 + 16))(a6, v22);
          result = psid_insert_with_id(a1, v29, &v28);
          if (result)
          {
            goto LABEL_27;
          }
        }

        else
        {
          result = psid_insert(a1, v29, &v28);
          if (result)
          {
            goto LABEL_27;
          }
        }
      }

      if (a4)
      {
        *a4 = v29[0];
      }

      v13 = v28;
      v29[0] = v28;
      v12 = *v14;
    }

    while (*v14);
  }

  else
  {
    v13 = 2;
  }

  result = 0;
  *a3 = v13;
LABEL_27:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t psid_lookup_5012(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 12);
  v6 = 8;
  v7 = 0;
  result = _sqlite_get_psid(a1, a2, v4 + 16, &v7, &v6);
  if (result)
  {
    return 2;
  }

  *a3 = v7;
  return result;
}

uint64_t psid_insert_with_id(uint64_t *a1, uint64_t a2, char *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a3 > 1uLL)
  {
    v10 = *MEMORY[0x1E69E9840];

    return _psid_insert_5014(a1, a2, a3);
  }

  else
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(4);
    v6 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *a3;
      v11 = 134217984;
      v12 = v7;
      _os_log_impl(&dword_1C278D000, v5, v6, "psid_insert_with_id: fid %lld not valid!\n", &v11, 0xCu);
    }

    *__error() = v4;
    v8 = *MEMORY[0x1E69E9840];
    return 22;
  }
}

uint64_t psid_insert(uint64_t *a1, uint64_t a2, char *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a1[4];
  if (v4 > 1)
  {
    *a3 = v4;
    ++a1[4];
    v11 = *MEMORY[0x1E69E9840];

    return _psid_insert_5014(a1, a2, a3);
  }

  else
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(4);
    v7 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = a1[4];
      v12 = 134217984;
      v13 = v8;
      _os_log_impl(&dword_1C278D000, v6, v7, "psid_insert: master fid corrupted (%lld)\n", &v12, 0xCu);
    }

    *__error() = v5;
    v9 = *MEMORY[0x1E69E9840];
    return 22;
  }
}

uint64_t _psid_insert_5014(uint64_t *a1, uint64_t a2, char *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (_sqlite_bulkBegin(a1))
  {
    result = 22;
    goto LABEL_17;
  }

  v7 = *(a2 + 12);
  if (_sqlite_insert(a1, a2, v7 + 16, a3, 8, 1))
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = a1[4];
      *buf = 136315906;
      v25 = "_psid_insert_locked";
      v26 = 1024;
      *v27 = 413;
      *&v27[4] = 2048;
      *&v27[6] = v10;
      v28 = 2080;
      v29 = a2 + 14;
      v11 = "%s:%d: psid-insert: failed to store fid 0x%llx for path %s\n";
LABEL_21:
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, v11, buf, 0x26u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v12 = 0x1EBF46000uLL;
  if (dword_1EBF46ADC >= 5)
  {
    v23 = v7;
    v18 = *__error();
    v19 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *a3;
      *buf = 134218242;
      v25 = v20;
      v26 = 2080;
      *v27 = a2 + 14;
      _os_log_impl(&dword_1C278D000, v19, OS_LOG_TYPE_DEFAULT, "psid-insert: fid 0x%llx for path %s\n", buf, 0x16u);
    }

    *__error() = v18;
    LODWORD(v7) = v23;
    v12 = 0x1EBF46000;
  }

  if (_sqlite_insert(a1, a3, 8uLL, a2, v7 + 16, 1))
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = a1[4];
      *buf = 136315906;
      v25 = "_psid_insert_locked";
      v26 = 1024;
      *v27 = 419;
      *&v27[4] = 2080;
      *&v27[6] = a2 + 14;
      v28 = 2048;
      v29 = v17;
      v11 = "%s:%d: psid-insert: failed to store path %s for fid 0x%llx\n";
      goto LABEL_21;
    }

LABEL_9:
    v13 = 22;
    goto LABEL_10;
  }

  if (*(v12 + 2780) < 5)
  {
    v13 = 0;
    goto LABEL_11;
  }

  v8 = *__error();
  v21 = _SILogForLogForCategory(4);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = a1[4];
    *buf = 136315394;
    v25 = (a2 + 14);
    v26 = 2048;
    *v27 = v22;
    _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "psid-insert: store path %s for fid 0x%llx\n", buf, 0x16u);
  }

  v13 = 0;
LABEL_10:
  *__error() = v8;
LABEL_11:
  v14 = _sqlite_bulkEnd(a1);
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 22;
  }

  if (v14)
  {
    result = v15;
  }

  else
  {
    result = v13;
  }

LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_path_for_id_64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v30 = a2;
  v7 = a5;
  *(a4 + a5 - 1) = 0;
  if (a2 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 1;
    memset(v34, 0, sizeof(v34));
    while (1)
    {
      v29 = 272;
      if (_sqlite_get(a1, &v30, 8, v34, &v29))
      {
        result = 2;
        goto LABEL_23;
      }

      v11 = WORD6(v34[0]);
      if (WORD6(v34[0]) >= a5)
      {
        v15 = *__error();
        v16 = _SILogForLogForCategory(4);
        v17 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v16, v17))
        {
          *buf = 67109890;
          *v32 = WORD6(v34[0]);
          *&v32[4] = 2048;
          *&v32[6] = *&v34[0];
          *&v32[14] = 1024;
          *&v32[16] = DWORD2(v34[0]);
          LOWORD(v33[0]) = 2080;
          *(v33 + 2) = v34 | 0xE;
          v18 = "get_path_for_id: bogus part len %d (%lld/%d/%s)\n";
          v19 = v16;
          v20 = v17;
          v21 = 34;
          goto LABEL_21;
        }

LABEL_22:
        *__error() = v15;
        result = 22;
        goto LABEL_23;
      }

      if (*&v34[0] <= 1uLL)
      {
        v12 = *__error();
        v13 = _SILogForLogForCategory(4);
        v14 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v13, v14))
        {
          *buf = 134218498;
          *v32 = v30;
          *&v32[8] = 2048;
          *&v32[10] = *&v34[0];
          *&v32[18] = 2080;
          v33[0] = v34 | 0xE;
          _os_log_impl(&dword_1C278D000, v13, v14, "get_path_for_id: bogus looking part fid (cur fid %lld, part fid %lld name %s)\n", buf, 0x20u);
        }

        *__error() = v12;
        v11 = WORD6(v34[0]);
      }

      if (v8 + v11 + 1 >= a5)
      {
        *(a4 + v8) = 0;
        v15 = *__error();
        v22 = _SILogForLogForCategory(4);
        v23 = 2 * (dword_1EBF46ADC < 4);
        if (os_log_type_enabled(v22, v23))
        {
          *buf = 67109634;
          *v32 = v8;
          *&v32[4] = 1024;
          *&v32[6] = WORD6(v34[0]);
          *&v32[10] = 2080;
          *&v32[12] = a4;
          v18 = "get_path_for_id: path index too large! (%d %d : %s)\n";
          v19 = v22;
          v20 = v23;
          v21 = 24;
LABEL_21:
          _os_log_impl(&dword_1C278D000, v19, v20, v18, buf, v21);
        }

        goto LABEL_22;
      }

      strncpy((a4 + 1 + a5 - (v8 + v11)), (v34 | 0xE), v11 - 1);
      v8 += v11;
      *(a4 + v7 - v8) = 47;
      if (v30 == 2 && *&v34[0] != 2)
      {
        break;
      }

      v30 = *&v34[0];
      if (*&v34[0] == 2)
      {
        goto LABEL_3;
      }
    }

    v25 = *__error();
    v26 = _SILogForLogForCategory(4);
    v27 = 2 * (dword_1EBF46ADC < 4);
    if (os_log_type_enabled(v26, v27))
    {
      *buf = 134218240;
      *v32 = v30;
      *&v32[8] = 2048;
      *&v32[10] = *&v34[0];
      _os_log_impl(&dword_1C278D000, v26, v27, "get_path_for_id: cur fid %lld should have parent fid 2 but part->fid == %lld\n", buf, 0x16u);
    }

    *__error() = v25;
  }

LABEL_3:
  result = 0;
  *a3 = a4 + v7 - v8;
LABEL_23:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t set_id_for_path_64(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v94 = *MEMORY[0x1E69E9840];
  v81 = v4;
  *(&v5 + 1) = 0;
  memset(&v91[1], 0, 264);
  v91[0] = 2;
  v6 = *v2;
  if (!*v2)
  {
    goto LABEL_102;
  }

  v7 = v3;
  v8 = v2;
  v9 = v1;
  v79 = &v91[1] + 6;
  v80 = 0;
  v78 = v3 + 16;
  v75 = v85 + 14;
  *&v5 = 134218242;
  v72 = v5;
  *&v5 = 136315394;
  v71 = v5;
  *&v5 = 136315650;
  v76 = v5;
  *&v5 = 134218498;
  v74 = v5;
  *&v5 = 134217984;
  v73 = v5;
  *&v5 = 67109376;
  v77 = v5;
  v10 = v2;
  while (1)
  {
    while (v6 == 47)
    {
      v21 = *++v10;
      v6 = v21;
    }

    v11 = v10;
    if (!v6)
    {
      goto LABEL_102;
    }

    do
    {
      if (v6 == 47)
      {
        break;
      }

      v12 = *++v11;
      LODWORD(v6) = v12;
    }

    while (v12);
    v13 = v11 - v10;
    if (((v11 - v10) & 0xFF00) != 0)
    {
      v13 = 255;
    }

    WORD2(v91[1]) = v13;
    v14 = v79;
    __strncpy_chk();
    v15 = WORD2(v91[1]);
    ++WORD2(v91[1]);
    v14[v15] = 0;
    LODWORD(v91[1]) = 0;
    v10 = *v11 == 47 ? v11 + 1 : v11;
    v16 = psid_lookup_5012(v9, v91, &v80);
    v17 = *v10;
    if (v16)
    {
      break;
    }

    if (*v10)
    {
      goto LABEL_83;
    }

    if (v80 == v81)
    {
      if (dword_1EBF46AE4 < 5)
      {
        goto LABEL_83;
      }

      v22 = *__error();
      v23 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v86 = v72;
        v87 = v81;
        v88 = 2080;
        v89 = v8;
        v24 = &v86;
        v25 = v23;
        v26 = "Existing path for %lld at %s matches. Re-parent not needed.";
        v27 = 22;
        goto LABEL_99;
      }

      goto LABEL_100;
    }

    if (dword_1EBF46AE4 >= 5)
    {
      v58 = *__error();
      v59 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v86 = v72;
        v87 = v81;
        v88 = 2080;
        v89 = v8;
        _os_log_impl(&dword_1C278D000, v59, OS_LOG_TYPE_DEFAULT, "Existing path for %lld at %s. Re-parent.", &v86, 0x16u);
      }

      *__error() = v58;
    }

    memcpy(v90, v91, sizeof(v90));
    v90[0] = 2;
    strncpy(&v90[1] + 6, "SP_TMP_MOVE", 0x100uLL);
    WORD2(v90[1]) = strlen(&v90[1] + 6);
    if (!psid_insert_with_id(v9, v90, &v81))
    {
      v70 = v8;
      bzero(&v86, 0x2000uLL);
      while (1)
      {
        _sqlite_bulkBegin(v9);
        v84 = v80;
        v82 = 0;
        if (!v80)
        {
          goto LABEL_80;
        }

        v83 = 0;
        memset(v85, 0, 272);
        v28 = sqlite3BtreeMoveto(v9[2], &v84, 8, &v82);
        if (v28 | v82)
        {
          v48 = v28;
          v49 = *__error();
          v50 = _SILogForLogForCategory(4);
          v51 = 2 * (dword_1EBF46ADC < 4);
          if (os_log_type_enabled(v50, v51))
          {
            *buf = v77;
            *v93 = v48;
            *&v93[4] = 2048;
            *&v93[6] = v84;
            _os_log_impl(&dword_1C278D000, v50, v51, "psid_iterate: sqlite3BtreeMoveto failed; rc = %d for for dir_id %lld\n", buf, 0x12u);
          }

          *__error() = v49;
LABEL_80:
          _sqlite_bulkEnd(v9);
          goto LABEL_81;
        }

        v29 = 0;
        while (1)
        {
          v30 = v9[2];
          if (!*(v30 + 97))
          {
            break;
          }

          getCellInfo(v9[2]);
          v31 = *(v30 + 72);
          v30 = v9[2];
          if (v31 != 8)
          {
            goto LABEL_45;
          }

          if (getPayload(v9[2], 8, &v83, 0))
          {
            goto LABEL_65;
          }

          v32 = v83;
          if (v84)
          {
            if (v84 != v83)
            {
              goto LABEL_65;
            }
          }

          if (dword_1EBF46ADC >= 5)
          {
            v33 = *__error();
            v34 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v73;
              *v93 = v32;
              _os_log_impl(&dword_1C278D000, v34, OS_LOG_TYPE_DEFAULT, "key: %lld # ", buf, 0xCu);
            }

            *__error() = v33;
          }

LABEL_48:
          v35 = v9[2];
          if (!*(v35 + 97))
          {
            v36 = 0;
LABEL_55:
            if (getPayload(v35, v36, v85, 1))
            {
              goto LABEL_65;
            }

            if (dword_1EBF46ADC >= 5)
            {
              v38 = *__error();
              v39 = _SILogForLogForCategory(4);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v74;
                *v93 = *&v85[0];
                *&v93[8] = 1024;
                *&v93[10] = DWORD2(v85[0]);
                *&v93[14] = 2080;
                *&v93[16] = v75;
                _os_log_impl(&dword_1C278D000, v39, OS_LOG_TYPE_DEFAULT, "value: %lld / %d / %s\n", buf, 0x1Cu);
              }

              *__error() = v38;
            }

            goto LABEL_57;
          }

          getCellInfo(v9[2]);
          v36 = *(v35 + 80);
          v35 = v9[2];
          if (v36 != 8)
          {
            goto LABEL_55;
          }

          if (getPayload(v9[2], 8, &v83, 1))
          {
            goto LABEL_65;
          }

          if (dword_1EBF46ADC >= 5)
          {
            v40 = *__error();
            v41 = _SILogForLogForCategory(4);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v73;
              *v93 = v83;
              _os_log_impl(&dword_1C278D000, v41, OS_LOG_TYPE_DEFAULT, "value: %lld\n", buf, 0xCu);
            }

            *__error() = v40;
          }

          *(&v86 + v29++) = v83;
          if (v29 >= 0x401)
          {
            v47 = 1;
            goto LABEL_67;
          }

LABEL_57:
          v37 = sqlite3BtreeNext(v9[2], &v82);
          if (v37 | v82)
          {
            goto LABEL_65;
          }
        }

        LODWORD(v31) = 0;
LABEL_45:
        if (!getPayload(v30, v31, v85, 0) && (!v84 || v84 == *&v85[0]))
        {
          goto LABEL_48;
        }

LABEL_65:
        if (!v29)
        {
          goto LABEL_80;
        }

        v47 = 0;
LABEL_67:
        v42 = &v86;
        do
        {
          bzero(v85, 0x800uLL);
          v84 = 0;
          v43 = *v42++;
          if (!get_path_for_id_64(v9, v43, &v84, v85, 2048))
          {
            v44 = v84;
            v45 = rename_path_64(v9, v84, "/SP_TMP_MOVE", v7);
            if (dword_1EBF46AE4 >= 5)
            {
              v46 = v45;
              v69 = *__error();
              v68 = _SILogForLogForCategory(6);
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v76;
                *v93 = v44;
                *&v93[8] = 2080;
                *&v93[10] = "/SP_TMP_MOVE";
                *&v93[18] = 1024;
                *&v93[20] = v46;
                _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "Move %s to %s. (%d)", buf, 0x1Cu);
              }

              *__error() = v69;
            }
          }

          --v29;
        }

        while (v29);
        _sqlite_bulkEnd(v9);
        if ((v47 & 1) == 0)
        {
LABEL_81:
          v8 = v70;
          v52 = remove_path_64(v9, v70);
          if (dword_1EBF46AE4 >= 5)
          {
            v60 = v52;
            v61 = *__error();
            v62 = _SILogForLogForCategory(6);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v85[0]) = v71;
              *(v85 + 4) = v8;
              WORD6(v85[0]) = 1024;
              *(v85 + 14) = v60;
              _os_log_impl(&dword_1C278D000, v62, OS_LOG_TYPE_DEFAULT, "Remove %s. (%d)", v85, 0x12u);
            }

            *__error() = v61;
          }

          v53 = rename_path_64(v9, "/SP_TMP_MOVE", v8, v7);
          if (dword_1EBF46AE4 < 5)
          {
            break;
          }

          v63 = v53;
          v22 = *__error();
          v64 = _SILogForLogForCategory(6);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v85[0]) = v76;
            *(v85 + 4) = "/SP_TMP_MOVE";
            WORD6(v85[0]) = 2080;
            *(v85 + 14) = v8;
            WORD3(v85[1]) = 1024;
            DWORD2(v85[1]) = v63;
            v24 = v85;
            v25 = v64;
            v26 = "Move %s to %s. (%d)";
            v27 = 28;
LABEL_99:
            _os_log_impl(&dword_1C278D000, v25, OS_LOG_TYPE_DEFAULT, v26, v24, v27);
          }

LABEL_100:
          *__error() = v22;
          break;
        }
      }
    }

LABEL_83:
    v91[0] = v80;
    v6 = *v10;
    if (!*v10)
    {
      goto LABEL_102;
    }
  }

  if (!*v10)
  {
    if (dword_1EBF46AE4 >= 5)
    {
      v54 = *__error();
      v55 = _SILogForLogForCategory(6);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v86 = v72;
        v87 = v81;
        v88 = 2080;
        v89 = v79;
        _os_log_impl(&dword_1C278D000, v55, OS_LOG_TYPE_DEFAULT, "%lld -> %s", &v86, 0x16u);
      }

      *__error() = v54;
    }

    v20 = psid_insert_with_id(v9, v91, &v81);
    if (!v20)
    {
      v80 = v81;
      goto LABEL_83;
    }

    goto LABEL_101;
  }

  if (v7)
  {
    MEMORY[0x1EEE9AC00](v16);
    v19 = &v67 - v18;
    bzero(&v67 - v18, v10 - v8 + 1);
    strncpy(v19, v8, v10 - v8);
    v19[v10 - v8] = 0;
    v80 = (*(v7 + 16))(v7, v19);
    v20 = psid_insert_with_id(v9, v91, &v80);
    if (!v20)
    {
      goto LABEL_83;
    }

LABEL_101:
    v6 = v20;
    goto LABEL_102;
  }

  v6 = psid_insert(v9, v91, &v80);
  if (dword_1EBF46AE4 >= 5)
  {
    v56 = *__error();
    v57 = _SILogForLogForCategory(6);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      v86 = v72;
      v87 = v80;
      v88 = 2080;
      v89 = v79;
      _os_log_impl(&dword_1C278D000, v57, OS_LOG_TYPE_DEFAULT, "%lld -> %s", &v86, 0x16u);
    }

    *__error() = v56;
  }

  if (!v6)
  {
    goto LABEL_83;
  }

LABEL_102:
  v65 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t rename_path_64(uint64_t *a1, char *a2, char *a3, uint64_t a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = 0;
  remove_path_64(a1, a3);
  if (get_id_for_path_64(a1, a2, &v30, &v29, 0, 0) || ((strncpy(__dst, a3, 0x400uLL), __dst[1023] = 0, (v8 = strrchr(__dst, 47)) == 0) ? (v9 = &__dst[-(__dst[0] != 47)]) : (v9 = v8, *v8 = 0), v28 = 0, get_id_for_path_64(a1, __dst, &v28, 0, 1, a4)))
  {
    result = 2;
    goto LABEL_7;
  }

  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  v12 = strncpy((v39 | 0xE), v9 + 1, 0x100uLL);
  BYTE13(v40) = 0;
  v13 = strlen(v12);
  *&v39[0] = v28;
  WORD6(v39[0]) = v13 + 1;
  v14 = _sqlite_bulkBegin(a1);
  if (v14)
  {
    v15 = v14;
    v16 = *__error();
    v17 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v32 = "rename_path_64";
      v33 = 1024;
      v34 = 981;
      v35 = 1024;
      *v36 = v15;
      *&v36[4] = 2048;
      *&v36[6] = v30;
      *&v36[14] = 2048;
      *&v36[16] = *&v39[0];
      v37 = 2080;
      v38 = v39 | 0xE;
      v18 = "%s:%d: psid-rename: begin error %d updating the file-fid record for fid %lld pid %lld / %s. \n";
LABEL_28:
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x36u);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (_sqlite_insert(a1, &v30, 8uLL, v39, v13 + 17, 1))
  {
    v19 = *__error();
    v20 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v32 = "rename_path_64";
      v33 = 1024;
      v34 = 989;
      v35 = 2048;
      *v36 = v30;
      _os_log_error_impl(&dword_1C278D000, v20, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: Could not update the file-fid record for fid %lld\n", buf, 0x1Cu);
    }

    *__error() = v19;
  }

  if (_sqlite_insert(a1, v39, v13 + 17, &v30, 8, 1))
  {
    v21 = *__error();
    v22 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v32 = "rename_path_64";
      v33 = 1024;
      v34 = 997;
      v35 = 2048;
      *v36 = *&v39[0];
      *&v36[8] = 2080;
      *&v36[10] = v39 | 0xE;
      _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: failed to insert new record for %lld / %s.\n", buf, 0x26u);
    }

    *__error() = v21;
  }

  *&v39[0] = v29;
  v23 = strrchr(a2, 47);
  if (v23)
  {
    v24 = strncpy((v39 | 0xE), v23 + 1, 0x100uLL);
    BYTE13(v40) = 0;
    WORD6(v39[0]) = strlen(v24) + 1;
    if (_sqlite_delete(a1, v39, WORD6(v39[0]) + 16))
    {
      v25 = *__error();
      v26 = _SILogForLogForCategory(4);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v32 = "rename_path_64";
        v33 = 1024;
        v34 = 1019;
        v35 = 2048;
        *v36 = *&v39[0];
        *&v36[8] = 2080;
        *&v36[10] = v39 | 0xE;
        _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: psid-rename: failed to delete old record for %lld / %s\n", buf, 0x26u);
      }

      *__error() = v25;
    }
  }

  result = _sqlite_bulkEnd(a1);
  if (result)
  {
    v27 = result;
    v16 = *__error();
    v17 = _SILogForLogForCategory(4);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v32 = "rename_path_64";
      v33 = 1024;
      v34 = 1025;
      v35 = 1024;
      *v36 = v27;
      *&v36[4] = 2048;
      *&v36[6] = v30;
      *&v36[14] = 2048;
      *&v36[16] = *&v39[0];
      v37 = 2080;
      v38 = v39 | 0xE;
      v18 = "%s:%d: psid-rename: end error %d updating the file-fid record for fid %lld pid %lld / %s. \n";
      goto LABEL_28;
    }

LABEL_26:
    *__error() = v16;
    result = 22;
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t remove_path_64(uint64_t *a1, char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (_sqlite_bulkBegin(a1))
  {
    result = 22;
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    v13 = 0;
    if (get_id_for_path_64(a1, a2, v20, &v13, 0, 0))
    {
      v5 = 2;
    }

    else
    {
      if (_sqlite_delete(a1, v20, 8))
      {
        v6 = *__error();
        v7 = _SILogForLogForCategory(4);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v15 = "remove_path_locked";
          v16 = 1024;
          v17 = 813;
          v18 = 2048;
          v19 = *&v20[0];
          _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: psid-remove: Could not delete the file-fid record for fid %lld\n", buf, 0x1Cu);
        }

        *__error() = v6;
      }

      memset(v20 + 8, 0, 264);
      *&v20[0] = v13;
      v8 = strrchr(a2, 47);
      v9 = a2 - 1;
      if (v8)
      {
        v9 = v8;
      }

      strncpy((v20 | 0xE), v9 + 1, 0x100uLL);
      BYTE13(v20[16]) = 0;
      WORD6(v20[0]) = strlen((v20 | 0xE)) + 1;
      v5 = 2 * (_sqlite_delete(a1, v20, WORD6(v20[0]) + 16) != 0);
    }

    v10 = _sqlite_bulkEnd(a1);
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = 22;
    }

    if (v10)
    {
      result = v11;
    }

    else
    {
      result = v5;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_getUserFSBundleID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!*(a1 + 1192) || (*(a1 + 2072) & 1) != 0)
  {
    return 0;
  }

  result = 0;
  if (a4)
  {
    if (*(a1 + 1416))
    {
      (*(a9 + 16))(a9, 28, "com.apple.filesystems.UserFS.FileProvider", 0, a6, a10);
      return 1;
    }
  }

  return result;
}

uint64_t si_getRenderOrEngagementValues(datastore_info *a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6, char *__s)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1 || (Dbo = a3) == 0 && (Dbo = iterateToGetDbo(a1, a2)) == 0)
  {
    v32 = 0;
    goto LABEL_44;
  }

  v37 = 0;
  v38 = 0;
  if (db_get_field_locked(a1, Dbo, __s, &v38, &v37))
  {
    goto LABEL_41;
  }

  if (*v38 != 14)
  {
    goto LABEL_41;
  }

  v14 = *(v38 + 8);
  if (v14 < 2)
  {
    goto LABEL_41;
  }

  v15 = v37;
  if (*v37 != 9)
  {
    goto LABEL_41;
  }

  v16 = v14 - 1;
  v40 = 0;
  v39 = 0;
  if (v16 < 9)
  {
    goto LABEL_41;
  }

  v17 = llround(((86400 * (CFAbsoluteTimeGetCurrent() / 0x15180)) - *(v37 + 1)) / 86400.0);
  if (v17 > 0x16D || v16 == 9)
  {
    goto LABEL_41;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = (v15 + 9);
  v27 = (v15 + 11);
  do
  {
    v28 = *v26;
    v25 += v28;
    if (v28 == 255 && !v26[3])
    {
      v25 += *v27;
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    v30 = v17 - v25;
    v31 = v26[1];
    if (v17 == v25)
    {
      v24 += v31;
      LOWORD(v39) = v24;
LABEL_20:
      v23 += v31;
      WORD1(v39) = v23;
LABEL_21:
      v22 += v31;
      WORD2(v39) = v22;
LABEL_22:
      v21 += v31;
      HIWORD(v39) = v21;
LABEL_23:
      v20 += v31;
      LOWORD(v40) = v20;
LABEL_24:
      v19 += v31;
      HIWORD(v40) = v19;
      goto LABEL_25;
    }

    if (v30 <= 6)
    {
      goto LABEL_20;
    }

    if (v30 <= 0x1D)
    {
      goto LABEL_21;
    }

    if (v30 <= 0x59)
    {
      goto LABEL_22;
    }

    if (v30 <= 0xB5)
    {
      goto LABEL_23;
    }

    if (v30 <= 0x16C)
    {
      goto LABEL_24;
    }

LABEL_25:
    v26 += 4;
    if (!v29)
    {
      v26 = v27;
    }

    if ((v30 & 0x8000000000000000) != 0)
    {
      break;
    }

    v27 = v26 + 2;
  }

  while ((v26 + 2) <= v15 + 1 + v16);
  if (v31)
  {
    v33 = (*(a5 + 16))(a5, 6, 0, 0, a4, a6);
    for (i = 0; i != 6; ++i)
    {
      (*(a5 + 16))(a5, 17, *(&v39 + i), 0, i, v33);
    }

    (*(a5 + 16))(a5, 7, v33, 0, a4, a6);
    v32 = 1;
    goto LABEL_42;
  }

LABEL_41:
  v32 = 0;
LABEL_42:
  if (Dbo != a3)
  {
    free(Dbo);
  }

LABEL_44:
  v35 = *MEMORY[0x1E69E9840];
  return v32;
}

_DWORD *iterateToGetDbo(datastore_info *a1, uint64_t a2)
{
  v12 = a2;
  v2 = db_obj_iter_create_with_filter(a1, 1uLL, &v12, 0, 0, 16, 0, 0, 0);
  v6 = db_obj_iter_next(v2, &v11, 1, v3, v4, v5);
  if (v6)
  {
    v7 = v6;
    v8 = malloc_type_malloc(v6[3], 0x1000040EED21634uLL);
    v9 = v8;
    if (v8)
    {
      memcpy(v8, v7, v7[3]);
      v9[2] = v7[3];
    }
  }

  else
  {
    v9 = 0;
  }

  db_obj_iter_release(v2);
  return v9;
}

uint64_t si_fsContentTypeMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  if (!convert_value_to_type(0xBu, a7))
  {
    if (*(a7 + 24) == 5 && (v9 = *(a7 + 72), *v9 == 42))
    {
      if (!a6 || !v9[1])
      {
        return 0;
      }
    }

    else if (!a6)
    {
      return 0;
    }

    CatInfoGotten::fastPath(a6);
  }

  return 0;
}

uint64_t si_fsContentTypeAttr(int a1, int a2, int a3, int a4, int a5, int a6, int a7, CatInfoGotten *this)
{
  if (this)
  {
    CatInfoGotten::fastPath(this);
  }

  return 0;
}

uint64_t si_getOnBootVolumeField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(a1 + 6584))
  {
    v10 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v10 = MEMORY[0x1E695E4C0];
  }

  (*(a9 + 16))(a9, 34, *v10, 0, a6, a10);
  return 1;
}

uint64_t si_getSDBInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v16 = v15;
  v60[512] = *MEMORY[0x1E69E9840];
  v59 = v12;
  result = v15[149];
  if (result)
  {
    v18 = v14;
    v19 = v13;
    v20 = v12;
    v21 = v11;
    v22 = v10;
    if (!v12 && (!db_get_obj(result, v11, &v59, 0) ? (v23 = v59 == 0) : (v23 = 1), v23))
    {
      result = 0;
    }

    else
    {
      makeThreadId();
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v22)
      {
        v25 = *(v22 + 176);
      }

      else
      {
        v25 = 0;
      }

      v26 = v16[149];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 0x40000000;
      v57[2] = ___ZL13si_getSDBInfoP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke;
      v57[3] = &__block_descriptor_tmp_213;
      v58 = v25;
      v57[4] = v16;
      v57[5] = v59;
      v57[6] = Mutable;
      _enumerate_dbo(v26, v59, 1, v57);
      v27 = CFDateCreate(0, *(v59 + 2) / 1000000.0 - *MEMORY[0x1E695E468]);
      CFDictionaryAddValue(Mutable, @"kMDItemAttributeChangeDate", v27);
      CFRelease(v27);
      valuePtr = *v59;
      v28 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      CFDictionaryAddValue(Mutable, @"oid", v28);
      CFRelease(v28);
      valuePtr = *(v59 + 3);
      v29 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      CFDictionaryAddValue(Mutable, @"parent_oid", v29);
      CFRelease(v29);
      valuePtr = *(v59 + 4);
      v30 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
      CFDictionaryAddValue(Mutable, @"index_id", v30);
      CFRelease(v30);
      v55 = 0;
      v31 = si_indexForDocId(v16, valuePtr);
      if (v31)
      {
        LODWORD(v60[0]) = 0;
        v53 = 0;
        v54 = 0.0;
        v32 = !v18 || (*(v18 + 8) & 4) == 0;
        if (_CIGetDocIDInfo(v31, v20[4], &v55, v60, &v54, &v53, v32))
        {
          if (LODWORD(v60[0]))
          {
            v33 = CFDateCreate(0, LODWORD(v60[0]));
            CFDictionaryAddValue(Mutable, @"index_ranking_date", v33);
            CFRelease(v33);
          }

          if (v54 != 0.0)
          {
            v34 = CFNumberCreate(0, kCFNumberFloatType, &v54);
            CFDictionaryAddValue(Mutable, @"index_ranking_score", v34);
            CFRelease(v34);
          }

          if (v53)
          {
            valuePtr = v53;
            v35 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
            CFDictionaryAddValue(Mutable, @"index_ranking_container", v35);
            CFRelease(v35);
          }
        }
      }

      v36 = CFNumberCreate(0, kCFNumberSInt8Type, &v55);
      CFDictionaryAddValue(Mutable, @"index_group", v36);
      CFRelease(v36);
      v37 = CFNumberCreate(0, kCFNumberSInt32Type, v59 + 40);
      CFDictionaryAddValue(Mutable, @"flags", v37);
      CFRelease(v37);
      v38 = v16[828];
      if (v38)
      {
        v39 = *(v59 + 3);
        if (v39)
        {
          bzero(v60, 0x1000uLL);
          Path = directoryStoreGetPath(v38, v39, v60);
          if (Path)
          {
            v41 = Path;
            v42 = CFStringCreateMutable(0, 0);
            if (v41 >= 1)
            {
              v43 = v41 + 1;
              v44 = &v60[v41 - 1];
              do
              {
                v45 = *v44--;
                CFStringAppendFormat(v42, 0, @"/%lld", v45);
                --v43;
              }

              while (v43 > 1);
            }

            CFStringAppendFormat(v42, 0, @"/%lld", *(v59 + 3));
            CFStringAppendFormat(v42, 0, @"/%lld", *v59);
            CFDictionaryAddValue(Mutable, @"oid_path", v42);
            CFRelease(v42);
          }
        }
      }

      v46 = v16[177];
      if (v46)
      {
        bzero(v60, 0x400uLL);
        if (!*(v46 + 240))
        {
          v50 = (*(v46 + 40))(v46, v21, v60, 0, 0, 0, 0, -1);
          if (v50)
          {
            v51 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v50, 0x8000100u);
            if (v51)
            {
              v52 = v51;
              CFDictionaryAddValue(Mutable, @"_kMDItemPSIDPath", v51);
              CFRelease(v52);
            }
          }
        }
      }

      if (*v59 == 2)
      {
        v47 = SICopyProperties(v16);
        if (v47)
        {
          v48 = v47;
          CFDictionaryAddValue(Mutable, @"store_properties", v47);
          CFRelease(v48);
        }
      }

      (*(a9 + 16))(a9, 34, Mutable, 0, v19, a10);
      CFRelease(Mutable);
      if (v59 != v20)
      {
        free(v59);
      }

      result = 1;
    }
  }

  v49 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZL13si_getSDBInfoP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke(uint64_t a1, char *a2, uint64_t a3)
{
  if (isEntitledForAttribute(*(a1 + 56), a2))
  {
    v6 = CFStringCreateWithCString(0, a2, 0x8000100u);
    if (v6)
    {
      v7 = v6;
      v8 = _decodeSDBField(*(*(a1 + 32) + 1192), a3, (a3 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480]);
      if (v8)
      {
        v9 = v8;
        CFDictionaryAddValue(*(a1 + 48), v7, v8);
        CFRelease(v9);
      }

      CFRelease(v7);
    }
  }
}

uint64_t si_getLabelIDs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a1 + 1192);
  if (a5)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  result = !v12;
  if (!v12)
  {
    v22 = result;
    v21 = a6;
    v15 = (*(a9 + 16))(a9, 6, 0, 0);
    if (*(a5 + 12) >= 0x31u)
    {
      v16 = 0;
      v17 = a5 + 48;
      do
      {
        if (*(a1 + 1284) < 73 || (*(v17 + 2) & 4) != 0)
        {
          field_name_for_id_locked = db_get_field_name_for_id_locked(v11, *(v17 + 4));
          if (field_name_for_id_locked)
          {
            v19 = field_name_for_id_locked;
            if (!strncmp("kMDLabel_", field_name_for_id_locked, 9uLL))
            {
              v20 = rindex(v19, 95);
              (*(a9 + 16))(a9, 28, v20 + 1, 0, v16++, v15);
            }
          }
        }

        v17 += *(v17 + 8) + 13;
      }

      while (v17 < a5 + *(a5 + 12));
    }

    (*(a9 + 16))(a9, 7, v15, 0, v21, a10);
    return v22;
  }

  return result;
}

uint64_t si_collectDisplayNameWithExtensionsSynth(uint64_t a1, int a2, uint64_t a3, __CFSet *a4, char **a5)
{
  v5 = 0;
  if (a3)
  {
    v6 = *(a1 + 1192);
    if (v6)
    {
      *v13 = 0;
      v14 = 0;
      if (db_get_field_locked(v6, a3, "_kMDItemDisplayNameWithExtensions", v13, &v14))
      {
        v10 = 1;
      }

      else
      {
        v10 = v14 == 0;
      }

      if (!v10 || (v5 = 0, !db_get_field_locked(v6, a3, "kMDItemDisplayName", v13, &v14)) && v14)
      {
        v5 = 1;
        v11 = _decodeSDBField(v6, *v13, (*v13 + 13), a5, 0, 0, 1, 0);
        CFSetAddValue(a4, v11);
        CFRelease(v11);
      }
    }
  }

  return v5;
}

uint64_t si_getDisplayNameWithExtensionsSynth(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(a1 + 1192);
  if (a3)
  {
    v13 = *(a3 + 120);
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    v13 = 0;
    if (!v12)
    {
      return 0;
    }
  }

  if (a5 && a6 && a7)
  {
    v14 = (a7 + 8 * a6);
    result = *v14;
    if (!*v14)
    {
      result = v14[1];
      if (!result)
      {
        return result;
      }
    }

LABEL_17:
    eventParseField(result, *result, a9, a10, v12, v13, 0, a6);
    return 1;
  }

  if (!a5)
  {
    return 0;
  }

  key = 0;
  v18 = 0;
  if (!db_get_field_locked(v12, a5, "_kMDItemDisplayNameWithExtensions", &key, &v18) && v18 || (field_locked = db_get_field_locked(v12, a5, "kMDItemDisplayName", &key, &v18), result = 0, !field_locked) && v18)
  {
    result = key;
    goto LABEL_17;
  }

  return result;
}

BOOL si_dboLastModMatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a5)
  {
    return 0;
  }

  if ((*(a7 + 24) - 11) >= 2)
  {
    if (convert_value_to_type(0xCu, a7))
    {
      return 0;
    }

    else
    {
      v9 = *(a5 + 16) / 1000000.0 - *MEMORY[0x1E695E468];
      return db_compare_val(12);
    }
  }

  else
  {
    v9 = *(a5 + 16) / 1000000.0 - *MEMORY[0x1E695E468];
    return _db_rangeCompare(12, a7, 8uLL, &v9, 0, 0, 0) == 1;
  }
}

BOOL si_itemRecipientEmailAddressesMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0;
  if (a5)
  {
    v8 = *(a1 + 1192);
    if (v8)
    {
      v11 = 0;
      v12 = 0;
      if (convert_value_to_type(0xBu, a7))
      {
        return 0;
      }

      if (db_get_field_locked(v8, a5, "kMDItemPrimaryRecipientEmailAddresses", &v12, &v11) || (v7 = 1, do_compare(v8) != 1))
      {
        if (db_get_field_locked(v8, a5, "kMDItemAdditionalRecipientEmailAddresses", &v12, &v11) || (v7 = 1, do_compare(v8) != 1))
        {
          if (!db_get_field_locked(v8, a5, "kMDItemHiddenAdditionalRecipientEmailAddresses", &v12, &v11))
          {
            return do_compare(v8) == 1;
          }

          return 0;
        }
      }
    }
  }

  return v7;
}

uint64_t si_getItemRecipientEmailAddresses(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(a1 + 1192);
  if (a5)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    v17 = (*(a9 + 16))(a9, 6, 0, 0, a6);
    v42 = 0;
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x2000000000;
    v41 = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v35 = ___ZL33si_getItemRecipientEmailAddressesP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke;
    v36 = &unk_1E8193E90;
    v37 = a9;
    v38 = v40;
    v32 = v17;
    v39 = v17;
    if (a6 && a7)
    {
      v18 = (a7 + 8 * a6);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      if (*v18)
      {
        v42 = v19 + 13;
        v22 = _decodeSDBField(*(a1 + 1192), v19, (v19 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480]);
        v35(v34, v22);
        CFRelease(v22);
      }

      if (v20)
      {
        v42 = v20 + 13;
        v23 = _decodeSDBField(*(a1 + 1192), v20, (v20 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480]);
        v35(v34, v23);
        CFRelease(v23);
      }

      if (!v21)
      {
        goto LABEL_23;
      }

      v24 = (v21 + 13);
      v42 = v21 + 13;
      v25 = *(a1 + 1192);
      v26 = *MEMORY[0x1E695E480];
      v27 = v21;
    }

    else
    {
      *v33 = 0;
      if (!db_get_field_locked(v10, a5, "kMDItemPrimaryRecipientEmailAddresses", v33, &v42))
      {
        v28 = _decodeSDBField(*(a1 + 1192), *v33, (*v33 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480]);
        v35(v34, v28);
        CFRelease(v28);
      }

      if (!db_get_field_locked(v10, a5, "kMDItemAdditionalRecipientEmailAddresses", v33, &v42))
      {
        v29 = _decodeSDBField(*(a1 + 1192), *v33, (*v33 + 13), 0, 0, 0, 1, *MEMORY[0x1E695E480]);
        v35(v34, v29);
        CFRelease(v29);
      }

      if (db_get_field_locked(v10, a5, "kMDItemHiddenAdditionalRecipientEmailAddresses", v33, &v42))
      {
        goto LABEL_23;
      }

      v25 = *(a1 + 1192);
      v27 = *v33;
      v26 = *MEMORY[0x1E695E480];
      v24 = (*v33 + 13);
    }

    v30 = _decodeSDBField(v25, v27, v24, 0, 0, 0, 1, v26);
    v35(v34, v30);
    CFRelease(v30);
LABEL_23:
    (*(a9 + 16))(a9, 7, v32, 0, a6, a10);
    _Block_object_dispose(v40, 8);
  }

  return v12;
}

uint64_t ___ZL33si_getItemRecipientEmailAddressesP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke(void *a1, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    for (i = 0; ; ++i)
    {
      result = CFArrayGetCount(a2);
      if (result <= i)
      {
        break;
      }

      v7 = a1[4];
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v9 = a1[6];
      ++*(*(a1[5] + 8) + 24);
      (*(v7 + 16))(v7, 34, ValueAtIndex, 0);
    }
  }

  else
  {
    v10 = CFStringGetTypeID();
    result = CFGetTypeID(a2);
    if (v10 == result)
    {
      v11 = a1[4];
      ++*(*(a1[5] + 8) + 24);
      v12 = a1[6];
      v13 = *(v11 + 16);

      return v13();
    }
  }

  return result;
}

BOOL si_getIndexGroupId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a5)
  {
    v12 = *(a5 + 32);
    v13 = si_indexForDocId(a1, v12);
    v14 = _CIGetGroupForDocId(v13, v12);
    (*(a9 + 16))(a9, 18, v14, 0, a6, a10);
  }

  return a5 != 0;
}

uint64_t si_getCachedTextContent(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v12 = result;
    bzero(v30, 0x400uLL);
    v13 = si_cache_relative_path_for_oid(a4, "txt", v30, *(v12 + 2072));
    if (v13)
    {
      v13 = openat(*(v12 + 32), v13, 0);
      if (v13 != -1)
      {
        v14 = v13;
        v15 = lseek(v13, 0, 2);
        if (v15 >= 1)
        {
          v16 = v15 >= 0x20000 ? 0x20000 : v15;
          v17 = mmap(0, v16, 1, 1025, v14, 0);
          if (v17 != -1)
          {
            v18 = v17;
            (*(a9 + 16))(a9, 33, v17, v16, a6, a10);
            munmap(v18, v16);
            close(v14);
            result = 1;
            goto LABEL_18;
          }
        }

        v13 = close(v14);
      }
    }

    if (!*(v12 + 1296))
    {
      result = 0;
      goto LABEL_18;
    }

    MEMORY[0x1EEE9AC00](v13);
    bzero(v28, 0x3E9uLL);
    v29 = 0;
    if (doc_store_get_document(*(v12 + 1296), a4, v28, &v29))
    {
      goto LABEL_13;
    }

    v19 = v29;
    if (!v29)
    {
      goto LABEL_13;
    }

    if ((v28[v29 - 1] & 0x80000000) == 0)
    {
LABEL_17:
      v28[v19] = 0;
      (*(a9 + 16))(a9, 28, v28, 0, a6, a10);
      result = 1;
      goto LABEL_18;
    }

    v21 = v28[v29 - 1];
    if (v21 - 194 > 0x32)
    {
      if (v21 > 0xBF)
      {
        goto LABEL_17;
      }

      v22 = v28[v29 - 2];
      if ((v22 - 224) > 0x14)
      {
        if (v22 > -65)
        {
          goto LABEL_17;
        }

        v27 = v28[v29 - 3];
        if ((v27 - 240) > 4 || ((byte_1C2BFF1EA[v22 >> 4] >> (v27 & 7)) & 1) == 0)
        {
          goto LABEL_17;
        }

        v29 -= 3;
        v19 -= 3;
LABEL_22:
        if (v19)
        {
          goto LABEL_17;
        }

LABEL_13:
        result = 0;
        goto LABEL_18;
      }

      v23 = v22 > 0xEF;
      v24 = v22 & 7;
      v25 = &a00000000000000[v22 & 0xF];
      v26 = v21 >> 5;
      if (v23)
      {
        LOBYTE(v26) = v24;
        v25 = &byte_1C2BFF1EA[v28[v29 - 1] >> 4];
      }

      if (((*v25 >> v26) & 1) == 0)
      {
        goto LABEL_17;
      }

      v19 = v29 - 2;
    }

    else
    {
      v19 = v29 - 1;
    }

    v29 = v19;
    goto LABEL_22;
  }

LABEL_18:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_getHealthCheckDate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!*(a1 + 1192))
  {
    return 0;
  }

  result = SICopyProperty(a1, @"kStorePropertyHealthCheckCompleteTime");
  if (result)
  {
    v12 = result;
    (*(a9 + 16))(a9, 34, result, 0, a6, a10);
    CFRelease(v12);
    return 1;
  }

  return result;
}

BOOL si_fsGroupIdMatch(int a1, int a2, int a3, int a4, int a5, CatInfoGotten *this, uint64_t a7)
{
  if (this)
  {
    CatInfoGotten::fastPath(this);
  }

  convert_value_to_type(5u, a7);
  return db_compare_val(5);
}

uint64_t si_fsGroupIdAttr(int a1, int a2, int a3, int a4, int a5, int a6, int a7, CatInfoGotten *this)
{
  if (this)
  {
    CatInfoGotten::fastPath(this);
  }

  return 0;
}

uint64_t si_dboTopMatchingAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = 0u;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZL26si_dboTopMatchingAttributeP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke;
  block[3] = &__block_descriptor_tmp_5183;
  v29 = 0;
  v30 = constStrDictionaryCopyDescriptionCallBack;
  v31 = constStrDictionaryEqualCallBack;
  v32 = constStrDictionaryHashCallBack;
  if (si_dboTopMatchingAttribute(__SI *,char const*,__SIUserCtx *,long long,db_obj *,int,db_field **,CatInfoGotten *,void *({block_pointer})(SI_OBJECT_EVENT,si_event_data_t,unsigned long,void *),void *)::once == -1)
  {
    if (!a5)
    {
      return 0;
    }
  }

  else
  {
    dispatch_once(&si_dboTopMatchingAttribute(__SI *,char const*,__SIUserCtx *,long long,db_obj *,int,db_field **,CatInfoGotten *,void *({block_pointer})(SI_OBJECT_EVENT,si_event_data_t,unsigned long,void *),void *)::once, block);
    if (!a5)
    {
      return 0;
    }
  }

  if (*(a5 + 12) >= 0x31u)
  {
    v14 = 0;
    v15 = (a5 + 48);
    v16 = 0.0;
    do
    {
      if (*(v15 + 12) && (v15[1] & 0x100) == 0)
      {
        field_name_for_id_locked = db_get_field_name_for_id_locked(*(a1 + 1192), *(v15 + 1));
        v18 = *(v15 + 1) == *(a1 + 2052) ? "kMDItemDisplayName" : field_name_for_id_locked;
        if (v18)
        {
          Value = CFDictionaryGetValue(si_dboTopMatchingAttribute(__SI *,char const*,__SIUserCtx *,long long,db_obj *,int,db_field **,CatInfoGotten *,void *({block_pointer})(SI_OBJECT_EVENT,si_event_data_t,unsigned long,void *),void *)::__attribute_importance_dictionary, v18);
          if (Value)
          {
            valuePtr = 0.0;
            if (CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr))
            {
              if (valuePtr > v16 || v14 == 0)
              {
                v16 = valuePtr;
                v14 = v15;
              }
            }
          }
        }
      }

      v15 = (v15 + *(v15 + 2) + 13);
    }

    while (v15 < a5 + *(a5 + 12));
    if (v14)
    {
      v21 = (*(a9 + 16))(a9, 12, 0, 0, a6, a10);
      addFieldName(a9, v21, *(a1 + 1192), *(v14 + 1));
      if (a3)
      {
        v22 = *(a3 + 120);
      }

      else
      {
        v22 = 0;
      }

      v23 = 1;
      eventParseField(v14, *v14, a9, v21, *(a1 + 1192), v22, 0, 1);
      (*(a9 + 16))(a9, 13, v21, 0, a6, a10);
      return v23;
    }
  }

  if ((*(a5 + 41) & 0x80) == 0)
  {
    return 0;
  }

  v24 = (*(a9 + 16))(a9, 12, 0, 0, a6, a10);
  if (!(*(a9 + 16))(a9, 30, 0x40000000, 0, 0, v24))
  {
    (*(a9 + 16))(a9, 31, "kMDItemTextContent", 0x40000000, 0, v24);
  }

  (*(a9 + 16))(a9, 13, v24, 0, a6, a10);
  return 1;
}

void ___ZL26si_dboTopMatchingAttributeP4__SIPKcP11__SIUserCtxxP6db_objiPP8db_fieldP13CatInfoGottenU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmSC_ESC__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = 41;
  si_dboTopMatchingAttribute(__SI *,char const*,__SIUserCtx *,long long,db_obj *,int,db_field **,CatInfoGotten *,void *({block_pointer})(SI_OBJECT_EVENT,si_event_data_t,unsigned long,void *),void *)::__attribute_importance_dictionary = CFDictionaryCreateMutable(0, 41, (a1 + 32), MEMORY[0x1E695E9E8]);
  v2 = &unk_1E8193C00;
  do
  {
    v3 = *(v2 - 1);
    CStringPtr = CFStringGetCStringPtr(v3, 0);
    memset(v7, 0, sizeof(v7));
    if (CStringPtr || (CStringPtr = v7, CFStringGetCString(v3, v7, 256, 0x8000100u)))
    {
      if (*CStringPtr)
      {
        v5 = CFNumberCreate(0, kCFNumberFloatType, v2);
        CFDictionarySetValue(si_dboTopMatchingAttribute(__SI *,char const*,__SIUserCtx *,long long,db_obj *,int,db_field **,CatInfoGotten *,void *({block_pointer})(SI_OBJECT_EVENT,si_event_data_t,unsigned long,void *),void *)::__attribute_importance_dictionary, CStringPtr, v5);
        CFRelease(v5);
      }
    }

    v2 += 2;
    --v1;
  }

  while (v1);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t addFieldName(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  v8 = a4 | 0x40000000u;
  result = (*(a1 + 16))(a1, 30, 0, v8, 0, a2);
  if (!result)
  {
    field_name_for_id_locked = db_get_field_name_for_id_locked(a3, a4);
    if (field_name_for_id_locked)
    {
      v11 = field_name_for_id_locked;
    }

    else
    {
      v11 = "";
    }

    v12 = *(a1 + 16);

    return v12(a1, 31, v11, v8, 0, a2);
  }

  return result;
}

uint64_t constStrDictionaryHashCallBack(const char *a1)
{
  v2 = -1759636613;
  v3 = strlen(a1);
  if (v3 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 + 3;
  }

  v5 = &a1[v4 & 0xFFFFFFFC];
  if ((v3 + 3) >= 7)
  {
    v8 = -(v4 >> 2);
    v9 = -1789642873;
    v10 = 718793509;
    do
    {
      v9 = 5 * v9 + 2071795100;
      v10 = 5 * v10 + 1808688022;
      HIDWORD(v11) = v9 * *&v5[4 * v8];
      LODWORD(v11) = HIDWORD(v11);
      v12 = (v11 >> 21) * v10;
      HIDWORD(v11) = v2;
      LODWORD(v11) = v2;
      v2 = v12 ^ (5 * (v11 >> 19) + 1390208809);
    }

    while (!__CFADD__(v8++, 1));
    v7 = 5 * v9 + 2071795100;
    v6 = 5 * v10 + 1808688022;
  }

  else
  {
    v6 = 1107688271;
    v7 = 1713515327;
  }

  v14 = 0;
  if ((v3 & 3u) > 1)
  {
    if ((v3 & 3) != 2)
    {
      v14 = *(v5 + 2) << 16;
    }

    v14 |= *(v5 + 1) << 8;
  }

  else if ((v3 & 3) == 0)
  {
    goto LABEL_17;
  }

  HIDWORD(v15) = (v14 ^ *v5) * v7;
  LODWORD(v15) = HIDWORD(v15);
  v16 = (v15 >> 21) * v6;
  HIDWORD(v15) = v2;
  LODWORD(v15) = v2;
  v2 = v16 ^ (5 * (v15 >> 19) + 1390208809);
LABEL_17:
  v17 = -1028477387 * ((-2048144789 * (v2 ^ v3)) ^ ((-2048144789 * (v2 ^ v3)) >> 13));
  return v17 ^ HIWORD(v17);
}

uint64_t si_getIndexCookie(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = si_storecookieRef(a1);
  v12 = CFUUIDCreateString(*MEMORY[0x1E695E480], v11);
  (*(a9 + 16))(a9, 34, v12, 0, a6, a10);
  CFRelease(v12);
  return 1;
}

uint64_t si_getFPItemIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1192) || (*(a1 + 2072) & 1) != 0)
  {
    goto LABEL_3;
  }

  result = 0;
  if (a5 && a4 && *(a1 + 1416))
  {
    makeThreadId();
    if (a4 == 2)
    {
      (*(a9 + 16))(a9, 28, "NSFileProviderRootContainerItemIdentifier", 0, a6, a10);
LABEL_24:
      result = 1;
      goto LABEL_4;
    }

    bzero(v31, 0x400uLL);
    v29 = 0;
    v30 = 0;
    if (db_get_field_locked(*(a1 + 1192), a5, "_kMDItemFileName", &v29, &v30) || *v29 != 11 || (v29[1] & 0x10) != 0)
    {
      v20 = 0;
    }

    else
    {
      v16 = *(a1 + 1416);
      if (v16 && (*(v16 + 160) & 1) == 0 && (v17 = *(v16 + 184)) != 0)
      {
        v18 = a5[3];
        v19 = *a5;
        v20 = v31;
        v21 = v17();
        if (v21)
        {
          v20 = 0;
        }

        if (v21 != 45)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v20 = 0;
        v31[0] = 0;
      }
    }

    v22 = *(a1 + 1416);
    if (!*(v22 + 240))
    {
      v23 = (*(v22 + 40))(v22, 2, v31, 0, 0, 0, 0, -1);
      if (v23)
      {
        v24 = strlen(v23);
        v25 = *(a1 + 1416);
        if (!*(v25 + 240))
        {
          v26 = (*(v25 + 40))(v25, a4, v31, 0, 0, 0, 0, -1);
          if (v26)
          {
            v27 = v26;
            if (strlen(v26) > v24)
            {
              v20 = &v27[v24 - 1];
              do
              {
                v28 = *++v20;
              }

              while (v28 == 47);
LABEL_23:
              (*(a9 + 16))(a9, 28, v20, 0, a6, a10);
              goto LABEL_24;
            }
          }
        }
      }
    }

LABEL_22:
    if (!v20)
    {
LABEL_3:
      result = 0;
      goto LABEL_4;
    }

    goto LABEL_23;
  }

LABEL_4:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_indexRankingDateSecondsMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = 0;
  if (a5 && *(a1 + 1192))
  {
    if (convert_value_to_type(6u, a7))
    {
      return 0;
    }

    v12 = *(a5 + 32);
    result = si_indexForDocId(a1, v12);
    if (result)
    {
      v17 = 0;
      if (a6)
      {
        v13 = (*(a6 + 8) & 4) == 0;
      }

      else
      {
        v13 = 1;
      }

      _CIGetDocIDInfo(result, v12, 0, &v17, 0, 0, v13);
      if (!v17)
      {
        return 0;
      }

      v14 = *(a7 + 216);
      v15 = *(a7 + 24);
      if (v15 == 1)
      {
        return v17 == v14;
      }

      if (v15 == 2 && v17 == v14)
      {
        return 1;
      }

      if ((v15 - 5) <= 1 && v17 != v14)
      {
        return 1;
      }

      v16 = v17 - v14;
      if (v15 == 7 && v16 < 0)
      {
        return 1;
      }

      if (v15 == 3 && v16 < 1)
      {
        return 1;
      }

      if (v15 == 8 && v16 > 0)
      {
        return 1;
      }

      result = 0;
      if (v15 == 4 && (v16 & 0x80000000) == 0)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL si_getIndexRankingDateSeconds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a5)
  {
    return 0;
  }

  v12 = *(a5 + 32);
  v13 = si_indexForDocId(a1, v12);
  if (!v13)
  {
    return 0;
  }

  v17 = 0;
  if (a8)
  {
    v14 = (*(a8 + 8) & 4) == 0;
  }

  else
  {
    v14 = 1;
  }

  _CIGetDocIDInfo(v13, v12, 0, &v17, 0, 0, v14);
  v15 = v17 != 0;
  if (v17)
  {
    (*(a9 + 16))(a9, 22, v17, 0, a6, a10);
  }

  return v15;
}

uint64_t si_getIndexRankingContainer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a5)
  {
    return 0;
  }

  v12 = *(a5 + 32);
  v13 = si_indexForDocId(a1, v12);
  if (!v13)
  {
    return 0;
  }

  v17 = 0;
  if (a8)
  {
    v14 = (*(a8 + 8) & 4) == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = _CIGetDocIDInfo(v13, v12, 0, 0, 0, &v17, v14);
  if (v15)
  {
    (*(a9 + 16))(a9, 22, v17, 0, a6, a10);
  }

  return v15;
}

uint64_t si_dboDisplayNameMatchingAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a5)
  {
    v9 = *(a5 + 12);
    if (v9 >= 0x31)
    {
      v10 = a5 + v9;
      v11 = a5 + 48;
      do
      {
        if (*(v11 + 12))
        {
          if ((*(v11 + 2) & 0x100) == 0)
          {
            v12 = *(v11 + 4);
            if (v12 == *(a1 + 2016) || v12 == *(a1 + 2052))
            {
              break;
            }
          }
        }

        v11 += *(v11 + 8) + 13;
      }

      while (v11 < v10);
    }
  }

  (*(a9 + 16))();
  return 1;
}

uint64_t si_getIndexRankingScore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a5)
  {
    return 0;
  }

  v12 = *(a5 + 32);
  v13 = si_indexForDocId(a1, v12);
  if (!v13)
  {
    return 0;
  }

  v17 = 0;
  if (a8)
  {
    v14 = (*(a8 + 8) & 4) == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = _CIGetDocIDInfo(v13, v12, 0, 0, &v17, 0, v14);
  if (v15)
  {
    (*(a9 + 16))(a9, 26, v17, 0, a6, a10);
  }

  return v15;
}

BOOL si_getIndexRankingDate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a5)
  {
    return 0;
  }

  v12 = *(a5 + 32);
  v13 = si_indexForDocId(a1, v12);
  if (!v13)
  {
    return 0;
  }

  v18 = 0;
  if (a8)
  {
    v14 = (*(a8 + 8) & 4) == 0;
  }

  else
  {
    v14 = 1;
  }

  _CIGetDocIDInfo(v13, v12, 0, &v18, 0, 0, v14);
  v15 = v18 != 0;
  if (v18)
  {
    v16 = CFDateCreate(0, v18);
    (*(a9 + 16))(a9, 34, v16, 0, a6, a10);
    CFRelease(v16);
  }

  return v15;
}

uint64_t si_getCachedCachedIconPath(uint64_t a1, int a2, int a3, unint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  if (a5 && (db_get_field_locked(*(a1 + 1192), a5, "_kMDItemThumbnailDataExists", &v18, &v19) || !*v19) || (bzero(__dst, 0x800uLL), fcntl(*(a1 + 32), 50, __dst) < 0) || !__dst[0] || (v14 = strlcat(__dst, "/", 0x400uLL), v14 > 0x3FF) || (si_cache_relative_path_for_oid(a4, "img", &__dst[v14], *(a1 + 2072)), memset(&v17, 0, sizeof(v17)), !a5) && stat(__dst, &v17))
  {
    result = 0;
  }

  else
  {
    (*(a9 + 16))(a9, 28, __dst, 0, a6, a10);
    result = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL si_getAccumulatedSizes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 1192);
  if (!v10)
  {
    goto LABEL_20;
  }

  v12 = *(a1 + 2072);
  v13 = *(a9 + 16);
  v32 = a6;
  v33 = a10;
  if ((v12 & 1) == 0)
  {
    v21 = v13(a9, 6, 0, 0);
    v22 = pthread_mutex_lock((a1 + 6976));
    MEMORY[0x1EEE9AC00](v22);
    v23 = 0;
    v24 = 0;
    memset(&v29[1872], 0, 176);
    do
    {
      v25 = *(a1 + 7048 + v23);
      v24 |= v25 < 0;
      *&v29[v23 + 1880] = v25 & ~(v25 >> 63);
      v23 += 8;
    }

    while (v23 != 168);
    pthread_mutex_unlock((a1 + 6976));
    for (i = 0; i != 21; ++i)
    {
      (*(a9 + 16))(a9, 23, *&v29[8 * i + 1880], 0, i, v21);
    }

    (*(a9 + 16))(a9, 7, v21, 0, v32, v33);
    if ((v24 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    _SIRecomputeSizesWithCallback(a1, 0, &__block_literal_global_9005);
    goto LABEL_20;
  }

  v31 = v10;
  v14 = v13(a9, 10, 0, 0);
  v15 = pthread_mutex_lock((a1 + 6976));
  v30 = &v30;
  MEMORY[0x1EEE9AC00](v15);
  bzero(v29, 0x800uLL);
  v16 = 0;
  v17 = 0;
  do
  {
    if ((*&v29[v16 + 8] & 0x8000000000000000) != 0)
    {
      v18 = 0;
      v17 = 1;
    }

    else
    {
      v18 = *(a1 + 7048 + v16);
    }

    *&v29[v16 + 8] = v18;
    v16 += 8;
  }

  while (v16 != 2040);
  pthread_mutex_unlock((a1 + 6976));
  for (j = 1; j != 256; ++j)
  {
    v20 = *&v29[8 * j];
    if (v20)
    {
      *__str = 0u;
      v35 = 0u;
      snprintf(__str, 0x20uLL, "%d", j);
      (*(a9 + 16))(a9, 14, __str, 0, j - 1, v14);
      (*(a9 + 16))(a9, 23, v20, 0, j - 1, v14);
    }
  }

  (*(a9 + 16))(a9, 11, v14, 0, v32, v33);
  v10 = v31;
  if (v17)
  {
    goto LABEL_19;
  }

LABEL_20:
  result = v10 != 0;
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t si_dboMatchingAttributes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = a6;
  v13 = (*(a9 + 16))(a9, 6, 0, 0, a6, a10);
  if (a5)
  {
    if (*(a5 + 12) >= 0x31u)
    {
      v14 = 0;
      v15 = a5 + 48;
      while (!*(v15 + 12) || (*(v15 + 2) & 0x100) != 0)
      {
LABEL_15:
        v15 += *(v15 + 8) + 13;
        if (v15 >= a5 + *(a5 + 12))
        {
          goto LABEL_16;
        }
      }

      v16 = *(v15 + 4);
      if (v16 == *(a1 + 2052))
      {
        if ((v14 & 1) == 0)
        {
          v17 = *(a1 + 1192);
          v16 = *(a1 + 2016);
LABEL_11:
          addFieldName(a9, v13, v17, v16);
        }
      }

      else if (((v16 == *(a1 + 2016)) & v14) == 0)
      {
        v17 = *(a1 + 1192);
        goto LABEL_11;
      }

      v18 = *(v15 + 4);
      if (v18 == *(a1 + 2052) || v18 != *(a1 + 2016))
      {
        v14 = 1;
      }

      goto LABEL_15;
    }

LABEL_16:
    if ((*(a5 + 41) & 0x80) != 0 && (*(a9 + 16))(a9, 30, 0x40000000, 0, 0, v13))
    {
      (*(a9 + 16))(a9, 31, "kMDItemTextContent", 0x40000000, 0, v13);
    }
  }

  (*(a9 + 16))(a9, 7, v13, 0, v12, a10);
  return 1;
}

uint64_t si_getCachedCachedIcon(uint64_t a1, int a2, int a3, unint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = 0;
  if (a5 && (db_get_field_locked(*(a1 + 1192), a5, "_kMDItemThumbnailDataExists", &v23, &v24) || !*v24) || (bzero(__str, 0x400uLL), (v13 = si_cache_relative_path_for_oid(a4, "img", __str, *(a1 + 2072))) == 0) || (v14 = openat(*(a1 + 32), v13, 0), v14 == -1))
  {
    v20 = 0;
  }

  else
  {
    v15 = v14;
    v16 = lseek(v14, 0, 2);
    if (v16 >= 0x100000 || (v17 = v16, v18 = mmap(0, v16, 1, 1025, v15, 0), v18 == -1))
    {
      v20 = 0;
    }

    else
    {
      v19 = v18;
      (*(a9 + 16))(a9, 33, v18, v17, a6, a10);
      munmap(v19, v17);
      v20 = 1;
    }

    close(v15);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

BOOL si_getIndexID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a5)
  {
    (*(a9 + 16))(a9, 19, *(a5 + 32), 0, a6, a10);
  }

  return a5 != 0;
}

uint64_t si_getFPIsTrashed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!*(a1 + 1192) || (*(a1 + 2072) & 1) != 0)
  {
    return 0;
  }

  result = 0;
  if (a4)
  {
    if (*(a1 + 1416))
    {
      (*(a9 + 16))(a9, 20, 0, 0, a6, a10);
      return 1;
    }
  }

  return result;
}

uint64_t si_getPSIDPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1192) || (*(a1 + 2072) & 1) != 0)
  {
    goto LABEL_6;
  }

  result = 0;
  if (a4 && *(a1 + 1416))
  {
    makeThreadId();
    bzero(v16, 0x400uLL);
    v14 = *(a1 + 1416);
    if (*(v14 + 240))
    {
LABEL_6:
      result = 0;
      goto LABEL_7;
    }

    result = (*(v14 + 40))(v14, a4, v16, 0, 0, 0, 0, -1);
    if (result)
    {
      (*(a9 + 16))(a9, 28, result, 0, a6, a10);
      result = 1;
    }
  }

LABEL_7:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL si_getOIDParent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a5)
  {
    (*(a9 + 16))(a9, 23, *(a5 + 24), 0, a6, a10);
  }

  return a5 != 0;
}

BOOL si_getOIDPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v14 = v13;
  v28[512] = *MEMORY[0x1E69E9840];
  v15 = *(v13 + 1192);
  if (v15 && *(v14 + 6624) && ((v16 = v12, v17 = v11, (Dbo = v11) != 0) || (Dbo = iterateToGetDbo(v15, v10)) != 0))
  {
    if (Dbo[3])
    {
      bzero(v28, 0x1000uLL);
      makeThreadId();
      Path = directoryStoreGetPath(*(v14 + 6624), Dbo[3], v28);
      v20 = Path != 0;
      if (Path)
      {
        v21 = Path;
        Mutable = CFStringCreateMutable(0, 0);
        if (v21 >= 1)
        {
          v23 = v21 + 1;
          v24 = &v28[v21 - 1];
          do
          {
            v25 = *v24--;
            CFStringAppendFormat(Mutable, 0, @"/%lld", v25);
            --v23;
          }

          while (v23 > 1);
        }

        CFStringAppendFormat(Mutable, 0, @"/%lld", Dbo[3]);
        CFStringAppendFormat(Mutable, 0, @"/%lld", *Dbo);
        (*(a9 + 16))(a9, 34, Mutable, 0, v16, a10);
        CFRelease(Mutable);
      }
    }

    else
    {
      v20 = 0;
    }

    if (Dbo != v17)
    {
      free(Dbo);
    }
  }

  else
  {
    v20 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t si_getFilesystemField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a8 && (*(a1 + 2072) & 1) == 0)
    {
      bzero(v15, 0x470uLL);
      v15[1] = a1;
      v16 = a3;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = (*(a1 + 6584) >> 23) & 1;
LABEL_7:
      v20 = v11;
      v14 = &unk_1F42826E0;
      v21 = a4;
      CatInfoGotten_OID::~CatInfoGotten_OID(&v14);
    }
  }

  else if (!a8)
  {
    bzero(v15, 0x470uLL);
    v16 = a3;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    LOBYTE(v11) = 1;
    goto LABEL_7;
  }

  v12 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL si_dboIdMatches(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v10 = *a7;
  if (!strcmp(*a7, "_kMDItemIndexID"))
  {
    if (!a5)
    {
      return 0;
    }

    v11 = a5[4];
  }

  else
  {
    if (strcmp(v10, "_kMDItemOIDParent"))
    {
      if (a4)
      {
        v13 = a4;
        goto LABEL_12;
      }

      if (a5)
      {
        v11 = *a5;
        goto LABEL_11;
      }

      return 0;
    }

    if (!a5)
    {
      return 0;
    }

    v11 = a5[3];
  }

LABEL_11:
  v13 = v11;
LABEL_12:
  if ((*(a7 + 24) - 11) < 2)
  {
    return _db_rangeCompare(7, a7, 4uLL, &v13, 0, 0, 0) == 1;
  }

  if (convert_value_to_type(7u, a7))
  {
    return 0;
  }

  return db_compare_val(7);
}

void _log_fault_for_malloc_failure()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v0 = 0;
    _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", v0, 2u);
  }
}

CFAllocatorRef __query_zone_init_block_invoke()
{
  queryZone = malloc_create_zone(0x10000uLL, 0);
  malloc_set_zone_name(queryZone, "SIQueryMallocZone");
  context.version = 0;
  context.info = queryZone;
  memset(&context.retain, 0, 24);
  context.allocate = zone_allocate;
  context.reallocate = zone_reallocate;
  context.deallocate = zone_deallocate;
  context.preferredSize = zone_preferredSize;
  result = CFAllocatorCreate(*MEMORY[0x1E695E480], &context);
  kCIQueryZoneAllocator = result;
  return result;
}

float automaton_state_score(uint64_t a1, int a2)
{
  if (!a1)
  {
    return INFINITY;
  }

  v2 = a1 & -a1;
  if (!v2)
  {
    return INFINITY;
  }

  result = INFINITY;
  do
  {
    v4 = __clz(__rbit64(v2));
    if (a2 + ((103 * v4) >> 9))
    {
      v5 = (v4 - 5 * ((103 * v4) >> 9)) / (a2 + ((103 * v4) >> 9));
      if (v5 < result)
      {
        v6 = v5;
        result = v6;
      }
    }

    v7 = (-2 * v2) & a1;
    if (!v7)
    {
      break;
    }

    v2 = v7 & -v7;
  }

  while (v2);
  return result;
}

void la_init(uint64_t a1)
{
  *(malloc_type_malloc(0x48uLL, 0x10300400E37CE8CuLL) + 7) = a1;
  *(malloc_type_malloc(0x10uLL, 0x10200405F07FB98uLL) + 8) = 1;
  operator new();
}

void sub_1C29D824C(_Unwind_Exception *a1)
{
  v4 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v2);
  MEMORY[0x1C691FEF0](v4, v1);
  _Unwind_Resume(a1);
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned char,unsigned int>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned int>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned int>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned int>>>::find<unsigned char>(void *a1, unsigned __int8 a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % a1[1];
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 16) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void la_free(void *a1)
{
  v2 = *(a1 + 3);
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v2);
    MEMORY[0x1C691FEF0](v3, 0x10A0C408EF24B1CLL);
  }

  v4 = *a1;
  v5 = **a1;
  if (v5)
  {
    v6 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(v5);
    MEMORY[0x1C691FEF0](v6, 0x10A0C408EF24B1CLL);
  }

  free(v4);
  v7 = 0;
  do
  {
    lt_trie_free(*(*(a1 + 5) + 24 * v7++));
  }

  while (v7 <= *(a1 + 4));
  free(*(a1 + 1));
  free(*(a1 + 5));
  free(*(a1 + 8));

  free(a1);
}

uint64_t la_new_state_from_state_with_char_at_index(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v4 = a3;
  v7 = 2 * *(a1 + 32);
  if (v7 < *(a1 + 16) - a3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = *(a1 + 16) - a3;
  }

  v9 = std::__hash_table<std::__hash_value_type<unsigned char,unsigned int>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,unsigned int>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,unsigned int>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,unsigned int>>>::find<unsigned char>(*(a1 + 24), *(*(a1 + 8) + a4));
  if (v9)
  {
    v10 = ((*(v9 + 5) >> v4) & ~(-1 << v8)) | (v8 << 8);
  }

  else
  {
    v10 = v8 << 8;
  }

  v13 = 0;
  v12 = 0;
  if (tt_transition_for_state(**a1, a2, v10, &v12, &v13))
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

CFTimeZoneRef __si_calendar_retain_block_invoke()
{
  si_calendar_retain_s_local_tz = CFTimeZoneCopySystem();
  result = CFTimeZoneCreateWithTimeIntervalFromGMT(*MEMORY[0x1E695E480], 0.0);
  si_calendar_retain_s_gmt_tz = result;
  return result;
}

CFCalendarRef ___expandFunctions_block_invoke()
{
  result = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
  _expandFunctions_calendar = result;
  return result;
}

void __si_querypipe_addresults_block_invoke_2(uint64_t a1, const void *a2, const void *a3)
{
  if (*(*(*(a1 + 32) + 8) + 24) != *(*(*(a1 + 40) + 8) + 24))
  {
    MutableCopy = _MDStoreOIDArrayCreateMutableCopy();
    _MDStoreOIDArrayGetVectorCount();
    v14 = *(a1 + 48);
    _MDStoreOIDArrayApplyBlock();
    Vector = _MDStoreOIDArrayGetVector();
    VectorCount = _MDStoreOIDArrayGetVectorCount();
    if (VectorCount)
    {
      for (i = 0; i < VectorCount; i += v11 + 1)
      {
        v10 = (Vector + 8 * i);
        v11 = *v10;
        v10[1] = 3213;
      }
    }

    v12 = _MDPlistBytesCreateMutableCopy();
    _si_querypipe_addoids(*(a1 + 56), 2, MutableCopy, 0, v12, 0, *(a1 + 64));
  }

  _MDStoreOIDArrayGetVectorCount();
  v13 = *(a1 + 48);
  _MDStoreOIDArrayApplyBlock();
  _si_querypipe_addoids(*(a1 + 56), *(a1 + 72), a2, *(*(*(a1 + 32) + 8) + 24), a3, 0, *(a1 + 64));
}

uint64_t PartialQueryResults::ownOidArray(PartialQueryResults *this)
{
  if (*(this + 443))
  {
    v4 = __si_assert_copy_extra_332();
    __message_assert_336(v4, v5, v6, v7, v8, v9, v10, v11, "SISearchCtx.h");
    free(v4);
    if (__valid_fs(-1))
    {
      v12 = 2989;
    }

    else
    {
      v12 = 3072;
    }

    *v12 = -559038737;
    abort();
  }

  v1 = *(this + 58);
  *(this + 58) = 0;
  v2 = *(this + 884);
  _MDStoreOIDArrayAppendMultipleOIDArrays();
  return v1;
}

uint64_t PartialQueryResults::ownFields(PartialQueryResults *this)
{
  v1 = *(this + 186);
  *(this + 186) = 0;
  v2 = *(this + 884);
  if (v1)
  {
LABEL_8:
    _MDPlistBytesAppendMultiplePlistBytes();
  }

  else
  {
    if (v2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    v4 = (this + 1496);
    v5 = 1;
    while (v3 != v5)
    {
      v1 = *v4;
      *v4++ = 0;
      ++v5;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  return v1;
}

uint64_t __si_querypipe_addresults_block_invoke_5(uint64_t result, uint64_t a2, int a3)
{
  if (!a3 || !*(result + 48))
  {
    v3 = *(result + 40);
    v4 = *(*(result + 32) + 8);
    v5 = *(v4 + 24);
    *(v4 + 24) = v5 + 1;
    *(v3 + 8 * v5) = a2;
  }

  return result;
}

uint64_t _oidCmp(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t __si_querypipe_addresults_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 32);
  v7 = (a5 - 1);
  pthread_rwlock_rdlock((v6 + 16));
  if (v7)
  {
    v8 = (a4 + 8);
    if (*(v6 + 384))
    {
      bzero(v8, 8 * v7);
    }

    else
    {
      for (i = 0; i != v7; ++i)
      {
        if (*(v6 + 384))
        {
          goto LABEL_13;
        }

        v10 = *(v8 + i);
        v11 = *(v6 + 224);
        if (v11)
        {
          if ((*(v6 + 216) ^ v10) >> (-4 * v11))
          {
            goto LABEL_13;
          }
        }

        v12 = *(v6 + 256 + 8 * ((v10 >> (60 - 4 * v11)) & 0xF));
        if (v12)
        {
          v13 = v11 + 2;
          do
          {
            v12 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v10 >> (64 - 4 * v13++)) & 0xF));
          }

          while ((v12 & 1) != 0);
        }

        if (!v12 || ((*(*v12 + 16))(v12) & 1) == 0)
        {
LABEL_13:
          *(v8 + i) = 0;
        }
      }
    }
  }

  return pthread_rwlock_unlock((v6 + 16));
}

uint64_t __si_querypipe_addresults_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(a1 + 32);
  v7 = (a5 - 1);
  pthread_rwlock_rdlock((v6 + 16));
  if (v7 && (*(v6 + 384) & 1) == 0)
  {
    v8 = 0;
    v9 = a4 + 8;
    do
    {
      if ((*(v6 + 384) & 1) == 0)
      {
        v10 = *(v9 + 8 * v8);
        v11 = *(v6 + 224);
        if (!v11 || !((*(v6 + 216) ^ v10) >> (-4 * v11)))
        {
          v12 = *(v6 + 256 + 8 * ((v10 >> (60 - 4 * v11)) & 0xF));
          if (v12)
          {
            v13 = v11 + 2;
            do
            {
              v12 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v10 >> (64 - 4 * v13++)) & 0xF));
            }

            while ((v12 & 1) != 0);
          }

          if (v12 && (*(*v12 + 16))(v12))
          {
            *(v9 + 8 * v8) = 0;
          }
        }
      }

      ++v8;
    }

    while (v8 != v7);
  }

  return pthread_rwlock_unlock((v6 + 16));
}

void si_querypipe_addcompletions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 96) & 1) == 0)
  {
    v7 = a1;
    do
    {
      v8 = v7;
      v7 = *(v7 + 80);
    }

    while (v7);
    if (*(*(v8 + 8) + 12) != 1)
    {
      v13 = *(a2 + 320);
      if (*a4 && (v14 = *(*a4 + 120)) != 0)
      {
        v15 = *v14;
        v16 = *__error();
        v17 = _SILogForLogForCategory(1);
        v18 = 2 * (dword_1EBF46AD0 < 4);
        if (os_log_type_enabled(v17, v18))
        {
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v15;
          _os_log_impl(&dword_1C278D000, v17, v18, "Setting locale to %s", &buf, 0xCu);
        }

        *__error() = v16;
      }

      else
      {
        v15 = "en-US";
      }

      v19 = *(a2 + 312);
      v20 = v19[4];
      v21 = *v19;
      *&buf = 0;
      *(&buf + 1) = &buf;
      v43 = 0x2000000000;
      v22 = *MEMORY[0x1E695E480];
      MutableUsingMallocWithZone = _MDPlistBytesCreateMutableUsingMallocWithZone();
      v23 = *(*(&buf + 1) + 24);
      _MDPlistBytesBeginPlist();
      v24 = *(*(&buf + 1) + 24);
      _MDPlistBytesBeginArray();
      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2000000000;
      v41[3] = 0;
      if ((v13 & 0x100) == 0)
      {
        SICompletionModelEnumerateCompletions(atomic_load_explicit((a2 + 328), memory_order_acquire));
LABEL_39:
        v32 = *(*(&buf + 1) + 24);
        _MDPlistBytesEndArray();
        v33 = *(*(&buf + 1) + 24);
        _MDPlistBytesEndPlist();
        if (*MEMORY[0x1E69E9AC8] <= 0x3FuLL)
        {
          ++sTotal;
        }

        v34 = malloc_type_zone_calloc(queryZone, 1uLL, 0x40uLL, 0x5BAF1CEAuLL);
        if (!v34)
        {
          _log_fault_for_malloc_failure();
        }

        v34[1] = *(a1 + 48);
        *(v34 + 1) = si_querypipe_copy_jobid(a1);
        v35 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
        *(v34 + 5) = *(*(&buf + 1) + 24);
        *v34 = 9;
        *(v34 + 4) = _MDStoreOIDArrayCreateMutableWithOids();
        v36 = a1;
        do
        {
          v37 = v36;
          v36 = *(v36 + 80);
        }

        while (v36);
        *v35 = (*(*(v37 + 8) + 80) << 32) | 0xADF0000;
        v38 = *(v34 + 4);
        _MDStoreOIDArraySetShouldUseMalloc();
        si_querypipe_remove_process(a1, a4, v34, 0);
        _Block_object_dispose(v41, 8);
        _Block_object_dispose(&buf, 8);
        goto LABEL_46;
      }

      v25 = *(a2 + 320);
      if (!v15)
      {
        v27 = 0;
LABEL_38:
        v30 = *(a2 + 424);
        v31 = *(a2 + 312);
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 0x40000000;
        v40[2] = __si_querypipe_addcompletions_block_invoke;
        v40[3] = &unk_1E8194030;
        v40[4] = &buf;
        v40[5] = v41;
        SIPommesEnumerateSuggestions(v30, v31, (v25 >> 9) & 1, (v25 & 0x400) != 0, (v25 >> 11) & 1, v27, v15, v40);
        goto LABEL_39;
      }

      v26 = *v15;
      switch(v26)
      {
        case 'z':
          if (v15[1] != 104)
          {
            goto LABEL_35;
          }

          break;
        case 'k':
          if (v15[1] != 111)
          {
            v28 = 14;
LABEL_37:
            v27 = v28 == 0;
            goto LABEL_38;
          }

          break;
        case 'j':
          if (v15[1] != 97)
          {
            goto LABEL_35;
          }

          break;
        case 'y':
          v26 = *(v15 + 1);
          if (v26 == 117)
          {
            v26 = *(v15 + 2);
            v29 = 101;
          }

          else
          {
            v29 = 117;
          }

          goto LABEL_36;
        default:
LABEL_35:
          v29 = 121;
LABEL_36:
          v28 = v29 - v26;
          goto LABEL_37;
      }

      v27 = 1;
      goto LABEL_38;
    }
  }

  v9 = si_querypipe_copy_jobid(a1);
  if (!v9)
  {
LABEL_46:
    v39 = *MEMORY[0x1E69E9840];
    return;
  }

  v10 = v9;
  if (*MEMORY[0x1E69E9AC8] <= 0x3FuLL)
  {
    ++sTotal;
  }

  v11 = malloc_type_zone_calloc(queryZone, 1uLL, 0x40uLL, 0x5BAF1CEAuLL);
  if (!v11)
  {
    _log_fault_for_malloc_failure();
  }

  v11[1] = *(a1 + 48);
  *(v11 + 1) = v10;
  *v11 = 9;
  *(v11 + 4) = _MDStoreOIDArrayCreate();
  v12 = *MEMORY[0x1E69E9840];

  si_querypipe_remove_process(a1, a4, v11, 0);
}

uint64_t __si_querypipe_addcompletions_block_invoke(uint64_t a1, float *a2)
{
  v4 = *(*(*(a1 + 32) + 8) + 24);
  _MDPlistBytesBeginArray();
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(a2 + 18);
  _MDPlistBytesAddString();
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = *a2;
  _MDPlistBytesAddInteger();
  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = *(a2 + 1);
  _MDPlistBytesAddInteger();
  v11 = *(*(*(a1 + 32) + 8) + 24);
  v12 = *(a2 + 2);
  _MDPlistBytesAddInteger();
  v13 = *(*(*(a1 + 32) + 8) + 24);
  v14 = *(a2 + 4);
  _MDPlistBytesAddInteger();
  v15 = *(*(*(a1 + 32) + 8) + 24);
  v16 = *(a2 + 5);
  _MDPlistBytesAddReal();
  v17 = *(*(*(a1 + 32) + 8) + 24);
  v18 = *(a2 + 6);
  _MDPlistBytesAddReal();
  v19 = *(*(*(a1 + 32) + 8) + 24);
  v20 = *(a2 + 9);
  _MDPlistBytesAddInteger();
  v21 = *(*(*(a1 + 32) + 8) + 24);
  v22 = *(a2 + 38);
  _MDPlistBytesAddInteger();
  v23 = *(*(*(a1 + 32) + 8) + 24);
  v24 = *(a2 + 39);
  _MDPlistBytesAddInteger();
  v25 = *(*(*(a1 + 32) + 8) + 24);
  v26 = *(a2 + 40);
  _MDPlistBytesAddInteger();
  v27 = *(*(*(a1 + 32) + 8) + 24);
  v28 = *(a2 + 24);
  _MDPlistBytesAddReal();
  v29 = *(*(*(a1 + 32) + 8) + 24);
  v30 = *(a2 + 25);
  _MDPlistBytesAddReal();
  v31 = *(*(*(a1 + 32) + 8) + 24);
  v32 = *(a2 + 26);
  _MDPlistBytesAddReal();
  v33 = *(*(*(a1 + 32) + 8) + 24);
  v34 = a2[54];
  _MDPlistBytesAddReal();
  v35 = *(*(*(a1 + 32) + 8) + 24);
  v36 = *(a2 + 55);
  _MDPlistBytesAddInteger();
  v37 = *(*(*(a1 + 32) + 8) + 24);
  v38 = *(a2 + 57);
  _MDPlistBytesAddInteger();
  v39 = *(*(*(a1 + 32) + 8) + 24);
  v40 = *(a2 + 225);
  _MDPlistBytesAddInteger();
  v41 = *(*(*(a1 + 32) + 8) + 24);
  v42 = *(a2 + 226);
  _MDPlistBytesAddInteger();
  v43 = *(*(*(a1 + 32) + 8) + 24);
  v44 = *(a2 + 232);
  _MDPlistBytesAddInteger();
  v45 = *(*(*(a1 + 32) + 8) + 24);
  v46 = *(a2 + 233);
  _MDPlistBytesAddInteger();
  v47 = *(*(*(a1 + 32) + 8) + 24);
  v48 = *(a2 + 227);
  _MDPlistBytesAddInteger();
  v49 = *(*(*(a1 + 32) + 8) + 24);
  _MDPlistBytesBeginArray();
  v50 = *(a2 + 23);
  if (v50)
  {
    Count = CFArrayGetCount(v50);
    if (Count >= 1)
    {
      v52 = Count;
      for (i = 0; i != v52; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 23), i);
        if (CFStringGetCStringPtr(ValueAtIndex, 0x8000100u))
        {
          v55 = *(*(*(a1 + 32) + 8) + 24);
          _MDPlistBytesAddCString();
        }
      }
    }
  }

  v56 = *(*(*(a1 + 32) + 8) + 24);
  _MDPlistBytesEndArray();
  v57 = *(*(*(a1 + 32) + 8) + 24);
  result = _MDPlistBytesEndArray();
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t __si_querypipe_addcompletions_block_invoke_2(uint64_t a1, float *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = *(*(*(a1 + 32) + 8) + 24);
  _MDPlistBytesBeginArray();
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = *(a2 + 18);
  _MDPlistBytesAddString();
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = *a2;
  _MDPlistBytesAddInteger();
  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = *(a2 + 1);
  _MDPlistBytesAddInteger();
  v11 = *(*(*(a1 + 32) + 8) + 24);
  v12 = *(a2 + 2);
  _MDPlistBytesAddInteger();
  v13 = *(*(*(a1 + 32) + 8) + 24);
  v14 = *(a2 + 4);
  _MDPlistBytesAddInteger();
  v15 = *(*(*(a1 + 32) + 8) + 24);
  v16 = *(a2 + 5);
  _MDPlistBytesAddReal();
  v17 = *(*(*(a1 + 32) + 8) + 24);
  v18 = *(a2 + 6);
  _MDPlistBytesAddReal();
  v19 = *(*(*(a1 + 32) + 8) + 24);
  v20 = *(a2 + 9);
  _MDPlistBytesAddInteger();
  v21 = *(*(*(a1 + 32) + 8) + 24);
  v22 = *(a2 + 38);
  _MDPlistBytesAddInteger();
  v23 = *(*(*(a1 + 32) + 8) + 24);
  v24 = *(a2 + 39);
  _MDPlistBytesAddInteger();
  v25 = *(*(*(a1 + 32) + 8) + 24);
  v26 = *(a2 + 40);
  _MDPlistBytesAddInteger();
  v27 = *(*(*(a1 + 32) + 8) + 24);
  v28 = *(a2 + 23);
  _MDPlistBytesAddReal();
  v29 = *(*(*(a1 + 32) + 8) + 24);
  v30 = *(a2 + 24);
  _MDPlistBytesAddReal();
  v31 = *(*(*(a1 + 32) + 8) + 24);
  v32 = *(a2 + 25);
  _MDPlistBytesAddReal();
  v33 = *(*(*(a1 + 32) + 8) + 24);
  v34 = a2[52];
  _MDPlistBytesAddReal();
  v35 = *(*(*(a1 + 32) + 8) + 24);
  v36 = *(a2 + 53);
  _MDPlistBytesAddInteger();
  v37 = *(*(*(a1 + 32) + 8) + 24);
  v38 = *(a2 + 216);
  _MDPlistBytesAddInteger();
  v39 = *(*(*(a1 + 32) + 8) + 24);
  v40 = *(a2 + 217);
  _MDPlistBytesAddInteger();
  v41 = *(*(*(a1 + 32) + 8) + 24);
  v42 = *(a2 + 218);
  _MDPlistBytesAddInteger();
  v43 = *(*(*(a1 + 32) + 8) + 24);
  v44 = *(a2 + 219);
  _MDPlistBytesAddInteger();
  v45 = *(*(*(a1 + 32) + 8) + 24);
  v46 = *(a2 + 220);
  _MDPlistBytesAddInteger();
  v47 = *(*(*(a1 + 32) + 8) + 24);
  _MDPlistBytesAddInteger();
  v48 = *(*(*(a1 + 32) + 8) + 24);
  _MDPlistBytesBeginArray();
  if (*(a2 + 41) >= 1)
  {
    v49 = 0;
    v50 = MEMORY[0x1E69E9C10];
    do
    {
      v51 = LODWORD(a2[v49 + 42]);
      if (v51)
      {
        v52 = *(*(*(a1 + 32) + 8) + 24);
        v53 = LODWORD(a2[v49 + 42]);
        if (!_MDPlistBytesAddRawInternedCStringKey())
        {
          string_for_id = db_get_string_for_id(*(a1 + 48), v51);
          if (string_for_id)
          {
            v55 = string_for_id;
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v62 = v55;
              _os_log_impl(&dword_1C278D000, v50, OS_LOG_TYPE_DEFAULT, "String: %s", buf, 0xCu);
            }

            v56 = *(*(*(a1 + 32) + 8) + 24);
            _MDPlistBytesAddRawInternedCStringKeyWithString();
          }
        }
      }

      ++v49;
    }

    while (v49 < *(a2 + 41));
  }

  v57 = *(*(*(a1 + 32) + 8) + 24);
  _MDPlistBytesEndArray();
  v58 = *(*(*(a1 + 32) + 8) + 24);
  result = _MDPlistBytesEndArray();
  ++*(*(*(a1 + 40) + 8) + 24);
  v60 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t FileBackedBloomMap::grow(FileBackedBloomMap *this)
{
  if (_fd_ftruncate(*this, (*(this + 6) << 17) + 0x20000))
  {
    return -*__error();
  }

  *(this + 3) = (*(this + 6) + 1);
  FileBackedBloomMap::unmap(this);

  return FileBackedBloomMap::map(this);
}

int *FileBackedBloomMap::unmap(FileBackedBloomMap *this)
{
  v3 = (this + 8);
  result = *(this + 1);
  if (result)
  {
    v4 = *(this + 2);
    *v3 = 0;
    v3[1] = 0;
    result = munmap(result, v4);
    if (result)
    {

      return __error();
    }
  }

  return result;
}

uint64_t FileBackedBloomMap::map(FileBackedBloomMap *this)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = mmap(0, *(this + 6) << 17, 1, 1, *this, 0);
  if (*(this + 1) == -1)
  {
    v9 = __error();
    v5 = -*v9;
    if (gSILogLevels[0] >= 5)
    {
      __errnuma = *v9;
      v6 = *__error();
      v7 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = strerror(__errnuma);
        v8 = "mmap: %s\n";
        goto LABEL_9;
      }

LABEL_10:
      *__error() = v6;
    }
  }

  else
  {
    v3 = *(this + 6) << 17;
    *(this + 1) = v2;
    *(this + 2) = v3;
    if (!mprotect(&v2[v3 - 0x20000], 0x20000uLL, 3))
    {
      v5 = 0;
      goto LABEL_12;
    }

    v4 = __error();
    v5 = -*v4;
    if (gSILogLevels[0] >= 5)
    {
      __errnum = *v4;
      v6 = *__error();
      v7 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = strerror(__errnum);
        v8 = "mprotect: %s\n";
LABEL_9:
        _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t FileBackedBloomMap::Update(FileBackedBloomMap *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 7) < *(this + 8) || (v6 = FileBackedBloomMap::grow(this), !v6))
  {
    v7 = *(this + 2);
    v34[0] = *(this + 1);
    v34[1] = v7;
    v34[2] = 0;
    v33[0] = 1;
    v33[1] = v34;
    add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
    v9 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v33, 0, add_explicit + 1);
    v11 = v10;
    v12 = v9;
    v13 = HIDWORD(v9);
    v15 = v14;
    v16 = threadData[9 * v9 + 1] + 320 * HIDWORD(v9);
    *(v16 + 216) = 0;
    v17 = *(v16 + 312);
    v18 = *(v16 + 224);
    v19 = v16;
    if (v18)
    {
      v18(*(v16 + 288));
    }

    v31 = v13;
    v32 = v12;
    v29 = v11;
    v30 = v15;
    if (_setjmp(v19))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", v28, 2u);
      }

      v19[78] = v17;
      CIOnThreadCleanUpReset(v29);
      dropThreadId(v32, 1, add_explicit + 1);
      CICleanUpReset(v32, v30);
      return 4294967261;
    }

    else
    {
      v21 = *(this + 9);
      if (v21 >= 1)
      {
        v22 = *(this + 1) + (*(this + 6) << 17) - 0x20000;
        v23 = bloom_filter_hash_moduli;
        do
        {
          v24 = *v23++;
          *(v22 + (((a3 + ((v24 * a2) >> 32)) >> 3) & 0x1FFFF)) |= 1 << ((a3 + ((v24 * a2) >> 32)) & 7);
          --v21;
        }

        while (v21);
      }

      v25 = threadData[9 * v32 + 1] + 320 * v31;
      *(v25 + 312) = v17;
      v26 = *(v25 + 232);
      if (v26)
      {
        v26(*(v25 + 288));
      }

      dropThreadId(v32, 0, add_explicit + 1);
      ++*(this + 7);
      return 0;
    }
  }

  return v6;
}

uint64_t FileBackedBloomMap::CalcMayContainBitset(FileBackedBloomMap *this, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v69 = a4;
  v79 = *MEMORY[0x1E69E9840];
  v7 = *(this + 1);
  if (!v7)
  {
    v22 = FileBackedBloomMap::map(this);
    if (v22)
    {
      goto LABEL_28;
    }

    v7 = *(this + 1);
  }

  v8 = *(this + 2);
  v77[0] = v7;
  v77[1] = v8;
  v77[2] = 0;
  v76[0] = 1;
  v76[1] = v77;
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v10 = setThreadIdAndInfo(-1, sMappingExceptionCallbacks, v76, 0, add_explicit + 1);
  v12 = v11;
  v13 = v10;
  v14 = HIDWORD(v10);
  v16 = v15;
  v17 = threadData[9 * v10 + 1] + 320 * HIDWORD(v10);
  *(v17 + 216) = 0;
  v18 = *(v17 + 312);
  v19 = *(v17 + 224);
  v20 = v17;
  if (v19)
  {
    v19(*(v17 + 288));
  }

  v74 = v14;
  v75 = v13;
  v72 = v12;
  v73 = v16;
  v21 = _setjmp(v20);
  if (v21)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    v20[78] = v18;
    CIOnThreadCleanUpReset(v72);
    dropThreadId(v75, 1, add_explicit + 1);
    CICleanUpReset(v75, v73);
  }

  else
  {
    v68 = v18;
    v70 = a3;
    v71 = add_explicit;
    v67 = &v56;
    v23 = v69;
    MEMORY[0x1EEE9AC00](v21);
    v24 = (v23 + 15) & 0x1FFFFFFF0;
    v65 = &v56 - v24;
    bzero(&v56 - v24, v23);
    MEMORY[0x1EEE9AC00](v25);
    v64 = &v56 - v24;
    v66 = v23;
    bzero(&v56 - v24, v23);
    v26 = v23;
    bzero(&v56 - v24, v23);
    v63 = *(this + 6);
    if (v63 >= 1)
    {
      v27 = v64;
      v61 = *(this + 1);
      v62 = v23;
      v60 = *(this + 9);
      v59 = v60;
      v58 = 0x1FFFFLL;
      v57 = v23 - 0x20000;
      v28 = 0;
      do
      {
        v56 = v28;
        memset(v27, 255, v62);
        if (v59 >= 1)
        {
          v29 = v60;
          v30 = (v61 + (v56 << 17));
          v31 = &bloom_filter_hash_moduli;
          do
          {
            v32 = *v31++;
            v33 = ((v32 * a2) >> 32) & 7;
            v34 = ((v32 * a2) >> 35) & 0x1FFFF;
            if ((v34 + v26) >> 17)
            {
              v38 = a2;
              v39 = v34;
              buf[0] = v30[v58];
              buf[1] = *v30;
              v40 = v34 ^ 0x1FFFF;
              do_shifted_and(v27, &v30[v34], v34 ^ 0x1FFFF, v33);
              v41 = &v64[v40];
              do_shifted_and(v41, buf, 1, v33);
              v42 = v39;
              a2 = v38;
              v36 = v41 + 1;
              v37 = v57 + v42;
              v35 = v30;
            }

            else
            {
              v35 = &v30[v34];
              v36 = v27;
              v37 = v69;
            }

            do_shifted_and(v36, v35, v37, v33);
            --v29;
          }

          while (v29);
        }

        v43 = v27;
        v44 = v65;
        v45 = v66;
        if (v69 >= 1)
        {
          do
          {
            v46 = *v43++;
            *v44++ |= v46;
            --v45;
          }

          while (v45);
        }

        v28 = v56 + 1;
      }

      while (v56 + 1 != v63);
    }

    v47 = v71;
    if (v69 >= 1)
    {
      v48 = v65;
      v49 = v66;
      v50 = v70;
      do
      {
        v51 = *v48++;
        *v50++ &= v51;
        --v49;
      }

      while (v49);
    }

    v52 = threadData[9 * v75 + 1] + 320 * v74;
    *(v52 + 312) = v68;
    v53 = *(v52 + 232);
    if (v53)
    {
      v53(*(v52 + 288));
    }

    dropThreadId(v75, 0, v47 + 1);
  }

  v22 = 0;
LABEL_28:
  v54 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t ends(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = (*a1 + v3);
  v5 = a2[v2] != *v4 || v3 + 1 < v2;
  if (v5 || memcmp(&v4[-v2 + 1], a2 + 1, v2))
  {
    return 0;
  }

  *(a1 + 12) = v3 - v2;
  return 1;
}

uint64_t m(uint64_t *a1)
{
  v1 = *(a1 + 3);
  if ((v1 & 0x80000000) != 0)
  {
    return 0;
  }

  v2 = 0;
  v3 = *a1;
  while (1)
  {
    v4 = 0;
    for (i = v2; ; --i)
    {
      HIDWORD(v7) = *(v3 + i) - 97;
      LODWORD(v7) = HIDWORD(v7);
      v6 = v7 >> 1;
      if (v6 != 12)
      {
        break;
      }

      if (!i)
      {
        goto LABEL_12;
      }

      v4 ^= 1u;
    }

    if (v6 <= 0xA && ((1 << v6) & 0x495) != 0)
    {
      v9 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v9 = 1;
LABEL_13:
    if (v9 == v4)
    {
      break;
    }

    if (++v2 == v1 + 1)
    {
      return 0;
    }
  }

  result = 0;
LABEL_18:
  v11 = v2;
  if (v2 <= v1)
  {
    v12 = v1;
  }

  else
  {
    v12 = v2;
  }

  v13 = v2 + 2;
  while (v11 != v12)
  {
    v14 = v11;
    LODWORD(v2) = v13;
    v15 = 0;
    for (j = ++v11; ; --j)
    {
      HIDWORD(v18) = *(v3 + j) - 97;
      LODWORD(v18) = HIDWORD(v18);
      v17 = v18 >> 1;
      if (v17 != 12)
      {
        break;
      }

      if (!j)
      {
        goto LABEL_32;
      }

      v15 ^= 1u;
    }

    if (v17 <= 0xA && ((1 << v17) & 0x495) != 0)
    {
      v20 = 0;
      goto LABEL_33;
    }

LABEL_32:
    v20 = 1;
LABEL_33:
    v13 = v2 + 1;
    if (v20 != v15)
    {
      result = (result + 1);
      if (v14 + 2 > v1)
      {
        return result;
      }

      v2 = v2;
      while (1)
      {
        v21 = 0;
        for (k = v2; ; --k)
        {
          HIDWORD(v24) = *(v3 + k) - 97;
          LODWORD(v24) = HIDWORD(v24);
          v23 = v24 >> 1;
          if (v23 != 12)
          {
            break;
          }

          if (!k)
          {
            goto LABEL_45;
          }

          v21 ^= 1u;
        }

        if (v23 <= 0xA && ((1 << v23) & 0x495) != 0)
        {
          v26 = 0;
          goto LABEL_46;
        }

LABEL_45:
        v26 = 1;
LABEL_46:
        if (v26 == v21)
        {
          goto LABEL_18;
        }

        if (v2++ >= v1)
        {
          return result;
        }
      }
    }
  }

  return result;
}

BOOL cvc(uint64_t *a1, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 < 2)
  {
    return 0;
  }

  v3 = 0;
  v4 = *a1;
  for (i = a2; ; --i)
  {
    HIDWORD(v7) = *(v4 + i) - 97;
    LODWORD(v7) = HIDWORD(v7);
    v6 = v7 >> 1;
    if (v6 != 12)
    {
      break;
    }

    if (!i)
    {
      goto LABEL_11;
    }

    v3 ^= 1u;
  }

  if (v6 <= 0xA && ((1 << v6) & 0x495) != 0)
  {
    v9 = 0;
    goto LABEL_12;
  }

LABEL_11:
  v9 = 1;
LABEL_12:
  if (v9 == v3)
  {
    return 0;
  }

  v10 = 0;
  for (j = a2 - 1; ; --j)
  {
    HIDWORD(v13) = *(v4 + j) - 97;
    LODWORD(v13) = HIDWORD(v13);
    v12 = v13 >> 1;
    if (v12 != 12)
    {
      break;
    }

    if (!j)
    {
      goto LABEL_22;
    }

    v10 ^= 1u;
  }

  if (v12 <= 0xA && ((1 << v12) & 0x495) != 0)
  {
    v15 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v15 = 1;
LABEL_23:
  if (v15 != v10)
  {
    return 0;
  }

  for (k = 0; ; k ^= 1u)
  {
    HIDWORD(v18) = *(v4 + v2) - 97;
    LODWORD(v18) = HIDWORD(v18);
    v17 = v18 >> 1;
    if (v17 != 12)
    {
      break;
    }

    if (!v2)
    {
      goto LABEL_33;
    }

    --v2;
  }

  if (v17 <= 0xA && ((1 << v17) & 0x495) != 0)
  {
    v20 = 0;
    return v20 != k && *(v4 + a2) - 122 < 0xFFFFFFFD;
  }

LABEL_33:
  v20 = 1;
  return v20 != k && *(v4 + a2) - 122 < 0xFFFFFFFD;
}

uint64_t step5(uint64_t result)
{
  v1 = result;
  v2 = *result;
  v3 = *(result + 8);
  *(result + 12) = v3;
  v4 = *(v2 + v3);
  if (v4 == 101)
  {
    result = m(result);
    if (result < 2)
    {
      if (result != 1)
      {
        return result;
      }

      LODWORD(v3) = v3 - 1;
      result = cvc(v1, v3);
      if (result)
      {
        return result;
      }
    }

    else
    {
      LODWORD(v3) = v3 - 1;
    }

    *(v1 + 8) = v3;
    v4 = *(v2 + v3);
  }

  if (v3 >= 1 && v4 == 108 && *(v2 + v3) == *(v2 + v3 - 1))
  {
    result = m(v1);
    if (result >= 2)
    {
      *(v1 + 8) = v3 - 1;
    }
  }

  return result;
}

uint64_t userDefaultExtendedDebuggingEnabled(void)
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    v1 = [MEMORY[0x1E695E000] standardUserDefaults];

    return [v1 BOOLForKey:@"EnableL1ExtendedDebug"];
  }

  return result;
}

uint64_t SISearchCtx_METADATA::queryContext(SISearchCtx_METADATA *this)
{
  if (!*(this + 150))
  {
    operator new();
  }

  return *(this + 150);
}

const __CFDictionary *QueryFunctionCallbackContext_METADATA::getDocSet(QueryFunctionCallbackContext_METADATA *this, query_piece *a2)
{
  result = *(a2 + 15);
  if (!result)
  {
    result = *(*(this + 2) + 216);
    if (result)
    {
      return CFDictionaryGetValue(result, a2);
    }
  }

  return result;
}

uint64_t QueryFunctionCallbackContext_METADATA::findPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  if (*a5 == -1)
  {
    v7 = 0;
  }

  else
  {
    if (!v6)
    {
      v9 = __si_assert_copy_extra_332();
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = "";
      }

      __message_assert("%s:%u: Unexpected code path %s ", "SISearchCtx_METADATA.cpp", 861, v11);
      free(v10);
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    v7 = ContentIndexDocSetContainsDocId(v6, *(*a3 + 32));
  }

  return v7 ^ ((*(a4 + 24) - 5) < 2);
}

uint64_t QueryFunctionCallbackContext_METADATA::findContent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  if (*a4 == -1)
  {
    v11 = 0;
  }

  else if (v6)
  {
    v11 = ContentIndexDocSetContainsDocId(v6, *(a2 + 32));
  }

  else
  {
    v8 = *(a3 + 32);
    v9 = *(a3 + 72);
    if (v9)
    {
      v10 = strlen(*(a3 + 72));
    }

    else
    {
      v10 = 0;
    }

    v12 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v9, v10, 0x8000100u, 0);
    v13 = *(a1 + 8);
    v14 = *(a2 + 32);
    v15 = si_indexForDocId(v13, v14);
    if (!v15)
    {
      v11 = 0;
      if (!v12)
      {
        return v11 ^ ((*(a3 + 24) - 5) < 2);
      }

      goto LABEL_20;
    }

    v16 = (v8 >> 4) & 1;
    if ((v8 & 0x800000) != 0)
    {
      v16 = (v8 >> 4) & 1 | ((*(a3 + 28) & 0x7F) << 18) | 0x10000;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = *(v17 + 8);
      if (v18)
      {
        v19 = v18[82];
        v23 = v18[4];
        v24 = v19;
        v25 = v18[9];
      }
    }

    v20 = *(a1 + 24);
    if (v20)
    {
      v21 = *(v20 + 144);
    }

    else
    {
      v21 = 0;
    }

    v11 = ContentIndexContainsContentByDocId(v15, v14, v12, v16 | (v8 >> 4) & 2, v21, (*(v13 + 6584) >> 25) & 3, *(a1 + 32), &v23);
    if (v12)
    {
LABEL_20:
      CFRelease(v12);
    }
  }

  return v11 ^ ((*(a3 + 24) - 5) < 2);
}

uint64_t QueryFunctionCallbackContext_METADATA::gotten(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*a3)
  {
    (*(a3 + 8))(a2, a3);
    if (!*a3)
    {
      return 0;
    }
  }

  v5 = *(*a1 + 32);

  return v5(a1);
}

const void *QueryFunctionCallbackContext_METADATA::gotten(uint64_t a1, void *key)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    *(a1 + 40) = CFDictionaryCreateMutable(kCIQueryZoneAllocator, 0, 0, 0);
    goto LABEL_5;
  }

  Value = CFDictionaryGetValue(v3, key);
  if (!Value)
  {
LABEL_5:
    operator new();
  }

  return Value;
}

uint64_t deleteValue(const void *a1, const void *a2, void *a3)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a2 + 56) == *(a1 + 40))
  {
    if (*(a2 + 15712))
    {
      result = 0;
    }

    else
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(1);
      v7 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(a1 + 40);
        v11[0] = 67109634;
        v11[1] = v8;
        v12 = 2048;
        v13 = a2;
        v14 = 2080;
        v15 = a2 + 15208;
        _os_log_impl(&dword_1C278D000, v6, v7, "Index Should Merge id:%d %p %s", v11, 0x1Cu);
      }

      v9 = __error();
      result = 0;
      *v9 = v5;
      *(a2 + 15712) = 1;
      *(*(a1 + 32) + 647) = 1;
    }
  }

  else
  {
    result = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZN20SISearchCtx_METADATA7cleanUpEb_block_invoke_1(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a2 + 56) == *(a1 + 40))
  {
    if (*(a2 + 15206))
    {
      result = 0;
    }

    else
    {
      v5 = *__error();
      v6 = _SILogForLogForCategory(1);
      v7 = 2 * (dword_1EBF46AD0 < 4);
      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(a1 + 40);
        v11[0] = 67109634;
        v11[1] = v8;
        v12 = 2048;
        v13 = a2;
        v14 = 2080;
        v15 = a2 + 15208;
        _os_log_impl(&dword_1C278D000, v6, v7, "Index Should Merge id:%d %p %s", v11, 0x1Cu);
      }

      v9 = __error();
      result = 0;
      *v9 = v5;
      *(a2 + 15206) = 1;
      *(*(a1 + 32) + 646) = 1;
    }
  }

  else
  {
    result = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SISearchCtx_METADATA::addMatchingAttributeNodes(SISearchCtx_METADATA *this, CFArrayRef theArray, const int *a3, uint64_t *a4, char a5)
{
  Count = CFArrayGetCount(theArray);
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2000000000;
  v30 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2000000000;
  v28 = 0;
  if (Count)
  {
    v11 = Count;
    v30 = 2 * Count;
    if (((Count >> 13) & 0x7FFFFFFFFFFFLL) == 0 && 16 * Count > *MEMORY[0x1E69E9AC8])
    {
      ++sTotal;
    }

    v12 = malloc_type_zone_calloc(queryZone, 2 * Count, 8uLL, 0x5BAF1CEAuLL);
    if (!v12)
    {
      _log_fault_for_malloc_failure();
    }

    v26[3] = v12;
    Mutable = CFSetCreateMutable(kCIQueryZoneAllocator, 0, &dbqpSetCallbacks);
    v21 = 0;
    v22 = &v21;
    v23 = 0x2000000000;
    v24 = 0;
    v14 = **(this + 105);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = ___ZN20SISearchCtx_METADATA25addMatchingAttributeNodesEPK9__CFArrayPKiPlb_block_invoke;
    v19[3] = &unk_1E8194120;
    v20 = a5;
    v19[4] = &v31;
    v19[5] = v29;
    v19[8] = Mutable;
    v19[9] = v11;
    v19[10] = theArray;
    v19[11] = a3;
    v19[6] = &v25;
    v19[7] = &v21;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 0x40000000;
    v35[2] = __db_query_tree_apply_block_block_invoke;
    v35[3] = &unk_1E8198ED0;
    v35[4] = v19;
    db_query_tree_apply_block_with_meta(v14, v35, 0);
    v15 = v22[3];
    if (v15)
    {
      CFRelease(v15);
    }

    CFRelease(Mutable);
    _Block_object_dispose(&v21, 8);
    v16 = v32[3];
    v17 = v26[3];
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  *a4 = v16;
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v31, 8);
  return v17;
}

void cleanUp(SISearchCtx_METADATA *a1)
{
  SISearchCtx_METADATA::cleanUp(a1, 0);
  v2 = *(a1 + 208);
  if (v2)
  {
    v3 = 0;
    for (i = 0; i < v2; ++i)
    {
      v5 = *(*(a1 + 105) + v3);
      if (v5)
      {
        clear_node_caches(v5);
        v2 = *(a1 + 208);
      }

      v3 += 48;
    }
  }
}

CFArrayRef ___ZN20SISearchCtx_METADATA10preIterateEv_block_invoke()
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = xmmword_1E8194160;
  v3 = @"kMDItemPhotosPeopleNamesAlternatives";
  result = CFArrayCreate(*MEMORY[0x1E695E480], &v2, 3, MEMORY[0x1E695E9C0]);
  SISearchCtx_METADATA::preIterate(void)::sAttributesToConsider = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZN20SISearchCtx_METADATA25addMatchingAttributeNodesEPK9__CFArrayPKiPlb_block_invoke(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  bzero(__s1, 0x400uLL);
  if (query_node_is_double_star(a2))
  {
    goto LABEL_2;
  }

  if (a2)
  {
    if (*(a2 + 48) == 4)
    {
      v7 = *(a2 + 16);
      if (v7)
      {
        v8 = *v7;
        if (v8)
        {
          if (*v8 == 42 && !v8[1])
          {
LABEL_2:
            if (*(a1 + 96))
            {
              v39 = MEMORY[0x1E69E9820];
              v40 = 0x40000000;
              v41 = __db_query_tree_apply_block_block_invoke;
              v42 = &unk_1E8198ED0;
              v43 = &__block_literal_global_21_15415;
              db_query_tree_apply_block_with_meta(a2, &v39, &__block_literal_global_25_15416);
              v5 = v4;
              if (v4)
              {
                v6 = *(v4 + 16);
                if (v6)
                {
                  if (*v6)
                  {
                    if (CFSetContainsValue(*(a1 + 64), v6))
                    {
                      v39 = MEMORY[0x1E69E9820];
                      v40 = 0x40000000;
                      v41 = __db_query_tree_apply_block_block_invoke;
                      v42 = &unk_1E8198ED0;
                      v43 = &__block_literal_global_174;
                      db_query_tree_apply_block_with_meta(v5, &v39, 0);
                      goto LABEL_52;
                    }

                    v25 = *(*(a1 + 32) + 8);
                    v26 = *(v25 + 24);
                    v27 = *(*(a1 + 40) + 8);
                    if (v26 == *(v27 + 24))
                    {
                      *(v27 + 24) = 2 * v26;
                      *(*(*(a1 + 48) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 48) + 8) + 24), 8 * *(*(*(a1 + 40) + 8) + 24), 0x2004093837F09uLL);
                      v25 = *(*(a1 + 32) + 8);
                      v26 = *(v25 + 24);
                    }

                    v28 = *(*(*(a1 + 48) + 8) + 24);
                    *(v25 + 24) = v26 + 1;
                    *(v28 + 8 * v26) = v5;
LABEL_51:
                    CFSetAddValue(*(a1 + 64), *(v5 + 16));
                    goto LABEL_52;
                  }
                }
              }

              goto LABEL_24;
            }

            if (*(a1 + 72) < 1)
            {
              goto LABEL_52;
            }

            v13 = 0;
            while (!cStringFromCFStringArray(*(a1 + 80), v13, __s1))
            {
LABEL_41:
              if (++v13 >= *(a1 + 72))
              {
                goto LABEL_52;
              }
            }

            if (a2)
            {
              if (*(a2 + 48) == 4)
              {
                v14 = *(a2 + 16);
                if (v14)
                {
                  if (*v14)
                  {
                    v39 = MEMORY[0x1E69E9820];
                    v40 = 0x40000000;
                    v41 = __db_query_tree_apply_block_block_invoke;
                    v42 = &unk_1E8198ED0;
                    v43 = &__block_literal_global_21_15415;
                    db_query_tree_apply_block_with_meta(a2, &v39, &__block_literal_global_25_15416);
                    v16 = v15;
                    if (!v15)
                    {
LABEL_40:
                      db_free_query_node(v16);
                      goto LABEL_41;
                    }

                    v17 = v15[2];
                    if (v17 && *v17)
                    {
                      free(*v17);
                      v18 = strdup(__s1);
                      v19 = v16[2];
                      *v19 = v18;
                      if (v18)
                      {
                        if (CFSetContainsValue(*(a1 + 64), v19))
                        {
                          v39 = MEMORY[0x1E69E9820];
                          v40 = 0x40000000;
                          v41 = __db_query_tree_apply_block_block_invoke;
                          v42 = &unk_1E8198ED0;
                          v43 = &__block_literal_global_174;
                          db_query_tree_apply_block_with_meta(v16, &v39, 0);
                        }

                        else
                        {
                          v20 = *(*(a1 + 32) + 8);
                          v21 = *(v20 + 24);
                          v22 = *(*(a1 + 40) + 8);
                          if (v21 == *(v22 + 24))
                          {
                            *(v22 + 24) = 2 * v21;
                            *(*(*(a1 + 48) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 48) + 8) + 24), 8 * *(*(*(a1 + 40) + 8) + 24), 0x2004093837F09uLL);
                            v20 = *(*(a1 + 32) + 8);
                            v21 = *(v20 + 24);
                          }

                          v23 = *(*(*(a1 + 48) + 8) + 24);
                          *(v20 + 24) = v21 + 1;
                          *(v23 + 8 * v21) = v16;
                          CFSetAddValue(*(a1 + 64), v16[2]);
                          v24 = *(a1 + 88);
                          if (v24)
                          {
                            LODWORD(v24) = *(v24 + 4 * v13);
                          }

                          *(v16[2] + 80) = v24;
                        }

                        goto LABEL_41;
                      }

                      goto LABEL_40;
                    }

                    v39 = MEMORY[0x1E69E9820];
                    v40 = 0x40000000;
                    v41 = __db_query_tree_apply_block_block_invoke;
                    v42 = &unk_1E8198ED0;
                    v43 = &__block_literal_global_174;
                    db_query_tree_apply_block_with_meta(v15, &v39, 0);
                  }
                }
              }
            }

            v16 = 0;
            goto LABEL_40;
          }

          v9 = *(a2 + 16);
          if (v9 && *v9)
          {
            v10 = *(*(*(a1 + 56) + 8) + 24);
            if (v10)
            {
              goto LABEL_70;
            }

            *(*(*(a1 + 56) + 8) + 24) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &kCStringDictionaryKeyCallBacks, &kIntDictionaryValueCallBacks);
            if (*(a1 + 72) >= 1)
            {
              v31 = 0;
              do
              {
                if (cStringFromCFStringArray(*(a1 + 80), v31, __s1))
                {
                  v32 = *(a1 + 88);
                  if (v32)
                  {
                    v33 = *(v32 + 4 * v31);
                  }

                  else
                  {
                    v33 = 0;
                  }

                  CFDictionarySetValue(*(*(*(a1 + 56) + 8) + 24), __s1, v33);
                }

                ++v31;
              }

              while (v31 < *(a1 + 72));
            }

            v10 = *(*(*(a1 + 56) + 8) + 24);
            if (v10)
            {
              if (*(a2 + 48) == 4)
              {
                v9 = *(a2 + 16);
                if (v9)
                {
LABEL_70:
                  if (*v9 && CFDictionaryContainsKey(v10, *v9) && **(a2 + 16))
                  {
                    db_clone_query_node(a2);
                    v5 = v11;
                    if (v11)
                    {
                      v12 = *(v11 + 16);
                      if (v12)
                      {
                        if (*v12 && !CFSetContainsValue(*(a1 + 64), v12))
                        {
                          v34 = *(*(*(a1 + 32) + 8) + 24);
                          v35 = *(*(a1 + 40) + 8);
                          if (v34 == *(v35 + 24))
                          {
                            *(v35 + 24) = 2 * v34;
                            *(*(*(a1 + 48) + 8) + 24) = malloc_type_realloc(*(*(*(a1 + 48) + 8) + 24), 8 * *(*(*(a1 + 40) + 8) + 24), 0x2004093837F09uLL);
                          }

                          *(*(v5 + 16) + 80) = CFDictionaryGetValue(*(*(*(a1 + 56) + 8) + 24), **(v5 + 16));
                          v36 = *(*(*(a1 + 48) + 8) + 24);
                          v37 = *(*(a1 + 32) + 8);
                          v38 = *(v37 + 24);
                          *(v37 + 24) = v38 + 1;
                          *(v36 + 8 * v38) = v5;
                          goto LABEL_51;
                        }
                      }
                    }

LABEL_24:
                    db_free_query_node(v5);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_52:
  v29 = *MEMORY[0x1E69E9840];
  return a2;
}

BOOL cStringFromCFStringArray(const __CFArray *a1, CFIndex a2, char *a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  v5 = CFGetTypeID(ValueAtIndex);
  return v5 == CFStringGetTypeID() && CFStringGetCString(ValueAtIndex, a3, 1024, 0x8000100u) != 0;
}

uint64_t ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(*(a1 + 32) + 216);
    if (!v4)
    {
      goto LABEL_9;
    }

    Value = CFDictionaryGetValue(v4, v3);
    if (!Value)
    {
      goto LABEL_9;
    }

    v7 = *(Value + 12);
    if (v7 <= 3)
    {
      LODWORD(v9) = 0;
      if (v7 <= 1)
      {
        if (!v7)
        {
          goto LABEL_10;
        }

        if (v7 == 1)
        {
          LODWORD(v9) = *(*(Value + 7) + 68);
          goto LABEL_10;
        }

        goto LABEL_22;
      }

      if (v7 == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if ((v7 - 4) < 4)
      {
LABEL_6:
        v8 = (Value + 80);
        goto LABEL_7;
      }

      if (v7 != 8)
      {
        if (v7 == 9)
        {
          goto LABEL_6;
        }

LABEL_22:
        assert_invalid_doc_type(Value);
      }
    }

    v9 = *(Value + 8);
    if (!v9)
    {
      goto LABEL_10;
    }

    v8 = (v9 + 88);
LABEL_7:
    if (*v8)
    {
      LODWORD(v9) = lockedCountItemsInRange(*v8, *(*v8 + 20), *(*v8 + 24), v6);
LABEL_10:
      *(*(a2 + 16) + 152) += v9;
      return a2;
    }

LABEL_9:
    LODWORD(v9) = 0;
    goto LABEL_10;
  }

  return a2;
}

uint64_t ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  if (*(a2 + 16))
  {
    malloc_size(**(a1 + 32));
    _db_render_query_tree(&v8);
    v3 = *(a1 + 40);
    v4 = **(a1 + 32);
    _MDPlistContainerAddCString();
    v5 = *(a1 + 40);
    v6 = *(*(v8 + 16) + 152);
    _MDPlistContainerAddInt64Value();
    return v8;
  }

  return a2;
}

uint64_t SISearchCtx_METADATA::updateGroupingCount(SISearchCtx_METADATA *this)
{
  v2 = currentCategoryCount(*(this + 3));
  v3 = *(this + 291) + v2;
  result = *(this + 164);
  if (v3 > result)
  {
    v5 = *(this + 116);
    if (v5 && v5[1] < v3)
    {
      v5 = malloc_type_realloc(*(this + 116), 32 * (*(this + 291) + v2) + 40, 0x10000400A747E1EuLL);
      if (v5[1] < v3)
      {
        L1ComboQueueInit();
      }

      v5[1] = v3;
    }

    *(this + 116) = v5;
    v6 = *(this + 22);
    if (v6 || (v6 = *(this + 23)) != 0)
    {
      if (v6 <= *(this + 21))
      {
        v6 = *(this + 21);
      }

      v6 = v6;
    }

    Info = *(this + 147);
    v8 = *(this + 291);
    v9 = v8 + v2;
    if ((*(this + 40) & 0xFFFFFFFD) == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6;
    }

    if (Info)
    {
      if (*Info < v9)
      {
        Info = malloc_type_zone_realloc(queryZone, *(this + 147), 40 * v9 + 8, 0xA1A7ADA0uLL);
        if (!Info)
        {
          _log_fault_for_malloc_failure();
        }

        v11 = *Info;
        if (*Info < v9)
        {
          v12 = v2 + v8 - v11;
          v13 = &Info[10 * v11 + 8];
          do
          {
            pqinit_rankAndFetchInfo_t(v13 - 3, v10);
            *v13 = 0;
            *(v13 + 1) = 0;
            v13 += 10;
            --v12;
          }

          while (v12);
        }

        *Info = v9;
      }
    }

    else
    {
      Info = createFetchInfo(v8 + v2, v10);
    }

    *(this + 147) = Info;
    result = (*(this + 291) + v2);
    *(this + 164) = result;
  }

  return result;
}

uint64_t pqpop_rankAndFetchInfo_t(uint64_t result, void *a2)
{
  v147 = *MEMORY[0x1E69E9840];
  v2 = a2[2];
  if (v2 != 1)
  {
    v4 = *a2;
    v5 = *(*a2 + 272);
    *(result + 96) = *(*a2 + 256);
    *(result + 112) = v5;
    v6 = *(v4 + 304);
    *(result + 128) = *(v4 + 288);
    *(result + 144) = v6;
    v7 = *(v4 + 208);
    *(result + 32) = *(v4 + 192);
    *(result + 48) = v7;
    v8 = *(v4 + 240);
    *(result + 64) = *(v4 + 224);
    *(result + 80) = v8;
    v9 = *(v4 + 176);
    *result = *(v4 + 160);
    *(result + 16) = v9;
    result = 160;
    v10 = v4 + 160 * v2;
    v11 = *(v10 - 160);
    v12 = *(v10 - 152);
    v95 = *(v10 - 144);
    v97 = *(v10 - 128);
    v13 = *(v10 - 112);
    v14 = *(v10 - 108);
    v15 = *(v10 - 104);
    v16 = *(v10 - 100);
    v17 = *(v10 - 96);
    v18 = *(v10 - 92);
    v19 = *(v10 - 91);
    v20 = *(v10 - 90);
    v21 = *(v10 - 82);
    v85 = *(v10 - 48);
    v87 = *(v10 - 32);
    v89 = *(v10 - 16);
    v81 = *(v10 - 80);
    v83 = *(v10 - 64);
    *(v4 + 176) = v95;
    *(v4 + 192) = v97;
    *(v4 + 288) = v87;
    *(v4 + 304) = v89;
    *(v4 + 256) = v83;
    *(v4 + 272) = v85;
    *(v4 + 240) = v81;
    v139 = v95;
    v140 = v97;
    v136 = v89;
    v91 = v17;
    v93 = v18;
    v141 = v20;
    v142 = v21;
    *(v4 + 160) = v11;
    *(v4 + 168) = v12;
    *(v4 + 208) = v13;
    *(v4 + 212) = v14;
    *(v4 + 216) = v15;
    *(v4 + 220) = v16;
    *(v4 + 228) = v18;
    *(v4 + 224) = v17;
    *(v4 + 229) = v19;
    *(v4 + 238) = v21;
    *(v4 + 230) = v20;
    v23 = a2[1];
    v22 = a2[2];
    a2[2] = v22 - 1;
    v24 = v23 >> 1;
    v137 = v17;
    v138 = v18;
    v145 = v20;
    v146 = v142;
    v25 = 3;
    v134 = v85;
    v135 = v87;
    v26 = 2;
    v27 = 1;
    v28 = 0uLL;
    v132 = v81;
    v133 = v83;
    while (1)
    {
      v29 = *a2;
      v30 = *a2 + 160 * v26;
      v31 = *v30;
      v32 = *(v30 + 8);
      v33 = *(v30 + 48);
      v34 = *(v30 + 52);
      v35 = *(v30 + 56);
      v36 = *(v30 + 60);
      v37 = *(v30 + 69);
      v38 = *a2 + 160 * v25;
      v40 = *v38;
      v39 = *(v38 + 8);
      v41 = *(v38 + 32);
      v130 = *(v38 + 16);
      v131 = v41;
      v42 = *(v38 + 48);
      v43 = *(v38 + 52);
      v44 = *(v38 + 56);
      v45 = *(v38 + 60);
      v46 = *(v38 + 64);
      v129 = *(v38 + 68);
      v128 = v46;
      v47 = *(v38 + 69);
      v143 = *(v38 + 70);
      v144 = *(v38 + 78);
      v48 = *(v38 + 128);
      v125 = *(v38 + 112);
      v126 = v48;
      v127 = *(v38 + 144);
      v49 = *(v38 + 96);
      v123 = *(v38 + 80);
      v124 = v49;
      if (v25 >= v22)
      {
        v130 = xmmword_1C2BFF510;
        v131 = unk_1C2BFF520;
        v128 = 0;
        v129 = 0;
        v143 = 0;
        v144 = 0;
        v123 = v28;
        v124 = v28;
        v125 = v28;
        v126 = v28;
        v127 = v28;
        if (v26 >= v22)
        {
          goto LABEL_3;
        }

        v47 = 0;
        v44 = 0;
        v42 = 0;
        v40 = -1;
        v43 = 0.0;
        v45 = 3.4028e38;
        v39 = -1;
      }

      v111[0] = v11;
      v111[1] = v12;
      v112 = v95;
      v113 = v97;
      v114 = v13;
      v115 = v14;
      v116 = v15;
      v117 = v16;
      v118 = v91;
      v119 = v93;
      v120 = v19;
      v121 = v141;
      v122 = v142;
      v99[0] = v40;
      v99[1] = v39;
      v100 = v130;
      v101 = v131;
      v102 = v42;
      v103 = v43;
      v104 = v44;
      v105 = v45;
      v106 = v128;
      v107 = v129;
      v108 = v47;
      v110 = v144;
      v109 = v143;
      if (v37)
      {
        if (v36 < v16)
        {
          goto LABEL_19;
        }

        if (v36 != v16)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (__PAIR128__(v32, v31) < __PAIR128__(v12, v11))
        {
          goto LABEL_19;
        }

        if (v32 != v12 || v31 != v11)
        {
LABEL_38:
          v74 = v22;
          v75 = v19;
          v76 = v15;
          v77 = v13;
          v78 = v12;
          v79 = v11;
          v80 = a2;
          result = ci_rankingbits_wrapped_s::operator<(v99, v111);
          if ((result & 1) == 0)
          {
            _X8 = v29 + 320 * v27;
            __asm { PRFM            #1, [X8] }

            goto LABEL_3;
          }

          v54 = &v123;
          v53 = &v143;
          v52 = &v128;
          v51 = &v130;
          v37 = v47;
          v36 = v45;
          v35 = v44;
          v34 = v43;
          v33 = v42;
          v31 = v40;
          v32 = v39;
          v26 = v25;
          v11 = v79;
          a2 = v80;
          result = 160;
          v12 = v78;
          v15 = v76;
          v13 = v77;
          v19 = v75;
          v22 = v74;
          v28 = 0uLL;
          goto LABEL_33;
        }
      }

      if (v34 >= v14 && (v34 != v14 || v33 <= v13))
      {
        goto LABEL_38;
      }

LABEL_19:
      v51 = (v30 + 16);
      v52 = (v30 + 64);
      v53 = (v30 + 70);
      v54 = (v30 + 80);
      if ((v47 & 1) == 0)
      {
        if (__PAIR128__(v39, v40) >= __PAIR128__(v32, v31))
        {
          if (v39 != v32 || v40 != v31)
          {
            goto LABEL_33;
          }

LABEL_29:
          if (v43 >= v34 && (v43 != v34 || v42 <= v33))
          {
            goto LABEL_33;
          }
        }

LABEL_32:
        v54 = &v123;
        v53 = &v143;
        v52 = &v128;
        v51 = &v130;
        v37 = v47;
        v36 = v45;
        v35 = v44;
        v34 = v43;
        v33 = v42;
        v31 = v40;
        v32 = v39;
        v26 = v25;
        goto LABEL_33;
      }

      if (v45 < v36)
      {
        goto LABEL_32;
      }

      if (v45 == v36)
      {
        goto LABEL_29;
      }

LABEL_33:
      v96 = *v51;
      v98 = v51[1];
      v92 = *v52;
      v94 = *(v52 + 4);
      v141 = *v53;
      v142 = *(v53 + 4);
      v88 = v54[3];
      v90 = v54[4];
      v84 = v54[1];
      v86 = v54[2];
      v82 = *v54;
      _X14 = v29 + 320 * v26;
      __asm { PRFM            #1, [X14] }

      if (v26 != v27)
      {
        v61 = v29 + 160 * v26;
        *v61 = v11;
        *(v61 + 8) = v12;
        v62 = v140;
        v63 = v139;
        v64 = v140;
        *(v61 + 16) = v139;
        *(v61 + 32) = v62;
        *(v61 + 48) = v13;
        *(v61 + 52) = v14;
        *(v61 + 56) = v15;
        *(v61 + 60) = v16;
        v65 = v137;
        *(v61 + 64) = v137;
        *(v61 + 68) = v138;
        *(v61 + 69) = v19;
        *(v61 + 78) = v146;
        v66 = v145;
        *(v61 + 70) = v145;
        v67 = v135;
        *(v61 + 112) = v134;
        *(v61 + 128) = v67;
        *(v61 + 144) = v136;
        v68 = v133;
        *(v61 + 80) = v132;
        *(v61 + 96) = v68;
        v69 = *a2 + 160 * v27;
        *(v69 + 16) = v96;
        *(v69 + 32) = v98;
        *(v69 + 52) = v34;
        *(v69 + 60) = v36;
        *(v69 + 128) = v88;
        *(v69 + 144) = v90;
        *(v69 + 96) = v84;
        *(v69 + 112) = v86;
        *(v69 + 80) = v82;
        v95 = v63;
        v97 = v64;
        v27 = v26;
        v25 = (2 * v26) | 1;
        *v69 = v31;
        *(v69 + 8) = v32;
        *(v69 + 48) = v33;
        *(v69 + 56) = v35;
        *(v69 + 64) = v92;
        *(v69 + 68) = v94;
        *(v69 + 69) = v37;
        v70 = v141;
        *(v69 + 78) = v142;
        *(v69 + 70) = v70;
        v93 = v138;
        v91 = v65;
        v142 = v146;
        v141 = v66;
        v71 = v26 < v24;
        v26 *= 2;
        if (v71)
        {
          continue;
        }
      }

      goto LABEL_3;
    }
  }

  *(result + 96) = xmmword_1C2BFF380;
  *(result + 112) = unk_1C2BFF390;
  *(result + 128) = xmmword_1C2BFF3A0;
  *(result + 144) = unk_1C2BFF3B0;
  *(result + 32) = xmmword_1C2BFF340;
  *(result + 48) = unk_1C2BFF350;
  *(result + 64) = xmmword_1C2BFF360;
  *(result + 80) = unk_1C2BFF370;
  *result = ZERO_FETCHINFO;
  *(result + 16) = *algn_1C2BFF330;
LABEL_3:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 pqpush_rankAndFetchInfo_t(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5;
  if ((v5 + 2) >= v4)
  {
    v7 = 2 * v4;
    v8 = v4 < 4;
    v9 = 4;
    if (!v8)
    {
      v9 = v7;
    }

    *(a1 + 8) = v9;
    v10 = 160 * v9 + 320;
    if (*a1)
    {
      v11 = malloc_type_zone_realloc(queryZone, *a1, v10, 0xA1A7ADA0uLL);
    }

    else
    {
      v11 = malloc_type_zone_malloc(queryZone, v10, 0x566E289CuLL);
    }

    v12 = v11;
    if (!v11)
    {
      _log_fault_for_malloc_failure();
    }

    *a1 = v12;
    v12[4] = xmmword_1C2BFF360;
    v12[5] = unk_1C2BFF370;
    v12[2] = xmmword_1C2BFF340;
    v12[3] = unk_1C2BFF350;
    v12[8] = xmmword_1C2BFF3A0;
    v12[9] = unk_1C2BFF3B0;
    v12[6] = xmmword_1C2BFF380;
    v12[7] = unk_1C2BFF390;
    *v12 = ZERO_FETCHINFO;
    v12[1] = *algn_1C2BFF330;
    v6 = *(a1 + 16);
  }

  *(a1 + 16) = v6 + 1;
  v13 = *a1 + 160 * v5;
  result = *(a2 + 16);
  *v13 = *a2;
  v15 = *(a2 + 32);
  v16 = *(a2 + 48);
  v17 = *(a2 + 80);
  *(v13 + 64) = *(a2 + 64);
  *(v13 + 80) = v17;
  *(v13 + 32) = v15;
  *(v13 + 48) = v16;
  v18 = *(a2 + 96);
  v19 = *(a2 + 112);
  v20 = *(a2 + 144);
  *(v13 + 128) = *(a2 + 128);
  *(v13 + 144) = v20;
  *(v13 + 96) = v18;
  *(v13 + 112) = v19;
  *(v13 + 16) = result;
  if (v5 >= 2)
  {
    do
    {
      v21 = *a1 + 160 * v5;
      result.n128_u32[0] = *(v21 + 52);
      v22 = *a1 + 160 * (v5 >> 1);
      v23 = *(v22 + 52);
      if (*(v21 + 69))
      {
        v24 = *(v21 + 60);
        v25 = *(v22 + 60);
        if (v24 < v25)
        {
          goto LABEL_27;
        }

        if (v24 != v25)
        {
          return result;
        }
      }

      else
      {
        if (*v21 < *v22)
        {
          goto LABEL_27;
        }

        if (*(v21 + 8) != *(v22 + 8) || *v21 != *v22)
        {
          return result;
        }
      }

      if (result.n128_f32[0] >= v23 && (result.n128_f32[0] != v23 || *(v21 + 48) < *(v22 + 48)))
      {
        return result;
      }

LABEL_27:
      v42 = *(v21 + 96);
      v43 = *(v21 + 112);
      v44 = *(v21 + 128);
      v45 = *(v21 + 144);
      v38 = *(v21 + 32);
      v39 = *(v21 + 48);
      v40 = *(v21 + 64);
      v41 = *(v21 + 80);
      v36 = *v21;
      v37 = *(v21 + 16);
      v28 = *(v22 + 16);
      *v21 = *v22;
      *(v21 + 16) = v28;
      v29 = *(v22 + 32);
      v30 = *(v22 + 48);
      v31 = *(v22 + 80);
      *(v21 + 64) = *(v22 + 64);
      *(v21 + 80) = v31;
      *(v21 + 32) = v29;
      *(v21 + 48) = v30;
      v32 = *(v22 + 96);
      v33 = *(v22 + 112);
      v34 = *(v22 + 144);
      *(v21 + 128) = *(v22 + 128);
      *(v21 + 144) = v34;
      *(v21 + 96) = v32;
      *(v21 + 112) = v33;
      v35 = (*a1 + 160 * (v5 >> 1));
      v35[6] = v42;
      v35[7] = v43;
      v35[8] = v44;
      v35[9] = v45;
      v35[2] = v38;
      v35[3] = v39;
      v35[4] = v40;
      v35[5] = v41;
      result = v36;
      *v35 = v36;
      v35[1] = v37;
      v8 = v5 > 3;
      v5 >>= 1;
    }

    while (v8);
  }

  return result;
}

__n128 ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_3(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = *(*(a1[4] + 8) + 24);
  v5 = *(*(a1[5] + 8) + 24);
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[11];
  *(a1[10] + 8 * v5) = *(a2 + 136);
  *(v6 + 2 * v5) = v4;
  v9 = v8 + 80 * v5;
  *v9 = *a2;
  v11 = *(a2 + 48);
  v10 = *(a2 + 64);
  v12 = *(a2 + 32);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v12;
  *(v9 + 48) = v11;
  *(v9 + 64) = v10;
  v13 = *(a2 + 88);
  *v9 = *(a2 + 80);
  *(v9 + 8) = v13;
  v14 = v2 + 5 * v5;
  LODWORD(v9) = *(a2 + 96);
  *(v14 + 4) = *(a2 + 100);
  *v14 = v9;
  v15 = v3 + 28 * v5;
  result = *(a2 + 104);
  *(v15 + 12) = *(a2 + 116);
  *v15 = result;
  *(v7 + v5) = *(a2 + 144);
  ++*(*(a1[5] + 8) + 24);
  return result;
}

__n128 ___ZL11emitResultsP20SISearchCtx_METADATAP19PartialQueryResultsb_block_invoke_4(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = *(*(a1[4] + 8) + 24);
  v5 = *(*(a1[5] + 8) + 24);
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[11];
  *(a1[10] + 8 * v5) = *(a2 + 136);
  *(v6 + 2 * v5) = v4;
  v9 = v8 + 80 * v5;
  *v9 = *a2;
  v11 = *(a2 + 48);
  v10 = *(a2 + 64);
  v12 = *(a2 + 32);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v12;
  *(v9 + 48) = v11;
  *(v9 + 64) = v10;
  v13 = *(a2 + 88);
  *v9 = *(a2 + 80);
  *(v9 + 8) = v13;
  v14 = v2 + 5 * v5;
  LODWORD(v9) = *(a2 + 96);
  *(v14 + 4) = *(a2 + 100);
  *v14 = v9;
  v15 = v3 + 28 * v5;
  result = *(a2 + 104);
  *(v15 + 12) = *(a2 + 116);
  *v15 = result;
  *(v7 + v5) = *(a2 + 144);
  ++*(*(a1[5] + 8) + 24);
  return result;
}

uint64_t PartialQueryResults::completionAttributeIdVector(PartialQueryResults *this, datastore_info *a2)
{
  v3 = *(this + 45);
  if (v3 && !*(this + 49))
  {
    v5 = *(this + 47);
    if (!v5)
    {
      v6 = *(this + 46);
      if (v6)
      {
        SIFlattenArrayToCStringVector(v6, this + 47, this + 44, this + 45);
        v5 = *(this + 47);
        if (!v5)
        {
          v18 = __si_assert_copy_extra_332();
          v19 = v18;
          v20 = "";
          if (v18)
          {
            v20 = v18;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx.h", 1014, "fCompletionAttributeVector", v20);
          free(v19);
          if (__valid_fs(-1))
          {
            v21 = 2989;
          }

          else
          {
            v21 = 3072;
          }

          *v21 = -559038737;
          abort();
        }

        v3 = *(this + 45);
      }

      else
      {
        v5 = 0;
      }
    }

    v7 = 8 * v3;
    if (v3 >> 14)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7 > *MEMORY[0x1E69E9AC8];
    }

    if (v8)
    {
      ++sTotal;
    }

    v9 = malloc_type_zone_calloc(queryZone, 1uLL, v7, 0x5BAF1CEAuLL);
    if (!v9)
    {
      _log_fault_for_malloc_failure();
    }

    *(this + 49) = v9;
    v10 = *(this + 45);
    if (v10 >= 1)
    {
      for (i = 0; i < v10; ++i)
      {
        if (a2)
        {
          v12 = db_copy_field_ids_with_buffer(a2, *(v5 + 8 * i), 0, 0);
          v10 = *(this + 45);
        }

        else
        {
          v12 = 0;
        }

        *(*(this + 49) + 8 * i) = v12;
      }
    }

    if (!*(this + 34))
    {
      if (a2)
      {
        v13 = db_copy_field_ids_with_buffer(a2, "kMDItemLastUsedDate", 0, 0);
      }

      else
      {
        v13 = 0;
      }

      *(this + 34) = v13;
    }

    if (!*(this + 35))
    {
      if (a2)
      {
        v14 = db_copy_field_ids_with_buffer(a2, "kMDItemContentCreationDate", 0, 0);
      }

      else
      {
        v14 = 0;
      }

      *(this + 35) = v14;
    }

    if (!*(this + 36))
    {
      if (a2)
      {
        v15 = db_copy_field_ids_with_buffer(a2, "kMDItemEmailConversationID", 0, 0);
      }

      else
      {
        v15 = 0;
      }

      *(this + 36) = v15;
    }

    if (!*(this + 37))
    {
      if (a2)
      {
        v16 = db_copy_field_ids_with_buffer(a2, "_kMDItemLaunchString", 0, 0);
      }

      else
      {
        v16 = 0;
      }

      *(this + 37) = v16;
    }
  }

  return *(this + 49);
}

void ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke_120(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v207 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = (*(v4 + 16))(v4, 0, 0, 0, 0, *(*(v3 + 72) + 24));
  }

  else
  {
    v5 = 0;
  }

  v160 = v5;
  v6 = *(*(v3 + 80) + 8 * a2);
  v153 = *(*(v3 + 88) + 8 * a2);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = qos_class_self();
  v9 = dispatch_queue_attr_make_with_qos_class(v7, v8, 0);
  if (*(v3 + 228))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v13 = v9;
    v10 = dispatch_queue_create("Query result pack queue", v9);
    if (*(v3 + 228))
    {
      v11 = 0;
      v12 = 0;
    }

    else
    {
      v12 = dispatch_queue_create("Query result check queue", v13);
      if (*(v3 + 228))
      {
        v11 = 0;
      }

      else
      {
        v11 = dispatch_semaphore_create(16);
      }
    }
  }

  v14 = v11;
  v15 = OSAtomicDequeue(*(v3 + 96), 0);
  v156 = v10;
  dsema = v14;
  queue = v12;
  if (v15 || (v15 = malloc_type_zone_malloc(queryZone, 0x50000uLL, 0xA4971684uLL)) != 0)
  {
    v16 = v15;
  }

  else
  {
    _log_fault_for_malloc_failure();
    v16 = 0;
  }

  v17 = *(v3 + 64);
  v159 = (v3 + 72);
  v150 = *(*(*(v3 + 72) + 840) + 16);
  v202 = 0;
  v203 = 0;
  v18 = malloc_type_malloc(0x10uLL, 0xE0040CF218873uLL);
  keyCallBacks = *byte_1F427C9F8;
  *v18 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, 0);
  v162 = a2;
  v154 = v18;
  if (v17)
  {
    keyCallBacks = *byte_1F427CA48;
    v18[1] = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
  }

  else
  {
    v18[1] = 0;
  }

  keyCallBacks.version = 0;
  keyCallBacks.retain = &keyCallBacks;
  keyCallBacks.release = 0x2000000000;
  LOBYTE(keyCallBacks.copyDescription) = 0;
  makeThreadId();
  add_explicit = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v19 = setThreadIdAndInfo(*(*(*v159 + 3) + 32), sFdExceptionCallbacks, 0, 1, add_explicit + 1);
  v21 = v20;
  v22 = v19;
  v23 = HIDWORD(v19);
  v25 = v24;
  v26 = threadData[9 * v19 + 1] + 320 * HIDWORD(v19);
  *(v26 + 216) = 0;
  v151 = *(v26 + 312);
  v27 = *(v26 + 224);
  if (v27)
  {
    v27(*(v26 + 288));
  }

  v158 = v6;
  v200 = v23;
  v201 = v22;
  v198 = v21;
  v199 = v25;
  if (_setjmp(v26))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v26 + 312) = v151;
    CIOnThreadCleanUpReset(v198);
    dropThreadId(v201, 1, add_explicit + 1);
    CICleanUpReset(v201, v199);
    v28 = 0;
    v29 = 0;
    v30 = v16;
    v32 = v156;
    v31 = dsema;
    v33 = queue;
    goto LABEL_91;
  }

  v34 = atomic_fetch_add_explicit(&exceptionSequenceNum, 1u, memory_order_relaxed);
  v35 = setThreadIdAndInfo(-1, sSDBExceptionCallbacks, *(*(*v159 + 3) + 1192), 0x40000000, v34 + 1);
  v37 = v36;
  v38 = v35;
  v39 = HIDWORD(v35);
  v41 = v40;
  v42 = threadData[9 * v35 + 1] + 320 * HIDWORD(v35);
  *(v42 + 216) = 0;
  v148 = *(v42 + 312);
  v43 = *(v42 + 224);
  if (v43)
  {
    v43(*(v42 + 288));
  }

  v196 = v39;
  v197 = v38;
  v194 = v37;
  v195 = v41;
  v44 = _setjmp(v42);
  if (v44)
  {
    v46 = v151;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
    }

    *(v42 + 312) = v148;
    CIOnThreadCleanUpReset(v194);
    dropThreadId(v197, 1, v34 + 1);
    CICleanUpReset(v197, v195);
    v47 = 0;
    v48 = 0;
    v30 = v16;
    v33 = queue;
    v32 = v156;
    v49 = add_explicit;
    goto LABEL_88;
  }

  v149 = v34;
  v50 = 0;
  v147 = v6 + 3;
  v51 = 134217984;
  v52 = 134217984;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v161 = v3;
  while (1)
  {
    v146 = v55;
    v57 = v53;
    v58 = v44;
    v59 = v50;
    v60 = v16;
    v61 = v56;
    while (1)
    {
      v62 = v60;
      v63 = v59;
      if (*(*(*v159 + 13) + 96))
      {
        v111 = v59;
        v113 = v60;
        v115 = v61;
        v3 = v161;
        goto LABEL_85;
      }

      v64 = v58;
      v65 = *(*v159 + 13);
      do
      {
        v66 = v65;
        v65 = *(v65 + 80);
      }

      while (v65);
      v3 = v161;
      if (*(*(v66 + 8) + 12))
      {
        v111 = v63;
        v113 = v62;
LABEL_84:
        v115 = v61;
        goto LABEL_85;
      }

      if (v57)
      {
        v67 = _db_obj_iter_next(v158, &v203, 1, *&v51, *&v52, v45);
        if (!v67)
        {
          if (!v54)
          {
            v110 = v64;
            v76 = 0;
            v75 = v63;
            goto LABEL_74;
          }

          if (v202)
          {
            v142 = __si_assert_copy_extra_332();
            v143 = v142;
            v144 = "";
            if (v142)
            {
              v144 = v142;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 3819, "!page", v144);
            free(v143);
            if (__valid_fs(-1))
            {
              v145 = 2989;
            }

            else
            {
              v145 = 3072;
            }

            *v145 = -559038737;
            abort();
          }

          if (*(v158 + 12))
          {
            v202 = *(v158 + 12);
            *(v158 + 12) = 0;
            v77 = v147;
          }

          else
          {
            v77 = &v202;
          }

          v74 = 0;
          v76 = 0;
          *v77 = 0;
          v73 = 1;
          LODWORD(v64) = -1;
          v75 = v63;
          goto LABEL_56;
        }

        v68 = v67;
        v69 = v61;
        goto LABEL_41;
      }

      v70 = v61 + 1;
      v71 = db_obj_subiter_next(v158, &v203, *&v51, *&v52, v45);
      if (!v71)
      {
        break;
      }

      v68 = v71;
      v69 = v61 + 1;
LABEL_41:
      if (v54 != 2048)
      {
        v72 = v203;
        if (*(v161 + 104) > v203 || !v54)
        {
          v81 = v64;
          v82 = v54;
          v83 = v62;
          v84 = 1;
          v85 = v63 + 1;
          v86 = v68;
          v87 = v69;
          goto LABEL_65;
        }
      }

      v73 = 0;
      v61 = v69;
      v74 = v68;
      v75 = v63 + 1;
      v76 = 1;
LABEL_56:
      v88 = v73;
      if (*(v161 + 228))
      {
        v3 = v161;
        processItems(*(v161 + 112), *(v161 + 120), v54, v154, *(v161 + 128), *(*(*(v161 + 72) + 8) + 216) != 0, *(v161 + 64), v160, *(v161 + 32), *(v161 + 40), *(v161 + 48), *(v161 + 56), v162, *(v161 + 144), 1, *(v161 + 216), *(v161 + 152), v150 != 0, v156, v202, v64, v153, *(v161 + 220), *(v161 + 160), *(v161 + 168), *(v161 + 176), *(v161 + 184), v159, *(v161 + 224), keyCallBacks.retain + 24, v62, *(v161 + 96), *(v161 + 192), 0);
      }

      else
      {
        dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___ZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbb_block_invoke_125;
        block[3] = &unk_1E8194320;
        v89 = *(v161 + 120);
        v169 = *(v161 + 112);
        v170 = v89;
        v171 = v54;
        v172 = v154;
        v91 = *(v161 + 64);
        v90 = *(v161 + 72);
        v92 = *(v161 + 136);
        v173 = *(v161 + 128);
        v174 = v90;
        v164 = *(v161 + 32);
        v93 = *(v161 + 56);
        v165 = *(v161 + 48);
        v166 = v93;
        v175 = v160;
        v176 = v92;
        v94 = *(v161 + 144);
        v95 = *(v161 + 152);
        v177 = v162;
        v178 = v94;
        v192 = *(v161 + 228);
        v189 = *(v161 + 216);
        v193 = v150 != 0;
        v179 = v95;
        v180 = v156;
        v190 = v64;
        v181 = v202;
        v182 = v153;
        v96 = *(v161 + 176);
        v183 = *(v161 + 160);
        v184 = v96;
        v191 = *(v161 + 220);
        v167 = v91;
        p_keyCallBacks = &keyCallBacks;
        v97 = *(v161 + 96);
        v185 = v62;
        v186 = v97;
        v187 = *(v161 + 192);
        v188 = dsema;
        dispatch_async(queue, block);
      }

      v202 = 0;
      v98 = v203;
      if (*(v3 + 104) <= v203)
      {
        v111 = v75;
        v113 = 0;
        goto LABEL_84;
      }

      v99 = OSAtomicDequeue(*(v3 + 96), 0);
      if (v99 || (v99 = malloc_type_zone_malloc(queryZone, 0x50000uLL, 0xA4971684uLL)) != 0)
      {
        v83 = v99;
      }

      else
      {
        _log_fault_for_malloc_failure();
        v83 = 0;
      }

      v81 = 0xFFFFFFFFLL;
      if (v88)
      {
        v110 = 0xFFFFFFFFLL;
        v62 = v83;
        goto LABEL_74;
      }

      v72 = v98;
      v82 = 0;
      v84 = v76;
      v85 = v75;
      v86 = v74;
      v87 = v61;
LABEL_65:
      v100 = v83;
      v101 = v81;
      v102 = *v86;
      if (*v86 != v146)
      {
        v108 = &v100[160 * v82];
        *v108 = v86;
        *(v108 + 1) = v72;
        v3 = v161;
        if (*(v161 + 229) == 1)
        {
          v109 = *(*(v161 + 136) + 2 * v72);
        }

        else
        {
          v109 = 0;
        }

        v117 = v102;
        *(v108 + 8) = v109;
        v112 = v72;
        v113 = v100;
        v114 = v84;
        v111 = v85;
        v115 = v87;
        v116 = v82 + 1;
        goto LABEL_77;
      }

      v58 = v81;
      v57 = v84;
      v59 = v85;
      v60 = v100;
      v54 = v82;
      v61 = v87;
      if (_ZZZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbbEUb_E7_COUNT_ >= 1)
      {
        --_ZZZL14readSDBForOidsP20SISearchCtx_METADATAPxPtP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tmPhP19PartialQueryResultsP14__MDPlistBytesbbEUb_E7_COUNT_;
        v103 = *__error();
        v104 = _SILogForLogForCategory(1);
        v105 = 2 * (dword_1EBF46AD0 < 4);
        if (os_log_type_enabled(v104, v105))
        {
          v106 = *v86;
          *buf = 134217984;
          v206 = v106;
          _os_log_impl(&dword_1C278D000, v104, v105, "duplicate oid 0x%llx", buf, 0xCu);
        }

        v107 = __error();
        v58 = v101;
        *v107 = v103;
        v57 = v84;
        v59 = v85;
        v60 = v100;
        v54 = v82;
        v61 = v87;
      }
    }

    v78 = *__error();
    v79 = _SILogForLogForCategory(1);
    v80 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v79, v80))
    {
      *buf = 134217984;
      v206 = v63;
      _os_log_impl(&dword_1C278D000, v79, v80, "Iterator out of results after %ld items", buf, 0xCu);
    }

    *__error() = v78;
    if (v54)
    {
      v73 = 1;
      v61 = v70;
      v74 = 0;
      v75 = v63;
      v76 = 0;
      goto LABEL_56;
    }

    v110 = v64;
    v76 = 0;
    v75 = v63;
    v61 = v70;
LABEL_74:
    v111 = v75;
    v112 = v203;
    v101 = v110;
    v113 = v62;
    v114 = v76;
    v115 = v61;
    v116 = 0;
    v117 = v146;
LABEL_77:
    v118 = v112;
    v44 = v101;
    v53 = v114;
    v50 = v111;
    v16 = v113;
    v54 = v116;
    v55 = v117;
    v56 = v115;
    if (*(v3 + 104) <= v118)
    {
      v44 = v101;
      v53 = v114;
      v50 = v111;
      v16 = v113;
      v54 = v116;
      v55 = v117;
      v56 = v115;
      if (!v116)
      {
        break;
      }
    }
  }

LABEL_85:
  v47 = v115;
  v30 = v113;
  v48 = v111;
  v119 = threadData[9 * v197 + 1] + 320 * v196;
  *(v119 + 312) = v148;
  v120 = *(v119 + 232);
  if (v120)
  {
    v120(*(v119 + 288));
  }

  dropThreadId(v197, 0, v149 + 1);
  v33 = queue;
  v32 = v156;
  v49 = add_explicit;
  v46 = v151;
LABEL_88:
  v121 = threadData[9 * v201 + 1] + 320 * v200;
  *(v121 + 312) = v46;
  v122 = *(v121 + 232);
  if (v122)
  {
    v122(*(v121 + 288));
  }

  dropThreadId(v201, 0, v49 + 1);
  v29 = v48;
  v28 = v47;
  v31 = dsema;
LABEL_91:
  if (v33)
  {
    dispatch_sync(v33, &__block_literal_global_130);
    dispatch_release(v33);
  }

  if (v32)
  {
    dispatch_sync(v32, &__block_literal_global_134);
    dispatch_release(v32);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  v123 = v154[1];
  if (v123)
  {
    CFRelease(v123);
  }

  if (*v154)
  {
    CFRelease(*v154);
  }

  free(v154);
  if (v202)
  {
    db_obj_iter_return_page(*(*v159 + 114), v202);
  }

  if (v30)
  {
    OSAtomicEnqueue(*(v3 + 96), v30, 0);
  }

  if (*(v3 + 230) == 1)
  {
    v125 = *(v3 + 184);
    v126 = v125 + 464;
    if (*(v125 + 1488 + 8 * v162))
    {
      _MDPlistBytesEndArray();
      v127 = *(v125 + 1488 + 8 * v162);
      _MDPlistBytesEndPlist();
    }

    if (*(v126 + 8 * v162))
    {
      v128 = v125 + 8 * v162;
      v129 = *(v128 + 3544);
      _MDStoreOIDArrayEndBulkAdd();
      v130 = *(v126 + 8 * v162);
      _MDStoreOIDArrayEndSequence();
      *(v128 + 3544) = 0;
    }
  }

  v131 = *(v3 + 64);
  if (v131)
  {
    (*(v131 + 16))(v131, 1, v160, 0, 0, 0);
  }

  v132 = *(*v159 + 13);
  if ((*(v132 + 96) & 1) == 0)
  {
    v133 = *(*v159 + 13);
    do
    {
      v134 = v133;
      v133 = *(v133 + 80);
    }

    while (v133);
    if (*(*(v134 + 8) + 12) != 1)
    {
      goto LABEL_119;
    }
  }

  v135 = *__error();
  v136 = _SILogForLogForCategory(1);
  v137 = 2 * (dword_1EBF46AD0 < 4);
  if (os_log_type_enabled(v136, v137))
  {
    *buf = 0;
    _os_log_impl(&dword_1C278D000, v136, v137, "Query was canceled", buf, 2u);
  }

  *__error() = v135;
  v132 = *(*v159 + 13);
  if (*(v132 + 96))
  {
    v140 = 1;
  }

  else
  {
LABEL_119:
    v138 = v132;
    do
    {
      v139 = v138;
      v138 = *(v138 + 80);
    }

    while (v138);
    v140 = *(*(v139 + 8) + 12);
  }

  db_obj_subiter_release(v158, v140 & 1, v124);
  *(*(v3 + 200) + 8 * v162) = v28;
  *(*(v3 + 208) + 8 * v162) = v29;
  _Block_object_dispose(&keyCallBacks, 8);
  v141 = *MEMORY[0x1E69E9840];
}

intptr_t ___ZL12processItemsP14datastore_infommP24si_localized_value_cachePmbU13block_pointerFPv15SI_OBJECT_EVENT15si_event_data_tmS4_ES4_ooPtmPhbjmbP16dispatch_queue_sS4_jP14__MDPlistBytes14ranking_mode_sP16ci_rankingbits_sP17ci_tc_distances_tP21ci_vector_distances_tP19PartialQueryResultsRP20SISearchCtx_METADATAiRbP10ReadData_sPV3__0P22ci_combobits_wrapped_sP20dispatch_semaphore_s_block_invoke_155(uint64_t a1)
{
  v2 = a1 + 160;
  v3 = *(a1 + 160);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  v8 = *(v3 + 848);
  if (v8)
  {
    v9 = *(*(v3 + 840) + 48 * v8);
  }

  else
  {
    v9 = 0;
  }

  packItems(v6, v4, v5, v7, *(v2 - 56), *(v2 - 128), *(v2 - 120), *(v2 + 16), *(v2 - 112), *(v2 - 104), *(v2 - 48), *(v2 - 32), *(v2 - 24), *(v2 - 16), *(v2 - 8), v2, **(v2 + 8), *(v2 + 16), *(v2 + 24), v9, *(a1 + 212));
  v10 = *(a1 + 200);

  return dispatch_semaphore_signal(v10);
}

uint64_t SISearchCtx_METADATA::photosDerivedAttributes(SISearchCtx_METADATA *this, datastore_info *a2)
{
  result = *(this + 155);
  if (!result)
  {
    os_unfair_lock_lock(&SISearchCtx_METADATA::photosDerivedAttributes(datastore_info *)::initLock);
    if (!*(this + 155))
    {
      v5 = *(this + 90);
      v6 = 8 * v5;
      if (((v5 >> 14) & 0x7FFFFFFFFFFFLL) == 0 && v6 > *MEMORY[0x1E69E9AC8])
      {
        ++sTotal;
      }

      v8 = malloc_type_zone_calloc(queryZone, 1uLL, v6, 0x5BAF1CEAuLL);
      if (!v8)
      {
        _log_fault_for_malloc_failure();
      }

      v9 = *(this + 90);
      if (v9 >= 1)
      {
        for (i = 0; i < v9; v8[i++] = v11)
        {
          if (a2)
          {
            v11 = db_copy_field_ids_with_buffer(a2, off_1E81943C8[i], 0, 0);
            v9 = *(this + 90);
          }

          else
          {
            v11 = 0;
          }
        }
      }

      __dmb(0xBu);
      *(this + 155) = v8;
    }

    os_unfair_lock_unlock(&SISearchCtx_METADATA::photosDerivedAttributes(datastore_info *)::initLock);
    return *(this + 155);
  }

  return result;
}

uint64_t PartialQueryResults::prepare(uint64_t this, int a2, unsigned __int16 a3, uint64_t a4)
{
  v4 = this + 2512;
  if (*(this + 2512 + 8 * a4) >= 0xFFFDuLL)
  {
    v6 = this;
    v7 = this + 1488;
    if (*(this + 1488 + 8 * a4))
    {
      v8 = this + 464;
      if (*(this + 464 + 8 * a4))
      {
        _MDPlistBytesEndArray();
        v9 = *(v7 + 8 * a4);
        _MDPlistBytesEndPlist();
        v10 = *(v8 + 8 * a4);
        v11 = v6 + 8 * a4;
        v12 = *(v11 + 3544);
        _MDStoreOIDArrayEndBulkAdd();
        v13 = *(v8 + 8 * a4);
        _MDStoreOIDArrayEndSequence();
        *(v11 + 3544) = 0;
        v14 = *(v7 + 8 * a4);
        _MDPlistBytesBeginPlist();
        v15 = *(v7 + 8 * a4);
        _MDPlistBytesBeginArray();
        v16 = *(v7 + 8 * a4);
        _MDPlistBytesAddNull();
        v17 = *(v8 + 8 * a4);
        _MDStoreOIDArrayBeginSequence();
        v18 = *(v8 + 8 * a4);
        this = _MDStoreOIDArrayBeginBulkAdd();
        *(v4 + 8 * a4) = 0;
        return this;
      }

      v22 = __si_assert_copy_extra_332();
      v20 = v22;
      v23 = "";
      if (v22)
      {
        v23 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx.h", 955, "fOids[slot]", v23);
    }

    else
    {
      v19 = __si_assert_copy_extra_332();
      v20 = v19;
      v21 = "";
      if (v19)
      {
        v21 = v19;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx.h", 954, "fPlistBytes[slot]", v21);
    }

    free(v20);
    if (__valid_fs(-1))
    {
      v24 = 2989;
    }

    else
    {
      v24 = 3072;
    }

    *v24 = -559038737;
    abort();
  }

  return this;
}

void extractSynonymUnalignedMatchingField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  MEMORY[0x1EEE9AC00](a1);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v135[256] = *MEMORY[0x1E69E9840];
  v129 = 0;
  v130 = 0;
  v127 = 0;
  v128 = 0;
  if (db_get_field_by_id(v23, v21, v27, &v130, &v129))
  {
    goto LABEL_104;
  }

  if ((~*(v130 + 2) & 0x30) == 0)
  {
    goto LABEL_104;
  }

  if (!v129)
  {
    goto LABEL_104;
  }

  v28 = *(v130 + 8);
  field_by_id = db_get_field_by_id(v24, v22, v14, &v128, &v127);
  if (field_by_id)
  {
    goto LABEL_104;
  }

  v99 = v16;
  v30 = &v93;
  v31 = v28 >> 3;
  MEMORY[0x1EEE9AC00](field_by_id);
  v104 = &v93 - v32;
  bzero(&v93 - v32, v33);
  os_unfair_lock_lock((v26 + 1216));
  if (!*(v26 + 1208))
  {
    v34 = malloc_type_malloc(0x48uLL, 0x2004093837F09uLL);
    v35 = 0;
    *(v26 + 1208) = v34;
    do
    {
      *(*(v26 + 1208) + v35) = 0;
      v35 += 8;
    }

    while (v35 != 72);
  }

  if (v28 < 8)
  {
    os_unfair_lock_unlock((v26 + 1216));
    goto LABEL_104;
  }

  v98 = v20;
  v96 = v18;
  v36 = 0;
  v106 = 0;
  v97 = a12;
  v100 = a11;
  v103 = a13;
  v102 = a10;
  v105 = v31;
  do
  {
    v37 = *(v128 + 8 * v36 + 13);
    if (v37 <= 8)
    {
      v38 = *(v129 + 8 * v36);
      v39 = *(*(v26 + 1208) + 8 * v37);
      if (!v39)
      {
        v39 = SIUINT64SetCreate();
        *(*(v26 + 1208) + 8 * v37) = v39;
      }

      if (SIValueSet<unsigned long long>::SIValueSetInsert((v39 + 16), v38))
      {
        v40 = v106;
        *&v104[4 * v106] = v36;
        v106 = v40 + 1;
      }

      v31 = v105;
    }

    ++v36;
  }

  while (v31 != v36);
  os_unfair_lock_unlock((v26 + 1216));
  if (!v106)
  {
    goto LABEL_104;
  }

  v41 = v97;
  if (v97 < 1)
  {
    v46 = 0;
    v45 = v96;
    goto LABEL_26;
  }

  v42 = 0;
  v43 = v100;
  do
  {
    v44 = *v43++;
    v42 |= isQueryNodePhotosSceneTypedIdentifier(v44);
    --v41;
  }

  while (v41);
  v45 = v96;
  if ((v42 & 1) == 0 || (v110 = 0, v126 = 0, bzero(v135, 0x800uLL), LODWORD(v118) = 2048, db_get_field_by_id(v24, v22, a9, &v110, &v126)) || (v61 = copyDataForUniquedValue(v24, *(v110 + 13), v135, &v118), (v126 = v61) == 0))
  {
    v46 = 0;
LABEL_26:
    v47 = v98;
    goto LABEL_27;
  }

  v47 = v98;
  if (v118 >= 4)
  {
    v62 = 0;
    LODWORD(v63) = 0;
    v94 = 0;
    v64 = v118 >> 2;
    v101 = v123;
    v65 = v106;
    v66 = v104;
    v95 = &v93;
    v93 = v64;
    do
    {
      v67 = v63;
      do
      {
        v63 = v67;
        v68 = *&v66[4 * v67++];
      }

      while (v62 > v68 && v63 < v65);
      if (v62 == v68)
      {
        v125 = 1;
        v131 = 0;
        v132 = &v131;
        v133 = 0x2000000000;
        v70 = v100;
        v71 = v97;
        v134 = 0;
        do
        {
          v72 = *v70;
          if (isQueryNodePhotosSceneTypedIdentifier(*v70))
          {
            v73 = *(v26 + 152);
            v122[0] = MEMORY[0x1E69E9820];
            v122[1] = 0x40000000;
            v123[0] = ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke;
            v123[1] = &unk_1E8194488;
            v123[2] = &v131;
            v124 = v62;
            v123[3] = v102;
            v123[4] = v129;
            v123[5] = v103;
            v123[6] = v128;
            db_query_enumerate_matched_qps_for_dbf(v24, v72, v110, v126 + 4 * v62, &v125, v73, v122);
          }

          ++v70;
          --v71;
        }

        while (v71);
        if ((v132[3] & 1) == 0)
        {
          v74 = v94;
          *&v104[4 * v94] = v62;
          v94 = v74 + 1;
        }

        v30 = v95;
        v47 = v98;
        _Block_object_dispose(&v131, 8);
        v66 = v104;
        v64 = v93;
      }

      ++v62;
    }

    while (v62 < v64 && v106 > v63);
    v61 = v126;
    v31 = v105;
    v45 = v96;
    v46 = v94;
  }

  else
  {
    v46 = 0;
  }

  if (v61 != v135)
  {
    free(v61);
  }

LABEL_27:
  v125 = 0;
  v126 = 0;
  bzero(v135, 0x800uLL);
  if (!db_get_field_by_id(v24, v22, v47, &v126, &v125))
  {
    if ((~*(v126 + 2) & 0x30) != 0 || *v126 != 11)
    {
      v46 = 0;
    }

    else
    {
      v95 = v30;
      v48 = *(v126 + 13);
      LODWORD(v118) = 2048;
      v125 = copyDataForUniquedValue(v24, v48, v135, &v118);
      v49 = v118;
      if (v118)
      {
        v50 = 0;
        LODWORD(v51) = 0;
        v52 = 0;
        v101 = v120;
        v53 = v106;
        v54 = v104;
        do
        {
          v55 = v51;
          do
          {
            v51 = v55;
            v56 = *&v54[4 * v55++];
          }

          while (v50 > v56 && v51 < v53);
          if (v50 == v56 && v50 < v105)
          {
            v110 = 1;
            v131 = 0;
            v132 = &v131;
            v133 = 0x2000000000;
            v134 = 0;
            v59 = *(v26 + 152);
            v60 = *v100;
            v119[0] = MEMORY[0x1E69E9820];
            v119[1] = 0x40000000;
            v120[0] = ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_2;
            v120[1] = &unk_1E81944B0;
            v120[2] = &v131;
            v120[3] = v102;
            v121 = v50;
            v120[4] = v129;
            v120[5] = v103;
            v120[6] = v128;
            db_query_enumerate_matched_qps_for_dbf(v24, v60, v126, v125 + 4 * v50, &v110, v59, v119);
            if ((v132[3] & 1) == 0)
            {
              *&v104[4 * v52++] = v50;
            }

            _Block_object_dispose(&v131, 8);
            v54 = v104;
          }

          ++v50;
        }

        while (v50 < v49 && v106 > v51);
      }

      else
      {
        v52 = 0;
      }

      v30 = v95;
      v45 = v96;
      v31 = v105;
      v46 = v52;
    }

    if (v125 != v135)
    {
      free(v125);
    }
  }

  if (v46)
  {
    bzero(&v131, 0x800uLL);
    v117 = 0;
    v118 = 0;
    if (!db_get_field_by_id(v24, v22, v99, &v118, &v117) && (~*(v118 + 2) & 0x30) != 0)
    {
      v115 = 0;
      v116 = 0;
      if (!db_get_field_by_id(v24, v22, v45, &v116, &v115) && (~*(v116 + 2) & 0x30) == 0 && *v116 == 11)
      {
        v75 = v46;
        v76 = *(v116 + 13);
        v114 = 2048;
        v77 = copyDataForUniquedValue(v24, v76, &v131, &v114);
        v115 = v77;
        if (v114 >= 4)
        {
          v95 = v30;
          v78 = 0;
          LODWORD(v79) = 0;
          v80 = 0;
          v81 = v114 >> 2;
          v82 = v75;
          v83 = v104;
          v106 = v114 >> 2;
          v101 = v75;
          while (1)
          {
            v84 = *&v83[4 * v78];
            if (v84 <= v79 || v79 >= v31)
            {
              if (v79 < v31)
              {
                v86 = v117;
LABEL_94:
                v110 = 0;
                v111 = &v110;
                v112 = 0x2000000000;
                v113 = 0;
                v87 = *(v86 + 8 * v79);
                v88 = v80 + v87;
                if (v80 < v80 + v87)
                {
                  v89 = 4 * v80;
                  do
                  {
                    if (v111[3])
                    {
                      break;
                    }

                    v109 = 1;
                    v90 = *(v26 + 152);
                    v91 = *v100;
                    v107[0] = MEMORY[0x1E69E9820];
                    v107[1] = 0x40000000;
                    v107[2] = ___ZL36extractSynonymUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_3;
                    v107[3] = &unk_1E81944D8;
                    v107[4] = &v110;
                    v107[5] = v102;
                    v108 = v79;
                    v107[6] = v129;
                    v107[7] = v103;
                    v107[8] = v128;
                    db_query_enumerate_matched_qps_for_dbf(v24, v91, v116, v115 + v89, &v109, v90, v107);
                    v89 += 4;
                    LODWORD(v87) = v87 - 1;
                  }

                  while (v87);
                }

                _Block_object_dispose(&v110, 8);
                v80 = v88;
                v31 = v105;
                v81 = v106;
                v82 = v101;
              }
            }

            else
            {
              v86 = v117;
              v79 = v79;
              do
              {
                v80 += *(v117 + 8 * v79++);
              }

              while (v79 < v84 && v79 < v31);
              if (v79 < v31)
              {
                goto LABEL_94;
              }
            }

            v83 = v104;
            if (v80 < v81)
            {
              ++v78;
              LODWORD(v79) = v79 + 1;
              if (v78 < v82)
              {
                continue;
              }
            }

            v77 = v115;
            break;
          }
        }

        if (v77 != &v131)
        {
          free(v77);
        }
      }
    }
  }

LABEL_104:
  v92 = *MEMORY[0x1E69E9840];
}

void extractPersonUnalignedMatchingField(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x1EEE9AC00](a1);
  v124 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v157[256] = *MEMORY[0x1E69E9840];
  v148 = 0;
  v147 = 0;
  bzero(v157, 0x800uLL);
  if (!db_get_field_by_id(v23, v21, v13, &v148, &v147))
  {
    if ((~*(v148 + 2) & 0x30) != 0)
    {
      v28 = *(v148 + 8);
      v27 = v147;
      if (!v147)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v26 = *(v148 + 13);
      LODWORD(v153) = 2048;
      v27 = copyDataForUniquedValue(v23, v26, v157, &v153);
      v147 = v27;
      v28 = v153;
      if (!v27)
      {
        goto LABEL_38;
      }
    }

    v119 = v19;
    v116 = v15;
    v29 = v28 >> 2;
    MEMORY[0x1EEE9AC00](v27);
    v31 = &v111 - v30;
    bzero(&v111 - v30, v32);
    os_unfair_lock_lock((v25 + 1232));
    if (!*(v25 + 1224))
    {
      *(v25 + 1224) = SIUINT32SetCreate();
    }

    if (v28 < 4)
    {
      os_unfair_lock_unlock((v25 + 1232));
      goto LABEL_38;
    }

    v115 = v21;
    v123 = v23;
    v33 = 0;
    v34 = 0;
    v120 = a10;
    v118 = a9;
    v122 = a11;
    do
    {
      if ((SIUINT32SetContainsValue(*(v25 + 1224), *(v147 + v33)) & 1) == 0)
      {
        *&v31[4 * v34++] = v33;
      }

      ++v33;
    }

    while (v29 != v33);
    os_unfair_lock_unlock((v25 + 1232));
    if (v34)
    {
      v112 = v17;
      v113 = &v111;
      v121 = v25;
      v117 = v29;
      if (v120 >= 1)
      {
        v35 = 0;
        v36 = v118;
        v37 = v120;
        do
        {
          v38 = *v36++;
          v35 |= isQueryNodePhotosPersonIdentifier(v38);
          --v37;
        }

        while (v37);
        if ((v35 & 1) != 0 && (~*(v148 + 2) & 0x30) == 0)
        {
          v39 = 0;
          LODWORD(v40) = 0;
          v114 = 0;
          do
          {
            v41 = v40;
            do
            {
              v40 = v41;
              v42 = *&v31[4 * v41++];
            }

            while (v39 > v42 && v40 < v34);
            if (v39 == v42)
            {
              v149 = 1;
              v153 = 0;
              v154 = &v153;
              v155 = 0x2000000000;
              v44 = v118;
              v45 = v120;
              v156 = 0;
              do
              {
                v46 = *v44;
                if (isQueryNodePhotosPersonIdentifier(*v44))
                {
                  v47 = *(v121 + 152);
                  v145[0] = MEMORY[0x1E69E9820];
                  v145[1] = 0x40000000;
                  v145[2] = ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke;
                  v145[3] = &unk_1E8194500;
                  v145[4] = &v153;
                  v145[5] = v147;
                  v146 = v39;
                  v145[6] = v124;
                  v145[7] = v122;
                  v145[8] = v123;
                  db_query_enumerate_matched_qps_for_dbf(v123, v46, v148, v147 + 4 * v39, &v149, v47, v145);
                }

                ++v44;
                --v45;
              }

              while (v45);
              if ((v154[3] & 1) == 0)
              {
                v48 = v114;
                *&v31[4 * v114] = v39;
                v114 = v48 + 1;
              }

              v29 = v117;
              _Block_object_dispose(&v153, 8);
            }

            ++v39;
          }

          while (v39 < v29 && v34 > v40);
        }
      }

      v143 = 0;
      v144 = 0;
      bzero(&v153, 0x800uLL);
      v49 = v123;
      if (!db_get_field_by_id(v123, v115, v119, &v144, &v143))
      {
        if ((~*(v144 + 2) & 0x30) != 0 || *v144 != 11)
        {
          v55 = 0;
        }

        else
        {
          v51 = *(v144 + 13);
          LODWORD(v139) = 2048;
          v143 = copyDataForUniquedValue(v49, v51, &v153, &v139);
          v52 = v139;
          if (v139)
          {
            v53 = 0;
            LODWORD(v54) = 0;
            v55 = 0;
            v119 = v141;
            do
            {
              v56 = v54;
              do
              {
                v54 = v56;
                v57 = *&v31[4 * v56++];
              }

              while (v53 > v57 && v54 < v34);
              if (v53 == v57 && v53 < v117)
              {
                v131 = 1;
                v149 = 0;
                v150 = &v149;
                v151 = 0x2000000000;
                v60 = v118;
                v61 = v120;
                v152 = 0;
                if (v120 < 1)
                {
                  goto LABEL_63;
                }

                do
                {
                  v62 = *v60;
                  if (*v60)
                  {
                    if (*(v62 + 48) == 4)
                    {
                      v63 = *(v62 + 16);
                      if (v63)
                      {
                        v64 = *v63;
                        if (v64)
                        {
                          if (*v64 == 42 && !v64[1])
                          {
                            v65 = *(v121 + 152);
                            v140[0] = MEMORY[0x1E69E9820];
                            v140[1] = 0x40000000;
                            v141[0] = ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_2;
                            v141[1] = &unk_1E8194528;
                            v141[2] = &v149;
                            v141[3] = v147;
                            v142 = v53;
                            v141[4] = v121;
                            v141[5] = v124;
                            v141[6] = v122;
                            v141[7] = v123;
                            db_query_enumerate_matched_qps_for_dbf(v123, v62, v144, v143 + 4 * v53, &v131, v65, v140);
                          }
                        }
                      }
                    }
                  }

                  ++v60;
                  --v61;
                }

                while (v61);
                if ((v150[3] & 1) == 0)
                {
LABEL_63:
                  *&v31[4 * v55++] = v53;
                }

                _Block_object_dispose(&v149, 8);
              }

              ++v53;
            }

            while (v53 < v52 && v34 > v54);
          }

          else
          {
            v55 = 0;
          }

          v49 = v123;
          v29 = v117;
        }

        if (v143 != &v153)
        {
          free(v143);
        }

        if (v55)
        {
          bzero(&v149, 0x800uLL);
          v138 = 0;
          v139 = 0;
          v66 = v115;
          if (!db_get_field_by_id(v49, v115, v116, &v139, &v138) && (~*(v139 + 2) & 0x30) != 0)
          {
            v136 = 0;
            v137 = 0;
            if (!db_get_field_by_id(v49, v66, v112, &v137, &v136))
            {
              v67 = v137;
              if ((~*(v137 + 2) & 0x30) != 0 || *v137 != 11)
              {
                v88 = (v137 + 8);
                v89 = *(v137 + 8);
                if (v89)
                {
                  v90 = 0;
                  LODWORD(v91) = 0;
                  v92 = 0;
                  v119 = v126;
                  v115 = v55;
                  do
                  {
                    v93 = *&v31[4 * v90];
                    if (v93 <= v91)
                    {
                      goto LABEL_128;
                    }

                    v91 = v91;
                    do
                    {
                      v94 = *(v138 + 8 * v91);
                      if (v94)
                      {
                        for (i = 0; i != v94; ++i)
                        {
                          if (v92 < v89)
                          {
                            v92 = v92;
                            while (*(v136 + v92))
                            {
                              if (v89 == ++v92)
                              {
                                LODWORD(v92) = v89;
                                break;
                              }
                            }
                          }

                          v92 = (v92 + 1);
                        }
                      }

                      ++v91;
                    }

                    while (v91 < v93 && v91 < v29);
                    if (v91 < v29)
                    {
LABEL_128:
                      v131 = 0;
                      v132 = &v131;
                      v133 = 0x2000000000;
                      v134 = 0;
                      v96 = v92;
                      v97 = *(v138 + 8 * v91);
                      if (v97)
                      {
                        v98 = 0;
                        v99 = *v88;
                        LODWORD(v96) = v92;
                        do
                        {
                          if (v96 < v99)
                          {
                            v96 = v96;
                            while (*(v136 + v96))
                            {
                              if (v99 == ++v96)
                              {
                                LODWORD(v96) = v99;
                                break;
                              }
                            }
                          }

                          v96 = (v96 + 1);
                          ++v98;
                        }

                        while (v98 != v97);
                      }

                      v116 = v90;
                      if (v92 < v96)
                      {
                        v100 = &v131;
                        LODWORD(v101) = v92;
                        do
                        {
                          if (v100[3])
                          {
                            break;
                          }

                          v130 = 1;
                          if (v120 < 1)
                          {
                            goto LABEL_152;
                          }

                          v102 = v118;
                          v103 = 1;
                          do
                          {
                            v104 = *v102;
                            if (*v102 && *(v104 + 48) == 4 && (v105 = *(v104 + 16)) != 0 && (v106 = *v105) != 0 && *v106 == 42 && !v106[1] || isQueryNodeMatchingPersonNamesAlternatives(*v102))
                            {
                              v107 = *(v121 + 152);
                              v125[0] = MEMORY[0x1E69E9820];
                              v125[1] = 0x40000000;
                              v126[0] = ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_4;
                              v126[1] = &unk_1E8194578;
                              v126[2] = &v131;
                              v126[3] = v147;
                              v127 = v91;
                              v126[4] = v123;
                              v126[5] = v124;
                              v126[6] = v122;
                              db_query_enumerate_matched_qps_for_dbf(v123, v104, v137, v136 + v101, &v130, v107, v125);
                              v100 = v132;
                            }

                            if (v100[3])
                            {
                              break;
                            }

                            ++v102;
                            v87 = v103++ < v120;
                          }

                          while (v87);
                          if ((v100[3] & 1) == 0)
                          {
LABEL_152:
                            v108 = *(v137 + 8);
                            if (v101 < v108)
                            {
                              v101 = v101;
                              while (*(v136 + v101))
                              {
                                if (v108 == ++v101)
                                {
                                  LODWORD(v101) = *(v137 + 8);
                                  break;
                                }
                              }
                            }

                            LODWORD(v101) = v101 + 1;
                          }
                        }

                        while (v101 < v96);
                      }

                      _Block_object_dispose(&v131, 8);
                      v67 = v137;
                      v92 = v96;
                      v90 = v116;
                      v29 = v117;
                    }

                    v90 = (v90 + 1);
                    LODWORD(v91) = v91 + 1;
                    v88 = (v67 + 8);
                    v89 = *(v67 + 8);
                  }

                  while (v92 < v89 && v91 < v29 && v90 < v115);
                }
              }

              else
              {
                v68 = *(v137 + 13);
                v135 = 2048;
                v69 = copyDataForUniquedValue(v49, v68, &v149, &v135);
                v136 = v69;
                if (v135 >= 4)
                {
                  v70 = 0;
                  LODWORD(v71) = 0;
                  v72 = 0;
                  v73 = v135 >> 2;
                  v74 = v55;
                  LODWORD(v116) = v135 >> 2;
                  v115 = v55;
                  while (1)
                  {
                    v75 = *&v31[4 * v70];
                    if (v75 <= v71 || v71 >= v29)
                    {
                      if (v71 < v29)
                      {
                        v77 = v138;
LABEL_91:
                        v119 = v70;
                        v131 = 0;
                        v132 = &v131;
                        v133 = 0x2000000000;
                        v134 = 0;
                        v78 = v72 + *(v77 + 8 * v71);
                        if (v72 < v78)
                        {
                          v79 = v72;
                          v80 = &v131;
                          do
                          {
                            if (v80[3])
                            {
                              break;
                            }

                            v130 = 1;
                            if (v120 >= 1)
                            {
                              v81 = v118;
                              v82 = 1;
                              do
                              {
                                v83 = *v81;
                                if (*v81 && *(v83 + 48) == 4 && (v84 = *(v83 + 16)) != 0 && (v85 = *v84) != 0 && *v85 == 42 && !v85[1] || isQueryNodeMatchingPersonNamesAlternatives(*v81))
                                {
                                  v86 = *(v121 + 152);
                                  v128[0] = MEMORY[0x1E69E9820];
                                  v128[1] = 0x40000000;
                                  v128[2] = ___ZL35extractPersonUnalignedMatchingFieldP20SISearchCtx_METADATAP14datastore_infoP6db_objPKjS6_S6_S6_P19PartialQueryResultsPP10query_nodelP14__MDPlistBytes_block_invoke_3;
                                  v128[3] = &unk_1E8194550;
                                  v128[4] = &v131;
                                  v128[5] = v147;
                                  v129 = v71;
                                  v128[6] = v121;
                                  v128[7] = v124;
                                  v128[8] = v122;
                                  v128[9] = v123;
                                  db_query_enumerate_matched_qps_for_dbf(v123, v83, v137, v136 + 4 * v79, &v130, v86, v128);
                                  v80 = v132;
                                }

                                if (v80[3])
                                {
                                  break;
                                }

                                ++v81;
                                v87 = v82++ < v120;
                              }

                              while (v87);
                            }

                            ++v79;
                          }

                          while (v79 != v78);
                        }

                        _Block_object_dispose(&v131, 8);
                        v72 = v78;
                        v29 = v117;
                        v70 = v119;
                        v73 = v116;
                        v74 = v115;
                      }
                    }

                    else
                    {
                      v77 = v138;
                      v71 = v71;
                      do
                      {
                        v72 += *(v138 + 8 * v71++);
                      }

                      while (v71 < v75 && v71 < v29);
                      if (v71 < v29)
                      {
                        goto LABEL_91;
                      }
                    }

                    if (v72 < v73)
                    {
                      v70 = (v70 + 1);
                      LODWORD(v71) = v71 + 1;
                      if (v70 < v74)
                      {
                        continue;
                      }
                    }

                    v69 = v136;
                    break;
                  }
                }

                if (v69 != &v149)
                {
                  free(v69);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_38:
  v50 = *MEMORY[0x1E69E9840];
}

__n128 pqpush_oid_and_rankinfo_t(void **a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5;
  if ((v5 + 2) >= v4)
  {
    v7 = 2 * v4;
    v8 = v4 < 4;
    v9 = 4;
    if (!v8)
    {
      v9 = v7;
    }

    a1[1] = v9;
    v10 = 112 * v9 + 224;
    if (*a1)
    {
      v11 = malloc_type_zone_realloc(queryZone, *a1, v10, 0xA1A7ADA0uLL);
    }

    else
    {
      v11 = malloc_type_zone_malloc(queryZone, v10, 0x566E289CuLL);
    }

    v12 = v11;
    if (!v11)
    {
      _log_fault_for_malloc_failure();
    }

    *a1 = v12;
    *v12 = ZERO_OIDINFO;
    v12[1] = *algn_1C2C006B0;
    v12[6] = xmmword_1C2C00700;
    v12[4] = xmmword_1C2C006E0;
    v12[5] = unk_1C2C006F0;
    v12[2] = xmmword_1C2C006C0;
    v12[3] = unk_1C2C006D0;
    v6 = a1[2];
  }

  a1[2] = (v6 + 1);
  v13 = *a1 + 112 * v5;
  v14 = a2[2];
  v15 = *a2;
  *(v13 + 16) = a2[1];
  *(v13 + 32) = v14;
  result = a2[3];
  v17 = a2[4];
  v18 = a2[6];
  *(v13 + 80) = a2[5];
  *(v13 + 96) = v18;
  *(v13 + 48) = result;
  *(v13 + 64) = v17;
  *v13 = v15;
  if (v5 >= 2)
  {
    do
    {
      v19 = *a1;
      v20 = *a1 + 112 * v5;
      v21 = *(v20 + 64);
      result.n128_u32[0] = *(v20 + 68);
      v22 = v5 >> 1;
      v23 = *a1 + 112 * (v5 >> 1);
      v24 = *(v23 + 64);
      v25 = *(v23 + 68);
      if (*(v20 + 85))
      {
        v26 = *(v20 + 76);
        v27 = *(v23 + 76);
        if (v26 < v27)
        {
          goto LABEL_27;
        }

        if (v26 != v27)
        {
          return result;
        }
      }

      else
      {
        v30 = v20 + 16;
        v28 = *(v20 + 16);
        v29 = *(v30 + 8);
        v33 = v23 + 16;
        v31 = *(v23 + 16);
        v32 = *(v33 + 8);
        if (__PAIR128__(v29, v28) < __PAIR128__(v32, v31))
        {
          goto LABEL_27;
        }

        if (v29 != v32 || v28 != v31)
        {
          return result;
        }
      }

      if (result.n128_f32[0] >= v25 && (result.n128_f32[0] != v25 || v21 < v24))
      {
        return result;
      }

LABEL_27:
      v36 = &v19[112 * v5];
      v48 = v36[4];
      v49 = v36[5];
      v50 = v36[6];
      v44 = *v36;
      v45 = v36[1];
      v46 = v36[2];
      v47 = v36[3];
      v37 = &v19[112 * v22];
      v39 = v37[1];
      v38 = v37[2];
      *v36 = *v37;
      v36[1] = v39;
      v36[2] = v38;
      v40 = v37[6];
      v42 = v37[3];
      v41 = v37[4];
      v36[5] = v37[5];
      v36[6] = v40;
      v36[3] = v42;
      v36[4] = v41;
      v43 = (*a1 + 112 * v22);
      *v43 = v44;
      v43[1] = v45;
      v43[5] = v49;
      v43[6] = v50;
      v43[3] = v47;
      v43[4] = v48;
      result = v46;
      v43[2] = v46;
      v8 = v5 > 3;
      v5 >>= 1;
    }

    while (v8);
  }

  return result;
}

uint64_t eventParseDBO(uint64_t a1, uint64_t a2, uint64_t a3, PartialQueryResults *a4, char **a5, _DWORD *a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10, int a11, uint64_t a12, int a13, char a14, uint64_t a15, CFMutableDictionaryRef *a16, uint64_t a17, void *a18)
{
  v207 = a8;
  v214 = a7;
  v239[1] = *MEMORY[0x1E69E9840];
  v237 = a13;
  v238 = a14;
  v213 = a1;
  v23 = *(a1 + 1192);
  v24 = (*(*a6 + 32))(a6);
  if (!v24)
  {
    v177 = __si_assert_copy_extra_332();
    v34 = v177;
    v178 = "";
    if (v177)
    {
      v178 = v177;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6457, "oid", v178);
LABEL_159:
    free(v34);
    if (__valid_fs(-1))
    {
      v170 = 2989;
    }

    else
    {
      v170 = 3072;
    }

    *v170 = -559038737;
    abort();
  }

  v221 = v23;
  v25 = a6[2];
  v27 = a2 + 16;
  v26 = *(a2 + 16);
  v216 = v24;
  v208 = a3;
  CountOfBit = v26(a2, 2);
  v225 = CountOfBit;
  v29 = *(a4 + 29);
  v215 = (a4 + 232);
  if ((v25 & 8) != 0 || (CountOfBit = *(a4 + 31)) == 0)
  {
    v227 = 0;
    v228 = v29;
  }

  else
  {
    v227 = *(a4 + 31);
    v240.location = 0;
    v240.length = v29;
    CountOfBit = CFBitVectorGetCountOfBit(CountOfBit, v240, 1u);
    v228 = CountOfBit;
  }

  v223 = 0;
  v219 = a5;
  if (v221 && v29)
  {
    CountOfBit = (*(*a6 + 16))(a6);
    v223 = CountOfBit;
  }

  v30 = *v215;
  v224 = v29;
  if (v30 && !*(a4 + 28))
  {
    if (*a4 == 1)
    {
      v31 = *(a4 + 13);
      if (v31)
      {
LABEL_20:
        PartialQueryResults::setupFixedFunctionVector(a4, v31, a4 + 28);
        v29 = v224;
        goto LABEL_21;
      }

      v32 = *(a4 + 16);
      if (v32)
      {
        v233[0].n128_u64[0] = 0;
        SIFlattenArrayToCStringVector(v32, a4 + 13, v233[0].n128_u64, v236);
        v31 = *(a4 + 13);
        goto LABEL_20;
      }
    }

    else
    {
      v31 = *(a4 + 12);
      if (v31)
      {
        goto LABEL_20;
      }

      v33 = *(a4 + 15);
      if (v33)
      {
        SIFlattenArrayToCStringVector(v33, a4 + 12, a4 + 30, v215);
        v31 = *(a4 + 12);
        if (!v31)
        {
          v34 = __si_assert_copy_extra_332();
          __message_assert_336(v34, v35, v36, v37, v38, v39, v40, v41, "SISearchCtx.h");
          goto LABEL_159;
        }

        goto LABEL_20;
      }
    }

    v31 = 0;
    goto LABEL_20;
  }

LABEL_21:
  v220 = *(a4 + 28);
  MEMORY[0x1EEE9AC00](CountOfBit);
  v226 = &v191 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v226, v42);
  v218 = a4;
  v43 = v223;
  if (!v223)
  {
    goto LABEL_35;
  }

  if (*v215)
  {
    v44 = a4;
    v46 = *(a4 + 18);
    v45 = (a4 + 144);
    if (v46)
    {
      v47 = 144;
      if ((v25 & 8) == 0)
      {
        v47 = 160;
      }

      v48 = *(v44 + v47);
      a4 = v44;
      goto LABEL_27;
    }

    v161 = PartialQueryResults::attributeIdVector(v44, v221);
    PartialQueryResults::setupFieldIdVector(v44, v161, (v44 + 152), v45, 0);
    PartialQueryResults::setupFieldIdVector(v44, v161, (v44 + 168), (v44 + 160), 1);
    v162 = 144;
    if ((v25 & 8) == 0)
    {
      v162 = 160;
    }

    v48 = *(v44 + v162);
    if (!*(v44 + 232))
    {
      a4 = v218;
LABEL_27:
      v29 = v224;
      goto LABEL_31;
    }

    v29 = v224;
    if (*v45)
    {
      a4 = v218;
    }

    else
    {
      v163 = v218;
      v164 = PartialQueryResults::attributeIdVector(v218, v221);
      v165 = (v163 + 152);
      v166 = v163;
      v167 = v45;
      a4 = v163;
      v29 = v224;
      PartialQueryResults::setupFieldIdVector(v166, v164, v165, v167, 0);
      PartialQueryResults::setupFieldIdVector(a4, v164, a4 + 21, a4 + 20, 1);
    }
  }

  else
  {
    v49 = 144;
    if ((v25 & 8) == 0)
    {
      v49 = 160;
    }

    v48 = *(a4 + v49);
  }

LABEL_31:
  v50 = 152;
  if ((v25 & 8) == 0)
  {
    v50 = 168;
  }

  v51 = v48;
  v43 = v223;
  db_get_offsets_for_fields(v221, v223, v51, *(a4 + v50), v226);
  if (*v43 && *v43 != v216)
  {
    v186 = __si_assert_copy_extra_332();
    v172 = v186;
    v187 = "";
    if (v186)
    {
      v187 = v186;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6490, "!dbo || !dbo->oid || dbo->oid == oid", v187);
LABEL_169:
    free(v172);
    if (__valid_fs(-1))
    {
LABEL_170:
      v176 = 2989;
    }

    else
    {
      v176 = 3072;
    }

    *v176 = -559038737;
    abort();
  }

LABEL_35:
  v212 = a6;
  v236[1] = 0;
  v236[2] = 0;
  v236[0] = v43;
  if (v29)
  {
    v52 = 0;
    v53 = 0;
    v202 = a17;
    v195 = v230;
    v194 = v232;
    v201 = a11;
    v198 = a11;
    v217 = a16;
    v203 = a15;
    v204 = a12;
    v205 = a9;
    v200 = v25 & 1;
    if (a17)
    {
      v54 = a18 == 0;
    }

    else
    {
      v54 = 1;
    }

    v55 = v54;
    v199 = v55;
    v196 = v235;
    v197 = a18;
    v56 = &unk_1E81941A0;
    v57 = &unk_1E81941F0;
    do
    {
      if (v227)
      {
        if (!CFBitVectorGetBitAtIndex(v227, v53))
        {
          v58 = v52;
          goto LABEL_145;
        }
      }

      else
      {
        if (v52 != v53)
        {
          v171 = __si_assert_copy_extra_332();
          v172 = v171;
          v173 = "";
          if (v171)
          {
            v173 = v171;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6498, "dbfIndex == j", v173);
          goto LABEL_169;
        }

        if (v228 != v29)
        {
          v174 = __si_assert_copy_extra_332();
          v172 = v174;
          v175 = "";
          if (v174)
          {
            v175 = v174;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6499, "packCount == attributeCount", v175);
          goto LABEL_169;
        }
      }

      if (v52 >= v228)
      {
        v168 = __si_assert_copy_extra_332();
        v34 = v168;
        v169 = "";
        if (v168)
        {
          v169 = v168;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6505, "dbfIndex < packCount", v169);
        goto LABEL_159;
      }

      v58 = v52 + 1;
      v59 = *&v226[8 * v52];
      if (v59)
      {
        v60 = *v59;
        if ((v60 - 1) <= 0xF)
        {
          v61 = *(a2 + 16);
          v222 = v58;
          v62 = v57;
          v63 = v56;
          v64 = v225;
          v65 = v61(a2, 4, 0, 0, v53, v225);
          eventParseField(v59, v60, a2, v65, v221, v219, v217, v53);
          v66 = v65;
          a4 = v218;
          v67 = v64;
          v56 = v63;
          v57 = v62;
          v58 = v222;
          (*(a2 + 16))(a2, 5, v66, 0, v53, v67);
        }
      }

      else
      {
        v68 = v223;
        if (v223 && *(v220 + 4 * v53))
        {
          v69 = (*(a2 + 16))(a2, 4, 0, 0, v53, v225);
          v70 = v69;
          switch(*(v220 + 4 * v53))
          {
            case 1:
              v116 = v68;
              v94 = v70;
              dateScaled(v116, v221, a4);
              v98 = v117 * v117;
              goto LABEL_89;
            case 2:
            case 5:
              v71 = *v204;
              v72 = *(v204 + 8);
              v73 = *(a2 + 16);
              v74 = a2;
              v75 = 24;
              goto LABEL_103;
            case 3:
              if (v201)
              {
                v73 = *(a2 + 16);
                v74 = a2;
                v75 = 20;
                v71 = v198;
LABEL_102:
                v72 = 0;
LABEL_103:
                v121 = v53;
                v122 = v70;
                v94 = v70;
LABEL_114:
                v73(v74, v75, v71, v72, v121, v122);
              }

              else
              {
                v193 = v69;
                if (!v205)
                {
LABEL_128:
                  v73 = *(a2 + 16);
                  v74 = a2;
                  v75 = 20;
                  v71 = 0;
                  v72 = 0;
                  v121 = v53;
                  v94 = v193;
                  goto LABEL_113;
                }

                v150 = 0;
                while (1)
                {
                  v151 = *(v207 + 8 * v150);
                  if (grouping_db_eval_obj_with_options(v221))
                  {
                    break;
                  }

                  if (v205 == ++v150)
                  {
                    goto LABEL_128;
                  }
                }

                v158 = (v150 + 1);
                v94 = v193;
                (*(a2 + 16))(a2, 20, v158, 0, v53, v193);
              }

LABEL_115:
              (*(a2 + 16))(a2, 5, v94, 0, v53, v225);
              break;
            case 4:
              v206 = v53;
              v88 = a2;
              v89 = v58;
              v90 = v57;
              v91 = v27;
              v92 = v56;
              v93 = v68;
              v94 = v69;
              PartialQueryResults::messageAttrIds(v233, a4, v221);
              v95 = si_fancyMailRelevance(v93, v233);
              v96 = v93;
              v56 = v92;
              v27 = v91;
              v57 = v90;
              v58 = v89;
              a2 = v88;
              v53 = v206;
              dateScaled(v96, v221, a4);
              v98 = v95 + v97 * 0.05 * 0.000244140625;
LABEL_89:
              v73 = *(a2 + 16);
              v71 = *&v98;
              v74 = a2;
              v75 = 27;
              goto LABEL_112;
            case 6:
              v83 = &v237;
              v84 = a2;
              v85 = v70;
              v86 = v53;
              v87 = 2;
              v94 = v70;
              v118 = 5;
              goto LABEL_100;
            case 7:
              v73 = *(a2 + 16);
              v74 = a2;
              v75 = 15;
              v71 = v200;
              goto LABEL_102;
            case 8:
              v71 = *(v204 + 64);
              v73 = *(a2 + 16);
              v74 = a2;
              v75 = 26;
              goto LABEL_102;
            case 9:
              if (v199)
              {
                goto LABEL_111;
              }

              v137 = v69;
              matched = TokenMatchNew(kCIQueryZoneAllocator);
              v234[0] = MEMORY[0x1E69E9820];
              v234[1] = 0x40000000;
              v235[0] = __eventParseDBO_block_invoke;
              v235[1] = &__block_descriptor_tmp_57_5776;
              v235[2] = matched;
              enumerate_matching_query_pieces(v202, v221, v223, v219, 0, v197, v234);
              TokenMatchConvertToSnippetHints(matched);
              v139 = *(a2 + 16);
              v193 = v137;
              v140 = v137;
              v141 = matched;
              v142 = v139(a2, 6, 0, 0, v53, v140);
              v143 = matched[2];
              if (matched[3] != v143)
              {
                v144 = 0;
                v145 = 0;
                v206 = v53;
                v222 = v58;
                do
                {
                  (*(a2 + 16))(a2, 29, *(v143 + 56 * v145 + 8), *(v143 + 56 * v145 + 16), v144++, v142);
                  v143 = v141[2];
                  v146 = *(v143 + 56 * v145 + 24);
                  if (*(v143 + 56 * v145 + 32) != v146)
                  {
                    v147 = 0;
                    v148 = 0;
                    do
                    {
                      (*(a2 + 16))(a2, 29, *(v146 + v147), *(v146 + v147 + 8), v144, v142);
                      ++v148;
                      ++v144;
                      v143 = v141[2];
                      v146 = *(v143 + 56 * v145 + 24);
                      v147 += 24;
                    }

                    while (v148 < 0xAAAAAAAAAAAAAAABLL * ((*(v143 + 56 * v145 + 32) - v146) >> 3));
                    v53 = v206;
                    v58 = v222;
                  }

                  ++v145;
                }

                while (v145 < 0x6DB6DB6DB6DB6DB7 * ((v141[3] - v143) >> 3));
              }

              v149 = v141;
              v94 = v193;
              (*(a2 + 16))(a2, 7, v142, 0, v53, v193);
              TokenMatchFree(v149);
              a4 = v218;
              v29 = v224;
              v56 = &unk_1E81941A0;
              v57 = &unk_1E81941F0;
              goto LABEL_115;
            case 0xA:
              v101 = v202;
              if (!v202)
              {
                goto LABEL_111;
              }

              v222 = v58;
              v233[0].n128_u64[0] = 0;
              v102 = v69;
              v211 = (*(*v202 + 72))(v202, v233);
              v103 = *(a2 + 16);
              v192 = v27;
              v193 = v102;
              v104 = v103(a2, 6, 0, 0, v53, v102);
              v105 = v219;
              v106 = v221;
              v107 = v223;
              v108 = v56;
              if (v233[0].n128_i64[0] >= 1)
              {
                v109 = v101;
                v110 = 0;
                v210 = MEMORY[0x1E69E9820];
                v209 = __eventParseDBO_block_invoke_2;
                do
                {
                  v111 = *(v211 + 8 * v110);
                  v231[0] = v210;
                  v231[1] = 0x40000000;
                  v232[0] = v209;
                  v232[1] = v108;
                  v232[2] = a2;
                  v232[3] = v53;
                  v232[4] = v104;
                  v112 = v106;
                  v113 = v108;
                  v114 = v104;
                  enumerate_matching_query_pieces(v109, v106, v107, v105, 0, v111, v231);
                  v106 = v112;
                  v104 = v114;
                  v108 = v113;
                  ++v110;
                }

                while (v110 < v233[0].n128_i64[0]);
              }

              v115 = v192;
              v94 = v193;
              (*(a2 + 16))(a2, 7, v104, 0, v53, v193);
              a4 = v218;
              v29 = v224;
              v56 = v108;
              v27 = v115;
              v57 = &unk_1E81941F0;
              goto LABEL_109;
            case 0xB:
              v123 = v202;
              if (v202)
              {
                v222 = v58;
                v233[0].n128_u64[0] = 0;
                v124 = v69;
                v211 = (*(*v202 + 80))(v202, v233);
                v125 = *(a2 + 16);
                v192 = v27;
                v193 = v124;
                v126 = v125(a2, 6, 0, 0, v53, v124);
                v127 = v219;
                v128 = v221;
                v129 = v223;
                v130 = v57;
                if (v233[0].n128_i64[0] >= 1)
                {
                  v131 = v123;
                  v132 = 0;
                  v210 = MEMORY[0x1E69E9820];
                  v209 = __eventParseDBO_block_invoke_3;
                  do
                  {
                    v133 = *(v211 + 8 * v132);
                    v229[0] = v210;
                    v229[1] = 0x40000000;
                    v230[0] = v209;
                    v230[1] = v130;
                    v230[2] = a2;
                    v230[3] = v53;
                    v230[4] = v126;
                    v134 = v130;
                    v135 = v126;
                    enumerate_matching_query_pieces(v131, v128, v129, v127, 1, v133, v229);
                    v126 = v135;
                    v130 = v134;
                    ++v132;
                  }

                  while (v132 < v233[0].n128_i64[0]);
                }

                v136 = v192;
                v94 = v193;
                (*(a2 + 16))(a2, 7, v126, 0, v53, v193);
                a4 = v218;
                v29 = v224;
                v56 = &unk_1E81941A0;
                v57 = v130;
                v27 = v136;
LABEL_109:
                v58 = v222;
                goto LABEL_115;
              }

LABEL_111:
              v94 = v69;
              v71 = (*(a2 + 16))(a2, 6, 0, 0, v53, v69);
              v73 = *(a2 + 16);
              v74 = a2;
              v75 = 7;
LABEL_112:
              v72 = 0;
              v121 = v53;
LABEL_113:
              v122 = v94;
              goto LABEL_114;
            case 0xC:
              v81 = 0;
              v82 = v203;
              do
              {
                if ((*(v82 + v81) & 1) == 0)
                {
                  *(v82 + 4 * v81 + 4) = 2139095039;
                }

                ++v81;
              }

              while (v81 != 3);
              v83 = (v82 + 4);
              v84 = a2;
              v85 = v70;
              v86 = v53;
              v87 = 9;
              goto LABEL_99;
            case 0xD:
              v99 = 0;
              v100 = 0;
              do
              {
                if (*(v203 + v99))
                {
                  v100 |= 2u;
                }

                if (v99 > 1)
                {
                  break;
                }

                ++v99;
              }

              while ((v100 & 2) == 0);
              if (!v100 || *(v204 + 64) > 0.0)
              {
                v100 |= 1u;
              }

              v94 = v69;
              (*(a2 + 16))(a2, 20, v100, 0, v53, v69);
              goto LABEL_115;
            case 0xE:
              v119 = 0;
              v120 = v203;
              do
              {
                if ((*(v120 + v119) & 1) == 0)
                {
                  *(v120 + 4 * v119 + 16) = 0;
                }

                ++v119;
              }

              while (v119 != 3);
              v83 = (v120 + 16);
              v84 = a2;
              v85 = v70;
              v86 = v53;
              v87 = 6;
LABEL_99:
              v94 = v70;
              v118 = 3;
LABEL_100:
              addScalarArray(v84, v85, v86, v87, 0, v83, v118);
              goto LABEL_115;
            default:
              v188 = __si_assert_copy_extra_332();
              v189 = v188;
              if (v188)
              {
                v190 = v188;
              }

              else
              {
                v190 = "";
              }

              __message_assert("%s:%u: Unexpected code path %s ", "SISearchCtx_METADATA.cpp", 6523, v190);
              free(v189);
              goto LABEL_170;
          }

          goto LABEL_145;
        }

        v76 = *(a4 + 29);
        if (*a4 == 1)
        {
          if (v76 && !*(a4 + 25))
          {
            v77 = *(a4 + 13);
            if (!v77)
            {
              v78 = *(a4 + 16);
              if (v78)
              {
                v233[0].n128_u64[0] = 0;
                SIFlattenArrayToCStringVector(v78, a4 + 13, v233[0].n128_u64, v239);
                v77 = *(a4 + 13);
              }

              else
              {
                v77 = 0;
              }
            }

            PartialQueryResults::setupCannedAttributeVector(a4, v77, a4 + 25, v233);
          }

          v152 = 200;
        }

        else
        {
          if (v76 && !*(a4 + 24))
          {
            v79 = *(a4 + 12);
            if (!v79)
            {
              v80 = *(a4 + 15);
              if (v80)
              {
                SIFlattenArrayToCStringVector(v80, a4 + 12, a4 + 30, v215);
                v79 = *(a4 + 12);
                if (!v79)
                {
                  goto LABEL_176;
                }
              }

              else
              {
                v79 = 0;
              }
            }

            PartialQueryResults::setupCannedAttributeVector(a4, v79, a4 + 24, a4 + 1);
          }

          v152 = 192;
        }

        v153 = *(*(a4 + v152) + 8 * v53);
        if (v153)
        {
          v154 = (*(a2 + 16))(a2, 4, 0, 0, v53, v225);
          v155 = *(a4 + 29);
          if (*a4 == 1)
          {
            v156 = *(a4 + 13);
            if (v155 && !v156)
            {
              v157 = *(a4 + 16);
              v233[0].n128_u64[0] = 0;
              SIFlattenArrayToCStringVector(v157, a4 + 13, v233[0].n128_u64, v239);
              v156 = *(a4 + 13);
            }
          }

          else
          {
            v156 = *(a4 + 12);
            if (v155)
            {
              if (!v156)
              {
                SIFlattenArrayToCStringVector(*(a4 + 15), a4 + 12, a4 + 30, v215);
                v156 = *(a4 + 12);
                if (!v156)
                {
LABEL_176:
                  v172 = __si_assert_copy_extra_332();
                  __message_assert_336(v172, v179, v180, v181, v182, v183, v184, v185, "SISearchCtx.h");
                  goto LABEL_169;
                }
              }
            }
          }

          v153(v213, *(v156 + 8 * v53), v214, v216, v223, v53, 0, v212, a2, v154);
          (*(a2 + 16))(a2, 5, v154, 0, v53, v225);
        }
      }

      v29 = v224;
LABEL_145:
      ++v53;
      v52 = v58;
    }

    while (v53 != v29);
  }

  result = (*(a2 + 16))(a2, 3, v225, 0, 0, v208);
  v160 = *MEMORY[0x1E69E9840];
  return result;
}

void enumerate_matching_query_pieces(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v14 = (*(*a1 + 56))(a1);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___ZL31enumerate_matching_query_piecesP11SISearchCtxP14datastore_infoP6db_objPPKcbP10query_nodeU13block_pointerFvP11query_piecePK15db_obj_eval_ctxE_block_invoke;
  v23[3] = &__block_descriptor_tmp_188;
  v23[4] = a1;
  v23[5] = a3;
  v24 = a5;
  v41 = 0;
  memset(&v40[8], 0, 96);
  *v40 = 0x400000004;
  memset(&v39[1], 0, 104);
  v39[0] = 0x400000004;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 0x40000000;
  v25[2] = __db_query_enumerate_matched_qps_for_dbo_block_invoke;
  v25[3] = &unk_1E8199180;
  v25[4] = v23;
  v25[5] = a7;
  v27 = *&v40[16];
  v26 = *v40;
  v31 = *&v40[80];
  v32 = 0uLL;
  v29 = *&v40[48];
  v30 = *&v40[64];
  v28 = *&v40[32];
  v33 = a3;
  v34 = a2;
  v35 = a4;
  v36 = v14;
  v37 = v40;
  v38 = v39;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 0x40000000;
  v42[2] = __db_query_tree_apply_block_block_invoke;
  v42[3] = &unk_1E8198ED0;
  v42[4] = v25;
  db_query_tree_apply_block_with_meta(a6, v42, 0);
  v15 = *&v40[4];
  if (*&v40[4] >= 5u)
  {
    v16 = *&v40[16];
  }

  else
  {
    v16 = &v40[16];
  }

  if (v40[0])
  {
    v17 = *&v40[8];
    if (*&v40[8])
    {
      v18 = v16 + 2;
      do
      {
        if (*(v18 - 2) >= 0x41u)
        {
          free(*v18);
          *(v18 - 1) = 0;
          *v18 = 0;
        }

        v18 += 3;
        --v17;
      }

      while (v17);
      v15 = *&v40[4];
    }
  }

  if (v15 >= 5)
  {
    free(v16);
  }

  v19 = HIDWORD(v39[0]);
  if (HIDWORD(v39[0]) >= 5)
  {
    v20 = v39[2];
  }

  else
  {
    v20 = &v39[2];
  }

  if (v39[0])
  {
    v21 = LODWORD(v39[1]);
    if (LODWORD(v39[1]))
    {
      v22 = v20 + 2;
      do
      {
        if (*(v22 - 2) >= 0x41u)
        {
          free(*v22);
          *(v22 - 1) = 0;
          *v22 = 0;
        }

        v22 += 3;
        --v21;
      }

      while (v21);
      v19 = HIDWORD(v39[0]);
    }
  }

  if (v19 >= 5)
  {
    free(v20);
  }
}

_DWORD *dateScaled(uint64_t *a1, int *a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  result = db_get_field_by_id(a2, a1, *(a3 + 272), &v18, &v17);
  if (result)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(1);
    v8 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *a1;
      *buf = 134217984;
      v20 = v9;
LABEL_13:
      _os_log_impl(&dword_1C278D000, v7, v8, "No last opened date for %llx", buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (*v17 <= 0.0 || (v10 = *(a3 + 304), v10 <= 0.0))
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(1);
    v8 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v7, v8))
    {
      v15 = *a1;
      *buf = 134217984;
      v20 = v15;
      goto LABEL_13;
    }

LABEL_14:
    result = __error();
    *result = v6;
    goto LABEL_15;
  }

  if (*v17 / v10 > 1.0)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(1);
    v13 = 2 * (dword_1EBF46AD0 < 4);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *a1;
      *buf = 134217984;
      v20 = v14;
      _os_log_impl(&dword_1C278D000, v12, v13, "Clipping at 1.0 for %llx", buf, 0xCu);
    }

    result = __error();
    *result = v11;
  }

LABEL_15:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 PartialQueryResults::messageAttrIds(__n128 *this, __n128 *a2, int *a3)
{
  if ((a2[5].n128_u8[8] & 1) == 0)
  {
    a2[2].n128_u64[0] = db_copy_field_ids_with_buffer(a3, "kMDItemAuthorEmailAddresses", 0, 0);
    a2[2].n128_u64[1] = db_copy_field_ids_with_buffer(a3, "kMDItemAuthors", 0, 0);
    a2[3].n128_u64[0] = db_copy_field_ids_with_buffer(a3, "kMDItemRecipientEmailAddresses", 0, 0);
    a2[3].n128_u64[1] = db_copy_field_ids_with_buffer(a3, "kMDItemRecipients", 0, 0);
    a2[4].n128_u64[0] = db_copy_field_ids_with_buffer(a3, "kMDItemSubject", 0, 0);
    a2[4].n128_u64[1] = db_copy_field_ids_with_buffer(a3, "kMDItemContentCreationDate", 0, 0);
    a2[5].n128_u64[0] = db_copy_field_ids_with_buffer(a3, "kMDItemContentModificationDate", 0, 0);
    a2[5].n128_u8[8] = 1;
  }

  v6 = a2[3];
  *this = a2[2];
  this[1] = v6;
  result = a2[4];
  v8 = a2[5];
  this[2] = result;
  this[3] = v8;
  return result;
}

double si_fancyMailRelevance(uint64_t a1, int **a2)
{
  v2 = *(a1 + 12);
  if (v2 < 0x31)
  {
    v3 = 0;
    v38 = 0.0;
    return dbl_1C2BFF5A0[(*(a1 + 40) >> 15) & 1 | v3] + v38;
  }

  v3 = 0;
  v4 = a1 + v2;
  v5 = a1 + 48;
  v6 = 0.0;
  do
  {
    v7 = *(v5 + 12);
    if (*(v5 + 12) && (*(v5 + 2) & 0x100) == 0)
    {
      v8 = *(v5 + 4);
      v9 = *a2;
      if (*a2)
      {
        v10 = *v9;
        if (*v9)
        {
          v11 = v9 + 1;
          while (v10 != v8)
          {
            v12 = *v11++;
            v10 = v12;
            if (!v12)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_41;
        }
      }

LABEL_10:
      v13 = a2[1];
      if (v13)
      {
        v14 = *v13;
        if (*v13)
        {
          v15 = v13 + 1;
          while (v14 != v8)
          {
            v16 = *v15++;
            v14 = v16;
            if (!v16)
            {
              goto LABEL_15;
            }
          }

LABEL_41:
          v3 |= 8u;
          v6 = v6 + (((v7 + -1.0) * 0.0625) * 0.05);
          goto LABEL_48;
        }
      }

LABEL_15:
      v17 = a2[2];
      if (v17)
      {
        v18 = *v17;
        if (*v17)
        {
          v19 = v17 + 1;
          while (v18 != v8)
          {
            v20 = *v19++;
            v18 = v20;
            if (!v20)
            {
              goto LABEL_20;
            }
          }

          goto LABEL_42;
        }
      }

LABEL_20:
      v21 = a2[3];
      if (v21)
      {
        v22 = *v21;
        if (*v21)
        {
          v23 = v21 + 1;
          while (v22 != v8)
          {
            v24 = *v23++;
            v22 = v24;
            if (!v24)
            {
              goto LABEL_25;
            }
          }

LABEL_42:
          v3 |= 4u;
          v6 = v6 + (((v7 + -1.0) * 0.0625) * 0.003125);
          goto LABEL_48;
        }
      }

LABEL_25:
      v25 = a2[4];
      if (v25 && (v26 = *v25) != 0)
      {
        v27 = v25 + 1;
        while (v26 != v8)
        {
          v28 = *v27++;
          v26 = v28;
          if (!v28)
          {
            goto LABEL_30;
          }
        }

        if (v7 == 1)
        {
          v37 = 2;
        }

        else
        {
          v37 = 6;
        }

        v3 |= v37;
        v6 = v6 + (((v7 + -1.0) * 0.0625) * 0.00019531);
      }

      else
      {
LABEL_30:
        v29 = a2[5];
        if (v29)
        {
          v30 = *v29;
          if (*v29)
          {
            v31 = v29 + 1;
            while (v30 != v8)
            {
              v32 = *v31++;
              v30 = v32;
              if (!v32)
              {
                goto LABEL_35;
              }
            }

            goto LABEL_43;
          }
        }

LABEL_35:
        v33 = a2[6];
        if (v33)
        {
          v34 = *v33;
          if (*v33)
          {
            v35 = v33 + 1;
            while (v34 != v8)
            {
              v36 = *v35++;
              v34 = v36;
              if (!v36)
              {
                goto LABEL_48;
              }
            }

LABEL_43:
            v3 |= 1u;
          }
        }
      }
    }

LABEL_48:
    v5 += *(v5 + 8) + 13;
  }

  while (v5 < v4);
  v38 = v6;
  return dbl_1C2BFF5A0[(*(a1 + 40) >> 15) & 1 | v3] + v38;
}

uint64_t __writeDBOToPlistBytes_block_invoke_67(uint64_t result, void *a2)
{
  if (a2)
  {
    if (*a2)
    {
      v2 = *(result + 32);
      return _MDPlistBytesAddInternedCString();
    }
  }

  return result;
}

uint64_t __writeDBOToPlistBytes_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a2 + 80) == *(result + 32))
    {
      v5[5] = v3;
      v5[6] = v4;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = __writeDBOToPlistBytes_block_invoke_3;
      v5[3] = &__block_descriptor_tmp_69;
      v5[4] = *(result + 40);
      return qp_array_match_indexes(a3, a2, v5);
    }
  }

  return result;
}

uint64_t ___ZL31enumerate_matching_query_piecesP11SISearchCtxP14datastore_infoP6db_objPPKcbP10query_nodeU13block_pointerFvP11query_piecePK15db_obj_eval_ctxE_block_invoke(uint64_t a1, const void *a2)
{
  v3 = *(*(a1 + 32) + 216);
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, a2);
  }

  else
  {
    Value = 0;
  }

  result = ContentIndexDocSetContainsDocId(Value, *(*(a1 + 40) + 32));
  if (result)
  {
    if ((*(a1 + 48) & 1) != 0 || ContentIndexDocSetNeedsPostcheckForDocId(Value, *(*(a1 + 40) + 32)))
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void eventParseField(unsigned int *key, int a2, uint64_t a3, uint64_t a4, int *a5, char **a6, CFMutableDictionaryRef *a7, int a8)
{
  v72 = *MEMORY[0x1E69E9840];
  v13 = key[2];
  v14 = *(key + 1);
  if (a2 == 14)
  {
    if ((~v14 & 0x5020) == 0 && _os_feature_enabled_impl())
    {
      v15 = *(key + 1);
      if ((v15 & 8) == 0)
      {
        if ((v15 & 0x10) != 0)
        {
          v16 = (*(a3 + 16))(a3, 6, 0, 0, a8, a4);
          if (v13 >= 8)
          {
            v17 = (key + 13);
            v18 = v13 >> 3;
            do
            {
              v19 = *v17++;
              LODWORD(v68[0]) = 0;
              LODWORD(v66) = 0;
              vector_for_id_locked = db_get_vector_for_id_locked(a5, v19, v68, &v66);
              if (vector_for_id_locked)
              {
                emitVector(a3, a4, BYTE1(v66), v66, WORD1(v66), vector_for_id_locked, LODWORD(v68[0]), a8);
              }

              --v18;
            }

            while (v18);
          }

          v21 = *(a3 + 16);
          v22 = *MEMORY[0x1E69E9840];

          v21(a3, 7, v16, 0, a8, a4);
          return;
        }

LABEL_29:
        v31 = *MEMORY[0x1E69E9840];
        return;
      }

      LODWORD(v68[0]) = 0;
      LODWORD(v66) = 0;
      if ((v15 & 0x10) != 0)
      {
        if (v13 == 4)
        {
          v45 = *(key + 13);
        }

        else
        {
          if (v13 != 8)
          {
            goto LABEL_29;
          }

          v45 = *(key + 13);
        }

        v40 = db_get_vector_for_id_locked(a5, v45, v68, &v66);
      }

      else
      {
        v40 = key + 15;
        LOWORD(v66) = *(key + 13);
        LODWORD(v68[0]) = key[2] - 2;
      }

      if (v40)
      {
        if (LODWORD(v68[0]) >= 3)
        {
          v51 = v66;
          if (v66 <= 2uLL)
          {
            v52 = BYTE1(v66);
            if (BYTE1(v66) <= 2u)
            {
              v53 = (vector_dimension_vec_sizes_15424[BYTE1(v66)] * vector_size_elem_sizes_15423[v66]);
              if (v53 <= v13)
              {
                v54 = WORD1(v66);
                if ((*(key + 1) & 0x20) != 0)
                {
                  v55 = &v40[v13];
                  v63 = a8;
                  v56 = (*(a3 + 16))(a3, 6, 0, 0);
                  v57 = 0;
                  do
                  {
                    v58 = v57 + 1;
                    emitVector(a3, v56, v52, v51, v54, v40, v53, v57);
                    v40 += v53;
                    v57 = v58;
                  }

                  while (&v40[v53] <= v55);
                  (*(a3 + 16))(a3, 7, v56, 0, v63, a4);
                }

                else
                {
                  emitVector(a3, a4, BYTE1(v66), v66, WORD1(v66), v40, (vector_dimension_vec_sizes_15424[BYTE1(v66)] * vector_size_elem_sizes_15423[v66]), a8);
                }
              }
            }
          }
        }
      }

      goto LABEL_29;
    }

    v24 = *(a3 + 16);
    v25 = *MEMORY[0x1E69E9840];

    v24(a3, 33, key + 13, v13, a8, a4);
  }

  else
  {
    if ((v14 & 0x80) != 0)
    {
      v68[0] = key + 13;
      v66 = 0;
      if (a7 && (v14 & 0x10) != 0 && (v29 = CFDictionaryGetValue(*a7, key)) != 0)
      {
        v30 = v29;
        value[0] = 0;
        if (CFDictionaryGetValueIfPresent(a7[1], key, value))
        {
          (*(a3 + 16))(a3, 29, v30, value[0], a8, a4);
        }

        else
        {
          (*(a3 + 16))(a3, 28, v30, 0, a8, a4);
        }
      }

      else if (db_get_localized_string(a5, key, a6, v68, &v66, 1))
      {
        (*(a3 + 16))(a3, 28, "", 0, a8, a4);
      }

      else if ((*(key + 1) & 0x10) != 0)
      {
        v43 = (v66 - v68[0]);
        if (v66)
        {
          v44 = 29;
        }

        else
        {
          v44 = 28;
        }

        (*(a3 + 16))(a3, v44);
        if (a7)
        {
          v50 = malloc_type_zone_malloc(queryZone, key[2] + 13, 0xA4971684uLL);
          if (!v50)
          {
            _log_fault_for_malloc_failure();
          }

          memcpy(v50, key, key[2] + 13);
          CFDictionarySetValue(*a7, v50, v68[0]);
          if (v66)
          {
            CFDictionarySetValue(a7[1], v50, v43);
          }
        }
      }

      else if (v66)
      {
        (*(a3 + 16))(a3, 29, v68[0], v66 - v68[0], a8, a4);
      }

      else
      {
        (*(a3 + 16))(a3, 28, v68[0], 0, a8, a4);
      }

      goto LABEL_29;
    }

    if ((v14 & 0x20) != 0)
    {
      if (a2 == 11)
      {
        if ((v14 & 0x8000) != 0 && v13 != 4)
        {
          v59 = __si_assert_copy_extra_332();
          v60 = v59;
          v61 = "";
          if (v59)
          {
            v61 = v59;
          }

          __message_assert("%s:%u: failed assertion '%s' %s ", "SISearchCtx_METADATA.cpp", 6416, "field->data_len==sizeof(uint32_t)", v61);
          free(v60);
          if (__valid_fs(-1))
          {
            v62 = 2989;
          }

          else
          {
            v62 = 3072;
          }

          *v62 = -559038737;
          abort();
        }

        v33 = (key + 13);
        v66 = key + 13;
        if ((~v14 & 0x8010) != 0)
        {
          v46 = (*(a3 + 16))(a3, 6, 0, 0, a8, a4);
          if (v13)
          {
            v47 = 0;
            v48 = v33 + v13;
            do
            {
              v49 = v47 + 1;
              addString(a3, v46, v47, a5, v14, &v66);
              v47 = v49;
            }

            while (v66 < v48);
          }

          (*(a3 + 16))(a3, 7, v46, 0, a8, a4);
        }

        else
        {
          v34 = *v33;
          if (!(*(a3 + 16))(a3, 32, 0, v34, a8, a4))
          {
            v70 = 0u;
            v71 = 0u;
            *v68 = 0u;
            v69 = 0u;
            v65 = 64;
            v35 = copyDataForUniquedValue(a5, v34, v68, &v65);
            v66 = v35;
            if (v35)
            {
              v64 = v35;
              v36 = (*(a3 + 16))(a3, 8, 0, 0, a8, a4);
              if (v65)
              {
                v37 = 0;
                v38 = v64 + v65;
                do
                {
                  v39 = v37 + 1;
                  addString(a3, v36, v37, a5, v14, &v66);
                  v37 = v39;
                }

                while (v66 < v38);
              }

              (*(a3 + 16))(a3, 9, v36, v34, a8, a4);
              if (v64 != v68)
              {
                free(v64);
              }
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
            {
              LODWORD(value[0]) = 67109120;
              HIDWORD(value[0]) = v34;
              _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "No data for uniqued array %u", value, 8u);
            }
          }
        }

        goto LABEL_29;
      }

      v41 = *MEMORY[0x1E69E9840];
      v42 = v13 / kSDBTypeSizes[a2];

      addScalarArray(a3, a4, a8, a2, v14, key + 13, v42);
    }

    else
    {
      v23 = *MEMORY[0x1E69E9840];

      addValue(a3, a4, a8, a5, a2, v14, key + 13);
    }
  }
}