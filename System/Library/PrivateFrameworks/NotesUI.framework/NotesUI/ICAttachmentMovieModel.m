@interface ICAttachmentMovieModel
@end

@implementation ICAttachmentMovieModel

void __73__ICAttachmentMovieModel_PreviewGeneration__generatePreviewsInOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 identifier];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if ([*(a1 + 32) needToGeneratePreviews])
  {
    v10 = [*(a1 + 32) attachment];
    v6 = [v10 attachmentModel];
    v7 = [v6 asset];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }
}

void __73__ICAttachmentMovieModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_10(uint64_t a1)
{
  v6 = [*(a1 + 32) attachment];
  v2 = *(a1 + 56);
  v3 = *(a1 + 48);
  [*(a1 + 40) scale];
  v5 = [v6 updateAttachmentPreviewImageWithImageSrc:v3 maxDimension:0 scale:1 appearanceType:0 scaleWhenDrawing:0 metadata:v2 sendNotification:v4];
}

void __73__ICAttachmentMovieModel_PreviewGeneration__generatePreviewsInOperation___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [*(a1 + 32) attachment];
  [v3 setPreviewUpdateDate:v2];

  v4 = [*(a1 + 32) attachment];
  [v4 updateChangeCountWithReason:@"Generated previews for movie"];
}

@end