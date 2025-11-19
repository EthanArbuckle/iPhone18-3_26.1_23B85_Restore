uint64_t sub_10004B9BC(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v3 = [NSMutableString stringWithFormat:@"SELECT localIdentifier FROM ProcessingStatus "];
  v4 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"WHERE taskID=(?) AND status NOT IN (?");
  for (i = 1; i < [*(a1 + 32) count]; ++i)
  {
    [v4 appendString:{@", ?"}];
  }

  [v4 appendFormat:@" AND nextAttemptDate<(?) "]);
  if (*(a1 + 40))
  {
    [v4 appendString:?];
  }

  [v3 appendString:v4];
  [v3 appendFormat:@"ORDER BY id ASC LIMIT (?);"];
  ppStmt = 0;
  v6 = sqlite3_prepare_v2(*(*(a1 + 48) + 24), [v3 UTF8String], -1, &ppStmt, 0);
  if (v6)
  {
    goto LABEL_24;
  }

  v6 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 56));
  if (v6)
  {
    goto LABEL_24;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v8)
  {
    v9 = *v24;
    v10 = 2;
    while (2)
    {
      for (j = 0; j != v8; j = j + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v6 = sqlite3_bind_int64(ppStmt, v10, [*(*(&v23 + 1) + 8 * j) intValue]);
        if (v6)
        {

          goto LABEL_24;
        }

        ++v10;
      }

      v8 = [v7 countByEnumeratingWithState:&v23 objects:v34 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 2;
  }

  v12 = ppStmt;
  v13 = +[NSDate now];
  v14 = v13;
  if (v13)
  {
    [v13 timeIntervalSinceReferenceDate];
    v16 = sqlite3_bind_double(v12, v10, v15);
  }

  else
  {
    v16 = sqlite3_bind_null(v12, v10);
  }

  v6 = v16;

  if (v6)
  {
    goto LABEL_24;
  }

  v6 = sqlite3_bind_int64(ppStmt, v10 + 1, *(a1 + 64));
  if (v6)
  {
    goto LABEL_24;
  }

  v19 = sqlite3_expanded_sql(ppStmt);
  if (v19)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v29 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v30 = 1024;
      v31 = 2585;
      v32 = 2080;
      v33 = v19;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v19);
  }

  v6 = sqlite3_step(ppStmt);
  v20 = VCPLogToOSLogType[4];
  while (v6 == 100)
  {
    v21 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5 || ([NSString stringWithUTF8String:sqlite3_column_text(v21, 0)], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v20))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v20, "Detected bad localIdentifier in ProcessingStatus", buf, 2u);
      }

      v22 = 0;
    }

    else
    {
      [v2 addObject:v22];
    }

    v6 = sqlite3_step(ppStmt);
  }

  if (v6 && v6 != 101)
  {
LABEL_24:

    v2 = 0;
  }

  else
  {
    v6 = 0;
  }

  sqlite3_finalize(ppStmt);
  v17 = v2;
  **(a1 + 72) = v2;

  return v6;
}

uint64_t sub_10004C088(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  ppStmt = 0;
  v3 = [NSMutableString stringWithFormat:@"SELECT localIdentifier FROM ProcessingStatus "];
  v4 = [NSMutableString stringWithFormat:@"WHERE taskID=(?) AND status=(?) AND attempts=(?) "];
  v5 = v4;
  if (*(a1 + 32))
  {
    [v4 appendString:?];
  }

  [v3 appendString:v5];
  [v3 appendFormat:@"ORDER BY id ASC LIMIT (?);"];
  v6 = sqlite3_prepare_v2(*(*(a1 + 40) + 24), [v3 UTF8String], -1, &ppStmt, 0);
  if (v6)
  {
    goto LABEL_8;
  }

  v6 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 48));
  if (v6)
  {
    goto LABEL_8;
  }

  v6 = sqlite3_bind_int64(ppStmt, 2, *(a1 + 56));
  if (v6)
  {
    goto LABEL_8;
  }

  v6 = sqlite3_bind_int(ppStmt, 3, *(a1 + 80));
  if (v6)
  {
    goto LABEL_8;
  }

  v6 = sqlite3_bind_int64(ppStmt, 4, *(a1 + 64));
  if (v6)
  {
    goto LABEL_8;
  }

  v9 = sqlite3_expanded_sql(ppStmt);
  if (v9)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v15 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v16 = 1024;
      v17 = 2636;
      v18 = 2080;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v9);
  }

  v6 = sqlite3_step(ppStmt);
  v10 = VCPLogToOSLogType[4];
  while (v6 == 100)
  {
    v11 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5 || ([NSString stringWithUTF8String:sqlite3_column_text(v11, 0)], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Detected bad localIdentifier in ProcessingStatus", buf, 2u);
      }

      v12 = 0;
    }

    else
    {
      [v2 addObject:v12];
    }

    v6 = sqlite3_step(ppStmt);
  }

  if (v6 && v6 != 101)
  {
LABEL_8:

    v2 = 0;
  }

  else
  {
    v6 = 0;
  }

  sqlite3_finalize(ppStmt);
  v7 = v2;
  **(a1 + 72) = v2;

  return v6;
}

uint64_t sub_10004C6A8(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  ppStmt = 0;
  v3 = [NSMutableString stringWithFormat:@"SELECT localIdentifier FROM ProcessingStatus "];
  v4 = [NSMutableString stringWithFormat:@"WHERE taskID=(?) AND status=(?) "];
  v5 = v4;
  if (*(a1 + 32))
  {
    [v4 appendString:?];
  }

  [v3 appendString:v5];
  [v3 appendFormat:@"ORDER BY id ASC;"];
  v6 = sqlite3_prepare_v2(*(*(a1 + 40) + 24), [v3 UTF8String], -1, &ppStmt, 0);
  if (v6)
  {
    goto LABEL_6;
  }

  v6 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 48));
  if (v6)
  {
    goto LABEL_6;
  }

  v6 = sqlite3_bind_int64(ppStmt, 2, *(a1 + 56));
  if (v6)
  {
    goto LABEL_6;
  }

  v9 = sqlite3_expanded_sql(ppStmt);
  if (v9)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v15 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v16 = 1024;
      v17 = 2701;
      v18 = 2080;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v9);
  }

  v6 = sqlite3_step(ppStmt);
  v10 = VCPLogToOSLogType[4];
  while (v6 == 100)
  {
    v11 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5 || ([NSString stringWithUTF8String:sqlite3_column_text(v11, 0)], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "Detected bad localIdentifier in ProcessingStatus", buf, 2u);
      }

      v12 = 0;
    }

    else
    {
      [v2 addObject:v12];
    }

    v6 = sqlite3_step(ppStmt);
  }

  if (v6 && v6 != 101)
  {
LABEL_6:

    v2 = 0;
  }

  else
  {
    v6 = 0;
  }

  sqlite3_finalize(ppStmt);
  v7 = v2;
  **(a1 + 64) = v2;

  return v6;
}

uint64_t sub_10004CC7C(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), [@"SELECT errorCode errorLine FROM ProcessingStatus WHERE taskID=(?) AND localIdentifier=(?);"], -1, &ppStmt, 0);
  if (!v2)
  {
    v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 48));
    if (!v2)
    {
      v3 = ppStmt;
      v4 = *(a1 + 40);
      v5 = v4;
      if (v4)
      {
        v6 = v4;
        v7 = sqlite3_bind_text(v3, 2, [v5 UTF8String], -1, 0);
      }

      else
      {
        v7 = sqlite3_bind_null(v3, 2);
      }

      v2 = v7;

      if (!v2)
      {
        v8 = sqlite3_expanded_sql(ppStmt);
        if (v8)
        {
          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
            v14 = 1024;
            v15 = 2758;
            v16 = 2080;
            v17 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
          }

          sqlite3_free(v8);
        }

        v9 = sqlite3_step(ppStmt);
        if (v9 == 100)
        {
          **(a1 + 56) = sqlite3_column_int64(ppStmt, 0);
          **(a1 + 64) = sqlite3_column_int64(ppStmt, 1);
          v9 = sqlite3_step(ppStmt);
        }

        if (v9 == 101)
        {
          v2 = 0;
        }

        else
        {
          v2 = v9;
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_10004D084(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  ppStmt = 0;
  v3 = [NSMutableString stringWithFormat:@"SELECT errorCode, count(*) FROM ProcessingStatus "];
  v4 = [NSMutableString stringWithFormat:@"WHERE taskID=(?) AND lastAttemptDate>=(?) "];
  v5 = v4;
  if (*(a1 + 32))
  {
    [v4 appendString:?];
  }

  [v3 appendString:v5];
  [v3 appendFormat:@"GROUP BY errorCode;"];
  v6 = sqlite3_prepare_v2(*(*(a1 + 40) + 24), [v3 UTF8String], -1, &ppStmt, 0);
  if (v6)
  {
    goto LABEL_9;
  }

  v6 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 56));
  if (v6)
  {
    goto LABEL_9;
  }

  v7 = ppStmt;
  v8 = *(a1 + 48);
  v9 = v8;
  if (v8)
  {
    [v8 timeIntervalSinceReferenceDate];
    v11 = sqlite3_bind_double(v7, 2, v10);
  }

  else
  {
    v11 = sqlite3_bind_null(v7, 2);
  }

  v6 = v11;

  if (v6)
  {
    goto LABEL_9;
  }

  v14 = sqlite3_expanded_sql(ppStmt);
  if (v14)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v22 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v23 = 1024;
      LODWORD(v24[0]) = 2801;
      WORD2(v24[0]) = 2080;
      *(v24 + 6) = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v14);
  }

  v6 = sqlite3_step(ppStmt);
  v15 = VCPLogToOSLogType[4];
  while (v6 == 100)
  {
    v16 = sqlite3_column_int64(ppStmt, 0);
    v17 = sqlite3_column_int64(ppStmt, 1);
    if (v16 < 0xA0)
    {
      v18 = [NSNumber numberWithLongLong:v17];
      v19 = [NSNumber numberWithLongLong:v16];
      [v2 setObject:v18 forKey:v19];
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v15))
    {
      *buf = 134218240;
      v22 = v16;
      v23 = 2048;
      v24[0] = v17;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Detected bad errorCode %lld in ProcessingStatus with count %lld", buf, 0x16u);
    }

    v6 = sqlite3_step(ppStmt);
  }

  if (v6 && v6 != 101)
  {
LABEL_9:

    v2 = 0;
  }

  else
  {
    v6 = 0;
  }

  sqlite3_finalize(ppStmt);
  v12 = v2;
  **(a1 + 64) = v2;

  return v6;
}

