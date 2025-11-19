@interface ICNAHistogramManager
- (ICNAHistogramManager)init;
@end

@implementation ICNAHistogramManager

- (ICNAHistogramManager)init
{
  v76.receiver = self;
  v76.super_class = ICNAHistogramManager;
  v2 = [(ICNAHistogramManager *)&v76 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICNACollabOwnedRootFolderAcceptanceCountHistogram);
    collabOwnedRootFolderAcceptanceCountHistogram = v2->_collabOwnedRootFolderAcceptanceCountHistogram;
    v2->_collabOwnedRootFolderAcceptanceCountHistogram = v3;

    v5 = objc_alloc_init(ICNACollabOwnedRootFolderAcceptanceRatioHistogram);
    collabOwnedRootFolderAcceptanceRatioHistogram = v2->_collabOwnedRootFolderAcceptanceRatioHistogram;
    v2->_collabOwnedRootFolderAcceptanceRatioHistogram = v5;

    v7 = objc_alloc_init(ICNACollabOwnedRootFolderInviteeCountHistogram);
    collabOwnedRootFolderInviteeCountHistogram = v2->_collabOwnedRootFolderInviteeCountHistogram;
    v2->_collabOwnedRootFolderInviteeCountHistogram = v7;

    v9 = objc_alloc_init(ICNACollabOwnedRootFolderNoReplyCountHistogram);
    collabOwnedRootFolderNoReplyCountHistogram = v2->_collabOwnedRootFolderNoReplyCountHistogram;
    v2->_collabOwnedRootFolderNoReplyCountHistogram = v9;

    v11 = objc_alloc_init(ICNACollabOwnedSingleNoteAcceptanceCountHistogram);
    collabOwnedSingleNoteAcceptanceCountHistogram = v2->_collabOwnedSingleNoteAcceptanceCountHistogram;
    v2->_collabOwnedSingleNoteAcceptanceCountHistogram = v11;

    v13 = objc_alloc_init(ICNACollabOwnedSingleNoteAcceptanceRatioHistogram);
    collabOwnedSingleNoteAcceptanceRatioHistogram = v2->_collabOwnedSingleNoteAcceptanceRatioHistogram;
    v2->_collabOwnedSingleNoteAcceptanceRatioHistogram = v13;

    v15 = objc_alloc_init(ICNACollabOwnedSingleNoteInviteeCountHistogram);
    collabOwnedSingleNoteInviteeCountHistogram = v2->_collabOwnedSingleNoteInviteeCountHistogram;
    v2->_collabOwnedSingleNoteInviteeCountHistogram = v15;

    v17 = objc_alloc_init(ICNACollabOwnedSingleNoteNoReplyCountHistogram);
    collabOwnedSingleNoteNoReplyCountHistogram = v2->_collabOwnedSingleNoteNoReplyCountHistogram;
    v2->_collabOwnedSingleNoteNoReplyCountHistogram = v17;

    v19 = objc_alloc_init(ICNACollabRootFolderTotalNoteCountHistogram);
    collabRootFolderTotalNoteCountHistogram = v2->_collabRootFolderTotalNoteCountHistogram;
    v2->_collabRootFolderTotalNoteCountHistogram = v19;

    v21 = objc_alloc_init(ICNADocScanPageCountHistogram);
    docScanPageCountHistogram = v2->_docScanPageCountHistogram;
    v2->_docScanPageCountHistogram = v21;

    v23 = objc_alloc_init(ICNAFolderDirectNoteCountHistogram);
    folderDirectNoteCountHistogram = v2->_folderDirectNoteCountHistogram;
    v2->_folderDirectNoteCountHistogram = v23;

    v25 = objc_alloc_init(ICNAFullscreenDrawingStrokeCountHistogram);
    fullscreenDrawingStrokeCountHistogram = v2->_fullscreenDrawingStrokeCountHistogram;
    v2->_fullscreenDrawingStrokeCountHistogram = v25;

    v27 = objc_alloc_init(ICNAInlineDrawingV1FingerStrokeCountHistogram);
    inlineDrawingV1FingerStrokeCountHistogram = v2->_inlineDrawingV1FingerStrokeCountHistogram;
    v2->_inlineDrawingV1FingerStrokeCountHistogram = v27;

    v29 = objc_alloc_init(ICNAInlineDrawingV1FingerStrokeRatioHistogram);
    inlineDrawingV1FingerStrokeRatioHistogram = v2->_inlineDrawingV1FingerStrokeRatioHistogram;
    v2->_inlineDrawingV1FingerStrokeRatioHistogram = v29;

    v31 = objc_alloc_init(ICNAInlineDrawingV1PencilStrokeCountHistogram);
    inlineDrawingV1PencilStrokeCountHistogram = v2->_inlineDrawingV1PencilStrokeCountHistogram;
    v2->_inlineDrawingV1PencilStrokeCountHistogram = v31;

    v33 = objc_alloc_init(ICNAInlineDrawingV1TotalStrokeCountHistogram);
    inlineDrawingV1TotalStrokeCountHistogram = v2->_inlineDrawingV1TotalStrokeCountHistogram;
    v2->_inlineDrawingV1TotalStrokeCountHistogram = v33;

    v35 = objc_alloc_init(ICNAInlineDrawingV2FingerStrokeCountHistogram);
    inlineDrawingV2FingerStrokeCountHistogram = v2->_inlineDrawingV2FingerStrokeCountHistogram;
    v2->_inlineDrawingV2FingerStrokeCountHistogram = v35;

    v37 = objc_alloc_init(ICNAInlineDrawingV2FingerStrokeRatioHistogram);
    inlineDrawingV2FingerStrokeRatioHistogram = v2->_inlineDrawingV2FingerStrokeRatioHistogram;
    v2->_inlineDrawingV2FingerStrokeRatioHistogram = v37;

    v39 = objc_alloc_init(ICNAInlineDrawingV2PencilStrokeCountHistogram);
    inlineDrawingV2PencilStrokeCountHistogram = v2->_inlineDrawingV2PencilStrokeCountHistogram;
    v2->_inlineDrawingV2PencilStrokeCountHistogram = v39;

    v41 = objc_alloc_init(ICNAInlineDrawingV2TotalStrokeCountHistogram);
    inlineDrawingV2TotalStrokeCountHistogram = v2->_inlineDrawingV2TotalStrokeCountHistogram;
    v2->_inlineDrawingV2TotalStrokeCountHistogram = v41;

    v43 = objc_alloc_init(ICNANoteCharCountHistogram);
    noteCharCountHistogram = v2->_noteCharCountHistogram;
    v2->_noteCharCountHistogram = v43;

    v45 = objc_alloc_init(ICNAPasswordProtectedNoteWeeklyAgeHistogram);
    passwordProtectedNoteWeeklyAgeHistogram = v2->_passwordProtectedNoteWeeklyAgeHistogram;
    v2->_passwordProtectedNoteWeeklyAgeHistogram = v45;

    v47 = objc_alloc_init(ICNATableCellCountHistogram);
    tableCellCountHistogram = v2->_tableCellCountHistogram;
    v2->_tableCellCountHistogram = v47;

    v49 = objc_alloc_init(ICNATableColumnCountHistogram);
    tableColumnCountHistogram = v2->_tableColumnCountHistogram;
    v2->_tableColumnCountHistogram = v49;

    v51 = objc_alloc_init(ICNATableRowCountHistogram);
    tableRowCountHistogram = v2->_tableRowCountHistogram;
    v2->_tableRowCountHistogram = v51;

    v53 = objc_alloc_init(ICNATopLevelFolderTotalNoteCountHistogram);
    topLevelFolderTotalNoteCountHistogram = v2->_topLevelFolderTotalNoteCountHistogram;
    v2->_topLevelFolderTotalNoteCountHistogram = v53;

    v55 = objc_alloc_init(ICNAAttachmentCountPerNoteHistogram);
    attachmentCountPerNoteHistogram = v2->_attachmentCountPerNoteHistogram;
    v2->_attachmentCountPerNoteHistogram = v55;

    v57 = objc_alloc_init(ICNADrawingCountPerNoteHistogram);
    drawingCountPerNoteHistogram = v2->_drawingCountPerNoteHistogram;
    v2->_drawingCountPerNoteHistogram = v57;

    v59 = objc_alloc_init(ICNAInlineDrawingFingerStrokesCountPerNoteHistogram);
    inlineDrawingFingerStrokesCountPerNoteHistogram = v2->_inlineDrawingFingerStrokesCountPerNoteHistogram;
    v2->_inlineDrawingFingerStrokesCountPerNoteHistogram = v59;

    v61 = objc_alloc_init(ICNAInlineDrawingPencilStrokesCountPerNoteHistogram);
    inlineDrawingPencilStrokesCountPerNoteHistogram = v2->_inlineDrawingPencilStrokesCountPerNoteHistogram;
    v2->_inlineDrawingPencilStrokesCountPerNoteHistogram = v61;

    v63 = objc_alloc_init(ICNAFullScreenDrawingStrokesCountPerNoteHistogram);
    fullScreenDrawingStrokesCountPerNoteHistogram = v2->_fullScreenDrawingStrokesCountPerNoteHistogram;
    v2->_fullScreenDrawingStrokesCountPerNoteHistogram = v63;

    v65 = objc_alloc_init(ICNATotalStrokesCountPerNoteHistogram);
    totalStrokesCountPerNoteHistogram = v2->_totalStrokesCountPerNoteHistogram;
    v2->_totalStrokesCountPerNoteHistogram = v65;

    v67 = objc_alloc_init(ICNAInlineAttachmentCountPerNoteHistogram);
    tagCountPerNoteHistogram = v2->_tagCountPerNoteHistogram;
    v2->_tagCountPerNoteHistogram = v67;

    v69 = objc_alloc_init(ICNAInlineAttachmentCountPerNoteHistogram);
    distinctTagCountPerNoteHistogram = v2->_distinctTagCountPerNoteHistogram;
    v2->_distinctTagCountPerNoteHistogram = v69;

    v71 = objc_alloc_init(ICNAInlineAttachmentCountPerNoteHistogram);
    mentionCountPerNoteHistogram = v2->_mentionCountPerNoteHistogram;
    v2->_mentionCountPerNoteHistogram = v71;

    v73 = objc_alloc_init(ICNAInlineAttachmentCountPerNoteHistogram);
    distinctMentionCountPerNoteHistogram = v2->_distinctMentionCountPerNoteHistogram;
    v2->_distinctMentionCountPerNoteHistogram = v73;
  }

  return v2;
}

@end