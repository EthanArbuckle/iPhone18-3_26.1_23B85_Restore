@interface OCXContentTypes
+ (id)relativePathForPath:(id)path currentPath:(id)currentPath;
- (BOOL)containsContentType:(id)type;
- (BOOL)containsContentType:(id)type withKey:(id)key;
- (BOOL)isLastEntryContentType:(id)type;
- (OCXContentTypes)init;
- (id)addContentTypeForKey:(id)key contentType:(id)type path:(id)path;
- (id)pathForContentType:(id)type;
- (id)pathForKey:(id)key;
- (id)pathForMainDocument;
- (id)uniquePathForPath:(id)path;
- (void)addContentTypeForContentType:(id)type extension:(id)extension;
- (void)populateCommonExtensions;
- (void)writeContentTypesToStream:(id)stream;
@end

@implementation OCXContentTypes

- (OCXContentTypes)init
{
  v12.receiver = self;
  v12.super_class = OCXContentTypes;
  v2 = [(OCXContentTypes *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mContentTypes = v2->mContentTypes;
    v2->mContentTypes = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mDefaultTypes = v2->mDefaultTypes;
    v2->mDefaultTypes = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mContentTypeObjectMap = v2->mContentTypeObjectMap;
    v2->mContentTypeObjectMap = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mContentTypeCountMap = v2->mContentTypeCountMap;
    v2->mContentTypeCountMap = v9;

    [(OCXContentTypes *)v2 populateCommonExtensions];
  }

  return v2;
}

- (id)addContentTypeForKey:(id)key contentType:(id)type path:(id)path
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  typeCopy = type;
  pathCopy = path;
  if (keyCopy)
  {
    v11 = [(NSMutableDictionary *)self->mContentTypeObjectMap objectForKey:keyCopy];
    v12 = v11;
    if (v11)
    {
      path = [v11 path];

      goto LABEL_17;
    }

    v20 = [(OCXContentTypes *)self uniquePathForPath:pathCopy];

    pathCopy = v20;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = self->mContentTypes;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = *v23;
LABEL_6:
      v17 = 0;
      while (1)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v14);
        }

        path2 = [*(*(&v22 + 1) + 8 * v17) path];
        v19 = [path2 isEqualToString:pathCopy];

        if (v19)
        {
          goto LABEL_16;
        }

        if (v15 == ++v17)
        {
          v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v15)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  v14 = [[OCXContentType alloc] initWithContentType:typeCopy path:pathCopy];
  [(NSMutableArray *)self->mContentTypes addObject:v14];
  if (keyCopy)
  {
    [(NSMutableDictionary *)self->mContentTypeObjectMap setObject:v14 forKey:keyCopy];
  }

LABEL_16:
  pathCopy = pathCopy;

  path = pathCopy;
LABEL_17:

  return path;
}

- (id)pathForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->mContentTypeObjectMap objectForKey:key];
  path = [v3 path];

  return path;
}

- (id)pathForContentType:(id)type
{
  v18 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->mContentTypes;
  path = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (path)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != path; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        contentType = [v9 contentType];
        v11 = [contentType isEqualToString:typeCopy];

        if (v11)
        {
          path = [v9 path];
          goto LABEL_11;
        }
      }

      path = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (path)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return path;
}

- (id)pathForMainDocument
{
  v19[15] = *MEMORY[0x277D85DE8];
  v19[0] = @"application/vnd.openxmlformats-officedocument.wordprocessingml.document.main+xml";
  v19[1] = @"application/vnd.ms-word.document.macroEnabled.main+xml";
  v19[2] = @"application/vnd.openxmlformats-officedocument.wordprocessingml.template.main+xml";
  v19[3] = @"application/vnd.ms-word.template.macroEnabledTemplate.main+xml";
  v19[4] = @"application/vnd.openxmlformats-officedocument.presentationml.presentation.main+xml";
  v19[5] = @"application/vnd.openxmlformats-officedocument.presentationml.slideshow.main+xml";
  v19[6] = @"application/vnd.openxmlformats-officedocument.presentationml.template.main+xml";
  v19[7] = @"application/vnd.ms-powerpoint.presentation.macroEnabled.main+xml";
  v19[8] = @"application/vnd.ms-powerpoint.slideshow.macroEnabled.main+xml";
  v19[9] = @"application/vnd.ms-powerpoint.template.macroEnabled.main+xml";
  v19[10] = @"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml";
  v19[11] = @"application/vnd.ms-excel.sheet.macroEnabled.main+xml";
  v19[12] = @"application/vnd.ms-excel.addin.macroEnabled.main+xml";
  v19[13] = @"application/vnd.openxmlformats-officedocument.spreadsheetml.template.main+xml";
  v19[14] = @"application/vnd.ms-excel.template.macroEnabled.main+xml";
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->mContentTypes;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      v6 = 0;
      while (2)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = 0;
        v8 = *(*(&v14 + 1) + 8 * v6);
        do
        {
          contentType = [v8 contentType];
          v10 = [contentType isEqual:v19[v7]];

          if (v10)
          {
            path = [v8 path];
            goto LABEL_14;
          }

          ++v7;
        }

        while (v7 != 15);
        if (++v6 != v4)
        {
          continue;
        }

        break;
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      path = 0;
    }

    while (v4);
  }

  else
  {
    path = 0;
  }

LABEL_14:

  for (i = 14; i != -1; --i)
  {
  }

  return path;
}