uint64_t sub_10004D6DC(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "REPLACE INTO ProcessingStatus (taskID, localIdentifier, lastAttemptDate, nextAttemptDate, errorCode, errorLine, mediaType, mediaSubtypes, attempts, status) VALUES ((?), (?), (?), (?), (?), (?), (?), (?), (?), (?));", -1, &ppStmt, 0);
  if (!v2)
  {
    v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 64));
    if (!v2)
    {
      v3 = ppStmt;
      v4 = [*(a1 + 40) localIdentifier];
      v5 = v4;
      if (v4)
      {
        v6 = v4;
        v7 = sqlite3_bind_text(v3, 2, [v5 UTF8String], -1, 0);
      }

      else
      {
        v7 = sqlite3_bind_null(v3, 2);
      }

      v2 = v7;

      if (!v2)
      {
        v8 = ppStmt;
        v9 = *(a1 + 48);
        v10 = v9;
        if (v9)
        {
          [v9 timeIntervalSinceReferenceDate];
          v12 = sqlite3_bind_double(v8, 3, v11);
        }

        else
        {
          v12 = sqlite3_bind_null(v8, 3);
        }

        v2 = v12;

        if (!v2)
        {
          v2 = sub_100040220(ppStmt, 4, *(a1 + 56));
          if (!v2)
          {
            v2 = sqlite3_bind_int64(ppStmt, 5, *(a1 + 72));
            if (!v2)
            {
              v2 = sqlite3_bind_int64(ppStmt, 6, *(a1 + 80));
              if (!v2)
              {
                v2 = sqlite3_bind_int64(ppStmt, 7, *(a1 + 88));
                if (!v2)
                {
                  v2 = sqlite3_bind_int64(ppStmt, 8, *(a1 + 96));
                  if (!v2)
                  {
                    v2 = sqlite3_bind_int64(ppStmt, 9, *(a1 + 104));
                    if (!v2)
                    {
                      v2 = sqlite3_bind_int64(ppStmt, 10, *(a1 + 112));
                      if (!v2)
                      {
                        v13 = sqlite3_expanded_sql(ppStmt);
                        if (v13)
                        {
                          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 136315650;
                            v18 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
                            v19 = 1024;
                            v20 = 2859;
                            v21 = 2080;
                            v22 = v13;
                            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
                          }

                          sqlite3_free(v13);
                        }

                        v14 = sqlite3_step(ppStmt);
                        if (v14 == 101)
                        {
                          v2 = 0;
                        }

                        else
                        {
                          v2 = v14;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_10004DD20(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "DELETE FROM ProcessingStatus WHERE taskID=(?) AND localIdentifier=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 48));
    if (!v2)
    {
      v3 = ppStmt;
      v4 = *(a1 + 40);
      v5 = v4;
      if (v4)
      {
        v6 = v4;
        v7 = sqlite3_bind_text(v3, 2, [v5 UTF8String], -1, 0);
      }

      else
      {
        v7 = sqlite3_bind_null(v3, 2);
      }

      v2 = v7;

      if (!v2)
      {
        v8 = sqlite3_expanded_sql(ppStmt);
        if (v8)
        {
          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
            v14 = 1024;
            v15 = 2927;
            v16 = 2080;
            v17 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
          }

          sqlite3_free(v8);
        }

        v9 = sqlite3_step(ppStmt);
        if (v9 == 101)
        {
          v2 = 0;
        }

        else
        {
          v2 = v9;
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_10004E1BC(void *a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(a1[4] + 24), "DELETE FROM ProcessingStatus WHERE taskID=(?) AND mediaType=(?) AND mediaSubtypes=(?);", -1, &ppStmt, 0);
  if (v2 || (v2 = sqlite3_bind_int64(ppStmt, 1, a1[5]), v2) || (v2 = sqlite3_bind_int64(ppStmt, 2, a1[6]), v2) || (v2 = sqlite3_bind_int64(ppStmt, 3, a1[7]), v2))
  {
    v3 = v2;
  }

  else
  {
    v5 = sqlite3_expanded_sql(ppStmt);
    if (v5)
    {
      v6 = v5;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v11 = 1024;
        v12 = 2965;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v6);
    }

    v7 = sqlite3_step(ppStmt);
    if (v7 == 101)
    {
      v3 = 0;
    }

    else
    {
      v3 = v7;
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

uint64_t sub_10004E54C(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "UPDATE ProcessingStatus SET status=(?), nextAttemptDate=(?), errorCode=(?), errorLine=(?) WHERE taskID=(?) AND localIdentifier=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 56));
    if (!v2)
    {
      v3 = ppStmt;
      v4 = *(a1 + 40);
      v5 = v4;
      if (v4)
      {
        [v4 timeIntervalSinceReferenceDate];
        v7 = sqlite3_bind_double(v3, 2, v6);
      }

      else
      {
        v7 = sqlite3_bind_null(v3, 2);
      }

      v2 = v7;

      if (!v2)
      {
        v2 = sqlite3_bind_int64(ppStmt, 3, *(a1 + 64));
        if (!v2)
        {
          v2 = sqlite3_bind_int64(ppStmt, 4, *(a1 + 72));
          if (!v2)
          {
            v2 = sqlite3_bind_int64(ppStmt, 5, *(a1 + 80));
            if (!v2)
            {
              v2 = sub_10003E748(ppStmt, 6, *(a1 + 48));
              if (!v2)
              {
                v8 = sqlite3_expanded_sql(ppStmt);
                if (v8)
                {
                  if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
                    v14 = 1024;
                    v15 = 2998;
                    v16 = 2080;
                    v17 = v8;
                    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
                  }

                  sqlite3_free(v8);
                }

                v9 = sqlite3_step(ppStmt);
                if (v9 == 101)
                {
                  v2 = 0;
                }

                else
                {
                  v2 = v9;
                }
              }
            }
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_10004E9E0(void *a1)
{
  ppStmt = 0;
  v2 = [NSMutableString stringWithFormat:@"UPDATE ProcessingStatus SET status=(?) "];
  v3 = [NSMutableString stringWithFormat:@"WHERE taskID=(?) "];
  v4 = v3;
  if (a1[4])
  {
    [v3 appendString:?];
  }

  [v4 appendFormat:@"AND status=(?);"];
  [v2 appendString:v4];
  v5 = sqlite3_prepare_v2(*(a1[5] + 24), [v2 UTF8String], -1, &ppStmt, 0);
  if (!v5)
  {
    v5 = sqlite3_bind_int64(ppStmt, 1, 4);
    if (!v5)
    {
      v5 = sqlite3_bind_int64(ppStmt, 2, a1[6]);
      if (!v5)
      {
        v5 = sqlite3_bind_int64(ppStmt, 3, 1);
        if (!v5)
        {
          v6 = sqlite3_expanded_sql(ppStmt);
          if (v6)
          {
            if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v11 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
              v12 = 1024;
              v13 = 3047;
              v14 = 2080;
              v15 = v6;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
            }

            sqlite3_free(v6);
          }

          v7 = sqlite3_step(ppStmt);
          if (v7 == 101)
          {
            v5 = 0;
          }

          else
          {
            v5 = v7;
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);

  return v5;
}

id sub_10004F360(uint64_t a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
  v3 = [*(a1 + 32) _removeSchedulingHistoryForStartTimeBefore:v2];
  if (!v3)
  {
    v3 = [*(a1 + 32) _storeSchedulingHistoryForActivityID:*(a1 + 48) andStartTime:*(a1 + 40)];
  }

  return v3;
}

uint64_t sub_10004F614(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "REPLACE INTO BackgroundActivitySchedulingHistory (activityID, startTime, duration, exitStatus, sessionLog) VALUES ((?), (?), (?), (?), (?));", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_25;
  }

  v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 56));
  if (v2)
  {
    goto LABEL_25;
  }

  v3 = ppStmt;
  v4 = *(a1 + 40);
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    v7 = sqlite3_bind_double(v3, 2, v6);
  }

  else
  {
    v7 = sqlite3_bind_null(v3, 2);
  }

  v2 = v7;

  if (v2)
  {
    goto LABEL_25;
  }

  v2 = sqlite3_bind_double(ppStmt, 3, *(a1 + 64));
  if (v2)
  {
    goto LABEL_25;
  }

  v2 = sqlite3_bind_int64(ppStmt, 4, *(a1 + 72));
  if (v2)
  {
    goto LABEL_25;
  }

  v2 = sub_10003E748(ppStmt, 5, *(a1 + 48));
  if (v2)
  {
    goto LABEL_25;
  }

  v15 = sqlite3_expanded_sql(ppStmt);
  if (v15)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v19 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v20 = 1024;
      v21 = 3161;
      v22 = 2080;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v15);
  }

  v16 = sqlite3_step(ppStmt);
  v2 = v16;
  v13 = 0;
  if (v16)
  {
    if (v16 != 101)
    {
LABEL_25:
      if (MediaAnalysisLogLevel() >= 3)
      {
        v8 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          v9 = *(a1 + 72);
          v10 = *(a1 + 64);
          v11 = VCPTaskIDDescription();
          v12 = *(a1 + 40);
          *buf = 134218754;
          v19 = v10;
          v20 = 1024;
          v21 = v9;
          v22 = 2112;
          v23 = v11;
          v24 = 2112;
          v25 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[SchedulingHistory] Failed to update (duration: %f, exitStatus: %d) for background activity %@ and start time %@", buf, 0x26u);
        }
      }

      v13 = v2;
    }
  }

  sqlite3_finalize(ppStmt);
  return v13;
}

void sub_10004FADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10004FB1C(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT activityID, startTime, duration, exitStatus, sessionLog FROM BackgroundActivitySchedulingHistory WHERE activityID=(?) AND startTime>=(?);", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_31;
  }

  v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 56));
  if (v2)
  {
    goto LABEL_31;
  }

  v3 = ppStmt;
  v4 = *(a1 + 40);
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceReferenceDate];
    v7 = sqlite3_bind_double(v3, 2, v6);
  }

  else
  {
    v7 = sqlite3_bind_null(v3, 2);
  }

  v2 = v7;

  if (v2)
  {
    goto LABEL_31;
  }

  v13 = sqlite3_expanded_sql(ppStmt);
  if (v13)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v21 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v22 = 1024;
      v23 = 3193;
      v24 = 2080;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v13);
  }

  v2 = sqlite3_step(ppStmt);
  while (v2 == 100)
  {
    v14 = objc_alloc_init(MADActivitySchedulingRecord);
    [v14 setActivityID:*(a1 + 56)];
    v15 = ppStmt;
    if (sqlite3_column_type(ppStmt, 1) == 5)
    {
      v16 = 0;
    }

    else
    {
      v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(v15, 1)];
    }

    [v14 setStartTime:v16];

    [v14 setDuration:{sqlite3_column_double(ppStmt, 2)}];
    [v14 setExitStatus:{sqlite3_column_int64(ppStmt, 3)}];
    v17 = ppStmt;
    if (sqlite3_column_type(ppStmt, 4) == 5)
    {
      v18 = 0;
    }

    else
    {
      v18 = [NSString stringWithUTF8String:sqlite3_column_text(v17, 4)];
    }

    [v14 setSessionLog:v18];

    [*(*(*(a1 + 48) + 8) + 40) addObject:v14];
    v2 = sqlite3_step(ppStmt);
  }

  if (v2 && v2 != 101)
  {
LABEL_31:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v8 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        v9 = VCPTaskIDDescription();
        *buf = 138412546;
        v21 = v9;
        v22 = 1024;
        v23 = v2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[SchedulingHistory] Failed to query history %@ (%d)", buf, 0x12u);
      }
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  else
  {
    v2 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_100050028(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "DELETE FROM BackgroundActivitySchedulingHistory WHERE activityID=(?) AND id NOT IN (SELECT id FROM BackgroundActivitySchedulingHistory WHERE activityID=(?) ORDER BY startTime DESC LIMIT (?));", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_5;
  }

  v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 40));
  if (v2)
  {
    goto LABEL_5;
  }

  v2 = sqlite3_bind_int64(ppStmt, 2, *(a1 + 40));
  if (v2)
  {
    goto LABEL_5;
  }

  v2 = sqlite3_bind_int64(ppStmt, 3, 500);
  if (v2)
  {
    goto LABEL_5;
  }

  v7 = sqlite3_expanded_sql(ppStmt);
  if (v7)
  {
    v8 = v7;
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v11 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v12 = 1024;
      LODWORD(v13[0]) = 3242;
      WORD2(v13[0]) = 2080;
      *(v13 + 6) = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v8);
  }

  v2 = sqlite3_step(ppStmt);
  v3 = 0;
  if (v2)
  {
    if (v2 != 101)
    {
LABEL_5:
      v3 = v2;
      if (MediaAnalysisLogLevel() >= 3)
      {
        v4 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v4))
        {
          v5 = *(a1 + 40);
          *buf = 134218240;
          v11 = v5;
          v12 = 2048;
          v13[0] = 500;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Failed to remove scheduling history for background activity %lu over limit %lu", buf, 0x16u);
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

id sub_100050CE4(uint64_t a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
  v3 = [*(a1 + 32) _removeProgressRecordsBeforeDate:v2];
  if (!v3)
  {
    v3 = [*(a1 + 32) _removeProgressRecordsBeyondMaximum:500];
  }

  return v3;
}

uint64_t sub_100050EFC(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT totalAssetCount, processedAssetCount FROM BackgroundAnalysisProgressHistory WHERE activityID=(?) ORDER BY storeDate DESC LIMIT 1 ", -1, &ppStmt, 0);
  if (v2 || (v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 40)), v2))
  {
    v3 = v2;
  }

  else
  {
    v5 = sqlite3_expanded_sql(ppStmt);
    if (v5)
    {
      v6 = v5;
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v10 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v11 = 1024;
        v12 = 3403;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v6);
    }

    while (1)
    {
      v7 = sqlite3_step(ppStmt);
      if (v7 != 100)
      {
        break;
      }

      **(a1 + 48) = sqlite3_column_int64(ppStmt, 0);
      **(a1 + 56) = sqlite3_column_int64(ppStmt, 1);
    }

    if (v7 == 101)
    {
      v3 = 0;
    }

    else
    {
      v3 = v7;
    }
  }

  sqlite3_finalize(ppStmt);
  return v3;
}

uint64_t sub_100051714(id *a1)
{
  ppStmt = 0;
  v2 = +[NSMutableString stringWithString:](NSMutableString, "stringWithString:", @"SELECT localIdentifier, version, dateModified, dateAnalyzed, analysisTypes, flags, statsFlags, quality, masterFingerprint, adjustedFingerprint FROM Assets WHERE localIdentifier IN (?");
  for (i = 1; i < [a1[4] count]; ++i)
  {
    [v2 appendString:{@", ?"}];
  }

  [v2 appendString:@";"]);
  v4 = sqlite3_prepare_v2(*(a1[5] + 3), [v2 UTF8String], -1, &ppStmt, 0);
  if (!v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = a1[4];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v32 count:16];
    if (v6)
    {
      v7 = *v22;
      v8 = 1;
      while (2)
      {
        for (j = 0; j != v6; j = j + 1)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v10 = ppStmt;
          v11 = *(*(&v21 + 1) + 8 * j);
          v12 = v11;
          if (v11)
          {
            v13 = v11;
            v14 = sqlite3_bind_text(v10, v8, [v12 UTF8String], -1, 0);
          }

          else
          {
            v14 = sqlite3_bind_null(v10, v8);
          }

          v4 = v14;

          if (v4)
          {

            goto LABEL_33;
          }

          ++v8;
        }

        v6 = [v5 countByEnumeratingWithState:&v21 objects:v32 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v15 = sqlite3_expanded_sql(ppStmt);
    if (v15)
    {
      if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v27 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
        v28 = 1024;
        v29 = 3489;
        v30 = 2080;
        v31 = v15;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
      }

      sqlite3_free(v15);
    }

    v16 = sqlite3_step(ppStmt);
    while (v16 == 100)
    {
      v17 = ppStmt;
      if (sqlite3_column_type(ppStmt, 0) == 5)
      {
        v18 = 0;
      }

      else
      {
        v18 = [NSString stringWithUTF8String:sqlite3_column_text(v17, 0)];
      }

      v19 = +[NSMutableDictionary dictionary];
      v4 = [a1[5] parseHeader:ppStmt startColumn:1 analysis:v19];
      if (v4)
      {

        goto LABEL_33;
      }

      [a1[6] setObject:v19 forKeyedSubscript:v18];
      v16 = sqlite3_step(ppStmt);
    }

    if (v16 == 101)
    {
      v4 = 0;
    }

    else
    {
      v4 = 4294967278;
    }
  }

LABEL_33:
  sqlite3_finalize(ppStmt);

  return v4;
}

uint64_t sub_100051C90(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT key, value FROM KeyValueStore;", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_26;
  }

  v4 = sqlite3_expanded_sql(ppStmt);
  if (v4)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v12 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v13 = 1024;
      v14 = 3523;
      v15 = 2080;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v4);
  }

  v2 = sqlite3_step(ppStmt);
  v5 = VCPLogToOSLogType[4];
  while (v2 == 100)
  {
    v6 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5 || ([NSString stringWithUTF8String:sqlite3_column_text(v6, 0)], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v5))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "Parsed a value without key specified; skipping this value", buf, 2u);
      }

      v7 = 0;
    }

    else
    {
      v8 = [NSNumber numberWithLongLong:sqlite3_column_int64(ppStmt, 1)];
      [*(a1 + 40) setObject:v8 forKeyedSubscript:v7];
    }

    v2 = sqlite3_step(ppStmt);
  }

  if (v2 && v2 != 101)
  {
LABEL_26:
    if (MediaAnalysisLogLevel() >= 3)
    {
      v3 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v3))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v3, "Failed to query KeyValueStore", buf, 2u);
      }
    }
  }

  else
  {
    v2 = 0;
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

void sub_100052134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100052168(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT * FROM KeyValueStore WHERE key = (?);", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_23;
  }

  v3 = ppStmt;
  v4 = *(a1 + 40);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = sqlite3_bind_text(v3, 1, [v5 UTF8String], -1, 0);
  }

  else
  {
    v7 = sqlite3_bind_null(v3, 1);
  }

  v2 = v7;

  if (v2)
  {
    goto LABEL_23;
  }

  v12 = sqlite3_expanded_sql(ppStmt);
  if (v12)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v15 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v16 = 1024;
      v17 = 3561;
      v18 = 2080;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v12);
  }

  v2 = sqlite3_step(ppStmt);
  if (v2 == 100)
  {
    v2 = sqlite3_step(ppStmt);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v10 = 0;
  if (v2)
  {
    if (v2 != 101)
    {
LABEL_23:
      if (MediaAnalysisLogLevel() >= 3)
      {
        v8 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          v9 = *(a1 + 40);
          *buf = 138412290;
          v15 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Failed to check if key %@ exists in KeyValueStore", buf, 0xCu);
        }
      }

      v10 = v2;
    }
  }

  sqlite3_finalize(ppStmt);
  return v10;
}

void sub_100052570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100052748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100052CF4(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "UPDATE Assets SET statsFlags=(?) WHERE localIdentifier=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 48));
    if (!v2)
    {
      v3 = ppStmt;
      v4 = *(a1 + 40);
      v5 = v4;
      if (v4)
      {
        v6 = v4;
        v7 = sqlite3_bind_text(v3, 2, [v5 UTF8String], -1, 0);
      }

      else
      {
        v7 = sqlite3_bind_null(v3, 2);
      }

      v2 = v7;

      if (!v2)
      {
        v8 = sqlite3_expanded_sql(ppStmt);
        if (v8)
        {
          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
            v14 = 1024;
            v15 = 3649;
            v16 = 2080;
            v17 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
          }

          sqlite3_free(v8);
        }

        v9 = sqlite3_step(ppStmt);
        if (v9 == 101)
        {
          v2 = 0;
        }

        else
        {
          v2 = v9;
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_1000530DC(void *a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(a1[4] + 24), "SELECT COUNT(*) FROM Results WHERE resultsType=(?);", -1, &ppStmt, 0);
  if (v2)
  {
    goto LABEL_10;
  }

  v2 = sqlite3_bind_int64(ppStmt, 1, a1[6]);
  if (v2)
  {
    goto LABEL_10;
  }

  v3 = sqlite3_expanded_sql(ppStmt);
  if (v3)
  {
    v4 = v3;
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v9 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v10 = 1024;
      v11 = 3674;
      v12 = 2080;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v4);
  }

  v2 = sqlite3_step(ppStmt);
  if (v2 != 100)
  {
LABEL_10:
    v5 = v2;
  }

  else
  {
    v5 = 0;
    *(*(a1[5] + 8) + 24) = sqlite3_column_int(ppStmt, 0);
  }

  sqlite3_finalize(ppStmt);
  return v5;
}

void sub_1000535F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100053614(uint64_t a1)
{
  if (sqlite3_wal_checkpoint(*(*(a1 + 32) + 24), 0))
  {
    *(*(*(a1 + 40) + 8) + 24) = -18;
  }

  return 0;
}

void sub_1000537E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100053818(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "SELECT count(*) FROM Assets WHERE dateAnalyzed >= (?) AND dateAnalyzed <= (?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v3 = ppStmt;
    v4 = *(a1 + 40);
    v5 = v4;
    if (v4)
    {
      [v4 timeIntervalSinceReferenceDate];
      v7 = sqlite3_bind_double(v3, 1, v6);
    }

    else
    {
      v7 = sqlite3_bind_null(v3, 1);
    }

    v2 = v7;

    if (!v2)
    {
      v8 = ppStmt;
      v9 = +[NSDate date];
      v10 = v9;
      if (v9)
      {
        [v9 timeIntervalSinceReferenceDate];
        v12 = sqlite3_bind_double(v8, 2, v11);
      }

      else
      {
        v12 = sqlite3_bind_null(v8, 2);
      }

      v2 = v12;

      if (!v2)
      {
        v13 = sqlite3_expanded_sql(ppStmt);
        if (v13)
        {
          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v17 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
            v18 = 1024;
            v19 = 3736;
            v20 = 2080;
            v21 = v13;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
          }

          sqlite3_free(v13);
        }

        v2 = sqlite3_step(ppStmt);
        if (v2 == 100)
        {
          v2 = 0;
          *(*(*(a1 + 48) + 8) + 24) = sqlite3_column_int(ppStmt, 0);
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_100053BB0(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  ppStmt = 0;
  v3 = [NSString stringWithFormat:@"SELECT localIdentifier, requestDate FROM MomentsScheduledAssets WHERE taskID=(?)"];;
  v4 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), [v3 UTF8String], -1, &ppStmt, 0);
  if (v4)
  {
    goto LABEL_3;
  }

  v4 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 40));
  if (v4)
  {
    goto LABEL_3;
  }

  v7 = sqlite3_expanded_sql(ppStmt);
  if (v7)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v16 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v17 = 1024;
      v18 = 3770;
      v19 = 2080;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v7);
  }

  v4 = sqlite3_step(ppStmt);
  v8 = VCPLogToOSLogType[4];
  while (v4 == 100)
  {
    v9 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5)
    {
      v10 = 0;
    }

    else
    {
      v10 = [NSString stringWithUTF8String:sqlite3_column_text(v9, 0)];
    }

    v11 = ppStmt;
    if (sqlite3_column_type(ppStmt, 1) == 5)
    {
      v12 = 0;
      if (v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:sqlite3_column_double(v11, 1)];
      if (v10)
      {
LABEL_17:
        v13 = [MADDeferredProcessingEntry entryWithLocalIdentifier:v10 requestDate:v12];
        [v2 addObject:v13];

        goto LABEL_22;
      }
    }

    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v8))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "Detected bad localIdentifier in MomentsScheduledAssets", buf, 2u);
    }

LABEL_22:
    v4 = sqlite3_step(ppStmt);
  }

  if (!v4 || v4 == 101)
  {
    v4 = 0;
    goto LABEL_4;
  }

LABEL_3:

  v2 = 0;
LABEL_4:
  sqlite3_finalize(ppStmt);
  v5 = v2;
  **(a1 + 48) = v2;

  return v4;
}

uint64_t sub_100054078(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  ppStmt = 0;
  v3 = [NSString stringWithFormat:@"SELECT localIdentifier, taskID FROM MomentsScheduledAssets"];;
  v4 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), [v3 UTF8String], -1, &ppStmt, 0);
  if (v4)
  {
    goto LABEL_2;
  }

  v5 = sqlite3_expanded_sql(ppStmt);
  if (v5)
  {
    if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v16 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
      v17 = 1024;
      v18 = 3809;
      v19 = 2080;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
    }

    sqlite3_free(v5);
  }

  v4 = sqlite3_step(ppStmt);
  v6 = VCPLogToOSLogType[4];
  while (v4 == 100)
  {
    v7 = ppStmt;
    if (sqlite3_column_type(ppStmt, 0) == 5 || ([NSString stringWithUTF8String:sqlite3_column_text(v7, 0)], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v6))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Detected bad localIdentifier in MomentsScheduledAssets", buf, 2u);
      }

      v8 = 0;
    }

    else
    {
      v9 = sqlite3_column_int64(ppStmt, 1);
      v10 = [v2 objectForKeyedSubscript:v8];
      v11 = v10;
      if (v10)
      {
        [v10 addIndex:v9];
      }

      else
      {
        v11 = [NSMutableIndexSet indexSetWithIndex:v9];
        [v2 setObject:v11 forKeyedSubscript:v8];
      }
    }

    v4 = sqlite3_step(ppStmt);
  }

  if (v4 && v4 != 101)
  {
LABEL_2:

    v2 = 0;
  }

  else
  {
    v4 = 0;
  }

  sqlite3_finalize(ppStmt);
  v12 = v2;
  **(a1 + 40) = v2;

  return v4;
}

