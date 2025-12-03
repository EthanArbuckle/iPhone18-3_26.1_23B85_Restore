@interface GSAddition
- (BOOL)copyAdditionContentToURL:(id)l error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSavedConflict;
- (BOOL)mergeUserInfo:(id)info error:(id *)error;
- (BOOL)refreshWithError:(id *)error;
- (BOOL)setDisplayName:(id)name error:(id *)error;
- (BOOL)setNameSpace:(id)space error:(id *)error;
- (BOOL)setOptions:(unint64_t)options error:(id *)error;
- (GSAddition)init;
- (NSCopying)persistentIdentifier;
- (NSData)sandboxExtension;
- (NSNumber)size;
- (id)_initWithStorage:(id)storage andDictionary:(id)dictionary;
- (id)description;
- (id)displayNameWithError:(id *)error;
- (id)originalPOSIXNameWithError:(id *)error;
- (id)replaceItemAtURL:(id)l error:(id *)error;
- (id)userInfoWithError:(id *)error;
- (unint64_t)hash;
- (void)_refreshWithDictionary:(id)dictionary;
@end

@implementation GSAddition

- (NSData)sandboxExtension
{
  v3 = self->_storage;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pathComponents = [(NSURL *)self->_url pathComponents];
    v5 = [pathComponents objectAtIndex:{objc_msgSend(pathComponents, "count") - 5}];
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

  persistentIdentifier = [(GSAdditionStoring *)self->_storage persistentIdentifier];
  v6 = [(GSAddition *)self name:persistentIdentifier];
  v9[2] = v6;
  v7 = [NSArray arrayWithObjects:v9 count:3];

  return v7;
}

- (id)displayNameWithError:(id *)error
{
  p_displayName = &self->_displayName;
  displayName = self->_displayName;
  if (displayName)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_10000ADC4([(NSURL *)self->_url fileSystemRepresentation], error);
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

- (id)originalPOSIXNameWithError:(id *)error
{
  p_originalName = &self->_originalName;
  originalName = self->_originalName;
  if (!originalName)
  {
    v8 = sub_10000AB84([(NSURL *)self->_url fileSystemRepresentation], error);
    if (v8)
    {
      v5 = v8;
    }

    else
    {
      displayName = [(GSAddition *)self displayName];
      v5 = displayName;
      if (displayName)
      {
        pathExtension = [displayName pathExtension];
        name = [(GSAddition *)self name];
        pathExtension2 = [name pathExtension];

        if ([pathExtension caseInsensitiveCompare:pathExtension2])
        {
          v13 = [v5 stringByAppendingPathExtension:pathExtension2];

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

- (id)userInfoWithError:(id *)error
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v5 = sub_10000A388([(NSURL *)self->_url fileSystemRepresentation], error);
    v6 = self->_userInfo;
    self->_userInfo = v5;

    userInfo = self->_userInfo;
  }

  return userInfo;
}

- (BOOL)refreshWithError:(id *)error
{
  v4 = [(GSAdditionStoring *)self->_storage getAdditionDictionary:self error:error];
  if (v4)
  {
    [(GSAddition *)self _refreshWithDictionary:v4];
  }

  return v4 != 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(GSAdditionStoring *)self->_storage isEqual:v5->_storage]&& [(NSString *)self->_namespace isEqualToString:v5->_namespace])
      {
        name = [(GSAddition *)self name];
        name2 = [(GSAddition *)v5 name];
        v8 = [name isEqual:name2];
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
  name = [(GSAddition *)self name];
  v6 = [name hash];

  return v4 ^ v6;
}

- (id)description
{
  v3 = self->_namespace;
  lastPathComponent = [(NSURL *)self->_url lastPathComponent];
  v5 = [NSString stringWithFormat:@"<GSAddition %p ns:%@ n:%@ o:%llx, cr:%hhd>", self, v3, lastPathComponent, self->_options, self->_savedConflictResolved];

  return v5;
}

- (GSAddition)init
{
  v3 = _NSMethodExceptionProem();
  [NSException raise:NSInvalidArgumentException format:@"%@: cannot use -init for initialization", v3];

  return 0;
}

- (void)_refreshWithDictionary:(id)dictionary
{
  userInfo = self->_userInfo;
  self->_userInfo = 0;
  dictionaryCopy = dictionary;

  displayName = self->_displayName;
  self->_displayName = 0;

  originalName = self->_originalName;
  self->_originalName = 0;

  v8 = [dictionaryCopy objectForKey:@"o"];
  self->_options = [v8 longLongValue];

  v9 = [dictionaryCopy objectForKey:@"ns"];
  v10 = self->_namespace;
  self->_namespace = v9;

  v11 = [dictionaryCopy objectForKey:@"u"];
  url = self->_url;
  self->_url = v11;

  v13 = [dictionaryCopy objectForKey:@"sz"];
  size = self->_size;
  self->_size = v13;

  v15 = [dictionaryCopy objectForKey:@"cr"];

  self->_savedConflictResolved = [v15 BOOLValue];
}

- (id)_initWithStorage:(id)storage andDictionary:(id)dictionary
{
  storageCopy = storage;
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = GSAddition;
  v9 = [(GSAddition *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_storage, storage);
    [(GSAddition *)v10 _refreshWithDictionary:dictionaryCopy];
  }

  return v10;
}

- (BOOL)setOptions:(unint64_t)options error:(id *)error
{
  v6 = [(GSAdditionStoring *)self->_storage setAdditionOptions:self value:options error:error];
  if (v6)
  {
    self->_options = options;
  }

  return v6;
}

- (BOOL)setDisplayName:(id)name error:(id *)error
{
  nameCopy = name;
  v8 = [(GSAdditionStoring *)self->_storage setAdditionDisplayName:self value:nameCopy error:error];
  if (v8)
  {
    objc_storeStrong(&self->_displayName, name);
  }

  return v8;
}

- (BOOL)setNameSpace:(id)space error:(id *)error
{
  spaceCopy = space;
  if (![(NSString *)self->_namespace isEqualToString:spaceCopy])
  {
    v7 = [(GSAdditionStoring *)self->_storage setAdditionNameSpace:self value:spaceCopy error:error];
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

- (BOOL)mergeUserInfo:(id)info error:(id *)error
{
  v5 = [(GSAdditionStoring *)self->_storage mergeAdditionUserInfo:self value:info error:error];
  if (v5)
  {
    userInfo = self->_userInfo;
    self->_userInfo = 0;
  }

  return v5;
}

- (BOOL)copyAdditionContentToURL:(id)l error:(id *)error
{
  url = self->_url;
  lCopy = l;
  fileSystemRepresentation = [(NSURL *)url fileSystemRepresentation];
  fileSystemRepresentation2 = [lCopy fileSystemRepresentation];

  return sub_10000C010(fileSystemRepresentation, fileSystemRepresentation2, error);
}

- (id)replaceItemAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = sub_100002B78(lCopy, self, error);
  v8 = v7;
  if (v7 && v7 != lCopy)
  {
    storage = [(GSAddition *)self storage];
    documentURL = [storage documentURL];
    v11 = [documentURL isEqual:lCopy];

    if (v11)
    {
      [storage setDocumentURL:v8];
    }
  }

  return v8;
}

@end