@interface GSAddition
- (BOOL)copyAdditionContentToURL:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSavedConflict;
- (BOOL)mergeUserInfo:(id)a3 error:(id *)a4;
- (BOOL)refreshWithError:(id *)a3;
- (BOOL)setDisplayName:(id)a3 error:(id *)a4;
- (BOOL)setNameSpace:(id)a3 error:(id *)a4;
- (BOOL)setOptions:(unint64_t)a3 error:(id *)a4;
- (GSAddition)init;
- (NSCopying)persistentIdentifier;
- (NSData)sandboxExtension;
- (NSNumber)size;
- (id)_initWithStorage:(id)a3 andDictionary:(id)a4;
- (id)description;
- (id)displayNameWithError:(id *)a3;
- (id)originalPOSIXNameWithError:(id *)a3;
- (id)replaceItemAtURL:(id)a3 error:(id *)a4;
- (id)userInfoWithError:(id *)a3;
- (unint64_t)hash;
- (void)_refreshWithDictionary:(id)a3;
@end

@implementation GSAddition

- (NSData)sandboxExtension
{
  v3 = self->_storage;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(NSURL *)self->_url pathComponents];
    v5 = [v4 objectAtIndex:{objc_msgSend(v4, "count") - 5}];
    v6 = [v5 isEqualToString:@"PerUID"];

    if (v6)
    {
      [(GSAdditionStoring *)v3 privExtension];
    }

    else
    {
      [(GSAdditionStoring *)v3 pubExtension];
    }
    v7 = ;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isSavedConflict
{
  if ((self->_options & 4) != 0)
  {
    return [(NSString *)self->_namespace isEqualToString:@"com.apple.documentVersions"];
  }

  else
  {
    return 0;
  }
}

- (NSNumber)size
{
  if (!self->_size)
  {
    v3 = sub_10000B1E0([(NSURL *)self->_url fileSystemRepresentation], 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = [NSNumber numberWithLongLong:v3];
      size = self->_size;
      self->_size = v4;
    }
  }

  v6 = self->_size;

  return v6;
}

- (NSCopying)persistentIdentifier
{
  p_isa = self->_namespace;
  if ([(NSString *)self->_namespace isEqualToString:@"com.apple.ubiquity"]|| [(NSString *)self->_namespace isEqualToString:@"com.apple.FileProvider.conflict"])
  {
    v4 = @"com.apple.documentVersions";

    p_isa = &v4->isa;
  }

  v5 = [(GSAdditionStoring *)self->_storage persistentIdentifier];
  v6 = [(GSAddition *)self name:v5];
  v9[2] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:3];

  return v7;
}

- (id)displayNameWithError:(id *)a3
{
  p_displayName = &self->_displayName;
  displayName = self->_displayName;
  if (displayName)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_10000ADC4([(NSURL *)self->_url fileSystemRepresentation], a3);
    if ([v5 rangeOfString:@":"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v5 stringByReplacingOccurrencesOfString:@":" withString:@"/"];

      v5 = v6;
    }

    objc_storeStrong(p_displayName, v5);
    displayName = *p_displayName;
  }

  v7 = displayName;

  return displayName;
}

