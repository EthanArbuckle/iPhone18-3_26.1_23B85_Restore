@interface ICASAccountSnapshotData
- (id)initWithUserStartMonth:(void *)month userStartYear:(void *)year saltVersion:(void *)version accountSnapshotSummary:(void *)summary accountNotesTwoFactorSummary:(void *)factorSummary collabNotesSummary:(void *)notesSummary collabFoldersSummary:(id)foldersSummary noteAttachmentSummary:(id)self0 scrapPaperAttachmentSummary:(id)self1 lockedNotesSummary:(id)self2 smartFoldersSummary:(id)self3 totalNoteCount:(id)self4 totalFolderCount:(id)self5 totalSmartFolderCount:(id)self6 totalChecklistCount:(id)self7 totalNotesWithChecklistCount:(id)self8 totalCountOfPinnedNotes:(id)self9 totalCountOfLockedNotes:(id)lockedNotes deviceSnapshotSummary:(id)snapshotSummary userSnapshotSummary:(id)userSnapshotSummary attachmentUTISummary:(id)iSummary folderDirectNoteCountHistogram:(id)histogram collabRootFolderTotalNoteCountHistogram:(id)countHistogram docScanPageCountHistogram:(id)pageCountHistogram collabOwnedRootFolderInviteeCountHistogram:(id)inviteeCountHistogram collabOwnedRootFolderAcceptanceCountHistogram:(id)acceptanceCountHistogram collabOwnedRootFolderNoReplyCountHistogram:(id)replyCountHistogram collabOwnedRootFolderAcceptanceRatioHistogram:(id)month0 collabOwnedSingleNoteInviteeCountHistogram:(id)month1 collabOwnedSingleNoteAcceptanceCountHistogram:(id)month2 collabOwnedSingleNoteNoReplyCountHistogram:(id)month3 collabOwnedSingleNoteAcceptanceRatioHistogram:(id)month4 noteCharCountHistogram:(id)month5 inlineDrawingV1TotalStrokeCountHistogram:(id)month6 inlineDrawingV1PencilStrokeCountHistogram:(id)month7 inlineDrawingV1FingerStrokeCountHistogram:(id)month8 inlineDrawingV1FingerStrokeRatioHistogram:(id)month9 inlineDrawingV2TotalStrokeCountHistogram:(id)year0 inlineDrawingV2PencilStrokeCountHistogram:(id)year1 inlineDrawingV2FingerStrokeCountHistogram:(id)year2 inlineDrawingV2FingerStrokeRatioHistogram:(id)year3 fullscreenDrawingStrokeCountHistogram:(id)year4 tableRowCountHistogram:(id)year5 tableColumnCountHistogram:(id)year6 tableCellCountHistogram:(id)year7 passwordProtectedNoteWeeklyAgeHistogram:(id)year8 topLevelFolderTotalNoteCountHistogram:(id)year9 attachmentCountPerNoteHistogram:(id)version0 drawingCountPerNoteHistogram:(id)version1 inlineDrawingFingerStrokesCountPerNoteHistogram:(id)version2 inlineDrawingPencilStrokesCountPerNoteHistogram:(id)version3 fullScreenDrawingStrokesCountPerNoteHistogram:(id)version4 totalStrokesCountPerNoteHistogram:(id)version5 tagCountPerNoteHistogram:(id)version6 distinctTagCountPerNoteHistogram:(id)version7 totalCountOfNotesWithTags:(id)version8 totalCountOfNotesWithCollapsedSections:(id)version9 totalCountOfNotesWithMentions:(id)summary0 totalScrapPaperCount:(id)summary1 totalCountOfScrapPapersWithTags:(id)summary2 totalCountOfScrapPapersWithMentions:(id)summary3 totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:;
- (id)toDict;
@end

@implementation ICASAccountSnapshotData

