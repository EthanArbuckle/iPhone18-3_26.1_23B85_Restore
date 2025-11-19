void ML3MigrationRemoveInvalidContainerItems(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEB38];
  v5 = a1;
  v6 = [v4 dictionary];
  v7 = [v3 executeQuery:v5];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __ML3MigrationRemoveInvalidContainerItems_block_invoke;
  v12[3] = &unk_278766118;
  v13 = v6;
  v8 = v6;
  [v7 enumerateRowsWithBlock:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __ML3MigrationRemoveInvalidContainerItems_block_invoke_2;
  v10[3] = &unk_278763250;
  v11 = v3;
  v9 = v3;
  [v8 enumerateKeysAndObjectsUsingBlock:v10];
}

void __ML3MigrationRemoveInvalidContainerItems_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 numberForColumnIndex:0];
  v4 = [v3 int64ForColumnIndex:1];

  v5 = [*(a1 + 32) objectForKey:v7];
  if (v5)
  {
    v6 = v5;
    [v5 addIndex:v4];
  }

  else
  {
    v6 = [MEMORY[0x277CCAB58] indexSetWithIndex:v4];
    [*(a1 + 32) setObject:v6 forKey:v7];
  }
}

void __ML3MigrationRemoveInvalidContainerItems_block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __ML3MigrationRemoveInvalidContainerItems_block_invoke_3;
  v17 = &unk_278763228;
  v20 = v24;
  v18 = *(a1 + 32);
  v9 = v7;
  v19 = v9;
  v21 = v23;
  v22 = a4;
  [v8 enumerateRangesUsingBlock:&v14];
  v10 = *(a1 + 32);
  v26[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:{1, v14, v15, v16, v17}];
  [v10 executeUpdate:@"REPLACE INTO entity_revision (entity_pid withParameters:deleted error:{class, revision_type) VALUES (?, 0, 1, 0)", v11, 0}];

  v12 = *(a1 + 32);
  v25 = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
  [v12 executeUpdate:@"DELETE FROM entity_revision WHERE entity_pid = ? AND class = 1 AND revision_type > 0" withParameters:v13 error:0];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);
}

void sub_22D49C3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void __ML3MigrationRemoveInvalidContainerItems_block_invoke_3(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v30[3] = *MEMORY[0x277D85DE8];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 24);
  if (v7)
  {
    v8 = a2 > v7;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void ML3MigrationRemoveInvalidContainerItems(NSString *__strong, ML3DatabaseConnection *__strong)_block_invoke_3"}];
    [v23 handleFailureInFunction:v24 file:@"ML3MigrationUtilities.m" lineNumber:593 description:@"[NSIndexSet enumerateRangesUsingBlock:] is not enumerating ranges in order!"];

    v6 = *(*(a1 + 48) + 8);
  }

  *(v6 + 24) = a2;
  v9 = *(a1 + 32);
  v30[0] = *(a1 + 40);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2 - *(*(*(a1 + 56) + 8) + 24)];
  v30[1] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2 + a3 + ~*(*(*(a1 + 56) + 8) + 24)];
  v30[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  v26 = 0;
  v13 = [v9 executeUpdate:@"DELETE FROM container_item WHERE container_pid = ? AND position BETWEEN ? AND ?" withParameters:v12 error:&v26];
  v14 = v26;

  if (v13)
  {
    v15 = *(a1 + 32);
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v17 = *(a1 + 40);
    v27[0] = v16;
    v27[1] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2 - *(*(*(a1 + 56) + 8) + 24)];
    v27[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:3];
    v25 = 0;
    LOBYTE(v15) = [v15 executeUpdate:@"UPDATE container_item SET position = (position - ?) WHERE container_pid = ? AND position >= ?" withParameters:v19 error:&v25];
    v20 = v25;

    if ((v15 & 1) == 0)
    {
      v21 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v29 = v20;
        _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_ERROR, "Failed to update container_item position(s) with error: %{public}@", buf, 0xCu);
      }

      **(a1 + 64) = 1;
    }
  }

  else
  {
    v22 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v14;
      _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_ERROR, "Failed to delete existing container_item row(s) with error: %{public}@", buf, 0xCu);
    }

    **(a1 + 64) = 1;
  }

  *(*(*(a1 + 56) + 8) + 24) += a3;
}

id ML3MigrationStoreBookeeperDatabaseFilePathAsOf1450020()
{
  v0 = +[ML3MusicLibrary mediaFolderPath];
  v1 = [v0 msv_stringByResolvingRealPath];

  v2 = [v1 stringByAppendingPathComponent:@"iTunes_Control/iTunes/UbiquitousMetadata.sqlitedb"];

  return v2;
}

id ML3MigrationStoreBookeeperDatabaseFilePathsAsOf1450020()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = ML3MigrationStoreBookeeperDatabaseFilePathAsOf1450020();
  v1 = [v0 stringByAppendingString:{@"-shm", v0}];
  v5[1] = v1;
  v2 = [v0 stringByAppendingString:@"-wal"];
  v5[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];

  return v3;
}

id ML3ContainerAuthorDatabaseImportDataSource::generateVTableInsertionFromClause(ML3ContainerAuthorDatabaseImportDataSource *this, NSString *a2, NSString *a3)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LEFT OUTER JOIN container_author ON %@.ROWID = container_author.container_author_pid", a3, a3];

  return v3;
}

void ML3ContainerAuthorDatabaseImportDataSource::~ML3ContainerAuthorDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

void ML3LyricsDatabaseImportDataSource::~ML3LyricsDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

uint64_t MIPSmartPlaylistInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v82 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v82 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v82 & 0x7F) << v5;
        if ((v82 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 5)
      {
        break;
      }

      if (v13 <= 8)
      {
        switch(v13)
        {
          case 6:
            v66 = 0;
            v67 = 0;
            v68 = 0;
            *(a1 + 40) |= 4u;
            while (1)
            {
              v91 = 0;
              v69 = [a2 position] + 1;
              if (v69 >= [a2 position] && (v70 = objc_msgSend(a2, "position") + 1, v70 <= objc_msgSend(a2, "length")))
              {
                v71 = [a2 data];
                [v71 getBytes:&v91 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v68 |= (v91 & 0x7F) << v66;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              v11 = v67++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_149;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v68;
            }

LABEL_149:
            v80 = 16;
            break;
          case 7:
            v52 = 0;
            v53 = 0;
            v54 = 0;
            *(a1 + 40) |= 8u;
            while (1)
            {
              v90 = 0;
              v55 = [a2 position] + 1;
              if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
              {
                v57 = [a2 data];
                [v57 getBytes:&v90 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v54 |= (v90 & 0x7F) << v52;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              v11 = v53++ >= 9;
              if (v11)
              {
                v27 = 0;
                goto LABEL_135;
              }
            }

            if ([a2 hasError])
            {
              v27 = 0;
            }

            else
            {
              v27 = v54;
            }

LABEL_135:
            v80 = 20;
            break;
          case 8:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 40) |= 0x20u;
            while (1)
            {
              v85 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v85 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v85 & 0x7F) << v14;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_143;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_143:
            v79 = 33;
            goto LABEL_153;
          default:
            goto LABEL_122;
        }

LABEL_150:
        *(a1 + v80) = v27;
        goto LABEL_154;
      }

      if (v13 == 9)
      {
        v72 = 0;
        v73 = 0;
        v74 = 0;
        *(a1 + 40) |= 0x200u;
        while (1)
        {
          v84 = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v84 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v84 & 0x7F) << v72;
          if ((v84 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_152;
          }
        }

        v20 = (v74 != 0) & ~[a2 hasError];
LABEL_152:
        v79 = 37;
LABEL_153:
        *(a1 + v79) = v20;
        goto LABEL_154;
      }

      if (v13 != 10)
      {
        if (v13 != 11)
        {
          goto LABEL_122;
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 40) |= 0x80u;
        while (1)
        {
          v83 = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v83 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v83 & 0x7F) << v28;
          if ((v83 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_145;
          }
        }

        v20 = (v30 != 0) & ~[a2 hasError];
LABEL_145:
        v79 = 35;
        goto LABEL_153;
      }

      v58 = PBReaderReadData();
      v59 = *(a1 + 24);
      *(a1 + 24) = v58;

LABEL_154:
      v81 = [a2 position];
      if (v81 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 40) |= 0x10u;
        while (1)
        {
          v88 = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v88 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v88 & 0x7F) << v40;
          if ((v88 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_125;
          }
        }

        v20 = (v42 != 0) & ~[a2 hasError];
LABEL_125:
        v79 = 32;
      }

      else
      {
        if (v13 != 2)
        {
LABEL_122:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_154;
        }

        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 40) |= 0x40u;
        while (1)
        {
          v87 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v87 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v87 & 0x7F) << v34;
          if ((v87 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_127;
          }
        }

        v20 = (v36 != 0) & ~[a2 hasError];
LABEL_127:
        v79 = 34;
      }

      goto LABEL_153;
    }

    switch(v13)
    {
      case 3:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        *(a1 + 40) |= 0x100u;
        while (1)
        {
          v86 = 0;
          v63 = [a2 position] + 1;
          if (v63 >= [a2 position] && (v64 = objc_msgSend(a2, "position") + 1, v64 <= objc_msgSend(a2, "length")))
          {
            v65 = [a2 data];
            [v65 getBytes:&v86 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v62 |= (v86 & 0x7F) << v60;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v60 += 7;
          v11 = v61++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_141;
          }
        }

        v20 = (v62 != 0) & ~[a2 hasError];
LABEL_141:
        v79 = 36;
        goto LABEL_153;
      case 4:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v89 = 0;
          v49 = [a2 position] + 1;
          if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
          {
            v51 = [a2 data];
            [v51 getBytes:&v89 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v48 |= (v89 & 0x7F) << v46;
          if ((v89 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v11 = v47++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_131;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v48;
        }

LABEL_131:
        v80 = 12;
        break;
      case 5:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          v92 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v92 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v92 & 0x7F) << v21;
          if ((v92 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_139;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_139:
        v80 = 8;
        break;
      default:
        goto LABEL_122;
    }

    goto LABEL_150;
  }

  return [a2 hasError] ^ 1;
}

void sub_22D4A03D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A0844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 184), 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12868(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D4A0BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A0D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A0F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A1400(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x22D4A138CLL);
  }

  _Unwind_Resume(exception_object);
}

id trackWithGlobalID(uint64_t a1, int a2)
{
  v4 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  v5 = [v4 musicLibrary];

  if (a2)
  {
    v6 = [ML3ComparisonPredicate predicateWithProperty:@"item_stats.hidden" equalToInteger:0];
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x277CBEA60];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
  v9 = [ML3ComparisonPredicate predicateWithProperty:@"item_extra.genius_id" equalToValue:v8];
  v10 = [v7 arrayWithObjects:{v9, v6, 0}];
  v11 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v10];

  v12 = [(ML3Entity *)ML3Track anyInLibrary:v5 predicate:v11 options:7];

  return v12;
}

id MLCreateError_TooFewItemsReason(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 initWithObjectsAndKeys:{v3, @"count", 0}];

  v5 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MLMusicLibraryErrorDomain" code:2 userInfo:v4];

  return v5;
}

void sub_22D4A1798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A1B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D4A1FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22D4A29EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

id MLCreateError_UnknownReason()
{
  v0 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"MLMusicLibraryErrorDomain" code:0 userInfo:0];

  return v0;
}

void sub_22D4A35C4(_Unwind_Exception *a1)
{
  MEMORY[0x2318CD250](v1, 0x10A1C4088054FEALL);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 72) = v5;
    operator delete(v5);
  }

  MEMORY[0x2318CD250](v2, 0x10A0C4091C5D4D3);
  _Unwind_Resume(a1);
}

uint64_t itdb_playlist_random(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x7FFFFFFF)
  {
    v2 = 0x7FFFFFFF;
  }

  else
  {
    v2 = a2;
  }

  return ((v2 - 1) * arc4random() / 2147483650.0);
}

uint64_t itdb_get_current_time()
{
  Current = CFAbsoluteTimeGetCurrent();

  return ML3UInt32MacTimeFromCFAbsoluteTime(Current);
}