uint64_t sub_1000545A4(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "REPLACE INTO MomentsScheduledAssets (taskID, localIdentifier, requestDate) VALUES ((?), (?), (?));", -1, &ppStmt, 0);
  if (!v2)
  {
    v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 56));
    if (!v2)
    {
      v3 = ppStmt;
      v4 = *(a1 + 40);
      v5 = v4;
      if (v4)
      {
        v6 = v4;
        v7 = sqlite3_bind_text(v3, 2, [v5 UTF8String], -1, 0);
      }

      else
      {
        v7 = sqlite3_bind_null(v3, 2);
      }

      v2 = v7;

      if (!v2)
      {
        v8 = ppStmt;
        v9 = *(a1 + 48);
        v10 = v9;
        if (v9)
        {
          [v9 timeIntervalSinceReferenceDate];
          v12 = sqlite3_bind_double(v8, 3, v11);
        }

        else
        {
          v12 = sqlite3_bind_null(v8, 3);
        }

        v2 = v12;

        if (!v2)
        {
          v13 = sqlite3_expanded_sql(ppStmt);
          if (v13)
          {
            if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              v18 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
              v19 = 1024;
              v20 = 3857;
              v21 = 2080;
              v22 = v13;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
            }

            sqlite3_free(v13);
          }

          v14 = sqlite3_step(ppStmt);
          if (v14 == 101)
          {
            v2 = 0;
          }

          else
          {
            v2 = v14;
          }
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

uint64_t sub_100054968(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 24), "DELETE FROM MomentsScheduledAssets WHERE taskID=(?) AND localIdentifier=(?);", -1, &ppStmt, 0);
  if (!v2)
  {
    v2 = sqlite3_bind_int64(ppStmt, 1, *(a1 + 48));
    if (!v2)
    {
      v3 = ppStmt;
      v4 = *(a1 + 40);
      v5 = v4;
      if (v4)
      {
        v6 = v4;
        v7 = sqlite3_bind_text(v3, 2, [v5 UTF8String], -1, 0);
      }

      else
      {
        v7 = sqlite3_bind_null(v3, 2);
      }

      v2 = v7;

      if (!v2)
      {
        v8 = sqlite3_expanded_sql(ppStmt);
        if (v8)
        {
          if (MediaAnalysisEnableDatabaseLog() && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v13 = "/Library/Caches/com.apple.xbs/Sources/MediaAnalysis/Daemon/Photos/DatabaseWriter.mm";
            v14 = 1024;
            v15 = 3881;
            v16 = 2080;
            v17 = v8;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "[MADB] Statement: %s[line:%d]: %s", buf, 0x1Cu);
          }

          sqlite3_free(v8);
        }

        v9 = sqlite3_step(ppStmt);
        if (v9 == 101)
        {
          v2 = 0;
        }

        else
        {
          v2 = v9;
        }
      }
    }
  }

  sqlite3_finalize(ppStmt);
  return v2;
}

void sub_100054B1C(int a1)
{
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "[VCPDatabaseWriter] Failed to set busy handler: %d", v1, 8u);
}

void sub_100054B9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64))
  {
    v2 = "write";
  }

  else
  {
    v2 = "read";
  }

  v3 = *(*(*a2 + 8) + 24);
  v4 = 136315394;
  v5 = v2;
  v6 = 1024;
  v7 = v3;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Multiple %s database errors (%d); re-creating", &v4, 0x12u);
}

void sub_100054E7C()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B81D0;
  qword_1002B81D0 = v0;
}

void sub_100055244(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

void sub_10005542C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100055E94(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v5)
  {
    v7 = *v15;
    v8 = VCPLogToOSLogType[4];
    *&v6 = 138412546;
    v13 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v8))
        {
          v12 = [*(a1 + 40) photoLibraryURL];
          *buf = v13;
          v19 = v10;
          v20 = 2112;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[Moments] Invalid/Completed local identifier %@ in Photo Library %@", buf, 0x16u);
        }

        [v3 removeMomentsScheduledAssetWithLocalIdentifier:v10 taskID:{*(a1 + 48), v13, v14}];
        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v5 != v9);
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
  }
}

__CFString *MADLastAnalysisRestoreTimestampKeyForTask(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_100284170[a1 - 1];
  }
}

__CFString *MADAnalysisRestoreAttemptsKeyForTask(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_1002841C0[a1 - 1];
  }
}

__CFString *MADLastAnalysisBackupTimestampKeyForTask(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    return 0;
  }

  else
  {
    return off_100284210[a1 - 1];
  }
}

id MADAssetProtoClassForTask(uint64_t a1)
{
  if (a1 == 2 || a1 == 10 || a1 == 3)
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100057400()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B81E0;
  qword_1002B81E0 = v0;
}

void sub_100057EC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MADPhotosTelemetryProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100058150(id a1, MADChangeRequest *a2)
{
  v2 = a2;
  v3 = VCPKeyValueLastPerLibraryBiomeReportEndTimestamp;
  v4 = v2;
  [(MADChangeRequest *)v2 removeDataStoreKey:VCPKeyValueLastPerLibraryBiomeReportEndTimestamp];
  [(MADChangeRequest *)v4 removeDataStoreKey:v3];
  [(MADChangeRequest *)v4 removeDataStoreKey:VCPKeyValueLastPerAssetBiomeReportStartTimestamp];
  [(MADChangeRequest *)v4 removeDataStoreKey:VCPKeyValueLastPerAssetBiomeReportEndTimestamp];
  [(MADChangeRequest *)v4 removeDataStoreKey:VCPKeyValueLastPerAssetBiomeReportBucket];
}

uint64_t sub_1000584E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && ((*(v1 + 16))() & 1) != 0)
  {
    return 1;
  }

  v3 = +[VCPWatchdog sharedWatchdog];
  [v3 pet];

  return 0;
}

id sub_100059070(uint64_t a1)
{
  v1 = [*(a1 + 32) isCancelled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

id sub_1000590CC(uint64_t a1)
{
  v1 = [*(a1 + 32) isCancelled];
  if ((v1 & 1) == 0)
  {
    v2 = +[VCPWatchdog sharedWatchdog];
    [v2 pet];
  }

  return v1;
}

void sub_10005B5F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(*(a1 + 32) + 8);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = *v17;
    v8 = VCPLogToOSLogType[7];
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v8))
        {
          v11 = [v10 asset];
          v12 = [v11 localIdentifier];
          *buf = v15;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[QuickFaceID][%@][MACD] Setting processing status to running", buf, 0xCu);
        }

        v13 = [v10 previousAttempts];
        v14 = [v10 asset];
        [v3 setAttempts:v13 + 1 asset:v14 taskID:8 status:1 lastAttemptDate:*(a1 + 40)];

        v9 = v9 + 1;
      }

      while (v5 != v9);
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }
}

void sub_10005C2EC(uint64_t a1, void *a2)
{
  v21 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(*(a1 + 32) + 8);
  v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v3)
  {
    v4 = *v23;
    type = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [v6 asset];
        v9 = [v8 localIdentifier];
        v10 = [NSString stringWithFormat:@"[QuickFaceID][%@]", v9];

        if (![v6 status])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
          }

          goto LABEL_24;
        }

        if ([v6 status] == -128)
        {
          if (![v6 previousAttempts])
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v27 = v10;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
            }

LABEL_24:
            v12 = [v6 asset];
            v14 = [v12 localIdentifier];
            [v21 removeProcessingStatusForLocalIdentifier:v14 taskID:8];
            goto LABEL_25;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
          }

          v11 = [v6 previousAttempts];
          v12 = [v6 asset];
          v13 = [v6 previousStatus];
          v14 = [v6 lastAttemptDate];
          [v21 setAttempts:v11 asset:v12 taskID:8 status:v13 lastAttemptDate:v14];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
          }

          [v6 status];
          v15 = MADProcessingStatusForOSStatus();
          v16 = [v6 asset];
          v17 = [v6 currentAttemptDate];
          v12 = [v16 mad_nextAttemptDateForStatus:v15 currentAttemptDate:v17 attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

          v14 = [v6 asset];
          v18 = [v14 localIdentifier];
          [v21 updateProcessingStatus:v15 nextAttemptDate:v12 localIdentifier:v18 taskID:8];
        }

LABEL_25:

        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v3);
  }
}

void sub_10005D450(uint64_t a1)
{
  v39 = +[NSMutableDictionary dictionary];
  v38 = [*(a1 + 32) librarySpecificFetchOptions];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = *(*(a1 + 40) + 8);
  v31 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
  if (v31)
  {
    v3 = 0;
    v34 = 0;
    v30 = *v45;
    type = VCPLogToOSLogType[7];
    *&v2 = 134218240;
    v27 = v2;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v44 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        if (![v35 status])
        {
          v4 = [v35 asset];
          v36 = [PHAssetChangeRequest changeRequestForAsset:v4];

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v37 = [v35 detectedFaces];
          v5 = [v37 countByEnumeratingWithState:&v40 objects:v56 count:16];
          if (v5)
          {
            v6 = *v41;
            do
            {
              v7 = 0;
              v34 += v5;
              do
              {
                if (*v41 != v6)
                {
                  objc_enumerationMutation(v37);
                }

                v8 = *(*(&v40 + 1) + 8 * v7);
                v9 = [v8 personLocalIdentifier];
                v10 = v9 == 0;

                if (v10)
                {
                  v12 = 0;
                }

                else
                {
                  v11 = [v8 personLocalIdentifier];
                  v12 = [v39 objectForKeyedSubscript:v11];

                  ++v3;
                  if (!v12)
                  {
                    v13 = [v35 detectedPersons];
                    v14 = [v8 personLocalIdentifier];
                    v15 = [v13 objectForKeyedSubscript:v14];

                    if (v15)
                    {
                      v12 = [PHPersonChangeRequest changeRequestForPerson:v15];
                      v16 = [v8 personLocalIdentifier];
                      [v39 setObject:v12 forKeyedSubscript:v16];
                    }

                    else
                    {
                      v12 = 0;
                    }
                  }
                }

                v17 = [v8 localIdentifier];
                v18 = v17 == 0;

                if (v18)
                {
                  v21 = +[PHFaceChangeRequest creationRequestForFace];
                  v22 = [v21 placeholderForCreatedFace];
                  [VCPFaceUtils assignPropertiesOfVCPPhotosFace:v8 toPHFaceChangeRequest:v21];
                  [v21 setNameSource:6];
                  v53 = v22;
                  v25 = [NSArray arrayWithObjects:&v53 count:1];
                  [v36 addFaces:v25];

                  if (!v12)
                  {
                    goto LABEL_25;
                  }

                  v52 = v22;
                  v23 = [NSArray arrayWithObjects:&v52 count:1];
                  [v12 addFaces:v23];
                }

                else
                {
                  v19 = [v8 localIdentifier];
                  v55 = v19;
                  v20 = [NSArray arrayWithObjects:&v55 count:1];
                  v21 = [PHFace fetchFacesWithLocalIdentifiers:v20 options:v38];

                  v22 = [v21 firstObject];
                  v23 = [PHFaceChangeRequest changeRequestForFace:v22];
                  [VCPFaceUtils assignPropertiesOfVCPPhotosFace:v8 toPHFaceChangeRequest:v23];
                  [v23 setNameSource:6];
                  if (v12)
                  {
                    v54 = v22;
                    v24 = [NSArray arrayWithObjects:&v54 count:1];
                    [v12 addFaces:v24];
                  }
                }

LABEL_25:
                v7 = v7 + 1;
              }

              while (v5 != v7);
              v5 = [v37 countByEnumeratingWithState:&v40 objects:v56 count:16];
            }

            while (v5);
          }

          v26 = +[PHAsset quickClassificationFaceAdjustmentVersion];
          [v36 setFaceAdjustmentVersion:v26];

          [v36 setFaceAnalysisVersion:14];
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = v27;
            v49 = v34;
            v50 = 2048;
            v51 = v3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[QuickFaceID] Persisted %lu faces (%lu identified)", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(context);
      }

      v31 = [obj countByEnumeratingWithState:&v44 objects:v57 count:16];
    }

    while (v31);
  }
}

void sub_10005DB48(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10005DC3C()
{
  if (__cxa_guard_acquire(&qword_1002B8208))
  {
    byte_1002B8200 = 1;

    __cxa_guard_release(&qword_1002B8208);
  }
}

void sub_10005E248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, const void *a12, const void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  sub_100002CBC(&a12);
  sub_100002CBC(&a13);
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10005E300(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v2 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MAClientHandler] XPC connection interrupted", v5, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelAllRequests];
  }
}

void sub_10005E3AC(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MAClientHandler] XPC connection invalidated", v7, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained cancelAllRequests];
    v5 = v4[1];
    v4[1] = 0;

    v6 = +[VCPClientManager sharedManager];
    [v6 removeClientHandler:v4];
  }
}

void sub_10005F33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25)
{
  sub_100002CBC((v29 - 128));

  _Unwind_Resume(a1);
}

void sub_10005F430(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 72);
      v11 = 67109120;
      LODWORD(v12) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAClientHandler] Completed MADRequestID %d", &v11, 8u);
    }
  }

  v6 = VCPSignPostLog();
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 32);
    v11 = 138412290;
    v12 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "VCPMediaAnalysisClientHandler_IOSurface", "%@", &v11, 0xCu);
  }

  if (*(a1 + 64))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  v10 = *(a1 + 48);
  if (v3)
  {
    (*(v10 + 16))(v10, 0, v3);
  }

  else
  {
    (*(v10 + 16))(v10, *(a1 + 40), 0);
  }
}

void sub_10005FB5C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 80);
      v11 = 67109120;
      LODWORD(v12) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAClientHandler] Completed MADRequestID %d", &v11, 8u);
    }
  }

  v6 = VCPSignPostLog();
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 32);
    v11 = 138412290;
    v12 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "VCPMediaAnalysisClientHandler_URL", "%@", &v11, 0xCu);
  }

  if (*(a1 + 64))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  v10 = *(a1 + 48);
  if (v3)
  {
    (*(v10 + 16))(v10, 0, v3);
  }

  else
  {
    (*(v10 + 16))(v10, *(a1 + 40), 0);
  }

  sandbox_extension_release();
}

void sub_10005FD10(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  sandbox_extension_release();
}

void sub_100060200(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 72);
      v11 = 67109120;
      LODWORD(v12) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAClientHandler] Completed MADRequestID %d", &v11, 8u);
    }
  }

  v6 = VCPSignPostLog();
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 32);
    v11 = 138412290;
    v12 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "VCPMediaAnalysisClientHandler_URL", "%@", &v11, 0xCu);
  }

  if (*(a1 + 64))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  v10 = *(a1 + 48);
  if (v3)
  {
    (*(v10 + 16))(v10, 0, v3);
  }

  else
  {
    (*(v10 + 16))(v10, *(a1 + 40), 0);
  }
}

void sub_100060F30(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 72);
      v11 = 67109120;
      LODWORD(v12) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAClientHandler] Completed MADRequestID %d", &v11, 8u);
    }
  }

  v6 = VCPSignPostLog();
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 32);
    v11 = 138412290;
    v12 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "VCPMediaAnalysisClientHandler_PHAsset", "%@", &v11, 0xCu);
  }

  if (*(a1 + 64))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  v10 = *(a1 + 48);
  if (v3)
  {
    (*(v10 + 16))(v10, 0, v3);
  }

  else
  {
    (*(v10 + 16))(v10, *(a1 + 40), 0);
  }
}

void sub_1000615B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28)
{
  sub_100002CBC((v33 - 152));

  _Unwind_Resume(a1);
}

void sub_1000616BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 72);
      v11 = 67109120;
      LODWORD(v12) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAClientHandler] Completed MADRequestID %d", &v11, 8u);
    }
  }

  v6 = VCPSignPostLog();
  v7 = v6;
  v8 = *(a1 + 56);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 32);
    v11 = 138412290;
    v12 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "VCPMediaAnalysisClientHandler_PHAsset", "%@", &v11, 0xCu);
  }

  if (*(a1 + 64))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  v10 = *(a1 + 48);
  if (v3)
  {
    (*(v10 + 16))(v10, 0, v3);
  }

  else
  {
    (*(v10 + 16))(v10, *(a1 + 40), 0);
  }
}

void sub_100061FE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 80);
      v16 = 67109120;
      LODWORD(v17) = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAClientHandler] Completed MADRequestID %d", &v16, 8u);
    }
  }

  v6 = VCPSignPostLog();
  v7 = v6;
  v8 = *(a1 + 64);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = *(a1 + 32);
    v16 = 138412290;
    v17 = v9;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v8, "VCPMediaAnalysisClientHandler_PHAsset", "%@", &v16, 0xCu);
  }

  if (*(a1 + 72))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  if (v3)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v10 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = *(a1 + 40);
        v12 = *(a1 + 80);
        v16 = 138412802;
        v17 = v11;
        v18 = 1024;
        v19 = v12;
        v20 = 2112;
        v21 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MAClientHandler] Failed to process asset (%@) for MADRequestID %d - %@", &v16, 0x1Cu);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 7)
  {
    v13 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      v14 = *(a1 + 40);
      v15 = *(a1 + 80);
      v16 = 138412546;
      v17 = v14;
      v18 = 1024;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MAClientHandler] Finished processing asset (%@) for MADRequestID %d", &v16, 0x12u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100062290(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 3)
  {
    v4 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v7 = 138412802;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAClientHandler] Failed to schedule processing asset (%@) for MADRequestID %d - %@", &v7, 0x1Cu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000627EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v4 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = *(a1 + 48);
        v8 = 67109378;
        v9 = v5;
        v10 = 2112;
        v11 = v3;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAClientHandler] Failed to process for MADRequestID %d - %@", &v8, 0x12u);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 6)
  {
    v6 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = *(a1 + 48);
      v8 = 67109120;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MAClientHandler] Completed MADRequestID %d", &v8, 8u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100062978(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 3)
  {
    v4 = VCPLogToOSLogType[3];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = [*(a1 + 32) count];
      v6 = *(a1 + 48);
      v7 = 134218498;
      v8 = v5;
      v9 = 1024;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAClientHandler] Failed to schedule processing %lu assets MADRequestID %d - %@", &v7, 0x1Cu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100062EC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = *(a1 + 64);
      v13 = 67109120;
      LODWORD(v14) = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] Completed MADRequestID %d", &v13, 8u);
    }
  }

  v9 = VCPSignPostLog();
  v10 = v9;
  v11 = *(a1 + 48);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v12 = *(a1 + 32);
    v13 = 138412290;
    v14 = v12;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v11, "VCPMediaAnalysisClientHandler_VideoE2E", "%@", &v13, 0xCu);
  }

  if (*(a1 + 56))
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100063374(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  sandbox_extension_release();
  (*(*(a1 + 32) + 16))();
}

