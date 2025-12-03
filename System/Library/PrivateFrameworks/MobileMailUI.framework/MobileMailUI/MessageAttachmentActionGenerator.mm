@interface MessageAttachmentActionGenerator
+ (id)_saveToCameraRollActionForFutureRepresentations:(id)representations title:(id)title image:(id)image;
+ (id)markupDocumentActionForURL:(id)l messageObjectID:(id)d mailboxObjectID:(id)iD subject:(id)subject senderDisplayName:(id)name shouldShowReplyAll:(BOOL)all originView:(id)view useFullScreenPresentation:(BOOL)self0 contentRepresentationHandlingDelegate:(id)self1 assetViewerManager:(id)self2;
+ (id)quicklookActionForAttachmentContext:(id)context alternateAction:(id)action originView:(id)view attachmentRect:(CGRect)rect useFullScreenPresentation:(BOOL)presentation;
+ (id)quicklookActionForURL:(id)l messageObjectID:(id)d mailboxObjectID:(id)iD subject:(id)subject senderDisplayName:(id)name shouldShowReplyAll:(BOOL)all originView:(id)view attachmentRect:(CGRect)self0 useFullScreenPresentation:(BOOL)self1 contentRepresentationHandlingDelegate:(id)self2 assetViewerManager:(id)self3;
+ (id)saveAllAttachmentsActionWithTitle:(id)title futureRepresentations:(id)representations;
+ (id)saveImageActionForFutureRepresentation:(id)representation;
+ (id)saveVideoActionForFutureRepresentation:(id)representation;
@end

@implementation MessageAttachmentActionGenerator

+ (id)_saveToCameraRollActionForFutureRepresentations:(id)representations title:(id)title image:(id)image
{
  representationsCopy = representations;
  v8 = MEMORY[0x277D750C8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__MessageAttachmentActionGenerator__saveToCameraRollActionForFutureRepresentations_title_image___block_invoke;
  v12[3] = &unk_2781814E0;
  v13 = representationsCopy;
  v9 = representationsCopy;
  v10 = [v8 actionWithTitle:title image:image identifier:0 handler:v12];

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

+ (id)saveImageActionForFutureRepresentation:(id)representation
{
  v12[1] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v12[0] = representationCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"SAVE_IMAGE" value:&stru_2826D1AD8 table:@"Main"];
  v8 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6818]];
  v9 = [self _saveToCameraRollActionForFutureRepresentations:v5 title:v7 image:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)saveVideoActionForFutureRepresentation:(id)representation
{
  v12[1] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v12[0] = representationCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [mainBundle localizedStringForKey:@"SAVE_VIDEO" value:&stru_2826D1AD8 table:@"Main"];
  v8 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6818]];
  v9 = [self _saveToCameraRollActionForFutureRepresentations:v5 title:v7 image:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)saveAllAttachmentsActionWithTitle:(id)title futureRepresentations:(id)representations
{
  titleCopy = title;
  representationsCopy = representations;
  v8 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6820]];
  v9 = [self _saveToCameraRollActionForFutureRepresentations:representationsCopy title:titleCopy image:v8];

  return v9;
}

+ (id)quicklookActionForURL:(id)l messageObjectID:(id)d mailboxObjectID:(id)iD subject:(id)subject senderDisplayName:(id)name shouldShowReplyAll:(BOOL)all originView:(id)view attachmentRect:(CGRect)self0 useFullScreenPresentation:(BOOL)self1 contentRepresentationHandlingDelegate:(id)self2 assetViewerManager:(id)self3
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  subjectCopy = subject;
  nameCopy = name;
  viewCopy = view;
  delegateCopy = delegate;
  v41 = subjectCopy;
  if ([MEMORY[0x277D75418] mf_isPadIdiom])
  {
    v25 = objc_alloc(MEMORY[0x277CD6880]);
    BYTE1(v40) = [delegateCopy isSourceManagedForURL:lCopy];
    LOBYTE(v40) = all;
    v26 = [v25 initWithAttachmentURL:lCopy editBehavior:1 messageObjectID:dCopy mailboxObjectID:iDCopy subject:subjectCopy senderDisplayName:nameCopy shouldShowReplyAll:v40 contentManaged:?];
  }

  else
  {
    v26 = 0;
  }

  v27 = MEMORY[0x277D750C8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v29 = [mainBundle localizedStringForKey:@"QUICK_LOOK" value:&stru_2826D1AD8 table:@"Main"];
  v30 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD6800]];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __244__MessageAttachmentActionGenerator_quicklookActionForURL_messageObjectID_mailboxObjectID_subject_senderDisplayName_shouldShowReplyAll_originView_attachmentRect_useFullScreenPresentation_contentRepresentationHandlingDelegate_assetViewerManager___block_invoke;
  v47[3] = &unk_278181508;
  v31 = delegateCopy;
  v48 = v31;
  v32 = lCopy;
  v49 = v32;
  v33 = [v27 actionWithTitle:v29 image:v30 identifier:0 handler:v47];

  if (v26)
  {
    v34 = viewCopy;
    v35 = [self quicklookActionForAttachmentContext:v26 alternateAction:v33 originView:viewCopy attachmentRect:presentation useFullScreenPresentation:{x, y, width, height}];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v37 = [mainBundle2 localizedStringForKey:@"OPEN_IN_NEW_WINDOW" value:&stru_2826D1AD8 table:@"Main"];
    [v35 setTitle:v37];

    v38 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD67F0]];
    [v35 setImage:v38];
  }

  else
  {
    v35 = v33;
    v34 = viewCopy;
  }

  return v35;
}

