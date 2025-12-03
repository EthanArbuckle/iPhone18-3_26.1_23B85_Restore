@interface MFMessageFileWrapper
- (BOOL)isImageFile;
- (BOOL)isPDFFile;
- (BOOL)isUnzippableFile;
- (MFMessageFileWrapper)initWithPath:(id)path;
- (id)contentID;
- (id)description;
- (id)eventUniqueID;
- (id)fileProtection;
- (id)filename;
- (id)icsRepresentation;
- (id)inferredMimeType;
- (id)initRegularFileWithContents:(id)contents;
- (id)initSymbolicLinkWithDestination:(id)destination;
- (id)meetingStorePersistentID;
- (id)messageID;
- (id)mimeType;
- (id)preferredFilename;
- (unsigned)creator;
- (unsigned)finderFlags;
- (unsigned)type;
- (void)_isImage:(BOOL *)image orPDFFile:(BOOL *)file;
- (void)dealloc;
- (void)setCreator:(unsigned int)creator;
- (void)setFileAttributes:(id)attributes;
- (void)setFilename:(id)filename;
- (void)setFinderFlags:(unsigned __int16)flags;
- (void)setPreferredFilename:(id)filename;
- (void)setType:(unsigned int)type;
- (void)setURL:(id)l;
@end

@implementation MFMessageFileWrapper

- (void)setType:(unsigned int)type
{
  if (type)
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
  fileAttributes = [(MFMessageFileWrapper *)self fileAttributes];
  fileHFSTypeCode = [fileAttributes fileHFSTypeCode];

  return fileHFSTypeCode;
}

- (void)setCreator:(unsigned int)creator
{
  if (creator)
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
  fileAttributes = [(MFMessageFileWrapper *)self fileAttributes];
  fileHFSCreatorCode = [fileAttributes fileHFSCreatorCode];

  return fileHFSCreatorCode;
}

- (void)setFinderFlags:(unsigned __int16)flags
{
  if (flags)
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
  fileAttributes = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [fileAttributes objectForKey:@"_MFFinderFlags"];
  unsignedShortValue = [v3 unsignedShortValue];

  return unsignedShortValue;
}

- (id)mimeType
{
  fileAttributes = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [fileAttributes objectForKey:@"_MFMimeType"];

  return v3;
}

- (id)inferredMimeType
{
  preferredFilename = [(MFMessageFileWrapper *)self preferredFilename];
  v3 = _mimeTypeFromFileName(preferredFilename);

  return v3;
}

- (id)contentID
{
  fileAttributes = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [fileAttributes objectForKey:@"_MFContentID"];

  return v3;
}

- (id)messageID
{
  fileAttributes = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [fileAttributes objectForKey:@"_MFMessageID"];

  return v3;
}

- (id)eventUniqueID
{
  fileAttributes = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [fileAttributes objectForKey:@"_MFEventUniqueID"];

  return v3;
}

- (id)meetingStorePersistentID
{
  fileAttributes = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [fileAttributes objectForKey:@"_MFMeetingStorePersistentID"];

  return v3;
}

- (id)icsRepresentation
{
  fileAttributes = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [fileAttributes objectForKey:@"_MFICSRepresentation"];

  return v3;
}

- (id)fileProtection
{
  fileAttributes = [(MFMessageFileWrapper *)self fileAttributes];
  v3 = [fileAttributes objectForKey:*MEMORY[0x1E696A3A0]];

  return v3;
}

