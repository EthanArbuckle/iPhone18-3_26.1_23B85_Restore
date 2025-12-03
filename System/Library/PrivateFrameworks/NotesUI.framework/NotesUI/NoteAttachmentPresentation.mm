@interface NoteAttachmentPresentation
+ (id)attachmentPresentationsForAttachments:(id)attachments;
+ (void)prepareDocumentForPresentationWithAttachmentContentIDs:(id)ds withAttachmentPresentations:(id)presentations occurences:(id *)occurences;
+ (void)prepareDocumentForSerializationWithAttachmentContentIDs:(id)ds withAttachmentPresentations:(id)presentations newPresentationProvider:(id)provider leftoverPresentations:(id *)leftoverPresentations;
- (BOOL)getPresentationData:(id *)data mimeType:(id *)type error:(id *)error;
- (CGSize)iconSize;
- (NSNumber)dataSizeNumber;
- (NoteAttachmentPresentation)initWithData:(id)data contentID:(id)d mimeType:(id)type filename:(id)filename;
- (NoteAttachmentPresentation)initWithNoteAttachmentObject:(id)object;
- (void)setContentID:(id)d;
- (void)setContentIDURL:(id)l;
- (void)updateContentIDURL;
@end

@implementation NoteAttachmentPresentation

+ (id)attachmentPresentationsForAttachments:(id)attachments
{
  v21 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = attachmentsCopy;
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
        v12 = [self alloc];
        v13 = [v12 initWithNoteAttachmentObject:{v11, v16}];
        [array addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [array copy];

  return v14;
}

- (NoteAttachmentPresentation)initWithNoteAttachmentObject:(id)object
{
  objectCopy = object;
  v28.receiver = self;
  v28.super_class = NoteAttachmentPresentation;
  v5 = [(NoteAttachmentPresentation *)&v28 init];
  if (v5)
  {
    contentID = [objectCopy contentID];
    v7 = [contentID copy];
    contentID = v5->_contentID;
    v5->_contentID = v7;

    [(NoteAttachmentPresentation *)v5 updateContentIDURL];
    v27 = 0;
    v9 = [objectCopy attachmentDataFileURLWithError:&v27];
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
        path = [MEMORY[0x1E69DCAB8] ic_imageWithData:v15];
        v5->_image = path != 0;
      }

      else
      {
        path = [(NSURL *)v5->_dataFileURL path];
        NSLog(&cfstr_UnableToReadDa.isa, path, v16);
      }
    }

    else
    {
      objc_storeStrong(&v5->_dataFileURLError, v10);
      NSLog(&cfstr_CanTFindDataFo.isa, objectCopy, v11);
      v16 = v11;
    }

    mimeType = [objectCopy mimeType];
    mimeType = v5->_mimeType;
    v5->_mimeType = mimeType;

    filename = [objectCopy filename];
    filename = v5->_filename;
    v5->_filename = filename;

    note = [objectCopy note];
    store = [note store];
    account = [store account];
    v5->_sourceIsManaged = [account isManaged];
  }

  return v5;
}

- (NoteAttachmentPresentation)initWithData:(id)data contentID:(id)d mimeType:(id)type filename:(id)filename
{
  dataCopy = data;
  dCopy = d;
  typeCopy = type;
  filenameCopy = filename;
  v30.receiver = self;
  v30.super_class = NoteAttachmentPresentation;
  v15 = [(NoteAttachmentPresentation *)&v30 init];
  if (v15)
  {
    v16 = [dCopy copy];
    contentID = v15->_contentID;
    v15->_contentID = v16;

    [(NoteAttachmentPresentation *)v15 updateContentIDURL];
    v18 = [typeCopy copy];
    mimeType = v15->_mimeType;
    v15->_mimeType = v18;

    objc_storeStrong(&v15->_data, data);
    v20 = [MEMORY[0x1E69DCAB8] ic_imageWithData:dataCopy];
    v15->_image = v20 != 0;
    pathExtension = [filenameCopy pathExtension];
    v22 = [pathExtension length];

    if (!v22)
    {
      v23 = [MEMORY[0x1E6982C40] typeWithMIMEType:typeCopy];
      preferredFilenameExtension = [v23 preferredFilenameExtension];

      if (preferredFilenameExtension)
      {
        preferredFilenameExtension2 = [v23 preferredFilenameExtension];
        v26 = [filenameCopy stringByAppendingPathExtension:preferredFilenameExtension2];

        filenameCopy = v26;
      }
    }

    v27 = [filenameCopy copy];
    filename = v15->_filename;
    v15->_filename = v27;
  }

  return v15;
}

