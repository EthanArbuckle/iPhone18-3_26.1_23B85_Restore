@interface ICAttachmentInlineDrawingModel
- (BOOL)showThumbnailInNoteList;
- (id)additionalIndexableTextContentInNote;
- (id)attributesForSharingHTMLWithTagName:(id *)name textContent:(id *)content;
- (id)newDrawingFromMergeableData;
- (id)searchableTextContentInNote;
- (id)standaloneTitleForNote;
- (void)newDrawingFromMergeableData;
@end

@implementation ICAttachmentInlineDrawingModel

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

  return title;
}

- (id)additionalIndexableTextContentInNote
{
  attachment = [(ICAttachmentModel *)self attachment];
  additionalIndexableText = [attachment additionalIndexableText];

  return additionalIndexableText;
}

- (id)searchableTextContentInNote
{
  attachment = [(ICAttachmentModel *)self attachment];
  summary = [attachment summary];

  if (summary)
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:summary];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attributesForSharingHTMLWithTagName:(id *)name textContent:(id *)content
{
  *name = @"img";
  attachment = [(ICAttachmentModel *)self attachment];
  fallbackImageData = [attachment fallbackImageData];

  if (fallbackImageData)
  {
    v6 = [fallbackImageData base64EncodedStringWithOptions:0];
    v7 = +[ICAttachment fallbackImageUTI];
    v8 = [ICAttachment mimeTypeFromUTI:v7];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"style=max-width: 100%% max-height: 100%%; src=data:%@;base64, %@", v8, v6];;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newDrawingFromMergeableData
{
  attachment = [(ICAttachmentModel *)self attachment];
  mergeableData = [attachment mergeableData];

  if ([mergeableData length])
  {
    v8 = 0;
    v4 = [objc_alloc(MEMORY[0x277CD95F8]) initWithData:mergeableData error:&v8];
    v5 = v8;
    if (v5)
    {
      v6 = os_log_create("com.apple.notes", "PencilKit");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(ICAttachmentInlineDrawingModel *)v5 newDrawingFromMergeableData];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)newDrawingFromMergeableData
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "newDrawingFromMergeableData error creating currentDrawing %@", &v2, 0xCu);
}

@end