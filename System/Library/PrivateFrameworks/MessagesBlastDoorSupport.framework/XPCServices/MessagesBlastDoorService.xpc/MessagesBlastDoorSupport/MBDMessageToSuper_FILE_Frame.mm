@interface MBDMessageToSuper_FILE_Frame
+ (BOOL)isLivePhotoAttribute:(id)attribute;
+ (id)emojiImageInfoExtractedFrom:(id)from;
+ (id)fileAttachmentsExtractedFrom:(id)from;
+ (id)imageInfoExtractedFrom:(id)from;
+ (id)stickerInfoExtractedFrom:(id)from;
- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
@end

@implementation MBDMessageToSuper_FILE_Frame

- (void)parser:(id)parser context:(id)context didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = MBDMessageToSuper_FILE_Frame;
  attributesCopy = attributes;
  [(MBDToSuperParserFrame *)&v24 parser:parser context:contextCopy didStartElement:element namespaceURI:i qualifiedName:name attributes:attributesCopy];
  v16 = MBDIMCopyNormalizedAttributes(attributesCopy, 1, 0);

  v17 = [v16 _stringForKey:@"name"];
  if (v17)
  {
    v18 = [objc_opt_class() isLivePhotoAttribute:v16];
    v19 = [v16 mutableCopy];
    v20 = [objc_opt_class() imageInfoExtractedFrom:v19];
    v21 = [objc_opt_class() fileAttachmentsExtractedFrom:v19];
    v22 = [objc_opt_class() stickerInfoExtractedFrom:v19];
    v23 = [objc_opt_class() emojiImageInfoExtractedFrom:v19];
    if (v18)
    {
      [contextCopy appendLivePhotoAttribute:v17 attachments:v21 imageInfo:v20 stickerInfo:v22];
    }

    else
    {
      [contextCopy appendFileTransferAttribute:v17 attachments:v21 imageInfo:v20 stickerInfo:v22 emojiImageInfo:v23];
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

  [fromCopy removeObjectsForKeys:&off_1000F6E30];
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
  v64[0] = MBDIMFileTransferMimeTypeKey;
  v64[1] = MBDIMFileTransferUTITypeKey;
  v6 = MBDIMFileTransferDatasizeKey;
  v64[2] = MBDIMFileTransferDatasizeKey;
  v64[3] = MBDIMFileTransferIrisKey;
  v64[4] = MBDIMAnimatedEmojiAttributeName;
  v46 = [NSArray arrayWithObjects:v64 count:5];
  v63[0] = MBDIMFileTransferDecryptionKeyKey;
  v63[1] = MBDIMFileTransferMMCSOwnerKey;
  v63[2] = MBDIMFileTransferSignatureHexKey;
  v63[3] = MBDIMFileTransferSizeKey;
  v7 = MBDIMFileTransferURLKey;
  v8 = MBDIMFileTransferAudioTranscriptionKey;
  v63[4] = MBDIMFileTransferURLKey;
  v63[5] = MBDIMFileTransferAudioTranscriptionKey;
  v45 = [NSArray arrayWithObjects:v63 count:6];
  v9 = MBDIMFileTransferInlineAttachmentKey;
  v10 = [fromCopy objectForKey:MBDIMFileTransferInlineAttachmentKey];

  if (v10)
  {
    v62[0] = v9;
    v62[1] = v5;
    v62[2] = v6;
    v62[3] = v8;
    v62[4] = @"name";
    v11 = [NSArray arrayWithObjects:v62 count:5];
    v12 = [[NSMutableDictionary alloc] initWithCapacity:3];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v58 objects:v57 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v59;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v59 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v58 + 1) + 8 * i);
          v19 = [fromCopy objectForKey:v18];
          if (v19)
          {
            [v12 setObject:v19 forKey:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v58 objects:v57 count:16];
      }

      while (v15);
    }

    v20 = [v12 copy];
    [v4 addObject:v20];

    v21 = v4;
  }

  else
  {
    v22 = 0;
    v43 = v7;
    v44 = v4;
    do
    {
      v23 = MBDIMFileTransferKeyForSizeIndex();
      v24 = [fromCopy objectForKey:v23];

      if (!v24)
      {
        break;
      }

      v25 = [[NSMutableDictionary alloc] initWithCapacity:8];
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v26 = v46;
      v27 = [v26 countByEnumeratingWithState:&v53 objects:v52 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v54;
        do
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v54 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v53 + 1) + 8 * j);
            v32 = [fromCopy objectForKey:{v31, v43}];
            if (v32)
            {
              [v25 setObject:v32 forKey:v31];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v53 objects:v52 count:16];
        }

        while (v28);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v33 = v45;
      v34 = [v33 countByEnumeratingWithState:&v48 objects:v47 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v49;
        do
        {
          for (k = 0; k != v35; k = k + 1)
          {
            if (*v49 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v48 + 1) + 8 * k);
            v39 = MBDIMFileTransferKeyForSizeIndex();
            v40 = [fromCopy objectForKey:v39];
            if (v40)
            {
              [v25 setObject:v40 forKey:v38];
              [fromCopy removeObjectForKey:v39];
            }
          }

          v35 = [v33 countByEnumeratingWithState:&v48 objects:v47 count:16];
        }

        while (v35);
      }

      v41 = [v25 copy];
      v4 = v44;
      [v44 addObject:v41];

      ++v22;
    }

    while (v22 != 11);
    [fromCopy removeObjectsForKeys:{v46, v43}];
    if ([v4 count])
    {
      v21 = [v4 copy];
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

+ (id)stickerInfoExtractedFrom:(id)from
{
  fromCopy = from;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:15];
  sub_10000B73C(@"sid", fromCopy, v4);
  sub_10000B73C(@"pid", fromCopy, v4);
  sub_10000B73C(@"shash", fromCopy, v4);
  sub_10000B73C(@"sli", fromCopy, v4);
  sub_10000B73C(@"sai", fromCopy, v4);
  sub_10000B73C(@"spw", fromCopy, v4);
  sub_10000B73C(@"sxs", fromCopy, v4);
  sub_10000B73C(@"sys", fromCopy, v4);
  sub_10000B73C(@"ssa", fromCopy, v4);
  sub_10000B73C(@"sro", fromCopy, v4);
  sub_10000B73C(@"srecipe", fromCopy, v4);
  sub_10000B73C(@"sbid", fromCopy, v4);
  sub_10000B73C(@"sir", fromCopy, v4);
  sub_10000B73C(@"spv", fromCopy, v4);
  sub_10000B73C(@"suri", fromCopy, v4);

  if ([v4 count])
  {
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)emojiImageInfoExtractedFrom:(id)from
{
  fromCopy = from;
  v4 = [[NSMutableDictionary alloc] initWithCapacity:2];
  sub_10000B73C(MBDIMFileTransferEmojiImageContentIdentifierKey, fromCopy, v4);
  sub_10000B73C(MBDIMFileTransferEmojiImageShortDescriptionKey, fromCopy, v4);

  if ([v4 count])
  {
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end