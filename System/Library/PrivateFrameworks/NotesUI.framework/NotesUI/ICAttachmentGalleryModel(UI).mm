@interface ICAttachmentGalleryModel(UI)
- (id)activityItems;
- (id)blockingGeneratePDFURL;
- (id)fileURLForTypeIdentifier:()UI;
- (id)previewItemURL;
- (id)providerFileTypes;
- (id)quicklookPreviewItems;
- (void)drawPreviewInRect:()UI;
@end

@implementation ICAttachmentGalleryModel(UI)

- (id)quicklookPreviewItems
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__82;
  v9 = __Block_byref_object_dispose__82;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "subAttachmentCount")}];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__ICAttachmentGalleryModel_UI__quicklookPreviewItems__block_invoke;
  v4[3] = &unk_1E846BB38;
  v4[4] = &v5;
  [a1 enumerateSubAttachmentsWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)activityItems
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [ICAttachmentGalleryActivityItemSource alloc];
  v3 = [a1 attachment];
  v4 = [(ICAttachmentActivityItemSource *)v2 initWithAttachment:v3];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (id)previewItemURL
{
  v1 = [a1 attachment];
  v2 = [ICDocCamPDFGenerator pdfURLForAttachment:v1];

  return v2;
}

- (id)providerFileTypes
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [*MEMORY[0x1E6982F10] identifier];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

- (id)fileURLForTypeIdentifier:()UI
{
  v4 = a3;
  if (v4 && ([MEMORY[0x1E6982C40] typeWithIdentifier:v4], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "conformsToType:", *MEMORY[0x1E6982F10]), v5, v6))
  {
    v7 = [a1 attachment];
    v8 = [ICDocCamPDFGenerator pdfURLForAttachment:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)drawPreviewInRect:()UI
{
  v34[2] = *MEMORY[0x1E69E9840];
  v10 = [a1 attachment];
  v11 = [v10 preferredViewSize];

  if (v11 == 1)
  {
    v32.receiver = a1;
    v32.super_class = &off_1F5078E18;
    objc_msgSendSuper2(&v32, sel_drawPreviewInRect_, a2, a3, a4, a5);
  }

  else
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    v35.origin.x = a2;
    v35.origin.y = a3;
    v35.size.width = a4;
    v35.size.height = a5;
    CGContextClipToRect(CurrentContext, v35);
    v36.origin.x = a2;
    v36.origin.y = a3;
    v36.size.width = a4;
    v36.size.height = a5;
    v13 = CGPathCreateWithRoundedRect(v36, 16.0, 16.0, 0);
    v14 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    CGContextSetFillColorWithColor(CurrentContext, [v14 CGColor]);

    CGContextAddPath(CurrentContext, v13);
    CGContextFillPath(CurrentContext);
    CGPathRelease(v13);
    v37.origin.x = a2;
    v37.origin.y = a3;
    v37.size.width = a4;
    v37.size.height = a5;
    v38 = CGRectInset(v37, 12.0, 12.0);
    y = v38.origin.y;
    x = v38.origin.x;
    width = v38.size.width;
    height = v38.size.height;
    v16 = [MEMORY[0x1E69DC888] labelColor];
    v17 = [MEMORY[0x1E69DB878] ic_preferredFontForStyle:*MEMORY[0x1E69DDD28] withFontWeight:*MEMORY[0x1E69DB958]];
    v18 = [v17 ic_fontWithSingleLineA];

    v19 = *MEMORY[0x1E69DB650];
    v33[0] = *MEMORY[0x1E69DB648];
    v33[1] = v19;
    v34[0] = v18;
    v34[1] = v16;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
    v21 = [a1 attachment];
    v22 = [v21 title];

    [v22 boundingRectWithSize:0 options:v20 attributes:0 context:{width, height}];
    v23 = v39.origin.x;
    v24 = v39.origin.y;
    v25 = v39.size.width;
    v26 = v39.size.height;
    v40 = CGRectOffset(v39, x, y);
    [v22 drawInRect:v20 withAttributes:{v40.origin.x, v40.origin.y, v40.size.width, v40.size.height}];
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v31[3] = 0x4028000000000000;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __50__ICAttachmentGalleryModel_UI__drawPreviewInRect___block_invoke;
    v30[3] = &unk_1E846E630;
    *&v30[5] = height - v26 + -12.0;
    *&v30[6] = a2;
    *&v30[7] = a3;
    *&v30[8] = a4;
    v30[4] = v31;
    *&v30[9] = a5;
    *&v30[10] = v23;
    *&v30[11] = v24;
    *&v30[12] = v25;
    *&v30[13] = v26;
    [a1 enumerateSubAttachmentsWithBlock:v30];
    CGContextRestoreGState(CurrentContext);
    _Block_object_dispose(v31, 8);
  }
}

- (id)blockingGeneratePDFURL
{
  v1 = [a1 attachment];
  v2 = [ICDocCamPDFGenerator blockingGeneratePDFURLForAttachment:v1 withProgress:0 error:0];

  return v2;
}

@end