void sub_1000651EC(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_100065690(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

void sub_100065E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v26 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100065F30(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && [v3 containsObject:MOSettingsGroupNameUserSafety])
  {
    v5 = objc_alloc_init(MOEffectiveSettingsStore);
    v6 = [v5 userSafety];
    v7 = [v6 scanningPolicy];

    if (MediaAnalysisLogLevel() >= 5)
    {
      v8 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MAClientHandler] Updated user safety scanning policy (%@)", buf, 0xCu);
      }
    }

    [WeakRetained secTask];
    v9 = [MADUserSafetySettings policyTypeForTask:*buf scanningPolicy:v7];
    sub_100002CBC(buf);
    if (MediaAnalysisLogLevel() >= 5)
    {
      v10 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MAClientHandler] Starting reportMADUserSafetyPolicy, type: %u", buf, 8u);
      }
    }

    v11 = [[MADUserSafetyPolicy alloc] initWithPolicyType:v9];
    v12 = [WeakRetained userSafetyQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10006626C;
    v15[3] = &unk_100282BC8;
    v15[4] = WeakRetained;
    v13 = v11;
    v16 = v13;
    dispatch_async(v12, v15);

    if (MediaAnalysisLogLevel() >= 5)
    {
      v14 = VCPLogToOSLogType[5];
      if (os_log_type_enabled(&_os_log_default, v14))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[MAClientHandler] Completed reportMADUserSafetyPolicy", buf, 2u);
      }
    }
  }
}

void sub_10006626C(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  [v2 reportMADUserSafetyPolicy:*(a1 + 40) error:0];
}

void sub_1000662D8(uint64_t a1)
{
  v2 = [*(a1 + 32) clientProxy];
  [v2 reportMADUserSafetyPolicy:*(a1 + 40) error:0];
}

void sub_1000667D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [NSString stringWithFormat:@"MADRequestID %d failed %d", *(a1 + 48), a2];
    if (MediaAnalysisLogLevel() >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MAClientHandler] %@", buf, 0xCu);
      }
    }

    v6 = v4;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v7 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        v8 = *(a1 + 48);
        *buf = 67109120;
        LODWORD(v12) = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] MADRequestID %d completed", buf, 8u);
      }
    }

    v6 = 0;
  }

  v9 = *(a1 + 40);
  v10 = [objc_opt_class() errorForStatus:a2 withDescription:v6];
  (*(v9 + 16))(v9, v10);
}

void sub_100067684(void *a1, void *a2)
{
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = v4;
  v6 = a1[6];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = a1[4];
    v8 = 138412290;
    v9 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "VCPMediaAnalysisClientHandler_TextPrewarmingE2E", "%@", &v8, 0xCu);
  }

  if (a1[7])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(a1[5] + 16))();
}

void sub_100067B60(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = a1[4];
    v11 = 138412290;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "VCPMediaAnalysisClientHandler_TextProcessingE2E", "%@", &v11, 0xCu);
  }

  if (a1[7])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(a1[5] + 16))();
}

void sub_100067FF8(void *a1, void *a2)
{
  v3 = a2;
  v4 = VCPSignPostLog();
  v5 = v4;
  v6 = a1[6];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = a1[4];
    v8 = 138412290;
    v9 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_END, v6, "VCPMediaAnalysisClientHandler_MultiModalPrewarmingE2E", "%@", &v8, 0xCu);
  }

  if (a1[7])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(a1[5] + 16))();
}

void sub_100068480(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = VCPSignPostLog();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = a1[4];
    v11 = 138412290;
    v12 = v10;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_INTERVAL_END, v9, "VCPMediaAnalysisClientHandler_MultiModalProcessingE2E", "%@", &v11, 0xCu);
  }

  if (a1[7])
  {
    mach_absolute_time();
    VCPPerformance_LogMeasurement();
  }

  (*(a1[5] + 16))();
}

uint64_t sub_100069088(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000690A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000691C0;
  v13[3] = &unk_1002846A0;
  v14 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v21 = *(a1 + 72);
  v17 = v6;
  v10 = *(a1 + 56);
  v18 = v5;
  v19 = v10;
  v20 = *(a1 + 64);
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, v13);
}

void sub_1000691C0(uint64_t a1)
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100069448;
  v18[3] = &unk_100284678;
  v2 = *(a1 + 32);
  v19 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v18];
  v3 = *(*(a1 + 48) + 32);
  v4 = [NSNumber numberWithInt:*(a1 + 88)];
  v5 = [v3 objectForKeyedSubscript:v4];
  LOBYTE(v3) = v5 == 0;

  if ((v3 & 1) == 0)
  {
    if (*(a1 + 56))
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_10;
      }

      v6 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v6))
      {
        goto LABEL_10;
      }

      v7 = *(a1 + 88);
      v8 = *(a1 + 56);
      *buf = 67109378;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v9 = "[MAClientHandler] MADRequestID %d failed %@";
      v10 = v6;
      v11 = 18;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_10;
      }

      v12 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v12))
      {
        goto LABEL_10;
      }

      v13 = *(a1 + 88);
      *buf = 67109120;
      v21 = v13;
      v9 = "[MAClientHandler] MADRequestID %d completed";
      v10 = v12;
      v11 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v10, v9, buf, v11);
LABEL_10:
    v14 = *(*(a1 + 48) + 32);
    v15 = [NSNumber numberWithInt:*(a1 + 88)];
    [v14 removeObjectForKey:v15];

    (*(*(a1 + 72) + 16))();
  }

  v16 = *(*(a1 + 80) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;
}

void sub_100069448(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v6 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MAClientHandler] Releasing sandbox extension for %@", &v8, 0xCu);
    }
  }

  [v5 longLongValue];
  sandbox_extension_release();
}

void sub_100069574(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 88)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 88)];
    v4 = *(a1 + 56);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPFullAnalysisURLProcessingTask taskForURLAsset:*(a1 + 40) withOptions:*(a1 + 48) analysisTypes:*(a1 + 80) progressHandler:*(a1 + 64) completionHandler:*(a1 + 72)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 88)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 88)];
      v12 = *(a1 + 56);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100069F58(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006A06C;
  v14[3] = &unk_100284718;
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  v10 = *(a1 + 32);
  v15 = v8;
  v16 = v10;
  v22 = *(a1 + 72);
  v21 = v9;
  v17 = v6;
  v11 = *(a1 + 48);
  v18 = v5;
  v19 = v11;
  v20 = *(a1 + 56);
  v12 = v5;
  v13 = v6;
  dispatch_async(v7, v14);
}

void sub_10006A06C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:VCPMediaAnalysisOutputPathSandboxTokenKey];
  if (v2)
  {
    v3 = *(a1 + 80);

    if ((v3 & 0x8000000000000000) == 0)
    {
      sandbox_extension_release();
    }
  }

  v4 = *(*(a1 + 40) + 32);
  v5 = [NSNumber numberWithInt:*(a1 + 88)];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = *(a1 + 48);
    v8 = MediaAnalysisLogLevel();
    if (v7)
    {
      if (v8 < 3)
      {
        goto LABEL_13;
      }

      v9 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v9))
      {
        goto LABEL_13;
      }

      v10 = *(a1 + 88);
      v11 = *(a1 + 48);
      LODWORD(v21) = 67109378;
      HIDWORD(v21) = v10;
      LOWORD(v22) = 2112;
      *(&v22 + 2) = v11;
      v12 = "[MAClientHandler] MADRequestID %d failed %@";
      v13 = v9;
      v14 = 18;
    }

    else
    {
      if (v8 < 6)
      {
        goto LABEL_13;
      }

      v15 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v15))
      {
        goto LABEL_13;
      }

      v16 = *(a1 + 88);
      LODWORD(v21) = 67109120;
      HIDWORD(v21) = v16;
      v12 = "[MAClientHandler] MADRequestID %d completed";
      v13 = v15;
      v14 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v13, v12, &v21, v14);
LABEL_13:
    v17 = *(*(a1 + 40) + 32);
    v18 = [NSNumber numberWithInt:*(a1 + 88), v21, v22];
    [v17 removeObjectForKey:v18];

    (*(*(a1 + 64) + 16))();
  }

  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;
}

void sub_10006A2A4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 88)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 88)];
    v4 = *(a1 + 56);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPFullAnalysisAssetProcessingTask taskWithAsset:*(a1 + 40) andAnalysisTypes:*(a1 + 80) andOptions:*(a1 + 48) andProgressHandler:*(a1 + 64) andCompletionHandler:*(a1 + 72)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 88)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 88)];
      v12 = *(a1 + 56);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_10006AA60(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006AB38;
  block[3] = &unk_100284768;
  block[4] = v6;
  v14 = *(a1 + 56);
  v15 = a3;
  v8 = *(a1 + 40);
  v11 = v5;
  v12 = v8;
  v13 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v7, block);
}

void sub_10006AB38(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 68);
    if (v5)
    {
      v6 = [NSString stringWithFormat:@"MADRequestID %d failed %d", *(a1 + 64), v5];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v7 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 138412290;
          v19 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] %@", buf, 0xCu);
        }
      }

      v8 = v6;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v9 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v9))
        {
          v10 = *(a1 + 64);
          *buf = 67109120;
          LODWORD(v19) = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MAClientHandler] MADRequestID %d completed", buf, 8u);
        }
      }

      v8 = 0;
    }

    v11 = *(*(a1 + 32) + 32);
    v12 = [NSNumber numberWithInt:*(a1 + 64)];
    [v11 removeObjectForKey:v12];

    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = [objc_opt_class() errorForStatus:*(a1 + 68) withDescription:v8];
    (*(v13 + 16))(v13, v14, v15);
  }

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;
}

void sub_10006ADB0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 80)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 80)];
    v4 = *(a1 + 56);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPMediaAnalysisServiceTask taskForPhotoLibrary:*(a1 + 40) withAssetLocalIdentifiers:*(a1 + 48) realTime:*(a1 + 84) progressHandler:*(a1 + 64) completionHandler:*(a1 + 72)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 80)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 80)];
      v12 = *(a1 + 56);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_10006BC64(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 removeAllChangeTokensImmediatelyForTaskID:*(a1 + 32)];
  v3 = *(a1 + 32);
  if (v3 == 21)
  {
    [v4 removeAllChangeTokensImmediatelyForTaskID:3];
    v3 = *(a1 + 32);
  }

  [v4 removeAllProcessingStatusImmediatelyForTaskID:v3];
  if (*(a1 + 32) == 1)
  {
    [v4 removeAllProcessingStatusImmediatelyForTaskID:254];
  }
}

void sub_10006BD00(id a1, MADChangeRequest *a2)
{
  v2 = a2;
  [(MADChangeRequest *)v2 removeDataStoreKey:@"ContactIngestionTimestamp"];
  [(MADChangeRequest *)v2 removeDataStoreKey:@"HomePersonIngestionTimestamp"];
  [(MADChangeRequest *)v2 removeDataStoreKey:@"VUDeepSyncTimestamp"];
  [(MADChangeRequest *)v2 removeDataStoreKey:VCPKeyValueFaceAnalysisLastFullModeClusterTimestamp];
}

void sub_10006C914(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006C9D0;
  block[3] = &unk_100284848;
  block[4] = v3;
  v10 = *(a1 + 64);
  v11 = a2;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  v9 = *(a1 + 56);
  dispatch_async(v4, block);
}

void sub_10006C9D0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    [*(*(*(a1 + 48) + 8) + 40) stop];
    v5 = *(a1 + 68);
    v6 = *(a1 + 64);
    [*(*(*(a1 + 48) + 8) + 40) elapsedTimeSeconds];
    v8 = [NSString stringWithFormat:@"MADRequestID %d failed (err: %d) in %0.6fs", v6, v5, v7];
    if (*(a1 + 68))
    {
      if (MediaAnalysisLogLevel() < 3)
      {
        goto LABEL_10;
      }

      v9 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v9))
      {
        goto LABEL_10;
      }

      *buf = 138412290;
      v23[0] = v8;
      v10 = "[MAClientHandler] %@";
      v11 = v9;
      v12 = 12;
    }

    else
    {
      if (MediaAnalysisLogLevel() < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 64);
      [*(*(*(a1 + 48) + 8) + 40) elapsedTimeSeconds];
      *buf = 67109376;
      LODWORD(v23[0]) = v14;
      WORD2(v23[0]) = 2048;
      *(v23 + 6) = v15;
      v10 = "[MAClientHandler] MADRequestID %d completed in %0.6fs";
      v11 = v13;
      v12 = 18;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, buf, v12);
LABEL_10:
    v16 = *(*(a1 + 32) + 32);
    v17 = [NSNumber numberWithInt:*(a1 + 64)];
    [v16 removeObjectForKey:v17];

    v18 = *(a1 + 40);
    v19 = [objc_opt_class() errorForStatus:*(a1 + 68) withDescription:v8];
    (*(v18 + 16))(v18, v19);
  }

  v20 = *(*(a1 + 56) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = 0;
}

void sub_10006CC80(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 96)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    contexta = objc_autoreleasePoolPush();
    v7 = 0;
    v8 = *(a1 + 88);
    if (v8 > 7)
    {
      if (v8 <= 11)
      {
        if (v8 == 8)
        {
          if ([objc_opt_class() disablePhotosPostCaptureProcessing])
          {
            v32 = [NSString stringWithFormat:@"Photos post-capture processing has been disabled - %d", *(a1 + 96)];
            v33 = *(a1 + 56);
            v34 = [objc_opt_class() errorForStatus:4294967278 withDescription:v32];
            (*(v33 + 16))(v33, v34);

LABEL_93:
            objc_autoreleasePoolPop(contexta);
            return;
          }

          v38 = +[MADPhotosDeferredBackgroundSystemTask sharedTask];
          v72 = 0;
          [v38 submitTask:&v72];
          v39 = v72;

          if (v39)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v40 = VCPLogToOSLogType[3];
              if (os_log_type_enabled(&_os_log_default, v40))
              {
                v41 = +[MADPhotosDeferredBackgroundSystemTask identifier];
                *buf = 138412546;
                *v95 = v41;
                *&v95[8] = 2112;
                *&v95[10] = v39;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v40, "[MAClientHandler][%@] Failed to submit the BGST task with error: %@", buf, 0x16u);
              }
            }

            (*(*(a1 + 56) + 16))();

            goto LABEL_93;
          }

          v93 = *(a1 + 48);
          v42 = [NSArray arrayWithObjects:&v93 count:1];
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 3221225472;
          v70[2] = sub_10006DFC8;
          v70[3] = &unk_100282AC0;
          v71 = *(a1 + 72);
          v7 = [VCPPhotosCaptureProcessingTask taskWithPhotoLibraries:v42 andCompletionHandler:v70];

          v10 = v71;
          goto LABEL_85;
        }

        if (v8 == 10)
        {
          v22 = [*(a1 + 40) objectForKeyedSubscript:VCPPhotosProcessing_ForceFullScanKey];
          v23 = [v22 BOOLValue];

          if (v23)
          {
            [*(a1 + 32) _resetProcessingStatusForTaskID:10 andPhotoLibrary:*(a1 + 48)];
          }

          v88 = *(a1 + 48);
          v89 = @"PhotoLibrary";
          v10 = [NSArray arrayWithObjects:&v88 count:1];
          v90 = v10;
          v24 = [NSDictionary dictionaryWithObjects:&v90 forKeys:&v89 count:1];
          v7 = [MADUnifiedProcessingTask taskWithCancelBlock:&stru_1002849B8 taskID:10 options:v24 progressHandler:*(a1 + 80) andCompletionHandler:*(a1 + 72)];

          goto LABEL_85;
        }
      }

      else
      {
        switch(v8)
        {
          case 12:
            v29 = [*(a1 + 40) objectForKeyedSubscript:VCPPhotosProcessing_ForceFullScanKey];
            v30 = [v29 BOOLValue];

            if (v30)
            {
              [*(a1 + 32) _resetProcessingStatusForTaskID:12 andPhotoLibrary:*(a1 + 48)];
            }

            v85 = *(a1 + 48);
            v86 = @"PhotoLibrary";
            v10 = [NSArray arrayWithObjects:&v85 count:1];
            v87 = v10;
            v31 = [NSDictionary dictionaryWithObjects:&v87 forKeys:&v86 count:1];
            v7 = [MADUnifiedProcessingTask taskWithCancelBlock:&stru_1002849D8 taskID:12 options:v31 progressHandler:*(a1 + 80) andCompletionHandler:*(a1 + 72)];

            goto LABEL_85;
          case 21:
            v35 = [*(a1 + 40) objectForKeyedSubscript:VCPPhotosProcessing_ForceFullScanKey];
            v36 = [v35 BOOLValue];

            if (v36)
            {
              [*(a1 + 32) _resetProcessingStatusForTaskID:21 andPhotoLibrary:*(a1 + 48)];
            }

            v98 = *(a1 + 48);
            v37 = [NSArray arrayWithObjects:&v98 count:1];
            v83[0] = _NSConcreteStackBlock;
            v83[1] = 3221225472;
            v83[2] = sub_10006DD48;
            v83[3] = &unk_1002848F8;
            v84 = *(a1 + 64);
            v7 = [VCPRequestPersonProcessingTask taskWithPhotoLibraries:v37 cancelBlock:&stru_1002848D0 progressHandler:v83 completionHandler:*(a1 + 72)];

            v10 = v84;
            goto LABEL_85;
          case 22:
            v91 = *(a1 + 48);
            v9 = [NSArray arrayWithObjects:&v91 count:1];
            v68[0] = _NSConcreteStackBlock;
            v68[1] = 3221225472;
            v68[2] = sub_10006E04C;
            v68[3] = &unk_1002848F8;
            v69 = *(a1 + 64);
            v7 = [MADPhotosRequestFullClusterProcessingTask taskWithPhotoLibraries:v9 cancelBlock:&stru_100284998 progressHandler:v68 completionHandler:*(a1 + 72)];

            v10 = v69;
LABEL_85:

            break;
        }
      }