uint64_t itdb_get_skip_stats(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = trackWithGlobalID(a2, 0);
  v7 = [MEMORY[0x277CBEAA8] distantPast];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  if (v6)
  {
    v10 = [v6 valueForProperty:@"item_stats.date_skipped"];
    [v10 doubleValue];
    v9 = v11;

    v12 = [v6 valueForProperty:@"item_stats.skip_count_user"];
    v13 = [v12 unsignedIntValue];

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (a3)
  {
LABEL_3:
    *a3 = ML3UInt32MacTimeFromCFAbsoluteTime(v9);
  }

LABEL_4:
  if (a4)
  {
    *a4 = v13;
  }

  return 0;
}

uint64_t itdb_get_play_stats(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v6 = trackWithGlobalID(a2, 0);
  v7 = [MEMORY[0x277CBEAA8] distantPast];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  if (v6)
  {
    v10 = [v6 valueForProperty:@"item_stats.date_played"];
    [v10 doubleValue];
    v9 = v11;

    v12 = [v6 valueForProperty:@"item_stats.play_count_user"];
    v13 = [v12 unsignedIntValue];

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (a3)
  {
LABEL_3:
    *a3 = ML3UInt32MacTimeFromCFAbsoluteTime(v9);
  }

LABEL_4:
  if (a4)
  {
    *a4 = v13;
  }

  return 0;
}

uint64_t itdb_copy_similarities_for_global_id(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = [a1 _sharedBlobMutableData];
  v6 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  LODWORD(a2) = [v6 getGeniusSimilaritiesDataAndBytesForGlobalID:a2 intoData:v5];

  if (a2)
  {
    v7 = [v5 bytes];
    v8 = [v5 length];
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v7 = 0;
  if (a3)
  {
LABEL_5:
    *a3 = v8;
  }

LABEL_6:

  return v7;
}

uint64_t itdb_check_for_global_id(void *a1, uint64_t a2)
{
  v3 = [a1 _sharedBlobMutableData];
  v4 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  v5 = [v4 getGeniusMetadataDataAndBytesForGlobalID:a2 intoData:v3];

  if (v5)
  {
    v5 = [v3 length] != 0;
  }

  return v5;
}

uint64_t itdb_copy_metadata_for_global_id(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = [a1 _sharedBlobMutableData];
  v6 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  LODWORD(a2) = [v6 getGeniusMetadataDataAndBytesForGlobalID:a2 intoData:v5];

  if (a2)
  {
    v7 = [v5 bytes];
    v8 = [v5 length];
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = 0;
  v7 = 0;
  if (a3)
  {
LABEL_5:
    *a3 = v8;
  }

LABEL_6:

  return v7;
}

uint64_t itdb_copy_configuration(void *a1, uint64_t *a2, _DWORD *a3)
{
  v5 = [a1 _sharedBlobMutableData];
  v6 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
  v7 = [v6 getGeniusConfigrationDataAndBytesIntoData:v5];

  if (!v7)
  {
    v9 = 0;
    v8 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [v5 bytes];
  v9 = [v5 length];
  if (a2)
  {
LABEL_5:
    *a2 = v9;
  }

LABEL_6:
  if (a3)
  {
    v10 = +[MLITDBGeniusDatabase sharedGeniusDatabase];
    *a3 = [v10 geniusConfigurationVersion];
  }

  return v8;
}

void sub_22D4A3CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22D4A529C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13032(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D4A5694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A5A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A5E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A626C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A6684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A6A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A6E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4A71D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ML3ArtistDatabaseImportDataSource::~ML3ArtistDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

uint64_t MIPAudiobookReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v60) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v60 & 0x7F) << v5;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v37 = 0;
              v38 = 0;
              v39 = 0;
              *(a1 + 84) |= 0x20u;
              while (1)
              {
                LOBYTE(v60) = 0;
                v40 = [a2 position] + 1;
                if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
                {
                  v42 = [a2 data];
                  [v42 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v39 |= (v60 & 0x7F) << v37;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v37 += 7;
                v11 = v38++ >= 9;
                if (v11)
                {
                  LOBYTE(v43) = 0;
                  goto LABEL_116;
                }
              }

              v43 = (v39 != 0) & ~[a2 hasError];
LABEL_116:
              v57 = 81;
              goto LABEL_119;
            case 0xB:
              v14 = objc_alloc_init(MIPPlaybackInfo);
              objc_storeStrong((a1 + 64), v14);
              v60 = 0;
              v61 = 0;
              if (!PBReaderPlaceMark() || !MIPPlaybackInfoReadFrom(v14, a2))
              {
LABEL_127:

                return 0;
              }

              goto LABEL_100;
            case 0xC:
              v29 = PBReaderReadString();
              v30 = *(a1 + 56);
              *(a1 + 56) = v29;

              goto LABEL_125;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v31 = 0;
              v32 = 0;
              v33 = 0;
              *(a1 + 84) |= 8u;
              while (1)
              {
                LOBYTE(v60) = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v60 & 0x7F) << v31;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v11 = v32++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_114;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v33;
              }

LABEL_114:
              v56 = 76;
              goto LABEL_124;
            case 8:
              v44 = 0;
              v45 = 0;
              v46 = 0;
              *(a1 + 84) |= 0x10u;
              while (1)
              {
                LOBYTE(v60) = 0;
                v47 = [a2 position] + 1;
                if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
                {
                  v49 = [a2 data];
                  [v49 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v46 |= (v60 & 0x7F) << v44;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                v11 = v45++ >= 9;
                if (v11)
                {
                  LOBYTE(v43) = 0;
                  goto LABEL_118;
                }
              }

              v43 = (v46 != 0) & ~[a2 hasError];
LABEL_118:
              v57 = 80;
LABEL_119:
              *(a1 + v57) = v43;
              goto LABEL_125;
            case 9:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 84) |= 1u;
              while (1)
              {
                LOBYTE(v60) = 0;
                v19 = [a2 position] + 1;
                if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
                {
                  v21 = [a2 data];
                  [v21 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v18 |= (v60 & 0x7F) << v16;
                if ((v60 & 0x80) == 0)
                {
                  break;
                }

                v16 += 7;
                v11 = v17++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_106;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v18;
              }

LABEL_106:
              v56 = 24;
              goto LABEL_124;
          }
        }
      }

      else if (v13 > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = objc_alloc_init(MIPGenre);
            objc_storeStrong((a1 + 48), v14);
            v60 = 0;
            v61 = 0;
            if (!PBReaderPlaceMark() || !MIPGenreReadFrom(v14, a2))
            {
              goto LABEL_127;
            }

            goto LABEL_100;
          case 5:
            v50 = 0;
            v51 = 0;
            v52 = 0;
            *(a1 + 84) |= 2u;
            while (1)
            {
              LOBYTE(v60) = 0;
              v53 = [a2 position] + 1;
              if (v53 >= [a2 position] && (v54 = objc_msgSend(a2, "position") + 1, v54 <= objc_msgSend(a2, "length")))
              {
                v55 = [a2 data];
                [v55 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v52 |= (v60 & 0x7F) << v50;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              v11 = v51++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_123;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v52;
            }

LABEL_123:
            v56 = 40;
            goto LABEL_124;
          case 6:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 84) |= 4u;
            while (1)
            {
              LOBYTE(v60) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v60 & 0x7F) << v23;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_110;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v25;
            }

LABEL_110:
            v56 = 72;
LABEL_124:
            *(a1 + v56) = v22;
            goto LABEL_125;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(MIPAlbum);
            objc_storeStrong((a1 + 8), v14);
            v60 = 0;
            v61 = 0;
            if (!PBReaderPlaceMark() || !MIPAlbumReadFrom(v14, a2))
            {
              goto LABEL_127;
            }

            goto LABEL_100;
          case 2:
            v14 = objc_alloc_init(MIPArtist);
            v15 = 16;
LABEL_77:
            objc_storeStrong((a1 + v15), v14);
            v60 = 0;
            v61 = 0;
            if (!PBReaderPlaceMark() || !MIPArtistReadFrom(v14, a2))
            {
              goto LABEL_127;
            }

LABEL_100:
            PBReaderRecallMark();

            goto LABEL_125;
          case 3:
            v14 = objc_alloc_init(MIPArtist);
            v15 = 32;
            goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_125:
      v58 = [a2 position];
    }

    while (v58 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_22D4AB4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13433(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __MLChapterDataAddImportChapter_block_invoke(uint64_t result)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    result = ChapterData_NewChapter();
    *(*(*(v1 + 32) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __MLChapterDataAddImportChapter_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if ([(__CFString *)v7 length]|| [(__CFString *)v8 length])
  {
    if ([(__CFString *)v7 length])
    {
      v10 = v7;
    }

    else
    {
      v10 = &stru_28408B690;
    }

    v11 = v10;

    if ([(__CFString *)v8 length])
    {
      v12 = v8;
    }

    else
    {
      v12 = &stru_28408B690;
    }

    v13 = v12;

    if (([(__CFString *)v11 isEqual:v13]& 1) == 0)
    {
      (*(*(a1 + 32) + 16))();
      v9[2](v9, v11);
    }

    v14 = 1;
    v7 = v11;
    v8 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __MLChapterDataAddImportChapter_block_invoke_4(uint64_t a1, void *a2)
{
  MLChapterDataSetASCIIValue(*(a1 + 40), a2);
  v3 = [*(a1 + 32) URLTitle];
  v4 = v3;
  v5 = &stru_28408B690;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  MLChapterDataSetUTF16Value(*(a1 + 40), v6);
}

void MLChapterDataSetChapterArtworkCacheKey(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void MLChapterDataSetChapterArtworkCacheKey(ChapterDataRef, NSUInteger, NSString *__strong)"}];
    [v5 handleFailureInFunction:v6 file:@"ML3TrackImporter.m" lineNumber:568 description:@"no cache key specified"];
  }

  CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
  if (CStringPtr || (v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, v9 = 0u, v10 = 0u, *buffer = 0u, v8 = 0u, CStringPtr = buffer, CFStringGetCString(v3, buffer, 127, 0x8000100u)))
  {
    strlen(CStringPtr);
    ChapterData_SetProperty();
    ChapterData_SetProperty();
  }
}

uint64_t MIPAlbumReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v72) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v72 & 0x7F) << v5;
      if ((v72 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 104) |= 4u;
        while (1)
        {
          LOBYTE(v72) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v72 & 0x7F) << v13;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_127:
            v69 = 24;
            goto LABEL_128;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_127;
      case 2u:
        v46 = PBReaderReadString();
        v47 = 72;
        goto LABEL_92;
      case 3u:
        v46 = PBReaderReadString();
        v47 = 88;
        goto LABEL_92;
      case 4u:
        v20 = objc_alloc_init(MIPArtist);
        objc_storeStrong((a1 + 32), v20);
        v72 = 0;
        v73 = 0;
        if (PBReaderPlaceMark() && MIPArtistReadFrom(v20, a2))
        {
          goto LABEL_70;
        }

        goto LABEL_139;
      case 5u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 104) |= 0x20u;
        while (1)
        {
          LOBYTE(v72) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v72 & 0x7F) << v28;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_111;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_111:
        v68 = 84;
        goto LABEL_133;
      case 6u:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 104) |= 0x10u;
        while (1)
        {
          LOBYTE(v72) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v72 & 0x7F) << v54;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_132;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v56;
        }

LABEL_132:
        v68 = 80;
        goto LABEL_133;
      case 7u:
        v46 = PBReaderReadString();
        v47 = 40;
        goto LABEL_92;
      case 8u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 104) |= 0x40u;
        while (1)
        {
          LOBYTE(v72) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v72 & 0x7F) << v48;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_123;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v50;
        }

LABEL_123:
        v68 = 96;
        goto LABEL_133;
      case 9u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 104) |= 0x80u;
        while (1)
        {
          LOBYTE(v72) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v72 & 0x7F) << v61;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
          if (v11)
          {
            LOBYTE(v67) = 0;
            goto LABEL_137;
          }
        }

        v67 = (v63 != 0) & ~[a2 hasError];
LABEL_137:
        *(a1 + 100) = v67;
        goto LABEL_134;
      case 0xAu:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        *(a1 + 104) |= 2u;
        while (1)
        {
          LOBYTE(v72) = 0;
          v43 = [a2 position] + 1;
          if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
          {
            v45 = [a2 data];
            [v45 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v42 |= (v72 & 0x7F) << v40;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v11 = v41++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_119;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v42;
        }

LABEL_119:
        v69 = 16;
        goto LABEL_128;
      case 0xBu:
        v46 = PBReaderReadString();
        v47 = 48;
LABEL_92:
        v60 = *(a1 + v47);
        *(a1 + v47) = v46;

        goto LABEL_134;
      case 0xCu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 104) |= 8u;
        while (1)
        {
          LOBYTE(v72) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v72 & 0x7F) << v21;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_107;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_107:
        v68 = 64;
LABEL_133:
        *(a1 + v68) = v27;
        goto LABEL_134;
      case 0xDu:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 104) |= 1u;
        while (1)
        {
          LOBYTE(v72) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v72 & 0x7F) << v34;
          if ((v72 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v36;
        }

LABEL_115:
        v69 = 8;
LABEL_128:
        *(a1 + v69) = v19;
        goto LABEL_134;
      default:
        if ((v12 >> 3) != 50)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_134;
        }

        v20 = objc_alloc_init(MIPLibraryIdentifier);
        [a1 addLibraryIdentifiers:v20];
        v72 = 0;
        v73 = 0;
        if (PBReaderPlaceMark() && MIPLibraryIdentifierReadFrom(v20, a2))
        {
LABEL_70:
          PBReaderRecallMark();

LABEL_134:
          v70 = [a2 position];
          if (v70 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_139:

        return 0;
    }
  }
}

void sub_22D4AF5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4B0AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4B0E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_22D4B125C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4B1658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4B1C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 144), 8);
  _Block_object_dispose((v34 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13882(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D4B20CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4B2728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4B35A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = _ML3LogCategoryCacheManagement();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138543362;
      *(&a9 + 4) = v10;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "caught exception trying to purge storage: %{public}@", &a9, 0xCu);
    }

    v12 = [v10 userInfo];
    v13 = [v12 objectForKey:@"ML3DatabaseExceptionErrorUserInfoKey"];

    if (v13 && [v13 code] == 13)
    {
      v14 = _ML3LogCategoryCacheManagement();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(a9) = 0;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "force-deleting cached assets to free space", &a9, 2u);
      }

      [v9 _clearAllCloudAssets];
      objc_end_catch();
      JUMPOUT(0x22D4B34F4);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_22D4B38FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    v11 = _ML3LogCategoryCacheManagement();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(a9) = 138543362;
      *(&a9 + 4) = v10;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "caught exception gathering purgeable storage amount: %{public}@", &a9, 0xCu);
    }

    v12 = [v10 userInfo];
    v13 = [v12 objectForKey:@"ML3DatabaseExceptionErrorUserInfoKey"];

    if (v13 && [v13 code] == 13)
    {
      v14 = _ML3LogCategoryCacheManagement();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(a9) = 0;
        _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_DEFAULT, "force-deleting cached assets to free space", &a9, 2u);
      }

      [v9 _clearAllCloudAssets];
      objc_end_catch();
      JUMPOUT(0x22D4B3850);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

