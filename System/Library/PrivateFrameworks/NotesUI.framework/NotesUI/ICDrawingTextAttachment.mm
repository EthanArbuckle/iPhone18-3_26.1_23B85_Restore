@interface ICDrawingTextAttachment
- ($01BB1521EC52D44A8E7628F5261DCEC8)attachmentBoundsMargins;
- (id)attachmentFileWrapper;
- (id)printableTextAttachment;
- (void)attachmentFileWrapper;
@end

@implementation ICDrawingTextAttachment

- (id)attachmentFileWrapper
{
  attachment = [(ICAbstractTextAttachment *)self attachment];

  if (attachment)
  {
    attachment2 = [(ICAbstractTextAttachment *)self attachment];
    [MEMORY[0x1E69B7748] defaultPixelSize];
    v5 = [attachment2 attachmentPreviewImageWithMinSize:? scale:?];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E696AC38]);
      orientedPreviewImageURL = [v5 orientedPreviewImageURL];
      v11 = 0;
      attachment = [v6 initWithURL:orientedPreviewImageURL options:0 error:&v11];
      v8 = v11;

      if (v8)
      {
        v9 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(ICDrawingTextAttachment *)v8 attachmentFileWrapper];
        }
      }
    }

    else
    {
      attachment = 0;
    }
  }

  return attachment;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)attachmentBoundsMargins
{
  v17.receiver = self;
  v17.super_class = ICDrawingTextAttachment;
  [(ICTextAttachment *)&v17 attachmentBoundsMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  attachment = [(ICAbstractTextAttachment *)self attachment];
  preferredViewSize = [attachment preferredViewSize];

  if (preferredViewSize)
  {
    v13 = v8;
  }

  else
  {
    v13 = 4.0;
  }

  if (preferredViewSize)
  {
    v14 = v10;
  }

  else
  {
    v14 = 5.0;
  }

  v15 = v4;
  v16 = v6;
  result.var3 = v14;
  result.var2 = v13;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (id)printableTextAttachment
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  [MEMORY[0x1E69B7748] defaultPixelSize];
  v3 = [attachment attachmentPreviewImageWithMinSize:? scale:?];

  orientedPreviewImageURL = [v3 orientedPreviewImageURL];
  if (orientedPreviewImageURL)
  {
    v8 = 0;
    v5 = [objc_alloc(MEMORY[0x1E696AC38]) initWithURL:orientedPreviewImageURL options:0 error:&v8];
    v6 = [[ICPrintableTextAttachment alloc] initWithFileWrapper:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)attachmentFileWrapper
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Error creating drawing file wrapper: %@", &v2, 0xCu);
}

@end