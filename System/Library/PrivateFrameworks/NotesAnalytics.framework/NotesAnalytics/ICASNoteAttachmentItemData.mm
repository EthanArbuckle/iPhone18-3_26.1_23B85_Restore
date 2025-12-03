@interface ICASNoteAttachmentItemData
- (ICASNoteAttachmentItemData)initWithTotalCountOfNotesWithAttachmentDocScan:(id)scan totalCountOfNotesWithAttachmentInlineDrawingV1:(id)v1 totalCountOfNotesWithAttachmentInlineDrawingV2:(id)v2 totalCountOfNotesWithAttachmentPaperKit:(id)kit totalCountOfNotesWithAttachmentFullscreenDrawing:(id)drawing totalCountOfNotesWithAttachmentTables:(id)tables totalCountOfNotesWithAttachmentOther:(id)other totalCountOfNotesWithAttachmentRichUrl:(id)self0 totalCountOfNotesWithAttachmentMapLink:(id)self1 totalCountOfNotesWithAttachmentDeepLink:(id)self2 totalCountOfNotesWithPaperDocument:(id)self3 totalCountOfNotesWithPdfDocument:(id)self4 totalCountOfNotesWithNoteLinks:(id)self5 totalCountOfNotesWithFolderLinks:(id)self6 totalCountOfNotesWithAttachmentAudio:(id)self7 totalCountOfAudioAttachments:(id)self8 totalCountOfAudioAttachmentsRecordedInNotes:(id)self9 totalCountOfAudioAttachmentsWithAppendedAudio:(id)appendedAudio totalCountOfNotesWithAttachmentAudioTranscript:(id)transcript totalCountOfNotesWithAttachmentAudioSummary:(id)summary;
- (id)toDict;
@end

@implementation ICASNoteAttachmentItemData

- (ICASNoteAttachmentItemData)initWithTotalCountOfNotesWithAttachmentDocScan:(id)scan totalCountOfNotesWithAttachmentInlineDrawingV1:(id)v1 totalCountOfNotesWithAttachmentInlineDrawingV2:(id)v2 totalCountOfNotesWithAttachmentPaperKit:(id)kit totalCountOfNotesWithAttachmentFullscreenDrawing:(id)drawing totalCountOfNotesWithAttachmentTables:(id)tables totalCountOfNotesWithAttachmentOther:(id)other totalCountOfNotesWithAttachmentRichUrl:(id)self0 totalCountOfNotesWithAttachmentMapLink:(id)self1 totalCountOfNotesWithAttachmentDeepLink:(id)self2 totalCountOfNotesWithPaperDocument:(id)self3 totalCountOfNotesWithPdfDocument:(id)self4 totalCountOfNotesWithNoteLinks:(id)self5 totalCountOfNotesWithFolderLinks:(id)self6 totalCountOfNotesWithAttachmentAudio:(id)self7 totalCountOfAudioAttachments:(id)self8 totalCountOfAudioAttachmentsRecordedInNotes:(id)self9 totalCountOfAudioAttachmentsWithAppendedAudio:(id)appendedAudio totalCountOfNotesWithAttachmentAudioTranscript:(id)transcript totalCountOfNotesWithAttachmentAudioSummary:(id)summary
{
  scanCopy = scan;
  v1Copy = v1;
  v1Copy2 = v1;
  v2Copy = v2;
  v2Copy2 = v2;
  kitCopy = kit;
  kitCopy2 = kit;
  drawingCopy = drawing;
  drawingCopy2 = drawing;
  tablesCopy = tables;
  otherCopy = other;
  urlCopy = url;
  linkCopy = link;
  deepLinkCopy = deepLink;
  documentCopy = document;
  pdfDocumentCopy = pdfDocument;
  linksCopy = links;
  folderLinksCopy = folderLinks;
  audioCopy = audio;
  attachmentsCopy = attachments;
  notesCopy = notes;
  appendedAudioCopy = appendedAudio;
  transcriptCopy = transcript;
  summaryCopy = summary;
  v56.receiver = self;
  v56.super_class = ICASNoteAttachmentItemData;
  v33 = [(ICASNoteAttachmentItemData *)&v56 init];
  v34 = v33;
  if (v33)
  {
    objc_storeStrong(&v33->_totalCountOfNotesWithAttachmentDocScan, scan);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentInlineDrawingV1, v1Copy);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentInlineDrawingV2, v2Copy);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentPaperKit, kitCopy);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentFullscreenDrawing, drawingCopy);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentTables, tables);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentOther, other);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentRichUrl, url);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentMapLink, link);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentDeepLink, deepLink);
    objc_storeStrong(&v34->_totalCountOfNotesWithPaperDocument, document);
    objc_storeStrong(&v34->_totalCountOfNotesWithPdfDocument, pdfDocument);
    objc_storeStrong(&v34->_totalCountOfNotesWithNoteLinks, links);
    objc_storeStrong(&v34->_totalCountOfNotesWithFolderLinks, folderLinks);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentAudio, audio);
    objc_storeStrong(&v34->_totalCountOfAudioAttachments, attachments);
    objc_storeStrong(&v34->_totalCountOfAudioAttachmentsRecordedInNotes, notes);
    objc_storeStrong(&v34->_totalCountOfAudioAttachmentsWithAppendedAudio, appendedAudio);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentAudioTranscript, transcript);
    objc_storeStrong(&v34->_totalCountOfNotesWithAttachmentAudioSummary, summary);
  }

  return v34;
}

