@interface ICASAccountSnapshotData
- (id)initWithUserStartMonth:(void *)a3 userStartYear:(void *)a4 saltVersion:(void *)a5 accountSnapshotSummary:(void *)a6 accountNotesTwoFactorSummary:(void *)a7 collabNotesSummary:(void *)a8 collabFoldersSummary:(id)a9 noteAttachmentSummary:(id)a10 scrapPaperAttachmentSummary:(id)a11 lockedNotesSummary:(id)a12 smartFoldersSummary:(id)a13 totalNoteCount:(id)a14 totalFolderCount:(id)a15 totalSmartFolderCount:(id)a16 totalChecklistCount:(id)a17 totalNotesWithChecklistCount:(id)a18 totalCountOfPinnedNotes:(id)a19 totalCountOfLockedNotes:(id)a20 deviceSnapshotSummary:(id)a21 userSnapshotSummary:(id)a22 attachmentUTISummary:(id)a23 folderDirectNoteCountHistogram:(id)a24 collabRootFolderTotalNoteCountHistogram:(id)a25 docScanPageCountHistogram:(id)a26 collabOwnedRootFolderInviteeCountHistogram:(id)a27 collabOwnedRootFolderAcceptanceCountHistogram:(id)a28 collabOwnedRootFolderNoReplyCountHistogram:(id)a29 collabOwnedRootFolderAcceptanceRatioHistogram:(id)a30 collabOwnedSingleNoteInviteeCountHistogram:(id)a31 collabOwnedSingleNoteAcceptanceCountHistogram:(id)a32 collabOwnedSingleNoteNoReplyCountHistogram:(id)a33 collabOwnedSingleNoteAcceptanceRatioHistogram:(id)a34 noteCharCountHistogram:(id)a35 inlineDrawingV1TotalStrokeCountHistogram:(id)a36 inlineDrawingV1PencilStrokeCountHistogram:(id)a37 inlineDrawingV1FingerStrokeCountHistogram:(id)a38 inlineDrawingV1FingerStrokeRatioHistogram:(id)a39 inlineDrawingV2TotalStrokeCountHistogram:(id)a40 inlineDrawingV2PencilStrokeCountHistogram:(id)a41 inlineDrawingV2FingerStrokeCountHistogram:(id)a42 inlineDrawingV2FingerStrokeRatioHistogram:(id)a43 fullscreenDrawingStrokeCountHistogram:(id)a44 tableRowCountHistogram:(id)a45 tableColumnCountHistogram:(id)a46 tableCellCountHistogram:(id)a47 passwordProtectedNoteWeeklyAgeHistogram:(id)a48 topLevelFolderTotalNoteCountHistogram:(id)a49 attachmentCountPerNoteHistogram:(id)a50 drawingCountPerNoteHistogram:(id)a51 inlineDrawingFingerStrokesCountPerNoteHistogram:(id)a52 inlineDrawingPencilStrokesCountPerNoteHistogram:(id)a53 fullScreenDrawingStrokesCountPerNoteHistogram:(id)a54 totalStrokesCountPerNoteHistogram:(id)a55 tagCountPerNoteHistogram:(id)a56 distinctTagCountPerNoteHistogram:(id)a57 totalCountOfNotesWithTags:(id)a58 totalCountOfNotesWithCollapsedSections:(id)a59 totalCountOfNotesWithMentions:(id)a60 totalScrapPaperCount:(id)a61 totalCountOfScrapPapersWithTags:(id)a62 totalCountOfScrapPapersWithMentions:(id)a63 totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:;
- (id)toDict;
@end

@implementation ICASAccountSnapshotData