LABEL_86:
      v53 = [*(a1 + 40) objectForKeyedSubscript:VCPTurboProcessing_QualityOfServiceKey];
      v54 = v53;
      if (v53)
      {
        v55 = [v53 unsignedIntValue];
      }

      else
      {
        v55 = 21;
      }

      v56 = +[VCPMADTaskScheduler sharedInstance];
      v57 = [v56 addForegroundTask:v7 withQoS:v55];

      if (v57)
      {
        v58 = [NSNumber numberWithUnsignedInteger:v57];
        v59 = *(*(a1 + 32) + 32);
        v60 = [NSNumber numberWithInt:*(a1 + 96)];
        [v59 setObject:v58 forKeyedSubscript:v60];
      }

      else
      {
        v61 = *(a1 + 96);
        v62 = VCPTaskIDDescription();
        v58 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d for task %@(%lu)", v61, v62, *(a1 + 88)];

        v63 = *(a1 + 56);
        v60 = [objc_opt_class() errorForStatus:4294967278 withDescription:v58];
        (*(v63 + 16))(v63, v60);
      }

      goto LABEL_93;
    }

    if (v8 > 2)
    {
      if (v8 != 3)
      {
        if (v8 == 7)
        {
          v10 = [*(a1 + 40) objectForKeyedSubscript:VCPTurboProcessing_VCPTaskIDsKey];
          if (!v10)
          {
            if (MediaAnalysisLogLevel() >= 5)
            {
              v14 = VCPLogToOSLogType[5];
              if (os_log_type_enabled(&_os_log_default, v14))
              {
                v15 = *(a1 + 96);
                *buf = 67109378;
                *v95 = v15;
                *&v95[4] = 2112;
                *&v95[6] = VCPTurboProcessing_VCPTaskIDsKey;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[MAClientHandler] MADRequestID %d: %@ not specified; added Photos Scene and Face Processing", buf, 0x12u);
              }
            }

            v10 = &off_1002960C8;
          }

          v16 = [*(a1 + 40) objectForKeyedSubscript:VCPPhotosProcessing_ForceFullScanKey];
          v17 = [v16 BOOLValue];

          if (v17)
          {
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v18 = v10;
            v19 = [v18 countByEnumeratingWithState:&v79 objects:v97 count:16];
            if (v19)
            {
              v20 = *v80;
              do
              {
                for (i = 0; i != v19; i = i + 1)
                {
                  if (*v80 != v20)
                  {
                    objc_enumerationMutation(v18);
                  }

                  [*(a1 + 32) _resetProcessingStatusForTaskID:objc_msgSend(*(*(&v79 + 1) + 8 * i) andPhotoLibrary:{"unsignedIntValue"), *(a1 + 48)}];
                }

                v19 = [v18 countByEnumeratingWithState:&v79 objects:v97 count:16];
              }

              while (v19);
            }

            if ([v18 containsObject:&off_100294548])
            {
              [*(a1 + 32) _resetProcessingStatusForTaskID:2 andPhotoLibrary:*(a1 + 48)];
              [*(a1 + 32) _resetProcessingStatusForTaskID:3 andPhotoLibrary:*(a1 + 48)];
              [*(a1 + 32) _resetProcessingStatusForTaskID:10 andPhotoLibrary:*(a1 + 48)];
              [*(a1 + 32) _resetProcessingStatusForTaskID:12 andPhotoLibrary:*(a1 + 48)];
            }

            if ([v18 containsObject:&off_100294560])
            {
              [*(a1 + 32) _resetPECFailureVersionForPhotoLibrary:*(a1 + 48)];
            }

            if ([v18 containsObject:&off_100294578])
            {
              if (+[MADManagedKeyValueStore isMACDPersistEnabled])
              {
                [*(a1 + 48) mad_performAnalysisDataStoreChanges:&stru_100284918 error:0];
              }

              else
              {
                v65 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:*(a1 + 48)];
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v43 = [&off_1002960F8 countByEnumeratingWithState:&v75 objects:v96 count:16];
                if (v43)
                {
                  v44 = *v76;
                  type = VCPLogToOSLogType[3];
                  while (2)
                  {
                    for (j = 0; j != v43; j = j + 1)
                    {
                      if (*v76 != v44)
                      {
                        objc_enumerationMutation(&off_1002960F8);
                      }

                      v46 = *(*(&v75 + 1) + 8 * j);
                      v47 = objc_autoreleasePoolPush();
                      v48 = MADLastAnalysisBackupTimestampKeyForTask([v46 unsignedIntegerValue]);
                      if (v48)
                      {
                        [v65 removeKey:v48];
                      }

                      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
                      {
                        *buf = 134217984;
                        *v95 = v46;
                        _os_log_impl(&_mh_execute_header, &_os_log_default, type, "  Unknown backup date key; skipping backup for task %llu", buf, 0xCu);
                      }

                      objc_autoreleasePoolPop(v47);
                      if (!v48)
                      {

                        goto LABEL_93;
                      }
                    }

                    v43 = [&off_1002960F8 countByEnumeratingWithState:&v75 objects:v96 count:16];
                    if (v43)
                    {
                      continue;
                    }

                    break;
                  }
                }

                [v65 commit];
                [VCPDatabaseManager releaseSharedDatabaseForPhotoLibrary:*(a1 + 48)];
              }
            }
          }

          if ([v10 containsObject:&off_1002945C0])
          {
            v49 = [*(a1 + 40) objectForKeyedSubscript:VCPTurboProcessing_ForceClusterKey];
            v50 = v49 == 0;

            if (!v50)
            {
              if (+[MADManagedKeyValueStore isMACDPersistEnabled])
              {
                [*(a1 + 48) mad_performAnalysisDataStoreChanges:&stru_100284938 error:0];
              }

              else
              {
                v51 = [VCPDatabaseManager sharedDatabaseForPhotoLibrary:*(a1 + 48)];
                [v51 removeKey:VCPKeyValueMediaAnalysisImagePriority1LastFullModeClusterTimestamp];
                [v51 commit];
                [VCPDatabaseManager releaseSharedDatabaseForPhotoLibrary:*(a1 + 48)];
              }
            }
          }

          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_10006DF4C;
          v73[3] = &unk_100282AC0;
          v74 = *(a1 + 72);
          v52 = objc_retainBlock(v73);
          v7 = [VCPCompoundMADTask taskWithPhotoLibrary:*(a1 + 48) forVCPTaskIDs:v10 andOptions:*(a1 + 40) andProgressHandler:*(a1 + 64) andCompletionHandler:v52 andCancelBlock:&stru_100284958];

          goto LABEL_85;
        }

        goto LABEL_86;
      }

      v27 = [*(a1 + 40) objectForKeyedSubscript:VCPPhotosProcessing_ForceFullScanKey];
      v28 = [v27 BOOLValue];

      if (v28)
      {
        [*(a1 + 32) _resetProcessingStatusForTaskID:3 andPhotoLibrary:*(a1 + 48)];
      }

      v99 = *(a1 + 48);
      v10 = [NSArray arrayWithObjects:&v99 count:1];
      v13 = [VCPFaceLibraryProcessingTask taskWithPhotoLibraries:v10 andOptions:*(a1 + 40) andProgressHandler:*(a1 + 64) andCompletionHandler:*(a1 + 72) andCancelBlock:&stru_1002848B0];
    }

    else if (v8 == 1)
    {
      v25 = [*(a1 + 40) objectForKeyedSubscript:VCPPhotosProcessing_ForceFullScanKey];
      v26 = [v25 BOOLValue];

      if (v26)
      {
        [*(a1 + 32) _resetProcessingStatusForTaskID:1 andPhotoLibrary:*(a1 + 48)];
      }

      v92 = *(a1 + 48);
      v10 = [NSArray arrayWithObjects:&v92 count:1];
      v13 = [VCPLibraryProcessingTask taskWithPhotoLibraries:v10 andOptions:*(a1 + 40) andProgressHandler:*(a1 + 64) andCompletionHandler:*(a1 + 72) andCancelBlock:&stru_100284978];
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_86;
      }

      v11 = [*(a1 + 40) objectForKeyedSubscript:VCPPhotosProcessing_ForceFullScanKey];
      v12 = [v11 BOOLValue];

      if (v12)
      {
        [*(a1 + 32) _resetProcessingStatusForTaskID:2 andPhotoLibrary:*(a1 + 48)];
      }

      v100 = *(a1 + 48);
      v10 = [NSArray arrayWithObjects:&v100 count:1];
      v13 = [VCPMADSceneLibraryProcessingTask taskWithPhotoLibraries:v10 cancelBlock:&stru_100284890 progressHandler:*(a1 + 64) andCompletionHandler:*(a1 + 72)];
    }

    v7 = v13;
    goto LABEL_85;
  }

  context = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 96)];
  v5 = *(a1 + 56);
  v6 = [objc_opt_class() errorForStatus:4294967246 withDescription:context];
  (*(v5 + 16))(v5, v6);
}

void sub_10006DD58(id a1, MADChangeRequest *a2)
{
  v2 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&off_1002960E0 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
    v5 = VCPLogToOSLogType[3];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(&off_1002960E0);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = MADLastAnalysisBackupTimestampKeyForTask([v7 unsignedIntegerValue]);
        if (v9)
        {
          [(MADChangeRequest *)v2 removeDataStoreKey:v9];
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, v5))
        {
          *buf = 138412290;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MACD] Unknown backup date key; skipping backup for task %@", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
      }

      v3 = [&off_1002960E0 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v3);
  }
}

void sub_10006DF4C(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 code]);
}

void sub_10006DFC8(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 code]);
}

void sub_10006E490(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006E580;
  v12[3] = &unk_100283368;
  v17 = *(a1 + 56);
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_10006E580(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 72)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 72);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 72);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 72), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 56) + 16))();
  }

  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_10006E788(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 80)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v22 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 80)];
    v5 = *(a1 + 56);
    v6 = [objc_opt_class() errorForStatus:4294967246 withDescription:v22];
    (*(v5 + 16))(v5, 0, v6);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    memset(&v24, 0, sizeof(v24));
    v8 = [*(a1 + 40) objectForKeyedSubscript:VCPVideoFramesCaption_TimeRangeKey];
    CMTimeRangeMakeFromDictionary(&v24, v8);

    v9 = [*(a1 + 40) objectForKeyedSubscript:VCPVideoFramesCaption_FrameRateKey];
    [v9 floatValue];
    v11 = v10;

    v12 = *(a1 + 48);
    v23 = v24;
    v13 = [VCPVideoFramesCaptionTask taskWithFrames:v12 frameRate:&v23 timeRange:*(a1 + 64) andCompletionHandler:COERCE_DOUBLE(__PAIR64__(v24.duration.flags, v11))];
    v14 = +[VCPMADTaskScheduler sharedInstance];
    v15 = [v14 addForegroundTask:v13 withQoS:25];

    if (v15)
    {
      v16 = [NSNumber numberWithUnsignedInteger:v15];
      v17 = *(*(a1 + 32) + 32);
      v18 = [NSNumber numberWithInt:*(a1 + 80)];
      [v17 setObject:v16 forKeyedSubscript:v18];
    }

    else
    {
      v19 = *(a1 + 80);
      v20 = VCPTaskIDDescription();
      v16 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d for task %@(%lu)", v19, v20, *(a1 + 72)];

      v21 = *(a1 + 56);
      v18 = [objc_opt_class() errorForStatus:4294967278 withDescription:v16];
      (*(v21 + 16))(v21, 0, v18);
    }

    objc_autoreleasePoolPop(v7);
  }
}

void sub_10006EF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  _Block_object_dispose((v39 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_10006F0C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006F1B0;
  v12[3] = &unk_100283368;
  v17 = *(a1 + 56);
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_10006F1B0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 72)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 >= 3)
      {
        v7 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          v8 = *(a1 + 72);
          v9 = [*(a1 + 40) description];
          v16 = 67109378;
          v17 = v8;
          v18 = 2112;
          v19 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] MADRequestID %d failed %@", &v16, 0x12u);
        }
      }
    }

    else if (v6 >= 6)
    {
      v10 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = *(a1 + 72);
        v16 = 67109120;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MAClientHandler] MADRequestID %d completed", &v16, 8u);
      }
    }

    v12 = *(*(a1 + 32) + 32);
    v13 = [NSNumber numberWithInt:*(a1 + 72)];
    [v12 removeObjectForKey:v13];

    (*(*(a1 + 56) + 16))();
  }

  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_10006F3CC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 80)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 80)];
    v4 = *(a1 + 64);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPPhotosCollectionThemeAnalysisTask taskWithAssets:*(a1 + 40) photoLibraryURL:*(a1 + 48) options:*(a1 + 56) andCompletionHandler:*(a1 + 72)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:qos_class_self()];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 80)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d for collection theme analysis", *(a1 + 80)];
      v12 = *(a1 + 64);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_10006F768(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v8 = [NSNumber numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v9 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 48)];
    v4 = *(a1 + 40);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v9];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = [objc_opt_class() revision];
    v7 = *(a1 + 40);
    v9 = [NSNumber numberWithInt:v6];
    (*(v7 + 16))(v7);
  }
}

void sub_10006FFF4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000700E4;
  v12[3] = &unk_100283368;
  v17 = *(a1 + 56);
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_1000700E4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 72)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 >= 3)
      {
        v7 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          v8 = *(a1 + 72);
          v9 = [*(a1 + 40) description];
          v16 = 67109378;
          v17 = v8;
          v18 = 2112;
          v19 = v9;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] MADRequestID %d failed %@", &v16, 0x12u);
        }
      }
    }

    else if (v6 >= 6)
    {
      v10 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v10))
      {
        v11 = *(a1 + 72);
        v16 = 67109120;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v10, "[MAClientHandler] MADRequestID %d completed", &v16, 8u);
      }
    }

    v12 = *(*(a1 + 32) + 32);
    v13 = [NSNumber numberWithInt:*(a1 + 72)];
    [v12 removeObjectForKey:v13];

    (*(*(a1 + 56) + 16))();
  }

  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

void sub_100070300(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 104)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v45 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 104)];
    v5 = *(a1 + 72);
    v6 = [objc_opt_class() errorForStatus:4294967246 withDescription:v45];
    (*(v5 + 16))(v5, 0, v6);

    return;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = 0;
  v9 = *(a1 + 96);
  if (v9 > 4)
  {
    if (v9 > 9)
    {
      switch(v9)
      {
        case 10:
          v27 = [VCPMADOCRAssetProcessingTask alloc];
          v28 = *(a1 + 48);
          v29 = *(a1 + 56);
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 3221225472;
          v52[2] = sub_100070A30;
          v52[3] = &unk_100284AC0;
          v30 = *(a1 + 80);
          v31 = *(a1 + 88);
          v52[4] = *(a1 + 32);
          v53 = v31;
          v8 = [(VCPMADPhotoAssetProcessingTask *)v27 initWithLocalIdentifiers:v28 fromPhotoLibraryWithURL:v29 cancelBlock:&stru_100284AE0 progressHandler:v30 completionHandler:v52];
          v15 = v53;
          goto LABEL_27;
        case 12:
          v32 = [VCPMADVisualSearchAssetProcessingTask alloc];
          v33 = *(a1 + 48);
          v34 = *(a1 + 56);
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100070AC0;
          v50[3] = &unk_100284AC0;
          v35 = *(a1 + 80);
          v36 = *(a1 + 88);
          v50[4] = *(a1 + 32);
          v51 = v36;
          v8 = [(VCPMADVisualSearchAssetProcessingTask *)v32 initWithLocalIdentifiers:v33 fromPhotoLibraryWithURL:v34 cancelBlock:&stru_100284B00 progressHandler:v35 completionHandler:v50];
          v15 = v51;
          goto LABEL_27;
        case 255:
          v10 = [MADFullImageAssetProcessingTask alloc];
          v11 = *(a1 + 48);
          v12 = *(a1 + 56);
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100070B50;
          v48[3] = &unk_100284AC0;
          v13 = *(a1 + 80);
          v14 = *(a1 + 88);
          v48[4] = *(a1 + 32);
          v49 = v14;
          v8 = [(MADFullImageAssetProcessingTask *)v10 initWithLocalIdentifiers:v11 fromPhotoLibraryWithURL:v12 cancelBlock:&stru_100284B20 progressHandler:v13 completionHandler:v48];
          v15 = v49;
LABEL_27:

          goto LABEL_28;
      }

      goto LABEL_28;
    }

    if (v9 == 5)
    {
      v21 = [VCPPhotosSceneprintAssetProcessingTask taskWithAssets:*(a1 + 40) options:*(a1 + 64) andCompletionHandler:*(a1 + 88)];
    }

    else
    {
      if (v9 != 6)
      {
        goto LABEL_28;
      }

      v21 = [VCPVideoStabilizationAssetProcessingTask taskWithAssets:*(a1 + 40) andOptions:*(a1 + 64) andCompletionHandler:*(a1 + 88)];
    }

LABEL_25:
    v8 = v21;
    goto LABEL_28;
  }

  if (v9 > 2)
  {
    if (v9 == 3)
    {
      [VCPFaceAssetProcessingTask taskWithAssets:*(a1 + 40) andProgressHandler:*(a1 + 80) andCompletionHandler:*(a1 + 88)];
    }

    else
    {
      [VCPEffectsAssetProcessingTask taskWithAssets:*(a1 + 40) progressHandler:*(a1 + 80) andCompletionHandler:*(a1 + 88)];
    }
    v21 = ;
    goto LABEL_25;
  }

  if (v9 == 1)
  {
    v22 = [MADFullAssetProcessingTask alloc];
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100070BE0;
    v46[3] = &unk_100284AC0;
    v25 = *(a1 + 80);
    v26 = *(a1 + 88);
    v46[4] = *(a1 + 32);
    v47 = v26;
    v8 = [(MADFullAssetProcessingTask *)v22 initWithLocalIdentifiers:v23 fromPhotoLibraryWithURL:v24 cancelBlock:&stru_100284B40 progressHandler:v25 completionHandler:v46];
    v15 = v47;
    goto LABEL_27;
  }

  if (v9 == 2)
  {
    v16 = [VCPMADSceneAssetProcessingTask alloc];
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = sub_1000709A0;
    v54[3] = &unk_100284AC0;
    v19 = *(a1 + 80);
    v20 = *(a1 + 88);
    v54[4] = *(a1 + 32);
    v55 = v20;
    v8 = [(VCPMADSceneAssetProcessingTask *)v16 initWithLocalIdentifiers:v17 fromPhotoLibraryWithURL:v18 cancelBlock:&stru_100284A98 progressHandler:v19 completionHandler:v54];
    v15 = v55;
    goto LABEL_27;
  }

