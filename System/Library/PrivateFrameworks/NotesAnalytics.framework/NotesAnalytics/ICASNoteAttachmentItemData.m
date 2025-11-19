@interface ICASNoteAttachmentItemData
- (ICASNoteAttachmentItemData)initWithTotalCountOfNotesWithAttachmentDocScan:(id)a3 totalCountOfNotesWithAttachmentInlineDrawingV1:(id)a4 totalCountOfNotesWithAttachmentInlineDrawingV2:(id)a5 totalCountOfNotesWithAttachmentPaperKit:(id)a6 totalCountOfNotesWithAttachmentFullscreenDrawing:(id)a7 totalCountOfNotesWithAttachmentTables:(id)a8 totalCountOfNotesWithAttachmentOther:(id)a9 totalCountOfNotesWithAttachmentRichUrl:(id)a10 totalCountOfNotesWithAttachmentMapLink:(id)a11 totalCountOfNotesWithAttachmentDeepLink:(id)a12 totalCountOfNotesWithPaperDocument:(id)a13 totalCountOfNotesWithPdfDocument:(id)a14 totalCountOfNotesWithNoteLinks:(id)a15 totalCountOfNotesWithFolderLinks:(id)a16 totalCountOfNotesWithAttachmentAudio:(id)a17 totalCountOfAudioAttachments:(id)a18 totalCountOfAudioAttachmentsRecordedInNotes:(id)a19 totalCountOfAudioAttachmentsWithAppendedAudio:(id)a20 totalCountOfNotesWithAttachmentAudioTranscript:(id)a21 totalCountOfNotesWithAttachmentAudioSummary:(id)a22;
- (id)toDict;
@end

@implementation ICASNoteAttachmentItemData

- (ICASNoteAttachmentItemData)initWithTotalCountOfNotesWithAttachmentDocScan:(id)a3 totalCountOfNotesWithAttachmentInlineDrawingV1:(id)a4 totalCountOfNotesWithAttachmentInlineDrawingV2:(id)a5 totalCountOfNotesWithAttachmentPaperKit:(id)a6 totalCountOfNotesWithAttachmentFullscreenDrawing:(id)a7 totalCountOfNotesWithAttachmentTables:(id)a8 totalCountOfNotesWithAttachmentOther:(id)a9 totalCountOfNotesWithAttachmentRichUrl:(id)a10 totalCountOfNotesWithAttachmentMapLink:(id)a11 totalCountOfNotesWithAttachmentDeepLink:(id)a12 totalCountOfNotesWithPaperDocument:(id)a13 totalCountOfNotesWithPdfDocument:(id)a14 totalCountOfNotesWithNoteLinks:(id)a15 totalCountOfNotesWithFolderLinks:(id)a16 totalCountOfNotesWithAttachmentAudio:(id)a17 totalCountOfAudioAttachments:(id)a18 totalCountOfAudioAttachmentsRecordedInNotes:(id)a19 totalCountOfAudioAttachmentsWithAppendedAudio:(id)a20 totalCountOfNotesWithAttachmentAudioTranscript:(id)a21 totalCountOfNotesWithAttachmentAudioSummary:(id)a22
{
  v55 = a3;
  v37 = a4;
  v54 = a4;
  v38 = a5;
  v53 = a5;
  v39 = a6;
  v52 = a6;
  v40 = a7;
  v51 = a7;
  v50 = a8;
  v49 = a9;
  v48 = a10;
  v47 = a11;
  v46 = a12;
  v45 = a13;
  v44 = a14;
  v27 = a15;
  v28 = a16;
  v29 = a17;
  v30 = a18;
  v31 = a19;
  v43 = a20;
  v42 = a21;
  v32 = a22;
  v56.receiver = self;
  v56.super_class = ICASNoteAttachmentItemData;
  v33 = [(ICASNoteAttachmentItemData *)&v56 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_totalCountOfNotesWithAttachmentDocScan, a3);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentInlineDrawingV1, v37);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentInlineDrawingV2, v38);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentPaperKit, v39);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentFullscreenDrawing, v40);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentTables, a8);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentOther, a9);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentRichUrl, a10);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentMapLink, a11);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentDeepLink, a12);
    objc_storeStrong(&v34->_totalCountOfNotesWithPaperDocument, a13);
    objc_storeStrong(&v34->_totalCountOfNotesWithPdfDocument, a14);
    objc_storeStrong(&v34->_totalCountOfNotesWithNoteLinks, a15);
    objc_storeStrong(&v34->_totalCountOfNotesWithFolderLinks, a16);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentAudio, a17);
    objc_storeStrong(&v34->_totalCountOfAudioAttachments, a18);
    objc_storeStrong(&v34->_totalCountOfAudioAttachmentsRecordedInNotes, a19);
    objc_storeStrong(&v34->_totalCountOfAudioAttachmentsWithAppendedAudio, a20);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentAudioTranscript, a21);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentAudioSummary, a22);
  }

  return v34;
}