- (id)originalPOSIXNameWithError:(id *)a3
{
  p_originalName = &self->_originalName;
  originalName = self->_originalName;
  if (!originalName)
  {
    v8 = sub_10000AB84([(NSURL *)self->_url fileSystemRepresentation], a3);
    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v9 = [(GSAddition *)self displayName];
      v5 = v9;
      if (v9)
      {
        v10 = [v9 pathExtension];
        v11 = [(GSAddition *)self name];
        v12 = [v11 pathExtension];

        if ([v10 caseInsensitiveCompare:v12])
        {
          v13 = [v5 stringByAppendingPathExtension:v12];

          v5 = v13;
        }

        if ([v5 rangeOfString:@"/"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = [v5 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

          v5 = v14;
        }

        v5 = v5;

        v6 = v5;
        goto LABEL_12;
      }
    }

    v6 = 0;
LABEL_12:
    objc_storeStrong(p_originalName, v5);
    originalName = *p_originalName;
    goto LABEL_13;
  }

  v5 = 0;
  v6 = 0;
LABEL_13:
  v15 = originalName;

  return originalName;
}

- (id)userInfoWithError:(id *)a3
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v5 = sub_10000A388([(NSURL *)self->_url fileSystemRepresentation], a3);
    v6 = self->_userInfo;
    self->_userInfo = v5;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

- (BOOL)refreshWithError:(id *)a3
{
  v4 = [(GSAdditionStoring *)self->_storage getAdditionDictionary:self error:a3];
  if (v4)
  {
    [(GSAddition *)self _refreshWithDictionary:v4];
  }

  return v4 != 0;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if ([(GSAdditionStoring *)self->_storage isEqual:v5->_storage]&& [(NSString *)self->_namespace isEqualToString:v5->_namespace])
      {
        v6 = [(GSAddition *)self name];
        v7 = [(GSAddition *)v5 name];
        v8 = [v6 isEqual:v7];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(GSAdditionStoring *)self->_storage hash];
  v4 = [(NSString *)self->_namespace hash]^ v3;
  v5 = [(GSAddition *)self name];
  v6 = [v5 hash];

  return v4 ^ v6;
}

- (id)description
{
  v3 = self->_namespace;
  v4 = [(NSURL *)self->_url lastPathComponent];
  v5 = [NSString stringWithFormat:@"<GSAddition %p ns:%@ n:%@ o:%llx, cr:%hhd>", self, v3, v4, self->_options, self->_savedConflictResolved];

  return v5;
}

- (GSAddition)init
{
  v3 = _NSMethodExceptionProem();
  [NSException raise:NSInvalidArgumentException format:@"%@: cannot use -init for initialization", v3];

  return 0;
}

- (void)_refreshWithDictionary:(id)a3
{
  userInfo = self->_userInfo;
  self->_userInfo = 0;
  v5 = a3;

  displayName = self->_displayName;
  self->_displayName = 0;

  originalName = self->_originalName;
  self->_originalName = 0;

  v8 = [v5 objectForKey:@"o"];
  self->_options = [v8 longLongValue];

  v9 = [v5 objectForKey:@"ns"];
  v10 = self->_namespace;
  self->_namespace = v9;

  v11 = [v5 objectForKey:@"u"];
  url = self->_url;
  self->_url = v11;

  v13 = [v5 objectForKey:@"sz"];
  size = self->_size;
  self->_size = v13;

  v15 = [v5 objectForKey:@"cr"];

  self->_savedConflictResolved = [v15 BOOLValue];
}

- (id)_initWithStorage:(id)a3 andDictionary:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GSAddition;
  v9 = [(GSAddition *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, a3);
    [(GSAddition *)v10 _refreshWithDictionary:v8];
  }

  return v10;
}

- (BOOL)setOptions:(unint64_t)a3 error:(id *)a4
{
  v6 = [(GSAdditionStoring *)self->_storage setAdditionOptions:self value:a3 error:a4];
  if (v6)
  {
    self->_options = a3;
  }

  return v6;
}

- (BOOL)setDisplayName:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [(GSAdditionStoring *)self->_storage setAdditionDisplayName:self value:v7 error:a4];
  if (v8)
  {
    objc_storeStrong(&self->_displayName, a3);
  }

  return v8;
}

- (BOOL)setNameSpace:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(NSString *)self->_namespace isEqualToString:v6])
  {
    v7 = [(GSAdditionStoring *)self->_storage setAdditionNameSpace:self value:v6 error:a4];
    if (!v7)
    {
      v9 = 0;
      goto LABEL_5;
    }

    v8 = v7;
    [(GSAddition *)self _refreshWithDictionary:v7];
  }

  v9 = 1;
LABEL_5:

  return v9;
}

- (BOOL)mergeUserInfo:(id)a3 error:(id *)a4
{
  v5 = [(GSAdditionStoring *)self->_storage mergeAdditionUserInfo:self value:a3 error:a4];
  if (v5)
  {
    userInfo = self->_userInfo;
    self->_userInfo = 0;
  }

  return v5;
}

- (BOOL)copyAdditionContentToURL:(id)a3 error:(id *)a4
{
  url = self->_url;
  v6 = a3;
  v7 = [(NSURL *)url fileSystemRepresentation];
  v8 = [v6 fileSystemRepresentation];

  return sub_10000C010(v7, v8, a4);
}

- (id)replaceItemAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = sub_100002B78(v6, self, a4);
  v8 = v7;
  if (v7 && v7 != v6)
  {
    v9 = [(GSAddition *)self storage];
    v10 = [v9 documentURL];
    v11 = [v10 isEqual:v6];

    if (v11)
    {
      [v9 setDocumentURL:v8];
    }
  }

  return v8;
}

@end