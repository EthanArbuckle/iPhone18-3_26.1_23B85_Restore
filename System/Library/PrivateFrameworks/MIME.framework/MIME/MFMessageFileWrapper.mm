@interface MFMessageFileWrapper
- (BOOL)isImageFile;
- (BOOL)isPDFFile;
- (BOOL)isUnzippableFile;
- (MFMessageFileWrapper)initWithPath:(id)a3;
- (id)contentID;
- (id)description;
- (id)eventUniqueID;
- (id)fileProtection;
- (id)filename;
- (id)icsRepresentation;
- (id)inferredMimeType;
- (id)initRegularFileWithContents:(id)a3;
- (id)initSymbolicLinkWithDestination:(id)a3;
- (id)meetingStorePersistentID;
- (id)messageID;
- (id)mimeType;
- (id)preferredFilename;
- (unsigned)creator;
- (unsigned)finderFlags;
- (unsigned)type;
- (void)_isImage:(BOOL *)a3 orPDFFile:(BOOL *)a4;
- (void)dealloc;
- (void)setCreator:(unsigned int)a3;
- (void)setFileAttributes:(id)a3;
- (void)setFilename:(id)a3;
- (void)setFinderFlags:(unsigned __int16)a3;
- (void)setPreferredFilename:(id)a3;
- (void)setType:(unsigned int)a3;
- (void)setURL:(id)a3;
@end

@implementation MFMessageFileWrapper

- (void)setType:(unsigned int)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  _changeFileAttributes(self, *MEMORY[0x1E696A338], v4);
}

- (unsigned)type
{
  v2 = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [v2 fileHFSTypeCode];

  return v3;
}

- (void)setCreator:(unsigned int)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  _changeFileAttributes(self, *MEMORY[0x1E696A330], v4);
}

- (unsigned)creator
{
  v2 = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [v2 fileHFSCreatorCode];

  return v3;
}

- (void)setFinderFlags:(unsigned __int16)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  _changeFileAttributes(self, @"_MFFinderFlags", v4);
}

- (unsigned)finderFlags
{
  v2 = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [v2 objectForKey:@"_MFFinderFlags"];
  v4 = [v3 unsignedShortValue];

  return v4;
}

- (id)mimeType
{
  v2 = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [v2 objectForKey:@"_MFMimeType"];

  return v3;
}

- (id)inferredMimeType
{
  v2 = [(MFMessageFileWrapper *)self preferredFilename];
  v3 = _mimeTypeFromFileName(v2);

  return v3;
}

- (id)contentID
{
  v2 = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [v2 objectForKey:@"_MFContentID"];

  return v3;
}

- (id)messageID
{
  v2 = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [v2 objectForKey:@"_MFMessageID"];

  return v3;
}

- (id)eventUniqueID
{
  v2 = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [v2 objectForKey:@"_MFEventUniqueID"];

  return v3;
}

- (id)meetingStorePersistentID
{
  v2 = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [v2 objectForKey:@"_MFMeetingStorePersistentID"];

  return v3;
}

- (id)icsRepresentation
{
  v2 = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [v2 objectForKey:@"_MFICSRepresentation"];

  return v3;
}

- (id)fileProtection
{
  v2 = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [v2 objectForKey:*MEMORY[0x1E696A3A0]];

  return v3;
}

