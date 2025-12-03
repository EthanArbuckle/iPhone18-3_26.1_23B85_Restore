@interface MFWebMessageDocument
- (MFWebMessageDocument)init;
- (id)_initWithMimePart:(id)part htmlData:(id)data;
- (id)attachmentForURL:(id)l;
- (id)attachmentsInDocument;
- (id)fileWrapper;
- (id)mimePartForURL:(id)l;
- (id)preferredCharacterSet;
@end

@implementation MFWebMessageDocument

- (MFWebMessageDocument)init
{
  v12.receiver = self;
  v12.super_class = MFWebMessageDocument;
  v2 = [(MFWebAttachmentSource *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_uniqueId = atomic_fetch_add_explicit(init_lastUniqueId, 1u, memory_order_relaxed) + 1;
    v4 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"x-msg://%ul/", v3->_uniqueId];
    v6 = [v4 initWithString:v5];
    baseURL = v3->_baseURL;
    v3->_baseURL = v6;

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MFWebMessageDocument/%ul", v3->_uniqueId];
    v9 = [objc_alloc(MEMORY[0x1E69AD6D8]) initWithName:v8 andDelegate:v3];
    lock = v3->_lock;
    v3->_lock = v9;

    v3->_preferredEncoding = -1;
  }

  return v3;
}

- (id)_initWithMimePart:(id)part htmlData:(id)data
{
  partCopy = part;
  dataCopy = data;
  mimeBody = [partCopy mimeBody];
  v10 = mimeBody;
  v11 = 0;
  if (!dataCopy || !partCopy || !mimeBody)
  {
    goto LABEL_6;
  }

  v12 = [(MFWebMessageDocument *)self init];
  v11 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_htmlPart, part);
    objc_storeStrong(&v11->_mimeBody, v10);
    v13 = dataCopy;
    self = v11->_htmlData;
    v11->_htmlData = v13;
LABEL_6:
  }

  return v11;
}

- (id)mimePartForURL:(id)l
{
  lCopy = l;
  [(MFLock *)self->_lock lock];
  if (!self->_partsByURL)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    partsByURL = self->_partsByURL;
    self->_partsByURL = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    partsByFilename = self->_partsByFilename;
    self->_partsByFilename = v6;

    v8 = objc_allocWithZone(MEMORY[0x1E695DF70]);
    mimeBody = [(MFWebMessageDocument *)self mimeBody];
    topLevelPart = [mimeBody topLevelPart];
    v11 = [v8 initWithObjects:{topLevelPart, 0}];
    while (1)
    {

      if (![v11 count])
      {
        break;
      }

      mimeBody = [v11 lastObject];
      contentID = [mimeBody contentID];
      topLevelPart = MFCreateURLForContentID(contentID);

      contentLocation = [mimeBody contentLocation];
      attachmentFilename = [mimeBody attachmentFilename];
      if (topLevelPart)
      {
        [(NSMutableDictionary *)self->_partsByURL setObject:mimeBody forKey:topLevelPart];
      }

      if (contentLocation)
      {
        v15 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initWithString:contentLocation relativeToURL:self->_baseURL];
        v16 = v15;
        if (v15)
        {
          v17 = self->_partsByURL;
          absoluteURL = [v15 absoluteURL];
          [(NSMutableDictionary *)v17 setObject:mimeBody forKey:absoluteURL];
        }
      }

      if (attachmentFilename)
      {
        [(NSMutableDictionary *)self->_partsByFilename setObject:mimeBody forKey:attachmentFilename];
      }

      [v11 removeLastObject];
      subparts = [mimeBody subparts];
      if (subparts)
      {
        [v11 addObjectsFromArray:subparts];
      }
    }
  }

  if (!lCopy || ([(NSMutableDictionary *)self->_partsByURL objectForKey:lCopy], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    path = [lCopy path];
    lastPathComponent = [path lastPathComponent];

    if (lastPathComponent)
    {
      v20 = [(NSMutableDictionary *)self->_partsByFilename objectForKey:lastPathComponent];
    }

    else
    {
      v20 = 0;
    }
  }

  [(MFLock *)self->_lock unlock];

  return v20;
}

- (id)attachmentForURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = MFWebMessageDocument;
  v5 = [(MFWebAttachmentSource *)&v10 attachmentForURL:lCopy];
  if (!v5)
  {
    v6 = [(MFWebMessageDocument *)self mimePartForURL:lCopy];
    v7 = v6;
    if (v6)
    {
      attachments = [v6 attachments];
      if ([attachments count])
      {
        v5 = [attachments objectAtIndexedSubscript:0];
        [(MFWebAttachmentSource *)self setAttachment:v5 forURL:lCopy];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)attachmentsInDocument
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(MFWebMessageDocument *)self mimePartForURL:0];
  [(MFLock *)self->_lock lock];
  allKeys = [(NSMutableDictionary *)self->_partsByURL allKeys];
  [(MFLock *)self->_lock unlock];
  if ([allKeys count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = allKeys;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [(MFWebMessageDocument *)self attachmentForURL:*(*(&v13 + 1) + 8 * i), v13];
          if (v10)
          {
            [v5 addObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)preferredCharacterSet
{
  if ([(MFWebMessageDocument *)self preferredEncoding]== -1 || (MFCharsetForEncoding(), (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    mimePart = [(MFWebMessageDocument *)self mimePart];
    v3 = [mimePart bodyParameterForKey:@"charset"];
  }

  return v3;
}

- (id)fileWrapper
{
  v3 = objc_alloc(MEMORY[0x1E69AD6F0]);
  htmlData = [(MFWebMessageDocument *)self htmlData];
  v5 = [v3 initRegularFileWithContents:htmlData];

  mimePart = [(MFWebMessageDocument *)self mimePart];
  [mimePart configureFileWrapper:v5];

  return v5;
}

@end