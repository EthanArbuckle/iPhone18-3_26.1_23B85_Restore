@interface NoteAttachmentPresentation
+ (id)attachmentPresentationsForAttachments:(id)a3;
+ (void)prepareDocumentForPresentationWithAttachmentContentIDs:(id)a3 withAttachmentPresentations:(id)a4 occurences:(id *)a5;
+ (void)prepareDocumentForSerializationWithAttachmentContentIDs:(id)a3 withAttachmentPresentations:(id)a4 newPresentationProvider:(id)a5 leftoverPresentations:(id *)a6;
- (BOOL)getPresentationData:(id *)a3 mimeType:(id *)a4 error:(id *)a5;
- (CGSize)iconSize;
- (NSNumber)dataSizeNumber;
- (NoteAttachmentPresentation)initWithData:(id)a3 contentID:(id)a4 mimeType:(id)a5 filename:(id)a6;
- (NoteAttachmentPresentation)initWithNoteAttachmentObject:(id)a3;
- (void)setContentID:(id)a3;
- (void)setContentIDURL:(id)a3;
- (void)updateContentIDURL;
@end

@implementation NoteAttachmentPresentation

+ (id)attachmentPresentationsForAttachments:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [a1 alloc];
        v13 = [v12 initWithNoteAttachmentObject:{v11, v16}];
        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (NoteAttachmentPresentation)initWithNoteAttachmentObject:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = NoteAttachmentPresentation;
  v5 = [(NoteAttachmentPresentation *)&v28 init];
  if (v5)
  {
    v6 = [v4 contentID];
    v7 = [v6 copy];
    contentID = v5->_contentID;
    v5->_contentID = v7;

    [(NoteAttachmentPresentation *)v5 updateContentIDURL];
    v27 = 0;
    v9 = [v4 attachmentDataFileURLWithError:&v27];
    v10 = v27;
    v11 = v27;
    v12 = [v9 copy];
    dataFileURL = v5->_dataFileURL;
    v5->_dataFileURL = v12;

    v14 = v5->_dataFileURL;
    if (v14)
    {
      v26 = v11;
      v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v14 options:0 error:&v26];
      v16 = v26;

      if (v15)
      {
        v17 = [MEMORY[0x1E69DCAB8] ic_imageWithData:v15];
        v5->_image = v17 != 0;
      }

      else
      {
        v17 = [(NSURL *)v5->_dataFileURL path];
        NSLog(&cfstr_UnableToReadDa.isa, v17, v16);
      }
    }

    else
    {
      objc_storeStrong(&v5->_dataFileURLError, v10);
      NSLog(&cfstr_CanTFindDataFo.isa, v4, v11);
      v16 = v11;
    }

    v18 = [v4 mimeType];
    mimeType = v5->_mimeType;
    v5->_mimeType = v18;

    v20 = [v4 filename];
    filename = v5->_filename;
    v5->_filename = v20;

    v22 = [v4 note];
    v23 = [v22 store];
    v24 = [v23 account];
    v5->_sourceIsManaged = [v24 isManaged];
  }

  return v5;
}

- (NoteAttachmentPresentation)initWithData:(id)a3 contentID:(id)a4 mimeType:(id)a5 filename:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v30.receiver = self;
  v30.super_class = NoteAttachmentPresentation;
  v15 = [(NoteAttachmentPresentation *)&v30 init];
  if (v15)
  {
    v16 = [v12 copy];
    contentID = v15->_contentID;
    v15->_contentID = v16;

    [(NoteAttachmentPresentation *)v15 updateContentIDURL];
    v18 = [v13 copy];
    mimeType = v15->_mimeType;
    v15->_mimeType = v18;

    objc_storeStrong(&v15->_data, a3);
    v20 = [MEMORY[0x1E69DCAB8] ic_imageWithData:v11];
    v15->_image = v20 != 0;
    v21 = [v14 pathExtension];
    v22 = [v21 length];

    if (!v22)
    {
      v23 = [MEMORY[0x1E6982C40] typeWithMIMEType:v13];
      v24 = [v23 preferredFilenameExtension];

      if (v24)
      {
        v25 = [v23 preferredFilenameExtension];
        v26 = [v14 stringByAppendingPathExtension:v25];

        v14 = v26;
      }
    }

    v27 = [v14 copy];
    filename = v15->_filename;
    v15->_filename = v27;
  }

  return v15;
}

