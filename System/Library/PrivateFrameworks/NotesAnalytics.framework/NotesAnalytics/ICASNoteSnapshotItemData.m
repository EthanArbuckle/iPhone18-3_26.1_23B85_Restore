@interface ICASNoteSnapshotItemData
- (ICASNoteSnapshotItemData)initWithNoteID:(id)a3 noteType:(id)a4 collaborationStatus:(id)a5 collaborationType:(id)a6 countOfInvitees:(id)a7 countOfAcceptances:(id)a8 countOfDocScan:(id)a9 countOfInlineDrawingV1:(id)a10 countOfInlineDrawingV2:(id)a11 countOfFullscreenDrawing:(id)a12 countOfTables:(id)a13 countOfAttachmentOther:(id)a14 hasChecklist:(id)a15 isPinned:(id)a16 isLocked:(id)a17 charLength:(id)a18 creationDate:(id)a19 countOfInlineDrawingV1PencilStrokes:(id)a20 countOfInlineDrawingV1FingerStrokes:(id)a21 countOfInlineDrawingV2PencilStrokes:(id)a22 countOfInlineDrawingV2FingerStrokes:(id)a23 countOfFullscreenDrawingStrokes:(id)a24;
- (id)toDict;
@end

@implementation ICASNoteSnapshotItemData

- (ICASNoteSnapshotItemData)initWithNoteID:(id)a3 noteType:(id)a4 collaborationStatus:(id)a5 collaborationType:(id)a6 countOfInvitees:(id)a7 countOfAcceptances:(id)a8 countOfDocScan:(id)a9 countOfInlineDrawingV1:(id)a10 countOfInlineDrawingV2:(id)a11 countOfFullscreenDrawing:(id)a12 countOfTables:(id)a13 countOfAttachmentOther:(id)a14 hasChecklist:(id)a15 isPinned:(id)a16 isLocked:(id)a17 charLength:(id)a18 creationDate:(id)a19 countOfInlineDrawingV1PencilStrokes:(id)a20 countOfInlineDrawingV1FingerStrokes:(id)a21 countOfInlineDrawingV2PencilStrokes:(id)a22 countOfInlineDrawingV2FingerStrokes:(id)a23 countOfFullscreenDrawingStrokes:(id)a24
{
  v57 = a3;
  v39 = a4;
  v56 = a4;
  v40 = a5;
  v55 = a5;
  v54 = a6;
  v53 = a7;
  v52 = a8;
  v51 = a9;
  v50 = a10;
  v49 = a11;
  v48 = a12;
  v47 = a13;
  v46 = a14;
  v45 = a15;
  v29 = a16;
  v30 = a17;
  v31 = a18;
  v32 = a19;
  v33 = a20;
  v44 = a21;
  v43 = a22;
  v42 = a23;
  v34 = a24;
  v58.receiver = self;
  v58.super_class = ICASNoteSnapshotItemData;
  v35 = [(ICASNoteSnapshotItemData *)&v58 init];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(&v35->_noteID, a3);
    objc_storeStrong(&v36->_noteType, v39);
    objc_storeStrong(&v36->_collaborationStatus, v40);
    objc_storeStrong(&v36->_collaborationType, a6);
    objc_storeStrong(&v36->_countOfInvitees, a7);
    objc_storeStrong(&v36->_countOfAcceptances, a8);
    objc_storeStrong(&v36->_countOfDocScan, a9);
    objc_storeStrong(&v36->_countOfInlineDrawingV1, a10);
    objc_storeStrong(&v36->_countOfInlineDrawingV2, a11);
    objc_storeStrong(&v36->_countOfFullscreenDrawing, a12);
    objc_storeStrong(&v36->_countOfTables, a13);
    objc_storeStrong(&v36->_countOfAttachmentOther, a14);
    objc_storeStrong(&v36->_hasChecklist, a15);
    objc_storeStrong(&v36->_isPinned, a16);
    objc_storeStrong(&v36->_isLocked, a17);
    objc_storeStrong(&v36->_charLength, a18);
    objc_storeStrong(&v36->_creationDate, a19);
    objc_storeStrong(&v36->_countOfInlineDrawingV1PencilStrokes, a20);
    objc_storeStrong(&v36->_countOfInlineDrawingV1FingerStrokes, a21);
    objc_storeStrong(&v36->_countOfInlineDrawingV2PencilStrokes, a22);
    objc_storeStrong(&v36->_countOfInlineDrawingV2FingerStrokes, a23);
    objc_storeStrong(&v36->_countOfFullscreenDrawingStrokes, a24);
  }

  return v36;
}

