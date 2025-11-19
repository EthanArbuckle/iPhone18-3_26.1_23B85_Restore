@interface MessageAttachmentActionGenerator
+ (id)_saveToCameraRollActionForFutureRepresentations:(id)a3 title:(id)a4 image:(id)a5;
+ (id)markupDocumentActionForURL:(id)a3 messageObjectID:(id)a4 mailboxObjectID:(id)a5 subject:(id)a6 senderDisplayName:(id)a7 shouldShowReplyAll:(BOOL)a8 originView:(id)a9 useFullScreenPresentation:(BOOL)a10 contentRepresentationHandlingDelegate:(id)a11 assetViewerManager:(id)a12;
+ (id)quicklookActionForAttachmentContext:(id)a3 alternateAction:(id)a4 originView:(id)a5 attachmentRect:(CGRect)a6 useFullScreenPresentation:(BOOL)a7;
+ (id)quicklookActionForURL:(id)a3 messageObjectID:(id)a4 mailboxObjectID:(id)a5 subject:(id)a6 senderDisplayName:(id)a7 shouldShowReplyAll:(BOOL)a8 originView:(id)a9 attachmentRect:(CGRect)a10 useFullScreenPresentation:(BOOL)a11 contentRepresentationHandlingDelegate:(id)a12 assetViewerManager:(id)a13;
+ (id)saveAllAttachmentsActionWithTitle:(id)a3 futureRepresentations:(id)a4;
+ (id)saveImageActionForFutureRepresentation:(id)a3;
+ (id)saveVideoActionForFutureRepresentation:(id)a3;
@end

@implementation MessageAttachmentActionGenerator

+ (id)_saveToCameraRollActionForFutureRepresentations:(id)a3 title:(id)a4 image:(id)a5
{
  v7 = a3;
  v8 = MEMORY[0x277D750C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__MessageAttachmentActionGenerator__saveToCameraRollActionForFutureRepresentations_title_image___block_invoke;
  v12[3] = &unk_2781814E0;
  v13 = v7;
  v9 = v7;
  v10 = [v8 actionWithTitle:a4 image:a5 identifier:0 handler:v12];

  return v10;
}

void __96__MessageAttachmentActionGenerator__saveToCameraRollActionForFutureRepresentations_title_image___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    do
    {
      v4 = 0;
      do
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * v4);
        v6 = [MEMORY[0x277D071B8] mainThreadScheduler];
        [v5 onScheduler:v6 addSuccessBlock:&__block_literal_global];

        ++v4;
      }

      while (v2 != v4);
      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __96__MessageAttachmentActionGenerator__saveToCameraRollActionForFutureRepresentations_title_image___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 contentURL];
  v4 = MFCameraRollSaveAssetWithURL();
  v5 = 0;

  if ((v4 & 1) == 0)
  {
    v6 = [v2 contentURL];
    NSLog(&cfstr_FailedToIngest.isa, v6, v5);
  }
}

+ (id)saveImageActionForFutureRepresentation:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"SAVE_IMAGE" value:&stru_2826D1AD8 table:@"Main"];
  v8 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6818]];
  v9 = [a1 _saveToCameraRollActionForFutureRepresentations:v5 title:v7 image:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)saveVideoActionForFutureRepresentation:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 localizedStringForKey:@"SAVE_VIDEO" value:&stru_2826D1AD8 table:@"Main"];
  v8 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6818]];
  v9 = [a1 _saveToCameraRollActionForFutureRepresentations:v5 title:v7 image:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)saveAllAttachmentsActionWithTitle:(id)a3 futureRepresentations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6820]];
  v9 = [a1 _saveToCameraRollActionForFutureRepresentations:v7 title:v6 image:v8];

  return v9;
}

