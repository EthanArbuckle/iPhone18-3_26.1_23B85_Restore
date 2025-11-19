@interface FCVanityURLMapper
- (FCVanityURLMapper)init;
- (FCVanityURLMapper)initWithVanityURLMapping:(id)a3;
- (id)URLForVanityURL:(id)a3;
- (id)_pathWithTrailingForwardSlashWithPath:(id)a3;
- (id)_standardizedFragmentWithParameters:(id)a3 fragment:(id)a4;
- (id)_standardizedInputPathWithPath:(id)a3;
- (id)_standardizedMappingPathWithPath:(id)a3;
- (id)_standardizedQueryWithParameters:(id)a3 query:(id)a4;
- (void)_setParametersIfNeededWithComponents:(id)a3 parameters:(id)a4;
- (void)_standardizeResultPath:(id)a3;
@end

@implementation FCVanityURLMapper

- (FCVanityURLMapper)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCVanityURLMapper init]";
    v10 = 2080;
    v11 = "FCVanityURLMapper.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCVanityURLMapper init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCVanityURLMapper)initWithVanityURLMapping:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "vanityURLMapping"];
    *buf = 136315906;
    v13 = "[FCVanityURLMapper initWithVanityURLMapping:]";
    v14 = 2080;
    v15 = "FCVanityURLMapper.m";
    v16 = 1024;
    v17 = 31;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCVanityURLMapper;
  v5 = [(FCVanityURLMapper *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    vanityURLMapping = v5->_vanityURLMapping;
    v5->_vanityURLMapping = v6;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)URLForVanityURL:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "vanityURL"];
    *buf = 136315906;
    *&buf[4] = "[FCVanityURLMapper URLForVanityURL:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCVanityURLMapper.m";
    *&buf[22] = 1024;
    LODWORD(v21) = 43;
    WORD2(v21) = 2114;
    *(&v21 + 6) = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v21 = __Block_byref_object_copy__92;
  *(&v21 + 1) = __Block_byref_object_dispose__92;
  v22 = 0;
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v4 resolvingAgainstBaseURL:0];
  v6 = [v5 path];
  v7 = [(FCVanityURLMapper *)self _standardizedInputPathWithPath:v6];

  v8 = [(FCVanityURLMapper *)self vanityURLMapping];
  v9 = [v8 paths];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __37__FCVanityURLMapper_URLForVanityURL___block_invoke;
  v16[3] = &unk_1E7C47810;
  v16[4] = self;
  v10 = v7;
  v17 = v10;
  v11 = v5;
  v18 = v11;
  v19 = buf;
  [v9 enumerateObjectsUsingBlock:v16];

  v12 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __37__FCVanityURLMapper_URLForVanityURL___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = a2;
  v6 = [v26 sourcePath];
  if (v6)
  {
    v7 = v6;
    v8 = [v26 destinationPath];

    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [v26 sourcePath];
      v11 = [v9 _standardizedMappingPathWithPath:v10];

      v12 = *(a1 + 32);
      v13 = [v26 destinationPath];
      v14 = [v12 _standardizedMappingPathWithPath:v13];

      v15 = [*(a1 + 40) rangeOfString:v11 options:9];
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = v15;
        v18 = v16;
        v19 = [*(a1 + 40) mutableCopy];
        [v19 replaceCharactersInRange:v17 withString:{v18, v14}];
        [*(a1 + 32) _standardizeResultPath:v19];
        [*(a1 + 48) setPath:v19];
        v20 = *(a1 + 32);
        v21 = *(a1 + 48);
        v22 = [v26 destinationParameters];
        [v20 _setParametersIfNeededWithComponents:v21 parameters:v22];

        v23 = [*(a1 + 48) URL];
        v24 = *(*(a1 + 56) + 8);
        v25 = *(v24 + 40);
        *(v24 + 40) = v23;

        *a4 = 1;
      }
    }
  }
}