LABEL_28:
  v37 = +[VCPMADTaskScheduler sharedInstance];
  v38 = [v37 addForegroundTask:v8 withQoS:25];

  if (v38)
  {
    v39 = [NSNumber numberWithUnsignedInteger:v38];
    v40 = *(*(a1 + 32) + 32);
    v41 = [NSNumber numberWithInt:*(a1 + 104)];
    [v40 setObject:v39 forKeyedSubscript:v41];
  }

  else
  {
    v42 = *(a1 + 104);
    v43 = VCPTaskIDDescription();
    v39 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d for task %@(%lu)", v42, v43, *(a1 + 96)];

    v44 = *(a1 + 72);
    v41 = [objc_opt_class() errorForStatus:4294967278 withDescription:v39];
    (*(v44 + 16))(v44, 0, v41);
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1000709A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [objc_opt_class() errorForStatus:a2 withDescription:@"Scene Analysis Failed"];
  (*(v2 + 16))(v2, 0);
}

void sub_100070A30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [objc_opt_class() errorForStatus:a2 withDescription:@"OCR Analysis Failed"];
  (*(v2 + 16))(v2, 0);
}

void sub_100070AC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [objc_opt_class() errorForStatus:a2 withDescription:@"VS Analysis Failed"];
  (*(v2 + 16))(v2, 0);
}

void sub_100070B50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [objc_opt_class() errorForStatus:a2 withDescription:@"Full Image Analysis Failed"];
  (*(v2 + 16))(v2, 0);
}

void sub_100070BE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [objc_opt_class() errorForStatus:a2 withDescription:@"Full Analysis Failed"];
  (*(v2 + 16))(v2, 0);
}

void sub_1000714B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (MediaAnalysisLogLevel() >= 7)
  {
    v6 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[MAClientHandler] Releasing sandbox extension for %@", &v8, 0xCu);
    }
  }

  [v5 longLongValue];
  sandbox_extension_release();
}

void sub_100071B70(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100071C1C;
  v7[3] = &unk_100283698;
  v7[4] = v3;
  v10 = *(a1 + 56);
  v11 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, v7);
}

void sub_100071C1C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 56)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(*(a1 + 32) + 32);
    v6 = [NSNumber numberWithInt:*(a1 + 56)];
    [v5 removeObjectForKey:v6];

    LODWORD(v6) = *(a1 + 60);
    v7 = MediaAnalysisLogLevel();
    if (v6)
    {
      if (v7 >= 3)
      {
        v8 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v8))
        {
          v9 = *(a1 + 56);
          v10 = *(a1 + 60);
          *buf = 67109376;
          v23 = v9;
          v24 = 1024;
          v25 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[MAClientHandler] MADRequestID %d failed %d", buf, 0xEu);
        }
      }

      v11 = *(a1 + 40);
      v12 = *(a1 + 60);
      v13 = [NSString stringWithFormat:@"Recents processing failed", NSLocalizedDescriptionKey];
      v21 = v13;
      v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v12 userInfo:v14];
      (*(v11 + 16))(v11, v15);
    }

    else
    {
      if (v7 >= 6)
      {
        v16 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v16))
        {
          v17 = *(a1 + 56);
          *buf = 67109120;
          v23 = v17;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MAClientHandler] MADRequestID %d completed", buf, 8u);
        }
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = 0;
}

void sub_100071EE4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 80)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v20 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 80)];
    v5 = *(a1 + 48);
    v6 = [objc_opt_class() errorForStatus:4294967246 withDescription:v20];
    (*(v5 + 16))(v5, v6);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100072288;
    v21[3] = &unk_100284BB0;
    v21[4] = *(a1 + 72);
    v8 = objc_retainBlock(v21);
    if (*(a1 + 72) == 12 && (v9 = [[VCPMADVisualSearchFetchProcessingTask alloc] initWithFetchBlock:v8 photoLibraryWithURL:*(a1 + 40) cancelBlock:&stru_100284BD0 progressHandler:*(a1 + 56) completionHandler:*(a1 + 64)]) != 0)
    {
      v10 = +[VCPMADTaskScheduler sharedInstance];
      v11 = [v10 addForegroundTask:v9 withQoS:25];

      if (v11)
      {
        v12 = [NSNumber numberWithUnsignedInteger:v11];
        v13 = *(*(a1 + 32) + 32);
        v14 = [NSNumber numberWithInt:*(a1 + 80)];
        [v13 setObject:v12 forKeyedSubscript:v14];
      }

      else
      {
        v17 = *(a1 + 80);
        v18 = VCPTaskIDDescription();
        v12 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d for task %@(%lu)", v17, v18, *(a1 + 72)];

        v19 = *(a1 + 48);
        v14 = [objc_opt_class() errorForStatus:4294967278 withDescription:v12];
        (*(v19 + 16))(v19, v14);
      }
    }

    else
    {
      v15 = VCPTaskIDDescription();
      v9 = [NSString stringWithFormat:@"%@ not supported on this platform", v15];

      v16 = *(a1 + 48);
      v12 = [objc_opt_class() errorForStatus:4294967246 withDescription:v9];
      (*(v16 + 16))(v16, v12);
    }

    objc_autoreleasePoolPop(v7);
  }
}

id sub_100072288(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [NSSortDescriptor sortDescriptorWithKey:@"creationDate" ascending:0];
  v14 = v3;
  v4 = [NSArray arrayWithObjects:&v14 count:1];
  [v2 setSortDescriptors:v4];

  v5 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  v6 = [PHAsset fetchAssetsFromCameraSinceDate:v5 options:v2];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = VCPTaskIDDescription();
      v10 = 138412546;
      v11 = v8;
      v12 = 1024;
      v13 = [v6 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[%@] Evaluating %d recently captured assets", &v10, 0x12u);
    }
  }

  return v6;
}

void sub_100072428(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1000726BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1000726F0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v6 = [NSNumber numberWithInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:?];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void sub_100072F00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100072FF0;
  v12[3] = &unk_100283368;
  v17 = *(a1 + 56);
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_100072FF0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 72)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 72);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 72);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 72), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 56) + 16))();
  }

  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_1000731F8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 96)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 96)];
    v4 = *(a1 + 72);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPRequestSuggestedPersonsTask taskWithPersonWithLocalIdentifier:*(a1 + 40) toBeConfirmedPersonSuggestions:*(a1 + 48) toBeRejectedPersonSuggestions:*(a1 + 56) andPhotoLibraryURL:*(a1 + 64) andProgressHandler:*(a1 + 80) andReply:*(a1 + 88)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 96)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 96)];
      v12 = *(a1 + 72);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_1000737B4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073888;
  block[3] = &unk_100284C70;
  v16 = *(a1 + 56);
  block[4] = v7;
  v13 = v5;
  v9 = v6;
  v17 = a2;
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_100073888(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 64);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 64), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 48) + 16))();
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_100073A90(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 80)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 80)];
    v4 = *(a1 + 56);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPRequestUpdateKeyFacesOfPersonsTask taskWithLocalIdentifiers:*(a1 + 40) andForceUpdate:*(a1 + 84) andPhotoLibraryURL:*(a1 + 48) andProgressHandler:*(a1 + 64) andReply:*(a1 + 72)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 80)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 80)];
      v12 = *(a1 + 56);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100074044(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100074134;
  v12[3] = &unk_100283368;
  v17 = *(a1 + 56);
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_100074134(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 72)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 72);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 72);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 72), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 56) + 16))();
  }

  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_10007433C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 80)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 80)];
    v4 = *(a1 + 56);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPRequestFaceCandidatesforKeyFaceForPersonTask taskWithLocalIdentifiers:*(a1 + 40) andPhotoLibraryURL:*(a1 + 48) andProgressHandler:*(a1 + 64) andReply:*(a1 + 72)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 80)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 80)];
      v12 = *(a1 + 56);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100074A6C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074B40;
  block[3] = &unk_100284C70;
  v16 = *(a1 + 56);
  block[4] = v7;
  v13 = v5;
  v9 = v6;
  v17 = a2;
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_100074B40(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 64);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 64), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 48) + 16))();
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_100074D48(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 72)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 72)];
    v4 = *(a1 + 48);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPRequestResetPersonsTask taskWithPhotoLibraryURL:*(a1 + 40) andProgressHandler:*(a1 + 56) andReply:*(a1 + 64)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 72)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 72)];
      v12 = *(a1 + 48);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_1000752C4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075398;
  block[3] = &unk_100284C70;
  v16 = *(a1 + 56);
  block[4] = v7;
  v13 = v5;
  v9 = v6;
  v17 = a2;
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_100075398(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 64);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 64), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 48) + 16))();
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_1000755A0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 72)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 72)];
    v4 = *(a1 + 48);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPRequestResetFaceClassificationModelTask taskWithPhotoLibraryURL:*(a1 + 40) andProgressHandler:*(a1 + 56) andReply:*(a1 + 64)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 72)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 72)];
      v12 = *(a1 + 48);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100075B1C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100075BF0;
  block[3] = &unk_100284C70;
  v16 = *(a1 + 56);
  block[4] = v7;
  v13 = v5;
  v9 = v6;
  v17 = a2;
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_100075BF0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 64);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 64), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 48) + 16))();
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_100075DF8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 72)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 72)];
    v4 = *(a1 + 48);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPResetPetClassificationModelTask taskWithPhotoLibraryURL:*(a1 + 40) andProgressHandler:*(a1 + 56) andReply:*(a1 + 64)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 72)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 72)];
      v12 = *(a1 + 48);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_1000763A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100076498;
  v12[3] = &unk_100283368;
  v17 = *(a1 + 56);
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_100076498(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 72)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 72);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 72);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 72), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 56) + 16))();
  }

  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_1000766A0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 80)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 80)];
    v4 = *(a1 + 56);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPRequestSuggestedMePersonIdentifierTask taskWithContext:*(a1 + 40) andPhotoLibraryURL:*(a1 + 48) andProgressHandler:*(a1 + 64) andReply:*(a1 + 72)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 80)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 80)];
      v12 = *(a1 + 56);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100076DE0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 24);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100076ED0;
  v12[3] = &unk_100283368;
  v17 = *(a1 + 56);
  v12[4] = v8;
  v13 = v6;
  v14 = v5;
  v15 = v7;
  v16 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void sub_100076ED0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 72)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 72);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 72);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 72), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 56) + 16))();
  }

  v17 = *(*(a1 + 64) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_1000770D8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 72)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 72)];
    v4 = *(a1 + 48);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPRequestClusterCacheValidationTask taskWithPhotoLibraryURL:*(a1 + 40) andProgressHandler:*(a1 + 56) andReply:*(a1 + 64)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 72)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 72)];
      v12 = *(a1 + 48);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100077654(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077728;
  block[3] = &unk_100284C70;
  v16 = *(a1 + 56);
  block[4] = v7;
  v13 = v5;
  v9 = v6;
  v17 = a2;
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_100077728(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 64);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 64), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 48) + 16))();
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_100077930(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 72)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 72)];
    v4 = *(a1 + 48);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPRequestResetFaceClusteringStateTask taskWithPhotoLibraryURL:*(a1 + 40) andProgressHandler:*(a1 + 56) andReply:*(a1 + 64)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 72)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 72)];
      v12 = *(a1 + 48);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100077EAC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077F80;
  block[3] = &unk_100284C70;
  v16 = *(a1 + 56);
  block[4] = v7;
  v13 = v5;
  v9 = v6;
  v17 = a2;
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_100077F80(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 64);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 64), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 48) + 16))();
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_100078188(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 72)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 72)];
    v4 = *(a1 + 48);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPRequestReclusterFacesTask taskWithPhotoLibraryURL:*(a1 + 40) andProgressHandler:*(a1 + 56) andReply:*(a1 + 64)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 72)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 72)];
      v12 = *(a1 + 48);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_10007872C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078800;
  block[3] = &unk_100284C70;
  v16 = *(a1 + 56);
  block[4] = v7;
  v13 = v5;
  v9 = v6;
  v17 = a2;
  v10 = *(a1 + 48);
  v14 = v9;
  v15 = v10;
  v11 = v5;
  dispatch_async(v8, block);
}

void sub_100078800(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 64)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = MediaAnalysisLogLevel();
    if (v5)
    {
      if (v6 < 3)
      {
        goto LABEL_10;
      }

      v7 = VCPLogToOSLogType[3];
      if (!os_log_type_enabled(&_os_log_default, v7))
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 64);
      v9 = *(a1 + 40);
      LODWORD(v19) = 67109378;
      HIDWORD(v19) = v8;
      LOWORD(v20) = 2112;
      *(&v20 + 2) = v9;
      v10 = "[MAClientHandler] MADRequestID %d failed %@";
      v11 = v7;
      v12 = 18;
    }

    else
    {
      if (v6 < 6)
      {
        goto LABEL_10;
      }

      v13 = VCPLogToOSLogType[6];
      if (!os_log_type_enabled(&_os_log_default, v13))
      {
        goto LABEL_10;
      }

      v14 = *(a1 + 64);
      LODWORD(v19) = 67109120;
      HIDWORD(v19) = v14;
      v10 = "[MAClientHandler] MADRequestID %d completed";
      v11 = v13;
      v12 = 8;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v11, v10, &v19, v12);
LABEL_10:
    v15 = *(*(a1 + 32) + 32);
    v16 = [NSNumber numberWithInt:*(a1 + 64), v19, v20];
    [v15 removeObjectForKey:v16];

    (*(*(a1 + 48) + 16))();
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

void sub_100078A08(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v13 = [NSNumber numberWithInt:*(a1 + 80)];
  v3 = [v2 objectForKeyedSubscript:?];

  if (v3)
  {
    v14 = [NSString stringWithFormat:@"MADRequestID %d already exists", *(a1 + 80)];
    v4 = *(a1 + 56);
    v5 = [objc_opt_class() errorForStatus:4294967246 withDescription:v14];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v15 = [VCPRequestRebuildPersonsTask taskWithLocalIdentifiers:*(a1 + 40) andPhotoLibraryURL:*(a1 + 48) andProgressHandler:*(a1 + 64) andReply:*(a1 + 72)];
    v7 = +[VCPMADTaskScheduler sharedInstance];
    v8 = [v7 addForegroundTask:v15 withQoS:25];

    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedInteger:v8];
      v10 = *(*(a1 + 32) + 32);
      v11 = [NSNumber numberWithInt:*(a1 + 80)];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }

    else
    {
      v9 = [NSString stringWithFormat:@"Failed to create task for MADRequestID %d", *(a1 + 80)];
      v12 = *(a1 + 56);
      v11 = [objc_opt_class() errorForStatus:4294967278 withDescription:v9];
      (*(v12 + 16))(v12, 0, v11);
    }

    objc_autoreleasePoolPop(v6);
  }
}

void sub_100079568(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007960C;
  block[3] = &unk_100284D10;
  block[4] = v2;
  v6 = *(a1 + 48);
  v7 = a2;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

void sub_10007960C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 52);
    if (v5)
    {
      v6 = [NSString stringWithFormat:@"MADRequestID %d failed %d", *(a1 + 48), v5];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v7 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 138412290;
          v16 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] %@", buf, 0xCu);
        }
      }

      v8 = v6;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v9 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v9))
        {
          v10 = *(a1 + 48);
          *buf = 67109120;
          LODWORD(v16) = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MAClientHandler] MADRequestID %d completed", buf, 8u);
        }
      }

      v8 = 0;
    }

    v11 = *(*(a1 + 32) + 32);
    v12 = [NSNumber numberWithInt:*(a1 + 48)];
    [v11 removeObjectForKey:v12];

    v13 = *(a1 + 40);
    v14 = [objc_opt_class() errorForStatus:*(a1 + 52) withDescription:v8];
    (*(v13 + 16))(v13, v14);
  }
}

void sub_10007982C(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_100079D44(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079DE8;
  block[3] = &unk_100284D10;
  block[4] = v2;
  v6 = *(a1 + 48);
  v7 = a2;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

void sub_100079DE8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 52);
    if (v5)
    {
      v6 = [NSString stringWithFormat:@"MADRequestID %d failed %d", *(a1 + 48), v5];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v7 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 138412290;
          v16 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] %@", buf, 0xCu);
        }
      }

      v8 = v6;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v9 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v9))
        {
          v10 = *(a1 + 48);
          *buf = 67109120;
          LODWORD(v16) = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MAClientHandler] MADRequestID %d completed", buf, 8u);
        }
      }

      v8 = 0;
    }

    v11 = *(*(a1 + 32) + 32);
    v12 = [NSNumber numberWithInt:*(a1 + 48)];
    [v11 removeObjectForKey:v12];

    v13 = *(a1 + 40);
    v14 = [objc_opt_class() errorForStatus:*(a1 + 52) withDescription:v8];
    (*(v13 + 16))(v13, v14);
  }
}

void sub_10007A008(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_10007A39C(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007A440;
  block[3] = &unk_100284D10;
  block[4] = v2;
  v6 = *(a1 + 48);
  v7 = a2;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

void sub_10007A440(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = [NSNumber numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 52);
    if (v5)
    {
      v6 = [NSString stringWithFormat:@"MADRequestID %d failed %d", *(a1 + 48), v5];
      if (MediaAnalysisLogLevel() >= 3)
      {
        v7 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v7))
        {
          *buf = 138412290;
          v16 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] %@", buf, 0xCu);
        }
      }

      v8 = v6;
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 6)
      {
        v9 = VCPLogToOSLogType[6];
        if (os_log_type_enabled(&_os_log_default, v9))
        {
          v10 = *(a1 + 48);
          *buf = 67109120;
          LODWORD(v16) = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MAClientHandler] MADRequestID %d completed", buf, 8u);
        }
      }

      v8 = 0;
    }

    v11 = *(*(a1 + 32) + 32);
    v12 = [NSNumber numberWithInt:*(a1 + 48)];
    [v11 removeObjectForKey:v12];

    v13 = *(a1 + 40);
    v14 = [objc_opt_class() errorForStatus:*(a1 + 52) withDescription:v8];
    (*(v13 + 16))(v13, v14);
  }
}

