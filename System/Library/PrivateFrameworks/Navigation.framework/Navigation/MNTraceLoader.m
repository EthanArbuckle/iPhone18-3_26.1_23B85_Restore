@interface MNTraceLoader
- (BOOL)_executeQuery:(id)a3 rowHandler:(id)a4;
- (BOOL)_loadAnnotatedUserBehaviorTable;
- (BOOL)_loadAnnotatedUserEnvironmentTable;
- (BOOL)_loadCompassHeadingDataTable;
- (BOOL)_loadDirectionsTableAllowDeprecatedProtocol:(BOOL)a3 outError:(id *)a4;
- (BOOL)_loadETAUpdatesTable;
- (BOOL)_loadEVDataTable;
- (BOOL)_loadInfoTable;
- (BOOL)_loadLocationsTable:(BOOL)a3;
- (BOOL)_loadMiscInfo;
- (BOOL)_loadMotionDataTable;
- (BOOL)_loadNavigationEventsTable;
- (BOOL)_loadNavigationUpdatesTable;
- (BOOL)_loadNetworkEvents;
- (BOOL)_loadRouteCreationActionsTable;
- (BOOL)_loadTraceVersion;
- (BOOL)_loadVehicleDataTable;
- (BOOL)_tableExists:(id)a3;
- (BOOL)_updateTraceFromVersion:(unint64_t)a3 outError:(id *)a4;
- (id)_errorWithCode:(int64_t)a3 errorDescriptionFormat:(id)a4;
- (id)_handleUpdateError;
- (id)loadTraceWithPath:(id)a3 options:(int64_t)a4 outError:(id *)a5;
@end

@implementation MNTraceLoader

- (id)_errorWithCode:(int64_t)a3 errorDescriptionFormat:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = [[v5 alloc] initWithFormat:v6 arguments:&v15];

  if (v7)
  {
    v12 = *MEMORY[0x1E696A578];
    v13[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MNTraceErrorDomain" code:a3 userInfo:{v8, &v15}];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_tableExists:(id)a3
{
  v4 = a3;
  ppStmt = 0;
  if (sqlite3_prepare_v2(-[MNTrace db](self->_trace, "db"), [@"SELECT count(*) FROM sqlite_master WHERE type='table' AND name=?" UTF8String], objc_msgSend(@"SELECT count(*) FROM sqlite_master WHERE type='table' AND name=?", "length"), &ppStmt, 0))
  {
    v5 = 0;
  }

  else
  {
    sqlite3_bind_text(ppStmt, 1, [v4 UTF8String], objc_msgSend(v4, "length"), 0);
    v5 = (sqlite3_step(ppStmt) & 0xFFFFFFFE) == 0x64 && sqlite3_column_int(ppStmt, 0) > 0;
    sqlite3_finalize(ppStmt);
  }

  return v5;
}

- (id)_handleUpdateError
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(MNTrace *)self->_trace tracePath];
  v5 = [v4 stringByDeletingLastPathComponent];

  v6 = [v3 attributesOfItemAtPath:v5 error:0];
  if (([v6 filePosixPermissions] & 0x80) != 0)
  {
    v9 = [v6 fileOwnerAccountName];
    v10 = [v9 isEqualToString:@"mobile"];

    if (v10)
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [v6 fileOwnerAccountName];
      v7 = [v11 stringWithFormat:@"Error updating trace because traces directory owner is '%@' instead of 'mobile'. Try running as root:\nchown mobile: %@", v12, v5];

      v8 = 5;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't update trace to current version because traces directory does not have write permission set. Try running as root:\n> chmod u+w %@", v5];
    v8 = 4;
  }

  v13 = [(MNTrace *)self->_trace tracePath];
  v14 = [v3 attributesOfItemAtPath:v13 error:0];

  if (([v14 filePosixPermissions] & 0x80) != 0)
  {
    v18 = [v14 fileOwnerAccountName];
    v19 = [v18 isEqualToString:@"mobile"];

    if (v19)
    {
      goto LABEL_11;
    }

    v20 = MEMORY[0x1E696AEC0];
    v16 = [v14 fileOwnerAccountName];
    v21 = [(MNTrace *)self->_trace tracePath];
    v17 = [v20 stringWithFormat:@"Can't open file because owner is '%@' instead of 'mobile'. Try running as root:\n> chown mobile: %@", v16, v21];

    v8 = 3;
    v7 = v21;
  }

  else
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = [(MNTrace *)self->_trace tracePath];
    v17 = [v15 stringWithFormat:@"Can't update trace to current version because file is readonly. Try running as root:\n> chmod u+w %@", v16];
    v8 = 2;
  }

  v7 = v17;
LABEL_11:
  if (v7)
  {
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v7;
      _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }

  v23 = [(MNTraceLoader *)self _errorWithCode:v8 errorDescriptionFormat:@"%@", v7];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (BOOL)_executeQuery:(id)a3 rowHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && (ppStmt = 0, !sqlite3_prepare_v2(-[MNTrace db](self->_trace, "db"), [v6 UTF8String], objc_msgSend(v6, "length"), &ppStmt, 0)))
  {
    while (1)
    {
      v9 = sqlite3_step(ppStmt);
      if (v9 != 100)
      {
        break;
      }

      v7[2](v7, ppStmt);
    }

    v10 = v9;
    sqlite3_finalize(ppStmt);
    v8 = v10 == 101;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_updateTraceFromVersion:(unint64_t)a3 outError:(id *)a4
{
  *&v31[5] = *MEMORY[0x1E69E9840];
  if (+[MNTrace currentVersion]!= a3)
  {
    if (+[MNTrace currentVersion]< a3)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "Trace was recorded with a newer build than the current build. Trace load failed because we can't downgrade.", buf, 2u);
      }

      if (!a4)
      {
        v7 = 0;
        goto LABEL_31;
      }

      v9 = [(MNTraceLoader *)self _errorWithCode:6 errorDescriptionFormat:@"Attempting to update a trace with a newer trace version: %d. Current trace version: %d", a3, +[MNTrace currentVersion]];
      v7 = 0;
      *a4 = v9;
LABEL_30:

      goto LABEL_31;
    }

    v29 = 0;
    v10 = [MNTrace upgradeSchemaFromVersion:a3 error:&v29];
    v11 = v29;
    if (v11)
    {
      v9 = v11;
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v9 localizedDescription];
        *buf = 138412290;
        *v31 = v13;
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "Error trying to upgrade trace schema: %@", buf, 0xCu);
      }

      if (a4)
      {
        v14 = v9;
        v7 = 0;
        *a4 = v9;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      if (![v10 length] || (errmsg = 0, !sqlite3_exec(-[MNTrace db](self->_trace, "db"), objc_msgSend(v10, "UTF8String"), 0, 0, &errmsg)))
      {
        [(MNTrace *)self->_trace setVersion:+[MNTrace currentVersion]];
        trace = self->_trace;
        v27 = 0;
        v20 = [MNTracePreparedStatement preparedStatementForTrace:trace statement:@"UPDATE info SET version = :version" outError:&v27];
        v9 = v27;
        [v20 bindParameter:@":version" int:{+[MNTrace currentVersion](MNTrace, "currentVersion")}];
        v7 = [v20 execute];
        if (v7)
        {
          v21 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = +[MNTrace currentVersion];
            *buf = 67109376;
            v31[0] = a3;
            LOWORD(v31[1]) = 1024;
            *(&v31[1] + 2) = v22;
            _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_DEFAULT, "Successfully updated trace from version %d to %d", buf, 0xEu);
          }
        }

        else if (a4)
        {
          v23 = [(MNTraceLoader *)self _errorWithCode:11 errorDescriptionFormat:@"Unexpected error writing new trace version."];

          v24 = v23;
          *a4 = v23;
          v9 = v23;
        }

        goto LABEL_29;
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error running migrator query for version %d. sqlite3 error description: %s", a3, errmsg];
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *v31 = v15;
        _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      v17 = [(MNTraceLoader *)self _errorWithCode:11 errorDescriptionFormat:@"%@", v15];
      v9 = v17;
      if (a4)
      {
        v18 = v17;
        *a4 = v9;
      }
    }

    v7 = 0;
    goto LABEL_29;
  }

  v7 = 1;
