@interface ICASAccountNotesTwoFactorItemData
- (ICASAccountNotesTwoFactorItemData)initWithTotalCountOfNotesWithCollabAndDocScan:(id)scan totalCountOfNotesWithCollabAndInlineDrawingV1:(id)v1 totalCountOfNotesWithCollabAndInlineDrawingV2:(id)v2 totalCountOfNotesWithCollabAndFullscreenDrawing:(id)drawing totalCountOfNotesWithCollabAndTables:(id)tables totalCountOfNotesWithCollabAndOtherAttachments:(id)attachments totalCountOfNotesWithCollabAndChecklist:(id)checklist totalCountOfNotesWithCollabAndIsPinned:(id)self0 totalCountOfNotesWithDocScanAndInlineDrawingV1:(id)self1 totalCountOfNotesWithDocScanAndInlineDrawingV2:(id)self2 totalCountOfNotesWithDocScanAndFullscreenDrawing:(id)self3 totalCountOfNotesWithDocScanAndTables:(id)self4 totalCountOfNotesWithDocScanAndOtherAttachments:(id)self5 totalCountOfNotesWithDocScanAndChecklist:(id)self6 totalCountOfNotesWithDocScanAndIsPinned:(id)self7 totalCountOfNotesWithDocScanAndIsLocked:(id)self8 totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2:(id)self9 totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing:(id)andFullscreenDrawing totalCountOfNotesWithInlineDrawingV1AndTables:(id)v1AndTables totalCountOfNotesWithInlineDrawingV1AndOtherAttachments:(id)andOtherAttachments totalCountOfNotesWithInlineDrawingV1AndChecklist:(id)v1AndChecklist totalCountOfNotesWithInlineDrawingV1AndIsPinned:(id)andIsPinned totalCountOfNotesWithInlineDrawingV1AndIsLocked:(id)isLocked totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing:(id)v2AndFullscreenDrawing totalCountOfNotesWithInlineDrawingV2AndTables:(id)v2AndTables totalCountOfNotesWithInlineDrawingV2AndOtherAttachments:(id)v2AndOtherAttachments totalCountOfNotesWithInlineDrawingV2AndChecklist:(id)v2AndChecklist totalCountOfNotesWithInlineDrawingV2AndIsPinned:(id)scan0 totalCountOfNotesWithInlineDrawingV2AndIsLocked:(id)scan1 totalCountOfNotesWithFullscreenDrawingAndTables:(id)scan2 totalCountOfNotesWithFullscreenDrawingAndOtherAttachments:(id)scan3 totalCountOfNotesWithFullscreenDrawingAndChecklist:(id)scan4 totalCountOfNotesWithFullscreenDrawingAndIsPinned:(id)scan5 totalCountOfNotesWithFullscreenDrawingAndIsLocked:(id)scan6 totalCountOfNotesWithTablesAndOtherAttachments:(id)scan7 totalCountOfNotesWithTablesAndChecklist:(id)scan8 totalCountOfNotesWithTablesAndIsPinned:(id)scan9 totalCountOfNotesWithTablesAndIsLocked:(id)v10 totalCountOfNotesWithOtherAttachmentsAndChecklist:(id)v11 totalCountOfNotesWithOtherAttachmentsAndIsPinned:(id)v12 totalCountOfNotesWithOtherAttachmentsAndIsLocked:(id)v13 totalCountOfNotesWithChecklistAndIsPinned:(id)v14 totalCountOfNotesIsPinnedAndIsLocked:(id)v15;
- (id)toDict;
@end

@implementation ICASAccountNotesTwoFactorItemData