- (id)initWithUserStartMonth:(void *)month userStartYear:(void *)year saltVersion:(void *)version accountSnapshotSummary:(void *)summary accountNotesTwoFactorSummary:(void *)factorSummary collabNotesSummary:(void *)notesSummary collabFoldersSummary:(id)foldersSummary noteAttachmentSummary:(id)self0 scrapPaperAttachmentSummary:(id)self1 lockedNotesSummary:(id)self2 smartFoldersSummary:(id)self3 totalNoteCount:(id)self4 totalFolderCount:(id)self5 totalSmartFolderCount:(id)self6 totalChecklistCount:(id)self7 totalNotesWithChecklistCount:(id)self8 totalCountOfPinnedNotes:(id)self9 totalCountOfLockedNotes:(id)lockedNotes deviceSnapshotSummary:(id)snapshotSummary userSnapshotSummary:(id)userSnapshotSummary attachmentUTISummary:(id)iSummary folderDirectNoteCountHistogram:(id)histogram collabRootFolderTotalNoteCountHistogram:(id)countHistogram docScanPageCountHistogram:(id)pageCountHistogram collabOwnedRootFolderInviteeCountHistogram:(id)inviteeCountHistogram collabOwnedRootFolderAcceptanceCountHistogram:(id)acceptanceCountHistogram collabOwnedRootFolderNoReplyCountHistogram:(id)replyCountHistogram collabOwnedRootFolderAcceptanceRatioHistogram:(id)month0 collabOwnedSingleNoteInviteeCountHistogram:(id)month1 collabOwnedSingleNoteAcceptanceCountHistogram:(id)month2 collabOwnedSingleNoteNoReplyCountHistogram:(id)month3 collabOwnedSingleNoteAcceptanceRatioHistogram:(id)month4 noteCharCountHistogram:(id)month5 inlineDrawingV1TotalStrokeCountHistogram:(id)month6 inlineDrawingV1PencilStrokeCountHistogram:(id)month7 inlineDrawingV1FingerStrokeCountHistogram:(id)month8 inlineDrawingV1FingerStrokeRatioHistogram:(id)month9 inlineDrawingV2TotalStrokeCountHistogram:(id)year0 inlineDrawingV2PencilStrokeCountHistogram:(id)year1 inlineDrawingV2FingerStrokeCountHistogram:(id)year2 inlineDrawingV2FingerStrokeRatioHistogram:(id)year3 fullscreenDrawingStrokeCountHistogram:(id)year4 tableRowCountHistogram:(id)year5 tableColumnCountHistogram:(id)year6 tableCellCountHistogram:(id)year7 passwordProtectedNoteWeeklyAgeHistogram:(id)year8 topLevelFolderTotalNoteCountHistogram:(id)year9 attachmentCountPerNoteHistogram:(id)version0 drawingCountPerNoteHistogram:(id)version1 inlineDrawingFingerStrokesCountPerNoteHistogram:(id)version2 inlineDrawingPencilStrokesCountPerNoteHistogram:(id)version3 fullScreenDrawingStrokesCountPerNoteHistogram:(id)version4 totalStrokesCountPerNoteHistogram:(id)version5 tagCountPerNoteHistogram:(id)version6 distinctTagCountPerNoteHistogram:(id)version7 totalCountOfNotesWithTags:(id)version8 totalCountOfNotesWithCollapsedSections:(id)version9 totalCountOfNotesWithMentions:(id)summary0 totalScrapPaperCount:(id)summary1 totalCountOfScrapPapersWithTags:(id)summary2 totalCountOfScrapPapersWithMentions:(id)summary3 totalCountOfPinnedScrapPapers:totalCountOfLockedScrapPapers:totalCountOfCollaboratedScrapPapers:mentionCountPerNoteHistogram:distinctMentionCountPerNoteHistogram:totalCountOfNotesWithMathUsage:
{
  monthCopy = month;
  yearCopy = year;
  versionCopy = version;
  summaryCopy = summary;
  factorSummaryCopy = factorSummary;
  notesSummaryCopy = notesSummary;
  foldersSummaryCopy = foldersSummary;
  attachmentSummaryCopy = attachmentSummary;
  paperAttachmentSummaryCopy = paperAttachmentSummary;
  lockedNotesSummaryCopy = lockedNotesSummary;
  smartFoldersSummaryCopy = smartFoldersSummary;
  countCopy = count;
  folderCountCopy = folderCount;
  smartFolderCountCopy = smartFolderCount;
  checklistCountCopy = checklistCount;
  withChecklistCountCopy = withChecklistCount;
  notesCopy = notes;
  lockedNotesCopy = lockedNotes;
  snapshotSummaryCopy = snapshotSummary;
  userSnapshotSummaryCopy = userSnapshotSummary;
  iSummaryCopy = iSummary;
  histogramCopy = histogram;
  countHistogramCopy = countHistogram;
  pageCountHistogramCopy = pageCountHistogram;
  inviteeCountHistogramCopy = inviteeCountHistogram;
  acceptanceCountHistogramCopy = acceptanceCountHistogram;
  replyCountHistogramCopy = replyCountHistogram;
  ratioHistogramCopy = ratioHistogram;
  noteInviteeCountHistogramCopy = noteInviteeCountHistogram;
  noteAcceptanceCountHistogramCopy = noteAcceptanceCountHistogram;
  noReplyCountHistogramCopy = noReplyCountHistogram;
  acceptanceRatioHistogramCopy = acceptanceRatioHistogram;
  charCountHistogramCopy = charCountHistogram;
  strokeCountHistogramCopy = strokeCountHistogram;
  pencilStrokeCountHistogramCopy = pencilStrokeCountHistogram;
  fingerStrokeCountHistogramCopy = fingerStrokeCountHistogram;
  strokeRatioHistogramCopy = strokeRatioHistogram;
  totalStrokeCountHistogramCopy = totalStrokeCountHistogram;
  v2PencilStrokeCountHistogramCopy = v2PencilStrokeCountHistogram;
  v2FingerStrokeCountHistogramCopy = v2FingerStrokeCountHistogram;
  fingerStrokeRatioHistogramCopy = fingerStrokeRatioHistogram;
  drawingStrokeCountHistogramCopy = drawingStrokeCountHistogram;
  rowCountHistogramCopy = rowCountHistogram;
  columnCountHistogramCopy = columnCountHistogram;
  cellCountHistogramCopy = cellCountHistogram;
  ageHistogramCopy = ageHistogram;
  noteCountHistogramCopy = noteCountHistogram;
  noteHistogramCopy = noteHistogram;
  perNoteHistogramCopy = perNoteHistogram;
  countPerNoteHistogramCopy = countPerNoteHistogram;
  strokesCountPerNoteHistogramCopy = strokesCountPerNoteHistogram;
  drawingStrokesCountPerNoteHistogramCopy = drawingStrokesCountPerNoteHistogram;
  totalStrokesCountPerNoteHistogramCopy = totalStrokesCountPerNoteHistogram;
  tagCountPerNoteHistogramCopy = tagCountPerNoteHistogram;
  distinctTagCountPerNoteHistogramCopy = distinctTagCountPerNoteHistogram;
  tagsCopy = tags;
  sectionsCopy = sections;
  mentionsCopy = mentions;
  paperCountCopy = paperCount;
  withTagsCopy = withTags;
  withMentionsCopy = withMentions;
  v87 = a64;
  v85 = a65;
  v84 = a66;
  v83 = a67;
  v82 = a68;
  v81 = a69;
  v146.receiver = self;
  v146.super_class = ICASAccountSnapshotData;
  v77 = [(ICASAccountSnapshotData *)&v146 init];
  p_isa = &v77->super.isa;
  if (v77)
  {
    objc_storeStrong(&v77->_userStartMonth, month);
    objc_storeStrong(p_isa + 2, year);
    objc_storeStrong(p_isa + 3, version);
    objc_storeStrong(p_isa + 4, summary);
    objc_storeStrong(p_isa + 5, factorSummary);
    objc_storeStrong(p_isa + 6, notesSummary);
    objc_storeStrong(p_isa + 7, foldersSummary);
    objc_storeStrong(p_isa + 8, attachmentSummary);
    objc_storeStrong(p_isa + 9, paperAttachmentSummary);
    objc_storeStrong(p_isa + 10, lockedNotesSummary);
    objc_storeStrong(p_isa + 11, smartFoldersSummary);
    objc_storeStrong(p_isa + 12, count);
    objc_storeStrong(p_isa + 13, folderCount);
    objc_storeStrong(p_isa + 14, smartFolderCount);
    objc_storeStrong(p_isa + 15, checklistCount);
    objc_storeStrong(p_isa + 16, withChecklistCount);
    objc_storeStrong(p_isa + 17, notes);
    objc_storeStrong(p_isa + 18, lockedNotes);
    objc_storeStrong(p_isa + 19, snapshotSummary);
    objc_storeStrong(p_isa + 20, userSnapshotSummary);
    objc_storeStrong(p_isa + 21, iSummary);
    objc_storeStrong(p_isa + 22, histogram);
    objc_storeStrong(p_isa + 23, countHistogram);
    objc_storeStrong(p_isa + 24, pageCountHistogram);
    objc_storeStrong(p_isa + 25, inviteeCountHistogram);
    objc_storeStrong(p_isa + 26, acceptanceCountHistogram);
    objc_storeStrong(p_isa + 27, replyCountHistogram);
    objc_storeStrong(p_isa + 28, ratioHistogram);
    objc_storeStrong(p_isa + 29, noteInviteeCountHistogram);
    objc_storeStrong(p_isa + 30, noteAcceptanceCountHistogram);
    objc_storeStrong(p_isa + 31, noReplyCountHistogram);
    objc_storeStrong(p_isa + 32, acceptanceRatioHistogram);
    objc_storeStrong(p_isa + 33, charCountHistogram);
    objc_storeStrong(p_isa + 34, strokeCountHistogram);
    objc_storeStrong(p_isa + 35, pencilStrokeCountHistogram);
    objc_storeStrong(p_isa + 36, fingerStrokeCountHistogram);
    objc_storeStrong(p_isa + 37, strokeRatioHistogram);
    objc_storeStrong(p_isa + 38, totalStrokeCountHistogram);
    objc_storeStrong(p_isa + 39, v2PencilStrokeCountHistogram);
    objc_storeStrong(p_isa + 40, v2FingerStrokeCountHistogram);
    objc_storeStrong(p_isa + 41, fingerStrokeRatioHistogram);
    objc_storeStrong(p_isa + 42, drawingStrokeCountHistogram);
    objc_storeStrong(p_isa + 43, rowCountHistogram);
    objc_storeStrong(p_isa + 44, columnCountHistogram);
    objc_storeStrong(p_isa + 45, cellCountHistogram);
    objc_storeStrong(p_isa + 46, ageHistogram);
    objc_storeStrong(p_isa + 47, noteCountHistogram);
    objc_storeStrong(p_isa + 48, noteHistogram);
    objc_storeStrong(p_isa + 49, perNoteHistogram);
    objc_storeStrong(p_isa + 50, countPerNoteHistogram);
    objc_storeStrong(p_isa + 51, strokesCountPerNoteHistogram);
    objc_storeStrong(p_isa + 52, drawingStrokesCountPerNoteHistogram);
    objc_storeStrong(p_isa + 53, totalStrokesCountPerNoteHistogram);
    objc_storeStrong(p_isa + 54, tagCountPerNoteHistogram);
    objc_storeStrong(p_isa + 55, distinctTagCountPerNoteHistogram);
    objc_storeStrong(p_isa + 56, tags);
    objc_storeStrong(p_isa + 57, sections);
    objc_storeStrong(p_isa + 58, mentions);
    objc_storeStrong(p_isa + 59, paperCount);
    objc_storeStrong(p_isa + 60, withTags);
    objc_storeStrong(p_isa + 61, withMentions);
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
  userStartMonth = [(ICASAccountSnapshotData *)self userStartMonth];
  if (userStartMonth)
  {
    userStartMonth2 = [(ICASAccountSnapshotData *)self userStartMonth];
  }

  else
  {
    userStartMonth2 = objc_opt_new();
  }

  v205 = userStartMonth2;
  v208[0] = userStartMonth2;
  v207[1] = @"userStartYear";
  userStartYear = [(ICASAccountSnapshotData *)self userStartYear];
  if (userStartYear)
  {
    userStartYear2 = [(ICASAccountSnapshotData *)self userStartYear];
  }

  else
  {
    userStartYear2 = objc_opt_new();
  }

  v203 = userStartYear2;
  v208[1] = userStartYear2;
  v207[2] = @"saltVersion";
  saltVersion = [(ICASAccountSnapshotData *)self saltVersion];
  if (saltVersion)
  {
    saltVersion2 = [(ICASAccountSnapshotData *)self saltVersion];
  }

  else
  {
    saltVersion2 = objc_opt_new();
  }

  v201 = saltVersion2;
  v208[2] = saltVersion2;
  v207[3] = @"accountSnapshotSummary";
  accountSnapshotSummary = [(ICASAccountSnapshotData *)self accountSnapshotSummary];
  if (accountSnapshotSummary)
  {
    accountSnapshotSummary2 = [(ICASAccountSnapshotData *)self accountSnapshotSummary];
  }

  else
  {
    accountSnapshotSummary2 = objc_opt_new();
  }

  v199 = accountSnapshotSummary2;
  v208[3] = accountSnapshotSummary2;
  v207[4] = @"accountNotesTwoFactorSummary";
  accountNotesTwoFactorSummary = [(ICASAccountSnapshotData *)self accountNotesTwoFactorSummary];
  if (accountNotesTwoFactorSummary)
  {
    accountNotesTwoFactorSummary2 = [(ICASAccountSnapshotData *)self accountNotesTwoFactorSummary];
  }

  else
  {
    accountNotesTwoFactorSummary2 = objc_opt_new();
  }

  v197 = accountNotesTwoFactorSummary2;
  v208[4] = accountNotesTwoFactorSummary2;
  v207[5] = @"collabNotesSummary";
  collabNotesSummary = [(ICASAccountSnapshotData *)self collabNotesSummary];
  if (collabNotesSummary)
  {
    collabNotesSummary2 = [(ICASAccountSnapshotData *)self collabNotesSummary];
  }

  else
  {
    collabNotesSummary2 = objc_opt_new();
  }

  v195 = collabNotesSummary2;
  v208[5] = collabNotesSummary2;
  v207[6] = @"collabFoldersSummary";
  collabFoldersSummary = [(ICASAccountSnapshotData *)self collabFoldersSummary];
  if (collabFoldersSummary)
  {
    collabFoldersSummary2 = [(ICASAccountSnapshotData *)self collabFoldersSummary];
  }

  else
  {
    collabFoldersSummary2 = objc_opt_new();
  }

  v193 = collabFoldersSummary2;
  v208[6] = collabFoldersSummary2;
  v207[7] = @"noteAttachmentSummary";
  noteAttachmentSummary = [(ICASAccountSnapshotData *)self noteAttachmentSummary];
  if (noteAttachmentSummary)
  {
    noteAttachmentSummary2 = [(ICASAccountSnapshotData *)self noteAttachmentSummary];
  }

  else
  {
    noteAttachmentSummary2 = objc_opt_new();
  }

  v191 = noteAttachmentSummary2;
  v208[7] = noteAttachmentSummary2;
  v207[8] = @"scrapPaperAttachmentSummary";
  scrapPaperAttachmentSummary = [(ICASAccountSnapshotData *)self scrapPaperAttachmentSummary];
  if (scrapPaperAttachmentSummary)
  {
    scrapPaperAttachmentSummary2 = [(ICASAccountSnapshotData *)self scrapPaperAttachmentSummary];
  }

  else
  {
    scrapPaperAttachmentSummary2 = objc_opt_new();
  }

  v189 = scrapPaperAttachmentSummary2;
  v208[8] = scrapPaperAttachmentSummary2;
  v207[9] = @"lockedNotesSummary";
  lockedNotesSummary = [(ICASAccountSnapshotData *)self lockedNotesSummary];
  if (lockedNotesSummary)
  {
    lockedNotesSummary2 = [(ICASAccountSnapshotData *)self lockedNotesSummary];
  }

  else
  {
    lockedNotesSummary2 = objc_opt_new();
  }

  v187 = lockedNotesSummary2;
  v208[9] = lockedNotesSummary2;
  v207[10] = @"smartFoldersSummary";
  smartFoldersSummary = [(ICASAccountSnapshotData *)self smartFoldersSummary];
  if (smartFoldersSummary)
  {
    smartFoldersSummary2 = [(ICASAccountSnapshotData *)self smartFoldersSummary];
  }

  else
  {
    smartFoldersSummary2 = objc_opt_new();
  }

  v185 = smartFoldersSummary2;
  v208[10] = smartFoldersSummary2;
  v207[11] = @"totalNoteCount";
  totalNoteCount = [(ICASAccountSnapshotData *)self totalNoteCount];
  if (totalNoteCount)
  {
    totalNoteCount2 = [(ICASAccountSnapshotData *)self totalNoteCount];
  }

  else
  {
    totalNoteCount2 = objc_opt_new();
  }

  v183 = totalNoteCount2;
  v208[11] = totalNoteCount2;
  v207[12] = @"totalFolderCount";
  totalFolderCount = [(ICASAccountSnapshotData *)self totalFolderCount];
  if (totalFolderCount)
  {
    totalFolderCount2 = [(ICASAccountSnapshotData *)self totalFolderCount];
  }

  else
  {
    totalFolderCount2 = objc_opt_new();
  }

  v181 = totalFolderCount2;
  v208[12] = totalFolderCount2;
  v207[13] = @"totalSmartFolderCount";
  totalSmartFolderCount = [(ICASAccountSnapshotData *)self totalSmartFolderCount];
  if (totalSmartFolderCount)
  {
    totalSmartFolderCount2 = [(ICASAccountSnapshotData *)self totalSmartFolderCount];
  }

  else
  {
    totalSmartFolderCount2 = objc_opt_new();
  }

  v179 = totalSmartFolderCount2;
  v208[13] = totalSmartFolderCount2;
  v207[14] = @"totalChecklistCount";
  totalChecklistCount = [(ICASAccountSnapshotData *)self totalChecklistCount];
  if (totalChecklistCount)
  {
    totalChecklistCount2 = [(ICASAccountSnapshotData *)self totalChecklistCount];
  }

  else
  {
    totalChecklistCount2 = objc_opt_new();
  }

  v177 = totalChecklistCount2;
  v208[14] = totalChecklistCount2;
  v207[15] = @"totalNotesWithChecklistCount";
  totalNotesWithChecklistCount = [(ICASAccountSnapshotData *)self totalNotesWithChecklistCount];
  if (totalNotesWithChecklistCount)
  {
    totalNotesWithChecklistCount2 = [(ICASAccountSnapshotData *)self totalNotesWithChecklistCount];
  }

  else
  {
    totalNotesWithChecklistCount2 = objc_opt_new();
  }

  v175 = totalNotesWithChecklistCount2;
  v208[15] = totalNotesWithChecklistCount2;
  v207[16] = @"totalCountOfPinnedNotes";
  totalCountOfPinnedNotes = [(ICASAccountSnapshotData *)self totalCountOfPinnedNotes];
  if (totalCountOfPinnedNotes)
  {
    totalCountOfPinnedNotes2 = [(ICASAccountSnapshotData *)self totalCountOfPinnedNotes];
  }

  else
  {
    totalCountOfPinnedNotes2 = objc_opt_new();
  }

  v173 = totalCountOfPinnedNotes2;
  v208[16] = totalCountOfPinnedNotes2;
  v207[17] = @"totalCountOfLockedNotes";
  totalCountOfLockedNotes = [(ICASAccountSnapshotData *)self totalCountOfLockedNotes];
  if (totalCountOfLockedNotes)
  {
    totalCountOfLockedNotes2 = [(ICASAccountSnapshotData *)self totalCountOfLockedNotes];
  }

  else
  {
    totalCountOfLockedNotes2 = objc_opt_new();
  }

  v171 = totalCountOfLockedNotes2;
  v208[17] = totalCountOfLockedNotes2;
  v207[18] = @"deviceSnapshotSummary";
  deviceSnapshotSummary = [(ICASAccountSnapshotData *)self deviceSnapshotSummary];
  if (deviceSnapshotSummary)
  {
    deviceSnapshotSummary2 = [(ICASAccountSnapshotData *)self deviceSnapshotSummary];
  }

  else
  {
    deviceSnapshotSummary2 = objc_opt_new();
  }

  v169 = deviceSnapshotSummary2;
  v208[18] = deviceSnapshotSummary2;
  v207[19] = @"userSnapshotSummary";
  userSnapshotSummary = [(ICASAccountSnapshotData *)self userSnapshotSummary];
  if (userSnapshotSummary)
  {
    userSnapshotSummary2 = [(ICASAccountSnapshotData *)self userSnapshotSummary];
  }

  else
  {
    userSnapshotSummary2 = objc_opt_new();
  }

  v167 = userSnapshotSummary2;
  v208[19] = userSnapshotSummary2;
  v207[20] = @"attachmentUTISummary";
  attachmentUTISummary = [(ICASAccountSnapshotData *)self attachmentUTISummary];
  if (attachmentUTISummary)
  {
    attachmentUTISummary2 = [(ICASAccountSnapshotData *)self attachmentUTISummary];
  }

  else
  {
    attachmentUTISummary2 = objc_opt_new();
  }

  v165 = attachmentUTISummary2;
  v208[20] = attachmentUTISummary2;
  v207[21] = @"folderDirectNoteCountHistogram";
  folderDirectNoteCountHistogram = [(ICASAccountSnapshotData *)self folderDirectNoteCountHistogram];
  if (folderDirectNoteCountHistogram)
  {
    folderDirectNoteCountHistogram2 = [(ICASAccountSnapshotData *)self folderDirectNoteCountHistogram];
  }

  else
  {
    folderDirectNoteCountHistogram2 = objc_opt_new();
  }

  v163 = folderDirectNoteCountHistogram2;
  v208[21] = folderDirectNoteCountHistogram2;
  v207[22] = @"collabRootFolderTotalNoteCountHistogram";
  collabRootFolderTotalNoteCountHistogram = [(ICASAccountSnapshotData *)self collabRootFolderTotalNoteCountHistogram];
  if (collabRootFolderTotalNoteCountHistogram)
  {
    collabRootFolderTotalNoteCountHistogram2 = [(ICASAccountSnapshotData *)self collabRootFolderTotalNoteCountHistogram];
  }

  else
  {
    collabRootFolderTotalNoteCountHistogram2 = objc_opt_new();
  }

  v161 = collabRootFolderTotalNoteCountHistogram2;
  v208[22] = collabRootFolderTotalNoteCountHistogram2;
  v207[23] = @"docScanPageCountHistogram";
  docScanPageCountHistogram = [(ICASAccountSnapshotData *)self docScanPageCountHistogram];
  if (docScanPageCountHistogram)
  {
    docScanPageCountHistogram2 = [(ICASAccountSnapshotData *)self docScanPageCountHistogram];
  }

  else
  {
    docScanPageCountHistogram2 = objc_opt_new();
  }

  v159 = docScanPageCountHistogram2;
  v208[23] = docScanPageCountHistogram2;
  v207[24] = @"collabOwnedRootFolderInviteeCountHistogram";
  collabOwnedRootFolderInviteeCountHistogram = [(ICASAccountSnapshotData *)self collabOwnedRootFolderInviteeCountHistogram];
  if (collabOwnedRootFolderInviteeCountHistogram)
  {
    collabOwnedRootFolderInviteeCountHistogram2 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderInviteeCountHistogram];
  }

  else
  {
    collabOwnedRootFolderInviteeCountHistogram2 = objc_opt_new();
  }

  v157 = collabOwnedRootFolderInviteeCountHistogram2;
  v208[24] = collabOwnedRootFolderInviteeCountHistogram2;
  v207[25] = @"collabOwnedRootFolderAcceptanceCountHistogram";
  collabOwnedRootFolderAcceptanceCountHistogram = [(ICASAccountSnapshotData *)self collabOwnedRootFolderAcceptanceCountHistogram];
  if (collabOwnedRootFolderAcceptanceCountHistogram)
  {
    collabOwnedRootFolderAcceptanceCountHistogram2 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderAcceptanceCountHistogram];
  }

  else
  {
    collabOwnedRootFolderAcceptanceCountHistogram2 = objc_opt_new();
  }

  v155 = collabOwnedRootFolderAcceptanceCountHistogram2;
  v208[25] = collabOwnedRootFolderAcceptanceCountHistogram2;
  v207[26] = @"collabOwnedRootFolderNoReplyCountHistogram";
  collabOwnedRootFolderNoReplyCountHistogram = [(ICASAccountSnapshotData *)self collabOwnedRootFolderNoReplyCountHistogram];
  if (collabOwnedRootFolderNoReplyCountHistogram)
  {
    collabOwnedRootFolderNoReplyCountHistogram2 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderNoReplyCountHistogram];
  }

  else
  {
    collabOwnedRootFolderNoReplyCountHistogram2 = objc_opt_new();
  }

  v153 = collabOwnedRootFolderNoReplyCountHistogram2;
  v208[26] = collabOwnedRootFolderNoReplyCountHistogram2;
  v207[27] = @"collabOwnedRootFolderAcceptanceRatioHistogram";
  collabOwnedRootFolderAcceptanceRatioHistogram = [(ICASAccountSnapshotData *)self collabOwnedRootFolderAcceptanceRatioHistogram];
  if (collabOwnedRootFolderAcceptanceRatioHistogram)
  {
    collabOwnedRootFolderAcceptanceRatioHistogram2 = [(ICASAccountSnapshotData *)self collabOwnedRootFolderAcceptanceRatioHistogram];
  }

  else
  {
    collabOwnedRootFolderAcceptanceRatioHistogram2 = objc_opt_new();
  }

  v151 = collabOwnedRootFolderAcceptanceRatioHistogram2;
  v208[27] = collabOwnedRootFolderAcceptanceRatioHistogram2;
  v207[28] = @"collabOwnedSingleNoteInviteeCountHistogram";
  collabOwnedSingleNoteInviteeCountHistogram = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteInviteeCountHistogram];
  if (collabOwnedSingleNoteInviteeCountHistogram)
  {
    collabOwnedSingleNoteInviteeCountHistogram2 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteInviteeCountHistogram];
  }

  else
  {
    collabOwnedSingleNoteInviteeCountHistogram2 = objc_opt_new();
  }

  v149 = collabOwnedSingleNoteInviteeCountHistogram2;
  v208[28] = collabOwnedSingleNoteInviteeCountHistogram2;
  v207[29] = @"collabOwnedSingleNoteAcceptanceCountHistogram";
  collabOwnedSingleNoteAcceptanceCountHistogram = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteAcceptanceCountHistogram];
  if (collabOwnedSingleNoteAcceptanceCountHistogram)
  {
    collabOwnedSingleNoteAcceptanceCountHistogram2 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteAcceptanceCountHistogram];
  }

  else
  {
    collabOwnedSingleNoteAcceptanceCountHistogram2 = objc_opt_new();
  }

  v147 = collabOwnedSingleNoteAcceptanceCountHistogram2;
  v208[29] = collabOwnedSingleNoteAcceptanceCountHistogram2;
  v207[30] = @"collabOwnedSingleNoteNoReplyCountHistogram";
  collabOwnedSingleNoteNoReplyCountHistogram = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteNoReplyCountHistogram];
  if (collabOwnedSingleNoteNoReplyCountHistogram)
  {
    collabOwnedSingleNoteNoReplyCountHistogram2 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteNoReplyCountHistogram];
  }

  else
  {
    collabOwnedSingleNoteNoReplyCountHistogram2 = objc_opt_new();
  }

  v145 = collabOwnedSingleNoteNoReplyCountHistogram2;
  v208[30] = collabOwnedSingleNoteNoReplyCountHistogram2;
  v207[31] = @"collabOwnedSingleNoteAcceptanceRatioHistogram";
  collabOwnedSingleNoteAcceptanceRatioHistogram = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteAcceptanceRatioHistogram];
  if (collabOwnedSingleNoteAcceptanceRatioHistogram)
  {
    collabOwnedSingleNoteAcceptanceRatioHistogram2 = [(ICASAccountSnapshotData *)self collabOwnedSingleNoteAcceptanceRatioHistogram];
  }

  else
  {
    collabOwnedSingleNoteAcceptanceRatioHistogram2 = objc_opt_new();
  }

  v143 = collabOwnedSingleNoteAcceptanceRatioHistogram2;
  v208[31] = collabOwnedSingleNoteAcceptanceRatioHistogram2;
  v207[32] = @"noteCharCountHistogram";
  noteCharCountHistogram = [(ICASAccountSnapshotData *)self noteCharCountHistogram];
  if (noteCharCountHistogram)
  {
    noteCharCountHistogram2 = [(ICASAccountSnapshotData *)self noteCharCountHistogram];
  }

  else
  {
    noteCharCountHistogram2 = objc_opt_new();
  }

  v141 = noteCharCountHistogram2;
  v208[32] = noteCharCountHistogram2;
  v207[33] = @"inlineDrawingV1TotalStrokeCountHistogram";
  inlineDrawingV1TotalStrokeCountHistogram = [(ICASAccountSnapshotData *)self inlineDrawingV1TotalStrokeCountHistogram];
  if (inlineDrawingV1TotalStrokeCountHistogram)
  {
    inlineDrawingV1TotalStrokeCountHistogram2 = [(ICASAccountSnapshotData *)self inlineDrawingV1TotalStrokeCountHistogram];
  }

  else
  {
    inlineDrawingV1TotalStrokeCountHistogram2 = objc_opt_new();
  }

  v139 = inlineDrawingV1TotalStrokeCountHistogram2;
  v208[33] = inlineDrawingV1TotalStrokeCountHistogram2;
  v207[34] = @"inlineDrawingV1PencilStrokeCountHistogram";
  inlineDrawingV1PencilStrokeCountHistogram = [(ICASAccountSnapshotData *)self inlineDrawingV1PencilStrokeCountHistogram];
  if (inlineDrawingV1PencilStrokeCountHistogram)
  {
    inlineDrawingV1PencilStrokeCountHistogram2 = [(ICASAccountSnapshotData *)self inlineDrawingV1PencilStrokeCountHistogram];
  }

  else
  {
    inlineDrawingV1PencilStrokeCountHistogram2 = objc_opt_new();
  }

  v137 = inlineDrawingV1PencilStrokeCountHistogram2;
  v208[34] = inlineDrawingV1PencilStrokeCountHistogram2;
  v207[35] = @"inlineDrawingV1FingerStrokeCountHistogram";
  inlineDrawingV1FingerStrokeCountHistogram = [(ICASAccountSnapshotData *)self inlineDrawingV1FingerStrokeCountHistogram];
  if (inlineDrawingV1FingerStrokeCountHistogram)
  {
    inlineDrawingV1FingerStrokeCountHistogram2 = [(ICASAccountSnapshotData *)self inlineDrawingV1FingerStrokeCountHistogram];
  }

  else
  {
    inlineDrawingV1FingerStrokeCountHistogram2 = objc_opt_new();
  }

  v135 = inlineDrawingV1FingerStrokeCountHistogram2;
  v208[35] = inlineDrawingV1FingerStrokeCountHistogram2;
  v207[36] = @"inlineDrawingV1FingerStrokeRatioHistogram";
  inlineDrawingV1FingerStrokeRatioHistogram = [(ICASAccountSnapshotData *)self inlineDrawingV1FingerStrokeRatioHistogram];
  if (inlineDrawingV1FingerStrokeRatioHistogram)
  {
    inlineDrawingV1FingerStrokeRatioHistogram2 = [(ICASAccountSnapshotData *)self inlineDrawingV1FingerStrokeRatioHistogram];
  }

  else
  {
    inlineDrawingV1FingerStrokeRatioHistogram2 = objc_opt_new();
  }

  v133 = inlineDrawingV1FingerStrokeRatioHistogram2;
  v208[36] = inlineDrawingV1FingerStrokeRatioHistogram2;
  v207[37] = @"inlineDrawingV2TotalStrokeCountHistogram";
  inlineDrawingV2TotalStrokeCountHistogram = [(ICASAccountSnapshotData *)self inlineDrawingV2TotalStrokeCountHistogram];
  if (inlineDrawingV2TotalStrokeCountHistogram)
  {
    inlineDrawingV2TotalStrokeCountHistogram2 = [(ICASAccountSnapshotData *)self inlineDrawingV2TotalStrokeCountHistogram];
  }

  else
  {
    inlineDrawingV2TotalStrokeCountHistogram2 = objc_opt_new();
  }

  v131 = inlineDrawingV2TotalStrokeCountHistogram2;
  v208[37] = inlineDrawingV2TotalStrokeCountHistogram2;
  v207[38] = @"inlineDrawingV2PencilStrokeCountHistogram";
  inlineDrawingV2PencilStrokeCountHistogram = [(ICASAccountSnapshotData *)self inlineDrawingV2PencilStrokeCountHistogram];
  if (inlineDrawingV2PencilStrokeCountHistogram)
  {
    inlineDrawingV2PencilStrokeCountHistogram2 = [(ICASAccountSnapshotData *)self inlineDrawingV2PencilStrokeCountHistogram];
  }

  else
  {
    inlineDrawingV2PencilStrokeCountHistogram2 = objc_opt_new();
  }

  v129 = inlineDrawingV2PencilStrokeCountHistogram2;
  v208[38] = inlineDrawingV2PencilStrokeCountHistogram2;
  v207[39] = @"inlineDrawingV2FingerStrokeCountHistogram";
  inlineDrawingV2FingerStrokeCountHistogram = [(ICASAccountSnapshotData *)self inlineDrawingV2FingerStrokeCountHistogram];
  if (inlineDrawingV2FingerStrokeCountHistogram)
  {
    inlineDrawingV2FingerStrokeCountHistogram2 = [(ICASAccountSnapshotData *)self inlineDrawingV2FingerStrokeCountHistogram];
  }

  else
  {
    inlineDrawingV2FingerStrokeCountHistogram2 = objc_opt_new();
  }

  v127 = inlineDrawingV2FingerStrokeCountHistogram2;
  v208[39] = inlineDrawingV2FingerStrokeCountHistogram2;
  v207[40] = @"inlineDrawingV2FingerStrokeRatioHistogram";
  inlineDrawingV2FingerStrokeRatioHistogram = [(ICASAccountSnapshotData *)self inlineDrawingV2FingerStrokeRatioHistogram];
  if (inlineDrawingV2FingerStrokeRatioHistogram)
  {
    inlineDrawingV2FingerStrokeRatioHistogram2 = [(ICASAccountSnapshotData *)self inlineDrawingV2FingerStrokeRatioHistogram];
  }

  else
  {
    inlineDrawingV2FingerStrokeRatioHistogram2 = objc_opt_new();
  }

  v125 = inlineDrawingV2FingerStrokeRatioHistogram2;
  v208[40] = inlineDrawingV2FingerStrokeRatioHistogram2;
  v207[41] = @"fullscreenDrawingStrokeCountHistogram";
  fullscreenDrawingStrokeCountHistogram = [(ICASAccountSnapshotData *)self fullscreenDrawingStrokeCountHistogram];
  if (fullscreenDrawingStrokeCountHistogram)
  {
    fullscreenDrawingStrokeCountHistogram2 = [(ICASAccountSnapshotData *)self fullscreenDrawingStrokeCountHistogram];
  }

  else
  {
    fullscreenDrawingStrokeCountHistogram2 = objc_opt_new();
  }

  v123 = fullscreenDrawingStrokeCountHistogram2;
  v208[41] = fullscreenDrawingStrokeCountHistogram2;
  v207[42] = @"tableRowCountHistogram";
  tableRowCountHistogram = [(ICASAccountSnapshotData *)self tableRowCountHistogram];
  if (tableRowCountHistogram)
  {
    tableRowCountHistogram2 = [(ICASAccountSnapshotData *)self tableRowCountHistogram];
  }

  else
  {
    tableRowCountHistogram2 = objc_opt_new();
  }

  v121 = tableRowCountHistogram2;
  v208[42] = tableRowCountHistogram2;
  v207[43] = @"tableColumnCountHistogram";
  tableColumnCountHistogram = [(ICASAccountSnapshotData *)self tableColumnCountHistogram];
  if (tableColumnCountHistogram)
  {
    tableColumnCountHistogram2 = [(ICASAccountSnapshotData *)self tableColumnCountHistogram];
  }

  else
  {
    tableColumnCountHistogram2 = objc_opt_new();
  }

  v119 = tableColumnCountHistogram2;
  v208[43] = tableColumnCountHistogram2;
  v207[44] = @"tableCellCountHistogram";
  tableCellCountHistogram = [(ICASAccountSnapshotData *)self tableCellCountHistogram];
  if (tableCellCountHistogram)
  {
    tableCellCountHistogram2 = [(ICASAccountSnapshotData *)self tableCellCountHistogram];
  }

  else
  {
    tableCellCountHistogram2 = objc_opt_new();
  }

  v117 = tableCellCountHistogram2;
  v208[44] = tableCellCountHistogram2;
  v207[45] = @"passwordProtectedNoteWeeklyAgeHistogram";
  passwordProtectedNoteWeeklyAgeHistogram = [(ICASAccountSnapshotData *)self passwordProtectedNoteWeeklyAgeHistogram];
  if (passwordProtectedNoteWeeklyAgeHistogram)
  {
    passwordProtectedNoteWeeklyAgeHistogram2 = [(ICASAccountSnapshotData *)self passwordProtectedNoteWeeklyAgeHistogram];
  }

  else
  {
    passwordProtectedNoteWeeklyAgeHistogram2 = objc_opt_new();
  }

  v115 = passwordProtectedNoteWeeklyAgeHistogram2;
  v208[45] = passwordProtectedNoteWeeklyAgeHistogram2;
  v207[46] = @"topLevelFolderTotalNoteCountHistogram";
  topLevelFolderTotalNoteCountHistogram = [(ICASAccountSnapshotData *)self topLevelFolderTotalNoteCountHistogram];
  if (topLevelFolderTotalNoteCountHistogram)
  {
    topLevelFolderTotalNoteCountHistogram2 = [(ICASAccountSnapshotData *)self topLevelFolderTotalNoteCountHistogram];
  }

  else
  {
    topLevelFolderTotalNoteCountHistogram2 = objc_opt_new();
  }

  v113 = topLevelFolderTotalNoteCountHistogram2;
  v208[46] = topLevelFolderTotalNoteCountHistogram2;
  v207[47] = @"attachmentCountPerNoteHistogram";
  attachmentCountPerNoteHistogram = [(ICASAccountSnapshotData *)self attachmentCountPerNoteHistogram];
  if (attachmentCountPerNoteHistogram)
  {
    attachmentCountPerNoteHistogram2 = [(ICASAccountSnapshotData *)self attachmentCountPerNoteHistogram];
  }

  else
  {
    attachmentCountPerNoteHistogram2 = objc_opt_new();
  }

  v111 = attachmentCountPerNoteHistogram2;
  v208[47] = attachmentCountPerNoteHistogram2;
  v207[48] = @"drawingCountPerNoteHistogram";
  drawingCountPerNoteHistogram = [(ICASAccountSnapshotData *)self drawingCountPerNoteHistogram];
  if (drawingCountPerNoteHistogram)
  {
    drawingCountPerNoteHistogram2 = [(ICASAccountSnapshotData *)self drawingCountPerNoteHistogram];
  }

  else
  {
    drawingCountPerNoteHistogram2 = objc_opt_new();
  }

  v109 = drawingCountPerNoteHistogram2;
  v208[48] = drawingCountPerNoteHistogram2;
  v207[49] = @"inlineDrawingFingerStrokesCountPerNoteHistogram";
  inlineDrawingFingerStrokesCountPerNoteHistogram = [(ICASAccountSnapshotData *)self inlineDrawingFingerStrokesCountPerNoteHistogram];
  if (inlineDrawingFingerStrokesCountPerNoteHistogram)
  {
    inlineDrawingFingerStrokesCountPerNoteHistogram2 = [(ICASAccountSnapshotData *)self inlineDrawingFingerStrokesCountPerNoteHistogram];
  }

  else
  {
    inlineDrawingFingerStrokesCountPerNoteHistogram2 = objc_opt_new();
  }

  v107 = inlineDrawingFingerStrokesCountPerNoteHistogram2;
  v208[49] = inlineDrawingFingerStrokesCountPerNoteHistogram2;
  v207[50] = @"inlineDrawingPencilStrokesCountPerNoteHistogram";
  inlineDrawingPencilStrokesCountPerNoteHistogram = [(ICASAccountSnapshotData *)self inlineDrawingPencilStrokesCountPerNoteHistogram];
  if (inlineDrawingPencilStrokesCountPerNoteHistogram)
  {
    inlineDrawingPencilStrokesCountPerNoteHistogram2 = [(ICASAccountSnapshotData *)self inlineDrawingPencilStrokesCountPerNoteHistogram];
  }

  else
  {
    inlineDrawingPencilStrokesCountPerNoteHistogram2 = objc_opt_new();
  }

  v105 = inlineDrawingPencilStrokesCountPerNoteHistogram2;
  v208[50] = inlineDrawingPencilStrokesCountPerNoteHistogram2;
  v207[51] = @"fullScreenDrawingStrokesCountPerNoteHistogram";
  fullScreenDrawingStrokesCountPerNoteHistogram = [(ICASAccountSnapshotData *)self fullScreenDrawingStrokesCountPerNoteHistogram];
  if (fullScreenDrawingStrokesCountPerNoteHistogram)
  {
    fullScreenDrawingStrokesCountPerNoteHistogram2 = [(ICASAccountSnapshotData *)self fullScreenDrawingStrokesCountPerNoteHistogram];
  }

  else
  {
    fullScreenDrawingStrokesCountPerNoteHistogram2 = objc_opt_new();
  }

  v103 = fullScreenDrawingStrokesCountPerNoteHistogram2;
  v208[51] = fullScreenDrawingStrokesCountPerNoteHistogram2;
  v207[52] = @"totalStrokesCountPerNoteHistogram";
  totalStrokesCountPerNoteHistogram = [(ICASAccountSnapshotData *)self totalStrokesCountPerNoteHistogram];
  if (totalStrokesCountPerNoteHistogram)
  {
    totalStrokesCountPerNoteHistogram2 = [(ICASAccountSnapshotData *)self totalStrokesCountPerNoteHistogram];
  }

  else
  {
    totalStrokesCountPerNoteHistogram2 = objc_opt_new();
  }

  v101 = totalStrokesCountPerNoteHistogram2;
  v208[52] = totalStrokesCountPerNoteHistogram2;
  v207[53] = @"tagCountPerNoteHistogram";
  tagCountPerNoteHistogram = [(ICASAccountSnapshotData *)self tagCountPerNoteHistogram];
  if (tagCountPerNoteHistogram)
  {
    tagCountPerNoteHistogram2 = [(ICASAccountSnapshotData *)self tagCountPerNoteHistogram];
  }

  else
  {
    tagCountPerNoteHistogram2 = objc_opt_new();
  }

  v99 = tagCountPerNoteHistogram2;
  v208[53] = tagCountPerNoteHistogram2;
  v207[54] = @"distinctTagCountPerNoteHistogram";
  distinctTagCountPerNoteHistogram = [(ICASAccountSnapshotData *)self distinctTagCountPerNoteHistogram];
  if (distinctTagCountPerNoteHistogram)
  {
    distinctTagCountPerNoteHistogram2 = [(ICASAccountSnapshotData *)self distinctTagCountPerNoteHistogram];
  }

  else
  {
    distinctTagCountPerNoteHistogram2 = objc_opt_new();
  }

  v97 = distinctTagCountPerNoteHistogram2;
  v208[54] = distinctTagCountPerNoteHistogram2;
  v207[55] = @"totalCountOfNotesWithTags";
  totalCountOfNotesWithTags = [(ICASAccountSnapshotData *)self totalCountOfNotesWithTags];
  if (totalCountOfNotesWithTags)
  {
    totalCountOfNotesWithTags2 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithTags];
  }

  else
  {
    totalCountOfNotesWithTags2 = objc_opt_new();
  }

  v95 = totalCountOfNotesWithTags2;
  v208[55] = totalCountOfNotesWithTags2;
  v207[56] = @"totalCountOfNotesWithCollapsedSections";
  totalCountOfNotesWithCollapsedSections = [(ICASAccountSnapshotData *)self totalCountOfNotesWithCollapsedSections];
  if (totalCountOfNotesWithCollapsedSections)
  {
    totalCountOfNotesWithCollapsedSections2 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithCollapsedSections];
  }

  else
  {
    totalCountOfNotesWithCollapsedSections2 = objc_opt_new();
  }

  v93 = totalCountOfNotesWithCollapsedSections2;
  v208[56] = totalCountOfNotesWithCollapsedSections2;
  v207[57] = @"totalCountOfNotesWithMentions";
  totalCountOfNotesWithMentions = [(ICASAccountSnapshotData *)self totalCountOfNotesWithMentions];
  if (totalCountOfNotesWithMentions)
  {
    totalCountOfNotesWithMentions2 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithMentions];
  }

  else
  {
    totalCountOfNotesWithMentions2 = objc_opt_new();
  }

  v91 = totalCountOfNotesWithMentions2;
  v208[57] = totalCountOfNotesWithMentions2;
  v207[58] = @"totalScrapPaperCount";
  totalScrapPaperCount = [(ICASAccountSnapshotData *)self totalScrapPaperCount];
  if (totalScrapPaperCount)
  {
    totalScrapPaperCount2 = [(ICASAccountSnapshotData *)self totalScrapPaperCount];
  }

  else
  {
    totalScrapPaperCount2 = objc_opt_new();
  }

  v89 = totalScrapPaperCount2;
  v208[58] = totalScrapPaperCount2;
  v207[59] = @"totalCountOfScrapPapersWithTags";
  totalCountOfScrapPapersWithTags = [(ICASAccountSnapshotData *)self totalCountOfScrapPapersWithTags];
  if (totalCountOfScrapPapersWithTags)
  {
    totalCountOfScrapPapersWithTags2 = [(ICASAccountSnapshotData *)self totalCountOfScrapPapersWithTags];
  }

  else
  {
    totalCountOfScrapPapersWithTags2 = objc_opt_new();
  }

  v87 = totalCountOfScrapPapersWithTags2;
  v208[59] = totalCountOfScrapPapersWithTags2;
  v207[60] = @"totalCountOfScrapPapersWithMentions";
  totalCountOfScrapPapersWithMentions = [(ICASAccountSnapshotData *)self totalCountOfScrapPapersWithMentions];
  if (totalCountOfScrapPapersWithMentions)
  {
    totalCountOfScrapPapersWithMentions2 = [(ICASAccountSnapshotData *)self totalCountOfScrapPapersWithMentions];
  }

  else
  {
    totalCountOfScrapPapersWithMentions2 = objc_opt_new();
  }

  v85 = totalCountOfScrapPapersWithMentions2;
  v208[60] = totalCountOfScrapPapersWithMentions2;
  v207[61] = @"totalCountOfPinnedScrapPapers";
  totalCountOfPinnedScrapPapers = [(ICASAccountSnapshotData *)self totalCountOfPinnedScrapPapers];
  if (totalCountOfPinnedScrapPapers)
  {
    totalCountOfPinnedScrapPapers2 = [(ICASAccountSnapshotData *)self totalCountOfPinnedScrapPapers];
  }

  else
  {
    totalCountOfPinnedScrapPapers2 = objc_opt_new();
  }

  v83 = totalCountOfPinnedScrapPapers2;
  v208[61] = totalCountOfPinnedScrapPapers2;
  v207[62] = @"totalCountOfLockedScrapPapers";
  totalCountOfLockedScrapPapers = [(ICASAccountSnapshotData *)self totalCountOfLockedScrapPapers];
  if (totalCountOfLockedScrapPapers)
  {
    totalCountOfLockedScrapPapers2 = [(ICASAccountSnapshotData *)self totalCountOfLockedScrapPapers];
  }

  else
  {
    totalCountOfLockedScrapPapers2 = objc_opt_new();
  }

  v67 = totalCountOfLockedScrapPapers2;
  v208[62] = totalCountOfLockedScrapPapers2;
  v207[63] = @"totalCountOfCollaboratedScrapPapers";
  totalCountOfCollaboratedScrapPapers = [(ICASAccountSnapshotData *)self totalCountOfCollaboratedScrapPapers];
  if (totalCountOfCollaboratedScrapPapers)
  {
    totalCountOfCollaboratedScrapPapers2 = [(ICASAccountSnapshotData *)self totalCountOfCollaboratedScrapPapers];
  }

  else
  {
    totalCountOfCollaboratedScrapPapers2 = objc_opt_new();
  }

  v70 = totalCountOfCollaboratedScrapPapers2;
  v208[63] = totalCountOfCollaboratedScrapPapers2;
  v207[64] = @"mentionCountPerNoteHistogram";
  mentionCountPerNoteHistogram = [(ICASAccountSnapshotData *)self mentionCountPerNoteHistogram];
  if (mentionCountPerNoteHistogram)
  {
    mentionCountPerNoteHistogram2 = [(ICASAccountSnapshotData *)self mentionCountPerNoteHistogram];
  }

  else
  {
    mentionCountPerNoteHistogram2 = objc_opt_new();
  }

  v73 = mentionCountPerNoteHistogram2;
  v208[64] = mentionCountPerNoteHistogram2;
  v207[65] = @"distinctMentionCountPerNoteHistogram";
  distinctMentionCountPerNoteHistogram = [(ICASAccountSnapshotData *)self distinctMentionCountPerNoteHistogram];
  if (distinctMentionCountPerNoteHistogram)
  {
    distinctMentionCountPerNoteHistogram2 = [(ICASAccountSnapshotData *)self distinctMentionCountPerNoteHistogram];
  }

  else
  {
    distinctMentionCountPerNoteHistogram2 = objc_opt_new();
  }

  v76 = distinctMentionCountPerNoteHistogram2;
  v208[65] = distinctMentionCountPerNoteHistogram2;
  v207[66] = @"totalCountOfNotesWithMathUsage";
  totalCountOfNotesWithMathUsage = [(ICASAccountSnapshotData *)self totalCountOfNotesWithMathUsage];
  if (totalCountOfNotesWithMathUsage)
  {
    totalCountOfNotesWithMathUsage2 = [(ICASAccountSnapshotData *)self totalCountOfNotesWithMathUsage];
  }

  else
  {
    totalCountOfNotesWithMathUsage2 = objc_opt_new();
  }

  v79 = totalCountOfNotesWithMathUsage2;
  v208[66] = totalCountOfNotesWithMathUsage2;
  v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v208 forKeys:v207 count:67];

  v80 = *MEMORY[0x277D85DE8];

  return v82;
}

@end