__CFString *ML3MusicLibraryDeletionUrgencyDescription(uint64_t a1)
{
  v1 = @"low";
  v2 = @"special";
  v3 = @"none";
  v4 = @"undefined";
  if (a1 != 0x7FFFFFFF)
  {
    v4 = @"low";
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    v1 = @"high";
  }

  if (a1 == 1)
  {
    v1 = @"medium";
  }

  if (a1 <= 2)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ML3ArtworkPurgeabilityLevelOriginal()
{
  if (MSVDeviceIsAppleTV())
  {
    return 2;
  }

  if (MSVDeviceIsWatch())
  {
    return 3;
  }

  return 0x7FFFFFFFLL;
}

uint64_t ML3ArtworkPurgeabilityLevelCache()
{
  if (MSVDeviceIsAppleTV())
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void ML3ItemVideoDatabaseImportDataSource::~ML3ItemVideoDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

uint64_t MIPLibraryPinReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v45 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v45 & 0x7F) << v5;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      switch(v13)
      {
        case 4:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          *(a1 + 56) |= 1u;
          while (1)
          {
            v46 = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v46 & 0x7F) << v29;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_72;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v31;
          }

LABEL_72:
          v43 = 8;
LABEL_81:
          *(a1 + v43) = v20;
          goto LABEL_82;
        case 5:
          v21 = PBReaderReadString();
          v22 = 40;
          break;
        case 6:
          v21 = PBReaderReadString();
          v22 = 48;
          break;
        default:
LABEL_52:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_82;
      }

      v42 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_82:
      v44 = [a2 position];
      if (v44 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 56) |= 4u;
        while (1)
        {
          v49 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v49 & 0x7F) << v23;
          if ((v49 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_68;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v25;
        }

LABEL_68:
        v43 = 24;
        break;
      case 2:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 56) |= 2u;
        while (1)
        {
          v48 = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v48 & 0x7F) << v36;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_80;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v38;
        }

LABEL_80:
        v43 = 16;
        break;
      case 3:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 56) |= 8u;
        while (1)
        {
          v47 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v47 & 0x7F) << v14;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_76:
        v43 = 32;
        break;
      default:
        goto LABEL_52;
    }

    goto LABEL_81;
  }

  return [a2 hasError] ^ 1;
}

uint64_t MIPMovieReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v109) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v109 & 0x7F) << v5;
      if ((v109 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(MIPArtist);
        objc_storeStrong((a1 + 40), v13);
        v109 = 0;
        v110 = 0;
        if (PBReaderPlaceMark() && MIPArtistReadFrom(v13, a2))
        {
          goto LABEL_135;
        }

        goto LABEL_209;
      case 2u:
        v73 = 0;
        v74 = 0;
        v75 = 0;
        *(a1 + 112) |= 0x200u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v76 = [a2 position] + 1;
          if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 1, v77 <= objc_msgSend(a2, "length")))
          {
            v78 = [a2 data];
            [v78 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v75 |= (v109 & 0x7F) << v73;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v73 += 7;
          v11 = v74++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_189;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v75;
        }

LABEL_189:
        v105 = 104;
        goto LABEL_206;
      case 3u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 112) |= 0x2000u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v109 & 0x7F) << v48;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            LOBYTE(v54) = 0;
            goto LABEL_177;
          }
        }

        v54 = (v50 != 0) & ~[a2 hasError];
LABEL_177:
        v106 = 111;
        goto LABEL_197;
      case 4u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 112) |= 0x800u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v109 & 0x7F) << v61;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
          if (v11)
          {
            LOBYTE(v54) = 0;
            goto LABEL_183;
          }
        }

        v54 = (v63 != 0) & ~[a2 hasError];
LABEL_183:
        v106 = 109;
        goto LABEL_197;
      case 5u:
        v34 = PBReaderReadString();
        v35 = 64;
        goto LABEL_114;
      case 6u:
        v34 = PBReaderReadString();
        v35 = 88;
        goto LABEL_114;
      case 7u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        *(a1 + 112) |= 0x400u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v109 & 0x7F) << v86;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            LOBYTE(v54) = 0;
            goto LABEL_196;
          }
        }

        v54 = (v88 != 0) & ~[a2 hasError];
LABEL_196:
        v106 = 108;
        goto LABEL_197;
      case 8u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        *(a1 + 112) |= 0x1000u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v70 = [a2 position] + 1;
          if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 1, v71 <= objc_msgSend(a2, "length")))
          {
            v72 = [a2 data];
            [v72 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v69 |= (v109 & 0x7F) << v67;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v11 = v68++ >= 9;
          if (v11)
          {
            LOBYTE(v54) = 0;
            goto LABEL_185;
          }
        }

        v54 = (v69 != 0) & ~[a2 hasError];
LABEL_185:
        v106 = 110;
LABEL_197:
        *(a1 + v106) = v54;
        goto LABEL_207;
      case 9u:
        v98 = 0;
        v99 = 0;
        v100 = 0;
        *(a1 + 112) |= 0x10u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v101 = [a2 position] + 1;
          if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 1, v102 <= objc_msgSend(a2, "length")))
          {
            v103 = [a2 data];
            [v103 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v100 |= (v109 & 0x7F) << v98;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v98 += 7;
          v11 = v99++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_205;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v100;
        }

LABEL_205:
        v105 = 48;
        goto LABEL_206;
      case 0xAu:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 112) |= 0x40u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v109 & 0x7F) << v42;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_175;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v44;
        }

LABEL_175:
        v105 = 56;
        goto LABEL_206;
      case 0xBu:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        *(a1 + 112) |= 0x20u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v95 = [a2 position] + 1;
          if (v95 >= [a2 position] && (v96 = objc_msgSend(a2, "position") + 1, v96 <= objc_msgSend(a2, "length")))
          {
            v97 = [a2 data];
            [v97 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v94 |= (v109 & 0x7F) << v92;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v11 = v93++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_201;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v94;
        }

LABEL_201:
        v105 = 52;
        goto LABEL_206;
      case 0xCu:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        *(a1 + 112) |= 0x80u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v29 |= (v109 & 0x7F) << v27;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v11 = v28++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_167;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_167:
        v105 = 96;
        goto LABEL_206;
      case 0xDu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 112) |= 0x100u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v109 & 0x7F) << v36;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v33 = 0;
            goto LABEL_171;
          }
        }

        if ([a2 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v38;
        }

LABEL_171:
        v105 = 100;
LABEL_206:
        *(a1 + v105) = v33;
        goto LABEL_207;
      case 0xEu:
        v80 = 0;
        v81 = 0;
        v82 = 0;
        *(a1 + 112) |= 1u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v83 = [a2 position] + 1;
          if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 1, v84 <= objc_msgSend(a2, "length")))
          {
            v85 = [a2 data];
            [v85 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v82 |= (v109 & 0x7F) << v80;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v80 += 7;
          v11 = v81++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_193;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v82;
        }

LABEL_193:
        v104 = 8;
        goto LABEL_194;
      case 0xFu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 112) |= 2u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v109 & 0x7F) << v21;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_163;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v23;
        }