- (id)toDict
{
  v67[20] = *MEMORY[0x277D85DE8];
  v66[0] = @"totalCountOfNotesWithAttachmentDocScan";
  v65 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentDocScan];
  if (v65)
  {
    v3 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentDocScan];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v64 = v3;
  v67[0] = v3;
  v66[1] = @"totalCountOfNotesWithAttachmentInlineDrawingV1";
  v63 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentInlineDrawingV1];
  if (v63)
  {
    v4 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentInlineDrawingV1];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v62 = v4;
  v67[1] = v4;
  v66[2] = @"totalCountOfNotesWithAttachmentInlineDrawingV2";
  v61 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentInlineDrawingV2];
  if (v61)
  {
    v5 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentInlineDrawingV2];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v60 = v5;
  v67[2] = v5;
  v66[3] = @"totalCountOfNotesWithAttachmentPaperKit";
  v59 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentPaperKit];
  if (v59)
  {
    v6 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentPaperKit];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v58 = v6;
  v67[3] = v6;
  v66[4] = @"totalCountOfNotesWithAttachmentFullscreenDrawing";
  v57 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentFullscreenDrawing];
  if (v57)
  {
    v7 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentFullscreenDrawing];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v56 = v7;
  v67[4] = v7;
  v66[5] = @"totalCountOfNotesWithAttachmentTables";
  v55 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentTables];
  if (v55)
  {
    v8 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentTables];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v54 = v8;
  v67[5] = v8;
  v66[6] = @"totalCountOfNotesWithAttachmentOther";
  v53 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentOther];
  if (v53)
  {
    v9 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentOther];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v52 = v9;
  v67[6] = v9;
  v66[7] = @"totalCountOfNotesWithAttachmentRichUrl";
  v51 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentRichUrl];
  if (v51)
  {
    v10 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentRichUrl];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v50 = v10;
  v67[7] = v10;
  v66[8] = @"totalCountOfNotesWithAttachmentMapLink";
  v49 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentMapLink];
  if (v49)
  {
    v11 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentMapLink];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v48 = v11;
  v67[8] = v11;
  v66[9] = @"totalCountOfNotesWithAttachmentDeepLink";
  v47 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentDeepLink];
  if (v47)
  {
    v12 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentDeepLink];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v46 = v12;
  v67[9] = v12;
  v66[10] = @"totalCountOfNotesWithPaperDocument";
  v45 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithPaperDocument];
  if (v45)
  {
    v13 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithPaperDocument];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v44 = v13;
  v67[10] = v13;
  v66[11] = @"totalCountOfNotesWithPdfDocument";
  v43 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithPdfDocument];
  if (v43)
  {
    v14 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithPdfDocument];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v42 = v14;
  v67[11] = v14;
  v66[12] = @"totalCountOfNotesWithNoteLinks";
  v41 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithNoteLinks];
  if (v41)
  {
    v15 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithNoteLinks];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v40 = v15;
  v67[12] = v15;
  v66[13] = @"totalCountOfNotesWithFolderLinks";
  v39 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithFolderLinks];
  if (v39)
  {
    v16 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithFolderLinks];
  }

  else
  {
    v16 = objc_opt_new();
  }

  v38 = v16;
  v67[13] = v16;
  v66[14] = @"totalCountOfNotesWithAttachmentAudio";
  v37 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudio];
  if (v37)
  {
    v17 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudio];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v36 = v17;
  v67[14] = v17;
  v66[15] = @"totalCountOfAudioAttachments";
  v18 = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachments];
  if (v18)
  {
    v19 = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachments];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;
  v67[15] = v19;
  v66[16] = @"totalCountOfAudioAttachmentsRecordedInNotes";
  v21 = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachmentsRecordedInNotes];
  if (v21)
  {
    v22 = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachmentsRecordedInNotes];
  }

  else
  {
    v22 = objc_opt_new();
  }

  v23 = v22;
  v67[16] = v22;
  v66[17] = @"totalCountOfAudioAttachmentsWithAppendedAudio";
  v24 = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachmentsWithAppendedAudio];
  if (v24)
  {
    v25 = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachmentsWithAppendedAudio];
  }

  else
  {
    v25 = objc_opt_new();
  }

  v26 = v25;
  v67[17] = v25;
  v66[18] = @"totalCountOfNotesWithAttachmentAudioTranscript";
  v27 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudioTranscript];
  if (v27)
  {
    v28 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudioTranscript];
  }

  else
  {
    v28 = objc_opt_new();
  }

  v29 = v28;
  v67[18] = v28;
  v66[19] = @"totalCountOfNotesWithAttachmentAudioSummary";
  v30 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudioSummary];
  if (v30)
  {
    v31 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudioSummary];
  }

  else
  {
    v31 = objc_opt_new();
  }

  v32 = v31;
  v67[19] = v31;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:20];

  v33 = *MEMORY[0x277D85DE8];

  return v35;
}

@end