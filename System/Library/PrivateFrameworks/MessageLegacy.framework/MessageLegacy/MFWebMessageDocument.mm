@interface MFWebMessageDocument
- (MFWebMessageDocument)init;
- (MFWebMessageDocument)initWithMimeBody:(id)a3;
- (MFWebMessageDocument)initWithMimePart:(id)a3;
- (id)_initWithMimePart:(id)a3 htmlData:(id)a4;
- (id)attachmentForURL:(id)a3;
- (id)attachmentsInDocument;
- (id)fileWrapper;
- (id)mimePartForURL:(id)a3;
- (id)preferredCharacterSet;
- (void)dealloc;
@end

@implementation MFWebMessageDocument

- (MFWebMessageDocument)init
{
  v7.receiver = self;
  v7.super_class = MFWebMessageDocument;
  v2 = [(MFWebAttachmentSource *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_uniqueId = atomic_fetch_add_explicit(&init_lastUniqueId, 1u, memory_order_relaxed) + 1;
    v4 = objc_allocWithZone(MEMORY[0x277CBEBC0]);
    v3->_baseURL = [v4 initWithString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"x-msg://%ul/", v3->_uniqueId)}];
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"MFWebMessageDocument/%ul", v3->_uniqueId];
    v3->_lock = [objc_alloc(MEMORY[0x277D24F28]) initWithName:v5 andDelegate:v3];

    v3->_preferredEncoding = -1;
  }

  return v3;
}

- (MFWebMessageDocument)initWithMimeBody:(id)a3
{
  if (a3 && [a3 isHTML])
  {
    v5 = [a3 textHtmlPart];

    return [(MFWebMessageDocument *)self initWithMimePart:v5];
  }

  else
  {
    [(MFWebMessageDocument *)self dealloc];
    return 0;
  }
}

- (id)_initWithMimePart:(id)a3 htmlData:(id)a4
{
  v7 = [a3 mimeBody];
  if (a4 && a3 && (v8 = v7) != 0)
  {
    v9 = [(MFWebMessageDocument *)self init];
    if (v9)
    {
      v9->_htmlPart = a3;
      v9->_mimeBody = v8;
      v9->_htmlData = a4;
    }
  }

  else
  {
    [(MFWebMessageDocument *)self dealloc];
    return 0;
  }

  return v9;
}

- (MFWebMessageDocument)initWithMimePart:(id)a3
{
  v5 = [a3 bodyData];

  return [(MFWebMessageDocument *)self _initWithMimePart:a3 htmlData:v5];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFWebMessageDocument;
  [(MFWebAttachmentSource *)&v3 dealloc];
}

- (id)mimePartForURL:(id)a3
{
  [(MFLock *)self->_lock lock];
  if (!self->_partsByURL)
  {
    v17 = a3;
    self->_partsByURL = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_partsByFilename = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithObjects:{-[MFMimeBody topLevelPart](-[MFWebMessageDocument mimeBody](self, "mimeBody"), "topLevelPart"), 0}];
    while ([v5 count])
    {
      v6 = [v5 lastObject];
      v7 = MFCreateURLForContentID([v6 contentID]);
      v8 = [v6 contentLocation];
      v9 = [v6 attachmentFilename];
      if (v7)
      {
        [(NSMutableDictionary *)self->_partsByURL setObject:v6 forKey:v7];
      }

      if (v8)
      {
        v10 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initWithString:v8 relativeToURL:self->_baseURL];
        if (v10)
        {
          v11 = v10;
          -[NSMutableDictionary setObject:forKey:](self->_partsByURL, "setObject:forKey:", v6, [v10 absoluteURL]);
        }
      }

      if (v9)
      {
        [(NSMutableDictionary *)self->_partsByFilename setObject:v6 forKey:v9];
      }

      [v5 removeLastObject];
      v12 = [v6 subparts];
      if (v12)
      {
        [v5 addObjectsFromArray:v12];
      }
    }

    a3 = v17;
    if (!v17)
    {
      goto LABEL_17;
    }

LABEL_16:
    v13 = [(NSMutableDictionary *)self->_partsByURL objectForKey:a3];
    if (v13)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (a3)
  {
    goto LABEL_16;
  }

LABEL_17:
  v14 = [objc_msgSend(a3 "path")];
  if (v14)
  {
    v13 = [(NSMutableDictionary *)self->_partsByFilename objectForKey:v14];
  }

  else
  {
    v13 = 0;
  }

LABEL_20:
  v15 = v13;
  [(MFLock *)self->_lock unlock];
  return v13;
}

- (id)attachmentForURL:(id)a3
{
  v9.receiver = self;
  v9.super_class = MFWebMessageDocument;
  v5 = [(MFWebAttachmentSource *)&v9 attachmentForURL:?];
  if (!v5)
  {
    v6 = [(MFWebMessageDocument *)self mimePartForURL:a3];
    if (v6 && (v7 = [v6 attachments], objc_msgSend(v7, "count")))
    {
      v5 = [v7 objectAtIndex:0];
      [(MFWebAttachmentSource *)self setAttachment:v5 forURL:a3];
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (id)attachmentsInDocument
{
  v18 = *MEMORY[0x277D85DE8];
  [(MFWebMessageDocument *)self mimePartForURL:0];
  [(MFLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_partsByURL allKeys];
  [(MFLock *)self->_lock unlock];
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [(MFWebMessageDocument *)self attachmentForURL:*(*(&v13 + 1) + 8 * v8)];
          if (v9)
          {
            [v4 addObject:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v10 = v4;
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)preferredCharacterSet
{
  if ([(MFWebMessageDocument *)self preferredEncoding]== -1 || (result = MFCharsetForEncoding()) == 0)
  {
    v4 = [(MFMimePart *)[(MFWebMessageDocument *)self mimePart] bodyParameterForKey:@"charset"];

    return v4;
  }

  return result;
}

- (id)fileWrapper
{
  v3 = [objc_alloc(MEMORY[0x277D24F38]) initRegularFileWithContents:{-[MFWebMessageDocument htmlData](self, "htmlData")}];
  [(MFMimePart *)[(MFWebMessageDocument *)self mimePart] configureFileWrapper:v3];
  return v3;
}

@end