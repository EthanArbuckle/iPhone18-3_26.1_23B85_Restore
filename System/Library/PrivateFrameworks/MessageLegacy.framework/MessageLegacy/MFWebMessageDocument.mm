@interface MFWebMessageDocument
- (MFWebMessageDocument)init;
- (MFWebMessageDocument)initWithMimeBody:(id)body;
- (MFWebMessageDocument)initWithMimePart:(id)part;
- (id)_initWithMimePart:(id)part htmlData:(id)data;
- (id)attachmentForURL:(id)l;
- (id)attachmentsInDocument;
- (id)fileWrapper;
- (id)mimePartForURL:(id)l;
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

- (MFWebMessageDocument)initWithMimeBody:(id)body
{
  if (body && [body isHTML])
  {
    textHtmlPart = [body textHtmlPart];

    return [(MFWebMessageDocument *)self initWithMimePart:textHtmlPart];
  }

  else
  {
    [(MFWebMessageDocument *)self dealloc];
    return 0;
  }
}

- (id)_initWithMimePart:(id)part htmlData:(id)data
{
  mimeBody = [part mimeBody];
  if (data && part && (v8 = mimeBody) != 0)
  {
    v9 = [(MFWebMessageDocument *)self init];
    if (v9)
    {
      v9->_htmlPart = part;
      v9->_mimeBody = v8;
      v9->_htmlData = data;
    }
  }

  else
  {
    [(MFWebMessageDocument *)self dealloc];
    return 0;
  }

  return v9;
}

- (MFWebMessageDocument)initWithMimePart:(id)part
{
  bodyData = [part bodyData];

  return [(MFWebMessageDocument *)self _initWithMimePart:part htmlData:bodyData];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFWebMessageDocument;
  [(MFWebAttachmentSource *)&v3 dealloc];
}

- (id)mimePartForURL:(id)l
{
  [(MFLock *)self->_lock lock];
  if (!self->_partsByURL)
  {
    lCopy = l;
    self->_partsByURL = objc_alloc_init(MEMORY[0x277CBEB38]);
    self->_partsByFilename = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithObjects:{-[MFMimeBody topLevelPart](-[MFWebMessageDocument mimeBody](self, "mimeBody"), "topLevelPart"), 0}];
    while ([v5 count])
    {
      lastObject = [v5 lastObject];
      v7 = MFCreateURLForContentID([lastObject contentID]);
      contentLocation = [lastObject contentLocation];
      attachmentFilename = [lastObject attachmentFilename];
      if (v7)
      {
        [(NSMutableDictionary *)self->_partsByURL setObject:lastObject forKey:v7];
      }

      if (contentLocation)
      {
        v10 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initWithString:contentLocation relativeToURL:self->_baseURL];
        if (v10)
        {
          v11 = v10;
          -[NSMutableDictionary setObject:forKey:](self->_partsByURL, "setObject:forKey:", lastObject, [v10 absoluteURL]);
        }
      }

      if (attachmentFilename)
      {
        [(NSMutableDictionary *)self->_partsByFilename setObject:lastObject forKey:attachmentFilename];
      }

      [v5 removeLastObject];
      subparts = [lastObject subparts];
      if (subparts)
      {
        [v5 addObjectsFromArray:subparts];
      }
    }

    l = lCopy;
    if (!lCopy)
    {
      goto LABEL_17;
    }

LABEL_16:
    v13 = [(NSMutableDictionary *)self->_partsByURL objectForKey:l];
    if (v13)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (l)
  {
    goto LABEL_16;
  }

LABEL_17:
  v14 = [objc_msgSend(l "path")];
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

- (id)attachmentForURL:(id)l
{
  v9.receiver = self;
  v9.super_class = MFWebMessageDocument;
  v5 = [(MFWebAttachmentSource *)&v9 attachmentForURL:?];
  if (!v5)
  {
    v6 = [(MFWebMessageDocument *)self mimePartForURL:l];
    if (v6 && (v7 = [v6 attachments], objc_msgSend(v7, "count")))
    {
      v5 = [v7 objectAtIndex:0];
      [(MFWebAttachmentSource *)self setAttachment:v5 forURL:l];
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
  allKeys = [(NSMutableDictionary *)self->_partsByURL allKeys];
  [(MFLock *)self->_lock unlock];
  if ([allKeys count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v9 = [(MFWebMessageDocument *)self attachmentForURL:*(*(&v13 + 1) + 8 * v8)];
          if (v9)
          {
            [v4 addObject:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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