LABEL_31:
  v25 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_loadTraceVersion
{
  v3 = [[_TtC10Navigation29MNTraceSelectStatementBuilder alloc] initWithTrace:self->_trace tableName:@"info"];
  [(MNTraceSelectStatementBuilder *)v3 addColumn:@"version"];
  v4 = [(MNTraceSelectStatementBuilder *)v3 selectStatement];
  v5 = [v4 stepRow];
  if (v5)
  {
    -[MNTrace setVersion:](self->_trace, "setVersion:", [v4 intValue:@"version"]);
  }

  return v5;
}

- (BOOL)_loadRouteCreationActionsTable
{
  v48 = *MEMORY[0x1E69E9840];
  trace = self->_trace;
  v45 = 0;
  v4 = [MNTracePreparedStatement preparedStatementForTrace:trace statement:@"SELECT request_timestamp outError:response_timestamp, request_data, response_data, response_error_data, anchor_points_data, action FROM custom_route_creation_actions", &v45];
  v5 = v45;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v7)
  {
    v38 = self;
    v39 = v5;
    v40 = v8;
    v34 = 0;
    if ([v4 stepRow])
    {
      v9 = 0x1E8428000uLL;
      v10 = 0x1E696A000uLL;
      do
      {
        v11 = *(v9 + 3960);
        v12 = objc_opt_new();
        [v4 columnDouble:0];
        [v12 setRequestTimestamp:?];
        [v4 columnDouble:1];
        [v12 setResponseTimestamp:?];
        v13 = [v4 columnData:2];
        if (v13)
        {
          v14 = [objc_alloc(MEMORY[0x1E69A1CF8]) initWithData:v13];
          [v12 setRequest:v14];
        }

        v42 = v13;
        v15 = [v4 columnData:3];
        if (v15)
        {
          v16 = [objc_alloc(MEMORY[0x1E69A1D10]) initWithData:v15];
          [v12 setResponse:v16];
        }

        v17 = [v4 columnData:4];
        if (v17)
        {
          v18 = *(v10 + 3280);
          v19 = MEMORY[0x1E695DFD8];
          v20 = objc_opt_class();
          v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
          v44 = 0;
          v22 = [v18 unarchivedObjectOfClasses:v21 fromData:v17 error:&v44];
          v23 = v44;

          [v12 setError:v22];
          if (v23)
          {
            v24 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v47 = v23;
              _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "Error decoding directions response error: %@", buf, 0xCu);
            }
          }
        }

        v25 = [v4 columnData:5];
        if (v25)
        {
          v26 = *(v10 + 3280);
          v27 = objc_opt_class();
          v43 = 0;
          v28 = [v26 unarchivedArrayOfObjectsOfClass:v27 fromData:v25 error:&v43];
          v29 = v43;
          [v12 setAnchorPoints:v28];
          if (v29)
          {
            v41 = v15;
            v30 = v10;
            v31 = v34;
            v32 = v9;
            v33 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v47 = v29;
              _os_log_impl(&dword_1D311E000, v33, OS_LOG_TYPE_ERROR, "Error decoding anchor points: %@", buf, 0xCu);
            }

            v9 = v32;
            v34 = v31;
            v10 = v30;
            v15 = v41;
          }
        }

        [v12 setAction:{objc_msgSend(v4, "columnInt:", 6)}];
        if (!v34)
        {
          v34 = [MEMORY[0x1E695DF70] array];
        }

        [v34 addObject:v12];
      }

      while (([v4 stepRow] & 1) != 0);
    }

    [(MNTrace *)v38->_trace setRouteCreationActions:v34];
    v8 = v40;
    v6 = v39;
  }

  else
  {
    v34 = MNGetMNTraceLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v6;
      _os_log_impl(&dword_1D311E000, v34, OS_LOG_TYPE_ERROR, "Error loading custom_route_creation_actions table with error: %@", buf, 0xCu);
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_loadNetworkEvents
{
  if ([(MNTraceLoader *)self _tableExists:@"network_events"])
  {
    trace = self->_trace;
    v11 = 0;
    v4 = [MNTracePreparedStatement preparedStatementForTrace:trace statement:@"SELECT timestamp outError:wifi_on, cell_on, nlc_profile FROM network_events ORDER BY timestamp", &v11];
    v5 = v11;
    v6 = 0;
    if ([v4 stepRow])
    {
      v6 = 0;
      do
      {
        v7 = objc_alloc_init(MNTraceNetworkEvent);
        [v4 columnDouble:0];
        [(MNTraceNetworkEvent *)v7 setTimestamp:?];
        -[MNTraceNetworkEvent setWifiEnabled:](v7, "setWifiEnabled:", [v4 columnInt:1] != 0);
        -[MNTraceNetworkEvent setCellEnabled:](v7, "setCellEnabled:", [v4 columnInt:2] != 0);
        v8 = [v4 columnString:3];
        -[MNTraceNetworkEvent setNlcEnabled:](v7, "setNlcEnabled:", [v8 length] != 0);
        if ([v8 length])
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        [(MNTraceNetworkEvent *)v7 setNlcProfile:v9];
        if (!v6)
        {
          v6 = [MEMORY[0x1E695DF70] array];
        }

        [v6 addObject:v7];
      }

      while (([v4 stepRow] & 1) != 0);
    }

    [(MNTrace *)self->_trace setNetworkEvents:v6];
  }

  return 1;
}

- (BOOL)_loadMiscInfo
{
  if (![(MNTraceLoader *)self _tableExists:@"misc_info"])
  {
    return 1;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__20329;
  v10 = __Block_byref_object_dispose__20330;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__MNTraceLoader__loadMiscInfo__block_invoke;
  v5[3] = &unk_1E8430860;
  v5[4] = &v6;
  v3 = [(MNTraceLoader *)self _executeQuery:@"SELECT key rowHandler:value FROM misc_info", v5];
  [(MNTrace *)self->_trace setMiscInfo:v7[5]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __30__MNTraceLoader__loadMiscInfo__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MNTraceMiscInfo);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(a2, 0)}];
  [(MNTraceMiscInfo *)v4 setKey:v5];

  v6 = sqlite3_column_type(a2, 1);
  if (v6 == 1)
  {
    [(MNTraceMiscInfo *)v4 setIntValue:sqlite3_column_int(a2, 1)];
    goto LABEL_7;
  }

  v7 = v6;
  if (v6 == 2)
  {
    [(MNTraceMiscInfo *)v4 setDoubleValue:sqlite3_column_double(a2, 1)];
    goto LABEL_7;
  }

  if (v6 == 3)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{sqlite3_column_text(a2, 1)}];
    [(MNTraceMiscInfo *)v4 setStringValue:v8];

