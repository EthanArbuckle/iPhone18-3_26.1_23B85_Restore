@interface ICAttachmentInlineDrawingModel
- (BOOL)showThumbnailInNoteList;
- (id)additionalIndexableTextContentInNote;
- (id)attributesForSharingHTMLWithTagName:(id *)a3 textContent:(id *)a4;
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

  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 previewImages];
  v5 = [v4 count] != 0;

  return v5;
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

  return v5;
}

- (id)additionalIndexableTextContentInNote
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 additionalIndexableText];

  return v3;
}

- (id)searchableTextContentInNote
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 summary];

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attributesForSharingHTMLWithTagName:(id *)a3 textContent:(id *)a4
{
  *a3 = @"img";
  v4 = [(ICAttachmentModel *)self attachment];
  v5 = [v4 fallbackImageData];

  if (v5)
  {
    v6 = [v5 base64EncodedStringWithOptions:0];
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
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 mergeableData];

  if ([v3 length])
  {
    v8 = 0;
    v4 = [objc_alloc(MEMORY[0x277CD95F8]) initWithData:v3 error:&v8];
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
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "newDrawingFromMergeableData error creating currentDrawing %@", &v2, 0xCu);
}

@end