LABEL_163:
        v104 = 16;
        goto LABEL_194;
      case 0x10u:
        v55 = 0;
        v56 = 0;
        v57 = 0;
        *(a1 + 112) |= 4u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v58 = [a2 position] + 1;
          if (v58 >= [a2 position] && (v59 = objc_msgSend(a2, "position") + 1, v59 <= objc_msgSend(a2, "length")))
          {
            v60 = [a2 data];
            [v60 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v57 |= (v109 & 0x7F) << v55;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v55 += 7;
          v11 = v56++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_181;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v57;
        }

LABEL_181:
        v104 = 24;
        goto LABEL_194;
      case 0x11u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 112) |= 8u;
        while (1)
        {
          LOBYTE(v109) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v109 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v109 & 0x7F) << v14;
          if ((v109 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_159;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_159:
        v104 = 32;
LABEL_194:
        *(a1 + v104) = v20;
        goto LABEL_207;
      case 0x12u:
        v34 = PBReaderReadData();
        v35 = 72;
LABEL_114:
        v79 = *(a1 + v35);
        *(a1 + v35) = v34;

        goto LABEL_207;
      case 0x13u:
        v13 = objc_alloc_init(MIPGenre);
        objc_storeStrong((a1 + 80), v13);
        v109 = 0;
        v110 = 0;
        if (PBReaderPlaceMark() && MIPGenreReadFrom(v13, a2))
        {
LABEL_135:
          PBReaderRecallMark();

LABEL_207:
          v107 = [a2 position];
          if (v107 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_209:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_207;
    }
  }
}

void sub_22D4BB2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 184), 8);
  _Block_object_dispose((v27 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15011(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t ML3ContainerItemImportItem::hasValue(ML3ContainerItemImportItem *this, uint64_t a2)
{
  if (a2 - 234881025) < 6 && ((0x37u >> (a2 - 1)))
  {
    return 1;
  }

  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual BOOL ML3ContainerItemImportItem::hasValue(MLImportPropertyKey) const"];
  [v4 handleFailureInFunction:v5 file:@"ML3ContainerItemImportItem.mm" lineNumber:87 description:{@"ML3ContainerItemImportItem::hasValue called with unknown property key %x", a2}];

  return 0;
}

uint64_t ML3ContainerItemImportItem::getIntegerValue(ML3ContainerItemImportItem *this, uint64_t a2)
{
  switch(a2)
  {
    case 0xE000003:
      return *(this + 10);
    case 0xE000002:
      return *(this + 9);
    case 0xE000001:
      return *(this + 8);
  }

  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual int64_t ML3ContainerItemImportItem::getIntegerValue(MLImportPropertyKey) const"];
  [v4 handleFailureInFunction:v5 file:@"ML3ContainerItemImportItem.mm" lineNumber:46 description:{@"ML3ContainerItemImportItem::getIntegerValue called with unknown property key %x", a2}];

  return 0;
}

void ML3ContainerItemImportItem::getStringValue(ML3ContainerItemImportItem *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v4 = (a3 + 16);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  switch(a2)
  {
    case 0xE000004:
      v6 = 104;
      v7 = 96;
      goto LABEL_7;
    case 0xE000005:
      v6 = 144;
      v7 = 136;
      goto LABEL_7;
    case 0xE00000A:
      v6 = 184;
      v7 = 176;
LABEL_7:
      *(a3 + 8) = *(this + v7);
      std::string::operator=(v4, (this + v6));
      return;
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"virtual ML3ImportStringValue ML3ContainerItemImportItem::getStringValue(MLImportPropertyKey) const"];
  [v9 handleFailureInFunction:v8 file:@"ML3ContainerItemImportItem.mm" lineNumber:67 description:{@"ML3ContainerItemImportItem::getIntegerValue called with unknown property key %x", a2}];
}

void sub_22D4BC5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  *v10 = v11;
  if (*(v10 + 39) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void ML3ContainerItemImportItem::~ML3ContainerItemImportItem(ML3ContainerItemImportItem *this)
{
  ML3ContainerItemImportItem::~ML3ContainerItemImportItem(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284086EF0;
  *(this + 21) = &unk_28408AC60;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  *(this + 16) = &unk_28408AC60;
  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  *(this + 11) = &unk_28408AC60;
  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(this + 24);
}

uint64_t ML3ImportValue<std::string>::ML3ImportValue(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28408AC60;
  *(a1 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v3 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v3;
  }

  return a1;
}

uint64_t ML3ContainerItemImportItem::ML3ContainerItemImportItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *a1 = &unk_284086EF0;
  *(a1 + 8) = 0;
  *(a1 + 64) = a3;
  *(a1 + 72) = a4;
  *(a1 + 80) = a5;
  ML3ImportValue<std::string>::ML3ImportValue(a1 + 88, a6);
  ML3ImportValue<std::string>::ML3ImportValue(a1 + 128, a7);
  ML3ImportValue<std::string>::ML3ImportValue(a1 + 168, a8);
  *(a1 + 8) = a2;
  return a1;
}

void sub_22D4BC85C(_Unwind_Exception *a1)
{
  *(v1 + 128) = &unk_28408AC60;
  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  *(v1 + 88) = &unk_28408AC60;
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  *v1 = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

CFAbsoluteTime ML3CFAbsoluteTimeFromUInt32MacTime(unsigned int a1)
{
  v1 = a1 - *MEMORY[0x277CBECC8];
  v2 = CFTimeZoneCopySystem();
  v3 = v1 - CFTimeZoneGetSecondsFromGMT(v2, v1);
  CFRelease(v2);
  return v3;
}

uint64_t ML3UInt32MacTimeFromCFAbsoluteTime(CFAbsoluteTime a1)
{
  v2 = (*MEMORY[0x277CBECC8] + a1);
  v3 = CFTimeZoneCopySystem();
  v4 = (CFTimeZoneGetSecondsFromGMT(v3, a1) + v2);
  CFRelease(v3);
  return v4;
}

uint64_t ML3CreateIntegerUUID()
{
  v0 = CFUUIDCreate(*MEMORY[0x277CBECE8]);
  v1 = *&CFUUIDGetUUIDBytes(v0);
  if (!v1)
  {
    v1 = ++ML3CreateIntegerUUID_sUInt64UUID;
  }

  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

UInt8 *ML3CopyUTF8StringFromCFString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = 0;
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  v7.location = 0;
  v7.length = Length;
  CFStringGetBytes(a1, v7, 0x8000100u, 0, 0, v4, MaximumSizeForEncoding, &usedBufLen);
  v4[usedBufLen] = 0;
  return v4;
}

uint64_t MSPMediaSyncErrorReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t MSPMediaSyncPackageReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 9)
      {
        if (v13 == 1)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v25 = [a2 position] + 1;
            if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
            {
              v27 = [a2 data];
              [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v24 |= (v31 & 0x7F) << v22;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v11 = v23++ >= 9;
            if (v11)
            {
              v28 = 0;
              goto LABEL_55;
            }
          }

          if ([a2 hasError])
          {
            v28 = 0;
          }

          else
          {
            v28 = v24;
          }

LABEL_55:
          *(a1 + 32) = v28;
          goto LABEL_58;
        }

        if (v13 == 2)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            LOBYTE(v31) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v31 & 0x7F) << v15;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_57;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_57:
          *(a1 + 36) = v21;
          goto LABEL_58;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xA:
            v14 = objc_alloc_init(MSPMediaSyncHeader);
            objc_storeStrong((a1 + 16), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !MSPMediaSyncHeaderReadFrom(v14, a2))
            {
LABEL_60:

              return 0;
            }

            goto LABEL_40;
          case 0xB:
            v14 = objc_alloc_init(MSPMediaSyncOperation);
            objc_storeStrong((a1 + 24), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !MSPMediaSyncOperationReadFrom(v14, a2))
            {
              goto LABEL_60;
            }

            goto LABEL_40;
          case 0xD:
            v14 = objc_alloc_init(MSPMediaSyncError);
            objc_storeStrong((a1 + 8), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !MSPMediaSyncErrorReadFrom(v14, a2))
            {
              goto LABEL_60;
            }

LABEL_40:
            PBReaderRecallMark();

            goto LABEL_58;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_58:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id ML3ContainerItemPersonDatabaseImportDataSource::generateVTableInsertionFromClause(ML3ContainerItemPersonDatabaseImportDataSource *this, NSString *a2, NSString *a3)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LEFT OUTER JOIN container_item_person ON %@.ROWID = container_item_person.container_item_person_pid", a3, a3];

  return v3;
}

void ML3ContainerItemPersonDatabaseImportDataSource::~ML3ContainerItemPersonDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

uint64_t ML3ContainerDatabaseImportDataSource::hasValueForKey(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (a3 - 184549380);
  if (v4 > 0x3B)
  {
    goto LABEL_15;
  }

  if (((1 << (a3 - 4)) & 0x800001000000003) == 0)
  {
    if (v4 == 5)
    {
      v5 = a2[1];
      v13[0] = *a2;
      v13[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      hasValueForKey = ML3DatabaseImportDataSource::hasValueForKey(a1, v13, 184549384);
      goto LABEL_21;
    }

    if (v4 == 54)
    {
      if (*(*a2 + 16) == 1)
      {
        v5 = a2[1];
        v18[0] = *a2;
        v18[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (ML3DatabaseImportDataSource::hasValueForKey(a1, v18, 184549434))
        {
          v8 = 1;
        }

        else
        {
          v10 = a2[1];
          v16 = *a2;
          v17 = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*a1 + 120))(a1, &v16, 184549395))
          {
            v11 = a2[1];
            v14 = *a2;
            v15 = v11;
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v8 = (*(*a1 + 120))(a1, &v14, 184549379);
            if (v15)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v15);
            }
          }

          else
          {
            v8 = 0;
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }

        goto LABEL_22;
      }

      return 1;
    }

LABEL_15:
    v5 = a2[1];
    v12[0] = *a2;
    v12[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    hasValueForKey = ML3DatabaseImportDataSource::hasValueForKey(a1, v12, a3);
    goto LABEL_21;
  }

  if (*(*a2 + 16) != 1)
  {
    return 1;
  }

  v5 = a2[1];
  v19[0] = *a2;
  v19[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  hasValueForKey = ML3DatabaseImportDataSource::hasValueForKey(a1, v19, a3);
LABEL_21:
  v8 = hasValueForKey;
LABEL_22:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v8;
}

void sub_22D4BEFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(exception_object);
}

void ML3ContainerDatabaseImportDataSource::stringValueForKey(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v18 = &unk_28408AC60;
  v19 = 0;
  memset(&v20, 0, sizeof(v20));
  if (a3 == 184549439)
  {
    v7 = *a2;
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v7 + 24))(v7, 184549439);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    if ((*(a4 + 8) & 1) == 0 && (*(v7 + 16) & 1) == 0)
    {
      v8 = *(v7 + 8);
      v9 = *(*(a1 + 24) + 8);
      v10 = [ML3Container nextFilepathForPlaylistType:2 withPersistentID:v8 inLibrary:v9];

      if (v10)
      {
        v11 = [v10 UTF8String];
        v12 = strlen(v11);
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v13 = v12;
        if (v12 >= 0x17)
        {
          operator new();
        }

        *(&__p.__r_.__value_.__s + 23) = v12;
        if (v12)
        {
          memmove(&__p, v11, v12);
        }

        __p.__r_.__value_.__s.__data_[v13] = 0;
        std::string::operator=((a4 + 16), &__p);
        *(a4 + 8) = 1;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v14 + 24))(&__p);
    v19 = __p.__r_.__value_.__s.__data_[8];
    std::string::operator=(&v20, &__p.__r_.__value_.__r.__words[2]);
    __p.__r_.__value_.__r.__words[0] = &unk_28408AC60;
    if (v17 < 0)
    {
      operator delete(__p.__r_.__value_.__r.__words[2]);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    *a4 = &unk_28408AC60;
    *(a4 + 8) = v19;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external((a4 + 16), v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      *(a4 + 16) = v20;
    }
  }

  v18 = &unk_28408AC60;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_22D4BF304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  *v27 = &unk_28408AC60;
  if (*(v27 + 39) < 0)
  {
    operator delete(*(v27 + 16));
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void ML3ContainerDatabaseImportDataSource::dataValueForKey(uint64_t *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 48))(&v6);
  v5 = v6;
  v6 = 0uLL;
  *a2 = v5;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_22D4BF460(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ML3ContainerDatabaseImportDataSource::integerValueForKey(void *a1, void *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a3 <= 184549391)
  {
    if (a3 != 184549381)
    {
      if (a3 == 184549385)
      {
        return a1[9];
      }

      goto LABEL_58;
    }

    goto LABEL_9;
  }

  if (a3 != 184549392)
  {
    if (a3 == 184549434)
    {
      v22 = *a2;
      v23 = a2[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v5 = (*(*v22 + 32))(v22, 184549434);
      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (v5)
      {
        return v5;
      }

      if (*(*a2 + 16) == 1)
      {
        v24 = a2[1];
        v44 = *a2;
        v45 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*a1 + 120))(a1, &v44, 184549395))
        {
          v25 = a2[1];
          v42 = *a2;
          v43 = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*a1 + 120))(a1, &v42, 184549379))
          {
            v26 = *(*a2 + 18);
          }

          else
          {
            v26 = 0;
          }

          if (v43)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v43);
          }
        }

        else
        {
          v26 = 0;
        }

        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((*(*a2 + 18) & 1) == 0)
      {
        return 0;
      }

      v29 = a2[1];
      v40 = *a2;
      v41 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = (*(*a1 + 80))(a1, &v40, 184549395);
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      v31 = a2[1];
      v38 = *a2;
      v39 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32 = (*(*a1 + 80))(a1, &v38, 184549379);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      return v32 != 32 && v30 != 0 && (v32 - 21) < 0xFFFFFFFFFFFFFFFELL;
    }

    if (a3 != 184549416)
    {
LABEL_58:
      v27 = *a2;
      v9 = a2[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = (*(*v27 + 32))(v27, a3);
LABEL_61:
      v5 = v10;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      return v5;
    }

LABEL_9:
    v6 = *a2;
    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = (*(*v6 + 32))(v6, a3);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v5)
    {
      return v5;
    }

    if ((*(*a2 + 16) & 1) == 0 && !(*(**a2 + 32))(*a2, 184549430))
    {
      v8 = *a2;
      v9 = a2[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = (*(*v8 + 32))(v8, 184549380);
      goto LABEL_61;
    }

    return 0;
  }

  v11 = *a2;
  v12 = a2[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(*v11 + 32))(v11, 184549392);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v5)
  {
    v13 = a1[3];
    memset(v36, 0, sizeof(v36));
    v37 = *(v13 + 2488);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(v36, *(v13 + 2464));
    v14 = *(v13 + 2472);
    if (!v14)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v15 = v14[2];
      if (!*(&v36[0] + 1))
      {
        goto LABEL_41;
      }

      v16 = vcnt_s8(*(v36 + 8));
      v16.i16[0] = vaddlv_u8(v16);
      if (v16.u32[0] > 1uLL)
      {
        v17 = v14[2];
        if (v15 >= *(&v36[0] + 1))
        {
          v17 = v15 % *(&v36[0] + 1);
        }
      }

      else
      {
        v17 = (*(&v36[0] + 1) - 1) & v15;
      }

      v18 = *(*&v36[0] + 8 * v17);
      if (!v18 || (v19 = *v18) == 0)
      {
LABEL_41:
        operator new();
      }

      while (1)
      {
        v20 = v19[1];
        if (v20 == v15)
        {
          break;
        }

        if (v16.u32[0] > 1uLL)
        {
          if (v20 >= *(&v36[0] + 1))
          {
            v20 %= *(&v36[0] + 1);
          }
        }

        else
        {
          v20 &= *(&v36[0] + 1) - 1;
        }

        if (v20 != v17)
        {
          goto LABEL_41;
        }

LABEL_40:
        v19 = *v19;
        if (!v19)
        {
          goto LABEL_41;
        }
      }

      if (v19[2] != v15)
      {
        goto LABEL_40;
      }

      v14 = *v14;
      if (!v14)
      {
LABEL_43:
        v21 = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>(v36, v5);
        if (v21)
        {
          v5 = v21[3];
        }

        else
        {
          v28 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v47 = v5;
            _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_ERROR, "failed to map container parent_pid %lld", buf, 0xCu);
          }
        }

        std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v36);
        return v5;
      }
    }
  }

  return v5;
}

void sub_22D4BFB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= *&v2)
          {
            v7 %= *&v2;
          }
        }

        else
        {
          v7 &= *&v2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void ML3ContainerDatabaseImportDataSource::prepareColumns(void *a1, void **a2)
{
  ML3ImportItem::getSanitizedStringValue(&v7, *a2, 184549384);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = __p;
  }

  v3 = ML3CPPBridgeString(&v9, 1);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v7 = &unk_28408AC60;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = *(a1[3] + 24);
  v5 = [v4 objectForKey:v3];
  a1[9] = [v5 ML3NameOrderValue];
  a1[10] = v6;
}

void sub_22D4BFDCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ML3ContainerDatabaseImportDataSource::~ML3ContainerDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

unint64_t ML3CPP::Element::integerValue(ML3CPP::Element *this)
{
  result = 0;
  v3 = *(this + 16);
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      return bswap32(**(this + 6));
    }

    else if (v3 == 8)
    {
      return bswap64(**(this + 6));
    }
  }

  else if (v3 == 1)
  {
    return **(this + 6);
  }

  else if (v3 == 2)
  {
    return (bswap32(**(this + 6)) >> 16);
  }

  return result;
}

_BYTE *ML3CPP::Element::stringValue(_BYTE *this, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = this;
  if (a3 >= 0x17)
  {
    operator new();
  }

  this[23] = a3;
  if (a3)
  {
    this = memcpy(this, a2, a3);
  }

  v4[a3] = 0;
  return this;
}

uint64_t *ML3CPP::Element::appendChildElement(uint64_t *result, __int128 *a2)
{
  if (*a2)
  {
    v3 = result;
    v4 = result[10];
    v5 = result[11];
    if (v4 >= v5)
    {
      v8 = result[9];
      v9 = (v4 - v8) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        std::vector<long long>::__throw_length_error[abi:ne200100]();
      }

      v11 = v5 - v8;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ML3ImportItem>>>(v12);
      }

      v13 = 16 * v9;
      v14 = *a2;
      *(16 * v9) = *a2;
      if (*(&v14 + 1))
      {
        atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v7 = (v13 + 16);
      v15 = v3[9];
      v16 = v3[10] - v15;
      v17 = v13 - v16;
      memcpy((v13 - v16), v15, v16);
      v18 = v3[9];
      v3[9] = v17;
      v3[10] = v7;
      v3[11] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      v6 = *(a2 + 1);
      *v4 = *a2;
      v4[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v7 = v4 + 2;
    }

    v3[10] = v7;
    v19 = v3[1];
    if (v19)
    {
      v20 = *a2;
      v21 = *v3;
      v22 = std::__shared_weak_count::lock(v19);
      if (v22)
      {
        v23 = v22;
        atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v24 = *(v20 + 32);
        *(v20 + 24) = v21;
        *(v20 + 32) = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_weak(v24);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        if (*(a2 + 1))
        {
          atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  return result;
}

void sub_22D4C01BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

uint64_t *ML3CPP::Element::childElementForCode(ML3CPP::Element *this, uint64_t a2, unsigned int a3)
{
  result = std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(a2 + 96, a3);
  if (result >= 2)
  {
    v16 = result;
    std::to_string(&v25, a3);
    v17 = std::string::insert(&v25, 0, "There is more than one child for this code, please use childElementsForCode. ElementCode=");
    v18 = *&v17->__r_.__value_.__l.__data_;
    v26.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v26.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    std::to_string(&v24, v16);
    v19 = std::string::insert(&v24, 0, "numberOfChildren=");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v25;
    }

    else
    {
      v21 = v25.__r_.__value_.__r.__words[0];
    }

    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v25.__r_.__value_.__l.__size_;
    }

    std::string::append(&v26, v21, size);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2318CCF50](exception, &v26);
    __cxa_throw(exception, MEMORY[0x277D82750], MEMORY[0x277D825D8]);
  }

  if (result == 1)
  {
    v9 = *(a2 + 104);
    v8 = a2 + 104;
    v7 = v9;
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = v8;
    do
    {
      v11 = *(v7 + 32);
      v12 = v11 >= a3;
      v13 = v11 < a3;
      if (v12)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * v13);
    }

    while (v7);
    if (v10 == v8 || *(v10 + 32) > a3)
    {
LABEL_11:
      v10 = v8;
    }

    v15 = *(v10 + 40);
    v14 = *(v10 + 48);
    *this = v15;
    *(this + 1) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }

  return result;
}

