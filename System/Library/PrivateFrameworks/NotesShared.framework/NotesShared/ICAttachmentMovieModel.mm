@interface ICAttachmentMovieModel
- (BOOL)hasThumbnailImage;
- (CGSize)intrinsicContentSize;
- (id)asset;
- (void)addLocation;
- (void)updateAttachmentSize;
- (void)updateFileBasedAttributes;
@end

@implementation ICAttachmentMovieModel

- (BOOL)hasThumbnailImage
{
  v9.receiver = self;
  v9.super_class = ICAttachmentMovieModel;
  if (![(ICAttachmentModel *)&v9 hasThumbnailImage])
  {
    return 0;
  }

  v3 = [(ICAttachmentModel *)self attachment];
  [v3 sizeWidth];
  if (v4 <= 0.0)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(ICAttachmentModel *)self attachment];
    [v5 sizeHeight];
    v7 = v6 > 0.0;
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = "";
  v14 = *MEMORY[0x277CBF3A8];
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__ICAttachmentMovieModel_intrinsicContentSize__block_invoke;
  v9[3] = &unk_278194DE8;
  v9[4] = self;
  v9[5] = &v10;
  [v4 performBlockAndWait:v9];

  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

void __46__ICAttachmentMovieModel_intrinsicContentSize__block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) attachment];
  [v7 sizeWidth];
  v3 = v2;
  v4 = [*(a1 + 32) attachment];
  [v4 sizeHeight];
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
}

- (void)updateAttachmentSize
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 media];
  v5 = [v4 isValid];

  if (v5)
  {
    v6 = MEMORY[0x277CE6650];
    v7 = [(ICAttachmentModel *)self attachment];
    v8 = [v7 media];
    v9 = [v8 mediaURL];
    v10 = [v6 ic_safeURLAssetWithURL:v9];

    v11 = *MEMORY[0x277CE5EA8];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__ICAttachmentMovieModel_updateAttachmentSize__block_invoke;
    v14[3] = &unk_278197C28;
    v14[4] = self;
    v15 = v10;
    v12 = v10;
    [v12 loadTracksWithMediaType:v11 completionHandler:v14];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ICAttachmentMovieModel;
    [(ICAttachmentModel *)&v13 updateAttachmentSize];
  }
}

void __46__ICAttachmentMovieModel_updateAttachmentSize__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 firstObject];
  if (v3)
  {
    v4 = [*(a1 + 32) attachment];
    v5 = [v4 managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__ICAttachmentMovieModel_updateAttachmentSize__block_invoke_2;
    v9[3] = &unk_278194DC0;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    [v5 performBlock:v9];
  }
}

void __46__ICAttachmentMovieModel_updateAttachmentSize__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) naturalSize];
  v3 = v2;
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 preferredTransform];
    v8 = *&v33.value;
    v7 = *&v33.timescale;
    v10 = *&v33.epoch;
    v9 = v34;
  }

  else
  {
    v9 = 0.0;
    v7 = 0.0;
    v10 = 0.0;
    v8 = 0.0;
  }

  v11 = v5 * v9 + v7 * v3;
  v12 = round(fabs(v5 * v10 + v8 * v3));
  v13 = round(fabs(v11));
  v14 = [*(a1 + 40) attachment];
  [v14 sizeWidth];
  v16 = v15;

  v17 = v16 != v12;
  if (v16 != v12)
  {
    v18 = [*(a1 + 40) attachment];
    [v18 setSizeWidth:v12];
  }

  v19 = [*(a1 + 40) attachment];
  [v19 sizeHeight];
  v21 = v20;

  if (v21 != v13)
  {
    v22 = [*(a1 + 40) attachment];
    [v22 setSizeHeight:v13];

    v17 = 1;
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    [v23 duration];
  }

  else
  {
    memset(&v33, 0, sizeof(v33));
  }

  Seconds = CMTimeGetSeconds(&v33);
  v25 = [*(a1 + 40) attachment];
  [v25 duration];
  v27 = v26;

  if (v27 == Seconds)
  {
    if (!v17)
    {
      return;
    }
  }

  else
  {
    v28 = [*(a1 + 40) attachment];
    [v28 setDuration:Seconds];
  }

  v29 = [*(a1 + 40) attachment];
  [v29 updateChangeCountWithReason:@"Updated attachment size"];

  v30 = [*(a1 + 40) attachment];
  v31 = [v30 managedObjectContext];
  [v31 ic_save];

  v32 = [*(a1 + 40) attachment];
  [v32 ic_postNotificationOnMainThreadWithName:@"ICAttachmentDidChangeSizeNotification"];
}

- (id)asset
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 media];
  v5 = [v4 isValid];

  if (v5 && (-[ICAttachmentModel attachment](self, "attachment"), v6 = objc_claimAutoreleasedReturnValue(), [v6 typeUTI], v7 = objc_claimAutoreleasedReturnValue(), v8 = +[ICAttachment typeUTIIsPlayableMovie:](ICAttachment, "typeUTIIsPlayableMovie:", v7), v7, v6, v8))
  {
    v9 = MEMORY[0x277CE6650];
    v10 = [(ICAttachmentModel *)self attachment];
    v11 = [v10 media];
    v12 = [v11 mediaURL];
    v13 = [v9 ic_safeURLAssetWithURL:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)updateFileBasedAttributes
{
  v3.receiver = self;
  v3.super_class = ICAttachmentMovieModel;
  [(ICAttachmentModel *)&v3 updateFileBasedAttributes];
  [(ICAttachmentMovieModel *)self updateAttachmentSize];
}

- (void)addLocation
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 media];
  v5 = [v4 isValid];

  if (v5)
  {
    v6 = MEMORY[0x277CE6650];
    v7 = [(ICAttachmentModel *)self attachment];
    v8 = [v7 media];
    v9 = [v8 mediaURL];
    v10 = [v6 ic_safeURLAssetWithURL:v9];

    v11 = MEMORY[0x277CE6520];
    v12 = [v10 commonMetadata];
    v13 = [v11 metadataItemsFromArray:v12 withKey:*MEMORY[0x277CE5FE8] keySpace:*MEMORY[0x277CE5FA8]];
    v14 = [v13 firstObject];

    if (v14)
    {
      v15 = [v14 stringValue];
      v16 = [MEMORY[0x277CCAC80] scannerWithString:v15];
      v19 = 0.0;
      v20 = 0.0;
      if ([v16 scanDouble:&v20])
      {
        if ([v16 scanDouble:&v19])
        {
          v17 = [(ICAttachmentModel *)self attachment];
          v18 = [v17 addLocationWithLatitude:v20 longitude:v19];
        }
      }
    }
  }
}

@end