- (NSNumber)dataSizeNumber
{
  dataFileURL = [(NoteAttachmentPresentation *)self dataFileURL];

  if (dataFileURL)
  {
    dataFileURL2 = [(NoteAttachmentPresentation *)self dataFileURL];
    v10 = 0;
    [dataFileURL2 getResourceValue:&v10 forKey:*MEMORY[0x1E695DB50] error:0];
    v5 = v10;
  }

  else
  {
    data = [(NoteAttachmentPresentation *)self data];

    if (data)
    {
      v7 = MEMORY[0x1E696AD98];
      data2 = [(NoteAttachmentPresentation *)self data];
      v5 = [v7 numberWithUnsignedInteger:{objc_msgSend(data2, "length")}];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)getPresentationData:(id *)data mimeType:(id *)type error:(id *)error
{
  dataFileURL = [(NoteAttachmentPresentation *)self dataFileURL];

  if (dataFileURL)
  {
    v10 = MEMORY[0x1E695DEF0];
    dataFileURL2 = [(NoteAttachmentPresentation *)self dataFileURL];
    path = [dataFileURL2 path];
    v13 = [v10 dataWithContentsOfFile:path options:0 error:error];

    v14 = v13 != 0;
    if (v13)
    {
      if (data)
      {
        v15 = v13;
        *data = v13;
      }

      if (type)
      {
        *type = [(NoteAttachmentPresentation *)self mimeType];
      }
    }
  }

  else
  {
    dataFileURL3 = [(NoteAttachmentPresentation *)self dataFileURL];
    if (dataFileURL3)
    {
    }

    else
    {
      dataFileURLError = [(NoteAttachmentPresentation *)self dataFileURLError];

      if (dataFileURLError)
      {
        if (!error)
        {
          return 0;
        }

        [(NoteAttachmentPresentation *)self dataFileURLError];
        *error = v14 = 0;
        return v14;
      }
    }

    mimeType = [(NoteAttachmentPresentation *)self mimeType];
    if (data)
    {
      *data = [(NoteAttachmentPresentation *)self data];
    }

    if (type)
    {
      v18 = mimeType;
      *type = mimeType;
    }

    return 1;
  }

  return v14;
}

- (void)setContentID:(id)d
{
  objc_storeStrong(&self->_contentID, d);

  [(NoteAttachmentPresentation *)self updateContentIDURL];
}

- (void)updateContentIDURL
{
  v3 = [MEMORY[0x1E696AEC0] ic_newURLForContentID:self->_contentID percentEscaped:0];
  [(NoteAttachmentPresentation *)self setContentIDURL:v3];
}

- (void)setContentIDURL:(id)l
{
  objc_storeStrong(&self->_contentIDURL, l);
  lCopy = l;
  absoluteString = [lCopy absoluteString];

  [(NoteAttachmentPresentation *)self setContentIDURLAbsoluteString:absoluteString];
}

+ (void)prepareDocumentForPresentationWithAttachmentContentIDs:(id)ds withAttachmentPresentations:(id)presentations occurences:(id *)occurences
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v8 = [presentations ic_dictionaryByHashingContentWithFunction:&__block_literal_global_60];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = dsCopy;
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
            [array addObject:v16];
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  if (occurences)
  {
    *occurences = [array copy];
  }
}

+ (void)prepareDocumentForSerializationWithAttachmentContentIDs:(id)ds withAttachmentPresentations:(id)presentations newPresentationProvider:(id)provider leftoverPresentations:(id *)leftoverPresentations
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  presentationsCopy = presentations;
  providerCopy = provider;
  v11 = [MEMORY[0x1E695DFA0] orderedSetWithArray:presentationsCopy];
  v24 = presentationsCopy;
  v12 = [presentationsCopy ic_dictionaryByHashingContentWithFunction:&__block_literal_global_25];
  v13 = [v12 mutableCopy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = dsCopy;
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
            if (!providerCopy)
            {
              continue;
            }

            v22 = [MEMORY[0x1E696AEC0] ic_newURLForContentID:v19 percentEscaped:0];
            v21 = providerCopy[2](providerCopy, v22);
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

  if (leftoverPresentations)
  {
    *leftoverPresentations = [v11 array];
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