void sub_22D4C03D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<ML3CPP::Element>>>>::__count_multi<unsigned int>(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v3;
  }

  while (1)
  {
    v5 = *(v3 + 8);
    if (v5 <= a2)
    {
      break;
    }

    v2 = v3;
LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      return v3;
    }
  }

  if (v5 < a2)
  {
    ++v3;
    goto LABEL_6;
  }

  v6 = *v3;
  v7 = v3;
  if (*v3)
  {
    v7 = v3;
    do
    {
      v8 = *(v6 + 8);
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v7 = v6;
      }

      v6 = v6[v10];
    }

    while (v6);
  }

  for (i = v3[1]; i; i = *(i + 8 * v14))
  {
    v12 = *(i + 32);
    v13 = v12 > a2;
    v14 = v12 <= a2;
    if (v13)
    {
      v2 = i;
    }
  }

  if (v7 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v15 = v7[1];
    if (v15)
    {
      do
      {
        v16 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        v16 = v7[2];
        v17 = *v16 == v7;
        v7 = v16;
      }

      while (!v17);
    }

    v3 = (v3 + 1);
    v7 = v16;
  }

  while (v16 != v2);
  return v3;
}

id ML3BookletDatabaseImportDataSource::generateVTableInsertionFromClause(ML3BookletDatabaseImportDataSource *this, NSString *a2, NSString *a3)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LEFT OUTER JOIN booklet ON %@.ROWID = booklet.booklet_pid", a3, a3];

  return v3;
}

void ML3BookletDatabaseImportDataSource::~ML3BookletDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

void ML3ShowFileRadarAlert(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (ML3IsProcessRunning(@"com.apple.SpringBoard") && !ML3IsProcessRunning(@"com.apple.datamigrator") && (MSVDeviceOSIsInternalInstall() & 1) != 0)
  {
    v8 = v5;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\nPlease file a radar now using the button below.\n\n[This dialog is shown for internal users only.]", v6];
    v10 = objc_alloc_init(MEMORY[0x277D27F38]);
    [v10 setAlertHeader:v8];
    [v10 setAlertMessage:v9];
    [v10 setDefaultButtonTitle:@"File Radar"];
    [v10 setAlternateButtonTitle:@"Ignore"];
    v11 = [objc_alloc(MEMORY[0x277D27F30]) initWithOptions:v10];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __ML3ShowFileRadarAlert_block_invoke;
    v13[3] = &unk_278763A68;
    v14 = v8;
    v15 = v7;
    v12 = v8;
    [v11 presentWithCompletion:v13];
  }

  else
  {
    [MEMORY[0x277D27EF0] snapshotWithDomain:*MEMORY[0x277D27EC0] type:@"Bug" subType:v5 context:v6 triggerThresholdValues:0 events:0 completion:0];
  }
}

void __ML3ShowFileRadarAlert_block_invoke(uint64_t a1, void *a2)
{
  v24[9] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 buttonIdentifier] == 1)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v4 setScheme:@"tap-to-radar"];
    [v4 setHost:@"new"];
    v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"BundleID" value:@"com.apple.music"];
    v24[0] = v18;
    v17 = [MEMORY[0x277CCAD18] queryItemWithName:@"Title" value:*(a1 + 32)];
    v24[1] = v17;
    v5 = [MEMORY[0x277CCAD18] queryItemWithName:@"Description" value:*(a1 + 40)];
    v24[2] = v5;
    v6 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:@"638694"];
    v24[3] = v6;
    v7 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:@"Media Platform"];
    v24[4] = v7;
    v8 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:@"Library"];
    v24[5] = v8;
    v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"Classification" value:@"Serious Bug"];
    v24[6] = v9;
    v10 = [MEMORY[0x277CCAD18] queryItemWithName:@"ExtensionIdentifiers" value:@"com.apple.MediaPlayer.DiagnosticExtension"];
    v24[7] = v10;
    v11 = [MEMORY[0x277CCAD18] queryItemWithName:@"Reproducibility" value:@"Sometimes"];
    v24[8] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:9];
    [v4 setQueryItems:v12];

    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v13 = getLSApplicationWorkspaceClass_softClass;
    v23 = getLSApplicationWorkspaceClass_softClass;
    if (!getLSApplicationWorkspaceClass_softClass)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __getLSApplicationWorkspaceClass_block_invoke;
      v19[3] = &unk_278764EF0;
      v19[4] = &v20;
      __getLSApplicationWorkspaceClass_block_invoke(v19);
      v13 = v21[3];
    }

    v14 = v13;
    _Block_object_dispose(&v20, 8);
    v15 = [v13 defaultWorkspace];
    v16 = [v4 URL];
    [v15 openURL:v16 withOptions:0 error:0];
  }
}

void sub_22D4C0AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLSApplicationWorkspaceClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __CoreServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_278763A88;
    v8 = 0;
    CoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ML3DiagnosticUtilities.m" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("LSApplicationWorkspace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getLSApplicationWorkspaceClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ML3DiagnosticUtilities.m" lineNumber:18 description:{@"Unable to find class %s", "LSApplicationWorkspace"}];

LABEL_10:
    __break(1u);
  }

  getLSApplicationWorkspaceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void std::__shared_ptr_emplace<ML3SetCloudIDContainerImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284087268;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void std::__shared_ptr_emplace<ML3SetCloudIDAlbumImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284087218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void std::__shared_ptr_emplace<ML3SetCloudIDArtistImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2840871C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void std::__shared_ptr_emplace<ML3SetCloudIDTrackImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284087178;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D4C25B8(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  ML3ImportSession::~ML3ImportSession(va);
  _Unwind_Resume(a1);
}

void sub_22D4C28F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ML3MigrationCreateNewAlbumForMisgroupedTracks(void *a1, uint64_t a2, void *a3, void *a4)
{
  v65[1] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  if (![v8 count])
  {
    v39 = 1;
    goto LABEL_33;
  }

  v50 = v8;
  v9 = [&unk_2840C85E8 componentsJoinedByString:{@", "}];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT OR REPLACE INTO album (%@) SELECT %@ FROM album WHERE album_pid=?", v9, v9];
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v65[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:1];
  v58 = 0;
  v13 = [v7 executeUpdate:v10 withParameters:v12 error:&v58];
  v14 = v58;

  if (v13)
  {
    v48 = v10;
    v49 = v9;
    v15 = v7;
    v16 = [v7 lastInsertionRowID];
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:v16];
    v62[0] = v17;
    v62[1] = &unk_2840C9428;
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:{+[ML3Album revisionTrackingCode](ML3Album, "revisionTrackingCode")}];
    v62[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:3];
    v57 = v14;
    v20 = [v15 executeUpdate:@"REPLACE INTO entity_revision (entity_pid withParameters:deleted error:{class) VALUES (?, ?, ?)", v19, &v57}];
    v21 = v57;

    if (v20)
    {
      v47 = a4;
      v22 = [v50 firstObject];
      v23 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[NSObject albumArtistPID](v22, "albumArtistPID")}];
      v61[0] = v23;
      v24 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[NSObject persistentID](v22, "persistentID")}];
      v61[1] = v24;
      v44 = v16;
      v25 = [MEMORY[0x277CCABB0] numberWithLongLong:v16];
      v61[2] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:3];
      v56 = v21;
      v27 = [v15 executeUpdate:@"UPDATE album SET album_artist_pid=? withParameters:representative_item_pid=? WHERE album_pid=?" error:{v26, &v56}];
      v46 = v56;

      v7 = v15;
      if (v27)
      {
        v8 = v50;
        v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v50, "count")}];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v29 = v50;
        v30 = [v29 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v53;
          do
          {
            v33 = 0;
            do
            {
              if (*v53 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v52 + 1) + 8 * v33), "persistentID")}];
              [v28 addObject:v34];

              ++v33;
            }

            while (v31 != v33);
            v31 = [v29 countByEnumeratingWithState:&v52 objects:v60 count:16];
          }

          while (v31);
        }

        v35 = [v28 componentsJoinedByString:@", "];
        v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"UPDATE item SET album_pid=? WHERE item_pid IN (%@)", v35];
        v37 = [MEMORY[0x277CCABB0] numberWithLongLong:v44];
        v59 = v37;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
        v51 = v46;
        v45 = v36;
        v39 = [v7 executeUpdate:v36 withParameters:v38 error:&v51];
        v14 = v51;

        a4 = v47;
        v9 = v49;
        if ((v39 & 1) == 0)
        {
          v40 = v35;
          v41 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v64 = v14;
            _os_log_impl(&dword_22D2FA000, v41, OS_LOG_TYPE_ERROR, "Failed to update item's album column with newly created album. %{public}@", buf, 0xCu);
          }

          v35 = v40;
        }

        v10 = v48;
      }

      else
      {
        v28 = os_log_create("com.apple.amp.medialibrary", "Default");
        a4 = v47;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v14 = v46;
          v64 = v46;
          _os_log_impl(&dword_22D2FA000, v28, OS_LOG_TYPE_ERROR, "Failed to update representative item for newly created album. %{public}@", buf, 0xCu);
          v39 = 0;
        }

        else
        {
          v39 = 0;
          v14 = v46;
        }

        v10 = v48;
        v9 = v49;
        v8 = v50;
      }

      goto LABEL_30;
    }

    v7 = v15;
    v22 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v64 = v21;
      _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_ERROR, "Failed to update entity revision with newly created album. %{public}@", buf, 0xCu);
    }

    v39 = 0;
    v14 = v21;
    v10 = v48;
    v9 = v49;
  }

  else
  {
    v22 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v64 = v14;
      _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_ERROR, "Failed to create new album for misgrouped track. %{public}@", buf, 0xCu);
    }

    v39 = 0;
  }

  v8 = v50;
LABEL_30:

  if (a4)
  {
    v42 = v14;
    *a4 = v14;
  }

LABEL_33:
  return v39;
}

uint64_t MSPMediaSyncHeaderReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            v20 = 0;
            v21 = &OBJC_IVAR___MSPMediaSyncHeader__totalPackages;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___MSPMediaSyncHeader__totalPackages;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        v20 = 0;
        v21 = &OBJC_IVAR___MSPMediaSyncHeader__syncType;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___MSPMediaSyncHeader__syncType;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t ML3AlbumImportItem::getDataValue@<X0>(uint64_t this@<X0>, int a2@<W1>, NSData *a3@<X8>)
{
  if (a2 == 285212677)
  {
    ML3CPPBridgeNSData(a3, *(this + 112));
  }

  a3->super.isa = 0;
  a3[1].super.isa = 0;
  return this;
}

uint64_t ML3AlbumImportItem::getIntegerValue(ML3AlbumImportItem *this, int a2)
{
  result = 0;
  if (a2 <= 285212682)
  {
    if (a2 > 285212678)
    {
      switch(a2)
      {
        case 285212679:
          return *(*(this + 8) + 56);
        case 285212680:
          return *(*(this + 8) + 64);
        case 285212681:
          return *(this + 13);
      }
    }

    else
    {
      switch(a2)
      {
        case 167772186:
          return *(*(this + 8) + 60);
        case 285212675:
          return *(this + 16);
        case 285212676:
          return *(this + 15);
      }
    }
  }

  else if (a2 <= 285212690)
  {
    switch(a2)
    {
      case 285212683:
        return *(this + 17);
      case 285212684:
        return *(*(this + 8) + 68);
      case 285212688:
        return *(this + 144);
    }
  }

  else
  {
    if (a2 <= 285212694)
    {
      if (a2 == 285212691)
      {
        return *(*(this + 8) + 96);
      }

      if (a2 == 285212693)
      {
        return *(*(this + 8) + 137);
      }

      return result;
    }

    if (a2 == 285212695)
    {
      return *(*(this + 8) + 144);
    }

    if (a2 == 285212696)
    {
      this = *(this + 8);
      return *(this + 13);
    }
  }

  return result;
}

uint64_t ML3AlbumImportItem::getStringValue@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 > 285212681)
  {
    if (a2 == 285212682)
    {
      v4 = (this + 80);
    }

    else
    {
      if (a2 != 285212697)
      {
        goto LABEL_15;
      }

      v4 = (*(this + 64) + 112);
    }

    return ML3ImportValue<std::string>::ML3ImportValue(a3, v4);
  }

  if (a2 == 285212673)
  {
    v4 = (*(this + 64) + 8);
    return ML3ImportValue<std::string>::ML3ImportValue(a3, v4);
  }

  if (a2 == 285212674)
  {
    v3 = *(this + 64);
    if ((*(v3 + 55) & 0x8000000000000000) == 0)
    {
      if (!*(v3 + 55))
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    if (*(v3 + 40))
    {
LABEL_13:
      v4 = (v3 + 32);
      return ML3ImportValue<std::string>::ML3ImportValue(a3, v4);
    }
  }

LABEL_15:
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  return this;
}

uint64_t ML3ImportValue<std::string>::ML3ImportValue(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_28408AC60;
  *(a1 + 8) = 1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v3;
  }

  return a1;
}