- (ICASAccountNotesTwoFactorItemData)initWithTotalCountOfNotesWithCollabAndDocScan:(id)scan totalCountOfNotesWithCollabAndInlineDrawingV1:(id)v1 totalCountOfNotesWithCollabAndInlineDrawingV2:(id)v2 totalCountOfNotesWithCollabAndFullscreenDrawing:(id)drawing totalCountOfNotesWithCollabAndTables:(id)tables totalCountOfNotesWithCollabAndOtherAttachments:(id)attachments totalCountOfNotesWithCollabAndChecklist:(id)checklist totalCountOfNotesWithCollabAndIsPinned:(id)self0 totalCountOfNotesWithDocScanAndInlineDrawingV1:(id)self1 totalCountOfNotesWithDocScanAndInlineDrawingV2:(id)self2 totalCountOfNotesWithDocScanAndFullscreenDrawing:(id)self3 totalCountOfNotesWithDocScanAndTables:(id)self4 totalCountOfNotesWithDocScanAndOtherAttachments:(id)self5 totalCountOfNotesWithDocScanAndChecklist:(id)self6 totalCountOfNotesWithDocScanAndIsPinned:(id)self7 totalCountOfNotesWithDocScanAndIsLocked:(id)self8 totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2:(id)self9 totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing:(id)andFullscreenDrawing totalCountOfNotesWithInlineDrawingV1AndTables:(id)v1AndTables totalCountOfNotesWithInlineDrawingV1AndOtherAttachments:(id)andOtherAttachments totalCountOfNotesWithInlineDrawingV1AndChecklist:(id)v1AndChecklist totalCountOfNotesWithInlineDrawingV1AndIsPinned:(id)andIsPinned totalCountOfNotesWithInlineDrawingV1AndIsLocked:(id)isLocked totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing:(id)v2AndFullscreenDrawing totalCountOfNotesWithInlineDrawingV2AndTables:(id)v2AndTables totalCountOfNotesWithInlineDrawingV2AndOtherAttachments:(id)v2AndOtherAttachments totalCountOfNotesWithInlineDrawingV2AndChecklist:(id)v2AndChecklist totalCountOfNotesWithInlineDrawingV2AndIsPinned:(id)scan0 totalCountOfNotesWithInlineDrawingV2AndIsLocked:(id)scan1 totalCountOfNotesWithFullscreenDrawingAndTables:(id)scan2 totalCountOfNotesWithFullscreenDrawingAndOtherAttachments:(id)scan3 totalCountOfNotesWithFullscreenDrawingAndChecklist:(id)scan4 totalCountOfNotesWithFullscreenDrawingAndIsPinned:(id)scan5 totalCountOfNotesWithFullscreenDrawingAndIsLocked:(id)scan6 totalCountOfNotesWithTablesAndOtherAttachments:(id)scan7 totalCountOfNotesWithTablesAndChecklist:(id)scan8 totalCountOfNotesWithTablesAndIsPinned:(id)scan9 totalCountOfNotesWithTablesAndIsLocked:(id)v10 totalCountOfNotesWithOtherAttachmentsAndChecklist:(id)v11 totalCountOfNotesWithOtherAttachmentsAndIsPinned:(id)v12 totalCountOfNotesWithOtherAttachmentsAndIsLocked:(id)v13 totalCountOfNotesWithChecklistAndIsPinned:(id)v14 totalCountOfNotesIsPinnedAndIsLocked:(id)v15
{
  scanCopy = scan;
  v1Copy = v1;
  v2Copy = v2;
  drawingCopy = drawing;
  tablesCopy = tables;
  tablesCopy2 = tables;
  attachmentsCopy = attachments;
  checklistCopy = checklist;
  pinnedCopy = pinned;
  drawingV1Copy = drawingV1;
  drawingV2Copy = drawingV2;
  fullscreenDrawingCopy = fullscreenDrawing;
  andTablesCopy = andTables;
  otherAttachmentsCopy = otherAttachments;
  andChecklistCopy = andChecklist;
  isPinnedCopy = isPinned;
  lockedCopy = locked;
  inlineDrawingV2Copy = inlineDrawingV2;
  andFullscreenDrawingCopy = andFullscreenDrawing;
  v1AndTablesCopy = v1AndTables;
  andOtherAttachmentsCopy = andOtherAttachments;
  v1AndChecklistCopy = v1AndChecklist;
  andIsPinnedCopy = andIsPinned;
  isLockedCopy = isLocked;
  v2AndFullscreenDrawingCopy = v2AndFullscreenDrawing;
  v2AndTablesCopy = v2AndTables;
  v2AndOtherAttachmentsCopy = v2AndOtherAttachments;
  v2AndChecklistCopy = v2AndChecklist;
  v2AndIsPinnedCopy = v2AndIsPinned;
  andIsLockedCopy = andIsLocked;
  drawingAndTablesCopy = drawingAndTables;
  drawingAndOtherAttachmentsCopy = drawingAndOtherAttachments;
  drawingAndChecklistCopy = drawingAndChecklist;
  drawingAndIsPinnedCopy = drawingAndIsPinned;
  drawingAndIsLockedCopy = drawingAndIsLocked;
  tablesAndOtherAttachmentsCopy = tablesAndOtherAttachments;
  tablesAndChecklistCopy = tablesAndChecklist;
  tablesAndIsPinnedCopy = tablesAndIsPinned;
  tablesAndIsLockedCopy = tablesAndIsLocked;
  attachmentsAndChecklistCopy = attachmentsAndChecklist;
  attachmentsAndIsPinnedCopy = attachmentsAndIsPinned;
  attachmentsAndIsLockedCopy = attachmentsAndIsLocked;
  checklistAndIsPinnedCopy = checklistAndIsPinned;
  pinnedAndIsLockedCopy = pinnedAndIsLocked;
  v99.receiver = self;
  v99.super_class = ICASAccountNotesTwoFactorItemData;
  v54 = [(ICASAccountNotesTwoFactorItemData *)&v99 init];
  v55 = v54;
  if (v54)
  {
    objc_storeStrong(&v54->_totalCountOfNotesWithCollabAndDocScan, scan);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndInlineDrawingV1, v1);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndInlineDrawingV2, v2);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndFullscreenDrawing, drawing);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndTables, tablesCopy);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndOtherAttachments, attachments);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndChecklist, checklist);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndIsPinned, pinned);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndInlineDrawingV1, drawingV1);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndInlineDrawingV2, drawingV2);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndFullscreenDrawing, fullscreenDrawing);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndTables, andTables);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndOtherAttachments, otherAttachments);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndChecklist, andChecklist);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndIsPinned, isPinned);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndIsLocked, locked);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2, inlineDrawingV2);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing, andFullscreenDrawing);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndTables, v1AndTables);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndOtherAttachments, andOtherAttachments);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndChecklist, v1AndChecklist);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndIsPinned, andIsPinned);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndIsLocked, isLocked);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing, v2AndFullscreenDrawing);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndTables, v2AndTables);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndOtherAttachments, v2AndOtherAttachments);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndChecklist, v2AndChecklist);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndIsPinned, v2AndIsPinned);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndIsLocked, andIsLocked);
    objc_storeStrong(&v55->_totalCountOfNotesWithFullscreenDrawingAndTables, drawingAndTables);
    objc_storeStrong(&v55->_totalCountOfNotesWithFullscreenDrawingAndOtherAttachments, drawingAndOtherAttachments);
    objc_storeStrong(&v55->_totalCountOfNotesWithFullscreenDrawingAndChecklist, drawingAndChecklist);
    objc_storeStrong(&v55->_totalCountOfNotesWithFullscreenDrawingAndIsPinned, drawingAndIsPinned);
    objc_storeStrong(&v55->_totalCountOfNotesWithFullscreenDrawingAndIsLocked, drawingAndIsLocked);
    objc_storeStrong(&v55->_totalCountOfNotesWithTablesAndOtherAttachments, tablesAndOtherAttachments);
    objc_storeStrong(&v55->_totalCountOfNotesWithTablesAndChecklist, tablesAndChecklist);
    objc_storeStrong(&v55->_totalCountOfNotesWithTablesAndIsPinned, tablesAndIsPinned);
    objc_storeStrong(&v55->_totalCountOfNotesWithTablesAndIsLocked, tablesAndIsLocked);
    objc_storeStrong(&v55->_totalCountOfNotesWithOtherAttachmentsAndChecklist, attachmentsAndChecklist);
    objc_storeStrong(&v55->_totalCountOfNotesWithOtherAttachmentsAndIsPinned, attachmentsAndIsPinned);
    objc_storeStrong(&v55->_totalCountOfNotesWithOtherAttachmentsAndIsLocked, attachmentsAndIsLocked);
    objc_storeStrong(&v55->_totalCountOfNotesWithChecklistAndIsPinned, checklistAndIsPinned);
    objc_storeStrong(&v55->_totalCountOfNotesIsPinnedAndIsLocked, pinnedAndIsLocked);
  }

  return v55;
}

