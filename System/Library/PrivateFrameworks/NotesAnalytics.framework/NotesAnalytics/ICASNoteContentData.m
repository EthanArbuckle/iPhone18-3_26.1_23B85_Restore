@interface ICASNoteContentData
- (ICASNoteContentData)initWithCharacterCount:(id)a3 hasChecklist:(id)a4 hasStyleFormatting:(id)a5 hasTable:(id)a6 hasAttachmentInlineDrawingV1:(id)a7 hasAttachmentInlineDrawingV2:(id)a8 hasAttachmentFullscreenDrawing:(id)a9 hasAttachmentOther:(id)a10 hasAttachedPhoto:(id)a11 weeksSinceCreation:(id)a12 hasAttachmentRichUrl:(id)a13 hasAttachmentMapLink:(id)a14 hasTags:(id)a15 hasScannedDoc:(id)a16 countOfTags:(id)a17 countOfDistinctTags:(id)a18 hasMentions:(id)a19 countOfMentions:(id)a20 countOfDistinctMentions:(id)a21 hasPaperKitDrawing:(id)a22 hasPaperDocument:(id)a23 hasPdf:(id)a24 countOfNoteLinks:(id)a25 countOfDistinctNoteLinks:(id)a26 countOfFolderLinks:(id)a27 countOfDistinctFolderLinks:(id)a28 countOfAudioAttachments:(id)a29;
- (id)toDict;
@end

@implementation ICASNoteContentData

- (ICASNoteContentData)initWithCharacterCount:(id)a3 hasChecklist:(id)a4 hasStyleFormatting:(id)a5 hasTable:(id)a6 hasAttachmentInlineDrawingV1:(id)a7 hasAttachmentInlineDrawingV2:(id)a8 hasAttachmentFullscreenDrawing:(id)a9 hasAttachmentOther:(id)a10 hasAttachedPhoto:(id)a11 weeksSinceCreation:(id)a12 hasAttachmentRichUrl:(id)a13 hasAttachmentMapLink:(id)a14 hasTags:(id)a15 hasScannedDoc:(id)a16 countOfTags:(id)a17 countOfDistinctTags:(id)a18 hasMentions:(id)a19 countOfMentions:(id)a20 countOfDistinctMentions:(id)a21 hasPaperKitDrawing:(id)a22 hasPaperDocument:(id)a23 hasPdf:(id)a24 countOfNoteLinks:(id)a25 countOfDistinctNoteLinks:(id)a26 countOfFolderLinks:(id)a27 countOfDistinctFolderLinks:(id)a28 countOfAudioAttachments:(id)a29
{
  v67 = a3;
  v44 = a4;
  v66 = a4;
  v65 = a5;
  v45 = a6;
  v64 = a6;
  v63 = a7;
  v62 = a8;
  v61 = a9;
  v60 = a10;
  v59 = a11;
  v58 = a12;
  v57 = a13;
  v56 = a14;
  v55 = a15;
  v54 = a16;
  v53 = a17;
  v52 = a18;
  v34 = a19;
  v35 = a20;
  v36 = a21;
  v37 = a22;
  v38 = a23;
  v51 = a24;
  v50 = a25;
  v49 = a26;
  v48 = a27;
  v47 = a28;
  v39 = a29;
  v68.receiver = self;
  v68.super_class = ICASNoteContentData;
  v40 = [(ICASNoteContentData *)&v68 init];
  v41 = v40;
  if (v40)
  {
    objc_storeStrong(&v40->_characterCount, a3);
    objc_storeStrong(&v41->_hasChecklist, v44);
    objc_storeStrong(&v41->_hasStyleFormatting, a5);
    objc_storeStrong(&v41->_hasTable, v45);
    objc_storeStrong(&v41->_hasAttachmentInlineDrawingV1, a7);
    objc_storeStrong(&v41->_hasAttachmentInlineDrawingV2, a8);
    objc_storeStrong(&v41->_hasAttachmentFullscreenDrawing, a9);
    objc_storeStrong(&v41->_hasAttachmentOther, a10);
    objc_storeStrong(&v41->_hasAttachedPhoto, a11);
    objc_storeStrong(&v41->_weeksSinceCreation, a12);
    objc_storeStrong(&v41->_hasAttachmentRichUrl, a13);
    objc_storeStrong(&v41->_hasAttachmentMapLink, a14);
    objc_storeStrong(&v41->_hasTags, a15);
    objc_storeStrong(&v41->_hasScannedDoc, a16);
    objc_storeStrong(&v41->_countOfTags, a17);
    objc_storeStrong(&v41->_countOfDistinctTags, a18);
    objc_storeStrong(&v41->_hasMentions, a19);
    objc_storeStrong(&v41->_countOfMentions, a20);
    objc_storeStrong(&v41->_countOfDistinctMentions, a21);
    objc_storeStrong(&v41->_hasPaperKitDrawing, a22);
    objc_storeStrong(&v41->_hasPaperDocument, a23);
    objc_storeStrong(&v41->_hasPdf, a24);
    objc_storeStrong(&v41->_countOfNoteLinks, a25);
    objc_storeStrong(&v41->_countOfDistinctNoteLinks, a26);
    objc_storeStrong(&v41->_countOfFolderLinks, a27);
    objc_storeStrong(&v41->_countOfDistinctFolderLinks, a28);
    objc_storeStrong(&v41->_countOfAudioAttachments, a29);
  }

  return v41;
}

