@interface MCDomainsCacheEntry
+ (id)normalizedPatternString:(id)string;
- (BOOL)matchesURL:(id)l;
- (MCDomainsCacheEntry)initWithPattern:(id)pattern;
- (id)description;
@end

@implementation MCDomainsCacheEntry

+ (id)normalizedPatternString:(id)string
{
  stringCopy = string;
  if ([stringCopy rangeOfString:@"http://" options:8])
  {
    v4 = 8;
    if ([stringCopy rangeOfString:@"https://" options:8])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 7;
  }

  v5 = [stringCopy substringFromIndex:v4];

  stringCopy = v5;
LABEL_6:
  if (![stringCopy rangeOfString:@"www." options:8])
  {
    v6 = [stringCopy substringFromIndex:4];

    stringCopy = v6;
  }

  return stringCopy;
}

- (MCDomainsCacheEntry)initWithPattern:(id)pattern
{
  patternCopy = pattern;
  v21.receiver = self;
  v21.super_class = MCDomainsCacheEntry;
  v5 = [(MCDomainsCacheEntry *)&v21 init];
  if (v5)
  {
    v6 = [MCDomainsCacheEntry normalizedPatternString:patternCopy];

    pathComponents = [v6 pathComponents];
    v8 = [pathComponents objectAtIndexedSubscript:0];
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
    if ([pathComponents count] >= 2)
    {
      v16 = MEMORY[0x1E696AEC0];
      v17 = [pathComponents subarrayWithRange:{1, objc_msgSend(pathComponents, "count") - 1}];
      v18 = [v16 pathWithComponents:v17];
      path = v5->_path;
      v5->_path = v18;
    }

    patternCopy = v6;
  }

  return v5;
}

- (BOOL)matchesURL:(id)l
{
  v45 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (lCopy)
  {
    v5 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    host = [v5 host];
    if (!host)
    {
      v29 = _MCLogObjects;
      if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A795B000, v29, OS_LOG_TYPE_DEBUG, "Not matching URL because its host is nil.", buf, 2u);
      }

      goto LABEL_41;
    }

    v7 = host;
    if (![host rangeOfString:@"www." options:8])
    {
      v8 = [v7 substringFromIndex:4];

      v7 = v8;
    }

    domain = [(MCDomainsCacheEntry *)self domain];
    v10 = [v7 isEqualToString:domain];

    if ([(MCDomainsCacheEntry *)self subdomainsMatch])
    {
      v11 = MEMORY[0x1E696AEC0];
      domain2 = [(MCDomainsCacheEntry *)self domain];
      v13 = [v11 stringWithFormat:@".%@", domain2];
      v14 = [v7 rangeOfString:v13 options:12];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_7;
      }
    }

    else if (v10)
    {
LABEL_7:
      path = [(MCDomainsCacheEntry *)self path];

      if (path)
      {
        path2 = [v5 path];
        port2 = path2;
        if (!path2 || ![path2 length])
        {
LABEL_13:
          v25 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            selfCopy4 = self;
            v43 = 2114;
            v44 = lCopy;
            v26 = "%{public}@: Rejecting URL %{public}@ because path doesn't match.";
LABEL_38:
            _os_log_impl(&dword_1A795B000, v25, OS_LOG_TYPE_DEBUG, v26, buf, 0x16u);
            goto LABEL_39;
          }

          goto LABEL_39;
        }

        v18 = [port2 substringFromIndex:1];

        path3 = [(MCDomainsCacheEntry *)self path];
        v20 = [v18 isEqualToString:path3];

        if ((v20 & 1) == 0)
        {
          v21 = MEMORY[0x1E696AEC0];
          path4 = [(MCDomainsCacheEntry *)self path];
          v23 = [v21 stringWithFormat:@"%@/", path4];
          v24 = [v18 rangeOfString:v23 options:8];

          if (v24 == 0x7FFFFFFFFFFFFFFFLL)
          {
            port2 = v18;
            goto LABEL_13;
          }
        }
      }

      port = [(MCDomainsCacheEntry *)self port];

      if (port)
      {
        port2 = [v5 port];
        if (!port2)
        {
          scheme = [v5 scheme];
          v33 = [scheme isEqualToString:@"http"];

          if (v33)
          {
            port2 = &unk_1F1AA5938;
          }

          else
          {
            scheme2 = [v5 scheme];
            v35 = [scheme2 isEqualToString:@"https"];

            if (v35)
            {
              port2 = &unk_1F1AA5950;
            }

            else
            {
              port2 = 0;
            }
          }
        }

        port3 = [(MCDomainsCacheEntry *)self port];
        v37 = [port2 isEqualToNumber:port3];

        if ((v37 & 1) == 0)
        {
          v25 = _MCLogObjects;
          if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            selfCopy4 = self;
            v43 = 2114;
            v44 = lCopy;
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
        selfCopy4 = self;
        v43 = 2114;
        v44 = lCopy;
        _os_log_impl(&dword_1A795B000, v38, OS_LOG_TYPE_DEBUG, "%{public}@: Matched URL %{public}@", buf, 0x16u);
      }

      v28 = 1;
      goto LABEL_42;
    }

    v30 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v43 = 2114;
      v44 = lCopy;
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

  domain = [(MCDomainsCacheEntry *)self domain];

  if (domain)
  {
    domain2 = [(MCDomainsCacheEntry *)self domain];
    [v5 appendFormat:@"Domain: %@\n", domain2];
  }

  if ([(MCDomainsCacheEntry *)self subdomainsMatch])
  {
    [v5 appendFormat:@"Subdomain match: yes"];
  }

  path = [(MCDomainsCacheEntry *)self path];

  if (path)
  {
    path2 = [(MCDomainsCacheEntry *)self path];
    [v5 appendFormat:@"Path: %@\n", path2];
  }

  port = [(MCDomainsCacheEntry *)self port];

  if (port)
  {
    port2 = [(MCDomainsCacheEntry *)self port];
    [v5 appendFormat:@"Port: %@\n", port2];
  }

  return v5;
}

@end