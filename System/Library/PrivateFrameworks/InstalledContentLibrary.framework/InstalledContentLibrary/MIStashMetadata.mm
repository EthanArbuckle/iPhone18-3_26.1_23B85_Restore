@interface MIStashMetadata
+ (id)metadataFromURL:(id)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)serializeToURL:(id)l error:(id *)error;
- (MIStashMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIStashMetadata

- (MIStashMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MIStashMetadata *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateStashed"];
    dateStashed = v5->_dateStashed;
    v5->_dateStashed = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateOriginallyInstalled"];
    dateOriginallyInstalled = v5->_dateOriginallyInstalled;
    v5->_dateOriginallyInstalled = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  dateStashed = [(MIStashMetadata *)self dateStashed];
  v6 = [dateStashed copy];
  [v4 setDateStashed:v6];

  dateOriginallyInstalled = [(MIStashMetadata *)self dateOriginallyInstalled];
  v8 = [dateOriginallyInstalled copy];
  [v4 setDateOriginallyInstalled:v8];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dateStashed = [(MIStashMetadata *)self dateStashed];
  [coderCopy encodeObject:dateStashed forKey:@"dateStashed"];

  dateOriginallyInstalled = [(MIStashMetadata *)self dateOriginallyInstalled];
  [coderCopy encodeObject:dateOriginallyInstalled forKey:@"dateOriginallyInstalled"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      dateStashed = [(MIStashMetadata *)self dateStashed];
      dateStashed2 = [(MIStashMetadata *)v5 dateStashed];
      v8 = MICompareObjects(dateStashed, dateStashed2);

      if (v8)
      {
        dateOriginallyInstalled = [(MIStashMetadata *)self dateOriginallyInstalled];
        dateOriginallyInstalled2 = [(MIStashMetadata *)v5 dateOriginallyInstalled];
        v11 = MICompareObjects(dateOriginallyInstalled, dateOriginallyInstalled2);
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
  dateStashed = [(MIStashMetadata *)self dateStashed];
  v4 = [dateStashed hash];
  dateOriginallyInstalled = [(MIStashMetadata *)self dateOriginallyInstalled];
  v6 = [dateOriginallyInstalled hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dateStashed = [(MIStashMetadata *)self dateStashed];
  dateOriginallyInstalled = [(MIStashMetadata *)self dateOriginallyInstalled];
  v8 = [v3 stringWithFormat:@"<%@<%p> dateStashed=%@ dateOriginallyInstalled=%@>", v5, self, dateStashed, dateOriginallyInstalled];

  return v8;
}

+ (id)metadataFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v26 = 0;
  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:lCopy options:3 error:&v26];
  v7 = v26;
  v8 = v7;
  if (!v6)
  {
    domain = [v7 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      code = [v8 code];

      if (code == 260)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    path = [lCopy path];
    v10 = _CreateAndLogError("+[MIStashMetadata metadataFromURL:error:]", 108, @"MIInstallerErrorDomain", 130, v8, 0, @"Failed to read stash metadata from %@", v21, path);

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
      error = [v9 error];
      path2 = [lCopy path];
      v15 = _CreateAndLogError("+[MIStashMetadata metadataFromURL:error:]", 121, @"MIInstallerErrorDomain", 130, error, 0, @"Failed to decode stash metadata from %@", v14, path2);

      v10 = v15;
    }

    [v9 finishDecoding];
LABEL_14:
    v8 = v10;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  path3 = [lCopy path];
  v8 = _CreateAndLogError("+[MIStashMetadata metadataFromURL:error:]", 115, @"MIInstallerErrorDomain", 130, v10, 0, @"Failed to read stash metadata from %@", v19, path3);

LABEL_10:
  v9 = 0;
  v11 = 0;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v11)
  {
    v22 = v8;
    *error = v8;
  }

LABEL_17:
  v23 = v11;

  return v11;
}

- (BOOL)serializeToURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v7 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  encodedData = [v7 encodedData];

  if (encodedData)
  {
    v16 = 0;
    v9 = [encodedData writeToURL:lCopy options:268435457 error:&v16];
    v10 = v16;
    if ((v9 & 1) == 0)
    {
      path = [lCopy path];
      v13 = _CreateAndLogError("[MIStashMetadata serializeToURL:error:]", 159, @"MIInstallerErrorDomain", 4, v10, 0, @"Failed to write serialized MIStashedBundleMetadata to %@", v12, path);

      v10 = v13;
    }

    if (error && v10)
    {
      v14 = v10;
      *error = v10;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 == 0;
}

@end