- (id)toDict
{
  v136[43] = *MEMORY[0x277D85DE8];
  v135[0] = @"totalCountOfNotesWithCollabAndDocScan";
  totalCountOfNotesWithCollabAndDocScan = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndDocScan];
  if (totalCountOfNotesWithCollabAndDocScan)
  {
    totalCountOfNotesWithCollabAndDocScan2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndDocScan];
  }

  else
  {
    totalCountOfNotesWithCollabAndDocScan2 = objc_opt_new();
  }

  v133 = totalCountOfNotesWithCollabAndDocScan2;
  v136[0] = totalCountOfNotesWithCollabAndDocScan2;
  v135[1] = @"totalCountOfNotesWithCollabAndInlineDrawingV1";
  totalCountOfNotesWithCollabAndInlineDrawingV1 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndInlineDrawingV1];
  if (totalCountOfNotesWithCollabAndInlineDrawingV1)
  {
    totalCountOfNotesWithCollabAndInlineDrawingV12 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndInlineDrawingV1];
  }

  else
  {
    totalCountOfNotesWithCollabAndInlineDrawingV12 = objc_opt_new();
  }

  v131 = totalCountOfNotesWithCollabAndInlineDrawingV12;
  v136[1] = totalCountOfNotesWithCollabAndInlineDrawingV12;
  v135[2] = @"totalCountOfNotesWithCollabAndInlineDrawingV2";
  totalCountOfNotesWithCollabAndInlineDrawingV2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndInlineDrawingV2];
  if (totalCountOfNotesWithCollabAndInlineDrawingV2)
  {
    totalCountOfNotesWithCollabAndInlineDrawingV22 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndInlineDrawingV2];
  }

  else
  {
    totalCountOfNotesWithCollabAndInlineDrawingV22 = objc_opt_new();
  }

  v129 = totalCountOfNotesWithCollabAndInlineDrawingV22;
  v136[2] = totalCountOfNotesWithCollabAndInlineDrawingV22;
  v135[3] = @"totalCountOfNotesWithCollabAndFullscreenDrawing";
  totalCountOfNotesWithCollabAndFullscreenDrawing = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndFullscreenDrawing];
  if (totalCountOfNotesWithCollabAndFullscreenDrawing)
  {
    totalCountOfNotesWithCollabAndFullscreenDrawing2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndFullscreenDrawing];
  }

  else
  {
    totalCountOfNotesWithCollabAndFullscreenDrawing2 = objc_opt_new();
  }

  v127 = totalCountOfNotesWithCollabAndFullscreenDrawing2;
  v136[3] = totalCountOfNotesWithCollabAndFullscreenDrawing2;
  v135[4] = @"totalCountOfNotesWithCollabAndTables";
  totalCountOfNotesWithCollabAndTables = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndTables];
  if (totalCountOfNotesWithCollabAndTables)
  {
    totalCountOfNotesWithCollabAndTables2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndTables];
  }

  else
  {
    totalCountOfNotesWithCollabAndTables2 = objc_opt_new();
  }

  v125 = totalCountOfNotesWithCollabAndTables2;
  v136[4] = totalCountOfNotesWithCollabAndTables2;
  v135[5] = @"totalCountOfNotesWithCollabAndOtherAttachments";
  totalCountOfNotesWithCollabAndOtherAttachments = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndOtherAttachments];
  if (totalCountOfNotesWithCollabAndOtherAttachments)
  {
    totalCountOfNotesWithCollabAndOtherAttachments2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndOtherAttachments];
  }

  else
  {
    totalCountOfNotesWithCollabAndOtherAttachments2 = objc_opt_new();
  }

  v123 = totalCountOfNotesWithCollabAndOtherAttachments2;
  v136[5] = totalCountOfNotesWithCollabAndOtherAttachments2;
  v135[6] = @"totalCountOfNotesWithCollabAndChecklist";
  totalCountOfNotesWithCollabAndChecklist = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndChecklist];
  if (totalCountOfNotesWithCollabAndChecklist)
  {
    totalCountOfNotesWithCollabAndChecklist2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndChecklist];
  }

  else
  {
    totalCountOfNotesWithCollabAndChecklist2 = objc_opt_new();
  }

  v121 = totalCountOfNotesWithCollabAndChecklist2;
  v136[6] = totalCountOfNotesWithCollabAndChecklist2;
  v135[7] = @"totalCountOfNotesWithCollabAndIsPinned";
  totalCountOfNotesWithCollabAndIsPinned = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndIsPinned];
  if (totalCountOfNotesWithCollabAndIsPinned)
  {
    totalCountOfNotesWithCollabAndIsPinned2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndIsPinned];
  }

  else
  {
    totalCountOfNotesWithCollabAndIsPinned2 = objc_opt_new();
  }

  v119 = totalCountOfNotesWithCollabAndIsPinned2;
  v136[7] = totalCountOfNotesWithCollabAndIsPinned2;
  v135[8] = @"totalCountOfNotesWithDocScanAndInlineDrawingV1";
  totalCountOfNotesWithDocScanAndInlineDrawingV1 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndInlineDrawingV1];
  if (totalCountOfNotesWithDocScanAndInlineDrawingV1)
  {
    totalCountOfNotesWithDocScanAndInlineDrawingV12 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndInlineDrawingV1];
  }

  else
  {
    totalCountOfNotesWithDocScanAndInlineDrawingV12 = objc_opt_new();
  }

  v117 = totalCountOfNotesWithDocScanAndInlineDrawingV12;
  v136[8] = totalCountOfNotesWithDocScanAndInlineDrawingV12;
  v135[9] = @"totalCountOfNotesWithDocScanAndInlineDrawingV2";
  totalCountOfNotesWithDocScanAndInlineDrawingV2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndInlineDrawingV2];
  if (totalCountOfNotesWithDocScanAndInlineDrawingV2)
  {
    totalCountOfNotesWithDocScanAndInlineDrawingV22 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndInlineDrawingV2];
  }

  else
  {
    totalCountOfNotesWithDocScanAndInlineDrawingV22 = objc_opt_new();
  }

  v115 = totalCountOfNotesWithDocScanAndInlineDrawingV22;
  v136[9] = totalCountOfNotesWithDocScanAndInlineDrawingV22;
  v135[10] = @"totalCountOfNotesWithDocScanAndFullscreenDrawing";
  totalCountOfNotesWithDocScanAndFullscreenDrawing = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndFullscreenDrawing];
  if (totalCountOfNotesWithDocScanAndFullscreenDrawing)
  {
    totalCountOfNotesWithDocScanAndFullscreenDrawing2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndFullscreenDrawing];
  }

  else
  {
    totalCountOfNotesWithDocScanAndFullscreenDrawing2 = objc_opt_new();
  }

  v113 = totalCountOfNotesWithDocScanAndFullscreenDrawing2;
  v136[10] = totalCountOfNotesWithDocScanAndFullscreenDrawing2;
  v135[11] = @"totalCountOfNotesWithDocScanAndTables";
  totalCountOfNotesWithDocScanAndTables = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndTables];
  if (totalCountOfNotesWithDocScanAndTables)
  {
    totalCountOfNotesWithDocScanAndTables2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndTables];
  }

  else
  {
    totalCountOfNotesWithDocScanAndTables2 = objc_opt_new();
  }

  v111 = totalCountOfNotesWithDocScanAndTables2;
  v136[11] = totalCountOfNotesWithDocScanAndTables2;
  v135[12] = @"totalCountOfNotesWithDocScanAndOtherAttachments";
  totalCountOfNotesWithDocScanAndOtherAttachments = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndOtherAttachments];
  if (totalCountOfNotesWithDocScanAndOtherAttachments)
  {
    totalCountOfNotesWithDocScanAndOtherAttachments2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndOtherAttachments];
  }

  else
  {
    totalCountOfNotesWithDocScanAndOtherAttachments2 = objc_opt_new();
  }

  v109 = totalCountOfNotesWithDocScanAndOtherAttachments2;
  v136[12] = totalCountOfNotesWithDocScanAndOtherAttachments2;
  v135[13] = @"totalCountOfNotesWithDocScanAndChecklist";
  totalCountOfNotesWithDocScanAndChecklist = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndChecklist];
  if (totalCountOfNotesWithDocScanAndChecklist)
  {
    totalCountOfNotesWithDocScanAndChecklist2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndChecklist];
  }

  else
  {
    totalCountOfNotesWithDocScanAndChecklist2 = objc_opt_new();
  }

  v107 = totalCountOfNotesWithDocScanAndChecklist2;
  v136[13] = totalCountOfNotesWithDocScanAndChecklist2;
  v135[14] = @"totalCountOfNotesWithDocScanAndIsPinned";
  totalCountOfNotesWithDocScanAndIsPinned = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndIsPinned];
  if (totalCountOfNotesWithDocScanAndIsPinned)
  {
    totalCountOfNotesWithDocScanAndIsPinned2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndIsPinned];
  }

  else
  {
    totalCountOfNotesWithDocScanAndIsPinned2 = objc_opt_new();
  }

  v105 = totalCountOfNotesWithDocScanAndIsPinned2;
  v136[14] = totalCountOfNotesWithDocScanAndIsPinned2;
  v135[15] = @"totalCountOfNotesWithDocScanAndIsLocked";
  totalCountOfNotesWithDocScanAndIsLocked = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndIsLocked];
  if (totalCountOfNotesWithDocScanAndIsLocked)
  {
    totalCountOfNotesWithDocScanAndIsLocked2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndIsLocked];
  }

  else
  {
    totalCountOfNotesWithDocScanAndIsLocked2 = objc_opt_new();
  }

  v103 = totalCountOfNotesWithDocScanAndIsLocked2;
  v136[15] = totalCountOfNotesWithDocScanAndIsLocked2;
  v135[16] = @"totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2";
  totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2];
  if (totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2)
  {
    totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV22 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV22 = objc_opt_new();
  }

  v101 = totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV22;
  v136[16] = totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV22;
  v135[17] = @"totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing";
  totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing];
  if (totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing)
  {
    totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing2 = objc_opt_new();
  }

  v99 = totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing2;
  v136[17] = totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing2;
  v135[18] = @"totalCountOfNotesWithInlineDrawingV1AndTables";
  totalCountOfNotesWithInlineDrawingV1AndTables = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndTables];
  if (totalCountOfNotesWithInlineDrawingV1AndTables)
  {
    totalCountOfNotesWithInlineDrawingV1AndTables2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndTables];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV1AndTables2 = objc_opt_new();
  }

  v97 = totalCountOfNotesWithInlineDrawingV1AndTables2;
  v136[18] = totalCountOfNotesWithInlineDrawingV1AndTables2;
  v135[19] = @"totalCountOfNotesWithInlineDrawingV1AndOtherAttachments";
  totalCountOfNotesWithInlineDrawingV1AndOtherAttachments = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndOtherAttachments];
  if (totalCountOfNotesWithInlineDrawingV1AndOtherAttachments)
  {
    totalCountOfNotesWithInlineDrawingV1AndOtherAttachments2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndOtherAttachments];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV1AndOtherAttachments2 = objc_opt_new();
  }

  v95 = totalCountOfNotesWithInlineDrawingV1AndOtherAttachments2;
  v136[19] = totalCountOfNotesWithInlineDrawingV1AndOtherAttachments2;
  v135[20] = @"totalCountOfNotesWithInlineDrawingV1AndChecklist";
  totalCountOfNotesWithInlineDrawingV1AndChecklist = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndChecklist];
  if (totalCountOfNotesWithInlineDrawingV1AndChecklist)
  {
    totalCountOfNotesWithInlineDrawingV1AndChecklist2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndChecklist];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV1AndChecklist2 = objc_opt_new();
  }

  v93 = totalCountOfNotesWithInlineDrawingV1AndChecklist2;
  v136[20] = totalCountOfNotesWithInlineDrawingV1AndChecklist2;
  v135[21] = @"totalCountOfNotesWithInlineDrawingV1AndIsPinned";
  totalCountOfNotesWithInlineDrawingV1AndIsPinned = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndIsPinned];
  if (totalCountOfNotesWithInlineDrawingV1AndIsPinned)
  {
    totalCountOfNotesWithInlineDrawingV1AndIsPinned2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndIsPinned];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV1AndIsPinned2 = objc_opt_new();
  }

  v91 = totalCountOfNotesWithInlineDrawingV1AndIsPinned2;
  v136[21] = totalCountOfNotesWithInlineDrawingV1AndIsPinned2;
  v135[22] = @"totalCountOfNotesWithInlineDrawingV1AndIsLocked";
  totalCountOfNotesWithInlineDrawingV1AndIsLocked = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndIsLocked];
  if (totalCountOfNotesWithInlineDrawingV1AndIsLocked)
  {
    totalCountOfNotesWithInlineDrawingV1AndIsLocked2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndIsLocked];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV1AndIsLocked2 = objc_opt_new();
  }

  v89 = totalCountOfNotesWithInlineDrawingV1AndIsLocked2;
  v136[22] = totalCountOfNotesWithInlineDrawingV1AndIsLocked2;
  v135[23] = @"totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing";
  totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing];
  if (totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing)
  {
    totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing2 = objc_opt_new();
  }

  v87 = totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing2;
  v136[23] = totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing2;
  v135[24] = @"totalCountOfNotesWithInlineDrawingV2AndTables";
  totalCountOfNotesWithInlineDrawingV2AndTables = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndTables];
  if (totalCountOfNotesWithInlineDrawingV2AndTables)
  {
    totalCountOfNotesWithInlineDrawingV2AndTables2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndTables];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV2AndTables2 = objc_opt_new();
  }

  v85 = totalCountOfNotesWithInlineDrawingV2AndTables2;
  v136[24] = totalCountOfNotesWithInlineDrawingV2AndTables2;
  v135[25] = @"totalCountOfNotesWithInlineDrawingV2AndOtherAttachments";
  totalCountOfNotesWithInlineDrawingV2AndOtherAttachments = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndOtherAttachments];
  if (totalCountOfNotesWithInlineDrawingV2AndOtherAttachments)
  {
    totalCountOfNotesWithInlineDrawingV2AndOtherAttachments2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndOtherAttachments];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV2AndOtherAttachments2 = objc_opt_new();
  }

  v83 = totalCountOfNotesWithInlineDrawingV2AndOtherAttachments2;
  v136[25] = totalCountOfNotesWithInlineDrawingV2AndOtherAttachments2;
  v135[26] = @"totalCountOfNotesWithInlineDrawingV2AndChecklist";
  totalCountOfNotesWithInlineDrawingV2AndChecklist = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndChecklist];
  if (totalCountOfNotesWithInlineDrawingV2AndChecklist)
  {
    totalCountOfNotesWithInlineDrawingV2AndChecklist2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndChecklist];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV2AndChecklist2 = objc_opt_new();
  }

  v81 = totalCountOfNotesWithInlineDrawingV2AndChecklist2;
  v136[26] = totalCountOfNotesWithInlineDrawingV2AndChecklist2;
  v135[27] = @"totalCountOfNotesWithInlineDrawingV2AndIsPinned";
  totalCountOfNotesWithInlineDrawingV2AndIsPinned = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndIsPinned];
  if (totalCountOfNotesWithInlineDrawingV2AndIsPinned)
  {
    totalCountOfNotesWithInlineDrawingV2AndIsPinned2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndIsPinned];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV2AndIsPinned2 = objc_opt_new();
  }

  v79 = totalCountOfNotesWithInlineDrawingV2AndIsPinned2;
  v136[27] = totalCountOfNotesWithInlineDrawingV2AndIsPinned2;
  v135[28] = @"totalCountOfNotesWithInlineDrawingV2AndIsLocked";
  totalCountOfNotesWithInlineDrawingV2AndIsLocked = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndIsLocked];
  if (totalCountOfNotesWithInlineDrawingV2AndIsLocked)
  {
    totalCountOfNotesWithInlineDrawingV2AndIsLocked2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndIsLocked];
  }

  else
  {
    totalCountOfNotesWithInlineDrawingV2AndIsLocked2 = objc_opt_new();
  }

  v77 = totalCountOfNotesWithInlineDrawingV2AndIsLocked2;
  v136[28] = totalCountOfNotesWithInlineDrawingV2AndIsLocked2;
  v135[29] = @"totalCountOfNotesWithFullscreenDrawingAndTables";
  totalCountOfNotesWithFullscreenDrawingAndTables = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndTables];
  if (totalCountOfNotesWithFullscreenDrawingAndTables)
  {
    totalCountOfNotesWithFullscreenDrawingAndTables2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndTables];
  }

  else
  {
    totalCountOfNotesWithFullscreenDrawingAndTables2 = objc_opt_new();
  }

  v75 = totalCountOfNotesWithFullscreenDrawingAndTables2;
  v136[29] = totalCountOfNotesWithFullscreenDrawingAndTables2;
  v135[30] = @"totalCountOfNotesWithFullscreenDrawingAndOtherAttachments";
  totalCountOfNotesWithFullscreenDrawingAndOtherAttachments = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndOtherAttachments];
  if (totalCountOfNotesWithFullscreenDrawingAndOtherAttachments)
  {
    totalCountOfNotesWithFullscreenDrawingAndOtherAttachments2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndOtherAttachments];
  }

  else
  {
    totalCountOfNotesWithFullscreenDrawingAndOtherAttachments2 = objc_opt_new();
  }

  v73 = totalCountOfNotesWithFullscreenDrawingAndOtherAttachments2;
  v136[30] = totalCountOfNotesWithFullscreenDrawingAndOtherAttachments2;
  v135[31] = @"totalCountOfNotesWithFullscreenDrawingAndChecklist";
  totalCountOfNotesWithFullscreenDrawingAndChecklist = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndChecklist];
  if (totalCountOfNotesWithFullscreenDrawingAndChecklist)
  {
    totalCountOfNotesWithFullscreenDrawingAndChecklist2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndChecklist];
  }

  else
  {
    totalCountOfNotesWithFullscreenDrawingAndChecklist2 = objc_opt_new();
  }

  v71 = totalCountOfNotesWithFullscreenDrawingAndChecklist2;
  v136[31] = totalCountOfNotesWithFullscreenDrawingAndChecklist2;
  v135[32] = @"totalCountOfNotesWithFullscreenDrawingAndIsPinned";
  totalCountOfNotesWithFullscreenDrawingAndIsPinned = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndIsPinned];
  if (totalCountOfNotesWithFullscreenDrawingAndIsPinned)
  {
    totalCountOfNotesWithFullscreenDrawingAndIsPinned2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndIsPinned];
  }

  else
  {
    totalCountOfNotesWithFullscreenDrawingAndIsPinned2 = objc_opt_new();
  }

  v69 = totalCountOfNotesWithFullscreenDrawingAndIsPinned2;
  v136[32] = totalCountOfNotesWithFullscreenDrawingAndIsPinned2;
  v135[33] = @"totalCountOfNotesWithFullscreenDrawingAndIsLocked";
  totalCountOfNotesWithFullscreenDrawingAndIsLocked = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndIsLocked];
  if (totalCountOfNotesWithFullscreenDrawingAndIsLocked)
  {
    totalCountOfNotesWithFullscreenDrawingAndIsLocked2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndIsLocked];
  }

  else
  {
    totalCountOfNotesWithFullscreenDrawingAndIsLocked2 = objc_opt_new();
  }

  v67 = totalCountOfNotesWithFullscreenDrawingAndIsLocked2;
  v136[33] = totalCountOfNotesWithFullscreenDrawingAndIsLocked2;
  v135[34] = @"totalCountOfNotesWithTablesAndOtherAttachments";
  totalCountOfNotesWithTablesAndOtherAttachments = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndOtherAttachments];
  if (totalCountOfNotesWithTablesAndOtherAttachments)
  {
    totalCountOfNotesWithTablesAndOtherAttachments2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndOtherAttachments];
  }

  else
  {
    totalCountOfNotesWithTablesAndOtherAttachments2 = objc_opt_new();
  }

  v65 = totalCountOfNotesWithTablesAndOtherAttachments2;
  v136[34] = totalCountOfNotesWithTablesAndOtherAttachments2;
  v135[35] = @"totalCountOfNotesWithTablesAndChecklist";
  totalCountOfNotesWithTablesAndChecklist = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndChecklist];
  if (totalCountOfNotesWithTablesAndChecklist)
  {
    totalCountOfNotesWithTablesAndChecklist2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndChecklist];
  }

  else
  {
    totalCountOfNotesWithTablesAndChecklist2 = objc_opt_new();
  }

  v63 = totalCountOfNotesWithTablesAndChecklist2;
  v136[35] = totalCountOfNotesWithTablesAndChecklist2;
  v135[36] = @"totalCountOfNotesWithTablesAndIsPinned";
  totalCountOfNotesWithTablesAndIsPinned = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndIsPinned];
  if (totalCountOfNotesWithTablesAndIsPinned)
  {
    totalCountOfNotesWithTablesAndIsPinned2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndIsPinned];
  }

  else
  {
    totalCountOfNotesWithTablesAndIsPinned2 = objc_opt_new();
  }

  v61 = totalCountOfNotesWithTablesAndIsPinned2;
  v136[36] = totalCountOfNotesWithTablesAndIsPinned2;
  v135[37] = @"totalCountOfNotesWithTablesAndIsLocked";
  totalCountOfNotesWithTablesAndIsLocked = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndIsLocked];
  if (totalCountOfNotesWithTablesAndIsLocked)
  {
    totalCountOfNotesWithTablesAndIsLocked2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndIsLocked];
  }

  else
  {
    totalCountOfNotesWithTablesAndIsLocked2 = objc_opt_new();
  }

  v59 = totalCountOfNotesWithTablesAndIsLocked2;
  v136[37] = totalCountOfNotesWithTablesAndIsLocked2;
  v135[38] = @"totalCountOfNotesWithOtherAttachmentsAndChecklist";
  totalCountOfNotesWithOtherAttachmentsAndChecklist = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndChecklist];
  if (totalCountOfNotesWithOtherAttachmentsAndChecklist)
  {
    totalCountOfNotesWithOtherAttachmentsAndChecklist2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndChecklist];
  }

  else
  {
    totalCountOfNotesWithOtherAttachmentsAndChecklist2 = objc_opt_new();
  }

  v43 = totalCountOfNotesWithOtherAttachmentsAndChecklist2;
  v136[38] = totalCountOfNotesWithOtherAttachmentsAndChecklist2;
  v135[39] = @"totalCountOfNotesWithOtherAttachmentsAndIsPinned";
  totalCountOfNotesWithOtherAttachmentsAndIsPinned = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndIsPinned];
  if (totalCountOfNotesWithOtherAttachmentsAndIsPinned)
  {
    totalCountOfNotesWithOtherAttachmentsAndIsPinned2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndIsPinned];
  }

  else
  {
    totalCountOfNotesWithOtherAttachmentsAndIsPinned2 = objc_opt_new();
  }

  v46 = totalCountOfNotesWithOtherAttachmentsAndIsPinned2;
  v136[39] = totalCountOfNotesWithOtherAttachmentsAndIsPinned2;
  v135[40] = @"totalCountOfNotesWithOtherAttachmentsAndIsLocked";
  totalCountOfNotesWithOtherAttachmentsAndIsLocked = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndIsLocked];
  if (totalCountOfNotesWithOtherAttachmentsAndIsLocked)
  {
    totalCountOfNotesWithOtherAttachmentsAndIsLocked2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndIsLocked];
  }

  else
  {
    totalCountOfNotesWithOtherAttachmentsAndIsLocked2 = objc_opt_new();
  }

  v49 = totalCountOfNotesWithOtherAttachmentsAndIsLocked2;
  v136[40] = totalCountOfNotesWithOtherAttachmentsAndIsLocked2;
  v135[41] = @"totalCountOfNotesWithChecklistAndIsPinned";
  totalCountOfNotesWithChecklistAndIsPinned = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithChecklistAndIsPinned];
  if (totalCountOfNotesWithChecklistAndIsPinned)
  {
    totalCountOfNotesWithChecklistAndIsPinned2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithChecklistAndIsPinned];
  }

  else
  {
    totalCountOfNotesWithChecklistAndIsPinned2 = objc_opt_new();
  }

  v52 = totalCountOfNotesWithChecklistAndIsPinned2;
  v136[41] = totalCountOfNotesWithChecklistAndIsPinned2;
  v135[42] = @"totalCountOfNotesIsPinnedAndIsLocked";
  totalCountOfNotesIsPinnedAndIsLocked = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesIsPinnedAndIsLocked];
  if (totalCountOfNotesIsPinnedAndIsLocked)
  {
    totalCountOfNotesIsPinnedAndIsLocked2 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesIsPinnedAndIsLocked];
  }

  else
  {
    totalCountOfNotesIsPinnedAndIsLocked2 = objc_opt_new();
  }

  v55 = totalCountOfNotesIsPinnedAndIsLocked2;
  v136[42] = totalCountOfNotesIsPinnedAndIsLocked2;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:43];

  v56 = *MEMORY[0x277D85DE8];

  return v58;
}

@end