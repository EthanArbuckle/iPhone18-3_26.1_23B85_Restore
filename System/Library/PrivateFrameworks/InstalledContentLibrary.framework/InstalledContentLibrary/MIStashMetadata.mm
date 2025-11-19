@interface MIStashMetadata
+ (id)metadataFromURL:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)serializeToURL:(id)a3 error:(id *)a4;
- (MIStashMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIStashMetadata

- (MIStashMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIStashMetadata *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateStashed"];
    dateStashed = v5->_dateStashed;
    v5->_dateStashed = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateOriginallyInstalled"];
    dateOriginallyInstalled = v5->_dateOriginallyInstalled;
    v5->_dateOriginallyInstalled = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(MIStashMetadata *)self dateStashed];
  v6 = [v5 copy];
  [v4 setDateStashed:v6];

  v7 = [(MIStashMetadata *)self dateOriginallyInstalled];
  v8 = [v7 copy];
  [v4 setDateOriginallyInstalled:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIStashMetadata *)self dateStashed];
  [v4 encodeObject:v5 forKey:@"dateStashed"];

  v6 = [(MIStashMetadata *)self dateOriginallyInstalled];
  [v4 encodeObject:v6 forKey:@"dateOriginallyInstalled"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIStashMetadata *)self dateStashed];
      v7 = [(MIStashMetadata *)v5 dateStashed];
      v8 = MICompareObjects(v6, v7);

      if (v8)
      {
        v9 = [(MIStashMetadata *)self dateOriginallyInstalled];
        v10 = [(MIStashMetadata *)v5 dateOriginallyInstalled];
        v11 = MICompareObjects(v9, v10);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(MIStashMetadata *)self dateStashed];
  v4 = [v3 hash];
  v5 = [(MIStashMetadata *)self dateOriginallyInstalled];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MIStashMetadata *)self dateStashed];
  v7 = [(MIStashMetadata *)self dateOriginallyInstalled];
  v8 = [v3 stringWithFormat:@"<%@<%p> dateStashed=%@ dateOriginallyInstalled=%@>", v5, self, v6, v7];

  return v8;
}

+ (id)metadataFromURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v26 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:3 error:&v26];
  v7 = v26;
  v8 = v7;
  if (!v6)
  {
    v16 = [v7 domain];
    if ([v16 isEqualToString:*MEMORY[0x1E696A250]])
    {
      v17 = [v8 code];

      if (v17 == 260)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v20 = [v5 path];
    v10 = _CreateAndLogError("+[MIStashMetadata metadataFromURL:error:]", 108, @"MIInstallerErrorDomain", 130, v8, 0, @"Failed to read stash metadata from %@", v21, v20);

    v9 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v25 = v7;
  v9 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v6 error:&v25];
  v10 = v25;

  if (v9)
  {
    v11 = [v9 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    if (!v11)
    {
      v12 = [v9 error];
      v13 = [v5 path];
      v15 = _CreateAndLogError("+[MIStashMetadata metadataFromURL:error:]", 121, @"MIInstallerErrorDomain", 130, v12, 0, @"Failed to decode stash metadata from %@", v14, v13);

      v10 = v15;
    }

    [v9 finishDecoding];
LABEL_14:
    v8 = v10;
    if (!a4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v18 = [v5 path];
  v8 = _CreateAndLogError("+[MIStashMetadata metadataFromURL:error:]", 115, @"MIInstallerErrorDomain", 130, v10, 0, @"Failed to read stash metadata from %@", v19, v18);

LABEL_10:
  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v11)
  {
    v22 = v8;
    *a4 = v8;
  }

LABEL_17:
  v23 = v11;

  return v11;
}

- (BOOL)serializeToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v7 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  v8 = [v7 encodedData];

  if (v8)
  {
    v16 = 0;
    v9 = [v8 writeToURL:v6 options:268435457 error:&v16];
    v10 = v16;
    if ((v9 & 1) == 0)
    {
      v11 = [v6 path];
      v13 = _CreateAndLogError("[MIStashMetadata serializeToURL:error:]", 159, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to write serialized MIStashedBundleMetadata to %@", v12, v11);

      v10 = v13;
    }

    if (a4 && v10)
    {
      v14 = v10;
      *a4 = v10;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 == 0;
}

@end