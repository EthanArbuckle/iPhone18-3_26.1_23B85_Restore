@interface ICAttachmentPDFModel
+ (id)contentTextFromPDFAtURL:(id)l;
- (BOOL)hasPreviews;
- (BOOL)showThumbnailInNoteList;
- (id)searchableTextContent;
- (id)standaloneTitleForNote;
@end

@implementation ICAttachmentPDFModel

- (BOOL)hasPreviews
{
  attachment = [(ICAttachmentModel *)self attachment];
  previewImages = [attachment previewImages];
  v5 = [previewImages count];

  if (v5)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    media = [attachment2 media];
    mediaURL = [media mediaURL];
    v10 = CGPDFDocumentCreateWithURL(mediaURL);

    if (v10)
    {
      v6 = !CGPDFDocumentIsEncrypted(v10);
      CGPDFDocumentRelease(v10);
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (BOOL)showThumbnailInNoteList
{
  if (![(ICAttachmentModel *)self hasThumbnailImage])
  {
    return 0;
  }

  attachment = [(ICAttachmentModel *)self attachment];
  previewImages = [attachment previewImages];
  v5 = [previewImages count] != 0;

  return v5;
}

+ (id)contentTextFromPDFAtURL:(id)l
{
  v43 = *MEMORY[0x277D85DE8];
  lCopy = l;
  array = [MEMORY[0x277CBEB18] array];
  v34 = lCopy;
  v35 = [objc_alloc(MEMORY[0x277CD93D8]) initWithURL:lCopy];
  documentRef = [v35 documentRef];
  if (documentRef)
  {
    Info = CGPDFDocumentGetInfo(documentRef);
    if (Info)
    {
      v7 = Info;
      array = 0;
      value = 0;
      if (CGPDFDictionaryGetString(Info, "Title", &value))
      {
        v8 = CGPDFStringCopyTextString(value);
        [array addObject:v8];
      }

      if (CGPDFDictionaryGetString(v7, "Author", &value))
      {
        v9 = CGPDFStringCopyTextString(value);
        [array addObject:v9];
      }

      if (CGPDFDictionaryGetString(v7, "Subject", &value))
      {
        v10 = CGPDFStringCopyTextString(value);
        [array addObject:v10];
      }

      if (CGPDFDictionaryGetString(v7, "Creator", &value))
      {
        v11 = CGPDFStringCopyTextString(value);
        [array addObject:v11];
      }

      if (CGPDFDictionaryGetString(v7, "Producer", &value))
      {
        v12 = CGPDFStringCopyTextString(value);
        [array addObject:v12];
      }

      if (CGPDFDictionaryGetString(v7, "CreationDate", &value))
      {
        v13 = CGPDFStringCopyTextString(value);
        [array addObject:v13];
      }

      if (CGPDFDictionaryGetArray(v7, "AAPL:Keywords", &array))
      {
        Count = CGPDFArrayGetCount(array);
        if (Count)
        {
          v15 = Count;
          for (i = 0; i != v15; ++i)
          {
            if (CGPDFArrayGetString(array, i, &value))
            {
              v17 = CGPDFStringCopyTextString(value);
              [array addObject:v17];
            }
          }
        }
      }

      else if (CGPDFDictionaryGetString(v7, "Keywords", &value))
      {
        v18 = CGPDFStringCopyTextString(value);
        [array addObject:v18];
      }
    }

    pageCount = [v35 pageCount];
    v20 = 0;
    if (pageCount >= 0x64)
    {
      v21 = 100;
    }

    else
    {
      v21 = pageCount;
    }

    do
    {
      v22 = objc_autoreleasePoolPush();
      v23 = [v35 pageAtIndex:v20];
      if ([v23 pageRef])
      {
        v24 = CGPDFPageCopyString();
        [array ic_addNonNilObject:v24];
      }

      annotations = [v23 annotations];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v26 = [annotations countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v37;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(annotations);
            }

            contents = [*(*(&v36 + 1) + 8 * j) contents];
            [array ic_addNonNilObject:contents];
          }

          v27 = [annotations countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v27);
      }

      objc_autoreleasePoolPop(v22);
    }

    while (v20++ != v21);
  }

  v32 = [array componentsJoinedByString:@" "];

  return v32;
}

- (id)searchableTextContent
{
  array = [MEMORY[0x277CBEB18] array];
  v14.receiver = self;
  v14.super_class = ICAttachmentPDFModel;
  searchableTextContent = [(ICAttachmentModel *)&v14 searchableTextContent];
  if (searchableTextContent)
  {
    [array addObject:searchableTextContent];
  }

  attachment = [(ICAttachmentModel *)self attachment];
  media = [attachment media];
  mediaURL = [media mediaURL];

  if (mediaURL)
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    media2 = [attachment2 media];
    mediaURL2 = [media2 mediaURL];
    v11 = [ICAttachmentPDFModel contentTextFromPDFAtURL:mediaURL2];

    if (v11)
    {
      [array addObject:v11];
    }
  }

  v12 = [array componentsJoinedByString:@" "];

  return v12;
}

- (id)standaloneTitleForNote
{
  attachment = [(ICAttachmentModel *)self attachment];
  userTitle = [attachment userTitle];

  if (userTitle)
  {
    title = userTitle;
  }

  else
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    title = [attachment2 title];
  }

  if (![title length])
  {
    v7 = +[ICNote defaultTitleForEmptyNote];

    title = v7;
  }

  pathExtension = [title pathExtension];
  if ([pathExtension length])
  {
    v9 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:pathExtension];
    if ([v9 isEqual:*MEMORY[0x277CE1E08]])
    {
      stringByDeletingPathExtension = [title stringByDeletingPathExtension];

      title = stringByDeletingPathExtension;
    }
  }

  return title;
}

@end