+ (id)quicklookActionForURL:(id)a3 messageObjectID:(id)a4 mailboxObjectID:(id)a5 subject:(id)a6 senderDisplayName:(id)a7 shouldShowReplyAll:(BOOL)a8 originView:(id)a9 attachmentRect:(CGRect)a10 useFullScreenPresentation:(BOOL)a11 contentRepresentationHandlingDelegate:(id)a12 assetViewerManager:(id)a13
{
  height = a10.size.height;
  width = a10.size.width;
  y = a10.origin.y;
  x = a10.origin.x;
  v23 = a3;
  v45 = a4;
  v44 = a5;
  v24 = a6;
  v43 = a7;
  v42 = a9;
  v46 = a12;
  v41 = v24;
  if ([MEMORY[0x277D75418] mf_isPadIdiom])
  {
    v25 = objc_alloc(MEMORY[0x277CD6880]);
    BYTE1(v40) = [v46 isSourceManagedForURL:v23];
    LOBYTE(v40) = a8;
    v26 = [v25 initWithAttachmentURL:v23 editBehavior:1 messageObjectID:v45 mailboxObjectID:v44 subject:v24 senderDisplayName:v43 shouldShowReplyAll:v40 contentManaged:?];
  }

  else
  {
    v26 = 0;
  }

  v27 = MEMORY[0x277D750C8];
  v28 = [MEMORY[0x277CCA8D8] mainBundle];
  v29 = [v28 localizedStringForKey:@"QUICK_LOOK" value:&stru_2826D1AD8 table:@"Main"];
  v30 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6800]];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __244__MessageAttachmentActionGenerator_quicklookActionForURL_messageObjectID_mailboxObjectID_subject_senderDisplayName_shouldShowReplyAll_originView_attachmentRect_useFullScreenPresentation_contentRepresentationHandlingDelegate_assetViewerManager___block_invoke;
  v47[3] = &unk_278181508;
  v31 = v46;
  v48 = v31;
  v32 = v23;
  v49 = v32;
  v33 = [v27 actionWithTitle:v29 image:v30 identifier:0 handler:v47];

  if (v26)
  {
    v34 = v42;
    v35 = [a1 quicklookActionForAttachmentContext:v26 alternateAction:v33 originView:v42 attachmentRect:a11 useFullScreenPresentation:{x, y, width, height}];
    v36 = [MEMORY[0x277CCA8D8] mainBundle];
    v37 = [v36 localizedStringForKey:@"OPEN_IN_NEW_WINDOW" value:&stru_2826D1AD8 table:@"Main"];
    [v35 setTitle:v37];

    v38 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD67F0]];
    [v35 setImage:v38];
  }

  else
  {
    v35 = v33;
    v34 = v42;
  }

  return v35;
}

+ (id)markupDocumentActionForURL:(id)a3 messageObjectID:(id)a4 mailboxObjectID:(id)a5 subject:(id)a6 senderDisplayName:(id)a7 shouldShowReplyAll:(BOOL)a8 originView:(id)a9 useFullScreenPresentation:(BOOL)a10 contentRepresentationHandlingDelegate:(id)a11 assetViewerManager:(id)a12
{
  HIDWORD(v39) = a10;
  v45 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v44 = a9;
  v42 = v18;
  v43 = a11;
  v40 = v20;
  v41 = v19;
  if ([MEMORY[0x277D75418] mf_isPadIdiom])
  {
    v22 = objc_alloc(MEMORY[0x277CD6880]);
    BYTE1(v39) = [v43 isSourceManagedForURL:v45];
    LOBYTE(v39) = a8;
    v23 = [v22 initWithAttachmentURL:v45 editBehavior:2 messageObjectID:v18 mailboxObjectID:v19 subject:v20 senderDisplayName:v21 shouldShowReplyAll:v39 contentManaged:?];
  }

  else
  {
    v23 = 0;
  }

  v24 = MEMORY[0x277D750C8];
  v25 = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [v25 localizedStringForKey:@"MARKUP_DOCUMENT" value:&stru_2826D1AD8 table:@"Main"];
  v27 = *MEMORY[0x277CD67D8];
  v28 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD67D8]];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __234__MessageAttachmentActionGenerator_markupDocumentActionForURL_messageObjectID_mailboxObjectID_subject_senderDisplayName_shouldShowReplyAll_originView_useFullScreenPresentation_contentRepresentationHandlingDelegate_assetViewerManager___block_invoke;
  v46[3] = &unk_278181508;
  v29 = v43;
  v47 = v29;
  v30 = v45;
  v48 = v30;
  v31 = [v24 actionWithTitle:v26 image:v28 identifier:0 handler:v46];

  if (v23)
  {
    v32 = [a1 quicklookActionForAttachmentContext:v23 alternateAction:v31 originView:v44 attachmentRect:HIDWORD(v39) useFullScreenPresentation:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v33 = [MEMORY[0x277CCA8D8] mainBundle];
    v34 = [v33 localizedStringForKey:@"MARKUP_DOCUMENT" value:&stru_2826D1AD8 table:@"Main"];
    [v32 setTitle:v34];

    v35 = [MEMORY[0x277D755B8] systemImageNamed:v27];
    v37 = v21;
    v36 = v42;
    [v32 setImage:v35];
  }

  else
  {
    v32 = v31;
    v37 = v21;
    v36 = v42;
  }

  return v32;
}

