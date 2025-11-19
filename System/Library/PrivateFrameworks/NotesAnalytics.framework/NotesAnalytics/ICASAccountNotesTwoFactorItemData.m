@interface ICASAccountNotesTwoFactorItemData
- (ICASAccountNotesTwoFactorItemData)initWithTotalCountOfNotesWithCollabAndDocScan:(id)a3 totalCountOfNotesWithCollabAndInlineDrawingV1:(id)a4 totalCountOfNotesWithCollabAndInlineDrawingV2:(id)a5 totalCountOfNotesWithCollabAndFullscreenDrawing:(id)a6 totalCountOfNotesWithCollabAndTables:(id)a7 totalCountOfNotesWithCollabAndOtherAttachments:(id)a8 totalCountOfNotesWithCollabAndChecklist:(id)a9 totalCountOfNotesWithCollabAndIsPinned:(id)a10 totalCountOfNotesWithDocScanAndInlineDrawingV1:(id)a11 totalCountOfNotesWithDocScanAndInlineDrawingV2:(id)a12 totalCountOfNotesWithDocScanAndFullscreenDrawing:(id)a13 totalCountOfNotesWithDocScanAndTables:(id)a14 totalCountOfNotesWithDocScanAndOtherAttachments:(id)a15 totalCountOfNotesWithDocScanAndChecklist:(id)a16 totalCountOfNotesWithDocScanAndIsPinned:(id)a17 totalCountOfNotesWithDocScanAndIsLocked:(id)a18 totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2:(id)a19 totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing:(id)a20 totalCountOfNotesWithInlineDrawingV1AndTables:(id)a21 totalCountOfNotesWithInlineDrawingV1AndOtherAttachments:(id)a22 totalCountOfNotesWithInlineDrawingV1AndChecklist:(id)a23 totalCountOfNotesWithInlineDrawingV1AndIsPinned:(id)a24 totalCountOfNotesWithInlineDrawingV1AndIsLocked:(id)a25 totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing:(id)a26 totalCountOfNotesWithInlineDrawingV2AndTables:(id)a27 totalCountOfNotesWithInlineDrawingV2AndOtherAttachments:(id)a28 totalCountOfNotesWithInlineDrawingV2AndChecklist:(id)a29 totalCountOfNotesWithInlineDrawingV2AndIsPinned:(id)a30 totalCountOfNotesWithInlineDrawingV2AndIsLocked:(id)a31 totalCountOfNotesWithFullscreenDrawingAndTables:(id)a32 totalCountOfNotesWithFullscreenDrawingAndOtherAttachments:(id)a33 totalCountOfNotesWithFullscreenDrawingAndChecklist:(id)a34 totalCountOfNotesWithFullscreenDrawingAndIsPinned:(id)a35 totalCountOfNotesWithFullscreenDrawingAndIsLocked:(id)a36 totalCountOfNotesWithTablesAndOtherAttachments:(id)a37 totalCountOfNotesWithTablesAndChecklist:(id)a38 totalCountOfNotesWithTablesAndIsPinned:(id)a39 totalCountOfNotesWithTablesAndIsLocked:(id)a40 totalCountOfNotesWithOtherAttachmentsAndChecklist:(id)a41 totalCountOfNotesWithOtherAttachmentsAndIsPinned:(id)a42 totalCountOfNotesWithOtherAttachmentsAndIsLocked:(id)a43 totalCountOfNotesWithChecklistAndIsPinned:(id)a44 totalCountOfNotesIsPinnedAndIsLocked:(id)a45;
- (id)toDict;
@end

@implementation ICASAccountNotesTwoFactorItemData