- (id)toDict
{
  v88[27] = *MEMORY[0x277D85DE8];
  v87[0] = @"characterCount";
  v86 = [(ICASNoteContentData *)self characterCount];
  if (v86)
  {
    v3 = [(ICASNoteContentData *)self characterCount];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v85 = v3;
  v88[0] = v3;
  v87[1] = @"hasChecklist";
  v84 = [(ICASNoteContentData *)self hasChecklist];
  if (v84)
  {
    v4 = [(ICASNoteContentData *)self hasChecklist];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v83 = v4;
  v88[1] = v4;
  v87[2] = @"hasStyleFormatting";
  v82 = [(ICASNoteContentData *)self hasStyleFormatting];
  if (v82)
  {
    v5 = [(ICASNoteContentData *)self hasStyleFormatting];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v81 = v5;
  v88[2] = v5;
  v87[3] = @"hasTable";
  v80 = [(ICASNoteContentData *)self hasTable];
  if (v80)
  {
    v6 = [(ICASNoteContentData *)self hasTable];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v79 = v6;
  v88[3] = v6;
  v87[4] = @"hasAttachmentInlineDrawingV1";
  v78 = [(ICASNoteContentData *)self hasAttachmentInlineDrawingV1];
  if (v78)
  {
    v7 = [(ICASNoteContentData *)self hasAttachmentInlineDrawingV1];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v77 = v7;
  v88[4] = v7;
  v87[5] = @"hasAttachmentInlineDrawingV2";
  v76 = [(ICASNoteContentData *)self hasAttachmentInlineDrawingV2];
  if (v76)
  {
    v8 = [(ICASNoteContentData *)self hasAttachmentInlineDrawingV2];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v75 = v8;
  v88[5] = v8;
  v87[6] = @"hasAttachmentFullscreenDrawing";
  v74 = [(ICASNoteContentData *)self hasAttachmentFullscreenDrawing];
  if (v74)
  {
    v9 = [(ICASNoteContentData *)self hasAttachmentFullscreenDrawing];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v73 = v9;
  v88[6] = v9;
  v87[7] = @"hasAttachmentOther";
  v72 = [(ICASNoteContentData *)self hasAttachmentOther];
  if (v72)
  {
    v10 = [(ICASNoteContentData *)self hasAttachmentOther];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v71 = v10;
  v88[7] = v10;
  v87[8] = @"hasAttachedPhoto";
  v70 = [(ICASNoteContentData *)self hasAttachedPhoto];
  if (v70)
  {
    v11 = [(ICASNoteContentData *)self hasAttachedPhoto];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v69 = v11;
  v88[8] = v11;
  v87[9] = @"weeksSinceCreation";
  v68 = [(ICASNoteContentData *)self weeksSinceCreation];
  if (v68)
  {
    v12 = [(ICASNoteContentData *)self weeksSinceCreation];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v67 = v12;
  v88[9] = v12;
  v87[10] = @"hasAttachmentRichUrl";
  v66 = [(ICASNoteContentData *)self hasAttachmentRichUrl];
  if (v66)
  {
    v13 = [(ICASNoteContentData *)self hasAttachmentRichUrl];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v65 = v13;
  v88[10] = v13;
  v87[11] = @"hasAttachmentMapLink";
  v64 = [(ICASNoteContentData *)self hasAttachmentMapLink];
  if (v64)
  {
    v14 = [(ICASNoteContentData *)self hasAttachmentMapLink];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v63 = v14;
  v88[11] = v14;
  v87[12] = @"hasTags";
  v62 = [(ICASNoteContentData *)self hasTags];
  if (v62)
  {
    v15 = [(ICASNoteContentData *)self hasTags];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v61 = v15;
  v88[12] = v15;
  v87[13] = @"hasScannedDoc";
  v60 = [(ICASNoteContentData *)self hasScannedDoc];
  if (v60)
  {
    v16 = [(ICASNoteContentData *)self hasScannedDoc];
  }

  else
  {
    v16 = objc_opt_new();
  }

  v59 = v16;
  v88[13] = v16;
  v87[14] = @"countOfTags";
  v58 = [(ICASNoteContentData *)self countOfTags];
  if (v58)
  {
    v17 = [(ICASNoteContentData *)self countOfTags];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v57 = v17;
  v88[14] = v17;
  v87[15] = @"countOfDistinctTags";
  v56 = [(ICASNoteContentData *)self countOfDistinctTags];
  if (v56)
  {
    v18 = [(ICASNoteContentData *)self countOfDistinctTags];
  }

  else
  {
    v18 = objc_opt_new();
  }

  v55 = v18;
  v88[15] = v18;
  v87[16] = @"hasMentions";
  v54 = [(ICASNoteContentData *)self hasMentions];
  if (v54)
  {
    v19 = [(ICASNoteContentData *)self hasMentions];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v53 = v19;
  v88[16] = v19;
  v87[17] = @"countOfMentions";
  v52 = [(ICASNoteContentData *)self countOfMentions];
  if (v52)
  {
    v20 = [(ICASNoteContentData *)self countOfMentions];
  }

  else
  {
    v20 = objc_opt_new();
  }

  v51 = v20;
  v88[17] = v20;
  v87[18] = @"countOfDistinctMentions";
  v50 = [(ICASNoteContentData *)self countOfDistinctMentions];
  if (v50)
  {
    v21 = [(ICASNoteContentData *)self countOfDistinctMentions];
  }

  else
  {
    v21 = objc_opt_new();
  }

  v49 = v21;
  v88[18] = v21;
  v87[19] = @"hasPaperKitDrawing";
  v48 = [(ICASNoteContentData *)self hasPaperKitDrawing];
  if (v48)
  {
    v22 = [(ICASNoteContentData *)self hasPaperKitDrawing];
  }

  else
  {
    v22 = objc_opt_new();
  }

  v47 = v22;
  v88[19] = v22;
  v87[20] = @"hasPaperDocument";
  v46 = [(ICASNoteContentData *)self hasPaperDocument];
  if (v46)
  {
    v23 = [(ICASNoteContentData *)self hasPaperDocument];
  }

  else
  {
    v23 = objc_opt_new();
  }

  v45 = v23;
  v88[20] = v23;
  v87[21] = @"hasPdf";
  v44 = [(ICASNoteContentData *)self hasPdf];
  if (v44)
  {
    v24 = [(ICASNoteContentData *)self hasPdf];
  }

  else
  {
    v24 = objc_opt_new();
  }

  v43 = v24;
  v88[21] = v24;
  v87[22] = @"countOfNoteLinks";
  v25 = [(ICASNoteContentData *)self countOfNoteLinks];
  if (v25)
  {
    v26 = [(ICASNoteContentData *)self countOfNoteLinks];
  }

  else
  {
    v26 = objc_opt_new();
  }

  v27 = v26;
  v88[22] = v26;
  v87[23] = @"countOfDistinctNoteLinks";
  v28 = [(ICASNoteContentData *)self countOfDistinctNoteLinks];
  if (v28)
  {
    v29 = [(ICASNoteContentData *)self countOfDistinctNoteLinks];
  }

  else
  {
    v29 = objc_opt_new();
  }

  v30 = v29;
  v88[23] = v29;
  v87[24] = @"countOfFolderLinks";
  v31 = [(ICASNoteContentData *)self countOfFolderLinks];
  if (v31)
  {
    v32 = [(ICASNoteContentData *)self countOfFolderLinks];
  }

  else
  {
    v32 = objc_opt_new();
  }

  v33 = v32;
  v88[24] = v32;
  v87[25] = @"countOfDistinctFolderLinks";
  v34 = [(ICASNoteContentData *)self countOfDistinctFolderLinks];
  if (v34)
  {
    v35 = [(ICASNoteContentData *)self countOfDistinctFolderLinks];
  }

  else
  {
    v35 = objc_opt_new();
  }

  v36 = v35;
  v88[25] = v35;
  v87[26] = @"countOfAudioAttachments";
  v37 = [(ICASNoteContentData *)self countOfAudioAttachments];
  if (v37)
  {
    v38 = [(ICASNoteContentData *)self countOfAudioAttachments];
  }

  else
  {
    v38 = objc_opt_new();
  }

  v39 = v38;
  v88[26] = v38;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:27];

  v40 = *MEMORY[0x277D85DE8];

  return v42;
}

@end