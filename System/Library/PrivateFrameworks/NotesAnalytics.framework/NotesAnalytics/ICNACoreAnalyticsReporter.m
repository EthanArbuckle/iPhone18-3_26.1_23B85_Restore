@interface ICNACoreAnalyticsReporter
+ (id)analyticsQueue;
+ (id)sharedReporter;
- (ICNACoreAnalyticsReporter)init;
- (id)consumeNoteViewApproach;
- (void)appSessionWillEnd:(id)a3;
- (void)fireDeepLinkCreationEventWithNote:(id)a3 contentItem:(id)a4;
- (void)fireNoteViewEventWithNote:(id)a3 noteData:(id)a4 noteContentData:(id)a5;
- (void)fireSnapshotWithNoteReportToDevice:(id)a3;
@end

@implementation ICNACoreAnalyticsReporter

+ (id)sharedReporter
{
  if (s_onceToken_3 != -1)
  {
    +[ICNACoreAnalyticsReporter sharedReporter];
  }

  v3 = sharedReporter_s_instance_1;

  return v3;
}

uint64_t __43__ICNACoreAnalyticsReporter_sharedReporter__block_invoke()
{
  sharedReporter_s_instance_1 = objc_alloc_init(ICNACoreAnalyticsReporter);

  return MEMORY[0x2821F96F8]();
}

- (ICNACoreAnalyticsReporter)init
{
  v5.receiver = self;
  v5.super_class = ICNACoreAnalyticsReporter;
  v2 = [(ICNAOptedInObject *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_appSessionWillEnd_ name:@"ICNASessionWillEndNotification" object:0];
  }

  return v2;
}

+ (id)analyticsQueue
{
  if (analyticsQueue_onceToken != -1)
  {
    +[ICNACoreAnalyticsReporter analyticsQueue];
  }

  v3 = analyticsQueue_sAnalyticsQueue;

  return v3;
}

void __43__ICNACoreAnalyticsReporter_analyticsQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.analytics", v2);
  v1 = analyticsQueue_sAnalyticsQueue;
  analyticsQueue_sAnalyticsQueue = v0;
}

- (id)consumeNoteViewApproach
{
  noteViewApproach = self->_noteViewApproach;
  if (noteViewApproach)
  {
    v4 = [(NSString *)noteViewApproach copy];
  }

  else
  {
    v4 = @"iOSInAppSelection";
  }

  v5 = self->_noteViewApproach;
  self->_noteViewApproach = 0;

  return v4;
}