- (NSNumber)dataSizeNumber
{
  v3 = [(NoteAttachmentPresentation *)self dataFileURL];

  if (v3)
  {
    v4 = [(NoteAttachmentPresentation *)self dataFileURL];
    v10 = 0;
    [v4 getResourceValue:&v10 forKey:*MEMORY[0x1E695DB50] error:0];
    v5 = v10;
  }

  else
  {
    v6 = [(NoteAttachmentPresentation *)self data];

    if (v6)
    {
      v7 = MEMORY[0x1E696AD98];
      v8 = [(NoteAttachmentPresentation *)self data];
      v5 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)getPresentationData:(id *)a3 mimeType:(id *)a4 error:(id *)a5
{
  v9 = [(NoteAttachmentPresentation *)self dataFileURL];

  if (v9)
  {
    v10 = MEMORY[0x1E695DEF0];
    v11 = [(NoteAttachmentPresentation *)self dataFileURL];
    v12 = [v11 path];
    v13 = [v10 dataWithContentsOfFile:v12 options:0 error:a5];

    v14 = v13 != 0;
    if (v13)
    {
      if (a3)
      {
        v15 = v13;
        *a3 = v13;
      }

      if (a4)
      {
        *a4 = [(NoteAttachmentPresentation *)self mimeType];
      }
    }
  }

  else
  {
    v16 = [(NoteAttachmentPresentation *)self dataFileURL];
    if (v16)
    {
    }

    else
    {
      v20 = [(NoteAttachmentPresentation *)self dataFileURLError];

      if (v20)
      {
        if (!a5)
        {
          return 0;
        }

        [(NoteAttachmentPresentation *)self dataFileURLError];
        *a5 = v14 = 0;
        return v14;
      }
    }

    v17 = [(NoteAttachmentPresentation *)self mimeType];
    if (a3)
    {
      *a3 = [(NoteAttachmentPresentation *)self data];
    }

    if (a4)
    {
      v18 = v17;
      *a4 = v17;
    }

    return 1;
  }

  return v14;
}

- (void)setContentID:(id)a3
{
  objc_storeStrong(&self->_contentID, a3);

  [(NoteAttachmentPresentation *)self updateContentIDURL];
}

- (void)updateContentIDURL
{
  v3 = [MEMORY[0x1E696AEC0] ic_newURLForContentID:self->_contentID percentEscaped:0];
  [(NoteAttachmentPresentation *)self setContentIDURL:v3];
}

- (void)setContentIDURL:(id)a3
{
  objc_storeStrong(&self->_contentIDURL, a3);
  v5 = a3;
  v6 = [v5 absoluteString];

  [(NoteAttachmentPresentation *)self setContentIDURLAbsoluteString:v6];
}

+ (void)prepareDocumentForPresentationWithAttachmentContentIDs:(id)a3 withAttachmentPresentations:(id)a4 occurences:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [a4 ic_dictionaryByHashingContentWithFunction:&__block_literal_global_60];
  v9 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (*(*(&v17 + 1) + 8 * v14))
        {
          v15 = [v8 objectForKeyedSubscript:v17];
          if (v15)
          {
            v16 = [[NoteAttachmentPresentationOccurence alloc] initWithPresentation:v15 element:0];
            [v9 addObject:v16];
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if (a5)
  {
    *a5 = [v9 copy];
  }
}

+ (void)prepareDocumentForSerializationWithAttachmentContentIDs:(id)a3 withAttachmentPresentations:(id)a4 newPresentationProvider:(id)a5 leftoverPresentations:(id *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v9];
  v24 = v9;
  v12 = [v9 ic_dictionaryByHashingContentWithFunction:&__block_literal_global_25];
  v13 = [v12 mutableCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        if (v19)
        {
          v20 = [v13 objectForKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
          if (v20)
          {
            v21 = v20;
            [v11 removeObject:v20];
          }

          else
          {
            if (!v10)
            {
              continue;
            }

            v22 = [MEMORY[0x1E696AEC0] ic_newURLForContentID:v19 percentEscaped:0];
            v21 = v10[2](v10, v22);
            if (v21)
            {
              [v13 setObject:v21 forKey:v19];
            }
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  if (a6)
  {
    *a6 = [v11 array];
  }
}

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end