+ (id)relativePathForPath:(id)path currentPath:(id)currentPath
{
  pathCopy = path;
  currentPathCopy = currentPath;
  if ([currentPathCopy length])
  {
    if ([currentPathCopy characterAtIndex:{objc_msgSend(currentPathCopy, "length") - 1}] != 47 || (objc_msgSend(currentPathCopy, "lastPathComponent"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "pathExtension"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v9))
    {
      stringByDeletingLastPathComponent = [currentPathCopy stringByDeletingLastPathComponent];

      currentPathCopy = stringByDeletingLastPathComponent;
    }

    v11 = MEMORY[0x277CBEB18];
    v12 = [pathCopy componentsSeparatedByString:@"/"];
    v13 = [v11 arrayWithArray:v12];

    v14 = MEMORY[0x277CBEB18];
    v15 = [currentPathCopy componentsSeparatedByString:@"/"];
    v16 = [v14 arrayWithArray:v15];

    while ([v13 count])
    {
      if (![v16 count])
      {
        break;
      }

      v17 = [v13 objectAtIndex:0];
      v18 = [v16 objectAtIndex:0];
      v19 = [v17 isEqual:v18];

      if ((v19 & 1) == 0)
      {
        break;
      }

      [v13 removeObjectAtIndex:0];
      [v16 removeObjectAtIndex:0];
    }

    for (i = 0; i < [v16 count]; ++i)
    {
      v21 = [v16 objectAtIndex:i];
      v22 = [v21 length];

      if (!v22)
      {
        break;
      }

      [v13 insertObject:@".." atIndex:0];
    }

    string = [MEMORY[0x277CCAB68] string];
    for (j = 0; j < [v13 count]; ++j)
    {
      if ([string length])
      {
        [string appendString:@"/"];
      }

      v25 = [v13 objectAtIndex:j];
      [string appendString:v25];
    }
  }

  else
  {
    string = pathCopy;
  }

  return string;
}

- (BOOL)containsContentType:(id)type
{
  v17 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->mContentTypes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        contentType = [*(*(&v12 + 1) + 8 * i) contentType];
        v10 = [contentType isEqualToString:typeCopy];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (BOOL)containsContentType:(id)type withKey:(id)key
{
  typeCopy = type;
  keyCopy = key;
  if (keyCopy)
  {
    v8 = [(NSMutableDictionary *)self->mContentTypeObjectMap objectForKey:keyCopy];
    contentType = [v8 contentType];
    v10 = [contentType isEqualToString:typeCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isLastEntryContentType:(id)type
{
  typeCopy = type;
  lastObject = [(NSMutableArray *)self->mContentTypes lastObject];
  contentType = [lastObject contentType];
  v7 = [contentType isEqualToString:typeCopy];

  return v7;
}

- (void)writeContentTypesToStream:(id)stream
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [TCXmlStreamWriter newXmlStreamWriterWithZipEntryName:@"[Content_Types].xml" outputStream:stream isCompressed:1];
  [v4 setUp];
  [v4 startElement:@"Types" prefix:0 ns:"http://schemas.openxmlformats.org/package/2006/content-types"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->mContentTypes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isOverride])
        {
          mDefaultTypes = self->mDefaultTypes;
          contentType = [v9 contentType];
          LOBYTE(mDefaultTypes) = [(NSMutableSet *)mDefaultTypes containsObject:contentType];

          if (mDefaultTypes)
          {
            continue;
          }
        }

        [v9 writeToStreamWriter:v4];
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  [v4 endElement];
  [v4 tearDown];
}

- (void)populateCommonExtensions
{
  [(OCXContentTypes *)self addContentTypeForContentType:@"application/xml" extension:@"xml"];
  [(OCXContentTypes *)self addContentTypeForContentType:@"application/vnd.openxmlformats-package.relationships+xml" extension:@"rels"];
  [(OCXContentTypes *)self addContentTypeForContentType:@"image/jpg" extension:@"jpeg"];
  [(OCXContentTypes *)self addContentTypeForContentType:@"image/png" extension:@"png"];
  [(OCXContentTypes *)self addContentTypeForContentType:@"image/bmp" extension:@"bmp"];
  [(OCXContentTypes *)self addContentTypeForContentType:@"image/gif" extension:@"gif"];
  [(OCXContentTypes *)self addContentTypeForContentType:@"image/tif" extension:@"tif"];
  [(OCXContentTypes *)self addContentTypeForContentType:@"application/pdf" extension:@"pdf"];
  [(OCXContentTypes *)self addContentTypeForContentType:@"application/movie" extension:@"mov"];
  [(OCXContentTypes *)self addContentTypeForContentType:@"application/vnd.openxmlformats-officedocument.vmlDrawing" extension:@"vml"];

  [(OCXContentTypes *)self addContentTypeForContentType:@"application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" extension:@"xlsx"];
}

- (void)addContentTypeForContentType:(id)type extension:(id)extension
{
  typeCopy = type;
  extensionCopy = extension;
  v7 = [[OCXContentType alloc] initWithContentType:typeCopy extension:extensionCopy];
  [(NSMutableArray *)self->mContentTypes addObject:v7];
  [(NSMutableSet *)self->mDefaultTypes addObject:typeCopy];
}

- (id)uniquePathForPath:(id)path
{
  pathCopy = path;
  v5 = [(NSMutableDictionary *)self->mContentTypeCountMap objectForKey:pathCopy];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "unsignedIntegerValue") + 1}];

  v7 = MEMORY[0x277CCACA8];
  stringByDeletingPathExtension = [pathCopy stringByDeletingPathExtension];
  stringValue = [v6 stringValue];
  v10 = [v7 stringWithFormat:@"%@%@", stringByDeletingPathExtension, stringValue];

  pathExtension = [pathCopy pathExtension];
  v12 = [v10 stringByAppendingPathExtension:pathExtension];

  [(NSMutableDictionary *)self->mContentTypeCountMap setObject:v6 forKey:pathCopy];

  return v12;
}

@end