void __234__MessageAttachmentActionGenerator_markupDocumentActionForURL_messageObjectID_mailboxObjectID_subject_senderDisplayName_shouldShowReplyAll_originView_useFullScreenPresentation_contentRepresentationHandlingDelegate_assetViewerManager___block_invoke(uint64_t a1, void *a2)
{
  v7[9] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v7[0] = 0;
  if (!MarkupUILibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __MarkupUILibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v7[7] = 0;
    v7[8] = 0;
    v7[6] = "/System/Library/PrivateFrameworks/MarkupUI.framework/MarkupUI";
    MarkupUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MarkupUILibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MarkupUILibrary(void)"];
    [a1 handleFailureInFunction:v6 file:@"MessageActivityViewController.m" lineNumber:33 description:{@"%s", v7[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v4 = v7[0];
  if (v7[0])
  {
LABEL_7:
    free(v4);
  }

  [*(a1 + 32) markupURL:*(a1 + 40)];

  v5 = *MEMORY[0x277D85DE8];
}

+ (id)quicklookActionForAttachmentContext:(id)a3 alternateAction:(id)a4 originView:(id)a5 attachmentRect:(CGRect)a6 useFullScreenPresentation:(BOOL)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v14 = a3;
  v15 = a5;
  v16 = MEMORY[0x277D75DB0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __140__MessageAttachmentActionGenerator_quicklookActionForAttachmentContext_alternateAction_originView_attachmentRect_useFullScreenPresentation___block_invoke;
  v21[3] = &unk_278181530;
  v28 = a7;
  v22 = v14;
  v23 = v15;
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  v17 = v15;
  v18 = v14;
  v19 = [v16 actionWithIdentifier:0 alternateAction:a4 configurationProvider:v21];

  return v19;
}

id __140__MessageAttachmentActionGenerator_quicklookActionForAttachmentContext_alternateAction_originView_attachmentRect_useFullScreenPresentation___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D75DB8]);
  v3 = [*(a1 + 32) userActivity];
  v4 = [v2 initWithUserActivity:v3];

  if (*(a1 + 80) == 1 && *(a1 + 40) && !CGRectIsEmpty(*(a1 + 48)))
  {
    v5 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    v6 = [MEMORY[0x277D75348] clearColor];
    [v5 setBackgroundColor:v6];

    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    UIRectGetCenter();
    v13 = [objc_alloc(MEMORY[0x277D758E0]) initWithContainer:*(a1 + 40) center:{v11, v12}];
    v14 = objc_alloc_init(MEMORY[0x277D758D8]);
    v15 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:v5 parameters:v14 target:v13];
    [v4 setPreview:v15];

    v16 = objc_alloc_init(MEMORY[0x277D75DC0]);
    v17 = [MEMORY[0x277D75DC8] _largeProminentPlacement];
    [v16 setPlacement:v17];

    [v4 setOptions:v16];
  }

  return v4;
}

@end