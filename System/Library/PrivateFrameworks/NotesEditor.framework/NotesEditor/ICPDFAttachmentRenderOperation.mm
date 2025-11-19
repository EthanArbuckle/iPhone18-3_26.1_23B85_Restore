@interface ICPDFAttachmentRenderOperation
- (CGSize)size;
- (ICAttachment)attachment;
- (ICPDFAttachmentRenderOperation)initWithView:(id)a3;
- (ICPDFAttachmentView)view;
- (id)generateImageForPrinting;
- (void)main;
@end

@implementation ICPDFAttachmentRenderOperation

- (ICPDFAttachmentRenderOperation)initWithView:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ICPDFAttachmentRenderOperation;
  v5 = [(ICPDFAttachmentRenderOperation *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(ICPDFAttachmentRenderOperation *)v5 setView:v4];
    v7 = [(ICPDFAttachmentRenderOperation *)v6 view];
    [v7 bounds];
    [(ICPDFAttachmentRenderOperation *)v6 setSize:v8, v9];

    v10 = [v4 window];
    v11 = [v10 screen];

    if (v11)
    {
      [v11 scale];
    }

    else
    {
      v12 = 1.0;
    }

    [(ICPDFAttachmentRenderOperation *)v6 setScale:v12];
  }

  return v6;
}

- (id)generateImageForPrinting
{
  v3 = [(ICPDFAttachmentRenderOperation *)self view];
  v4 = [v3 attachment];

  v5 = [(ICPDFAttachmentRenderOperation *)self view];
  if (v4)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v6 = [v4 managedObjectContext];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __58__ICPDFAttachmentRenderOperation_generateImageForPrinting__block_invoke;
    v14 = &unk_2781ACF80;
    v16 = &v17;
    v15 = v5;
    [v6 performBlockAndWait:&v11];

    if (v18[3] && ([(ICPDFAttachmentRenderOperation *)self size:v11], v7 > 0.0))
    {
      v9 = [MEMORY[0x277D35F40] renderedImageForPage:v18[3] scale:TSUDeviceRGBColorSpace() size:1.0 colorSpace:{1536.0, v8 * (1536.0 / v7)}];
      CGPDFPageRelease(v18[3]);
    }

    else
    {
      v9 = 0;
    }

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

CGPDFPage *__58__ICPDFAttachmentRenderOperation_generateImageForPrinting__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) page];
  result = *(*(*(a1 + 40) + 8) + 24);
  if (result)
  {

    return CGPDFPageRetain(result);
  }

  return result;
}

- (void)main
{
  v3 = [(ICPDFAttachmentRenderOperation *)self view];
  v4 = [v3 attachment];

  if (v4)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v5 = [v4 managedObjectContext];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __38__ICPDFAttachmentRenderOperation_main__block_invoke;
    v16[3] = &unk_2781AC1D0;
    v16[4] = self;
    v16[5] = &v17;
    [v5 performBlockAndWait:v16];

    v6 = TSUDeviceRGBColorSpace();
    v7 = v18[3];
    if (v7)
    {
      v8 = v6;
      v9 = MEMORY[0x277D35F40];
      [(ICPDFAttachmentRenderOperation *)self scale];
      v11 = v10;
      [(ICPDFAttachmentRenderOperation *)self size];
      v14 = [v9 renderedImageForPage:v7 scale:v8 size:v11 colorSpace:{v12, v13}];
      CGPDFPageRelease(v18[3]);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    performBlockOnMainThreadAndWait();

    _Block_object_dispose(&v17, 8);
  }
}

void __38__ICPDFAttachmentRenderOperation_main__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  *(*(*(a1 + 40) + 8) + 24) = [v3 page];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CGPDFPageRetain(v2);
  }
}

void __38__ICPDFAttachmentRenderOperation_main__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) view];
  [v3 setImage:v2];

  v4 = [*(a1 + 32) view];
  [v4 setRendering:0];
}

- (ICPDFAttachmentView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (ICAttachment)attachment
{
  WeakRetained = objc_loadWeakRetained(&self->_attachment);

  return WeakRetained;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end