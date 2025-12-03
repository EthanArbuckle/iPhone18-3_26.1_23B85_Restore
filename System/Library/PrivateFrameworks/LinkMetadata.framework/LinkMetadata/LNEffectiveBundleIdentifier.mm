@interface LNEffectiveBundleIdentifier
- (BOOL)isEqual:(id)equal;
- (LNEffectiveBundleIdentifier)initWithCoder:(id)coder;
- (LNEffectiveBundleIdentifier)initWithType:(int64_t)type bundleIdentifier:(id)identifier url:(id)url;
- (id)bundleMetadataForURLs:(id)ls;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNEffectiveBundleIdentifier

- (unint64_t)hash
{
  type = [(LNEffectiveBundleIdentifier *)self type];
  bundleIdentifier = [(LNEffectiveBundleIdentifier *)self bundleIdentifier];
  v5 = [bundleIdentifier hash];

  return v5 ^ type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v13 = 0;
LABEL_16:

      goto LABEL_17;
    }

    bundleIdentifier = [(LNEffectiveBundleIdentifier *)self bundleIdentifier];
    bundleIdentifier2 = [(LNEffectiveBundleIdentifier *)v6 bundleIdentifier];
    v9 = bundleIdentifier;
    v10 = bundleIdentifier2;
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

    type = [(LNEffectiveBundleIdentifier *)self type];
    v13 = type == [(LNEffectiveBundleIdentifier *)v6 type];
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

  bundleIdentifier = [(LNEffectiveBundleIdentifier *)self bundleIdentifier];
  v7 = [(LNEffectiveBundleIdentifier *)self url];
  v8 = [v3 stringWithFormat:@"%@ (%@ at %@)", v5, bundleIdentifier, v7];

  return v8;
}

- (LNEffectiveBundleIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    self = [(LNEffectiveBundleIdentifier *)self initWithType:v5 bundleIdentifier:v6 url:v7];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNEffectiveBundleIdentifier type](self forKey:{"type"), @"type"}];
  bundleIdentifier = [(LNEffectiveBundleIdentifier *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  v6 = [(LNEffectiveBundleIdentifier *)self url];
  [coderCopy encodeObject:v6 forKey:@"url"];
}

- (LNEffectiveBundleIdentifier)initWithType:(int64_t)type bundleIdentifier:(id)identifier url:(id)url
{
  identifierCopy = identifier;
  urlCopy = url;
  v16.receiver = self;
  v16.super_class = LNEffectiveBundleIdentifier;
  v10 = [(LNEffectiveBundleIdentifier *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;

    objc_storeStrong(&v11->_url, url);
    v14 = v11;
  }

  return v11;
}

- (id)bundleMetadataForURLs:(id)ls
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__LNEffectiveBundleIdentifier_StaticExtraction__bundleMetadataForURLs___block_invoke;
  v5[3] = &unk_1E72B0E88;
  v5[4] = self;
  v3 = [ls if_compactMap:v5];

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