- (id)initWithUserStartMonth:(void *)a3 userStartYear:(void *)a4 saltVersion:(void *)a5 accountSnapshotSummary:(void *)a6 accountNotesTwoFactorSummary:(void *)a7 collabNotesSummary:(void *)a8 collabFoldersSummary:(id)a9 noteAttachmentSummary:(id)a10 scrapPaperAttachmentSummary:(id)a11 lockedNotesSummary:(id)a12 smartFoldersSummary:(id)a13 totalNoteCount:(id)a14 totalFolderCount:(id)a15 totalSmartFolderCount:(id)a16 totalChecklistCount:(id)a17 totalNotesWithChecklistCount:(id)a18 totalCountOfPinnedNotes:(id)a19 totalCountOfLockedNotes:(id)a20 deviceSnapshotSummary:(id)a21 userSnapshotSummary:(id)a22 attachmentUTISummary:(id)a23 folderDirectNoteCountHistogram:(id)a24 collabRootFolderTotalNoteCountHistogram:(id)a25 docScanPageCountHistogram:(id)a26 collabOwnedRootFolderInviteeCountHistogram:(id)a27 collabOwnedRootFolderAcceptanceCountHistogram:(id)a28 collabOwnedRootFolderNoReplyCountHistogram:(id)a29 collabOwnedRootFolderAcceptanceRatioHistogram:(id)a30 collabOwnedSingleNoteInviteeCountHistogram:(id)a31 collabOwnedSingleNoteAcceptanceCountHistogram:(id)a32 collabOwnedSingleNoteNoReplyCountHistogram:(id)a33 collabOwnedSingleNoteAcceptanceRatioHistogram:(id)a34 noteCharCountHistogram:(id)a35 inlineDrawingV1TotalStrokeCountHistogram:(id)a36 inlineDrawingV1PencilStrokeCountHistogram:(id)a37 inlineDrawingV1FingerStrokeCountHistogram:(id)a38 inlineDrawingV1FingerStrokeRatioHistogram:(id)a39 inlineDrawingV2TotalStrokeCountHistogram:(id)a40 inlineDrawingV2PencilStrokeCountHistogram:(id)a41 inlineDrawingV2FingerStrokeCountHistogram:(id)a42 inlineDrawingV2FingerStrokeRatioHistogram:(id)a43 fullscreenDrawingStrokeCountHistogram:(id)a44 tableRowCountHistogram:(id)a45 tableColumnCountHistogram:(id)a46 tableCellCountHistogram:(id)a47 passwordProtectedNoteWeeklyAgeHistogram:(id)a48 topLevelFolderTotalNoteCountHistogram:(id)a49 attachmentCountPerNoteHistogram:(id)a50 drawingCountPerNoteHistogram:(id)a51 inlineDrawingFingerStrokesCountPerNoteHistogram:(id)a52 inlineDrawingPencilStrokesCountPerNoteHistogram:(id)a53 fullScreenDrawingStrokesCountPerNoteHistogram:(id)a54 totalStrokesCountPerNoteHistogram:(id)a55 tagCountPerNoteHistogram:(id)a56 distinctTagCountPerNoteHistogram:(id)a57 totalCountOfNotesWithTags:(id)a58 totalCountOfNotesWithCollapsedSections:(id)a59 totalCountOfNotesWithMentions:(id)a60 totalScrapPaperCount:(id)a61 totalCountOfScrapPapersWithTags:(id)a62 totalCountOfScrapPapersWithMentions:(id)a63 totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:
{
  v143 = a3;
  v142 = a4;
  v141 = a5;
  v140 = a6;
  v139 = a7;
  v138 = a8;
  v137 = a9;
  v136 = a10;
  v135 = a11;
  v134 = a12;
  v133 = a13;
  v132 = a14;
  v131 = a15;
  v130 = a16;
  v129 = a17;
  v128 = a18;
  v127 = a19;
  v126 = a20;
  v125 = a21;
  v124 = a22;
  v123 = a23;
  v122 = a24;
  v121 = a25;
  v120 = a26;
  v119 = a27;
  v118 = a28;
  v117 = a29;
  v116 = a30;
  v115 = a31;
  v114 = a32;
  v113 = a33;
  v112 = a34;
  v111 = a35;
  v110 = a36;
  v109 = a37;
  v108 = a38;
  v107 = a39;
  v106 = a40;
  v72 = a41;
  v73 = a42;
  v74 = a43;
  v75 = a44;
  v100 = a45;
  v97 = a46;
  v76 = a47;
  v99 = a48;
  v96 = a49;
  v105 = a50;
  v104 = a51;
  v103 = a52;
  v102 = a53;
  v101 = a54;
  v98 = a55;
  v95 = a56;
  v94 = a57;
  v93 = a58;
  v92 = a59;
  v91 = a60;
  v90 = a61;
  v89 = a62;
  v88 = a63;
  v87 = a64;
  v85 = a65;
  v84 = a66;
  v83 = a67;
  v82 = a68;
  v81 = a69;
  v146.receiver = a1;
  v146.super_class = ICASAccountSnapshotData;
  v77 = [(ICASAccountSnapshotData *)&v146 init];
  p_isa = &v77->super.isa;
  if (v77)
  {
    objc_storeStrong(&v77->_userStartMonth, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
    objc_storeStrong(p_isa + 6, a8);
    objc_storeStrong(p_isa + 7, a9);
    objc_storeStrong(p_isa + 8, a10);
    objc_storeStrong(p_isa + 9, a11);
    objc_storeStrong(p_isa + 10, a12);
    objc_storeStrong(p_isa + 11, a13);
    objc_storeStrong(p_isa + 12, a14);
    objc_storeStrong(p_isa + 13, a15);
    objc_storeStrong(p_isa + 14, a16);
    objc_storeStrong(p_isa + 15, a17);
    objc_storeStrong(p_isa + 16, a18);
    objc_storeStrong(p_isa + 17, a19);
    objc_storeStrong(p_isa + 18, a20);
    objc_storeStrong(p_isa + 19, a21);
    objc_storeStrong(p_isa + 20, a22);
    objc_storeStrong(p_isa + 21, a23);
    objc_storeStrong(p_isa + 22, a24);
    objc_storeStrong(p_isa + 23, a25);
    objc_storeStrong(p_isa + 24, a26);
    objc_storeStrong(p_isa + 25, a27);
    objc_storeStrong(p_isa + 26, a28);
    objc_storeStrong(p_isa + 27, a29);
    objc_storeStrong(p_isa + 28, a30);
    objc_storeStrong(p_isa + 29, a31);
    objc_storeStrong(p_isa + 30, a32);
    objc_storeStrong(p_isa + 31, a33);
    objc_storeStrong(p_isa + 32, a34);
    objc_storeStrong(p_isa + 33, a35);
    objc_storeStrong(p_isa + 34, a36);
    objc_storeStrong(p_isa + 35, a37);
    objc_storeStrong(p_isa + 36, a38);
    objc_storeStrong(p_isa + 37, a39);
    objc_storeStrong(p_isa + 38, a40);
    objc_storeStrong(p_isa + 39, a41);
    objc_storeStrong(p_isa + 40, a42);
    objc_storeStrong(p_isa + 41, a43);
    objc_storeStrong(p_isa + 42, a44);
    objc_storeStrong(p_isa + 43, a45);
    objc_storeStrong(p_isa + 44, a46);
    objc_storeStrong(p_isa + 45, a47);
    objc_storeStrong(p_isa + 46, a48);
    objc_storeStrong(p_isa + 47, a49);
    objc_storeStrong(p_isa + 48, a50);
    objc_storeStrong(p_isa + 49, a51);
    objc_storeStrong(p_isa + 50, a52);
    objc_storeStrong(p_isa + 51, a53);
    objc_storeStrong(p_isa + 52, a54);
    objc_storeStrong(p_isa + 53, a55);
    objc_storeStrong(p_isa + 54, a56);
    objc_storeStrong(p_isa + 55, a57);
    objc_storeStrong(p_isa + 56, a58);
    objc_storeStrong(p_isa + 57, a59);
    objc_storeStrong(p_isa + 58, a60);
    objc_storeStrong(p_isa + 59, a61);
    objc_storeStrong(p_isa + 60, a62);
    objc_storeStrong(p_isa + 61, a63);
    objc_storeStrong(p_isa + 62, a64);
    objc_storeStrong(p_isa + 63, a65);
    objc_storeStrong(p_isa + 64, a66);
    objc_storeStrong(p_isa + 65, a67);
    objc_storeStrong(p_isa + 66, a68);
    objc_storeStrong(p_isa + 67, a69);
  }

  return p_isa;
}

- (id)toDict
{
  v208[67] = *MEMORY[0x277D85DE8];
  v207[0] = @"userStartMonth";
  v206 = [(ICASAccountSnapshotData *)self userStartMonth];
  if (v206)
  {
    v3 = [(ICASAccountSnapshotData *)self userStartMonth];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v205 = v3;
  v208[0] = v3;
  v207[1] = @"userStartYear";
  v204 = [(ICASAccountSnapshotData *)self userStartYear];
  if (v204)
  {
    v4 = [(ICASAccountSnapshotData *)self userStartYear];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v203 = v4;
  v208[1] = v4;
  v207[2] = @"saltVersion";
  v202 = [(ICASAccountSnapshotData *)self saltVersion];
  if (v202)
  {
    v5 = [(ICASAccountSnapshotData *)self saltVersion];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v201 = v5;
  v208[2] = v5;
  v207[3] = @"accountSnapshotSummary";
  v200 = [(ICASAccountSnapshotData *)self accountSnapshotSummary];
  if (v200)
  {
    v6 = [(ICASAccountSnapshotData *)self accountSnapshotSummary];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v199 = v6;
  v208[3] = v6;
  v207[4] = @"accountNotesTwoFactorSummary";
  v198 = [(ICASAccountSnapshotData *)self accountNotesTwoFactorSummary];
  if (v198)
  {
    v7 = [(ICASAccountSnapshotData *)self accountNotesTwoFactorSummary];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v197 = v7;
  v208[4] = v7;
  v207[5] = @"collabNotesSummary";
  v196 = [(ICASAccountSnapshotData *)self collabNotesSummary];
  if (v196)
  {
    v8 = [(ICASAccountSnapshotData *)self collabNotesSummary];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v195 = v8;
  v208[5] = v8;
  v207[6] = @"collabFoldersSummary";
  v194 = [(ICASAccountSnapshotData *)self collabFoldersSummary];
  if (v194)
  {
    v9 = [(ICASAccountSnapshotData *)self collabFoldersSummary];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v193 = v9;
  v208[6] = v9;
  v207[7] = @"noteAttachmentSummary";
  v192 = [(ICASAccountSnapshotData *)self noteAttachmentSummary];
  if (v192)
  {
    v10 = [(ICASAccountSnapshotData *)self noteAttachmentSummary];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v191 = v10;
  v208[7] = v10;
  v207[8] = @"scrapPaperAttachmentSummary";
  v190 = [(ICASAccountSnapshotData *)self scrapPaperAttachmentSummary];
  if (v190)
  {
    v11 = [(ICASAccountSnapshotData *)self scrapPaperAttachmentSummary];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v189 = v11;
  v208[8] = v11;
  v207[9] = @"lockedNotesSummary";
  v188 = [(ICASAccountSnapshotData *)self lockedNotesSummary];
  if (v188)
  {
    v12 = [(ICASAccountSnapshotData *)self lockedNotesSummary];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v187 = v12;
  v208[9] = v12;
  v207[10] = @"smartFoldersSummary";
  v186 = [(ICASAccountSnapshotData *)self smartFoldersSummary];
  if (v186)
  {
    v13 = [(ICASAccountSnapshotData *)self smartFoldersSummary];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v185 = v13;
  v208[10] = v13;
  v207[11] = @"totalNoteCount";
  v184 = [(ICASAccountSnapshotData *)self totalNoteCount];
  if (v184)
  {
    v14 = [(ICASAccountSnapshotData *)self totalNoteCount];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v183 = v14;
  v208[11] = v14;
  v207[12] = @"totalFolderCount";
  v182 = [(ICASAccountSnapshotData *)self totalFolderCount];
  if (v182)
  {
    v15 = [(ICASAccountSnapshotData *)self totalFolderCount];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v181 = v15;
  v208[12] = v15;
  v207[13] = @"totalSmartFolderCount";
  v180 = [(ICASAccountSnapshotData *)self totalSmartFolderCount];
  if (v180)
  {
    v16 = [(ICASAccountSnapshotData *)self totalSmartFolderCount];
  }

  else
  {
    v16 = objc_opt_new();
  }

  v179 = v16;
  v208[13] = v16;
  v207[14] = @"totalChecklistCount";
  v178 = [(ICASAccountSnapshotData *)self totalChecklistCount];
  if (v178)
  {
    v17 = [(ICASAccountSnapshotData *)self totalChecklistCount];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v177 = v17;
  v208[14] = v17;
  v207[15] = @"totalNotesWithChecklistCount";
  v176 = [(ICASAccountSnapshotData *)self totalNotesWithChecklistCount];
  if (v176)
  {
    v18 = [(ICASAccountSnapshotData *)self totalNotesWithChecklistCount];
  }

  else
  {
    v18 = objc_opt_new();
  }

  v175 = v18;
  v208[15] = v18;
  v207[16] = @"totalCountOfPinnedNotes";
  v174 = [(ICASAccountSnapshotData *)self totalCountOfPinnedNotes];
  if (v174)
  {
    v19 = [(ICASAccountSnapshotData *)self totalCountOfPinnedNotes];
  }

  else
  {
    v19 = objc_opt_new();
  }

  v173 = v19;
  v208[16] = v19;
  v207[17] = @"totalCountOfLockedNotes";
  v172 = [(ICASAccountSnapshotData *)self totalCountOfLockedNotes];
  if (v172)
  {
    v20 = [(ICASAccountSnapshotData *)self totalCountOfLockedNotes];
  }

  else
  {
    v20 = objc_opt_new();
  }

  v171 = v20;
  v208[17] = v20;
  v207[18] = @"deviceSnapshotSummary";
  v170 = [(ICASAccountSnapshotData *)self deviceSnapshotSummary];
  if (v170)
  {
    v21 = [(ICASAccountSnapshotData *)self deviceSnapshotSummary];
  }

  else
  {
    v21 = objc_opt_new();
  }

  v169 = v21;
  v208[18] = v21;
  v207[19] = @"userSnapshotSummary";
  v168 = [(ICASAccountSnapshotData *)self userSnapshotSummary];
  if (v168)
  {
    v22 = [(ICASAccountSnapshotData *)self userSnapshotSummary];
  }

  else
  {
    v22 = objc_opt_new();
  }

  v167 = v22;
  v208[19] = v22;
  v207[20] = @"attachmentUTISummary";
  v166 = [(ICASAccountSnapshotData *)self attachmentUTISummary];
  if (v166)
  {
    v23 = [(ICASAccountSnapshotData *)self attachmentUTISummary];
  }

  else
  {
    v23 = objc_opt_new();
  }

  v165 = v23;
  v208[20] = v23;
  v207[21] = @"folderDirectNoteCountHistogram";
  v164 = [(ICASAccountSnapshotData *)self folderDirectNoteCountHistogram];
  if (v164)
  {
    v24 = [(ICASAccountSnapshotData *)self folderDirectNoteCountHistogram];
  }

  else
  {
    v24 = objc_opt_new();
  }

  v163 = v24;
  v208[21] = v24;
  v207[22] = @"collabRootFolderTotalNoteCountHistogram";
  v162 = [(ICASAccountSnapshotData *)self collabRootFolderTotalNoteCountHistogram];
  if (v162)
  {
    v25 = [(ICASAccountSnapshotData *)self collabRootFolderTotalNoteCountHistogram];
  }

  else
  {
    v25 = objc_opt_new();
  }

  v161 = v25;
  v208[22] = v25;
  v207[23] = @"docScanPageCountHistogram";
  v160 = [(ICASAccountSnapshotData *)self docScanPageCountHistogram];
  if (v160)
  {
    v26 = [(ICASAccountSnapshotData *)self docScanPageCountHistogram];
  }

  else
  {
    v26 = objc_opt_new();
  }

  v159 = v26;
  v208[23] = v26;
  v207[24] = @"collabOwnedRootFolderInviteeCountHistogram";
  v158 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderInviteeCountHistogram];
  if (v158)
  {
    v27 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderInviteeCountHistogram];
  }

  else
  {
    v27 = objc_opt_new();
  }

  v157 = v27;
  v208[24] = v27;
  v207[25] = @"collabOwnedRootFolderAcceptanceCountHistogram";
  v156 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderAcceptanceCountHistogram];
  if (v156)
  {
    v28 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderAcceptanceCountHistogram];
  }

  else
  {
    v28 = objc_opt_new();
  }

  v155 = v28;
  v208[25] = v28;
  v207[26] = @"collabOwnedRootFolderNoReplyCountHistogram";
  v154 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderNoReplyCountHistogram];
  if (v154)
  {
    v29 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderNoReplyCountHistogram];
  }

  else
  {
    v29 = objc_opt_new();
  }

  v153 = v29;
  v208[26] = v29;
  v207[27] = @"collabOwnedRootFolderAcceptanceRatioHistogram";
  v152 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderAcceptanceRatioHistogram];
  if (v152)
  {
    v30 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderAcceptanceRatioHistogram];
  }

  else
  {
    v30 = objc_opt_new();
  }

  v151 = v30;
  v208[27] = v30;
  v207[28] = @"collabOwnedSingleNoteInviteeCountHistogram";
  v150 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteInviteeCountHistogram];
  if (v150)
  {
    v31 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteInviteeCountHistogram];
  }

  else
  {
    v31 = objc_opt_new();
  }

  v149 = v31;
  v208[28] = v31;
  v207[29] = @"collabOwnedSingleNoteAcceptanceCountHistogram";
  v148 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteAcceptanceCountHistogram];
  if (v148)
  {
    v32 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteAcceptanceCountHistogram];
  }

  else
  {
    v32 = objc_opt_new();
  }

  v147 = v32;
  v208[29] = v32;
  v207[30] = @"collabOwnedSingleNoteNoReplyCountHistogram";
  v146 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteNoReplyCountHistogram];
  if (v146)
  {
    v33 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteNoReplyCountHistogram];
  }

  else
  {
    v33 = objc_opt_new();
  }

  v145 = v33;
  v208[30] = v33;
  v207[31] = @"collabOwnedSingleNoteAcceptanceRatioHistogram";
  v144 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteAcceptanceRatioHistogram];
  if (v144)
  {
    v34 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteAcceptanceRatioHistogram];
  }

  else
  {
    v34 = objc_opt_new();
  }

  v143 = v34;
  v208[31] = v34;
  v207[32] = @"noteCharCountHistogram";
  v142 = [(ICASAccountSnapshotData *)self noteCharCountHistogram];
  if (v142)
  {
    v35 = [(ICASAccountSnapshotData *)self noteCharCountHistogram];
  }

  else
  {
    v35 = objc_opt_new();
  }

  v141 = v35;
  v208[32] = v35;
  v207[33] = @"inlineDrawingV1TotalStrokeCountHistogram";
  v140 = [(ICASAccountSnapshotData *)self inlineDrawingV1TotalStrokeCountHistogram];
  if (v140)
  {
    v36 = [(ICASAccountSnapshotData *)self inlineDrawingV1TotalStrokeCountHistogram];
  }

  else
  {
    v36 = objc_opt_new();
  }

  v139 = v36;
  v208[33] = v36;
  v207[34] = @"inlineDrawingV1PencilStrokeCountHistogram";
  v138 = [(ICASAccountSnapshotData *)self inlineDrawingV1PencilStrokeCountHistogram];
  if (v138)
  {
    v37 = [(ICASAccountSnapshotData *)self inlineDrawingV1PencilStrokeCountHistogram];
  }

  else
  {
    v37 = objc_opt_new();
  }

  v137 = v37;
  v208[34] = v37;
  v207[35] = @"inlineDrawingV1FingerStrokeCountHistogram";
  v136 = [(ICASAccountSnapshotData *)self inlineDrawingV1FingerStrokeCountHistogram];
  if (v136)
  {
    v38 = [(ICASAccountSnapshotData *)self inlineDrawingV1FingerStrokeCountHistogram];
  }

  else
  {
    v38 = objc_opt_new();
  }

  v135 = v38;
  v208[35] = v38;
  v207[36] = @"inlineDrawingV1FingerStrokeRatioHistogram";
  v134 = [(ICASAccountSnapshotData *)self inlineDrawingV1FingerStrokeRatioHistogram];
  if (v134)
  {
    v39 = [(ICASAccountSnapshotData *)self inlineDrawingV1FingerStrokeRatioHistogram];
  }

  else
  {
    v39 = objc_opt_new();
  }

  v133 = v39;
  v208[36] = v39;
  v207[37] = @"inlineDrawingV2TotalStrokeCountHistogram";
  v132 = [(ICASAccountSnapshotData *)self inlineDrawingV2TotalStrokeCountHistogram];
  if (v132)
  {
    v40 = [(ICASAccountSnapshotData *)self inlineDrawingV2TotalStrokeCountHistogram];
  }

  else
  {
    v40 = objc_opt_new();
  }

  v131 = v40;
  v208[37] = v40;
  v207[38] = @"inlineDrawingV2PencilStrokeCountHistogram";
  v130 = [(ICASAccountSnapshotData *)self inlineDrawingV2PencilStrokeCountHistogram];
  if (v130)
  {
    v41 = [(ICASAccountSnapshotData *)self inlineDrawingV2PencilStrokeCountHistogram];
  }

  else
  {
    v41 = objc_opt_new();
  }

  v129 = v41;
  v208[38] = v41;
  v207[39] = @"inlineDrawingV2FingerStrokeCountHistogram";
  v128 = [(ICASAccountSnapshotData *)self inlineDrawingV2FingerStrokeCountHistogram];
  if (v128)
  {
    v42 = [(ICASAccountSnapshotData *)self inlineDrawingV2FingerStrokeCountHistogram];
  }

  else
  {
    v42 = objc_opt_new();
  }

  v127 = v42;
  v208[39] = v42;
  v207[40] = @"inlineDrawingV2FingerStrokeRatioHistogram";
  v126 = [(ICASAccountSnapshotData *)self inlineDrawingV2FingerStrokeRatioHistogram];
  if (v126)
  {
    v43 = [(ICASAccountSnapshotData *)self inlineDrawingV2FingerStrokeRatioHistogram];
  }

  else
  {
    v43 = objc_opt_new();
  }

  v125 = v43;
  v208[40] = v43;
  v207[41] = @"fullscreenDrawingStrokeCountHistogram";
  v124 = [(ICASAccountSnapshotData *)self fullscreenDrawingStrokeCountHistogram];
  if (v124)
  {
    v44 = [(ICASAccountSnapshotData *)self fullscreenDrawingStrokeCountHistogram];
  }

  else
  {
    v44 = objc_opt_new();
  }

  v123 = v44;
  v208[41] = v44;
  v207[42] = @"tableRowCountHistogram";
  v122 = [(ICASAccountSnapshotData *)self tableRowCountHistogram];
  if (v122)
  {
    v45 = [(ICASAccountSnapshotData *)self tableRowCountHistogram];
  }

  else
  {
    v45 = objc_opt_new();
  }

  v121 = v45;
  v208[42] = v45;
  v207[43] = @"tableColumnCountHistogram";
  v120 = [(ICASAccountSnapshotData *)self tableColumnCountHistogram];
  if (v120)
  {
    v46 = [(ICASAccountSnapshotData *)self tableColumnCountHistogram];
  }

  else
  {
    v46 = objc_opt_new();
  }

  v119 = v46;
  v208[43] = v46;
  v207[44] = @"tableCellCountHistogram";
  v118 = [(ICASAccountSnapshotData *)self tableCellCountHistogram];
  if (v118)
  {
    v47 = [(ICASAccountSnapshotData *)self tableCellCountHistogram];
  }

  else
  {
    v47 = objc_opt_new();
  }

  v117 = v47;
  v208[44] = v47;
  v207[45] = @"passwordProtectedNoteWeeklyAgeHistogram";
  v116 = [(ICASAccountSnapshotData *)self passwordProtectedNoteWeeklyAgeHistogram];
  if (v116)
  {
    v48 = [(ICASAccountSnapshotData *)self passwordProtectedNoteWeeklyAgeHistogram];
  }

  else
  {
    v48 = objc_opt_new();
  }

  v115 = v48;
  v208[45] = v48;
  v207[46] = @"topLevelFolderTotalNoteCountHistogram";
  v114 = [(ICASAccountSnapshotData *)self topLevelFolderTotalNoteCountHistogram];
  if (v114)
  {
    v49 = [(ICASAccountSnapshotData *)self topLevelFolderTotalNoteCountHistogram];
  }

  else
  {
    v49 = objc_opt_new();
  }

  v113 = v49;
  v208[46] = v49;
  v207[47] = @"attachmentCountPerNoteHistogram";
  v112 = [(ICASAccountSnapshotData *)self attachmentCountPerNoteHistogram];
  if (v112)
  {
    v50 = [(ICASAccountSnapshotData *)self attachmentCountPerNoteHistogram];
  }

  else
  {
    v50 = objc_opt_new();
  }

  v111 = v50;
  v208[47] = v50;
  v207[48] = @"drawingCountPerNoteHistogram";
  v110 = [(ICASAccountSnapshotData *)self drawingCountPerNoteHistogram];
  if (v110)
  {
    v51 = [(ICASAccountSnapshotData *)self drawingCountPerNoteHistogram];
  }

  else
  {
    v51 = objc_opt_new();
  }

  v109 = v51;
  v208[48] = v51;
  v207[49] = @"inlineDrawingFingerStrokesCountPerNoteHistogram";
  v108 = [(ICASAccountSnapshotData *)self inlineDrawingFingerStrokesCountPerNoteHistogram];
  if (v108)
  {
    v52 = [(ICASAccountSnapshotData *)self inlineDrawingFingerStrokesCountPerNoteHistogram];
  }

  else
  {
    v52 = objc_opt_new();
  }

  v107 = v52;
  v208[49] = v52;
  v207[50] = @"inlineDrawingPencilStrokesCountPerNoteHistogram";
  v106 = [(ICASAccountSnapshotData *)self inlineDrawingPencilStrokesCountPerNoteHistogram];
  if (v106)
  {
    v53 = [(ICASAccountSnapshotData *)self inlineDrawingPencilStrokesCountPerNoteHistogram];
  }

  else
  {
    v53 = objc_opt_new();
  }

  v105 = v53;
  v208[50] = v53;
  v207[51] = @"fullScreenDrawingStrokesCountPerNoteHistogram";
  v104 = [(ICASAccountSnapshotData *)self fullScreenDrawingStrokesCountPerNoteHistogram];
  if (v104)
  {
    v54 = [(ICASAccountSnapshotData *)self fullScreenDrawingStrokesCountPerNoteHistogram];
  }

  else
  {
    v54 = objc_opt_new();
  }

  v103 = v54;
  v208[51] = v54;
  v207[52] = @"totalStrokesCountPerNoteHistogram";
  v102 = [(ICASAccountSnapshotData *)self totalStrokesCountPerNoteHistogram];
  if (v102)
  {
    v55 = [(ICASAccountSnapshotData *)self totalStrokesCountPerNoteHistogram];
  }

  else
  {
    v55 = objc_opt_new();
  }

  v101 = v55;
  v208[52] = v55;
  v207[53] = @"tagCountPerNoteHistogram";
  v100 = [(ICASAccountSnapshotData *)self tagCountPerNoteHistogram];
  if (v100)
  {
    v56 = [(ICASAccountSnapshotData *)self tagCountPerNoteHistogram];
  }

  else
  {
    v56 = objc_opt_new();
  }

  v99 = v56;
  v208[53] = v56;
  v207[54] = @"distinctTagCountPerNoteHistogram";
  v98 = [(ICASAccountSnapshotData *)self distinctTagCountPerNoteHistogram];
  if (v98)
  {
    v57 = [(ICASAccountSnapshotData *)self distinctTagCountPerNoteHistogram];
  }

  else
  {
    v57 = objc_opt_new();
  }

  v97 = v57;
  v208[54] = v57;
  v207[55] = @"totalCountOfNotesWithTags";
  v96 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithTags];
  if (v96)
  {
    v58 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithTags];
  }

  else
  {
    v58 = objc_opt_new();
  }

  v95 = v58;
  v208[55] = v58;
  v207[56] = @"totalCountOfNotesWithCollapsedSections";
  v94 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithCollapsedSections];
  if (v94)
  {
    v59 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithCollapsedSections];
  }

  else
  {
    v59 = objc_opt_new();
  }

  v93 = v59;
  v208[56] = v59;
  v207[57] = @"totalCountOfNotesWithMentions";
  v92 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithMentions];
  if (v92)
  {
    v60 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithMentions];
  }

  else
  {
    v60 = objc_opt_new();
  }

  v91 = v60;
  v208[57] = v60;
  v207[58] = @"totalScrapPaperCount";
  v90 = [(ICASAccountSnapshotData *)self totalScrapPaperCount];
  if (v90)
  {
    v61 = [(ICASAccountSnapshotData *)self totalScrapPaperCount];
  }

  else
  {
    v61 = objc_opt_new();
  }

  v89 = v61;
  v208[58] = v61;
  v207[59] = @"totalCountOfScrapPapersWithTags";
  v88 = [(ICASAccountSnapshotData *)self totalCountOfScrapPapersWithTags];
  if (v88)
  {
    v62 = [(ICASAccountSnapshotData *)self totalCountOfScrapPapersWithTags];
  }

  else
  {
    v62 = objc_opt_new();
  }

  v87 = v62;
  v208[59] = v62;
  v207[60] = @"totalCountOfScrapPapersWithMentions";
  v86 = [(ICASAccountSnapshotData *)self totalCountOfScrapPapersWithMentions];
  if (v86)
  {
    v63 = [(ICASAccountSnapshotData *)self totalCountOfScrapPapersWithMentions];
  }

  else
  {
    v63 = objc_opt_new();
  }

  v85 = v63;
  v208[60] = v63;
  v207[61] = @"totalCountOfPinnedScrapPapers";
  v84 = [(ICASAccountSnapshotData *)self totalCountOfPinnedScrapPapers];
  if (v84)
  {
    v64 = [(ICASAccountSnapshotData *)self totalCountOfPinnedScrapPapers];
  }

  else
  {
    v64 = objc_opt_new();
  }

  v83 = v64;
  v208[61] = v64;
  v207[62] = @"totalCountOfLockedScrapPapers";
  v65 = [(ICASAccountSnapshotData *)self totalCountOfLockedScrapPapers];
  if (v65)
  {
    v66 = [(ICASAccountSnapshotData *)self totalCountOfLockedScrapPapers];
  }

  else
  {
    v66 = objc_opt_new();
  }

  v67 = v66;
  v208[62] = v66;
  v207[63] = @"totalCountOfCollaboratedScrapPapers";
  v68 = [(ICASAccountSnapshotData *)self totalCountOfCollaboratedScrapPapers];
  if (v68)
  {
    v69 = [(ICASAccountSnapshotData *)self totalCountOfCollaboratedScrapPapers];
  }

  else
  {
    v69 = objc_opt_new();
  }

  v70 = v69;
  v208[63] = v69;
  v207[64] = @"mentionCountPerNoteHistogram";
  v71 = [(ICASAccountSnapshotData *)self mentionCountPerNoteHistogram];
  if (v71)
  {
    v72 = [(ICASAccountSnapshotData *)self mentionCountPerNoteHistogram];
  }

  else
  {
    v72 = objc_opt_new();
  }

  v73 = v72;
  v208[64] = v72;
  v207[65] = @"distinctMentionCountPerNoteHistogram";
  v74 = [(ICASAccountSnapshotData *)self distinctMentionCountPerNoteHistogram];
  if (v74)
  {
    v75 = [(ICASAccountSnapshotData *)self distinctMentionCountPerNoteHistogram];
  }

  else
  {
    v75 = objc_opt_new();
  }

  v76 = v75;
  v208[65] = v75;
  v207[66] = @"totalCountOfNotesWithMathUsage";
  v77 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithMathUsage];
  if (v77)
  {
    v78 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithMathUsage];
  }

  else
  {
    v78 = objc_opt_new();
  }

  v79 = v78;
  v208[66] = v78;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v208 forKeys:v207 count:67];

  v80 = *MEMORY[0x277D85DE8];

  return v82;
}

@end