- (ICASAccountNotesTwoFactorItemData)initWithTotalCountOfNotesWithCollabAndDocScan:(id)a3 totalCountOfNotesWithCollabAndInlineDrawingV1:(id)a4 totalCountOfNotesWithCollabAndInlineDrawingV2:(id)a5 totalCountOfNotesWithCollabAndFullscreenDrawing:(id)a6 totalCountOfNotesWithCollabAndTables:(id)a7 totalCountOfNotesWithCollabAndOtherAttachments:(id)a8 totalCountOfNotesWithCollabAndChecklist:(id)a9 totalCountOfNotesWithCollabAndIsPinned:(id)a10 totalCountOfNotesWithDocScanAndInlineDrawingV1:(id)a11 totalCountOfNotesWithDocScanAndInlineDrawingV2:(id)a12 totalCountOfNotesWithDocScanAndFullscreenDrawing:(id)a13 totalCountOfNotesWithDocScanAndTables:(id)a14 totalCountOfNotesWithDocScanAndOtherAttachments:(id)a15 totalCountOfNotesWithDocScanAndChecklist:(id)a16 totalCountOfNotesWithDocScanAndIsPinned:(id)a17 totalCountOfNotesWithDocScanAndIsLocked:(id)a18 totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2:(id)a19 totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing:(id)a20 totalCountOfNotesWithInlineDrawingV1AndTables:(id)a21 totalCountOfNotesWithInlineDrawingV1AndOtherAttachments:(id)a22 totalCountOfNotesWithInlineDrawingV1AndChecklist:(id)a23 totalCountOfNotesWithInlineDrawingV1AndIsPinned:(id)a24 totalCountOfNotesWithInlineDrawingV1AndIsLocked:(id)a25 totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing:(id)a26 totalCountOfNotesWithInlineDrawingV2AndTables:(id)a27 totalCountOfNotesWithInlineDrawingV2AndOtherAttachments:(id)a28 totalCountOfNotesWithInlineDrawingV2AndChecklist:(id)a29 totalCountOfNotesWithInlineDrawingV2AndIsPinned:(id)a30 totalCountOfNotesWithInlineDrawingV2AndIsLocked:(id)a31 totalCountOfNotesWithFullscreenDrawingAndTables:(id)a32 totalCountOfNotesWithFullscreenDrawingAndOtherAttachments:(id)a33 totalCountOfNotesWithFullscreenDrawingAndChecklist:(id)a34 totalCountOfNotesWithFullscreenDrawingAndIsPinned:(id)a35 totalCountOfNotesWithFullscreenDrawingAndIsLocked:(id)a36 totalCountOfNotesWithTablesAndOtherAttachments:(id)a37 totalCountOfNotesWithTablesAndChecklist:(id)a38 totalCountOfNotesWithTablesAndIsPinned:(id)a39 totalCountOfNotesWithTablesAndIsLocked:(id)a40 totalCountOfNotesWithOtherAttachmentsAndChecklist:(id)a41 totalCountOfNotesWithOtherAttachmentsAndIsPinned:(id)a42 totalCountOfNotesWithOtherAttachmentsAndIsLocked:(id)a43 totalCountOfNotesWithChecklistAndIsPinned:(id)a44 totalCountOfNotesIsPinnedAndIsLocked:(id)a45
{
  v97 = a3;
  v96 = a4;
  v95 = a5;
  v94 = a6;
  v58 = a7;
  v93 = a7;
  v92 = a8;
  v91 = a9;
  v90 = a10;
  v89 = a11;
  v88 = a12;
  v87 = a13;
  v86 = a14;
  v85 = a15;
  v84 = a16;
  v83 = a17;
  v82 = a18;
  v81 = a19;
  v80 = a20;
  v79 = a21;
  v78 = a22;
  v77 = a23;
  v76 = a24;
  v75 = a25;
  v74 = a26;
  v73 = a27;
  v68 = a28;
  v49 = a29;
  v50 = a30;
  v71 = a31;
  v69 = a32;
  v51 = a33;
  v52 = a34;
  v72 = a35;
  v70 = a36;
  v67 = a37;
  v66 = a38;
  v65 = a39;
  v64 = a40;
  v63 = a41;
  v62 = a42;
  v60 = a43;
  v59 = a44;
  v53 = a45;
  v99.receiver = self;
  v99.super_class = ICASAccountNotesTwoFactorItemData;
  v54 = [(ICASAccountNotesTwoFactorItemData *)&v99 init];
  v55 = v54;
  if (v54)
  {
    objc_storeStrong(&v54->_totalCountOfNotesWithCollabAndDocScan, a3);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndInlineDrawingV1, a4);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndInlineDrawingV2, a5);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndFullscreenDrawing, a6);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndTables, v58);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndOtherAttachments, a8);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndChecklist, a9);
    objc_storeStrong(&v55->_totalCountOfNotesWithCollabAndIsPinned, a10);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndInlineDrawingV1, a11);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndInlineDrawingV2, a12);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndFullscreenDrawing, a13);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndTables, a14);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndOtherAttachments, a15);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndChecklist, a16);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndIsPinned, a17);
    objc_storeStrong(&v55->_totalCountOfNotesWithDocScanAndIsLocked, a18);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2, a19);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing, a20);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndTables, a21);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndOtherAttachments, a22);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndChecklist, a23);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndIsPinned, a24);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV1AndIsLocked, a25);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing, a26);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndTables, a27);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndOtherAttachments, a28);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndChecklist, a29);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndIsPinned, a30);
    objc_storeStrong(&v55->_totalCountOfNotesWithInlineDrawingV2AndIsLocked, a31);
    objc_storeStrong(&v55->_totalCountOfNotesWithFullscreenDrawingAndTables, a32);
    objc_storeStrong(&v55->_totalCountOfNotesWithFullscreenDrawingAndOtherAttachments, a33);
    objc_storeStrong(&v55->_totalCountOfNotesWithFullscreenDrawingAndChecklist, a34);
    objc_storeStrong(&v55->_totalCountOfNotesWithFullscreenDrawingAndIsPinned, a35);
    objc_storeStrong(&v55->_totalCountOfNotesWithFullscreenDrawingAndIsLocked, a36);
    objc_storeStrong(&v55->_totalCountOfNotesWithTablesAndOtherAttachments, a37);
    objc_storeStrong(&v55->_totalCountOfNotesWithTablesAndChecklist, a38);
    objc_storeStrong(&v55->_totalCountOfNotesWithTablesAndIsPinned, a39);
    objc_storeStrong(&v55->_totalCountOfNotesWithTablesAndIsLocked, a40);
    objc_storeStrong(&v55->_totalCountOfNotesWithOtherAttachmentsAndChecklist, a41);
    objc_storeStrong(&v55->_totalCountOfNotesWithOtherAttachmentsAndIsPinned, a42);
    objc_storeStrong(&v55->_totalCountOfNotesWithOtherAttachmentsAndIsLocked, a43);
    objc_storeStrong(&v55->_totalCountOfNotesWithChecklistAndIsPinned, a44);
    objc_storeStrong(&v55->_totalCountOfNotesIsPinnedAndIsLocked, a45);
  }

  return v55;
}

