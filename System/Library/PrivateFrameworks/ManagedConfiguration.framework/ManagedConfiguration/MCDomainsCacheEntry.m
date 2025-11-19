@interface MCDomainsCacheEntry
+ (id)normalizedPatternString:(id)a3;
- (BOOL)matchesURL:(id)a3;
- (MCDomainsCacheEntry)initWithPattern:(id)a3;
- (id)description;
@end

@implementation MCDomainsCacheEntry

+ (id)normalizedPatternString:(id)a3
{
  v3 = a3;
  if ([v3 rangeOfString:@"http://" options:8])
  {
    v4 = 8;
    if ([v3 rangeOfString:@"https://" options:8])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 7;
  }

  v5 = [v3 substringFromIndex:v4];

  v3 = v5;
LABEL_6:
  if (![v3 rangeOfString:@"www." options:8])
  {
    v6 = [v3 substringFromIndex:4];

    v3 = v6;
  }

  return v3;
}

- (MCDomainsCacheEntry)initWithPattern:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MCDomainsCacheEntry;
  v5 = [(MCDomainsCacheEntry *)&v21 init];
  if (v5)
  {
    v6 = [MCDomainsCacheEntry normalizedPatternString:v4];

    v7 = [v6 pathComponents];
    v8 = [v7 objectAtIndexedSubscript:0];
    if (![v8 rangeOfString:@"*." options:8])
    {
      v5->_subdomainsMatch = 1;
      v9 = [v8 substringFromIndex:2];

      v8 = v9;
    }

    v10 = [v8 rangeOfString:@":" options:4];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
      v12 = [v8 substringFromIndex:v10 + 1];
      v13 = [v8 substringToIndex:v11];

      v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "intValue")}];
      port = v5->_port;
      v5->_port = v14;

      v8 = v13;
    }

    objc_storeStrong(&v5->_domain, v8);
    if ([v7 count] >= 2)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [v7 subarrayWithRange:{1, objc_msgSend(v7, "count") - 1}];
      v18 = [v16 pathWithComponents:v17];
      path = v5->_path;
      v5->_path = v18;
    }

    v4 = v6;
  }

  return v5;
}

- (BOOL)matchesURL:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AF20] componentsWithURL:v4 resolvingAgainstBaseURL:1];
    v6 = [v5 host];
    if (!v6)
    {
      v29 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_DEBUG, "Not matching URL because its host is nil.", buf, 2u);
      }

      goto LABEL_41;
    }

    v7 = v6;
    if (![v6 rangeOfString:@"www." options:8])
    {
      v8 = [v7 substringFromIndex:4];

      v7 = v8;
    }

    v9 = [(MCDomainsCacheEntry *)self domain];
    v10 = [v7 isEqualToString:v9];

    if ([(MCDomainsCacheEntry *)self subdomainsMatch])
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = [(MCDomainsCacheEntry *)self domain];
      v13 = [v11 stringWithFormat:@".%@", v12];
      v14 = [v7 rangeOfString:v13 options:12];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_7;
      }
    }

    else if (v10)
    {
LABEL_7:
      v15 = [(MCDomainsCacheEntry *)self path];

      if (v15)
      {
        v16 = [v5 path];
        v17 = v16;
        if (!v16 || ![v16 length])
        {
LABEL_13:
          v25 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            v42 = self;
            v43 = 2114;
            v44 = v4;
            v26 = "%{public}@: Rejecting URL %{public}@ because path doesn't match.";
LABEL_38:
            _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_DEBUG, v26, buf, 0x16u);
            goto LABEL_39;
          }

          goto LABEL_39;
        }

        v18 = [v17 substringFromIndex:1];

        v19 = [(MCDomainsCacheEntry *)self path];
        v20 = [v18 isEqualToString:v19];

        if ((v20 & 1) == 0)
        {
          v21 = MEMORY[0x1E696AEC0];
          v22 = [(MCDomainsCacheEntry *)self path];
          v23 = [v21 stringWithFormat:@"%@/", v22];
          v24 = [v18 rangeOfString:v23 options:8];

          if (v24 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = v18;
            goto LABEL_13;
          }
        }
      }

      v31 = [(MCDomainsCacheEntry *)self port];

      if (v31)
      {
        v17 = [v5 port];
        if (!v17)
        {
          v32 = [v5 scheme];
          v33 = [v32 isEqualToString:@"http"];

          if (v33)
          {
            v17 = &unk_1F1AA5938;
          }

          else
          {
            v34 = [v5 scheme];
            v35 = [v34 isEqualToString:@"https"];

            if (v35)
            {
              v17 = &unk_1F1AA5950;
            }

            else
            {
              v17 = 0;
            }
          }
        }

        v36 = [(MCDomainsCacheEntry *)self port];
        v37 = [v17 isEqualToNumber:v36];

        if ((v37 & 1) == 0)
        {
          v25 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            v42 = self;
            v43 = 2114;
            v44 = v4;
            v26 = "%{public}@: Rejecting URL %{public}@ because ports don't match.";
            goto LABEL_38;
          }

LABEL_39:

LABEL_40:
LABEL_41:
          v28 = 0;
LABEL_42:

          goto LABEL_43;
        }
      }

      v38 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v42 = self;
        v43 = 2114;
        v44 = v4;
        _os_log_impl(&dword_1A795B000, v38, OS_LOG_TYPE_DEBUG, "%{public}@: Matched URL %{public}@", buf, 0x16u);
      }

      v28 = 1;
      goto LABEL_42;
    }

    v30 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v42 = self;
      v43 = 2114;
      v44 = v4;
      _os_log_impl(&dword_1A795B000, v30, OS_LOG_TYPE_DEBUG, "%{public}@: Rejecting URL %{public}@ because host doesn't match.", buf, 0x16u);
    }

    goto LABEL_40;
  }

  v27 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1A795B000, v27, OS_LOG_TYPE_DEBUG, "Not matching URL because it's nil.", buf, 2u);
  }

  v28 = 0;
LABEL_43:

  v39 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v13.receiver = self;
  v13.super_class = MCDomainsCacheEntry;
  v4 = [(MCDomainsCacheEntry *)&v13 description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  v6 = [(MCDomainsCacheEntry *)self domain];

  if (v6)
  {
    v7 = [(MCDomainsCacheEntry *)self domain];
    [v5 appendFormat:@"Domain: %@\n", v7];
  }

  if ([(MCDomainsCacheEntry *)self subdomainsMatch])
  {
    [v5 appendFormat:@"Subdomain match: yes"];
  }

  v8 = [(MCDomainsCacheEntry *)self path];

  if (v8)
  {
    v9 = [(MCDomainsCacheEntry *)self path];
    [v5 appendFormat:@"Path: %@\n", v9];
  }

  v10 = [(MCDomainsCacheEntry *)self port];

  if (v10)
  {
    v11 = [(MCDomainsCacheEntry *)self port];
    [v5 appendFormat:@"Port: %@\n", v11];
  }

  return v5;
}

@end