LABEL_7:
    v9 = *(*(*(a1 + 32) + 8) + 40);
    if (!v9)
    {
      v10 = [MEMORY[0x1E695DF90] dictionary];
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v9 = *(*(*(a1 + 32) + 8) + 40);
    }

    v13 = [(MNTraceMiscInfo *)v4 key];
    [v9 setObject:v4 forKeyedSubscript:v13];
    goto LABEL_10;
  }

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v15[0] = 67109120;
    v15[1] = v7;
    _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "Error loading row from misc_info. Type %d is not supported.", v15, 8u);
  }

LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)_loadNavigationUpdatesTable
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [[_TtC10Navigation29MNTraceSelectStatementBuilder alloc] initWithTrace:self->_trace tableName:@"navigation_updates"];
  [(MNTraceSelectStatementBuilder *)v4 addColumns:&unk_1F4EE2C68];
  v5 = [(MNTraceSelectStatementBuilder *)v4 selectStatement];
  v6 = v5;
  if (v5)
  {
    v19 = self;
    if ([v5 stepRow])
    {
      while (1)
      {
        v7 = [v6 intValue:@"type"];
        if (v7 == 2)
        {
          break;
        }

        if (v7 == 1)
        {
          v8 = objc_alloc_init(MNTraceNavigationUpdatesChangeRouteRow);
          [v6 doubleValue:@"timestamp"];
          [(MNTraceNavigationUpdatesRow *)v8 setTimestamp:?];
          v21[0] = objc_opt_class();
          v21[1] = objc_opt_class();
          v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
          v10 = [v6 objectsValue:@"parameters" ofClasses:v9];

          v11 = [v10 objectForKeyedSubscript:@"directionsResponseID"];
          [(MNTraceNavigationUpdatesChangeRouteRow *)v8 setDirectionsResponseID:v11];

          v12 = [v10 objectForKeyedSubscript:@"etauResponseID"];
          [(MNTraceNavigationUpdatesChangeRouteRow *)v8 setEtauResponseID:v12];

          v13 = [v10 objectForKeyedSubscript:@"routeIndex"];
          -[MNTraceNavigationUpdatesChangeRouteRow setRouteIndex:](v8, "setRouteIndex:", [v13 unsignedIntValue]);
          goto LABEL_7;
        }

LABEL_9:
        if (([v6 stepRow] & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      v8 = objc_alloc_init(MNTraceNavigationUpdatesDepartWaypointRow);
      [v6 doubleValue:@"timestamp"];
      [(MNTraceNavigationUpdatesRow *)v8 setTimestamp:?];
      v20[0] = objc_opt_class();
      v20[1] = objc_opt_class();
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
      v10 = [v6 objectsValue:@"parameters" ofClasses:v14];

      v15 = [v10 objectForKeyedSubscript:@"waypoint"];
      [(MNTraceNavigationUpdatesChangeRouteRow *)v8 setWaypoint:v15];

      v13 = [v10 objectForKeyedSubscript:@"legIndex"];
      -[MNTraceNavigationUpdatesChangeRouteRow setLegIndex:](v8, "setLegIndex:", [v13 unsignedIntValue]);
LABEL_7:

      v16 = [v10 objectForKeyedSubscript:@"reason"];
      -[MNTraceNavigationUpdatesChangeRouteRow setReason:](v8, "setReason:", [v16 unsignedIntValue]);

      if (v8)
      {
        [v3 addObject:v8];
      }

      goto LABEL_9;
    }

LABEL_10:
    [(MNTrace *)v19->_trace setNavigationUpdates:v3];
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (BOOL)_loadAnnotatedUserEnvironmentTable
{
  v3 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MNTraceLoader__loadAnnotatedUserEnvironmentTable__block_invoke;
  v7[3] = &unk_1E8430838;
  v8 = v3;
  v4 = v3;
  v5 = [(MNTraceLoader *)self _executeQuery:@"SELECT start_timestamp rowHandler:end_timestamp, environment_type FROM annotated_user_environments ORDER BY start_timestamp ASC", v7];
  [(MNTrace *)self->_trace setAnnotatedUserEnvironments:v4];

  return v5;
}

void __51__MNTraceLoader__loadAnnotatedUserEnvironmentTable__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_alloc_init(MNTraceAnnotatedUserEnvironmentRow);
  [(MNTraceAnnotatedUserEnvironmentRow *)v4 setStartTimestamp:sqlite3_column_double(a2, 0)];
  [(MNTraceAnnotatedUserEnvironmentRow *)v4 setEndTimestamp:sqlite3_column_double(a2, 1)];
  [(MNTraceAnnotatedUserEnvironmentRow *)v4 setEnvironmentType:sqlite3_column_int(a2, 2)];
  [*(a1 + 32) addObject:v4];
}

- (BOOL)_loadAnnotatedUserBehaviorTable
{
  v3 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MNTraceLoader__loadAnnotatedUserBehaviorTable__block_invoke;
  v7[3] = &unk_1E8430838;
  v8 = v3;
  v4 = v3;
  v5 = [(MNTraceLoader *)self _executeQuery:@"SELECT timestamp rowHandler:event FROM annotated_user_behavior ORDER BY timestamp ASC", v7];
  [(MNTrace *)self->_trace setAnnotatedUserBehavior:v4];

  return v5;
}

void __48__MNTraceLoader__loadAnnotatedUserBehaviorTable__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_alloc_init(MNTraceAnnotatedUserBehaviorRow);
  [(MNTraceAnnotatedUserBehaviorRow *)v4 setTimestamp:sqlite3_column_double(a2, 0)];
  [(MNTraceAnnotatedUserBehaviorRow *)v4 setEvent:sqlite3_column_int(a2, 1)];
  [*(a1 + 32) addObject:v4];
}

- (BOOL)_loadNavigationEventsTable
{
  v3 = [[_TtC10Navigation29MNTraceSelectStatementBuilder alloc] initWithTrace:self->_trace tableName:@"navigation_events"];
  [(MNTraceSelectStatementBuilder *)v3 addColumns:&unk_1F4EE2C50];
  [(MNTraceSelectStatementBuilder *)v3 innerJoin:@"navigation_event_types" where:@"event_id" equals:@"event_id"];
  v4 = [(MNTraceSelectStatementBuilder *)v3 selectStatement];
  if (v4)
  {
    v16 = self;
    v17 = v3;
    v5 = [MEMORY[0x1E695DF70] array];
    if ([v4 stepRow])
    {
      do
      {
        [v4 doubleValue:@"relative_timestamp"];
        v7 = v6;
        [v4 doubleValue:@"absolute_timestamp"];
        v9 = v8;
        v10 = [v4 stringValue:@"event_name"];
        v11 = [v4 stringValue:@"event_description"];
        v12 = [v4 intValue:@"event_id"];
        v13 = objc_alloc_init(MNTraceNavigationEventRow);
        [(MNTraceNavigationEventRow *)v13 setRelativeTimestamp:v7];
        v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v9];
        [(MNTraceNavigationEventRow *)v13 setDate:v14];

        [(MNTraceNavigationEventRow *)v13 setEventName:v10];
        [(MNTraceNavigationEventRow *)v13 setEventDescription:v11];
        [(MNTraceNavigationEventRow *)v13 setEventType:v12];
        [v5 addObject:v13];
      }

      while (([v4 stepRow] & 1) != 0);
    }

    [(MNTrace *)v16->_trace setNavigationEvents:v5];

    v3 = v17;
  }

  return v4 != 0;
}

- (BOOL)_loadEVDataTable
{
  trace = self->_trace;
  v71[0] = 0;
  v3 = [MNTracePreparedStatement preparedStatementForTrace:trace statement:@"SELECT relative_timestamp outError:absolute_timestamp, identifier, current_range_m, max_range_m, battery_percentage, min_battery_capacity_kwh, current_battery_capacity_kwh, max_battery_capacity_kwh, consumption_arguments, charging_arguments, is_charging, active_connector, vehicle_state_origin, vehicle_data FROM ev_data ORDER BY relative_timestamp ASC", v71];
  v49 = v71[0];
  v4 = 0;
  v5 = 0;
  if ([v3 stepRow])
  {
    v5 = 0;
    v4 = 0;
    do
    {
      [v3 columnDouble:0];
      v7 = v6;
      [v3 columnDouble:1];
      v9 = v8;
      v10 = [v3 columnString:2];
      [v3 columnDouble:3];
      v12 = v11;
      [v3 columnDouble:4];
      v14 = v13;
      [v3 columnDouble:5];
      v16 = v15;
      [v3 columnDouble:6];
      v18 = v17;
      [v3 columnDouble:7];
      v20 = v19;
      [v3 columnDouble:8];
      v22 = v21;
      v23 = [v3 columnString:9];
      v24 = [v3 columnString:10];
      v25 = [v3 columnInt:11];
      v26 = [v3 columnInt:12];
      v27 = [v3 columnInt:13];
      if (v27)
      {
        v28 = v27;
        v68 = v5;
        v29 = [v3 columnData:14];
        if (v29)
        {
          v30 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v29 error:0];

          v4 = v30;
        }

        v64 = v29;
        v69 = v24;
        v70 = v23;
        if (!v4)
        {
          v45 = [objc_alloc(MEMORY[0x1E69DF898]) initWithIdentifier:v10 displayName:@"TraceVehicle" year:0 manufacturer:0 model:0 colorHex:0 licensePlate:0 lprVehicleType:0 lprPowerType:0];
          v4 = v45;
          if (v28 == 2)
          {
            [v45 setSiriIntentsIdentifier:v10];
          }

          else if (v28 == 1)
          {
            [v45 setIapIdentifier:v10];
          }
        }

        v65 = v26;
        v67 = v4;
        v59 = v25 != 0;
        v58 = objc_alloc(MEMORY[0x1E69DF8A8]);
        v57 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v9];
        v56 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
        v31 = objc_alloc(MEMORY[0x1E696AD28]);
        v63 = [MEMORY[0x1E696B058] meters];
        v62 = [v31 initWithDoubleValue:v63 unit:v12];
        v61 = [MEMORY[0x1E696B058] kilometers];
        v52 = [v62 measurementByConvertingToUnit:v61];
        v32 = objc_alloc(MEMORY[0x1E696AD28]);
        v55 = [MEMORY[0x1E696B058] meters];
        v54 = [v32 initWithDoubleValue:v55 unit:v14];
        v53 = [MEMORY[0x1E696B058] kilometers];
        v33 = [v54 measurementByConvertingToUnit:v53];
        v34 = objc_alloc(MEMORY[0x1E696AD28]);
        v35 = v10;
        v51 = [MEMORY[0x1E696B030] kilowattHours];
        v36 = [v34 initWithDoubleValue:v51 unit:v18];
        v37 = objc_alloc(MEMORY[0x1E696AD28]);
        v38 = [MEMORY[0x1E696B030] kilowattHours];
        v39 = [v37 initWithDoubleValue:v38 unit:v20];
        v40 = objc_alloc(MEMORY[0x1E696AD28]);
        v41 = [MEMORY[0x1E696B030] kilowattHours];
        v42 = [v40 initWithDoubleValue:v41 unit:v22];
        v48 = v65;
        LOBYTE(v47) = v59;
        v66 = v35;
        v60 = [v58 initWithIdentifier:v35 dateOfUpdate:v57 origin:v28 batteryPercentage:v56 currentEVRange:v52 maxEVRange:v33 minBatteryCapacity:v36 currentBatteryCapacity:v39 maxBatteryCapacity:v42 consumptionArguments:v70 chargingArguments:v69 isCharging:v47 activeConnector:v48];

        v4 = v67;
        v43 = [v67 copy];
        [v43 _updateWithVehicleState:v60];
        v44 = objc_alloc_init(MNTraceEVDataRow);
        [(MNTraceEVDataRow *)v44 setTimestamp:v7];
        [(MNTraceEVDataRow *)v44 setVehicle:v43];
        v5 = v68;
        if (!v68)
        {
          v5 = [MEMORY[0x1E695DF70] array];
        }

        [v5 addObject:v44];

        v10 = v66;
        v24 = v69;
        v23 = v70;
      }
    }

    while (([v3 stepRow] & 1) != 0);
  }

  [(MNTrace *)self->_trace setEvData:v5];

  return 1;
}

