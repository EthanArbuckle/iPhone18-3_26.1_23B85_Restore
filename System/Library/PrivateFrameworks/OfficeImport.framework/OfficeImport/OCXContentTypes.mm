@interface OCXContentTypes
+ (id)relativePathForPath:(id)a3 currentPath:(id)a4;
- (BOOL)containsContentType:(id)a3;
- (BOOL)containsContentType:(id)a3 withKey:(id)a4;
- (BOOL)isLastEntryContentType:(id)a3;
- (OCXContentTypes)init;
- (id)addContentTypeForKey:(id)a3 contentType:(id)a4 path:(id)a5;
- (id)pathForContentType:(id)a3;
- (id)pathForKey:(id)a3;
- (id)pathForMainDocument;
- (id)uniquePathForPath:(id)a3;
- (void)addContentTypeForContentType:(id)a3 extension:(id)a4;
- (void)populateCommonExtensions;
- (void)writeContentTypesToStream:(id)a3;
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

- (id)addContentTypeForKey:(id)a3 contentType:(id)a4 path:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(NSMutableDictionary *)self->mContentTypeObjectMap objectForKey:v8];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 path];

      goto LABEL_17;
    }

    v20 = [(OCXContentTypes *)self uniquePathForPath:v10];

    v10 = v20;
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

        v18 = [*(*(&v22 + 1) + 8 * v17) path];
        v19 = [v18 isEqualToString:v10];

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

  v14 = [[OCXContentType alloc] initWithContentType:v9 path:v10];
  [(NSMutableArray *)self->mContentTypes addObject:v14];
  if (v8)
  {
    [(NSMutableDictionary *)self->mContentTypeObjectMap setObject:v14 forKey:v8];
  }

LABEL_16:
  v10 = v10;

  v13 = v10;
LABEL_17:

  return v13;
}

- (id)pathForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mContentTypeObjectMap objectForKey:a3];
  v4 = [v3 path];

  return v4;
}

- (id)pathForContentType:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->mContentTypes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 contentType];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = [v9 path];
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          v9 = [v8 contentType];
          v10 = [v9 isEqual:v19[v7]];

          if (v10)
          {
            v11 = [v8 path];
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
      v11 = 0;
    }

    while (v4);
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  for (i = 14; i != -1; --i)
  {
  }

  return v11;
}

+ (id)relativePathForPath:(id)a3 currentPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    if ([v6 characterAtIndex:{objc_msgSend(v6, "length") - 1}] != 47 || (objc_msgSend(v6, "lastPathComponent"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "pathExtension"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v7, v9))
    {
      v10 = [v6 stringByDeletingLastPathComponent];

      v6 = v10;
    }

    v11 = MEMORY[0x277CBEB18];
    v12 = [v5 componentsSeparatedByString:@"/"];
    v13 = [v11 arrayWithArray:v12];

    v14 = MEMORY[0x277CBEB18];
    v15 = [v6 componentsSeparatedByString:@"/"];
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

    v23 = [MEMORY[0x277CCAB68] string];
    for (j = 0; j < [v13 count]; ++j)
    {
      if ([v23 length])
      {
        [v23 appendString:@"/"];
      }

      v25 = [v13 objectAtIndex:j];
      [v23 appendString:v25];
    }
  }

  else
  {
    v23 = v5;
  }

  return v23;
}

- (BOOL)containsContentType:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        v9 = [*(*(&v12 + 1) + 8 * i) contentType];
        v10 = [v9 isEqualToString:v4];

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

- (BOOL)containsContentType:(id)a3 withKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->mContentTypeObjectMap objectForKey:v7];
    v9 = [v8 contentType];
    v10 = [v9 isEqualToString:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)isLastEntryContentType:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->mContentTypes lastObject];
  v6 = [v5 contentType];
  v7 = [v6 isEqualToString:v4];

  return v7;
}

- (void)writeContentTypesToStream:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [TCXmlStreamWriter newXmlStreamWriterWithZipEntryName:@"[Content_Types].xml" outputStream:a3 isCompressed:1];
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
          v11 = [v9 contentType];
          LOBYTE(mDefaultTypes) = [(NSMutableSet *)mDefaultTypes containsObject:v11];

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

- (void)addContentTypeForContentType:(id)a3 extension:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [[OCXContentType alloc] initWithContentType:v8 extension:v6];
  [(NSMutableArray *)self->mContentTypes addObject:v7];
  [(NSMutableSet *)self->mDefaultTypes addObject:v8];
}

- (id)uniquePathForPath:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->mContentTypeCountMap objectForKey:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "unsignedIntegerValue") + 1}];

  v7 = MEMORY[0x277CCACA8];
  v8 = [v4 stringByDeletingPathExtension];
  v9 = [v6 stringValue];
  v10 = [v7 stringWithFormat:@"%@%@", v8, v9];

  v11 = [v4 pathExtension];
  v12 = [v10 stringByAppendingPathExtension:v11];

  [(NSMutableDictionary *)self->mContentTypeCountMap setObject:v6 forKey:v4];

  return v12;
}

@end