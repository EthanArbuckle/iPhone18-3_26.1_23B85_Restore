@interface MBDMessageToSuper_FILE_Frame
+ (BOOL)containsEmojiImageInfoExtractedFrom:(id)from;
+ (BOOL)isLivePhotoAttribute:(id)attribute;
+ (id)fileAttachmentsExtractedFrom:(id)from;
+ (id)imageInfoExtractedFrom:(id)from;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDMessageToSuper_FILE_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v9 = MBDIMCopyNormalizedAttributes(attributes, 1, 0);
  v10 = [v9 _stringForKey:@"name"];
  if (v10 && ([objc_opt_class() isLivePhotoAttribute:v9] & 1) == 0)
  {
    v11 = [v9 mutableCopy];
    v12 = [objc_opt_class() imageInfoExtractedFrom:v11];
    v13 = [objc_opt_class() fileAttachmentsExtractedFrom:v11];
    if ([objc_opt_class() containsEmojiImageInfoExtractedFrom:v11])
    {
      [contextCopy appendFailedGenmojiAttributes];
    }

    else
    {
      [contextCopy appendFileTransferAttribute:v10 attachments:v13 imageInfo:v12];
    }
  }
}

+ (BOOL)isLivePhotoAttribute:(id)attribute
{
  v3 = [attribute _stringForKey:MBDIMFileTransferIrisKey];
  v4 = [v3 length] != 0;

  return v4;
}

+ (id)imageInfoExtractedFrom:(id)from
{
  fromCopy = from;
  v4 = [fromCopy _stringForKey:@"width"];
  integerValue = [v4 integerValue];

  v6 = [fromCopy _stringForKey:@"height"];
  integerValue2 = [v6 integerValue];

  [fromCopy removeObjectsForKeys:&off_10003EF90];
  v8 = [[NSMutableDictionary alloc] initWithCapacity:2];
  if (integerValue >= 1 && integerValue2 >= 1)
  {
    v9 = [NSNumber numberWithInteger:integerValue];
    [v8 setObject:v9 forKey:MBDIMInlineMediaWidthAttributeName];

    v10 = [NSNumber numberWithInteger:integerValue2];
    [v8 setObject:v10 forKey:MBDIMInlineMediaHeightAttributeName];
  }

  if ([v8 count])
  {
    v11 = [v8 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)fileAttachmentsExtractedFrom:(id)from
{
  fromCopy = from;
  v4 = [NSMutableArray arrayWithCapacity:4];
  v5 = MBDIMFileTransferUTITypeKey;
  v63[0] = MBDIMFileTransferMimeTypeKey;
  v63[1] = MBDIMFileTransferUTITypeKey;
  v6 = MBDIMFileTransferDatasizeKey;
  v63[2] = MBDIMFileTransferDatasizeKey;
  v63[3] = MBDIMAnimatedEmojiAttributeName;
  v45 = [NSArray arrayWithObjects:v63 count:4];
  v62[0] = MBDIMFileTransferDecryptionKeyKey;
  v62[1] = MBDIMFileTransferMMCSOwnerKey;
  v62[2] = MBDIMFileTransferSignatureHexKey;
  v62[3] = MBDIMFileTransferSizeKey;
  v7 = MBDIMFileTransferURLKey;
  v62[4] = MBDIMFileTransferURLKey;
  v44 = [NSArray arrayWithObjects:v62 count:5];
  v8 = MBDIMFileTransferInlineAttachmentKey;
  v9 = [fromCopy objectForKey:MBDIMFileTransferInlineAttachmentKey];

  if (v9)
  {
    v61[0] = v8;
    v61[1] = v5;
    v61[2] = v6;
    v61[3] = @"name";
    v10 = [NSArray arrayWithObjects:v61 count:4];
    v11 = [[NSMutableDictionary alloc] initWithCapacity:3];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v57 objects:v56 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v58;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v58 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v57 + 1) + 8 * i);
          v18 = [fromCopy objectForKey:v17];
          if (v18)
          {
            [v11 setObject:v18 forKey:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v57 objects:v56 count:16];
      }

      while (v14);
    }

    v19 = [v11 copy];
    [v4 addObject:v19];

    v20 = v4;
  }

  else
  {
    v21 = 0;
    v42 = v7;
    v43 = v4;
    do
    {
      v22 = MBDIMFileTransferKeyForSizeIndex();
      v23 = [fromCopy objectForKey:v22];

      if (!v23)
      {
        break;
      }

      v24 = [[NSMutableDictionary alloc] initWithCapacity:8];
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v25 = v45;
      v26 = [v25 countByEnumeratingWithState:&v52 objects:v51 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v53;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v53 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v52 + 1) + 8 * j);
            v31 = [fromCopy objectForKey:{v30, v42}];
            if (v31)
            {
              [v24 setObject:v31 forKey:v30];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v52 objects:v51 count:16];
        }

        while (v27);
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v32 = v44;
      v33 = [v32 countByEnumeratingWithState:&v47 objects:v46 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v48;
        do
        {
          for (k = 0; k != v34; k = k + 1)
          {
            if (*v48 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v47 + 1) + 8 * k);
            v38 = MBDIMFileTransferKeyForSizeIndex();
            v39 = [fromCopy objectForKey:v38];
            if (v39)
            {
              [v24 setObject:v39 forKey:v37];
              [fromCopy removeObjectForKey:v38];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v47 objects:v46 count:16];
        }

        while (v34);
      }

      v40 = [v24 copy];
      v4 = v43;
      [v43 addObject:v40];

      ++v21;
    }

    while (v21 != 11);
    [fromCopy removeObjectsForKeys:{v45, v42}];
    if ([v4 count])
    {
      v20 = [v4 copy];
    }

    else
    {
      v20 = 0;
    }
  }

  return v20;
}

+ (BOOL)containsEmojiImageInfoExtractedFrom:(id)from
{
  v3 = MBDIMFileTransferEmojiImageContentIdentifierKey;
  fromCopy = from;
  v5 = [fromCopy objectForKey:v3];
  v6 = [fromCopy objectForKey:MBDIMFileTransferEmojiImageShortDescriptionKey];

  return (v5 | v6) != 0;
}

@end