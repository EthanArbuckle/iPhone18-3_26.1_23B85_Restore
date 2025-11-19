@interface FCPuzzleRank
- (FCPuzzleRank)initWithDictionary:(id)a3 index:(int64_t)a4;
@end

@implementation FCPuzzleRank

- (FCPuzzleRank)initWithDictionary:(id)a3 index:(int64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18.receiver = self;
  v18.super_class = FCPuzzleRank;
  v7 = [(FCPuzzleRank *)&v18 init];
  if (v7)
  {
    v8 = FCAppConfigurationStringValue(v6, @"name", &stru_1F2DC7DC0);
    v9 = FCAppConfigurationStringValue(v6, @"identifier", &stru_1F2DC7DC0);
    v10 = FCAppConfigurationStringValue(v6, @"icon", 0);
    v11 = FCAppConfigurationBoolValue(v6, @"defaultRank", 0);
    v12 = FCAppConfigurationBoolValue(v6, @"isProdigyLevel", 0);
    if (v8)
    {
      if (v9)
      {
        v13 = v12;
        objc_storeStrong(&v7->_name, v8);
        objc_storeStrong(&v7->_identifier, v9);
        objc_storeStrong(&v7->_icon, v10);
        v7->_defaultRank = v11;
        v7->_isProdigyLevel = v13;
        v7->_index = a4;
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "name"];
        *buf = 136315906;
        v20 = "[FCPuzzleRank initWithDictionary:index:]";
        v21 = 2080;
        v22 = "FCPuzzleRank.m";
        v23 = 1024;
        v24 = 26;
        v25 = 2114;
        v26 = v16;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      if (v9)
      {
        goto LABEL_10;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "identifier"];
      *buf = 136315906;
      v20 = "[FCPuzzleRank initWithDictionary:index:]";
      v21 = 2080;
      v22 = "FCPuzzleRank.m";
      v23 = 1024;
      v24 = 27;
      v25 = 2114;
      v26 = v17;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

LABEL_10:

    v7 = 0;
    goto LABEL_11;
  }

LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

@end