- (void)appSessionWillEnd:(id)a3
{
  v4 = [objc_opt_class() analyticsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ICNACoreAnalyticsReporter_appSessionWillEnd___block_invoke;
  block[3] = &unk_2799AF130;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)fireDeepLinkCreationEventWithNote:(id)a3 contentItem:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 sourceIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [ICNAEventReporter maskString:v6 withoutPrefix:@"com.apple." withMask:@"thirdPartyBundleID"];
  }

  else
  {
    v8 = @"unknown";
  }

  v12[0] = @"isDestinationNoteSystemPaper";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v5, "isSystemPaper")}];
  v12[1] = @"sourceAppBundleID";
  v13[0] = v9;
  v13[1] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  AnalyticsSendEvent();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)fireNoteViewEventWithNote:(id)a3 noteData:(id)a4 noteContentData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_opt_class() analyticsQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke;
  v15[3] = &unk_2799AFEA0;
  v16 = v8;
  v17 = self;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke(id *a1)
{
  v2 = [a1[4] managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke_2;
  v5[3] = &unk_2799AFEA0;
  v4 = *(a1 + 2);
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  v7 = a1[6];
  v8 = a1[7];
  [v2 performBlock:v5];
}

void __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke_2(id *a1)
{
  v41[10] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] currentlyViewedNoteIdentifier];
  v3 = [a1[5] identifier];
  v4 = [v2 isEqualToString:v3];

  if ((v4 & 1) == 0)
  {
    v5 = [a1[6] hasPaperKitDrawing];
    if ([v5 BOOLValue])
    {
      v6 = 1;
    }

    else
    {
      v7 = [a1[6] hasAttachmentInlineDrawingV1];
      if ([v7 BOOLValue])
      {
        v6 = 1;
      }

      else
      {
        v8 = [a1[6] hasAttachmentInlineDrawingV2];
        if ([v8 BOOLValue])
        {
          v6 = 1;
        }

        else
        {
          v9 = [a1[6] hasAttachmentFullscreenDrawing];
          v6 = [v9 BOOLValue];
        }
      }
    }

    v10 = [a1[5] textStorageWithoutCreating];
    v11 = [v10 string];
    v12 = [v11 ic_containsNonWhitespaceAndAttachmentCharacters];

    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v13 = [a1[5] visibleAttachments];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke_3;
    v27[3] = &unk_2799AFE78;
    v27[4] = &v36;
    v27[5] = &v32;
    v27[6] = &v28;
    [v13 enumerateObjectsUsingBlock:v27];

    v40[0] = @"hasDrawing";
    v26 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v41[0] = v26;
    v40[1] = @"hasImage";
    v25 = [a1[6] hasAttachedPhoto];
    v41[1] = v25;
    v40[2] = @"hasOtherLinks";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:*(v29 + 24)];
    v41[2] = v14;
    v40[3] = @"hasDeeplinks";
    v15 = [MEMORY[0x277CCABB0] numberWithBool:*(v33 + 24)];
    v41[3] = v15;
    v40[4] = @"hasTable";
    v16 = [a1[6] hasTable];
    v41[4] = v16;
    v40[5] = @"hasTypedText";
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    v41[5] = v17;
    v40[6] = @"hasWebHighlights";
    v18 = [MEMORY[0x277CCABB0] numberWithBool:*(v37 + 24)];
    v41[6] = v18;
    v40[7] = @"isSystemPaper";
    v19 = [a1[7] isScrapPaper];
    v41[7] = v19;
    v40[8] = @"noteIsNewlyCreated";
    v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1[5], "isEmpty")}];
    v41[8] = v20;
    v40[9] = @"systemPaperInvocationMethod";
    v21 = [a1[4] consumeNoteViewApproach];
    v41[9] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:10];
    AnalyticsSendEvent();

    v23 = [a1[5] identifier];
    [a1[4] setCurrentlyViewedNoteIdentifier:v23];

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(&v32, 8);
    _Block_object_dispose(&v36, 8);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __80__ICNACoreAnalyticsReporter_fireNoteViewEventWithNote_noteData_noteContentData___block_invoke_3(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v9 = v5;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v6 = [ICNAEventReporter attachmentHasDeepLinkSafariHighlight:v5];
    v5 = v9;
    *(*(a1[4] + 8) + 24) |= v6;
  }

  v7 = [v5 hasDeepLink];
  *(*(a1[5] + 8) + 24) |= v7;
  if ((v7 & 1) == 0 && (*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) |= [v9 isURL];
  }

  if (*(*(a1[4] + 8) + 24) == 1 && *(*(a1[5] + 8) + 24) == 1)
  {
    v8 = *(*(a1[6] + 8) + 24);
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8 & 1;
}

- (void)fireSnapshotWithNoteReportToDevice:(id)a3
{
  v24[14] = *MEMORY[0x277D85DE8];
  v23[0] = @"countOfModernNotes";
  v3 = MEMORY[0x277CCABB0];
  v4 = a3;
  v22 = [v3 numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfModernNotes"))}];
  v24[0] = v22;
  v23[1] = @"countOfModernNotesWithDeeplinks";
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfModernNotesWithDeeplink"))}];
  v24[1] = v21;
  v23[2] = @"countOfModernNotesWithDrawing";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfModernNotesWithDrawing"))}];
  v24[2] = v20;
  v23[3] = @"countOfModernNotesWithImage";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfModernNotesWithImage"))}];
  v24[3] = v19;
  v23[4] = @"countOfModernNotesWithOtherLinks";
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfModernNotesWithLinks"))}];
  v24[4] = v18;
  v23[5] = @"countOfModernNotesWithTable";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfModernNotesWithTable"))}];
  v24[5] = v17;
  v23[6] = @"countOfModernNotesWithWebHighlights";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfModernNotesWithWebHighlights"))}];
  v24[6] = v5;
  v23[7] = @"countOfSystemPaper";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfScrapPapers"))}];
  v24[7] = v6;
  v23[8] = @"countOfSystemPaperWithDeeplinks";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfScrapPapersWithDeepLink"))}];
  v24[8] = v7;
  v23[9] = @"countOfSystemPaperWithDrawing";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfScrapPapersWithDrawing"))}];
  v24[9] = v8;
  v23[10] = @"countOfSystemPaperWithImage";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfScrapPapersWithImage"))}];
  v24[10] = v9;
  v23[11] = @"countOfSystemPaperWithOtherLinks";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfScrapPapersWithLinks"))}];
  v24[11] = v10;
  v23[12] = @"countOfSystemPaperWithTable";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{ICNARoundTo2SigFigsInt(objc_msgSend(v4, "countOfScrapPapersWithTables"))}];
  v24[12] = v11;
  v23[13] = @"countOfSystemPaperWithWebHighlights";
  v12 = MEMORY[0x277CCABB0];
  v13 = [v4 countOfScrapPapersWithWebHighlights];

  v14 = [v12 numberWithInteger:ICNARoundTo2SigFigsInt(v13)];
  v24[13] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:14];
  AnalyticsSendEvent();

  v16 = *MEMORY[0x277D85DE8];
}

@end