- (void)_isImage:(BOOL *)a3 orPDFFile:(BOOL *)a4
{
  v4 = a4;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v15 = [(MFMessageFileWrapper *)self mimeType];
  if ([@"application/pdf" caseInsensitiveCompare:?] && objc_msgSend(@"image/pdf", "caseInsensitiveCompare:", v15))
  {
    if ([v15 hasPrefix:@"image/"])
    {
      if (a3)
      {
        *a3 = 1;
      }

      goto LABEL_24;
    }

    v7 = objc_alloc_init(MFTypeInfo);
    v8 = [(MFMessageFileWrapper *)self preferredFilename];
    v9 = [v8 pathExtension];
    [(MFTypeInfo *)v7 setPathExtension:v9];

    v10 = [(MFMessageFileWrapper *)self filename];
    [(MFTypeInfo *)v7 setFilename:v10];

    if (MFGetTypeInfo(v7, 1))
    {
      v11 = [(MFTypeInfo *)v7 mimeType];
      v12 = [v11 rangeOfString:@"image/" options:9];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [(MFTypeInfo *)v7 mimeType];
        v14 = [v13 caseInsensitiveCompare:@"application/pdf"];

        if (v14)
        {
          goto LABEL_23;
        }

        if (a3)
        {
          *a3 = 0;
        }

        if (!v4)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v4 = a3;
      if (a3)
      {
LABEL_22:
        *v4 = 1;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (v4)
  {
    *v4 = 1;
  }

LABEL_24:
}

- (BOOL)isImageFile
{
  v3 = 0;
  [(MFMessageFileWrapper *)self _isImage:&v3 orPDFFile:0];
  return v3;
}

- (BOOL)isPDFFile
{
  v3 = 0;
  [(MFMessageFileWrapper *)self _isImage:0 orPDFFile:&v3];
  return v3;
}

- (BOOL)isUnzippableFile
{
  v2 = [(MFMessageFileWrapper *)self preferredFilename];
  v3 = [v2 pathExtension];
  if ([v3 caseInsensitiveCompare:@"zip"])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 stringByDeletingPathExtension];
    v6 = [v5 pathExtension];
    v4 = [v6 length] != 0;
  }

  return v4;
}

- (MFMessageFileWrapper)initWithPath:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  memset(__b, 170, sizeof(__b));
  v16.receiver = self;
  v16.super_class = MFMessageFileWrapper;
  v6 = [(MFMessageFileWrapper *)&v16 init];
  if (v6 && [v5 getFileSystemRepresentation:__b maxLength:1023])
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v7 attributesOfItemAtPath:v5 error:0];

    if (v8)
    {
      v9 = [v8 objectForKey:*MEMORY[0x1E696A3D8]];
      if ([v9 isEqualToString:*MEMORY[0x1E696A3E8]])
      {
        [(MFMessageFileWrapper *)v6 setType:0];
        v10 = [[MFData alloc] initWithContentsOfFile:v5 options:1 error:0];
        data = v6->_data;
        v6->_data = &v10->super;

        v12 = _mimeTypeFromFileName(v5);
        [(MFMessageFileWrapper *)v6 setMimeType:v12];
      }

      else if ([v9 isEqualToString:*MEMORY[0x1E696A3F0]])
      {
        [(MFMessageFileWrapper *)v6 setType:1];
      }

      objc_storeStrong(&v6->_path, a3);
      v13 = [v5 lastPathComponent];
      [(MFMessageFileWrapper *)v6 setPreferredFilename:v13];

      __b[1023] = 0;
      _fixSubwrappersAtPath(v6, __b);
    }

    else
    {
      v9 = v6;
      v6 = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)setURL:(id)a3
{
  v5 = a3;
  _MFLockGlobalLock();
  objc_storeStrong(&self->_url, a3);
  _MFUnlockGlobalLock();
}

- (id)initRegularFileWithContents:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MFMessageFileWrapper;
  v5 = [(MFMessageFileWrapper *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 0;
    v7 = _os_feature_enabled_impl();
    v8 = MEMORY[0x1E696A388];
    if (!v7)
    {
      v8 = MEMORY[0x1E696A380];
    }

    [(MFMessageFileWrapper *)v6 setFileProtection:*v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v4;
    }

    else
    {
      v9 = [[MFData alloc] initWithImmutableData:v4];
    }

    data = v6->_data;
    v6->_data = &v9->super;

    v11 = v6;
  }

  return v6;
}

- (id)initSymbolicLinkWithDestination:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MFMessageFileWrapper;
  v5 = [(MFMessageFileWrapper *)&v8 init];
  v5->_type = 0;
  linkDestination = v5->_linkDestination;
  v5->_linkDestination = v4;

  return v5;
}

- (void)setPreferredFilename:(id)a3
{
  v4 = a3;
  v7 = [v4 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  [self mf_lock];
  v5 = [v7 copy];
  preferredFilename = self->_preferredFilename;
  self->_preferredFilename = v5;

  [self mf_unlock];
}

- (id)preferredFilename
{
  [self mf_lock];
  v3 = [(NSString *)self->_preferredFilename copy];
  [self mf_unlock];

  return v3;
}

- (void)setFilename:(id)a3
{
  v6 = a3;
  [self mf_lock];
  v4 = [v6 copy];
  filename = self->_filename;
  self->_filename = v4;

  [self mf_unlock];
}

- (id)filename
{
  [self mf_lock];
  v3 = [(NSString *)self->_filename copy];
  [self mf_unlock];

  return v3;
}

- (void)setFileAttributes:(id)a3
{
  v6 = a3;
  v4 = [v6 mutableCopy];
  attributes = self->_attributes;
  self->_attributes = v4;
}

- (void)dealloc
{
  [(MFMessageFileWrapper *)self setMimeType:0];
  v3.receiver = self;
  v3.super_class = MFMessageFileWrapper;
  [(MFMessageFileWrapper *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14.receiver = self;
  v14.super_class = MFMessageFileWrapper;
  v4 = [(MFMessageFileWrapper *)&v14 description];
  path = self->_path;
  filename = self->_filename;
  preferredFilename = self->_preferredFilename;
  v8 = [(NSData *)self->_data length];
  url = self->_url;
  v10 = [(MFMessageFileWrapper *)self isPlaceholder];
  v11 = "NO";
  if (v10)
  {
    v11 = "YES";
  }

  v12 = [v3 stringWithFormat:@"%@\n\tpath: %@\n\tfilename: %@\n\tpreferred: %@\n\tdata length: %lu\n\tURL: %@\n\tPlaceholder: %s", v4, path, filename, preferredFilename, v8, url, v11];

  return v12;
}

@end