- (BOOL)_loadVehicleDataTable
{
  v3 = [MEMORY[0x1E695DF70] array];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __38__MNTraceLoader__loadVehicleDataTable__block_invoke;
  v14[3] = &unk_1E8430838;
  v4 = v3;
  v15 = v4;
  if ([(MNTraceLoader *)self _executeQuery:@"SELECT relative_timestamp rowHandler:heading FROM vehicle_heading_data ORDER BY relative_timestamp ASC", v14])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __38__MNTraceLoader__loadVehicleDataTable__block_invoke_2;
    v12 = &unk_1E8430838;
    v13 = v5;
    v6 = v5;
    v7 = [(MNTraceLoader *)self _executeQuery:@"SELECT relative_timestamp rowHandler:speed FROM vehicle_speed_data ORDER BY relative_timestamp ASC", &v9];
    [(MNTrace *)self->_trace setVehicleHeadingData:v4, v9, v10, v11, v12];
    [(MNTrace *)self->_trace setVehicleSpeedData:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __38__MNTraceLoader__loadVehicleDataTable__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_alloc_init(MNTraceVehicleHeadingRow);
  [(MNTraceVehicleHeadingRow *)v4 setTimestamp:sqlite3_column_double(a2, 0)];
  [(MNTraceVehicleHeadingRow *)v4 setVehicleHeading:sqlite3_column_double(a2, 1)];
  [*(a1 + 32) addObject:v4];
}

void __38__MNTraceLoader__loadVehicleDataTable__block_invoke_2(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_alloc_init(MNTraceVehicleSpeedRow);
  [(MNTraceVehicleSpeedRow *)v4 setTimestamp:sqlite3_column_double(a2, 0)];
  [(MNTraceVehicleSpeedRow *)v4 setVehicleSpeed:sqlite3_column_double(a2, 1)];
  [*(a1 + 32) addObject:v4];
}

- (BOOL)_loadMotionDataTable
{
  v3 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MNTraceLoader__loadMotionDataTable__block_invoke;
  v7[3] = &unk_1E8430838;
  v8 = v3;
  v4 = v3;
  v5 = [(MNTraceLoader *)self _executeQuery:@"SELECT relative_timestamp rowHandler:type, exit_type, confidence FROM motion_data ORDER BY relative_timestamp ASC", v7];
  [(MNTrace *)self->_trace setMotionData:v4];

  return v5;
}

void __37__MNTraceLoader__loadMotionDataTable__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_alloc_init(MNTraceMotionDataRow);
  [(MNTraceMotionDataRow *)v4 setTimestamp:sqlite3_column_double(a2, 0)];
  [(MNTraceMotionDataRow *)v4 setMotionType:sqlite3_column_int(a2, 1)];
  [(MNTraceMotionDataRow *)v4 setExitType:sqlite3_column_int(a2, 2)];
  [(MNTraceMotionDataRow *)v4 setConfidence:sqlite3_column_int(a2, 3)];
  [*(a1 + 32) addObject:v4];
}