- (void)_isImage:(BOOL *)image orPDFFile:(BOOL *)file
{
  imageCopy = file;
  if (image)
  {
    *image = 0;
  }

  if (file)
  {
    *file = 0;
  }

  mimeType = [(MFMessageFileWrapper *)self mimeType];
  if ([@"application/pdf" caseInsensitiveCompare:?] && objc_msgSend(@"image/pdf", "caseInsensitiveCompare:", mimeType))
  {
    if ([mimeType hasPrefix:@"image/"])
    {
      if (image)
      {
        *image = 1;
      }

      goto LABEL_24;
    }

    v7 = objc_alloc_init(MFTypeInfo);
    preferredFilename = [(MFMessageFileWrapper *)self preferredFilename];
    pathExtension = [preferredFilename pathExtension];
    [(MFTypeInfo *)v7 setPathExtension:pathExtension];

    filename = [(MFMessageFileWrapper *)self filename];
    [(MFTypeInfo *)v7 setFilename:filename];

    if (MFGetTypeInfo(v7, 1))
    {
      mimeType2 = [(MFTypeInfo *)v7 mimeType];
      v12 = [mimeType2 rangeOfString:@"image/" options:9];

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        mimeType3 = [(MFTypeInfo *)v7 mimeType];
        v14 = [mimeType3 caseInsensitiveCompare:@"application/pdf"];

        if (v14)
        {
          goto LABEL_23;
        }

        if (image)
        {
          *image = 0;
        }

        if (!imageCopy)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      imageCopy = image;
      if (image)
      {
LABEL_22:
        *imageCopy = 1;
      }
    }

LABEL_23:

    goto LABEL_24;
  }

  if (image)
  {
    *image = 0;
  }

  if (imageCopy)
  {
    *imageCopy = 1;
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
  preferredFilename = [(MFMessageFileWrapper *)self preferredFilename];
  pathExtension = [preferredFilename pathExtension];
  if ([pathExtension caseInsensitiveCompare:@"zip"])
  {
    v4 = 0;
  }

  else
  {
    stringByDeletingPathExtension = [preferredFilename stringByDeletingPathExtension];
    pathExtension2 = [stringByDeletingPathExtension pathExtension];
    v4 = [pathExtension2 length] != 0;
  }

  return v4;
}

- (MFMessageFileWrapper)initWithPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  memset(__b, 170, sizeof(__b));
  v16.receiver = self;
  v16.super_class = MFMessageFileWrapper;
  v6 = [(MFMessageFileWrapper *)&v16 init];
  if (v6 && [pathCopy getFileSystemRepresentation:__b maxLength:1023])
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [defaultManager attributesOfItemAtPath:pathCopy error:0];

    if (v8)
    {
      v9 = [v8 objectForKey:*MEMORY[0x1E696A3D8]];
      if ([v9 isEqualToString:*MEMORY[0x1E696A3E8]])
      {
        [(MFMessageFileWrapper *)v6 setType:0];
        v10 = [[MFData alloc] initWithContentsOfFile:pathCopy options:1 error:0];
        data = v6->_data;
        v6->_data = &v10->super;

        v12 = _mimeTypeFromFileName(pathCopy);
        [(MFMessageFileWrapper *)v6 setMimeType:v12];
      }

      else if ([v9 isEqualToString:*MEMORY[0x1E696A3F0]])
      {
        [(MFMessageFileWrapper *)v6 setType:1];
      }

      objc_storeStrong(&v6->_path, path);
      lastPathComponent = [pathCopy lastPathComponent];
      [(MFMessageFileWrapper *)v6 setPreferredFilename:lastPathComponent];

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

- (void)setURL:(id)l
{
  lCopy = l;
  _MFLockGlobalLock();
  objc_storeStrong(&self->_url, l);
  _MFUnlockGlobalLock();
}

- (id)initRegularFileWithContents:(id)contents
{
  contentsCopy = contents;
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
      v9 = contentsCopy;
    }

    else
    {
      v9 = [[MFData alloc] initWithImmutableData:contentsCopy];
    }

    data = v6->_data;
    v6->_data = &v9->super;

    v11 = v6;
  }

  return v6;
}

- (id)initSymbolicLinkWithDestination:(id)destination
{
  destinationCopy = destination;
  v8.receiver = self;
  v8.super_class = MFMessageFileWrapper;
  v5 = [(MFMessageFileWrapper *)&v8 init];
  v5->_type = 0;
  linkDestination = v5->_linkDestination;
  v5->_linkDestination = destinationCopy;

  return v5;
}

- (void)setPreferredFilename:(id)filename
{
  filenameCopy = filename;
  v7 = [filenameCopy stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

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

- (void)setFilename:(id)filename
{
  filenameCopy = filename;
  [self mf_lock];
  v4 = [filenameCopy copy];
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

- (void)setFileAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [attributesCopy mutableCopy];
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
  isPlaceholder = [(MFMessageFileWrapper *)self isPlaceholder];
  v11 = "NO";
  if (isPlaceholder)
  {
    v11 = "YES";
  }

  v12 = [v3 stringWithFormat:@"%@\n\tpath: %@\n\tfilename: %@\n\tpreferred: %@\n\tdata length: %lu\n\tURL: %@\n\tPlaceholder: %s", v4, path, filename, preferredFilename, v8, url, v11];

  return v12;
}

@end