- (id)_standardizedInputPathWithPath:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "path"];
    *buf = 136315906;
    v10 = "[FCVanityURLMapper _standardizedInputPathWithPath:]";
    v11 = 2080;
    v12 = "FCVanityURLMapper.m";
    v13 = 1024;
    v14 = 79;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCVanityURLMapper *)self _pathWithTrailingForwardSlashWithPath:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_standardizedMappingPathWithPath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "path"];
    *buf = 136315906;
    v11 = "[FCVanityURLMapper _standardizedMappingPathWithPath:]";
    v12 = 2080;
    v13 = "FCVanityURLMapper.m";
    v14 = 1024;
    v15 = 89;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v4];
  v6 = [(FCVanityURLMapper *)self _pathWithTrailingForwardSlashWithPath:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_pathWithTrailingForwardSlashWithPath:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "path"];
    *buf = 136315906;
    v9 = "[FCVanityURLMapper _pathWithTrailingForwardSlashWithPath:]";
    v10 = 2080;
    v11 = "FCVanityURLMapper.m";
    v12 = 1024;
    v13 = 100;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = [v3 fc_stringByAppendingStringIfNeeded:@"/"];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_standardizeResultPath:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "path"];
    *buf = 136315906;
    v7 = "[FCVanityURLMapper _standardizeResultPath:]";
    v8 = 2080;
    v9 = "FCVanityURLMapper.m";
    v10 = 1024;
    v11 = 107;
    v12 = 2114;
    v13 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  while ([v3 length] && objc_msgSend(v3, "characterAtIndex:", objc_msgSend(v3, "length") - 1) == 47)
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 1, 1}];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_setParametersIfNeededWithComponents:(id)a3 parameters:(id)a4
{
  v14 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v7 = [v6 substringToIndex:1];
    v8 = [v7 isEqualToString:@"?"];

    if (v8)
    {
      v9 = [v14 query];
      v10 = [(FCVanityURLMapper *)self _standardizedQueryWithParameters:v6 query:v9];

      [v14 setPercentEncodedQuery:v10];
    }

    else
    {
      v11 = [v6 substringToIndex:1];
      v12 = [v11 isEqualToString:@"#"];

      if (!v12)
      {
        goto LABEL_7;
      }

      v13 = [v14 fragment];
      v10 = [(FCVanityURLMapper *)self _standardizedFragmentWithParameters:v6 fragment:v13];

      [v14 setFragment:v10];
    }
  }

LABEL_7:
}

- (id)_standardizedQueryWithParameters:(id)a3 query:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "parameters"];
    *buf = 136315906;
    v15 = "[FCVanityURLMapper _standardizedQueryWithParameters:query:]";
    v16 = 2080;
    v17 = "FCVanityURLMapper.m";
    v18 = 1024;
    v19 = 136;
    v20 = 2114;
    v21 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v6)
    {
      goto LABEL_4;
    }
  }

  else if (v6)
  {
LABEL_4:
    v7 = v6;
    v8 = @"&";
    goto LABEL_7;
  }

  v7 = &stru_1F2DC7DC0;
  v8 = &stru_1F2DC7DC0;
LABEL_7:
  v10 = [v5 fc_stringByReplacingPrefix:@"?" withString:v8];
  v11 = [(__CFString *)v7 stringByAppendingString:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_standardizedFragmentWithParameters:(id)a3 fragment:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "parameters"];
    *buf = 136315906;
    v15 = "[FCVanityURLMapper _standardizedFragmentWithParameters:fragment:]";
    v16 = 2080;
    v17 = "FCVanityURLMapper.m";
    v18 = 1024;
    v19 = 155;
    v20 = 2114;
    v21 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v6)
    {
      goto LABEL_4;
    }
  }

  else if (v6)
  {
LABEL_4:
    v7 = v6;
    v8 = @"&";
    goto LABEL_7;
  }

  v7 = &stru_1F2DC7DC0;
  v8 = &stru_1F2DC7DC0;
LABEL_7:
  v10 = [v5 fc_stringByReplacingPrefix:@"#" withString:v8];
  v11 = [(__CFString *)v7 stringByAppendingString:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end