- (BOOL)_loadCompassHeadingDataTable
{
  v3 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__MNTraceLoader__loadCompassHeadingDataTable__block_invoke;
  v7[3] = &unk_1E8430838;
  v8 = v3;
  v4 = v3;
  v5 = [(MNTraceLoader *)self _executeQuery:@"SELECT relative_timestamp rowHandler:true_heading, magnetic_heading, accuracy FROM compass_heading_data ORDER BY relative_timestamp ASC", v7];
  [(MNTrace *)self->_trace setHeadingData:v4];

  return v5;
}

void __45__MNTraceLoader__loadCompassHeadingDataTable__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = objc_alloc_init(MNTraceHeadingDataRow);
  [(MNTraceHeadingDataRow *)v4 setTimestamp:sqlite3_column_double(a2, 0)];
  [(MNTraceHeadingDataRow *)v4 setTrueHeading:sqlite3_column_double(a2, 1)];
  [(MNTraceHeadingDataRow *)v4 setMagneticHeading:sqlite3_column_double(a2, 2)];
  [(MNTraceHeadingDataRow *)v4 setHeadingAccuracy:sqlite3_column_double(a2, 3)];
  [*(a1 + 32) addObject:v4];
}

- (BOOL)_loadETAUpdatesTable
{
  v3 = [MEMORY[0x1E695DF70] array];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__MNTraceLoader__loadETAUpdatesTable__block_invoke;
  v7[3] = &unk_1E8430838;
  v8 = v3;
  v4 = v3;
  v5 = [(MNTraceLoader *)self _executeQuery:@"SELECT request_timestamp rowHandler:response_timestamp, request_data, response_data, response_error_data, destination_name FROM eta_traffic_updates ORDER BY request_timestamp ASC", v7];
  [(MNTrace *)self->_trace setEtaUpdates:v4];

  return v5;
}

void __37__MNTraceLoader__loadETAUpdatesTable__block_invoke(uint64_t a1, sqlite3_stmt *a2)
{
  v22 = objc_alloc_init(MNTraceETAUpdateRow);
  [(MNTraceETAUpdateRow *)v22 setRequestTimestamp:sqlite3_column_double(a2, 0)];
  [(MNTraceETAUpdateRow *)v22 setResponseTimestamp:sqlite3_column_double(a2, 1)];
  v4 = sqlite3_column_blob(a2, 2);
  v5 = sqlite3_column_bytes(a2, 2);
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v4 length:v5];
    v7 = [objc_alloc(MEMORY[0x1E69A1D48]) initWithData:v6];
    [(MNTraceETAUpdateRow *)v22 setRequest:v7];
  }

  v8 = sqlite3_column_blob(a2, 3);
  v9 = sqlite3_column_bytes(a2, 3);
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 length:v9];
    v11 = [objc_alloc(MEMORY[0x1E69A1D58]) initWithData:v10];
    [(MNTraceETAUpdateRow *)v22 setResponse:v11];
  }

  v12 = sqlite3_column_blob(a2, 4);
  v13 = sqlite3_column_bytes(a2, 4);
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v12 length:v13];
    v15 = MEMORY[0x1E696ACD0];
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v15 unarchivedObjectOfClasses:v18 fromData:v14 error:0];
    [(MNTraceETAUpdateRow *)v22 setError:v19];
  }

  v20 = sqlite3_column_text(a2, 5);
  if (sqlite3_column_bytes(a2, 5))
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
    [(MNTraceETAUpdateRow *)v22 setDestinationName:v21];
  }

  [*(a1 + 32) addObject:v22];
}

- (BOOL)_loadDirectionsTableAllowDeprecatedProtocol:(BOOL)a3 outError:(id *)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  if (self->_latestSchema)
  {
    v6 = @"SELECT request_timestamp, response_timestamp, request_data, response_data, response_error_data, waypoints_data, selected_route_index FROM directions";
  }

  else
  {
    v6 = @"SELECT request_timestamp, response_timestamp, request_data, response_data, response_error_data, waypoints_data, 0 FROM directions";
  }

  v68 = self;
  trace = self->_trace;
  v85 = 0;
  v8 = [MNTracePreparedStatement preparedStatementForTrace:trace statement:v6 outError:&v85];
  v67 = v85;
  if (![v8 stepRow])
  {
LABEL_54:
    [(MNTrace *)v68->_trace setDirections:v5];
    v58 = v67;
    v59 = v67 == 0;
    goto LABEL_55;
  }

  v70 = v8;
  v64 = v5;
  while (1)
  {
    v9 = objc_alloc_init(MNTraceDirectionsRow);
    [v8 columnDouble:0];
    [(MNTraceDirectionsRow *)v9 setRequestTimestamp:?];
    [v8 columnDouble:1];
    [(MNTraceDirectionsRow *)v9 setResponseTimestamp:?];
    v10 = [v8 columnData:2];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x1E69A1CF8]) initWithData:v10];
      [(MNTraceDirectionsRow *)v9 setRequest:v11];
    }

    v12 = [v8 columnData:3];
    if (v12)
    {
      break;
    }