void sub_10007A660(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_10007A9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_10007AA64(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v7 optInStatus:v6 error:&obj];
  objc_storeStrong((v8 + 40), obj);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }

  else
  {
    v13 = VCPMAAutoCounterOptInStatusKey;
    v10 = [NSNumber numberWithBool:v9];
    v14 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [*(a1 + 40) setObject:v11 forKeyedSubscript:v6];
  }
}

void sub_10007AEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_10007AF74(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = a1[4];
  v8 = *(a1[6] + 8);
  obj = *(v8 + 40);
  v9 = [v7 optInUserPickedPerson:v6 error:&obj extendTimeoutBlock:&stru_100284DE0 cancelBlock:&stru_100284E00];
  objc_storeStrong((v8 + 40), obj);
  if (*(*(a1[6] + 8) + 40))
  {
    *a4 = 1;
  }

  else
  {
    v15 = VCPMAAutoCounterOptInStatusKey;
    v10 = [NSNumber numberWithBool:v9];
    v16 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v12 = a1[5];
    v13 = [v6 objectForKeyedSubscript:VCPMAPersonIdentifier];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }
}

void sub_10007B108(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10007B44C(_Unwind_Exception *a1)
{
  v9 = v7;

  _Unwind_Resume(a1);
}

void sub_10007B4B4(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10007BA18(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10007BE8C(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10007C220(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_10007C594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

void sub_10007C610(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

void sub_10007C624(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = *(a1 + 48);
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] Completed MADRequestID %d", v9, 8u);
    }
  }

  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void sub_10007C748(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 32) + 16))();
  (*(*(a1 + 40) + 16))();
}

void sub_10007CB78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v5 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v5))
    {
      v6 = *(a1 + 40);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MAClientHandler] Completed MADRequestID %d", v7, 8u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10007D368(_Unwind_Exception *a1)
{
  _Block_object_dispose((v7 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_10007D4B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007D5A0;
  v6[3] = &unk_100284FC8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 enumerateIndexesUsingBlock:v6];
}

void sub_10007D5A0(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v5)
  {
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) setMomentsScheduledAssetWithLocalIdentifier:*(*(&v8 + 1) + 8 * v7) taskID:a2 requestDate:{*(a1 + 48), v8}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_10007D6C4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v7)
  {
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [*(a1 + 40) setMomentsScheduledAssetWithLocalIdentifier:v10 taskID:a2 andRequestDate:*(a1 + 48)];
        if (v11)
        {
          if (MediaAnalysisLogLevel() >= 3)
          {
            v12 = VCPLogToOSLogType[3];
            if (os_log_type_enabled(&_os_log_default, v12))
            {
              v13 = VCPTaskIDDescription();
              *buf = 138412546;
              v27 = v10;
              v28 = 2112;
              v29 = v13;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v12, "[MAClientHandler] Failed to schedule asset %@ for Moments deferred processing (type %@)", buf, 0x16u);
            }
          }

          v24 = NSLocalizedDescriptionKey;
          v14 = VCPTaskIDDescription();
          v15 = [NSString stringWithFormat:@"[MAClientHandler] Failed to schedule asset %@ for Moments deferred processing (type %@)", v10, v14, v20];
          v25 = v15;
          v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          v17 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v11 userInfo:v16];
          v18 = *(*(a1 + 56) + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = v17;

          *a3 = 1;
          goto LABEL_14;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

void sub_10007DD14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [NSString stringWithFormat:@"MADRequestID %d failed %d", *(a1 + 48), a2];
    if (MediaAnalysisLogLevel() >= 3)
    {
      v5 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v5))
      {
        *buf = 138412290;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[MAClientHandler] %@", buf, 0xCu);
      }
    }

    v6 = v4;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 6)
    {
      v7 = VCPLogToOSLogType[6];
      if (os_log_type_enabled(&_os_log_default, v7))
      {
        v8 = *(a1 + 48);
        *buf = 67109120;
        LODWORD(v12) = v8;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MAClientHandler] MADRequestID %d completed", buf, 8u);
      }
    }

    v6 = 0;
  }

  v9 = *(a1 + 40);
  v10 = [objc_opt_class() errorForStatus:a2 withDescription:v6];
  (*(v9 + 16))(v9, v10);
}

void sub_10007EB34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v4 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 40);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "[MAClientHandler] Completed MADRequestID %d", v6, 8u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10007F488(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

uint64_t sub_100080500(uint64_t a1)
{
  v2 = [*(a1 + 32) cancelBlock];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) cancelBlock];
    v5 = v4[2]();

    if (v5)
    {
      return 1;
    }
  }

  v7 = +[VCPWatchdog sharedWatchdog];
  [v7 pet];

  return 0;
}

void sub_100080590(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100080668()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8210;
  qword_1002B8210 = v0;
}

void sub_100080B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a33, 8);

  _Block_object_dispose((v41 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100080BF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100080C0C(uint64_t a1, double a2)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v4 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v4))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "%@ %.2f%% complete", &v6, 0x16u);
    }
  }
}

uint64_t sub_100080CE0(void *a1)
{
  [*(*(a1[6] + 8) + 40) stop];
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = a1[4];
      [*(*(a1[6] + 8) + 40) elapsedTimeSeconds];
      v10 = 138412546;
      v11 = v3;
      v12 = 2048;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "%@ Ran for %0.6fs", &v10, 0x16u);
    }
  }

  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  if (MediaAnalysisLogLevel() >= 5)
  {
    v7 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = a1[4];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "%@ Finished background processing", &v10, 0xCu);
    }
  }

  return (*(a1[5] + 16))();
}

id sub_100081570(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));

  return v1;
}

void sub_100081688()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8220;
  qword_1002B8220 = v0;
}

void sub_100082690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = MADPhotosFullAssetProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1000864A4(uint64_t a1, void *a2)
{
  v18 = a2;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v20 = a1;
  obj = *(*(a1 + 32) + 56);
  v3 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v3)
  {
    v17 = *v24;
    type = VCPLogToOSLogType[7];
    do
    {
      v19 = v3;
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
        {
          v6 = *(*(v20 + 32) + 128);
          v7 = [v5 asset];
          v8 = [v7 localIdentifier];
          *buf = 138412546;
          v28 = v6;
          v29 = 2112;
          v30 = v8;
          _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][%@][MACD] Setting processing status to running", buf, 0x16u);
        }

        v9 = [v5 previousAttempts];
        v22 = [v5 asset];
        v10 = *(v20 + 40);
        v11 = *(*(v20 + 32) + 160);
        v12 = [v5 asset];
        v13 = [v12 mediaType];
        v14 = [v5 asset];
        [v18 setAttempts:v9 + 1 asset:v22 taskID:v11 status:1 lastAttemptDate:v10 mediaType:v13 mediaSubtypes:objc_msgSend(v14 errorCode:"mediaSubtypes") errorLine:{objc_msgSend(v5, "previousErrorCode"), objc_msgSend(v5, "previousErrorLine")}];

        objc_autoreleasePoolPop(context);
      }

      v3 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v3);
  }
}

uint64_t sub_100088574(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = [*(a1 + 32) cancelBlock];
  if (v3)
  {
    v4 = [*(a1 + 32) cancelBlock];
    v5 = v4[2]();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100088600(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_100088624(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = [*(a1 + 32) cancelBlock];
  if (v3)
  {
    v4 = [*(a1 + 32) cancelBlock];
    v5 = v4[2]();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1000886B0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_1000886D4(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = [*(a1 + 32) cancelBlock];
  if (v3)
  {
    v4 = [*(a1 + 32) cancelBlock];
    v5 = v4[2]();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_100088760(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

intptr_t sub_100088AA4(uint64_t a1)
{
  v2 = VCPSignPostLog();
  v3 = os_signpost_id_generate(v2);

  v4 = VCPSignPostLog();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MADPhotosFullAssetProcessingTask_ProcessAsset", "", buf, 2u);
  }

  [*(a1 + 32) processAssetEntry:*(a1 + 40)];
  v6 = VCPSignPostLog();
  v7 = v6;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v3, "MADPhotosFullAssetProcessingTask_ProcessAsset", "", v9, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_10008966C(void *a1)
{
  v2 = [PHAssetChangeRequest changeRequestForAsset:a1[4]];
  [v2 setVariationSuggestionStates:a1[5] forVariationType:1];
  [v2 setVariationSuggestionStates:a1[6] forVariationType:3];
}

void sub_1000899F4(uint64_t a1, void *a2)
{
  v20 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(*(a1 + 32) + 56);
  v3 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v3)
  {
    v4 = *v23;
    type = VCPLogToOSLogType[6];
    v19 = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = *(*(a1 + 32) + 128);
        v9 = [v6 asset];
        v10 = [v9 localIdentifier];
        v11 = [NSString stringWithFormat:@"[%@][%@]", v8, v10];

        if ([v6 analysisTypes] || !objc_msgSend(v6, "isAnalysisFromComputeSync"))
        {
          if ([v6 status])
          {
            goto LABEL_18;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v19))
          {
            v16 = [v6 mergedAnalysisResults];
            v17 = [v16 vcp_analysisDescriptionWithResultDetails:1];
            *buf = 138412546;
            v27 = v11;
            v28 = 2112;
            v29 = v17;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "%@ Storing completed analysis into MA DB: %@", buf, 0x16u);
          }

          v14 = [v6 asset];
          v15 = [v6 mergedAnalysisResults];
          [v20 assetWithPhotosAsset:v14 analysis:v15];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
          {
            v12 = [v6 existingAnalysis];
            v13 = [v12 vcp_analysisDescriptionWithResultDetails:1];
            *buf = 138412546;
            v27 = v11;
            v28 = 2112;
            v29 = v13;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Storing existing analysis results from compute sync into MA DB: %@", buf, 0x16u);
          }

          v14 = [v6 asset];
          v15 = [v6 existingAnalysis];
          [v20 assetWithPhotosAsset:v14 analysis:v15];
        }

LABEL_18:
        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v3);
  }
}

void sub_10008B140(uint64_t a1, void *a2)
{
  v3 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v28 = a1;
  obj = *(*(a1 + 32) + 56);
  v4 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v4)
  {
    v25 = *v31;
    type = VCPLogToOSLogType[7];
    do
    {
      v5 = 0;
      v26 = v4;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * v5);
        context = objc_autoreleasePoolPush();
        v7 = *(*(v28 + 32) + 128);
        v8 = [v6 asset];
        v9 = [v8 localIdentifier];
        v29 = [NSString stringWithFormat:@"[%@][%@]", v7, v9];

        if (![v6 status])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v35 = v29;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
          }

          goto LABEL_16;
        }

        if ([v6 status] == -128)
        {
          if (![v6 previousAttempts])
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v35 = v29;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
            }

LABEL_16:
            v10 = [v6 asset];
            v11 = [v10 localIdentifier];
            [v3 removeProcessingStatusForLocalIdentifier:v11 taskID:*(*(v28 + 32) + 160)];
            goto LABEL_22;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v35 = v29;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
          }

          v22 = [v6 previousAttempts];
          v10 = [v6 asset];
          v21 = *(*(v28 + 32) + 160);
          v20 = [v6 previousStatus];
          v11 = [v6 lastAttemptDate];
          v12 = [v6 asset];
          v13 = [v12 mediaType];
          v14 = [v6 asset];
          [v3 setAttempts:v22 asset:v10 taskID:v21 status:v20 lastAttemptDate:v11 mediaType:v13 mediaSubtypes:objc_msgSend(v14 errorCode:"mediaSubtypes") errorLine:{objc_msgSend(v6, "previousErrorCode"), objc_msgSend(v6, "previousErrorLine")}];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v35 = v29;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
          }

          [v6 status];
          v15 = MADProcessingStatusForOSStatus();
          v16 = [v6 asset];
          v17 = [v6 currentAttemptDate];
          v10 = [v16 mad_nextAttemptDateForStatus:v15 currentAttemptDate:v17 attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

          v18 = [v6 errorCode];
          v19 = [v6 errorLine];
          v11 = [v6 asset];
          v12 = [v11 localIdentifier];
          [v3 updateProcessingStatus:v15 nextAttemptDate:v10 errorCode:v18 errorLine:v19 localIdentifier:v12 taskID:*(*(v28 + 32) + 160)];
        }

LABEL_22:
        objc_autoreleasePoolPop(context);
        v5 = v5 + 1;
      }

      while (v26 != v5);
      v4 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v4);
  }
}

uint64_t sub_10008FDC4(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t sub_10008FE2C(uint64_t a1)
{
  v2 = +[VCPWatchdog sharedWatchdog];
  [v2 pet];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_100090400()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = qword_1002B8298;
  qword_1002B8298 = v0;
}

void sub_100090DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = MADPhotosOCRAssetProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_100091340(uint64_t a1)
{
  v2 = [NSNumber numberWithInt:*(a1 + 48)];
  v3 = *(*(a1 + 32) + 96);
  v4 = [*(a1 + 40) localIdentifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = +[NSDate now];
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = v5;
}

void sub_1000914D8(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 112);
  v2 = *(*(a1 + 32) + 96);
  v3 = [*(a1 + 40) localIdentifier];
  [v2 removeObjectForKey:v3];

  v4 = +[NSDate now];
  v5 = *(a1 + 32);
  v6 = *(v5 + 104);
  *(v5 + 104) = v4;

  if (MediaAnalysisLogLevel() >= 7)
  {
    v7 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      v8 = [*(*(a1 + 32) + 96) count];
      v9[0] = 67109120;
      v9[1] = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[OCR] %d downloads pending", v9, 8u);
    }
  }
}

void sub_1000916E0(uint64_t a1)
{
  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:*(*(a1 + 32) + 104)];
  *(*(*(a1 + 40) + 8) + 24) = v2;
}

void sub_100091800(uint64_t a1)
{
  *(*(a1 + 32) + 112) = *(a1 + 40);
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      v3 = [*(*(a1 + 32) + 96) count];
      v4 = *(a1 + 40);
      *buf = 67109376;
      v17 = v3;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[OCR][Download] Canceling %d download requests (%d)", buf, 0xEu);
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(*(a1 + 32) + 96) allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = +[PHAssetResourceManager defaultManager];
        [v10 cancelDataRequest:{objc_msgSend(v9, "intValue")}];
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

void sub_10009264C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[VCPWatchdog sharedWatchdog];
  [v7 pet];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) asset];
  v10 = [v8 removeDownloadRequestIDForAsset:v9];

  if (v6)
  {
    if (!v10)
    {
      if ([v6 mad_isDownloadThrottling])
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v11 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v11))
          {
            v12 = [*(a1 + 40) asset];
            v13 = [v12 localIdentifier];
            v14 = [v6 description];
            v19 = 138412546;
            v20 = v13;
            v21 = 2112;
            v22 = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "[OCR][Download][%@] Resource download throttled (%@)", &v19, 0x16u);
          }
        }

        v10 = 4294943488;
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3)
        {
          v15 = VCPLogToOSLogType[3];
          if (os_log_type_enabled(&_os_log_default, v15))
          {
            v16 = [*(a1 + 40) asset];
            v17 = [v16 localIdentifier];
            v18 = [v6 description];
            v19 = 138412546;
            v20 = v17;
            v21 = 2112;
            v22 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "[OCR][Download][%@] Resource download failed (%@)", &v19, 0x16u);
          }
        }

        v10 = 4294943494;
      }
    }

    [*(a1 + 40) setStatus:v10];
  }

  else
  {
    [*(a1 + 40) setDownloadURL:v5];
  }

  dispatch_group_leave(*(*(a1 + 32) + 80));
}

void sub_100092FBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(*(a1 + 32) + 56);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v7 = *v17;
    v8 = VCPLogToOSLogType[7];
    *&v6 = 138412290;
    v15 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, v8))
        {
          v11 = [v10 asset];
          v12 = [v11 localIdentifier];
          *buf = v15;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "[OCR][Prepare][%@][MACD] Setting processing status to running", buf, 0xCu);
        }

        v13 = [v10 previousAttempts];
        v14 = [v10 asset];
        [v3 setAttempts:v13 + 1 asset:v14 taskID:10 status:1 lastAttemptDate:*(a1 + 40)];

        v9 = v9 + 1;
      }

      while (v5 != v9);
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }
}

void sub_10009564C(uint64_t a1, void *a2)
{
  v21 = a2;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(*(a1 + 32) + 56);
  v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v3)
  {
    v4 = *v23;
    type = VCPLogToOSLogType[7];
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = [v6 asset];
        v9 = [v8 localIdentifier];
        v10 = [NSString stringWithFormat:@"[OCR][%@]", v9];

        if (![v6 status])
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis completed, removing processing status", buf, 0xCu);
          }

          goto LABEL_24;
        }

        if ([v6 status] == -128)
        {
          if (![v6 previousAttempts])
          {
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
            {
              *buf = 138412290;
              v27 = v10;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, removing processing status", buf, 0xCu);
            }

LABEL_24:
            v12 = [v6 asset];
            v14 = [v12 localIdentifier];
            [v21 removeProcessingStatusForLocalIdentifier:v14 taskID:10];
            goto LABEL_25;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis cancelled, recovering processing status", buf, 0xCu);
          }

          v11 = [v6 previousAttempts];
          v12 = [v6 asset];
          v13 = [v6 previousStatus];
          v14 = [v6 lastAttemptDate];
          [v21 setAttempts:v11 asset:v12 taskID:10 status:v13 lastAttemptDate:v14];
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(&_os_log_default, type))
          {
            *buf = 138412290;
            v27 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "%@ Analysis failed, updating processing status", buf, 0xCu);
          }

          [v6 status];
          v15 = MADProcessingStatusForOSStatus();
          v16 = [v6 asset];
          v17 = [v6 currentAttemptDate];
          v12 = [v16 mad_nextAttemptDateForStatus:v15 currentAttemptDate:v17 attemptCount:{objc_msgSend(v6, "previousAttempts") + 1}];

          v14 = [v6 asset];
          v18 = [v14 localIdentifier];
          [v21 updateProcessingStatus:v15 nextAttemptDate:v12 localIdentifier:v18 taskID:10];
        }

LABEL_25:

        objc_autoreleasePoolPop(v7);
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v3);
  }
}

