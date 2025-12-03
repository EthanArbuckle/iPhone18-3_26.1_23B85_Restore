@interface CHSSnapshotContext
- (BOOL)fileExists;
- (BOOL)needsCAPackage;
- (CHSSnapshotContext)initWithURL:(id)l attributes:(id)attributes fileManager:(id)manager;
- (NSString)contentIdentifier;
- (NSString)typeIdentifier;
@end

@implementation CHSSnapshotContext

- (BOOL)needsCAPackage
{
  if (self->_checkedContentType)
  {
    usesCAPackage = self->_usesCAPackage;
  }

  else
  {
    typeIdentifier = [(CHSSnapshotContext *)self typeIdentifier];
    usesCAPackage = [typeIdentifier hasPrefix:@"com.apple.coreanimation"];
    self->_usesCAPackage = usesCAPackage;
    self->_checkedContentType = 1;
  }

  return usesCAPackage & 1;
}

- (NSString)typeIdentifier
{
  v3 = getxattr([(NSURL *)self->_url fileSystemRepresentation], "FormatType", 0, 0, 0, 0);
  v4 = v3;
  if (v3 >= 1)
  {
    v5 = malloc_type_malloc(v3, 0xBAA54F42uLL);
    v6 = getxattr([(NSURL *)self->_url fileSystemRepresentation], "FormatType", v5, v4, 0, 0);
    if (v6 == -1)
    {
      free(v5);
    }

    else
    {
      v7 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v5 length:v6 freeWhenDone:1];
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];

        goto LABEL_7;
      }
    }
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (CHSSnapshotContext)initWithURL:(id)l attributes:(id)attributes fileManager:(id)manager
{
  lCopy = l;
  attributesCopy = attributes;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = CHSSnapshotContext;
  v12 = [(CHSSnapshotContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, l);
    objc_storeStrong(&v13->_attributes, attributes);
    objc_storeStrong(&v13->_fileManager, manager);
  }

  return v13;
}

- (NSString)contentIdentifier
{
  v3 = getxattr([(NSURL *)self->_url fileSystemRepresentation], "ContentIdentifier", 0, 0, 0, 0);
  if (v3 < 1)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3, 0xD6DF0521uLL);
  v6 = getxattr([(NSURL *)self->_url fileSystemRepresentation], "ContentIdentifier", v5, v4, 0, 0);
  if (v6 == -1)
  {
    free(v5);
LABEL_6:
    v8 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  v7 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v5 length:v6 freeWhenDone:1];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
  }

  else
  {
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (BOOL)fileExists
{
  if (self->_checkedFileExists)
  {
    p_fileExists = &self->_fileExists;
  }

  else
  {
    fileManager = self->_fileManager;
    path = [(NSURL *)self->_url path];
    self->_fileExists = [(NSFileManager *)fileManager fileExistsAtPath:path];
    p_fileExists = &self->_fileExists;

    p_fileExists[1] = 1;
    v6 = *(p_fileExists + 14);
    *(p_fileExists + 14) = 0;
  }

  return *p_fileExists;
}

@end