LABEL_29:
    v34 = [v8 columnData:4];
    if (v34)
    {
      v35 = MEMORY[0x1E696ACD0];
      v36 = MEMORY[0x1E695DFD8];
      v37 = objc_opt_class();
      v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
      v76 = 0;
      v39 = [v35 unarchivedObjectOfClasses:v38 fromData:v34 error:&v76];
      v40 = v76;
      [(MNTraceDirectionsRow *)v9 setError:v39];

      if (v40)
      {
        v41 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v88 = v40;
          _os_log_impl(&dword_1D311E000, v41, OS_LOG_TYPE_ERROR, "Error decoding directions response error: %@", buf, 0xCu);
        }
      }
    }

    v42 = [v8 columnData:5];
    if (!v42)
    {
      goto LABEL_50;
    }

    v43 = MEMORY[0x1E696ACD0];
    v44 = MEMORY[0x1E695DFD8];
    v45 = objc_opt_class();
    v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
    v75 = 0;
    v47 = [v43 unarchivedObjectOfClasses:v46 fromData:v42 error:&v75];
    v48 = v75;
    [(MNTraceDirectionsRow *)v9 setWaypoints:v47];

    if (v48)
    {
      v49 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v88 = v48;
        _os_log_impl(&dword_1D311E000, v49, OS_LOG_TYPE_ERROR, "Error decoding waypoints: %@", buf, 0xCu);
      }

LABEL_48:

      goto LABEL_49;
    }

    if ([(MNTrace *)v68->_trace version]<= 0x39)
    {
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v49 = [(MNTraceDirectionsRow *)v9 waypoints];
      v50 = [v49 countByEnumeratingWithState:&v71 objects:v86 count:16];
      if (v50)
      {
        v51 = v50;
        v65 = v12;
        v66 = v10;
        v52 = *v72;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v72 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v71 + 1) + 8 * i);
            v55 = [v54 waypoint];
            [v54 setIsCurrentLocation:{objc_msgSend(v55, "isCurrentLocation")}];
          }

          v51 = [v49 countByEnumeratingWithState:&v71 objects:v86 count:16];
        }

        while (v51);
        v5 = v64;
        v12 = v65;
        v8 = v70;
        v10 = v66;
      }

      goto LABEL_48;
    }

LABEL_49:

LABEL_50:
    v56 = [v8 columnInt:6];
    if (v56 < 0)
    {
      v57 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v57 = v56;
    }

    [(MNTraceDirectionsRow *)v9 setSelectedRouteIndex:v57];
    [v5 addObject:v9];

    if (([v8 stepRow] & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E69A1D10]) initWithData:v12];
  [(MNTraceDirectionsRow *)v9 setResponse:v13];

  if (a3)
  {
    goto LABEL_14;
  }

  v14 = [(MNTraceDirectionsRow *)v9 response];
  v15 = [v14 routes];
  if (![v15 count])
  {

    goto LABEL_14;
  }

  v16 = [(MNTraceDirectionsRow *)v9 response];
  v17 = [v16 waypointRoutes];
  v18 = [v17 count];

  if (v18)
  {
LABEL_14:
    v19 = v12;
    v20 = v10;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v21 = [(MNTraceDirectionsRow *)v9 response];
    v22 = [v21 routes];

    v23 = [v22 countByEnumeratingWithState:&v81 objects:v90 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v82;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v82 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [*(*(&v81 + 1) + 8 * j) setUnpackedLatLngVertices:0];
        }

        v24 = [v22 countByEnumeratingWithState:&v81 objects:v90 count:16];
      }

      while (v24);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v27 = [(MNTraceDirectionsRow *)v9 response];
    v28 = [v27 decoderData];
    v29 = [v28 walkings];

    v30 = [v29 countByEnumeratingWithState:&v77 objects:v89 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v78;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v78 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v77 + 1) + 8 * k) setUnpackedLatLngVertices:0];
        }

        v31 = [v29 countByEnumeratingWithState:&v77 objects:v89 count:16];
      }

      while (v31);
    }

    v8 = v70;
    v10 = v20;
    v12 = v19;
    goto LABEL_29;
  }

  if (a4)
  {
    v62 = [(MNTraceLoader *)v68 _errorWithCode:12 errorDescriptionFormat:@"Navtrace is using a deprecated Routing protocol which is no longer supported. This trace will need to be manually re-generated."];
    *a4 = v62;
  }

  v59 = 0;
  v58 = v67;
LABEL_55:

  v60 = *MEMORY[0x1E69E9840];
  return v59;
}

