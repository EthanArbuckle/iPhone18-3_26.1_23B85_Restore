@interface NSURL(CPLAdditions)
- (id)cpl_redactedShareURL;
@end

@implementation NSURL(CPLAdditions)

- (id)cpl_redactedShareURL
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [a1 host];
  if ([v2 hasPrefix:@"redacted."] && objc_msgSend(v2, "hasSuffix:", @".icloud.com"))
  {
    v3 = a1;
    goto LABEL_24;
  }

  v4 = [a1 absoluteString];
  v5 = [v4 UTF8String];

  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v6 = strlen(v5);
  CC_SHA256_Update(&c, v5, v6);
  CC_SHA256_Final(md, &c);
  v7 = [MEMORY[0x1E696AD60] stringWithCapacity:32];
  for (i = 0; i != 32; ++i)
  {
    [v7 appendFormat:@"%02x", md[i]];
  }

  v9 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:a1 resolvingAgainstBaseURL:1];
  v10 = objc_alloc_init(MEMORY[0x1E696AF20]);
  v11 = [v9 scheme];
  [v10 setScheme:v11];

  v12 = [v9 host];
  if (v12)
  {
    v13 = [v9 scheme];
    if ([v13 isEqualToString:@"https"])
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = [(__CFString *)_isKnownICloudHost_knownHosts[v15] isEqualToString:v12];
        v17 = v16;
        if (v14)
        {
          break;
        }

        v14 = 1;
        v15 = 1;
      }

      while (!v16);

      if (v17)
      {
        v18 = [@"redacted." stringByAppendingString:v12];
        [v10 setHost:v18];

        v19 = [v9 path];
        v20 = [v19 pathComponents];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v22)
        {
          v23 = v22;
          v33 = v2;
          v24 = *v35;
          while (2)
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v35 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v34 + 1) + 8 * j);
              if (([v26 isEqualToString:@"/"] & 1) == 0)
              {
                v27 = v26;
                goto LABEL_28;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v34 objects:v39 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }

          v27 = 0;
LABEL_28:
          v2 = v33;
        }

        else
        {
          v27 = 0;
        }

        v30 = objc_alloc(MEMORY[0x1E696AEC0]);
        v31 = @"unknown";
        if (v27)
        {
          v31 = v27;
        }

        v32 = [v30 initWithFormat:@"/%@/%@", v31, v7];
        [v10 setPath:v32];

        goto LABEL_23;
      }
    }

    else
    {
    }
  }

  [v10 setHost:@"redacted.icloud.com"];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"/%@", v7];
  [v10 setPath:v21];
LABEL_23:

  v3 = [v10 URL];

LABEL_24:
  v28 = *MEMORY[0x1E69E9840];

  return v3;
}

@end