@interface DCActivityViewController
- (BOOL)inhibitPDFGenerationForActivityType:(id)a3;
- (BOOL)writeGalleryPDFDataToPasteboardIfNecessaryForActivity:(id)a3 documentInfoCollection:(id)a4;
- (id)activityTypesThatInhibitPDFGeneration;
- (void)_performActivity:(id)a3;
@end

@implementation DCActivityViewController

- (void)_performActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [(DCActivityViewController *)self inhibitPDFGenerationForActivityType:v5];

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = DCActivityViewController;
    [(DCActivityViewController *)&v11 _performActivity:v4];
  }

  else
  {
    v7 = [(DCActivityViewController *)self documentInfoCollection];
    v8 = [(DCActivityViewController *)self imageCache];
    v9 = [(DCActivityViewController *)self view];
    v10 = [v9 window];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__DCActivityViewController__performActivity___block_invoke;
    v12[3] = &unk_278F93758;
    v12[4] = self;
    v13 = v4;
    [DCDocCamPDFGenerator generatePDFsIfNecessaryForDocumentInfoCollection:v7 imageCache:v8 displayWindow:v10 presentingViewController:self completionHandler:v12];
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

- (BOOL)inhibitPDFGenerationForActivityType:(id)a3
{
  v4 = a3;
  if (-[DCActivityViewController ignoreAttachmentsForCopyToPasteboard](self, "ignoreAttachmentsForCopyToPasteboard") && ([v4 isEqualToString:*MEMORY[0x277D54720]] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(DCActivityViewController *)self activityTypesThatInhibitPDFGeneration];
    v5 = [v6 containsObject:v4];
  }

  return v5;
}

- (BOOL)writeGalleryPDFDataToPasteboardIfNecessaryForActivity:(id)a3 documentInfoCollection:(id)a4
{
  v5 = a4;
  v6 = [a3 activityType];
  v7 = [v6 isEqualToString:*MEMORY[0x277D54720]];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = [DCDocCamPDFGenerator pdfURLForDocumentInfoCollection:v5];
    v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v9];
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = v11;
    if (v10)
    {
      [v11 setObject:v10 forKey:*MEMORY[0x277CC2108]];
      [v8 addObject:v12];
    }

    v13 = [MEMORY[0x277D75810] generalPasteboard];
    [v13 setItems:v8];
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