- (BOOL)_loadLocationsTable:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [[_TtC10Navigation29MNTraceSelectStatementBuilder alloc] initWithTrace:self->_trace tableName:@"locations"];
  v7 = v6;
  if (self->_latestSchema)
  {
    v8 = &unk_1F4EE2C08;
  }

  else
  {
    v8 = &unk_1F4EE2C20;
  }

  [(MNTraceSelectStatementBuilder *)v6 addColumns:v8];
  v79 = v3;
  if (v3)
  {
    [(MNTraceSelectStatementBuilder *)v7 addColumns:&unk_1F4EE2C38];
  }

  v9 = [(MNTraceSelectStatementBuilder *)v7 selectStatement];
  v10 = v9;
  if (v9)
  {
    v78 = v7;
    if ([v9 stepRow])
    {
      do
      {
        v11 = objc_alloc_init(MNTraceLocationRow);
        [v10 doubleValue:@"db_timestamp"];
        [(MNTraceLocationRow *)v11 setTimestamp:?];
        -[MNTraceLocationRow setLocationEventType:](v11, "setLocationEventType:", [v10 intValue:@"event_type"]);
        -[MNTraceLocationRow setOriginalMatchType:](v11, "setOriginalMatchType:", [v10 intValue:@"match_type"]);
        v12 = [v10 objectValue:@"error_data" ofClass:objc_opt_class()];
        [(MNTraceLocationRow *)v11 setError:v12];

        if (v79)
        {
          [v10 doubleValue:@"corrected_latitude"];
          v14 = v13;
          [v10 doubleValue:@"corrected_longitude"];
          [(MNTraceLocationRow *)v11 setCorrectedCoordinate:v14, v15];
          [v10 doubleValue:@"corrected_course"];
          [(MNTraceLocationRow *)v11 setCorrectedCourse:?];
        }

        v16 = [v10 intValue:@"match_info_quality"];
        if (v16)
        {
          v17 = v16;
          [v10 doubleValue:@"match_info_latitude"];
          v19 = v18;
          [v10 doubleValue:@"match_info_longitude"];
          v21 = v20;
          [v10 doubleValue:@"match_info_course"];
          v23 = v22;
          v24 = [v10 intValue:@"match_info_form_of_way"];
          v25 = [v10 intValue:@"match_info_road_class"];
          v26 = [v10 intValue:@"match_info_shifted"] != 0;
          v27 = [MNLocationMatchInfo alloc];
          v28 = CLLocationCoordinate2DMake(v19, v21);
          v29 = [(MNLocationMatchInfo *)v27 initWithMatchQuality:v17 matchCoordinate:v24 matchCourse:v25 matchFormOfWay:v26 matchRoadClass:v28.latitude matchShifted:v28.longitude, v23];
          [(MNTraceLocationRow *)v11 setMatchInfo:v29];
        }

        else
        {
          v29 = 0;
        }

        [v10 doubleValue:@"cl_timestamp"];
        v88 = v30;
        [v10 doubleValue:@"latitude"];
        v87 = v31;
        [v10 doubleValue:@"longitude"];
        v86 = v32;
        [v10 doubleValue:@"horizontal_accuracy"];
        v85 = v33;
        [v10 doubleValue:@"altitude"];
        v84 = v34;
        [v10 doubleValue:@"vertical_accuracy"];
        v89 = v35;
        [v10 doubleValue:@"speed"];
        v37 = v36;
        [v10 doubleValue:@"speed_accuracy"];
        v83 = v38;
        [v10 doubleValue:@"course"];
        v40 = v39;
        [v10 doubleValue:@"course_accuracy"];
        v42 = v41;
        v43 = [v10 intValue:@"type"];
        if (self->_latestSchema)
        {
          v44 = [v10 intValue:@"reference_frame"];
          v45 = [v10 intValue:@"raw_reference_frame"];
        }

        else
        {
          v44 = 0;
          v45 = 0;
        }

        [v10 doubleValue:@"raw_latitude"];
        v47 = v46;
        [v10 doubleValue:@"raw_longitude"];
        v49 = v48;
        [v10 doubleValue:@"raw_course"];
        v51 = v50;
        if (v29)
        {
          v80 = objc_alloc(MEMORY[0x1E6985C48]);
          v82 = v43;
          v52 = [(MNLocationMatchInfo *)v29 matchQuality];
          [(MNLocationMatchInfo *)v29 matchCoordinate];
          v81 = v47;
          v53 = v42;
          v55 = v54;
          v56 = v49;
          v57 = v37;
          v59 = v58;
          [(MNLocationMatchInfo *)v29 matchCourse];
          v61 = v60;
          v62 = v11;
          v63 = v44;
          v64 = self;
          v65 = [(MNLocationMatchInfo *)v29 matchFormOfWay];
          v66 = v5;
          v67 = [(MNLocationMatchInfo *)v29 matchRoadClass];
          v68 = [(MNLocationMatchInfo *)v29 matchShifted];
          v69 = v52;
          v43 = v82;
          v70 = v55;
          v42 = v53;
          v47 = v81;
          v71 = v59;
          v37 = v57;
          v49 = v56;
          v72 = v65;
          self = v64;
          v44 = v63;
          v11 = v62;
          v73 = v67;
          v5 = v66;
          v74 = [v80 initWithMatchQuality:v69 matchCoordinate:v72 matchCourse:v73 matchFormOfWay:v68 matchRoadClass:0 matchShifted:v70 matchDataArray:{v71, v61}];
        }

        else
        {
          v74 = 0;
        }

        v75 = [MNLocation alloc];
        v90 = 0xFFFF;
        v91 = v87;
        v92 = v86;
        v93 = v85;
        v94 = v84;
        v95 = v89;
        v96 = v37;
        v97 = v83;
        v98 = v40;
        v99 = v42;
        v100 = v88;
        v101 = 0;
        v102 = 0xBFF0000000000000;
        v103 = v43;
        v104 = v47;
        v105 = v49;
        v106 = v51;
        v107 = 0;
        v108 = v44;
        v109 = v45;
        v111 = 0;
        v110 = 0;
        v76 = [(MNLocation *)v75 initWithClientLocation:&v90 matchInfo:v74];
        if ((self->_options & 0x10000000) != 0)
        {
          -[MNLocation setTraceIndex:](v76, "setTraceIndex:", [v5 count]);
          [(MNTraceLocationRow *)v11 timestamp];
          [(MNLocation *)v76 setTraceTimestamp:?];
        }

        [(MNTraceLocationRow *)v11 setLocation:v76];
        [v5 addObject:v11];
      }

      while (([v10 stepRow] & 1) != 0);
    }

    [(MNTrace *)self->_trace setLocations:v5];
    v7 = v78;
  }

  return v10 != 0;
}

- (BOOL)_loadInfoTable
{
  trace = self->_trace;
  v15 = 0;
  v4 = [MNTracePreparedStatement preparedStatementForTrace:trace statement:@"SELECT trace_type outError:recording_start_time, directions_start_time, navigation_start_time, navigation_end_time, simulation, original_version FROM info LIMIT 1", &v15];
  v5 = v15;
  if (!v5 && [v4 stepRow])
  {
    do
    {
      -[MNTrace setTraceType:](self->_trace, "setTraceType:", [v4 columnInt:0]);
      [v4 columnDouble:1];
      if (v6 > 0.0)
      {
        v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
        [(MNTrace *)self->_trace setRecordingStartDate:v7];
      }

      [v4 columnDouble:2];
      if (v8 > 0.0)
      {
        v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
        [(MNTrace *)self->_trace setDirectionsStartDate:v9];
      }

      [v4 columnDouble:3];
      if (v10 > 0.0)
      {
        v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
        [(MNTrace *)self->_trace setNavigationStartDate:v11];
      }

      [v4 columnDouble:4];
      if (v12 > 0.0)
      {
        v13 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:?];
        [(MNTrace *)self->_trace setNavigationEndDate:v13];
      }

      -[MNTrace setIsSimulation:](self->_trace, "setIsSimulation:", [v4 columnInt:5] != 0);
      -[MNTrace setOriginalVersion:](self->_trace, "setOriginalVersion:", [v4 columnInt:6]);
    }

    while (([v4 stepRow] & 1) != 0);
  }

  return v5 == 0;
}