- (id)toDict
{
  v73[22] = *MEMORY[0x277D85DE8];
  v72[0] = @"noteID";
  v71 = [(ICASNoteSnapshotItemData *)self noteID];
  if (v71)
  {
    v3 = [(ICASNoteSnapshotItemData *)self noteID];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v70 = v3;
  v73[0] = v3;
  v72[1] = @"noteType";
  v69 = [(ICASNoteSnapshotItemData *)self noteType];
  if (v69)
  {
    v4 = [(ICASNoteSnapshotItemData *)self noteType];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v68 = v4;
  v73[1] = v4;
  v72[2] = @"collaborationStatus";
  v67 = [(ICASNoteSnapshotItemData *)self collaborationStatus];
  if (v67)
  {
    v5 = [(ICASNoteSnapshotItemData *)self collaborationStatus];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v66 = v5;
  v73[2] = v5;
  v72[3] = @"collaborationType";
  v65 = [(ICASNoteSnapshotItemData *)self collaborationType];
  if (v65)
  {
    v6 = [(ICASNoteSnapshotItemData *)self collaborationType];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v64 = v6;
  v73[3] = v6;
  v72[4] = @"countOfInvitees";
  v63 = [(ICASNoteSnapshotItemData *)self countOfInvitees];
  if (v63)
  {
    v7 = [(ICASNoteSnapshotItemData *)self countOfInvitees];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v62 = v7;
  v73[4] = v7;
  v72[5] = @"countOfAcceptances";
  v61 = [(ICASNoteSnapshotItemData *)self countOfAcceptances];
  if (v61)
  {
    v8 = [(ICASNoteSnapshotItemData *)self countOfAcceptances];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v60 = v8;
  v73[5] = v8;
  v72[6] = @"countOfDocScan";
  v59 = [(ICASNoteSnapshotItemData *)self countOfDocScan];
  if (v59)
  {
    v9 = [(ICASNoteSnapshotItemData *)self countOfDocScan];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v58 = v9;
  v73[6] = v9;
  v72[7] = @"countOfInlineDrawingV1";
  v57 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1];
  if (v57)
  {
    v10 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v56 = v10;
  v73[7] = v10;
  v72[8] = @"countOfInlineDrawingV2";
  v55 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2];
  if (v55)
  {
    v11 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v54 = v11;
  v73[8] = v11;
  v72[9] = @"countOfFullscreenDrawing";
  v53 = [(ICASNoteSnapshotItemData *)self countOfFullscreenDrawing];
  if (v53)
  {
    v12 = [(ICASNoteSnapshotItemData *)self countOfFullscreenDrawing];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v52 = v12;
  v73[9] = v12;
  v72[10] = @"countOfTables";
  v51 = [(ICASNoteSnapshotItemData *)self countOfTables];
  if (v51)
  {
    v13 = [(ICASNoteSnapshotItemData *)self countOfTables];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v50 = v13;
  v73[10] = v13;
  v72[11] = @"countOfAttachmentOther";
  v49 = [(ICASNoteSnapshotItemData *)self countOfAttachmentOther];
  if (v49)
  {
    v14 = [(ICASNoteSnapshotItemData *)self countOfAttachmentOther];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v48 = v14;
  v73[11] = v14;
  v72[12] = @"hasChecklist";
  v47 = [(ICASNoteSnapshotItemData *)self hasChecklist];
  if (v47)
  {
    v15 = [(ICASNoteSnapshotItemData *)self hasChecklist];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v46 = v15;
  v73[12] = v15;
  v72[13] = @"isPinned";
  v45 = [(ICASNoteSnapshotItemData *)self isPinned];
  if (v45)
  {
    v16 = [(ICASNoteSnapshotItemData *)self isPinned];
  }

  else
  {
    v16 = objc_opt_new();
  }

  v44 = v16;
  v73[13] = v16;
  v72[14] = @"isLocked";
  v43 = [(ICASNoteSnapshotItemData *)self isLocked];
  if (v43)
  {
    v17 = [(ICASNoteSnapshotItemData *)self isLocked];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v42 = v17;
  v73[14] = v17;
  v72[15] = @"charLength";
  v41 = [(ICASNoteSnapshotItemData *)self charLength];
  if (v41)
  {
    v18 = [(ICASNoteSnapshotItemData *)self charLength];
  }

  else
  {
    v18 = objc_opt_new();
  }

  v40 = v18;
  v73[15] = v18;
  v72[16] = @"creationDate";
  v39 = [(ICASNoteSnapshotItemData *)self creationDate];
  if (v39)
  {
    v19 = [(ICASNoteSnapshotItemData *)self creationDate];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v38 = v19;
  v73[16] = v19;
  v72[17] = @"countOfInlineDrawingV1PencilStrokes";
  v20 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1PencilStrokes];
  if (v20)
  {
    v21 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1PencilStrokes];
  }

  else
  {
    v21 = objc_opt_new();
  }

  v22 = v21;
  v73[17] = v21;
  v72[18] = @"countOfInlineDrawingV1FingerStrokes";
  v23 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1FingerStrokes];
  if (v23)
  {
    v24 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV1FingerStrokes];
  }

  else
  {
    v24 = objc_opt_new();
  }

  v25 = v24;
  v73[18] = v24;
  v72[19] = @"countOfInlineDrawingV2PencilStrokes";
  v26 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2PencilStrokes];
  if (v26)
  {
    v27 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2PencilStrokes];
  }

  else
  {
    v27 = objc_opt_new();
  }

  v28 = v27;
  v73[19] = v27;
  v72[20] = @"countOfInlineDrawingV2FingerStrokes";
  v29 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2FingerStrokes];
  if (v29)
  {
    v30 = [(ICASNoteSnapshotItemData *)self countOfInlineDrawingV2FingerStrokes];
  }

  else
  {
    v30 = objc_opt_new();
  }

  v31 = v30;
  v73[20] = v30;
  v72[21] = @"countOfFullscreenDrawingStrokes";
  v32 = [(ICASNoteSnapshotItemData *)self countOfFullscreenDrawingStrokes];
  if (v32)
  {
    v33 = [(ICASNoteSnapshotItemData *)self countOfFullscreenDrawingStrokes];
  }

  else
  {
    v33 = objc_opt_new();
  }

  v34 = v33;
  v73[21] = v33;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:22];

  v35 = *MEMORY[0x277D85DE8];

  return v37;
}

@end