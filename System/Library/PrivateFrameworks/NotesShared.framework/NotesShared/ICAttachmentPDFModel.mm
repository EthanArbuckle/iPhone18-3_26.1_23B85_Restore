@interface ICAttachmentPDFModel
+ (id)contentTextFromPDFAtURL:(id)a3;
- (BOOL)hasPreviews;
- (BOOL)showThumbnailInNoteList;
- (id)searchableTextContent;
- (id)standaloneTitleForNote;
@end

@implementation ICAttachmentPDFModel

- (BOOL)hasPreviews
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 previewImages];
  v5 = [v4 count];

  if (v5)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = [(ICAttachmentModel *)self attachment];
    v8 = [v7 media];
    v9 = [v8 mediaURL];
    v10 = CGPDFDocumentCreateWithURL(v9);

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

  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 previewImages];
  v5 = [v4 count] != 0;

  return v5;
}

+ (id)contentTextFromPDFAtURL:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v34 = v3;
  v35 = [objc_alloc(MEMORY[0x277CD93D8]) initWithURL:v3];
  v5 = [v35 documentRef];
  if (v5)
  {
    Info = CGPDFDocumentGetInfo(v5);
    if (Info)
    {
      v7 = Info;
      array = 0;
      value = 0;
      if (CGPDFDictionaryGetString(Info, "Title", &value))
      {
        v8 = CGPDFStringCopyTextString(value);
        [v4 addObject:v8];
      }

      if (CGPDFDictionaryGetString(v7, "Author", &value))
      {
        v9 = CGPDFStringCopyTextString(value);
        [v4 addObject:v9];
      }

      if (CGPDFDictionaryGetString(v7, "Subject", &value))
      {
        v10 = CGPDFStringCopyTextString(value);
        [v4 addObject:v10];
      }

      if (CGPDFDictionaryGetString(v7, "Creator", &value))
      {
        v11 = CGPDFStringCopyTextString(value);
        [v4 addObject:v11];
      }

      if (CGPDFDictionaryGetString(v7, "Producer", &value))
      {
        v12 = CGPDFStringCopyTextString(value);
        [v4 addObject:v12];
      }

      if (CGPDFDictionaryGetString(v7, "CreationDate", &value))
      {
        v13 = CGPDFStringCopyTextString(value);
        [v4 addObject:v13];
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
              [v4 addObject:v17];
            }
          }
        }
      }

      else if (CGPDFDictionaryGetString(v7, "Keywords", &value))
      {
        v18 = CGPDFStringCopyTextString(value);
        [v4 addObject:v18];
      }
    }

    v19 = [v35 pageCount];
    v20 = 0;
    if (v19 >= 0x64)
    {
      v21 = 100;
    }

    else
    {
      v21 = v19;
    }

    do
    {
      v22 = objc_autoreleasePoolPush();
      v23 = [v35 pageAtIndex:v20];
      if ([v23 pageRef])
      {
        v24 = CGPDFPageCopyString();
        [v4 ic_addNonNilObject:v24];
      }

      v25 = [v23 annotations];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v26 = [v25 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
              objc_enumerationMutation(v25);
            }

            v30 = [*(*(&v36 + 1) + 8 * j) contents];
            [v4 ic_addNonNilObject:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v27);
      }

      objc_autoreleasePoolPop(v22);
    }

    while (v20++ != v21);
  }

  v32 = [v4 componentsJoinedByString:@" "];

  return v32;
}

- (id)searchableTextContent
{
  v3 = [MEMORY[0x277CBEB18] array];
  v14.receiver = self;
  v14.super_class = ICAttachmentPDFModel;
  v4 = [(ICAttachmentModel *)&v14 searchableTextContent];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(ICAttachmentModel *)self attachment];
  v6 = [v5 media];
  v7 = [v6 mediaURL];

  if (v7)
  {
    v8 = [(ICAttachmentModel *)self attachment];
    v9 = [v8 media];
    v10 = [v9 mediaURL];
    v11 = [ICAttachmentPDFModel contentTextFromPDFAtURL:v10];

    if (v11)
    {
      [v3 addObject:v11];
    }
  }

  v12 = [v3 componentsJoinedByString:@" "];

  return v12;
}

- (id)standaloneTitleForNote
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 userTitle];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(ICAttachmentModel *)self attachment];
    v5 = [v6 title];
  }

  if (![v5 length])
  {
    v7 = +[ICNote defaultTitleForEmptyNote];

    v5 = v7;
  }

  v8 = [v5 pathExtension];
  if ([v8 length])
  {
    v9 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:v8];
    if ([v9 isEqual:*MEMORY[0x277CE1E08]])
    {
      v10 = [v5 stringByDeletingPathExtension];

      v5 = v10;
    }
  }

  return v5;
}

@end