@interface ICAttachmentPDFModel
@end

@implementation ICAttachmentPDFModel

void __71__ICAttachmentPDFModel_PreviewGeneration__generatePreviewsInOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 identifier];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if ([*(a1 + 32) needToGeneratePreviews])
  {
    v10 = [*(a1 + 32) attachment];
    v6 = [v10 media];
    v7 = [v6 mediaURL];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void __71__ICAttachmentPDFModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_10(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = [*(a1 + 32) attachment];
  [v3 setSizeWidth:v2];

  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) attachment];
  [v5 setSizeHeight:v4];
}

uint64_t __71__ICAttachmentPDFModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 set];

  CGContextFillRect(v3, *(a1 + 32));
  CGContextGetCTM(&v7, v3);
  CGContextScaleCTM(v3, 1.0, -1.0);
  CGContextTranslateCTM(v3, 0.0, -*(a1 + 72));
  memset(&v7, 0, sizeof(v7));
  CGPDFPageGetDrawingTransform(&v7, *(a1 + 80), kCGPDFCropBox, *(a1 + 32), 0, 1);
  v6 = v7;
  CGContextConcatCTM(v3, &v6);
  return CGContextDrawPDFPageWithAnnotations();
}

void __71__ICAttachmentPDFModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = *(a1 + 40);
  [*(a1 + 48) scale];
  v4 = [v2 updateAttachmentPreviewImageWithImage:v3 scale:1 scaleWhenDrawing:0 metadata:0 sendNotification:?];

  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [*(a1 + 32) attachment];
  [v6 setPreviewUpdateDate:v5];

  v7 = [*(a1 + 32) attachment];
  [v7 updateChangeCountWithReason:@"Generated previews for PDF"];
}

@end