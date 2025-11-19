@interface MFWebMessageDocument
- (MFWebMessageDocument)init;
- (id)_initWithMimePart:(id)a3 htmlData:(id)a4;
- (id)attachmentForURL:(id)a3;
- (id)attachmentsInDocument;
- (id)fileWrapper;
- (id)mimePartForURL:(id)a3;
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

- (id)_initWithMimePart:(id)a3 htmlData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 mimeBody];
  v10 = v9;
  v11 = 0;
  if (!v8 || !v7 || !v9)
  {
    goto LABEL_6;
  }

  v12 = [(MFWebMessageDocument *)self init];
  v11 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_htmlPart, a3);
    objc_storeStrong(&v11->_mimeBody, v10);
    v13 = v8;
    self = v11->_htmlData;
    v11->_htmlData = v13;
LABEL_6:
  }

  return v11;
}

- (id)mimePartForURL:(id)a3
{
  v24 = a3;
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
    v9 = [(MFWebMessageDocument *)self mimeBody];
    v10 = [v9 topLevelPart];
    v11 = [v8 initWithObjects:{v10, 0}];
    while (1)
    {

      if (![v11 count])
      {
        break;
      }

      v9 = [v11 lastObject];
      v12 = [v9 contentID];
      v10 = MFCreateURLForContentID(v12);

      v13 = [v9 contentLocation];
      v14 = [v9 attachmentFilename];
      if (v10)
      {
        [(NSMutableDictionary *)self->_partsByURL setObject:v9 forKey:v10];
      }

      if (v13)
      {
        v15 = [objc_allocWithZone(MEMORY[0x1E695DFF8]) initWithString:v13 relativeToURL:self->_baseURL];
        v16 = v15;
        if (v15)
        {
          v17 = self->_partsByURL;
          v18 = [v15 absoluteURL];
          [(NSMutableDictionary *)v17 setObject:v9 forKey:v18];
        }
      }

      if (v14)
      {
        [(NSMutableDictionary *)self->_partsByFilename setObject:v9 forKey:v14];
      }

      [v11 removeLastObject];
      v19 = [v9 subparts];
      if (v19)
      {
        [v11 addObjectsFromArray:v19];
      }
    }
  }

  if (!v24 || ([(NSMutableDictionary *)self->_partsByURL objectForKey:v24], (v20 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v21 = [v24 path];
    v22 = [v21 lastPathComponent];

    if (v22)
    {
      v20 = [(NSMutableDictionary *)self->_partsByFilename objectForKey:v22];
    }

    else
    {
      v20 = 0;
    }
  }

  [(MFLock *)self->_lock unlock];

  return v20;
}

- (id)attachmentForURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFWebMessageDocument;
  v5 = [(MFWebAttachmentSource *)&v10 attachmentForURL:v4];
  if (!v5)
  {
    v6 = [(MFWebMessageDocument *)self mimePartForURL:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 attachments];
      if ([v8 count])
      {
        v5 = [v8 objectAtIndexedSubscript:0];
        [(MFWebAttachmentSource *)self setAttachment:v5 forURL:v4];
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
  v4 = [(NSMutableDictionary *)self->_partsByURL allKeys];
  [(MFLock *)self->_lock unlock];
  if ([v4 count])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
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
    v4 = [(MFWebMessageDocument *)self mimePart];
    v3 = [v4 bodyParameterForKey:@"charset"];
  }

  return v3;
}

- (id)fileWrapper
{
  v3 = objc_alloc(MEMORY[0x1E69AD6F0]);
  v4 = [(MFWebMessageDocument *)self htmlData];
  v5 = [v3 initRegularFileWithContents:v4];

  v6 = [(MFWebMessageDocument *)self mimePart];
  [v6 configureFileWrapper:v5];

  return v5;
}

@end