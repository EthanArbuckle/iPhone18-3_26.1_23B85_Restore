@interface DCActivityViewController
- (BOOL)inhibitPDFGenerationForActivityType:(id)type;
- (BOOL)writeGalleryPDFDataToPasteboardIfNecessaryForActivity:(id)activity documentInfoCollection:(id)collection;
- (id)activityTypesThatInhibitPDFGeneration;
- (void)_performActivity:(id)activity;
@end

@implementation DCActivityViewController

- (void)_performActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v6 = [(DCActivityViewController *)self inhibitPDFGenerationForActivityType:activityType];

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = DCActivityViewController;
    [(DCActivityViewController *)&v11 _performActivity:activityCopy];
  }

  else
  {
    documentInfoCollection = [(DCActivityViewController *)self documentInfoCollection];
    imageCache = [(DCActivityViewController *)self imageCache];
    view = [(DCActivityViewController *)self view];
    window = [view window];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__DCActivityViewController__performActivity___block_invoke;
    v12[3] = &unk_278F93758;
    v12[4] = self;
    v13 = activityCopy;
    [DCDocCamPDFGenerator generatePDFsIfNecessaryForDocumentInfoCollection:documentInfoCollection imageCache:imageCache displayWindow:window presentingViewController:self completionHandler:v12];
  }
}

void __45__DCActivityViewController__performActivity___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) documentInfoCollection];
    v6 = [v2 writeGalleryPDFDataToPasteboardIfNecessaryForActivity:v4 documentInfoCollection:v5];

    if ((v6 & 1) == 0)
    {
      v7 = *(a1 + 40);
      v9.receiver = *(a1 + 32);
      v9.super_class = DCActivityViewController;
      objc_msgSendSuper2(&v9, sel__performActivity_, v7);
    }
  }

  else
  {
    v8 = *(a1 + 32);

    [v8 _cancel];
  }
}

- (BOOL)inhibitPDFGenerationForActivityType:(id)type
{
  typeCopy = type;
  if (-[DCActivityViewController ignoreAttachmentsForCopyToPasteboard](self, "ignoreAttachmentsForCopyToPasteboard") && ([typeCopy isEqualToString:*MEMORY[0x277D54720]] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    activityTypesThatInhibitPDFGeneration = [(DCActivityViewController *)self activityTypesThatInhibitPDFGeneration];
    v5 = [activityTypesThatInhibitPDFGeneration containsObject:typeCopy];
  }

  return v5;
}

- (BOOL)writeGalleryPDFDataToPasteboardIfNecessaryForActivity:(id)activity documentInfoCollection:(id)collection
{
  collectionCopy = collection;
  activityType = [activity activityType];
  v7 = [activityType isEqualToString:*MEMORY[0x277D54720]];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = [DCDocCamPDFGenerator pdfURLForDocumentInfoCollection:collectionCopy];
    v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = v11;
    if (v10)
    {
      [v11 setObject:v10 forKey:*MEMORY[0x277CC2108]];
      [v8 addObject:v12];
    }

    generalPasteboard = [MEMORY[0x277D75810] generalPasteboard];
    [generalPasteboard setItems:v8];
  }

  return v7;
}

- (id)activityTypesThatInhibitPDFGeneration
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.documentcamera.markup";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end