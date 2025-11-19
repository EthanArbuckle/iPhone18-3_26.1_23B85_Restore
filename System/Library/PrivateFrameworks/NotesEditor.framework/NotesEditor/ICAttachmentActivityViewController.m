@interface ICAttachmentActivityViewController
+ (id)makeWithAttachment:(id)a3 quickLookItemDelegate:(id)a4 completion:(id)a5;
- (BOOL)inhibitPDFGenerationForActivityType:(id)a3;
- (BOOL)writeGalleryPDFDataToPasteboardIfNecessaryForActivity:(id)a3 attachments:(id)a4;
- (id)activityTypesThatInhibitPDFGeneration;
- (void)_performActivity:(id)a3;
@end

@implementation ICAttachmentActivityViewController

+ (id)makeWithAttachment:(id)a3 quickLookItemDelegate:(id)a4 completion:(id)a5
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 activityItems];
  if (v10)
  {
    v11 = v10;
    v12 = [v7 media];
    v13 = v12;
    if (v12 && [v12 hasFile] && (objc_msgSend(v13, "isPasswordProtected") & 1) == 0 && (objc_msgSend(MEMORY[0x277D75418], "ic_isVision") & 1) == 0)
    {
      v28 = objc_alloc_init(NotesQuickLookActivityItem);
      [(NotesQuickLookActivityItem *)v28 setDelegate:v8];
      v35[0] = v7;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
      [(NotesQuickLookActivityItem *)v28 setPreviewItems:v29];

      v30 = [v11 arrayByAddingObject:v28];

      v31 = objc_alloc_init(NotesQuickLookActivity);
      v14 = [MEMORY[0x277CBEBF8] arrayByAddingObject:v31];

      v11 = v30;
    }

    else
    {
      v14 = MEMORY[0x277CBEBF8];
    }

    if (ICDebugModeEnabled())
    {
      v15 = objc_alloc(MEMORY[0x277D368D8]);
      v16 = [v7 identifier];
      v17 = [v15 initWithIdentifier:v16];

      v18 = [v14 arrayByAddingObject:v17];

      v19 = [objc_alloc(MEMORY[0x277D36758]) initWithObject:v7 activityType:1];
      v14 = [v18 arrayByAddingObject:v19];
    }

    v20 = [[ICAttachmentActivityViewController alloc] initWithActivityItems:v11 applicationActivities:v14];
    v21 = [MEMORY[0x277CBEA60] ic_arrayFromNonNilObject:v7];
    [(ICAttachmentActivityViewController *)v20 setAttachments:v21];

    v22 = [v7 note];
    v23 = [v22 account];
    -[ICAttachmentActivityViewController setIsContentManaged:](v20, "setIsContentManaged:", [v23 isManaged]);

    v24 = *MEMORY[0x277D360F8];
    v34[0] = *MEMORY[0x277D54740];
    v34[1] = v24;
    v34[2] = *MEMORY[0x277D54790];
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
    [(ICAttachmentActivityViewController *)v20 setExcludedActivityTypes:v25];

    if ([MEMORY[0x277D75418] ic_isVision])
    {
      v26 = -2;
    }

    else
    {
      v26 = 7;
    }

    [(ICAttachmentActivityViewController *)v20 setModalPresentationStyle:v26];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __90__ICAttachmentActivityViewController_makeWithAttachment_quickLookItemDelegate_completion___block_invoke;
    v32[3] = &unk_2781AF5A8;
    v33 = v9;
    [(ICAttachmentActivityViewController *)v20 setCompletionWithItemsHandler:v32];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

uint64_t __90__ICAttachmentActivityViewController_makeWithAttachment_quickLookItemDelegate_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_performActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  v6 = [(ICAttachmentActivityViewController *)self inhibitPDFGenerationForActivityType:v5];

  if (v6)
  {
    v11.receiver = self;
    v11.super_class = ICAttachmentActivityViewController;
    [(ICAttachmentActivityViewController *)&v11 _performActivity:v4];
  }

  else
  {
    v7 = MEMORY[0x277D36788];
    v8 = [(ICAttachmentActivityViewController *)self attachments];
    v9 = [(ICAttachmentActivityViewController *)self view];
    v10 = [v9 window];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__ICAttachmentActivityViewController__performActivity___block_invoke;
    v12[3] = &unk_2781AD1E8;
    v12[4] = self;
    v13 = v4;
    [v7 generatePDFsIfNecessaryForGalleryAttachments:v8 displayWindow:v10 presentingViewController:self completionHandler:v12];
  }
}

void __55__ICAttachmentActivityViewController__performActivity___block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) attachments];
    v6 = [v2 writeGalleryPDFDataToPasteboardIfNecessaryForActivity:v4 attachments:v5];

    if ((v6 & 1) == 0)
    {
      v7 = *(a1 + 40);
      v9.receiver = *(a1 + 32);
      v9.super_class = ICAttachmentActivityViewController;
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
  if (-[ICAttachmentActivityViewController ignoreAttachmentsForCopyToPasteboard](self, "ignoreAttachmentsForCopyToPasteboard") && ([v4 isEqualToString:*MEMORY[0x277D54720]] & 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(ICAttachmentActivityViewController *)self activityTypesThatInhibitPDFGeneration];
    v5 = [v6 containsObject:v4];
  }

  return v5;
}

- (BOOL)writeGalleryPDFDataToPasteboardIfNecessaryForActivity:(id)a3 attachments:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 activityType];
  v7 = [v6 isEqualToString:*MEMORY[0x277D54720]];

  if (v7)
  {
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v25 = v5;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      LOBYTE(v7) = 0;
      v10 = *v31;
      v26 = *MEMORY[0x277CE1E08];
      v27 = *MEMORY[0x277D35D08];
      v11 = 0x277D75000uLL;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v31 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          if ([v13 attachmentType] == 11)
          {
            [MEMORY[0x277D36788] pdfURLForAttachment:v13];
            v14 = v9;
            v15 = v10;
            v17 = v16 = v11;
            v18 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v17];
            v19 = [v13 pasteboardData];
            v20 = [v19 persistenceData];

            v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v21 ic_setNonNilObject:v20 forKey:v27];
            v22 = [v26 identifier];
            [v21 ic_setNonNilObject:v18 forKey:v22];

            [v29 addObject:v21];
            v11 = v16;
            v10 = v15;
            v9 = v14;
          }

          v23 = [*(v11 + 2064) generalPasteboard];
          [v23 setItems:v29];

          LOBYTE(v7) = ([v29 count] != 0) | v7;
        }

        v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
    }

    else
    {
      LOBYTE(v7) = 0;
    }

    v5 = v25;
  }

  return v7 & 1;
}

- (id)activityTypesThatInhibitPDFGeneration
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.mobilenotes.markup";
  v4[1] = @"com.apple.mobilenotes.findInNote";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

@end