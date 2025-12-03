@interface MFMessageTextAttachment
- (BOOL)isPlaceholder;
- (MFMessageTextAttachment)init;
- (MFMessageTextAttachment)initWithWrapper:(id)wrapper;
- (id)cachedValueForKey:(id)key;
- (id)description;
- (id)fileWrapperForcingDownload:(BOOL)download;
- (id)textEncodingNameForData:(id)data mimeType:(id)type;
- (unsigned)approximateSize;
- (void)inlineDisplayData:(id *)data mimeType:(id *)type;
- (void)setCachedValue:(id)value forKey:(id)key;
@end

@implementation MFMessageTextAttachment

- (MFMessageTextAttachment)init
{
  v3 = [(MFMessageFileWrapper *)[MFPlaceholderFileWrapper alloc] initRegularFileWithContents:0];
  v4 = [(MFMessageTextAttachment *)self initWithWrapper:v3];

  return v4;
}

- (MFMessageTextAttachment)initWithWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  v9.receiver = self;
  v9.super_class = MFMessageTextAttachment;
  v5 = [(MFMessageTextAttachment *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cache = v5->_cache;
    v5->_cache = v6;

    [(MFMessageTextAttachment *)v5 setCachedValue:wrapperCopy forKey:@"kMessageTextAttachmentFileWrapper"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MFMessageTextAttachment;
  v4 = [(MFMessageTextAttachment *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@\n\tcache: %@", v4, self->_cache];

  return v5;
}

- (id)cachedValueForKey:(id)key
{
  keyCopy = key;
  [(NSMutableDictionary *)self->_cache mf_lock];
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:keyCopy];
  [(NSMutableDictionary *)self->_cache mf_unlock];

  return v5;
}

- (void)setCachedValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  [(NSMutableDictionary *)self->_cache mf_lock];
  cache = self->_cache;
  if (valueCopy)
  {
    [(NSMutableDictionary *)cache setObject:valueCopy forKey:keyCopy];
  }

  else
  {
    [(NSMutableDictionary *)cache removeObjectForKey:keyCopy];
  }

  [(NSMutableDictionary *)self->_cache mf_unlock];
}

- (unsigned)approximateSize
{
  fileWrapper = [(MFMessageTextAttachment *)self fileWrapper];
  if (!fileWrapper)
  {
    return 0;
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithObjects:&fileWrapper count:1];
  v3 = 0;
  while ([v2 count])
  {
    lastObject = [v2 lastObject];
    [v2 removeLastObject];
    if ([lastObject isSymbolicLink])
    {
      v3 += 1024;
      goto LABEL_12;
    }

    if ([lastObject isDirectory])
    {
      fileWrappers = [lastObject fileWrappers];
      allValues = [fileWrappers allValues];

      if (allValues)
      {
        [v2 addObjectsFromArray:allValues];
      }
    }

    else
    {
      if (![lastObject isRegularFile])
      {
        goto LABEL_12;
      }

      allValues = [lastObject regularFileContents];
      v3 += [allValues length];
    }

LABEL_12:
  }

  return v3;
}

- (BOOL)isPlaceholder
{
  v2 = [(MFMessageTextAttachment *)self fileWrapperForcingDownload:0];
  isPlaceholder = [v2 isPlaceholder];

  return isPlaceholder;
}

- (void)inlineDisplayData:(id *)data mimeType:(id *)type
{
  v6 = [(MFMessageTextAttachment *)self fileWrapperForcingDownload:data != 0];
  v7 = v6;
  if (data)
  {
    *data = [v6 regularFileContents];
    v6 = v7;
  }

  if (type)
  {
    *type = [v6 mimeType];
    v6 = v7;
  }
}

- (id)fileWrapperForcingDownload:(BOOL)download
{
  if (download && [(MFMessageTextAttachment *)self isPlaceholder])
  {
    [(MFMessageTextAttachment *)self download];
  }

  return [(MFMessageTextAttachment *)self fileWrapper];
}

- (id)textEncodingNameForData:(id)data mimeType:(id)type
{
  dataCopy = data;
  typeCopy = type;
  v8 = typeCopy;
  if (!typeCopy)
  {
    goto LABEL_9;
  }

  if (!strcmp("text/html", [typeCopy UTF8String]))
  {
    Default = CFAllocatorGetDefault();
    v14 = MFGetMappedAllocator();
    CFAllocatorSetDefault(v14);
    v15 = CFStringCreateWithBytes(v14, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0x8000100u, 0);
    CFAllocatorSetDefault(Default);
    if (v15)
    {
      CFRelease(v15);
      v12 = @"UTF-8";
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (![v8 hasPrefix:@"text/"])
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  textEncodingGuess = [(MFMessageTextAttachment *)self textEncodingGuess];
  v10 = textEncodingGuess;
  v11 = @"UTF-8";
  if (textEncodingGuess)
  {
    v11 = textEncodingGuess;
  }

  v12 = v11;

LABEL_10:

  return v12;
}

@end