- (id)loadTraceWithPath:(id)a3 options:(int64_t)a4 outError:(id *)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ((self->_options & 0x20000000) != 0)
  {
    self->_latestSchema = 1;
  }

  v9 = objc_alloc_init(MNTrace);
  if (![(MNTrace *)v9 openTrace:v8 outError:a5])
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v8;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "Failed to open trace: %@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  objc_storeStrong(&self->_trace, v9);
  self->_options = a4;
  [(MNTraceLoader *)self _loadTraceVersion];
  v10 = [(MNTrace *)self->_trace version];
  if (v10 <= +[MNTrace currentVersion])
  {
    if (![(MNTraceLoader *)self _updateTraceFromVersion:[(MNTrace *)self->_trace version] outError:a5])
    {
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "Failed to update trace to current version: %@", buf, 0xCu);
      }

      if (a5 && !*a5)
      {
        v17 = [(MNTraceLoader *)self _errorWithCode:0 errorDescriptionFormat:@"Unknown error."];
        *a5 = v17;
      }

      if ((self->_options & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  else if (a5)
  {
    v11 = [(MNTraceLoader *)self _errorWithCode:6 errorDescriptionFormat:@"Attempting to open trace with version %d which is newer than this build's version of %d. Forward compatibility usually works, but is not guaranteed.", [(MNTrace *)self->_trace version], +[MNTrace currentVersion]];
    *a5 = v11;
  }

  if ((self->_options & 1) != 0 && ![(MNTraceLoader *)self _loadInfoTable])
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v8;
      _os_log_impl(&dword_1D311E000, v18, OS_LOG_TYPE_ERROR, "Failed to load info table for trace: %@", buf, 0xCu);
    }

    if ((self->_options & 0x40000000) != 0)
    {
      goto LABEL_10;
    }

    [(MNTrace *)v9 setTraceType:0];
  }

  options = self->_options;
  if ((options & 2) != 0)
  {
    if ([(MNTraceLoader *)self _loadLocationsTable:(~LOBYTE(self->_options) & 6) == 0])
    {
      options = self->_options;
    }

    else
    {
      v20 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v20, OS_LOG_TYPE_ERROR, "Failed to load locations for trace: %@", buf, 0xCu);
      }

      options = self->_options;
      if ((options & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  if ((options & 8) != 0)
  {
    if ([(MNTraceLoader *)self _loadDirectionsTableAllowDeprecatedProtocol:(~options & 0xFFFFFFFF80000008) == 0 outError:a5])
    {
      options = self->_options;
    }

    else
    {
      v21 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v21, OS_LOG_TYPE_ERROR, "Failed to load direction for trace: %@", buf, 0xCu);
      }

      options = self->_options;
      if ((options & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  if ((options & 0x10) != 0)
  {
    if ([(MNTraceLoader *)self _loadETAUpdatesTable])
    {
      options = self->_options;
    }

    else
    {
      v22 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v22, OS_LOG_TYPE_ERROR, "Failed to load ETA updates for trace: %@", buf, 0xCu);
      }

      options = self->_options;
      if ((options & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  if ((options & 0x20) != 0)
  {
    if ([(MNTraceLoader *)self _loadCompassHeadingDataTable])
    {
      options = self->_options;
    }

    else
    {
      v23 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v23, OS_LOG_TYPE_ERROR, "Failed to load compass heading data for trace: %@", buf, 0xCu);
      }

      options = self->_options;
      if ((options & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  if ((options & 0x40) != 0)
  {
    if ([(MNTraceLoader *)self _loadMotionDataTable])
    {
      options = self->_options;
    }

    else
    {
      v24 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v24, OS_LOG_TYPE_ERROR, "Failed to load motion data for trace: %@", buf, 0xCu);
      }

      options = self->_options;
      if ((options & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  if ((options & 0x80) != 0)
  {
    if ([(MNTraceLoader *)self _loadVehicleDataTable])
    {
      options = self->_options;
    }

    else
    {
      v25 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v25, OS_LOG_TYPE_ERROR, "Failed to load vehicle data for trace: %@", buf, 0xCu);
      }

      options = self->_options;
      if ((options & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  if ((options & 0x100) != 0 && ![(MNTraceLoader *)self _loadEVDataTable])
  {
    v26 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v8;
      _os_log_impl(&dword_1D311E000, v26, OS_LOG_TYPE_ERROR, "Failed to load ev data for trace: %@", buf, 0xCu);
    }
  }

  v27 = self->_options;
  if ((v27 & 0x200) != 0)
  {
    if ([(MNTraceLoader *)self _loadNavigationEventsTable])
    {
      v27 = self->_options;
    }

    else
    {
      v28 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_ERROR, "Failed to load navigation events table for trace: %@", buf, 0xCu);
      }

      v27 = self->_options;
      if ((v27 & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  if ((v27 & 0x400) != 0)
  {
    if (![(MNTraceLoader *)self _loadAnnotatedUserBehaviorTable])
    {
      v29 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v29, OS_LOG_TYPE_ERROR, "Failed to load annotated user behavior for trace: %@", buf, 0xCu);
      }

      if ((self->_options & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }

    if ([(MNTraceLoader *)self _loadAnnotatedUserEnvironmentTable])
    {
      v27 = self->_options;
    }

    else
    {
      v30 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v30, OS_LOG_TYPE_ERROR, "Failed to load annotated user environment for trace: %@", buf, 0xCu);
      }

      v27 = self->_options;
      if ((v27 & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  if ((v27 & 0x800) != 0)
  {
    if ([(MNTraceLoader *)self _loadMiscInfo])
    {
      v27 = self->_options;
    }

    else
    {
      v31 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v31, OS_LOG_TYPE_ERROR, "Failed to load misc info table for trace: %@", buf, 0xCu);
      }

      v27 = self->_options;
      if ((v27 & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  if ((v27 & 0x1000) != 0)
  {
    if ([(MNTraceLoader *)self _loadNavigationUpdatesTable])
    {
      v27 = self->_options;
    }

    else
    {
      v32 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v32, OS_LOG_TYPE_ERROR, "Failed to navigation updates table for trace: %@", buf, 0xCu);
      }

      v27 = self->_options;
      if ((v27 & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  if ((v27 & 0x2000) != 0)
  {
    if ([(MNTraceLoader *)self _loadNetworkEvents])
    {
      v27 = self->_options;
    }

    else
    {
      v33 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_impl(&dword_1D311E000, v33, OS_LOG_TYPE_ERROR, "Failed to load network event table for trace: %@", buf, 0xCu);
      }

      v27 = self->_options;
      if ((v27 & 0x40000000) != 0)
      {
        goto LABEL_10;
      }
    }
  }

  if ((v27 & 0x4000) != 0 && ![(MNTraceLoader *)self _loadRouteCreationActionsTable])
  {
    v34 = MNGetMNTraceLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v8;
      _os_log_impl(&dword_1D311E000, v34, OS_LOG_TYPE_ERROR, "Failed to load route creation actions table for trace: %@", buf, 0xCu);
    }

    if ((self->_options & 0x40000000) != 0)
    {
      goto LABEL_10;
    }
  }

  if (![(MNTraceLoader *)self loadExtraData])
  {
    v35 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v8;
      _os_log_impl(&dword_1D311E000, v35, OS_LOG_TYPE_ERROR, "Failed to load extra data for trace: %@", buf, 0xCu);
    }

    if ((self->_options & 0x40000000) != 0)
    {
LABEL_10:
      v13 = 0;
      goto LABEL_11;
    }
  }

  v13 = v9;
LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end