- (id)toDict
{
  v136[43] = *MEMORY[0x277D85DE8];
  v135[0] = @"totalCountOfNotesWithCollabAndDocScan";
  v134 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndDocScan];
  if (v134)
  {
    v3 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndDocScan];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v133 = v3;
  v136[0] = v3;
  v135[1] = @"totalCountOfNotesWithCollabAndInlineDrawingV1";
  v132 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndInlineDrawingV1];
  if (v132)
  {
    v4 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndInlineDrawingV1];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v131 = v4;
  v136[1] = v4;
  v135[2] = @"totalCountOfNotesWithCollabAndInlineDrawingV2";
  v130 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndInlineDrawingV2];
  if (v130)
  {
    v5 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndInlineDrawingV2];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v129 = v5;
  v136[2] = v5;
  v135[3] = @"totalCountOfNotesWithCollabAndFullscreenDrawing";
  v128 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndFullscreenDrawing];
  if (v128)
  {
    v6 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndFullscreenDrawing];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v127 = v6;
  v136[3] = v6;
  v135[4] = @"totalCountOfNotesWithCollabAndTables";
  v126 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndTables];
  if (v126)
  {
    v7 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndTables];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v125 = v7;
  v136[4] = v7;
  v135[5] = @"totalCountOfNotesWithCollabAndOtherAttachments";
  v124 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndOtherAttachments];
  if (v124)
  {
    v8 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndOtherAttachments];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v123 = v8;
  v136[5] = v8;
  v135[6] = @"totalCountOfNotesWithCollabAndChecklist";
  v122 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndChecklist];
  if (v122)
  {
    v9 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndChecklist];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v121 = v9;
  v136[6] = v9;
  v135[7] = @"totalCountOfNotesWithCollabAndIsPinned";
  v120 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndIsPinned];
  if (v120)
  {
    v10 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithCollabAndIsPinned];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v119 = v10;
  v136[7] = v10;
  v135[8] = @"totalCountOfNotesWithDocScanAndInlineDrawingV1";
  v118 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndInlineDrawingV1];
  if (v118)
  {
    v11 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndInlineDrawingV1];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v117 = v11;
  v136[8] = v11;
  v135[9] = @"totalCountOfNotesWithDocScanAndInlineDrawingV2";
  v116 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndInlineDrawingV2];
  if (v116)
  {
    v12 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndInlineDrawingV2];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v115 = v12;
  v136[9] = v12;
  v135[10] = @"totalCountOfNotesWithDocScanAndFullscreenDrawing";
  v114 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndFullscreenDrawing];
  if (v114)
  {
    v13 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndFullscreenDrawing];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v113 = v13;
  v136[10] = v13;
  v135[11] = @"totalCountOfNotesWithDocScanAndTables";
  v112 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndTables];
  if (v112)
  {
    v14 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndTables];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v111 = v14;
  v136[11] = v14;
  v135[12] = @"totalCountOfNotesWithDocScanAndOtherAttachments";
  v110 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndOtherAttachments];
  if (v110)
  {
    v15 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndOtherAttachments];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v109 = v15;
  v136[12] = v15;
  v135[13] = @"totalCountOfNotesWithDocScanAndChecklist";
  v108 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndChecklist];
  if (v108)
  {
    v16 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndChecklist];
  }

  else
  {
    v16 = objc_opt_new();
  }

  v107 = v16;
  v136[13] = v16;
  v135[14] = @"totalCountOfNotesWithDocScanAndIsPinned";
  v106 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndIsPinned];
  if (v106)
  {
    v17 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndIsPinned];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v105 = v17;
  v136[14] = v17;
  v135[15] = @"totalCountOfNotesWithDocScanAndIsLocked";
  v104 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndIsLocked];
  if (v104)
  {
    v18 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithDocScanAndIsLocked];
  }

  else
  {
    v18 = objc_opt_new();
  }

  v103 = v18;
  v136[15] = v18;
  v135[16] = @"totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2";
  v102 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2];
  if (v102)
  {
    v19 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndInlineDrawingV2];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v101 = v19;
  v136[16] = v19;
  v135[17] = @"totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing";
  v100 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing];
  if (v100)
  {
    v20 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndFullscreenDrawing];
  }

  else
  {
    v20 = objc_opt_new();
  }

  v99 = v20;
  v136[17] = v20;
  v135[18] = @"totalCountOfNotesWithInlineDrawingV1AndTables";
  v98 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndTables];
  if (v98)
  {
    v21 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndTables];
  }

  else
  {
    v21 = objc_opt_new();
  }

  v97 = v21;
  v136[18] = v21;
  v135[19] = @"totalCountOfNotesWithInlineDrawingV1AndOtherAttachments";
  v96 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndOtherAttachments];
  if (v96)
  {
    v22 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndOtherAttachments];
  }

  else
  {
    v22 = objc_opt_new();
  }

  v95 = v22;
  v136[19] = v22;
  v135[20] = @"totalCountOfNotesWithInlineDrawingV1AndChecklist";
  v94 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndChecklist];
  if (v94)
  {
    v23 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndChecklist];
  }

  else
  {
    v23 = objc_opt_new();
  }

  v93 = v23;
  v136[20] = v23;
  v135[21] = @"totalCountOfNotesWithInlineDrawingV1AndIsPinned";
  v92 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndIsPinned];
  if (v92)
  {
    v24 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndIsPinned];
  }

  else
  {
    v24 = objc_opt_new();
  }

  v91 = v24;
  v136[21] = v24;
  v135[22] = @"totalCountOfNotesWithInlineDrawingV1AndIsLocked";
  v90 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndIsLocked];
  if (v90)
  {
    v25 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV1AndIsLocked];
  }

  else
  {
    v25 = objc_opt_new();
  }

  v89 = v25;
  v136[22] = v25;
  v135[23] = @"totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing";
  v88 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing];
  if (v88)
  {
    v26 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndFullscreenDrawing];
  }

  else
  {
    v26 = objc_opt_new();
  }

  v87 = v26;
  v136[23] = v26;
  v135[24] = @"totalCountOfNotesWithInlineDrawingV2AndTables";
  v86 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndTables];
  if (v86)
  {
    v27 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndTables];
  }

  else
  {
    v27 = objc_opt_new();
  }

  v85 = v27;
  v136[24] = v27;
  v135[25] = @"totalCountOfNotesWithInlineDrawingV2AndOtherAttachments";
  v84 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndOtherAttachments];
  if (v84)
  {
    v28 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndOtherAttachments];
  }

  else
  {
    v28 = objc_opt_new();
  }

  v83 = v28;
  v136[25] = v28;
  v135[26] = @"totalCountOfNotesWithInlineDrawingV2AndChecklist";
  v82 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndChecklist];
  if (v82)
  {
    v29 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndChecklist];
  }

  else
  {
    v29 = objc_opt_new();
  }

  v81 = v29;
  v136[26] = v29;
  v135[27] = @"totalCountOfNotesWithInlineDrawingV2AndIsPinned";
  v80 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndIsPinned];
  if (v80)
  {
    v30 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndIsPinned];
  }

  else
  {
    v30 = objc_opt_new();
  }

  v79 = v30;
  v136[27] = v30;
  v135[28] = @"totalCountOfNotesWithInlineDrawingV2AndIsLocked";
  v78 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndIsLocked];
  if (v78)
  {
    v31 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithInlineDrawingV2AndIsLocked];
  }

  else
  {
    v31 = objc_opt_new();
  }

  v77 = v31;
  v136[28] = v31;
  v135[29] = @"totalCountOfNotesWithFullscreenDrawingAndTables";
  v76 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndTables];
  if (v76)
  {
    v32 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndTables];
  }

  else
  {
    v32 = objc_opt_new();
  }

  v75 = v32;
  v136[29] = v32;
  v135[30] = @"totalCountOfNotesWithFullscreenDrawingAndOtherAttachments";
  v74 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndOtherAttachments];
  if (v74)
  {
    v33 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndOtherAttachments];
  }

  else
  {
    v33 = objc_opt_new();
  }

  v73 = v33;
  v136[30] = v33;
  v135[31] = @"totalCountOfNotesWithFullscreenDrawingAndChecklist";
  v72 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndChecklist];
  if (v72)
  {
    v34 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndChecklist];
  }

  else
  {
    v34 = objc_opt_new();
  }

  v71 = v34;
  v136[31] = v34;
  v135[32] = @"totalCountOfNotesWithFullscreenDrawingAndIsPinned";
  v70 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndIsPinned];
  if (v70)
  {
    v35 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndIsPinned];
  }

  else
  {
    v35 = objc_opt_new();
  }

  v69 = v35;
  v136[32] = v35;
  v135[33] = @"totalCountOfNotesWithFullscreenDrawingAndIsLocked";
  v68 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndIsLocked];
  if (v68)
  {
    v36 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithFullscreenDrawingAndIsLocked];
  }

  else
  {
    v36 = objc_opt_new();
  }

  v67 = v36;
  v136[33] = v36;
  v135[34] = @"totalCountOfNotesWithTablesAndOtherAttachments";
  v66 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndOtherAttachments];
  if (v66)
  {
    v37 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndOtherAttachments];
  }

  else
  {
    v37 = objc_opt_new();
  }

  v65 = v37;
  v136[34] = v37;
  v135[35] = @"totalCountOfNotesWithTablesAndChecklist";
  v64 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndChecklist];
  if (v64)
  {
    v38 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndChecklist];
  }

  else
  {
    v38 = objc_opt_new();
  }

  v63 = v38;
  v136[35] = v38;
  v135[36] = @"totalCountOfNotesWithTablesAndIsPinned";
  v62 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndIsPinned];
  if (v62)
  {
    v39 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndIsPinned];
  }

  else
  {
    v39 = objc_opt_new();
  }

  v61 = v39;
  v136[36] = v39;
  v135[37] = @"totalCountOfNotesWithTablesAndIsLocked";
  v60 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndIsLocked];
  if (v60)
  {
    v40 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithTablesAndIsLocked];
  }

  else
  {
    v40 = objc_opt_new();
  }

  v59 = v40;
  v136[37] = v40;
  v135[38] = @"totalCountOfNotesWithOtherAttachmentsAndChecklist";
  v41 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndChecklist];
  if (v41)
  {
    v42 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndChecklist];
  }

  else
  {
    v42 = objc_opt_new();
  }

  v43 = v42;
  v136[38] = v42;
  v135[39] = @"totalCountOfNotesWithOtherAttachmentsAndIsPinned";
  v44 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndIsPinned];
  if (v44)
  {
    v45 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndIsPinned];
  }

  else
  {
    v45 = objc_opt_new();
  }

  v46 = v45;
  v136[39] = v45;
  v135[40] = @"totalCountOfNotesWithOtherAttachmentsAndIsLocked";
  v47 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndIsLocked];
  if (v47)
  {
    v48 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithOtherAttachmentsAndIsLocked];
  }

  else
  {
    v48 = objc_opt_new();
  }

  v49 = v48;
  v136[40] = v48;
  v135[41] = @"totalCountOfNotesWithChecklistAndIsPinned";
  v50 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithChecklistAndIsPinned];
  if (v50)
  {
    v51 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesWithChecklistAndIsPinned];
  }

  else
  {
    v51 = objc_opt_new();
  }

  v52 = v51;
  v136[41] = v51;
  v135[42] = @"totalCountOfNotesIsPinnedAndIsLocked";
  v53 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesIsPinnedAndIsLocked];
  if (v53)
  {
    v54 = [(ICASAccountNotesTwoFactorItemData *)self totalCountOfNotesIsPinnedAndIsLocked];
  }

  else
  {
    v54 = objc_opt_new();
  }

  v55 = v54;
  v136[42] = v54;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v136 forKeys:v135 count:43];

  v56 = *MEMORY[0x277D85DE8];

  return v58;
}

@end