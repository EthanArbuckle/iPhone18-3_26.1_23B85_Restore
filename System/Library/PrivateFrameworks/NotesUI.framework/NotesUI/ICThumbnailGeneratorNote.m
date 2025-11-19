@interface ICThumbnailGeneratorNote
- (ICThumbnailGeneratorNote)initWithManagedObjectContext:(id)a3;
- (id)generateThumbnailImageWithNote:(id)a3 configuration:(id)a4;
- (void)generateThumbnailWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation ICThumbnailGeneratorNote

- (ICThumbnailGeneratorNote)initWithManagedObjectContext:(id)a3
{
  v9.receiver = self;
  v9.super_class = ICThumbnailGeneratorNote;
  v3 = [(ICThumbnailGenerator *)&v9 initWithManagedObjectContext:a3];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = dispatch_queue_create("com.apple.notes.thumbnail-completion-queue", v5);
    completionQueue = v3->_completionQueue;
    v3->_completionQueue = v6;

    v3->_maximumWidth = 400.0;
    v3->_margin = 20.0;
  }

  return v3;
}

- (void)generateThumbnailWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICThumbnailGenerator *)self managedObjectContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__ICThumbnailGeneratorNote_generateThumbnailWithConfiguration_completion___block_invoke;
  v11[3] = &unk_1E846BA48;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performBlock:v11];
}

void __74__ICThumbnailGeneratorNote_generateThumbnailWithConfiguration_completion___block_invoke(id *a1)
{
  v2 = MEMORY[0x1E69B77F0];
  v3 = [a1[4] associatedObjectIdentifier];
  v4 = [a1[5] managedObjectContext];
  v5 = [v2 noteWithIdentifier:v3 context:v4];

  v6 = [a1[5] generateThumbnailImageWithNote:v5 configuration:a1[4]];
  v7 = [a1[5] completionQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ICThumbnailGeneratorNote_generateThumbnailWithConfiguration_completion___block_invoke_2;
  block[3] = &unk_1E846BA48;
  v10 = a1[4];
  v11 = v6;
  v12 = a1[6];
  v8 = v6;
  dispatch_async(v7, block);
}

void __74__ICThumbnailGeneratorNote_generateThumbnailWithConfiguration_completion___block_invoke_2(void *a1)
{
  v2 = [[ICThumbnailDescription alloc] initWithConfiguration:a1[4]];
  [(ICThumbnailDescription *)v2 setImage:a1[5]];
  (*(a1[6] + 16))();
}

- (id)generateThumbnailImageWithNote:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 textStorage];

  if (v8)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__66;
    v24 = __Block_byref_object_dispose__66;
    v25 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__ICThumbnailGeneratorNote_generateThumbnailImageWithNote_configuration___block_invoke;
    v15[3] = &unk_1E846A2B0;
    v16 = v7;
    v17 = self;
    v18 = v6;
    v19 = &v20;
    [v16 performAsCurrentAppearance:v15];
    v9 = v21[5];

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v10 = MEMORY[0x1E69B77F0];
    v11 = [(ICThumbnailGenerator *)self managedObjectContext];
    v12 = [v10 newEmptyNoteInContext:v11];

    v9 = [(ICThumbnailGeneratorNote *)self generateThumbnailImageWithNote:v12 configuration:v7];
    v13 = [(ICThumbnailGenerator *)self managedObjectContext];
    [v13 deleteObject:v12];
  }

  return v9;
}

void __73__ICThumbnailGeneratorNote_generateThumbnailImageWithNote_configuration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) preferredSize];
  v3 = v2;
  [*(a1 + 32) preferredSize];
  v5 = v3 / v4;
  [*(a1 + 40) maximumWidth];
  v7 = v6;
  [*(a1 + 32) preferredSize];
  if (v7 < v8)
  {
    v7 = v8;
  }

  [*(a1 + 40) margin];
  v10 = v7 / v5 - v9;
  v11 = [[ICTextContainer alloc] initWithSize:v7, 1.79769313e308];
  [(ICTextContainer *)v11 setInPreviewMode:1];
  [*(a1 + 40) margin];
  [(ICTextContainer *)v11 setLineFragmentPadding:?];
  v12 = objc_alloc_init(ICTextController);
  [(ICTTTextController *)v12 setInPreviewMode:1];
  v13 = [[ICPreviewLayoutManager alloc] initWithNote:*(a1 + 48) maxCharacterCount:1600 textContainer:v11 textController:v12];
  if ([MEMORY[0x1E69DC938] ic_isiPad])
  {
    v14 = [*(a1 + 32) thumbnailType] == 7 || objc_msgSend(*(a1 + 32), "thumbnailType") == 4 || objc_msgSend(*(a1 + 32), "thumbnailType") == 10 || objc_msgSend(*(a1 + 32), "thumbnailType") == 11;
  }

  else
  {
    v14 = 0;
  }

  [(ICPreviewLayoutManager *)v13 setInsideSystemPaper:v14];
  [*(a1 + 32) preferredSize];
  v16 = v15 / v7;
  if (v16 >= 0.1)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.1;
  }

  v18 = MEMORY[0x1E69DCA80];
  v19 = [*(a1 + 32) traitCollection];
  v20 = [v18 formatForTraitCollection:v19];

  [*(a1 + 32) scale];
  [v20 setScale:?];
  v21 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithBounds:v20 format:{0.0, 0.0, v7 * v17, v7 / v5 * v17}];
  v34 = MEMORY[0x1E69E9820];
  v35 = 3221225472;
  v36 = __73__ICThumbnailGeneratorNote_generateThumbnailImageWithNote_configuration___block_invoke_2;
  v37 = &unk_1E846DC10;
  v41 = v17;
  v22 = v13;
  v38 = v22;
  v42 = v7;
  v43 = v10;
  v23 = v11;
  v24 = *(a1 + 40);
  v39 = v23;
  v40 = v24;
  v25 = [v21 imageWithActions:&v34];
  v26 = *(*(a1 + 56) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  v28 = [*(a1 + 32) backgroundColor];

  if (v28)
  {
    v29 = *(*(*(a1 + 56) + 8) + 40);
    v30 = [*(a1 + 32) backgroundColor];
    v31 = [v29 ic_imageWithBackgroundColor:v30];
    v32 = *(*(a1 + 56) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;
  }
}

uint64_t __73__ICThumbnailGeneratorNote_generateThumbnailImageWithNote_configuration___block_invoke_2(uint64_t a1, void *a2)
{
  CGContextScaleCTM([a2 CGContext], *(a1 + 56), *(a1 + 56));
  v3 = [*(a1 + 32) glyphRangeForBoundingRect:*(a1 + 40) inTextContainer:{0.0, 0.0, *(a1 + 64), *(a1 + 72)}];
  v5 = v4;
  v6 = *(a1 + 32);
  [*(a1 + 48) margin];

  return [v6 drawGlyphsForGlyphRange:v3 atPoint:{v5, 0.0, v7}];
}

@end