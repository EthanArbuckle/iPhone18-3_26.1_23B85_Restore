@interface MFMessageTextAttachment
- (BOOL)isPlaceholder;
- (MFMessageTextAttachment)init;
- (MFMessageTextAttachment)initWithWrapper:(id)a3;
- (id)cachedValueForKey:(id)a3;
- (id)description;
- (id)fileWrapperForcingDownload:(BOOL)a3;
- (id)textEncodingNameForData:(id)a3 mimeType:(id)a4;
- (unsigned)approximateSize;
- (void)inlineDisplayData:(id *)a3 mimeType:(id *)a4;
- (void)setCachedValue:(id)a3 forKey:(id)a4;
@end

@implementation MFMessageTextAttachment

- (MFMessageTextAttachment)init
{
  v3 = [(MFMessageFileWrapper *)[MFPlaceholderFileWrapper alloc] initRegularFileWithContents:0];
  v4 = [(MFMessageTextAttachment *)self initWithWrapper:v3];

  return v4;
}

- (MFMessageTextAttachment)initWithWrapper:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFMessageTextAttachment;
  v5 = [(MFMessageTextAttachment *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cache = v5->_cache;
    v5->_cache = v6;

    [(MFMessageTextAttachment *)v5 setCachedValue:v4 forKey:@"kMessageTextAttachmentFileWrapper"];
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

- (id)cachedValueForKey:(id)a3
{
  v4 = a3;
  [(NSMutableDictionary *)self->_cache mf_lock];
  v5 = [(NSMutableDictionary *)self->_cache objectForKey:v4];
  [(NSMutableDictionary *)self->_cache mf_unlock];

  return v5;
}

- (void)setCachedValue:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  [(NSMutableDictionary *)self->_cache mf_lock];
  cache = self->_cache;
  if (v8)
  {
    [(NSMutableDictionary *)cache setObject:v8 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)cache removeObjectForKey:v6];
  }

  [(NSMutableDictionary *)self->_cache mf_unlock];
}

- (unsigned)approximateSize
{
  v8 = [(MFMessageTextAttachment *)self fileWrapper];
  if (!v8)
  {
    return 0;
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithObjects:&v8 count:1];
  v3 = 0;
  while ([v2 count])
  {
    v4 = [v2 lastObject];
    [v2 removeLastObject];
    if ([v4 isSymbolicLink])
    {
      v3 += 1024;
      goto LABEL_12;
    }

    if ([v4 isDirectory])
    {
      v5 = [v4 fileWrappers];
      v6 = [v5 allValues];

      if (v6)
      {
        [v2 addObjectsFromArray:v6];
      }
    }

    else
    {
      if (![v4 isRegularFile])
      {
        goto LABEL_12;
      }

      v6 = [v4 regularFileContents];
      v3 += [v6 length];
    }

LABEL_12:
  }

  return v3;
}

- (BOOL)isPlaceholder
{
  v2 = [(MFMessageTextAttachment *)self fileWrapperForcingDownload:0];
  v3 = [v2 isPlaceholder];

  return v3;
}

- (void)inlineDisplayData:(id *)a3 mimeType:(id *)a4
{
  v6 = [(MFMessageTextAttachment *)self fileWrapperForcingDownload:a3 != 0];
  v7 = v6;
  if (a3)
  {
    *a3 = [v6 regularFileContents];
    v6 = v7;
  }

  if (a4)
  {
    *a4 = [v6 mimeType];
    v6 = v7;
  }
}

- (id)fileWrapperForcingDownload:(BOOL)a3
{
  if (a3 && [(MFMessageTextAttachment *)self isPlaceholder])
  {
    [(MFMessageTextAttachment *)self download];
  }

  return [(MFMessageTextAttachment *)self fileWrapper];
}

- (id)textEncodingNameForData:(id)a3 mimeType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  if (!strcmp("text/html", [v7 UTF8String]))
  {
    Default = CFAllocatorGetDefault();
    v14 = MFGetMappedAllocator();
    CFAllocatorSetDefault(v14);
    v15 = CFStringCreateWithBytes(v14, [v6 bytes], objc_msgSend(v6, "length"), 0x8000100u, 0);
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

  v9 = [(MFMessageTextAttachment *)self textEncodingGuess];
  v10 = v9;
  v11 = @"UTF-8";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

LABEL_10:

  return v12;
}

@end