void sub_100096D20(uint64_t a1)
{
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(*(a1 + 32) + 56);
  v1 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v1)
  {
    v3 = *v35;
    v29 = VCPLogToOSLogType[4];
    type = VCPLogToOSLogType[6];
    v31 = VCPPhotosOCRProcessingFromGatingVersion;
    *&v2 = 138412802;
    v28 = v2;
    do
    {
      v4 = 0;
      do
      {
        if (*v35 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v34 + 1) + 8 * v4);
        v6 = objc_autoreleasePoolPush();
        if (![v5 status])
        {
          if ([v5 isAnalysisCompleteFromComputeSync])
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, type))
            {
              v7 = [v5 asset];
              v8 = [v7 localIdentifier];
              *buf = 138412290;
              v39 = v8;
              _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[OCR][%@] Analysis already complete from compute sync ingestion; skip publishing", buf, 0xCu);
            }
          }

          else if ([v5 version] != v31 || (objc_msgSend(v5, "asset"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "characterRecognitionProperties"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "algorithmVersion") == 0, v10, v9, v11))
          {
            v12 = [v5 asset];
            v32 = [PHAssetChangeRequest changeRequestForAsset:v12];

            v13 = [v5 ocrData];
            v14 = [v5 mrcData];
            v15 = [v5 version];
            v16 = [v5 asset];
            v17 = [v16 adjustmentVersion];
            [v32 setCharacterRecognitionData:v13 machineReadableCodeData:v14 algorithmVersion:v15 adjustmentVersion:v17];

            v18 = [v5 asset];
            v19 = [v18 mad_isEligibleForComputeSync];

            if (v19)
            {
              v20 = [v5 asset];
              v21 = [v20 mad_refetchAsset];

              if (!v21)
              {
                v21 = [v5 asset];
              }

              v22 = [v21 mad_analysisStageAfterCompletingAnalysis:10];
              [v32 setLocalAnalysisStage:v22];
              v23 = [MADComputeSyncPayloadResults payloadDataForAsset:v21 targetStage:v22 embeddingResults:0 fullAnalysisResults:0];
              if (v23)
              {
                [v32 setComputeSyncMediaAnalysisPayload:v23];
              }

              else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(&_os_log_default, v29))
              {
                v24 = [v21 localIdentifier];
                v25 = [v21 mediaAnalysisProperties];
                v26 = [v25 localAnalysisStage];
                *buf = v28;
                v39 = v24;
                v40 = 1024;
                v41 = v22;
                v42 = 1024;
                v43 = v26;
                _os_log_impl(&_mh_execute_header, &_os_log_default, v29, "[OCR][%@] No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
              }
            }
          }
        }

        objc_autoreleasePoolPop(v6);
        v4 = v4 + 1;
      }

      while (v1 != v4);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      v1 = v27;
    }

    while (v27);
  }
}

void sub_100097248(id a1)
{
  v1 = +[VCPWatchdog sharedWatchdog];
  [v1 pet];
}

void sub_1000978C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  sub_100002CBC(&a11);
  sub_100002CBC(&a12);
  objc_destroyWeak((v21 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100097948(id a1)
{
  if (MediaAnalysisLogLevel() >= 6)
  {
    v1 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v1))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v1, "[MADVideoSessio] XPC connection interrupted", v2, 2u);
    }
  }
}

void sub_1000979C4(uint64_t a1)
{
  if (MediaAnalysisLogLevel() >= 5)
  {
    v2 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MADVideoSessio] XPC connection invalidated", v7, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;

    v6 = +[VCPClientManager sharedManager];
    [v6 removeClientHandler:v4];
  }
}

void sub_100097C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_100097C80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100097C98(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v3)
  {
    v4 = *v21;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v20 + 1) + 8 * v5) requestID];
        v7 = [*(a1 + 40) requestID];
        v8 = [v6 isEqualToString:v7];

        if (v8)
        {
          v24 = NSLocalizedDescriptionKey;
          v11 = [*(a1 + 40) requestID];
          v13 = [NSString stringWithFormat:@"Failed adding request: Duplicated requestID %@", v11];
          v25 = v13;
          v14 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
          v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v14];
          v16 = *(*(a1 + 48) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          goto LABEL_12;
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v9 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 56);
  v19 = 0;
  v11 = [v9 taskWithSignpostPayload:v10 error:&v19];
  v12 = v19;
  v2 = v12;
  if (v11)
  {
    [*(*(a1 + 32) + 48) addObject:v11];
    [*(*(a1 + 32) + 48) sortUsingComparator:&stru_100285250];
  }

  else
  {
    v18 = *(*(a1 + 48) + 8);
    v2 = v12;
    v13 = *(v18 + 40);
    *(v18 + 40) = v2;
LABEL_12:
  }
}

int64_t sub_100097F6C(id a1, MADVideoSessionProcessingSubtaskProtocol *a2, MADVideoSessionProcessingSubtaskProtocol *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [objc_opt_class() dependencies];
  v7 = [v6 containsObject:objc_opt_class()];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [objc_opt_class() dependencies];
    v10 = [v9 containsObject:objc_opt_class()];

    v8 = (v10 << 63) >> 63;
  }

  return v8;
}

void sub_100098178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1000981A8(void *a1)
{
  if ([*(a1[4] + 48) count])
  {
    v2 = 0;
    if ([*(a1[4] + 48) count])
    {
      do
      {
        v3 = [*(a1[4] + 48) objectAtIndexedSubscript:v2];
        v4 = [v3 requestID];
        v5 = [v4 isEqualToString:a1[5]];

        if (v5)
        {
          break;
        }

        ++v2;
      }

      while (v2 < [*(a1[4] + 48) count]);
    }

    if (v2 >= [*(a1[4] + 48) count])
    {
      v12 = [NSString stringWithFormat:@"Failed removing request with requestID: %@", a1[5], NSLocalizedDescriptionKey];
      v18 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v14 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v13];
      v15 = *(a1[6] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;
    }

    else
    {
      v6 = *(a1[4] + 48);

      [v6 removeObjectAtIndex:v2];
    }
  }

  else
  {
    v19 = NSLocalizedDescriptionKey;
    v7 = [NSString stringWithFormat:@"Failed removing request from empty list"];
    v20 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v9 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v8];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void sub_1000985F8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_100098780(uint64_t a1)
{
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_100097C80;
  v55 = sub_100097C90;
  v56 = 0;
  v38 = objc_alloc_init(NSMutableArray);
  v34 = [*(a1 + 32) tasks];
  if ([v34 count])
  {
    pixelBufferOut = 0;
    v2 = CVPixelBufferCreateWithIOSurface(0, *(a1 + 48), 0, &pixelBufferOut);
    if (v2)
    {
      v60 = NSLocalizedDescriptionKey;
      v3 = [NSString stringWithFormat:@"[%@] Failed to create CVPixelBuffer from specified IOSurface", objc_opt_class()];
      v61 = v3;
      v4 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v5 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v2 userInfo:v4];
      v6 = v52[5];
      v52[5] = v5;

      v7 = *(a1 + 64);
      v8 = *(a1 + 40);
      if (v8)
      {
        [v8 timestamp];
      }

      else
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
      }

      (*(v7 + 16))(v7, v38, &v48, v52[5]);
    }

    else
    {
      v37 = [MADVideoSessionPixelBufferAsset assetWithPixelBuffer:pixelBufferOut frameProperties:*(a1 + 40)];
      v15 = *(a1 + 32);
      v16 = *(v15 + 88) == 1 && [MADUserSafetySettings isEnabledForTask:*(v15 + 64)];
      [v37 setUserSafetyEligible:v16];
      v39 = a1;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v34;
      v17 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
      if (v17)
      {
        v36 = *v44;
        while (2)
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v44 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v43 + 1) + 8 * i);
            v20 = objc_autoreleasePoolPush();
            [*(v39 + 56) pet];
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_100098E6C;
            v40[3] = &unk_1002852C8;
            v42 = &v51;
            v21 = v38;
            v41 = v21;
            v22 = [v19 processPixelBufferAsset:v37 resultHandler:v40];
            if ((v22 & 1) == 0)
            {
              if (!v52[5])
              {
                v57 = NSLocalizedDescriptionKey;
                v23 = objc_opt_class();
                v24 = objc_opt_class();
                v25 = NSStringFromClass(v24);
                v26 = [NSString stringWithFormat:@"[%@] Failed processPixelBufferAsset for task: %@", v23, v25];
                v58 = v26;
                v27 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
                v28 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v27];
                v29 = v52[5];
                v52[5] = v28;
              }

              v30 = *(v39 + 64);
              v31 = *(v39 + 40);
              if (v31)
              {
                [v31 timestamp];
              }

              else
              {
                v48 = 0;
                v49 = 0;
                v50 = 0;
              }

              (*(v30 + 16))(v30, v21, &v48, v52[5]);
            }

            objc_autoreleasePoolPop(v20);
            if (!v22)
            {

              goto LABEL_34;
            }
          }

          v17 = [obj countByEnumeratingWithState:&v43 objects:v59 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v32 = *(v39 + 64);
      v33 = *(v39 + 40);
      if (v33)
      {
        [v33 timestamp];
      }

      else
      {
        v48 = 0;
        v49 = 0;
        v50 = 0;
      }

      (*(v32 + 16))(v32, v38, &v48, v52[5]);
LABEL_34:
    }

    sub_100002CBC(&pixelBufferOut);
  }

  else
  {
    v62 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithFormat:@"No request to be performed"];
    v63 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v11 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v10];
    v12 = v52[5];
    v52[5] = v11;

    v13 = *(a1 + 64);
    v14 = *(a1 + 40);
    if (v14)
    {
      [v14 timestamp];
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v50 = 0;
    }

    (*(v13 + 16))(v13, v38, &v48, v52[5]);
  }

  _Block_object_dispose(&v51, 8);
}

void sub_100098D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, const void *a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44)
{
  sub_100002CBC(&a35);

  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_100098E6C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_10009949C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v4 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = [v3 description];
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Failed to post TTR notification (%@)", &v7, 0xCu);
      }
    }
  }

  else if (MediaAnalysisLogLevel() >= 5)
  {
    v6 = VCPLogToOSLogType[5];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "Successfully posted TTR notification", &v7, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100099AC8(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_100099B80(uint64_t a1)
{
  [*(a1 + 32) pet];
  v47 = objc_alloc_init(NSDateFormatter);
  [v47 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  v1 = +[NSDate date];
  v46 = [v47 stringFromDate:v1];

  v2 = NSTemporaryDirectory();
  v3 = [*(a1 + 40) streamID];
  v4 = [NSString stringWithFormat:@"ttr_%@_%@.mov", v3, v46];
  v5 = [v2 stringByAppendingPathComponent:v4];
  v48 = [NSURL fileURLWithPath:v5];

  if (MediaAnalysisLogLevel() >= 7)
  {
    v6 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v6))
    {
      LODWORD(buf.value) = 138412290;
      *(&buf.value + 4) = v48;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "requestTTRNotification movieURL: %@", &buf, 0xCu);
    }
  }

  v7 = [*(a1 + 48) lastObject];
  v52 = v7;
  v51 = +[VCPSimpleMovieAssetWriter assetWriterWithURL:orientation:](VCPSimpleMovieAssetWriter, "assetWriterWithURL:orientation:", v48, [v7 orientation]);
  if (v51)
  {
    if (MediaAnalysisLogLevel() >= 7)
    {
      v8 = VCPLogToOSLogType[7];
      if (os_log_type_enabled(&_os_log_default, v8))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v8, "movieAssetWriter started.", &buf, 2u);
      }
    }

    memset(&buf, 0, sizeof(buf));
    v9 = [*(a1 + 48) firstObject];
    v10 = v9;
    if (v9)
    {
      [v9 timestamp];
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = *(a1 + 48);
    v16 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v16)
    {
      v17 = *v57;
      type = VCPLogToOSLogType[3];
      v45 = VCPLogToOSLogType[7];
      do
      {
        v18 = 0;
        do
        {
          if (*v57 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v56 + 1) + 8 * v18);
          v20 = objc_autoreleasePoolPush();
          memset(&v55, 0, sizeof(v55));
          if (v19)
          {
            [v19 timestamp];
          }

          else
          {
            memset(&lhs, 0, sizeof(lhs));
          }

          rhs = buf;
          CMTimeSubtract(&v55, &lhs, &rhs);
          v21 = [v19 pixelBuffer];
          if (!v21)
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v23 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, type))
              {
                if (v19)
                {
                  [v19 timestamp];
                }

                else
                {
                  memset(&lhs, 0, sizeof(lhs));
                }

                Seconds = CMTimeGetSeconds(&lhs);
                LODWORD(rhs.value) = 134217984;
                *(&rhs.value + 4) = Seconds;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "Failed creating the pixelBuffer at timestamp: %.4f, skipping TTR notification...", &rhs, 0xCu);
              }
            }

            v32 = *(a1 + 64);
            v64 = NSLocalizedDescriptionKey;
            v28 = [NSString stringWithFormat:@"Failed creating the pixelBuffer"];
            v65 = v28;
            v33 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
            v34 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v33];
            (*(v32 + 16))(v32, 0, v34);

            v7 = v52;
            goto LABEL_46;
          }

          lhs = v55;
          if ([v51 addPixelBuffer:v21 withTime:&lhs])
          {
            if (MediaAnalysisLogLevel() >= 3)
            {
              v22 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, type))
              {
                if (v19)
                {
                  [v19 timestamp];
                }

                else
                {
                  memset(&lhs, 0, sizeof(lhs));
                }

                v26 = CMTimeGetSeconds(&lhs);
                LODWORD(rhs.value) = 134217984;
                *(&rhs.value + 4) = v26;
                _os_log_impl(&_mh_execute_header, &_os_log_default, type, "movieAssetWriter failed adding pixelBuffer at timestamp: %.4f, skipping TTR notification...", &rhs, 0xCu);
              }
            }

            v27 = *(a1 + 64);
            v62 = NSLocalizedDescriptionKey;
            v28 = [NSString stringWithFormat:@"movieAssetWriter failed adding pixelBuffer"];
            v63 = v28;
            v29 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
            v30 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v29];
            (*(v27 + 16))(v27, 0, v30);

            v7 = v52;
LABEL_46:
            v25 = 0;
            goto LABEL_47;
          }

          if (MediaAnalysisLogLevel() < 7)
          {
            v25 = 1;
            v7 = v52;
            goto LABEL_48;
          }

          v24 = &_os_log_default;
          v7 = v52;
          if (os_log_type_enabled(&_os_log_default, v45))
          {
            if (v19)
            {
              [v19 timestamp];
            }

            else
            {
              memset(&lhs, 0, sizeof(lhs));
            }

            v35 = CMTimeGetSeconds(&lhs);
            LODWORD(rhs.value) = 134217984;
            *(&rhs.value + 4) = v35;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v45, "movieAssetWriter addPixelBuffer done at timestamp: %.4f", &rhs, 0xCu);
          }

          v25 = 1;
          v28 = &_os_log_default;
LABEL_47:

LABEL_48:
          objc_autoreleasePoolPop(v20);
          if (!v25)
          {

            goto LABEL_61;
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        v36 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
        v16 = v36;
      }

      while (v36);
    }

    if ([v51 finish])
    {
      if (MediaAnalysisLogLevel() >= 3)
      {
        v37 = VCPLogToOSLogType[3];
        if (os_log_type_enabled(&_os_log_default, v37))
        {
          LOWORD(v55.value) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v37, "TTR failed: Unable to finalize video recording", &v55, 2u);
        }
      }

      v38 = *(a1 + 64);
      v60 = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithFormat:@"TTR failed: Unable to finalize video recording"];
      v61 = v39;
      v40 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v41 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v40];
      (*(v38 + 16))(v38, 0, v41);
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 5)
      {
        v42 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v42))
        {
          LOWORD(v55.value) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v42, "TTR video recording finalized.", &v55, 2u);
        }
      }

      if (MediaAnalysisLogLevel() >= 5)
      {
        v43 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v43))
        {
          LOWORD(v55.value) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v43, "generateTapToRadarNotification started.", &v55, 2u);
        }
      }

      [*(a1 + 56) generateTapToRadarNotificationWithVideoURL:v48 options:*(a1 + 40) reply:*(a1 + 64)];
      if (MediaAnalysisLogLevel() >= 5)
      {
        v44 = VCPLogToOSLogType[5];
        if (os_log_type_enabled(&_os_log_default, v44))
        {
          LOWORD(v55.value) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v44, "generateTapToRadarNotification done.", &v55, 2u);
        }
      }
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v11 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v11))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v11, "Failed instantiating the movie writer, skipping TTR notification...", &buf, 2u);
      }
    }

    v12 = *(a1 + 64);
    v69 = NSLocalizedDescriptionKey;
    v13 = [NSString stringWithFormat:@"Failed instantiating the movie writer"];
    v70 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
    v15 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v14];
    (*(v12 + 16))(v12, 0, v15);
  }

LABEL_61:
}

VIService *__cdecl sub_10009A938(id a1)
{
  v1 = objc_alloc_init(VIService);

  return v1;
}

void sub_10009AA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = VCPMADPECLibraryProcessingTask;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_10009B51C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))(*(a1 + 32), [v4 code]);
}

void sub_10009B840(uint64_t a1)
{
  v2 = [*(a1 + 32) publish];
  if (v2)
  {
    v3 = v2;
    if (MediaAnalysisLogLevel() >= 3)
    {
      v4 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v4))
      {
        v5 = *(a1 + 32);
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "Failed to publish batch: %@", &v12, 0xCu);
      }
    }

    *(*(a1 + 40) + 24) = v3;
  }

  else
  {
    *(*(a1 + 40) + 32) += [*(a1 + 32) count];
    v6 = *(a1 + 40);
    v7 = 100.0;
    v8 = v6[5];
    v9.n128_f64[0] = v6[4] * 100.0 / v8;
    if (v9.n128_f64[0] < 100.0)
    {
      v7 = v6[4] * 100.0 / v8;
    }

    v10 = v9.n128_f64[0] > 0.0;
    v9.n128_u64[0] = 0;
    if (v10)
    {
      v9.n128_f64[0] = v7;
    }

    v11 = *(v6[6] + 16);

    v11(v9);
  }
}