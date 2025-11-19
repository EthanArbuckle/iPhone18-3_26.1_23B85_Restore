@interface LNEffectiveBundleIdentifier
- (BOOL)isEqual:(id)a3;
- (LNEffectiveBundleIdentifier)initWithCoder:(id)a3;
- (LNEffectiveBundleIdentifier)initWithType:(int64_t)a3 bundleIdentifier:(id)a4 url:(id)a5;
- (id)bundleMetadataForURLs:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNEffectiveBundleIdentifier

- (unint64_t)hash
{
  v3 = [(LNEffectiveBundleIdentifier *)self type];
  v4 = [(LNEffectiveBundleIdentifier *)self bundleIdentifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v7 = [(LNEffectiveBundleIdentifier *)self bundleIdentifier];
    v8 = [(LNEffectiveBundleIdentifier *)v6 bundleIdentifier];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      if (!v9 || !v10)
      {

LABEL_14:
        v13 = 0;
        goto LABEL_15;
      }

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_14;
      }
    }

    v14 = [(LNEffectiveBundleIdentifier *)self type];
    v13 = v14 == [(LNEffectiveBundleIdentifier *)v6 type];
LABEL_15:

    goto LABEL_16;
  }

  v13 = 1;
LABEL_17:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(LNEffectiveBundleIdentifier *)self type]- 1;
  if (v4 > 2)
  {
    v5 = @"App";
  }

  else
  {
    v5 = off_1E72B0CD0[v4];
  }

  v6 = [(LNEffectiveBundleIdentifier *)self bundleIdentifier];
  v7 = [(LNEffectiveBundleIdentifier *)self url];
  v8 = [v3 stringWithFormat:@"%@ (%@ at %@)", v5, v6, v7];

  return v8;
}

- (LNEffectiveBundleIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    self = [(LNEffectiveBundleIdentifier *)self initWithType:v5 bundleIdentifier:v6 url:v7];

    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LNEffectiveBundleIdentifier type](self forKey:{"type"), @"type"}];
  v5 = [(LNEffectiveBundleIdentifier *)self bundleIdentifier];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(LNEffectiveBundleIdentifier *)self url];
  [v4 encodeObject:v6 forKey:@"url"];
}

- (LNEffectiveBundleIdentifier)initWithType:(int64_t)a3 bundleIdentifier:(id)a4 url:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = LNEffectiveBundleIdentifier;
  v10 = [(LNEffectiveBundleIdentifier *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    objc_storeStrong(&v11->_url, a5);
    v14 = v11;
  }

  return v11;
}

- (id)bundleMetadataForURLs:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__LNEffectiveBundleIdentifier_StaticExtraction__bundleMetadataForURLs___block_invoke;
  v5[3] = &unk_1E72B0E88;
  v5[4] = self;
  v3 = [a3 if_compactMap:v5];

  return v3;
}

LNBundleMetadata *__71__LNEffectiveBundleIdentifier_StaticExtraction__bundleMetadataForURLs___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(__CFString *)v3 path];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 isReadableFileAtPath:v4];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AAE8]) _initUniqueWithURL:v3];
    if (v7)
    {
      v8 = [LNBundleMetadata alloc];
      v9 = *(a1 + 32);
      v19 = 0;
      v10 = [(LNBundleMetadata *)v8 initWithBundle:v7 usingEffectiveBundleIdentifier:v9 error:&v19];
      v11 = v19;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v13 = getLNLogCategoryMetadata();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v7 bundleIdentifier];
          v15 = v14;
          v16 = @"<missing bundle identifier>";
          if (v14)
          {
            v16 = v14;
          }

          *buf = 138543618;
          v21 = v16;
          v22 = 2114;
          v23 = v3;
        }
      }
    }

    else
    {
      v11 = getLNLogCategoryMetadata();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v3;
        _os_log_impl(&dword_18EF7E000, v11, OS_LOG_TYPE_ERROR, "Unable to create bundle with URL '%{public}@'", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v7 = getLNLogCategoryMetadata();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v4;
      _os_log_impl(&dword_18EF7E000, v7, OS_LOG_TYPE_ERROR, "'%{public}@' is not readable or doesn't exist", buf, 0xCu);
    }

    v10 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

@end