- (id)toDict
{
  v67[20] = *MEMORY[0x277D85DE8];
  v66[0] = @"totalCountOfNotesWithAttachmentDocScan";
  totalCountOfNotesWithAttachmentDocScan = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentDocScan];
  if (totalCountOfNotesWithAttachmentDocScan)
  {
    totalCountOfNotesWithAttachmentDocScan2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentDocScan];
  }

  else
  {
    totalCountOfNotesWithAttachmentDocScan2 = objc_opt_new();
  }

  v64 = totalCountOfNotesWithAttachmentDocScan2;
  v67[0] = totalCountOfNotesWithAttachmentDocScan2;
  v66[1] = @"totalCountOfNotesWithAttachmentInlineDrawingV1";
  totalCountOfNotesWithAttachmentInlineDrawingV1 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentInlineDrawingV1];
  if (totalCountOfNotesWithAttachmentInlineDrawingV1)
  {
    totalCountOfNotesWithAttachmentInlineDrawingV12 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentInlineDrawingV1];
  }

  else
  {
    totalCountOfNotesWithAttachmentInlineDrawingV12 = objc_opt_new();
  }

  v62 = totalCountOfNotesWithAttachmentInlineDrawingV12;
  v67[1] = totalCountOfNotesWithAttachmentInlineDrawingV12;
  v66[2] = @"totalCountOfNotesWithAttachmentInlineDrawingV2";
  totalCountOfNotesWithAttachmentInlineDrawingV2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentInlineDrawingV2];
  if (totalCountOfNotesWithAttachmentInlineDrawingV2)
  {
    totalCountOfNotesWithAttachmentInlineDrawingV22 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentInlineDrawingV2];
  }

  else
  {
    totalCountOfNotesWithAttachmentInlineDrawingV22 = objc_opt_new();
  }

  v60 = totalCountOfNotesWithAttachmentInlineDrawingV22;
  v67[2] = totalCountOfNotesWithAttachmentInlineDrawingV22;
  v66[3] = @"totalCountOfNotesWithAttachmentPaperKit";
  totalCountOfNotesWithAttachmentPaperKit = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentPaperKit];
  if (totalCountOfNotesWithAttachmentPaperKit)
  {
    totalCountOfNotesWithAttachmentPaperKit2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentPaperKit];
  }

  else
  {
    totalCountOfNotesWithAttachmentPaperKit2 = objc_opt_new();
  }

  v58 = totalCountOfNotesWithAttachmentPaperKit2;
  v67[3] = totalCountOfNotesWithAttachmentPaperKit2;
  v66[4] = @"totalCountOfNotesWithAttachmentFullscreenDrawing";
  totalCountOfNotesWithAttachmentFullscreenDrawing = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentFullscreenDrawing];
  if (totalCountOfNotesWithAttachmentFullscreenDrawing)
  {
    totalCountOfNotesWithAttachmentFullscreenDrawing2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentFullscreenDrawing];
  }

  else
  {
    totalCountOfNotesWithAttachmentFullscreenDrawing2 = objc_opt_new();
  }

  v56 = totalCountOfNotesWithAttachmentFullscreenDrawing2;
  v67[4] = totalCountOfNotesWithAttachmentFullscreenDrawing2;
  v66[5] = @"totalCountOfNotesWithAttachmentTables";
  totalCountOfNotesWithAttachmentTables = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentTables];
  if (totalCountOfNotesWithAttachmentTables)
  {
    totalCountOfNotesWithAttachmentTables2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentTables];
  }

  else
  {
    totalCountOfNotesWithAttachmentTables2 = objc_opt_new();
  }

  v54 = totalCountOfNotesWithAttachmentTables2;
  v67[5] = totalCountOfNotesWithAttachmentTables2;
  v66[6] = @"totalCountOfNotesWithAttachmentOther";
  totalCountOfNotesWithAttachmentOther = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentOther];
  if (totalCountOfNotesWithAttachmentOther)
  {
    totalCountOfNotesWithAttachmentOther2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentOther];
  }

  else
  {
    totalCountOfNotesWithAttachmentOther2 = objc_opt_new();
  }

  v52 = totalCountOfNotesWithAttachmentOther2;
  v67[6] = totalCountOfNotesWithAttachmentOther2;
  v66[7] = @"totalCountOfNotesWithAttachmentRichUrl";
  totalCountOfNotesWithAttachmentRichUrl = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentRichUrl];
  if (totalCountOfNotesWithAttachmentRichUrl)
  {
    totalCountOfNotesWithAttachmentRichUrl2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentRichUrl];
  }

  else
  {
    totalCountOfNotesWithAttachmentRichUrl2 = objc_opt_new();
  }

  v50 = totalCountOfNotesWithAttachmentRichUrl2;
  v67[7] = totalCountOfNotesWithAttachmentRichUrl2;
  v66[8] = @"totalCountOfNotesWithAttachmentMapLink";
  totalCountOfNotesWithAttachmentMapLink = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentMapLink];
  if (totalCountOfNotesWithAttachmentMapLink)
  {
    totalCountOfNotesWithAttachmentMapLink2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentMapLink];
  }

  else
  {
    totalCountOfNotesWithAttachmentMapLink2 = objc_opt_new();
  }

  v48 = totalCountOfNotesWithAttachmentMapLink2;
  v67[8] = totalCountOfNotesWithAttachmentMapLink2;
  v66[9] = @"totalCountOfNotesWithAttachmentDeepLink";
  totalCountOfNotesWithAttachmentDeepLink = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentDeepLink];
  if (totalCountOfNotesWithAttachmentDeepLink)
  {
    totalCountOfNotesWithAttachmentDeepLink2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentDeepLink];
  }

  else
  {
    totalCountOfNotesWithAttachmentDeepLink2 = objc_opt_new();
  }

  v46 = totalCountOfNotesWithAttachmentDeepLink2;
  v67[9] = totalCountOfNotesWithAttachmentDeepLink2;
  v66[10] = @"totalCountOfNotesWithPaperDocument";
  totalCountOfNotesWithPaperDocument = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithPaperDocument];
  if (totalCountOfNotesWithPaperDocument)
  {
    totalCountOfNotesWithPaperDocument2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithPaperDocument];
  }

  else
  {
    totalCountOfNotesWithPaperDocument2 = objc_opt_new();
  }

  v44 = totalCountOfNotesWithPaperDocument2;
  v67[10] = totalCountOfNotesWithPaperDocument2;
  v66[11] = @"totalCountOfNotesWithPdfDocument";
  totalCountOfNotesWithPdfDocument = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithPdfDocument];
  if (totalCountOfNotesWithPdfDocument)
  {
    totalCountOfNotesWithPdfDocument2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithPdfDocument];
  }

  else
  {
    totalCountOfNotesWithPdfDocument2 = objc_opt_new();
  }

  v42 = totalCountOfNotesWithPdfDocument2;
  v67[11] = totalCountOfNotesWithPdfDocument2;
  v66[12] = @"totalCountOfNotesWithNoteLinks";
  totalCountOfNotesWithNoteLinks = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithNoteLinks];
  if (totalCountOfNotesWithNoteLinks)
  {
    totalCountOfNotesWithNoteLinks2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithNoteLinks];
  }

  else
  {
    totalCountOfNotesWithNoteLinks2 = objc_opt_new();
  }

  v40 = totalCountOfNotesWithNoteLinks2;
  v67[12] = totalCountOfNotesWithNoteLinks2;
  v66[13] = @"totalCountOfNotesWithFolderLinks";
  totalCountOfNotesWithFolderLinks = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithFolderLinks];
  if (totalCountOfNotesWithFolderLinks)
  {
    totalCountOfNotesWithFolderLinks2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithFolderLinks];
  }

  else
  {
    totalCountOfNotesWithFolderLinks2 = objc_opt_new();
  }

  v38 = totalCountOfNotesWithFolderLinks2;
  v67[13] = totalCountOfNotesWithFolderLinks2;
  v66[14] = @"totalCountOfNotesWithAttachmentAudio";
  totalCountOfNotesWithAttachmentAudio = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudio];
  if (totalCountOfNotesWithAttachmentAudio)
  {
    totalCountOfNotesWithAttachmentAudio2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudio];
  }

  else
  {
    totalCountOfNotesWithAttachmentAudio2 = objc_opt_new();
  }

  v36 = totalCountOfNotesWithAttachmentAudio2;
  v67[14] = totalCountOfNotesWithAttachmentAudio2;
  v66[15] = @"totalCountOfAudioAttachments";
  totalCountOfAudioAttachments = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachments];
  if (totalCountOfAudioAttachments)
  {
    totalCountOfAudioAttachments2 = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachments];
  }

  else
  {
    totalCountOfAudioAttachments2 = objc_opt_new();
  }

  v20 = totalCountOfAudioAttachments2;
  v67[15] = totalCountOfAudioAttachments2;
  v66[16] = @"totalCountOfAudioAttachmentsRecordedInNotes";
  totalCountOfAudioAttachmentsRecordedInNotes = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachmentsRecordedInNotes];
  if (totalCountOfAudioAttachmentsRecordedInNotes)
  {
    totalCountOfAudioAttachmentsRecordedInNotes2 = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachmentsRecordedInNotes];
  }

  else
  {
    totalCountOfAudioAttachmentsRecordedInNotes2 = objc_opt_new();
  }

  v23 = totalCountOfAudioAttachmentsRecordedInNotes2;
  v67[16] = totalCountOfAudioAttachmentsRecordedInNotes2;
  v66[17] = @"totalCountOfAudioAttachmentsWithAppendedAudio";
  totalCountOfAudioAttachmentsWithAppendedAudio = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachmentsWithAppendedAudio];
  if (totalCountOfAudioAttachmentsWithAppendedAudio)
  {
    totalCountOfAudioAttachmentsWithAppendedAudio2 = [(ICASNoteAttachmentItemData *)self totalCountOfAudioAttachmentsWithAppendedAudio];
  }

  else
  {
    totalCountOfAudioAttachmentsWithAppendedAudio2 = objc_opt_new();
  }

  v26 = totalCountOfAudioAttachmentsWithAppendedAudio2;
  v67[17] = totalCountOfAudioAttachmentsWithAppendedAudio2;
  v66[18] = @"totalCountOfNotesWithAttachmentAudioTranscript";
  totalCountOfNotesWithAttachmentAudioTranscript = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudioTranscript];
  if (totalCountOfNotesWithAttachmentAudioTranscript)
  {
    totalCountOfNotesWithAttachmentAudioTranscript2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudioTranscript];
  }

  else
  {
    totalCountOfNotesWithAttachmentAudioTranscript2 = objc_opt_new();
  }

  v29 = totalCountOfNotesWithAttachmentAudioTranscript2;
  v67[18] = totalCountOfNotesWithAttachmentAudioTranscript2;
  v66[19] = @"totalCountOfNotesWithAttachmentAudioSummary";
  totalCountOfNotesWithAttachmentAudioSummary = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudioSummary];
  if (totalCountOfNotesWithAttachmentAudioSummary)
  {
    totalCountOfNotesWithAttachmentAudioSummary2 = [(ICASNoteAttachmentItemData *)self totalCountOfNotesWithAttachmentAudioSummary];
  }

  else
  {
    totalCountOfNotesWithAttachmentAudioSummary2 = objc_opt_new();
  }

  v32 = totalCountOfNotesWithAttachmentAudioSummary2;
  v67[19] = totalCountOfNotesWithAttachmentAudioSummary2;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:20];

  v33 = *MEMORY[0x277D85DE8];

  return v35;
}

@end