void ML3AlbumImportItem::~ML3AlbumImportItem(id *this)
{
  ML3AlbumImportItem::~ML3AlbumImportItem(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_2840872D8;

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t ML3AlbumArtistImportItem::getDataValue@<X0>(uint64_t this@<X0>, int a2@<W1>, NSData *a3@<X8>)
{
  if (a2 == 301989891)
  {
    ML3CPPBridgeNSData(a3, *(this + 80));
  }

  a3->super.isa = 0;
  a3[1].super.isa = 0;
  return this;
}

uint64_t ML3AlbumArtistImportItem::getIntegerValue(ML3AlbumArtistImportItem *this, int a2)
{
  result = 0;
  if (a2 > 301989902)
  {
    if (a2 > 301989905)
    {
      if (a2 == 301989906)
      {
        return *(*(this + 8) + 112);
      }

      else if (a2 == 301989907)
      {
        return *(*(this + 8) + 120);
      }
    }

    else if (a2 == 301989903)
    {
      return *(*(this + 8) + 180);
    }

    else if (a2 == 301989904)
    {
      return *(*(this + 8) + 184);
    }
  }

  else if (a2 > 301989897)
  {
    if (a2 == 301989898)
    {
      return *(*(this + 8) + 144);
    }

    else if (a2 == 301989901)
    {
      return *(*(this + 8) + 176);
    }
  }

  else if (a2 == 301989893)
  {
    return *(*(this + 8) + 104);
  }

  else if (a2 == 301989894)
  {
    return *(this + 11);
  }

  return result;
}

uint64_t ML3AlbumArtistImportItem::getStringValue@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 301989899:
      v3 = (*(this + 64) + 152);
      return ML3ImportValue<std::string>::ML3ImportValue(a3, v3);
    case 301989890:
      v4 = *(this + 64);
      if ((*(v4 + 55) & 0x8000000000000000) != 0)
      {
        if (!*(v4 + 40))
        {
          break;
        }
      }

      else if (!*(v4 + 55))
      {
        break;
      }

      v3 = (v4 + 32);
      return ML3ImportValue<std::string>::ML3ImportValue(a3, v3);
    case 301989889:
      v3 = (*(this + 64) + 8);
      return ML3ImportValue<std::string>::ML3ImportValue(a3, v3);
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  return this;
}

void ML3AlbumArtistImportItem::~ML3AlbumArtistImportItem(id *this)
{
  ML3AlbumArtistImportItem::~ML3AlbumArtistImportItem(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_2840873C0;

  v2 = this[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t ML3ArtistImportItem::getDataValue@<X0>(uint64_t this@<X0>, int a2@<W1>, NSData *a3@<X8>)
{
  if (a2 == 318767109)
  {
    ML3CPPBridgeNSData(a3, *(this + 80));
  }

  a3->super.isa = 0;
  a3[1].super.isa = 0;
  return this;
}

uint64_t ML3ArtistImportItem::getIntegerValue(ML3ArtistImportItem *this, int a2)
{
  result = 0;
  if (a2 > 318767115)
  {
    if (a2 == 318767116)
    {
      return *(*(this + 8) + 144);
    }

    else if (a2 == 318767118)
    {
      return *(*(this + 8) + 176);
    }
  }

  else if (a2 == 318767111)
  {
    return *(*(this + 8) + 104);
  }

  else if (a2 == 318767112)
  {
    return *(this + 11);
  }

  return result;
}

uint64_t ML3ArtistImportItem::getStringValue@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 <= 318767106)
  {
    if (a2 != 318767105)
    {
      if (a2 == 318767106)
      {
        v3 = *(this + 64);
        if ((*(v3 + 55) & 0x8000000000000000) == 0)
        {
          if (!*(v3 + 55))
          {
            goto LABEL_19;
          }

          goto LABEL_15;
        }

        if (*(v3 + 40))
        {
LABEL_15:
          v5 = (v3 + 32);
          return ML3ImportValue<std::string>::ML3ImportValue(a3, v5);
        }
      }

      goto LABEL_19;
    }

    v5 = (*(this + 64) + 8);
    return ML3ImportValue<std::string>::ML3ImportValue(a3, v5);
  }

  if (a2 == 318767107)
  {
    v5 = (*(this + 64) + 56);
    return ML3ImportValue<std::string>::ML3ImportValue(a3, v5);
  }

  if (a2 == 318767108)
  {
    v4 = *(this + 64);
    if ((*(v4 + 103) & 0x8000000000000000) != 0)
    {
      if (!*(v4 + 88))
      {
        goto LABEL_19;
      }
    }

    else if (!*(v4 + 103))
    {
      goto LABEL_19;
    }

    v5 = (v4 + 80);
    return ML3ImportValue<std::string>::ML3ImportValue(a3, v5);
  }

LABEL_19:
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  return this;
}

void ML3ArtistImportItem::~ML3ArtistImportItem(id *this)
{
  ML3ArtistImportItem::~ML3ArtistImportItem(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_2840874A8;

  v2 = this[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t ML3ComposerImportItem::getDataValue@<X0>(uint64_t this@<X0>, int a2@<W1>, NSData *a3@<X8>)
{
  if (a2 == 335544323)
  {
    ML3CPPBridgeNSData(a3, *(this + 104));
  }

  a3->super.isa = 0;
  a3[1].super.isa = 0;
  return this;
}

uint64_t ML3ComposerImportItem::getIntegerValue(ML3ComposerImportItem *this, int a2)
{
  if (a2 == 335544328)
  {
    v2 = (*(this + 8) + 72);
    return *v2;
  }

  if (a2 == 335544325)
  {
    v2 = this + 112;
    return *v2;
  }

  return 0;
}

uint64_t ML3ComposerImportItem::getStringValue@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 335544322)
  {
    v4 = *(this + 64);
    if ((*(v4 + 55) & 0x8000000000000000) != 0)
    {
      if (!*(v4 + 40))
      {
        goto LABEL_9;
      }
    }

    else if (!*(v4 + 55))
    {
      goto LABEL_9;
    }

    v3 = (v4 + 32);
    return ML3ImportValue<std::string>::ML3ImportValue(a3, v3);
  }

  if (a2 == 335544321)
  {
    v3 = (this + 80);
    return ML3ImportValue<std::string>::ML3ImportValue(a3, v3);
  }

LABEL_9:
  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  return this;
}

void ML3ComposerImportItem::~ML3ComposerImportItem(id *this)
{
  ML3ComposerImportItem::~ML3ComposerImportItem(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284087590;

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t ML3GenreImportItem::getDataValue@<X0>(uint64_t this@<X0>, int a2@<W1>, NSData *a3@<X8>)
{
  if (a2 == 352321538)
  {
    ML3CPPBridgeNSData(a3, *(this + 104));
  }

  a3->super.isa = 0;
  a3[1].super.isa = 0;
  return this;
}

uint64_t ML3GenreImportItem::getIntegerValue(ML3GenreImportItem *this, int a2)
{
  if (a2 == 352321543)
  {
    v2 = (*(this + 8) + 48);
    return *v2;
  }

  if (a2 == 352321540)
  {
    v2 = this + 112;
    return *v2;
  }

  return 0;
}

uint64_t ML3GenreImportItem::getStringValue@<X0>(uint64_t this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 == 352321537)
  {
    return ML3ImportValue<std::string>::ML3ImportValue(a3, (this + 80));
  }

  *a3 = &unk_28408AC60;
  *(a3 + 8) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  return this;
}

void ML3GenreImportItem::~ML3GenreImportItem(id *this)
{
  ML3GenreImportItem::~ML3GenreImportItem(this);

  JUMPOUT(0x2318CD250);
}

{
  *this = &unk_284087678;

  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  v2 = this[9];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t ML3AlbumImportItem::ML3AlbumImportItem(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v16 = a5;
  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *a1 = &unk_2840872D8;
  *(a1 + 8) = 0;
  v17 = a2[1];
  *(a1 + 64) = *a2;
  *(a1 + 72) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a3, *(a3 + 1));
  }

  else
  {
    v18 = *a3;
    *(a1 + 96) = *(a3 + 2);
    *(a1 + 80) = v18;
  }

  *(a1 + 104) = a4;
  v19 = v16;
  *(a1 + 112) = v19;
  *(a1 + 120) = a6;
  *(a1 + 128) = a7;
  *(a1 + 136) = a8;
  *(a1 + 144) = a9;
  *(a1 + 16) = 256;
  *(a1 + 8) = **(a1 + 64);

  return a1;
}

void sub_22D4C7508(_Unwind_Exception *a1)
{
  v5 = v1[9];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *v1 = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(v3);

  _Unwind_Resume(a1);
}

uint64_t ML3AlbumArtistImportItem::ML3AlbumArtistImportItem(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a3;
  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1065353216;
  *a1 = &unk_2840873C0;
  *(a1 + 8) = 0;
  v8 = a2[1];
  *(a1 + 64) = *a2;
  *(a1 + 72) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v7;
  *(a1 + 80) = v9;
  *(a1 + 88) = a4;
  *(a1 + 16) = 256;
  *(a1 + 8) = **(a1 + 64);

  return a1;
}

void sub_22D4C7994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStoreArtworkInfoImageFormatJPEGSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary();
  result = dlsym(v2, "ICStoreArtworkInfoImageFormatJPEG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStoreArtworkInfoImageFormatJPEGSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *iTunesCloudLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iTunesCloudLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iTunesCloudLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278763AA0;
    v6 = 0;
    iTunesCloudLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = iTunesCloudLibraryCore_frameworkLibrary;
  if (!iTunesCloudLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *iTunesCloudLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ML3StoreItemPlaylistData.m" lineNumber:19 description:{@"%s", v4[0]}];

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

uint64_t __iTunesCloudLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  iTunesCloudLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_22D4C7D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary();
  result = dlsym(v2, "ICStoreArtworkInfoCropStyleSquareCenterCrop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICStorePlatformMetadataKindPlaylistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary();
  result = dlsym(v2, "ICStorePlatformMetadataKindPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformMetadataKindPlaylistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t MSPMediaSyncOperationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 11)
      {
        if (v13 > 9)
        {
          if (v13 == 10)
          {
            v14 = objc_alloc_init(MIPArtist);
            objc_storeStrong((a1 + 16), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !MIPArtistReadFrom(v14, a2))
            {
LABEL_71:

              return 0;
            }

            goto LABEL_61;
          }

          if (v13 == 11)
          {
            v14 = objc_alloc_init(MIPAlbum);
            objc_storeStrong((a1 + 8), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !MIPAlbumReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            goto LABEL_61;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 80) |= 1u;
            while (1)
            {
              LOBYTE(v24) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v24 & 0x7F) << v15;
              if ((v24 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_69;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_69:
            *(a1 + 56) = v21;
            goto LABEL_62;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(MIPMultiverseIdentifier);
            objc_storeStrong((a1 + 48), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !MIPMultiverseIdentifierReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            goto LABEL_61;
          }
        }
      }

      else if (v13 <= 13)
      {
        if (v13 == 12)
        {
          v14 = objc_alloc_init(MIPGenre);
          objc_storeStrong((a1 + 24), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !MIPGenreReadFrom(v14, a2))
          {
            goto LABEL_71;
          }

          goto LABEL_61;
        }

        if (v13 == 13)
        {
          v14 = objc_alloc_init(MIPSeries);
          objc_storeStrong((a1 + 72), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !MIPSeriesReadFrom(v14, a2))
          {
            goto LABEL_71;
          }

          goto LABEL_61;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xE:
            v14 = objc_alloc_init(MIPMediaItem);
            objc_storeStrong((a1 + 40), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !MIPMediaItemReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            goto LABEL_61;
          case 0x14:
            v14 = objc_alloc_init(MIPPlaylist);
            objc_storeStrong((a1 + 64), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !MIPPlaylistReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

            goto LABEL_61;
          case 0x15:
            v14 = objc_alloc_init(MIPLibraryPin);
            objc_storeStrong((a1 + 32), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !MIPLibraryPinReadFrom(v14, a2))
            {
              goto LABEL_71;
            }

LABEL_61:
            PBReaderRecallMark();

            goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_62:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id ML3PersonDatabaseImportDataSource::generateVTableInsertionFromClause(ML3PersonDatabaseImportDataSource *this, NSString *a2, NSString *a3)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ LEFT OUTER JOIN person ON %@.ROWID = person.person_pid", a3, a3];

  return v3;
}

void ML3PersonDatabaseImportDataSource::~ML3PersonDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

uint64_t MIPMultiverseIdentifierReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v60[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v60[0] & 0x7F) << v5;
        if ((v60[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 31)
      {
        break;
      }

      if (v13 <= 33)
      {
        if (v13 == 32)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          a1[80] |= 4u;
          while (1)
          {
            LOBYTE(v60[0]) = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v60[0] & 0x7F) << v41;
            if ((v60[0] & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_109;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v43;
          }

LABEL_109:
          v57 = 24;
          goto LABEL_118;
        }

        if (v13 == 33)
        {
          v29 = 0;
          v30 = 0;
          v31 = 0;
          a1[80] |= 2u;
          while (1)
          {
            LOBYTE(v60[0]) = 0;
            v32 = [a2 position] + 1;
            if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
            {
              v34 = [a2 data];
              [v34 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v31 |= (v60[0] & 0x7F) << v29;
            if ((v60[0] & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v11 = v30++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_100;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v31;
          }

LABEL_100:
          v57 = 16;
          goto LABEL_118;
        }

LABEL_91:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_119;
      }

      if (v13 == 34)
      {
        v47 = PBReaderReadString();
        v48 = 48;
        goto LABEL_90;
      }

      if (v13 == 35)
      {
        v47 = PBReaderReadString();
        v48 = 40;
        goto LABEL_90;
      }

      if (v13 != 50)
      {
        goto LABEL_91;
      }

      v21 = objc_alloc_init(MIPLibraryIdentifier);
      [a1 addLibraryIdentifiers:v21];
      v60[0] = 0;
      v60[1] = 0;
      if (!PBReaderPlaceMark() || !MIPLibraryIdentifierReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_119:
      v58 = [a2 position];
      if (v58 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 2)
    {
      if (v13 == 1)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        a1[80] |= 0x10u;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v60[0] & 0x7F) << v35;
          if ((v60[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v37;
        }

LABEL_104:
        v56 = 64;
        goto LABEL_105;
      }

      if (v13 == 2)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        a1[80] |= 0x20u;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v60[0] & 0x7F) << v22;
          if ((v60[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_96;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_96:
        v56 = 68;
LABEL_105:
        *&a1[v56] = v28;
        goto LABEL_119;
      }
    }

    else
    {
      switch(v13)
      {
        case 3:
          v47 = PBReaderReadString();
          v48 = 72;
LABEL_90:
          v55 = *&a1[v48];
          *&a1[v48] = v47;

          goto LABEL_119;
        case 0x1E:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          a1[80] |= 1u;
          while (1)
          {
            LOBYTE(v60[0]) = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v60[0] & 0x7F) << v49;
            if ((v60[0] & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_117;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v51;
          }

LABEL_117:
          v57 = 8;
          goto LABEL_118;
        case 0x1F:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          a1[80] |= 8u;
          while (1)
          {
            LOBYTE(v60[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v60[0] & 0x7F) << v14;
            if ((v60[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_113;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_113:
          v57 = 32;
LABEL_118:
          *&a1[v57] = v20;
          goto LABEL_119;
      }
    }

    goto LABEL_91;
  }

  return [a2 hasError] ^ 1;
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_22D4D0484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__17603(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_22D4D06DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

void sub_22D4D0DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  std::__hash_table<unsigned long long,echo_hash_shift<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  v17 = *(v15 - 104);
  if (v17)
  {
    *(v15 - 96) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_unique_key_args<long long,long long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_22D4D1FB0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_22D4D308C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ML3ItemPlaybackDatabaseImportDataSource::~ML3ItemPlaybackDatabaseImportDataSource(id *this)
{
  ML3DatabaseImportDataSource::~ML3DatabaseImportDataSource(this);

  JUMPOUT(0x2318CD250);
}

void sub_22D4D3FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17933(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D4D42D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4D5E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStoreArtworkInfoImageFormatJPEGSymbolLoc_block_invoke_18223(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStoreArtworkInfoImageFormatJPEG");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStoreArtworkInfoImageFormatJPEGSymbolLoc_ptr_18222 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *iTunesCloudLibrary_18224()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iTunesCloudLibraryCore_frameworkLibrary_18234)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iTunesCloudLibraryCore_block_invoke_18235;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_278763D80;
    v6 = 0;
    iTunesCloudLibraryCore_frameworkLibrary_18234 = _sl_dlopen();
  }

  v0 = iTunesCloudLibraryCore_frameworkLibrary_18234;
  if (!iTunesCloudLibraryCore_frameworkLibrary_18234)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *iTunesCloudLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ML3StoreItemTrackData.m" lineNumber:23 description:{@"%s", v4[0]}];

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

uint64_t __iTunesCloudLibraryCore_block_invoke_18235()
{
  result = _sl_dlopen();
  iTunesCloudLibraryCore_frameworkLibrary_18234 = result;
  return result;
}

void sub_22D4D623C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_block_invoke_18240(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStoreArtworkInfoCropStyleSquareCenterCrop");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStoreArtworkInfoCropStyleSquareCenterCropSymbolLoc_ptr_18239 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22D4D6420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStoreArtworkInfoCropStyleBoundedBoxSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStoreArtworkInfoCropStyleBoundedBox");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStoreArtworkInfoCropStyleBoundedBoxSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22D4D65F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStorePlatformMetadataKindMovieSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformMetadataKindMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformMetadataKindMovieSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22D4D67C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStorePlatformMetadataKindTVEpisodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformMetadataKindTVEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformMetadataKindTVEpisodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22D4D69E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStorePlatformMetadataKindUploadedVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformMetadataKindUploadedVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformMetadataKindUploadedVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22D4D6BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStorePlatformMetadataKindUploadedAudioSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformMetadataKindUploadedAudio");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformMetadataKindUploadedAudioSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22D4D6DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStorePlatformMetadataKindMusicVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformMetadataKindMusicVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformMetadataKindMusicVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22D4D6FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStorePlatformMetadataKindSongSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformMetadataKindSong");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformMetadataKindSongSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICStorePlatformMetadataKindAlbumSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformMetadataKindAlbum");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformMetadataKindAlbumSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getICStorePlatformMetadataKindArtist()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getICStorePlatformMetadataKindArtistSymbolLoc_ptr;
  v9 = getICStorePlatformMetadataKindArtistSymbolLoc_ptr;
  if (!getICStorePlatformMetadataKindArtistSymbolLoc_ptr)
  {
    v1 = iTunesCloudLibrary_18224();
    v7[3] = dlsym(v1, "ICStorePlatformMetadataKindArtist");
    getICStorePlatformMetadataKindArtistSymbolLoc_ptr = v7[3];
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
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getICStorePlatformMetadataKindArtist(void)"];
    [v4 handleFailureInFunction:v5 file:@"ML3StoreItemTrackData.m" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_22D4D7BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getICStorePlatformMetadataKindPlaylistSymbolLoc_block_invoke_18251(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformMetadataKindPlaylist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformMetadataKindPlaylistSymbolLoc_ptr_18250 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICStorePlatformMetadataKindTVSeasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformMetadataKindTVSeason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformMetadataKindTVSeasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getICStorePlatformMetadataClass_block_invoke(uint64_t a1)
{
  iTunesCloudLibrary_18224();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICStorePlatformMetadata");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICStorePlatformMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getICStorePlatformMetadataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3StoreItemTrackData.m" lineNumber:24 description:{@"Unable to find class %s", "ICStorePlatformMetadata"}];

    __break(1u);
  }
}

void *__getICStorePlatformMetadataKindArtistSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformMetadataKindArtist");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformMetadataKindArtistSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22D4D8384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getICStoreArtworkInfoClass_block_invoke(uint64_t a1)
{
  iTunesCloudLibrary_18224();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICStoreArtworkInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICStoreArtworkInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getICStoreArtworkInfoClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3StoreItemTrackData.m" lineNumber:28 description:{@"Unable to find class %s", "ICStoreArtworkInfo"}];

    __break(1u);
  }
}

void *__getICStorePlatformAudioTraitSpatialSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformAudioTraitSpatial");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformAudioTraitSpatialSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICStorePlatformAudioTraitLosslessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformAudioTraitLossless");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformAudioTraitLosslessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICStorePlatformAudioTraitHiResLosslessSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformAudioTraitHiResLossless");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformAudioTraitHiResLosslessSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICStorePlatformAudioTraitLossyStereoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformAudioTraitLossyStereo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformAudioTraitLossyStereoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICStorePlatformAudioTraitAtmosSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformAudioTraitAtmos");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformAudioTraitAtmosSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getICStorePlatformAudioTraitSurroundSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = iTunesCloudLibrary_18224();
  result = dlsym(v2, "ICStorePlatformAudioTraitSurround");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getICStorePlatformAudioTraitSurroundSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22D4DA7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18466(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __getICStorePlatformRequestClass_block_invoke(uint64_t a1)
{
  iTunesCloudLibrary_18224();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICStorePlatformRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICStorePlatformRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getICStorePlatformRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3StoreItemTrackData.m" lineNumber:25 description:{@"Unable to find class %s", "ICStorePlatformRequest"}];

    __break(1u);
  }
}

void __getICStoreRequestContextClass_block_invoke(uint64_t a1)
{
  iTunesCloudLibrary_18224();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICStoreRequestContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICStoreRequestContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getICStoreRequestContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3StoreItemTrackData.m" lineNumber:26 description:{@"Unable to find class %s", "ICStoreRequestContext"}];

    __break(1u);
  }
}

void __getICUserIdentityClass_block_invoke(uint64_t a1)
{
  iTunesCloudLibrary_18224();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ICUserIdentity");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getICUserIdentityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getICUserIdentityClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ML3StoreItemTrackData.m" lineNumber:27 description:{@"Unable to find class %s", "ICUserIdentity"}];

    __break(1u);
  }
}

void std::__shared_ptr_emplace<ML3StoreArtistImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284087910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void std::__shared_ptr_emplace<ML3StoreContainerImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2840879B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D4DC7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *a20, void *a21)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v21);

  std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ML3StoreAlbumImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284087960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void std::__shared_ptr_emplace<ML3StoreImportItem>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2840878C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D4DD160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  ML3ImportSession::~ML3ImportSession(va);
  _Unwind_Resume(a1);
}

void sub_22D4DD42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18595(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D4DEBD0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x220], 8);
  _Block_object_dispose(&STACK[0x240], 8);
  _Unwind_Resume(a1);
}

id ML3GetStringForKind(uint64_t a1)
{
  if (_ML3InitializeKinds_onceToken != -1)
  {
    dispatch_once(&_ML3InitializeKinds_onceToken, &__block_literal_global_18784);
  }

  v2 = __kindsForStrings;
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v4 = [v2 allKeysForObject:v3];
  v5 = [v4 firstObject];

  return v5;
}

id ML3GetOldStringForKind(uint64_t a1)
{
  if (_ML3InitializeKinds_onceToken != -1)
  {
    dispatch_once(&_ML3InitializeKinds_onceToken, &__block_literal_global_18784);
  }

  v2 = __kindsForOldStrings;
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v4 = [v2 allKeysForObject:v3];
  v5 = [v4 firstObject];

  return v5;
}

uint64_t ML3KindForString(void *a1)
{
  v1 = a1;
  if (_ML3InitializeKinds_onceToken != -1)
  {
    dispatch_once(&_ML3InitializeKinds_onceToken, &__block_literal_global_18784);
  }

  v2 = [__kindsForStrings objectForKey:v1];
  v3 = [v2 intValue];
  if (!v3)
  {
    v4 = [__kindsForOldStrings objectForKey:v1];
    v3 = [v4 intValue];
  }

  return v3;
}

id ML3KindsPassingTest(void *a1)
{
  v1 = a1;
  if (_ML3InitializeKinds_onceToken != -1)
  {
    dispatch_once(&_ML3InitializeKinds_onceToken, &__block_literal_global_18784);
  }

  v2 = [MEMORY[0x277CBEB58] set];
  v3 = __kindsForStrings;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __ML3KindsPassingTest_block_invoke;
  v15[3] = &unk_278763EB8;
  v4 = v1;
  v17 = v4;
  v5 = v2;
  v16 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v15];
  v6 = __kindsForOldStrings;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __ML3KindsPassingTest_block_invoke_2;
  v12[3] = &unk_278763EB8;
  v14 = v4;
  v7 = v5;
  v13 = v7;
  v8 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v13;
  v10 = v7;

  return v7;
}

void __ML3KindsPassingTest_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __ML3KindsPassingTest_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v4];
  }
}

uint64_t __Block_byref_object_copy__19317(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22D4E5548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4E5CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D4E67F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose((v17 - 176), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4E6E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4E7410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose((v15 - 160), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22D4E771C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    v12 = MEMORY[0x277CCACA8];
    v15 = [v11 description];
    v13 = [v12 stringWithFormat:@"*** Database Exception: %@"];

    v14 = _ML3LogCategoryWriter();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
    }

    [ML3MediaLibraryWriter writerErrorWithCode:301 description:v13];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x22D4E7604);
  }

  _Unwind_Resume(a1);
}

void sub_22D4E7C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t buf, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void sub_22D4E9FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::string>,void *>>>::operator()[abi:ne200100](1, v17);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t __Block_byref_object_copy__19745(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ML3SpotlightNameCacheTimer(void)
{
  v1 = __nameCache;
  if (__nameCache)
  {
    if (*(__nameCache + 48) == 1)
    {
      __nameCache = 0;
    }

    else
    {
      *(__nameCache + 48) = 1;
      v2 = dispatch_time(0, 20000000000);
      v3 = __nameCacheAccessQueue;

      dispatch_after(v2, v3, &__block_literal_global_109);
    }
  }
}

uint64_t ___ZL22ML3NameCacheInitializev_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.ml.SpotlightNameCache", 0);
  v1 = __nameCacheLoadingQueue;
  __nameCacheLoadingQueue = v0;

  v2 = dispatch_queue_create("com.apple.ml.SpotlightNameCacheAccess", 0);
  v3 = __nameCacheAccessQueue;
  __nameCacheAccessQueue = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_22D4EAAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  operator delete(v10);

  _Unwind_Resume(a1);
}

void ML3SpotlightMatchingNameCacheTimer(ML3SpotlightMatchingNameCache *a1)
{
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void ML3SpotlightMatchingNameCacheTimer(ML3SpotlightMatchingNameCache *__strong)"];
    [v6 handleFailureInFunction:v7 file:@"ML3SpotlightQuery.mm" lineNumber:259 description:@"invalid parameter"];
  }

  if (v1->_idle)
  {
    v2 = __nameCacheAccessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZL34ML3SpotlightMatchingNameCacheTimerP29ML3SpotlightMatchingNameCache_block_invoke;
    block[3] = &unk_278765FB8;
    v3 = &v11;
    v11 = v1;
    dispatch_async(v2, block);
LABEL_7:

    goto LABEL_8;
  }

  if (__matchingNameCache == v1)
  {
    *(__matchingNameCache + 56) = 1;
    v4 = dispatch_time(0, 20000000000);
    v5 = __nameCacheAccessQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZL34ML3SpotlightMatchingNameCacheTimerP29ML3SpotlightMatchingNameCache_block_invoke_2;
    v8[3] = &unk_278765FB8;
    v3 = &v9;
    v9 = v1;
    dispatch_after(v4, v5, v8);
    goto LABEL_7;
  }

LABEL_8:
}

void ___ZL34ML3SpotlightMatchingNameCacheTimerP29ML3SpotlightMatchingNameCache_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = __matchingNameCache;
  if (v1 == __matchingNameCache)
  {
    __matchingNameCache = 0;
  }
}

void ML3SpotlightMatch(sqlite3_context *a1, int a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (a2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v8 = __ML3SpotlightMatch_block_invoke;
    v9 = &unk_278764118;
    v12 = a2;
    v10 = &v13;
    v11 = a3;
    v4 = v7;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__19745;
    v22 = __Block_byref_object_dispose__19746;
    v23 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZL45ML3SpotlightMatchingNamesCacheAccessWithBlockU13block_pointerFvRNSt3__113unordered_setIxNS_4hashIxEENS_8equal_toIxEENS_9allocatorIxEEEEE_block_invoke;
    block[3] = &unk_278764EF0;
    block[4] = &v18;
    dispatch_sync(__nameCacheAccessQueue, block);
    v5 = v19[5];
    if (v5)
    {
      v8(v4, (v5 + 8));
    }

    _Block_object_dispose(&v18, 8);

    v6 = *(v14 + 6);
  }

  sqlite3_result_int(a1, v6);
  _Block_object_dispose(&v13, 8);
}

void sub_22D4EB744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v9 - 96), 8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

int *__ML3SpotlightMatch_block_invoke(int *result, void *a2)
{
  if (result[12] >= 1)
  {
    v3 = result;
    v4 = 0;
    while (1)
    {
      v5 = sqlite3_value_int64(*(*(v3 + 5) + 8 * v4));
      result = std::__hash_table<std::__hash_value_type<long long,long long>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,long long>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,long long>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,long long>>>::find<long long>(a2, v5);
      v6 = v3[12];
      if (result)
      {
        break;
      }

      if (++v4 >= v6)
      {
        return result;
      }
    }

    *(*(*(v3 + 4) + 8) + 24) = v6 - v4;
  }

  return result;
}

id ML3SpotlightMatchPredicateNameForID(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__19745;
  v15 = __Block_byref_object_dispose__19746;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = __ML3SpotlightMatchPredicateNameForID_block_invoke;
  v8 = &unk_278764140;
  v9 = &v11;
  v10 = a2;
  v2 = v6;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19745;
  v22 = __Block_byref_object_dispose__19746;
  v23 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZL35ML3SpotlightNameCacheNamesAccessMapU13block_pointerFvRNSt3__113unordered_mapIxNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_4hashIxEENS_8equal_toIxEENS4_INS_4pairIKxS6_EEEEEEE_block_invoke;
  block[3] = &unk_278764EF0;
  block[4] = &v18;
  dispatch_sync(__nameCacheAccessQueue, block);
  v3 = v19[5];
  if (v3)
  {
    v7(v2, (v3 + 8));
  }

  _Block_object_dispose(&v18, 8);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

void sub_22D4EB9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose((v22 - 80), 8);

  _Block_object_dispose(&a16, 8);
  _Unwind_Resume(a1);
}

void __ML3SpotlightMatchPredicateNameForID_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = vcnt_s8(v3);
    v5.i16[0] = vaddlv_u8(v5);
    if (v5.u32[0] > 1uLL)
    {
      v6 = *(a1 + 40);
      if (v4 >= *&v3)
      {
        v6 = v4 % *&v3;
      }
    }

    else
    {
      v6 = (*&v3 - 1) & v4;
    }

    v7 = *(*a2 + 8 * v6);
    if (v7)
    {
      for (i = *v7; i; i = *i)
      {
        v9 = i[1];
        if (v9 == v4)
        {
          if (i[2] == v4)
          {
            if (*(i + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, i[3], i[4]);
            }

            else
            {
              __p = *(i + 1);
            }

            goto LABEL_18;
          }
        }

        else
        {
          if (v5.u32[0] > 1uLL)
          {
            if (v9 >= *&v3)
            {
              v9 %= *&v3;
            }
          }

          else
          {
            v9 &= *&v3 - 1;
          }

          if (v9 != v6)
          {
            break;
          }
        }
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, 0);
LABEL_18:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithCString:p_p encoding:{4, *&__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[2]}];
  v12 = *(*(a1 + 32) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_22D4EBB48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D4EBF74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22D4ED1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19995(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void -[MLMediaLibraryResourcesServiceServer _blockExecutionForOnGoingAccountChangeIfNeeded](MLMediaLibraryResourcesServiceServer *self, SEL a2)
{
  v2 = [(MLMediaLibraryResourcesServiceServer *)self accountChangeSemaphore];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_22D4ED7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, id a26)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak((v27 + 40));
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  _Unwind_Resume(a1);
}

void sub_22D4EDDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ML3ProtocolMediaTypeForMLMediaType(uint64_t result)
{
  if (result > 63)
  {
    if (result <= 1023)
    {
      switch(result)
      {
        case 0x40:
          return 9;
        case 0x100:
          return 6;
        case 0x200:
          return 3;
      }
    }

    else if (result > 4095)
    {
      if (result == 4096)
      {
        return 11;
      }

      if (result == 0x2000)
      {
        return 12;
      }
    }

    else
    {
      if (result == 1024)
      {
        return 7;
      }

      if (result == 2048)
      {
        return 2;
      }
    }

    goto LABEL_31;
  }

  if (result > 7)
  {
    switch(result)
    {
      case 8:
        return 1;
      case 0x10:
        return 5;
      case 0x20:
        return 10;
    }

    goto LABEL_31;
  }

  if (result == 1)
  {
    return 13;
  }

  if (result == 2)
  {
    return 8;
  }

  if (result != 4)
  {
LABEL_31:
    if ((result & 4) != 0)
    {
      v1 = 4;
    }

    else
    {
      v1 = (result >> 3) & 1;
    }

    if ((result & 0x400) != 0)
    {
      return 7;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

uint64_t ML3MLMediaTypeForProtocolMediaType(int a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return dword_22D5C9BB4[a1 - 1];
  }
}

uint64_t MLFrameworkBundle()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

void sub_22D4F5404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  *v9 = v11;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(v12);
  operator delete(v13);
  MEMORY[0x2318CD250](v9, v10);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3MatchDeleteAlbumImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3MatchDeleteAlbumImportItem>,std::allocator<ML3MatchDeleteAlbumImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI23ML3DAAPDeleteImportItemE27__shared_ptr_default_deleteIS1_29ML3MatchDeleteAlbumImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3MatchDeleteAlbumImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3MatchDeleteAlbumImportItem>,std::allocator<ML3MatchDeleteAlbumImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3MatchDeleteAlbumImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3MatchDeleteAlbumImportItem>,std::allocator<ML3MatchDeleteAlbumImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D4F56B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  *v9 = v11;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table(v12);
  operator delete(v13);
  MEMORY[0x2318CD250](v9, v10);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3MatchDeleteArtistImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3MatchDeleteArtistImportItem>,std::allocator<ML3MatchDeleteArtistImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI23ML3DAAPDeleteImportItemE27__shared_ptr_default_deleteIS1_30ML3MatchDeleteArtistImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3MatchDeleteArtistImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3MatchDeleteArtistImportItem>,std::allocator<ML3MatchDeleteArtistImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3MatchDeleteArtistImportItem *,std::shared_ptr<ML3DAAPDeleteImportItem>::__shared_ptr_default_delete<ML3DAAPDeleteImportItem,ML3MatchDeleteArtistImportItem>,std::allocator<ML3MatchDeleteArtistImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D4F590C(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3MatchLibraryPinImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchLibraryPinImportItem>,std::allocator<ML3MatchLibraryPinImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_28ML3MatchLibraryPinImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3MatchLibraryPinImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchLibraryPinImportItem>,std::allocator<ML3MatchLibraryPinImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3MatchLibraryPinImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchLibraryPinImportItem>,std::allocator<ML3MatchLibraryPinImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D4F5B74(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3MatchArtistImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchArtistImportItem>,std::allocator<ML3MatchArtistImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_24ML3MatchArtistImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3MatchArtistImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchArtistImportItem>,std::allocator<ML3MatchArtistImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3MatchArtistImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchArtistImportItem>,std::allocator<ML3MatchArtistImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D4F5E08(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3MatchAlbumImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchAlbumImportItem>,std::allocator<ML3MatchAlbumImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_23ML3MatchAlbumImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3MatchAlbumImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchAlbumImportItem>,std::allocator<ML3MatchAlbumImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3MatchAlbumImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchAlbumImportItem>,std::allocator<ML3MatchAlbumImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D4F6174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p)
{
  (*(*v20 + 8))(v20);
  *(v22 - 72) = &a10;
  std::vector<std::unordered_set<std::string>>::__destroy_vector::operator()[abi:ne200100]((v22 - 72));
  if (v21)
  {
    operator delete(v21);
    if (!v19)
    {
      goto LABEL_3;
    }
  }

  else if (!v19)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v19);
LABEL_3:
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3MatchContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchContainerImportItem>,std::allocator<ML3MatchContainerImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_27ML3MatchContainerImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3MatchContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchContainerImportItem>,std::allocator<ML3MatchContainerImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3MatchContainerImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchContainerImportItem>,std::allocator<ML3MatchContainerImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D4F63F4(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<ML3MatchImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchImportItem>,std::allocator<ML3MatchImportItem>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI17ML3DAAPImportItemE27__shared_ptr_default_deleteIS1_18ML3MatchImportItemEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<ML3MatchImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchImportItem>,std::allocator<ML3MatchImportItem>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<ML3MatchImportItem *,std::shared_ptr<ML3DAAPImportItem>::__shared_ptr_default_delete<ML3DAAPImportItem,ML3MatchImportItem>,std::allocator<ML3MatchImportItem>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2318CD250);
}

void sub_22D4F65C8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ML3SetCloudIDImportItem::~ML3SetCloudIDImportItem(id *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

id ML3SetCloudIDTrackImportItem::getDeduplicationPredicates(ML3SetCloudIDTrackImportItem *this)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:*(this + 1)];
  v4[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

uint64_t ML3SetCloudIDTrackImportItem::getDescription(ML3SetCloudIDTrackImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "<ML3SetCloudIDTrackImportItem ", 30);
  *(&v8 + *(v8 - 24) + 8) = *(&v8 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v8, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " persistentID=", 14);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = MEMORY[0x2318CD140]();
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", cloudID=", 10);
  v6 = MEMORY[0x2318CD140](v5, *(this + 9));
  v13 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v13, 1);
  std::stringbuf::str();
  v8 = *MEMORY[0x277D82828];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v12);
}

uint64_t ML3SetCloudIDTrackImportItem::getIntegerValue(ML3SetCloudIDTrackImportItem *this, int a2)
{
  if (a2 == 100663305)
  {
    return *(this + 9);
  }

  else
  {
    return 0;
  }
}

void ML3SetCloudIDTrackImportItem::~ML3SetCloudIDTrackImportItem(id *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t ML3SetCloudIDArtistImportItem::getDescription(ML3SetCloudIDArtistImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v4, "<ML3SetCloudIDArtistImportItem ", 31);
  *(&v4 + *(v4 - 24) + 8) = *(&v4 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v4, this);
  v9 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, &v9, 1);
  std::stringbuf::str();
  v4 = *MEMORY[0x277D82828];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x277D82828] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v8);
}

void ML3SetCloudIDArtistImportItem::~ML3SetCloudIDArtistImportItem(id *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

uint64_t ML3SetCloudIDAlbumImportItem::getDescription(ML3SetCloudIDAlbumImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v4, "<ML3SetCloudIDAlbumImportItem ", 30);
  *(&v4 + *(v4 - 24) + 8) = *(&v4 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v4, this);
  v9 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, &v9, 1);
  std::stringbuf::str();
  v4 = *MEMORY[0x277D82828];
  *(&v4 + *(v4 - 24)) = *(MEMORY[0x277D82828] + 24);
  v5 = MEMORY[0x277D82878] + 16;
  if (v7 < 0)
  {
    operator delete(v6[7].__locale_);
  }

  v5 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v6);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v8);
}

void ML3SetCloudIDAlbumImportItem::~ML3SetCloudIDAlbumImportItem(id *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

id ML3SetCloudIDContainerImportItem::getDeduplicationPredicates(ML3SetCloudIDContainerImportItem *this)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = [ML3ComparisonPredicate predicateWithProperty:@"container_pid" equalToInt64:*(this + 1)];
  v4[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

uint64_t ML3SetCloudIDContainerImportItem::getDescription(ML3SetCloudIDContainerImportItem *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "<ML3SetCloudIDContainerImportItem ", 34);
  *(&v8 + *(v8 - 24) + 8) = *(&v8 + *(v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v2 = MEMORY[0x2318CD100](&v8, this);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " persistentID=", 14);
  *(v3 + *(*v3 - 24) + 8) = *(v3 + *(*v3 - 24) + 8) & 0xFFFFFFB5 | 2;
  v4 = MEMORY[0x2318CD140]();
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", cloudID=", 10);
  v6 = MEMORY[0x2318CD140](v5, *(this + 9));
  v13 = 62;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, &v13, 1);
  std::stringbuf::str();
  v8 = *MEMORY[0x277D82828];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x2318CD1F0](&v12);
}

uint64_t ML3SetCloudIDContainerImportItem::getIntegerValue(ML3SetCloudIDContainerImportItem *this, int a2)
{
  if (a2 == 184549408)
  {
    return *(this + 9);
  }

  else
  {
    return 0;
  }
}

void ML3SetCloudIDContainerImportItem::~ML3SetCloudIDContainerImportItem(id *this)
{
  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));

  JUMPOUT(0x2318CD250);
}

{

  *this = off_2840859C8;
  std::__hash_table<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,ML3ImportValue<std::string>>>>::~__hash_table((this + 3));
}

void ML3SetCloudIDImportItem::ML3SetCloudIDImportItem(ML3SetCloudIDImportItem *this, NSDictionary *a2)
{
  v3 = a2;
  *(this + 8) = 256;
  *(this + 18) = 1;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 1065353216;
  *this = &unk_284087EA0;
  *(this + 1) = 0;
  v4 = v3;
  *(this + 8) = v4;
  *(this + 17) = 0;
}

void sub_22D4F7DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20876(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _ML3LogReplyError(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = MEMORY[0x277CCACA8];
  v12 = a2;
  v13 = [[v11 alloc] initWithFormat:v12 arguments:&a9];

  v14 = os_log_create("com.apple.amp.medialibrary", "Service");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v16 = v13;
    v17 = 2114;
    v18 = v10;
    _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "%{public}@ There was an error waiting for a reply from the media library service. %{public}@", buf, 0x16u);
  }
}

void sub_22D4F8380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_22D4F886C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 200), 8);
  _Block_object_dispose((v32 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_22D4F9878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_22D4FAA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22D4FB054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_22D4FBA18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}