+ (id)markupDocumentActionForURL:(id)l messageObjectID:(id)d mailboxObjectID:(id)iD subject:(id)subject senderDisplayName:(id)name shouldShowReplyAll:(BOOL)all originView:(id)view useFullScreenPresentation:(BOOL)self0 contentRepresentationHandlingDelegate:(id)self1 assetViewerManager:(id)self2
{
  HIDWORD(v39) = presentation;
  lCopy = l;
  dCopy = d;
  iDCopy = iD;
  subjectCopy = subject;
  nameCopy = name;
  viewCopy = view;
  v42 = dCopy;
  delegateCopy = delegate;
  v40 = subjectCopy;
  v41 = iDCopy;
  if ([MEMORY[0x277D75418] mf_isPadIdiom])
  {
    v22 = objc_alloc(MEMORY[0x277CD6880]);
    BYTE1(v39) = [delegateCopy isSourceManagedForURL:lCopy];
    LOBYTE(v39) = all;
    v23 = [v22 initWithAttachmentURL:lCopy editBehavior:2 messageObjectID:dCopy mailboxObjectID:iDCopy subject:subjectCopy senderDisplayName:nameCopy shouldShowReplyAll:v39 contentManaged:?];
  }

  else
  {
    v23 = 0;
  }

  v24 = MEMORY[0x277D750C8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v26 = [mainBundle localizedStringForKey:@"MARKUP_DOCUMENT" value:&stru_2826D1AD8 table:@"Main"];
  v27 = *MEMORY[0x277CD67D8];
  v28 = [MEMORY[0x277D755B8] systemImageNamed:*MEMORY[0x277CD67D8]];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __234__MessageAttachmentActionGenerator_markupDocumentActionForURL_messageObjectID_mailboxObjectID_subject_senderDisplayName_shouldShowReplyAll_originView_useFullScreenPresentation_contentRepresentationHandlingDelegate_assetViewerManager___block_invoke;
  v46[3] = &unk_278181508;
  v29 = delegateCopy;
  v47 = v29;
  v30 = lCopy;
  v48 = v30;
  v31 = [v24 actionWithTitle:v26 image:v28 identifier:0 handler:v46];

  if (v23)
  {
    v32 = [self quicklookActionForAttachmentContext:v23 alternateAction:v31 originView:viewCopy attachmentRect:HIDWORD(v39) useFullScreenPresentation:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v34 = [mainBundle2 localizedStringForKey:@"MARKUP_DOCUMENT" value:&stru_2826D1AD8 table:@"Main"];
    [v32 setTitle:v34];

    v35 = [MEMORY[0x277D755B8] systemImageNamed:v27];
    v37 = nameCopy;
    v36 = v42;
    [v32 setImage:v35];
  }

  else
  {
    v32 = v31;
    v37 = nameCopy;
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

+ (id)quicklookActionForAttachmentContext:(id)context alternateAction:(id)action originView:(id)view attachmentRect:(CGRect)rect useFullScreenPresentation:(BOOL)presentation
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contextCopy = context;
  viewCopy = view;
  v16 = MEMORY[0x277D75DB0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __140__MessageAttachmentActionGenerator_quicklookActionForAttachmentContext_alternateAction_originView_attachmentRect_useFullScreenPresentation___block_invoke;
  v21[3] = &unk_278181530;
  presentationCopy = presentation;
  v22 = contextCopy;
  v23 = viewCopy;
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  v17 = viewCopy;
  v18 = contextCopy;
  v19 = [v16 actionWithIdentifier:0 alternateAction:action configurationProvider:v21];

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