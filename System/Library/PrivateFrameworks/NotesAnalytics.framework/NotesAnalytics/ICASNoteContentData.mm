@interface ICASNoteContentData
- (ICASNoteContentData)initWithCharacterCount:(id)count hasChecklist:(id)checklist hasStyleFormatting:(id)formatting hasTable:(id)table hasAttachmentInlineDrawingV1:(id)v1 hasAttachmentInlineDrawingV2:(id)v2 hasAttachmentFullscreenDrawing:(id)drawing hasAttachmentOther:(id)self0 hasAttachedPhoto:(id)self1 weeksSinceCreation:(id)self2 hasAttachmentRichUrl:(id)self3 hasAttachmentMapLink:(id)self4 hasTags:(id)self5 hasScannedDoc:(id)self6 countOfTags:(id)self7 countOfDistinctTags:(id)self8 hasMentions:(id)self9 countOfMentions:(id)ofMentions countOfDistinctMentions:(id)distinctMentions hasPaperKitDrawing:(id)kitDrawing hasPaperDocument:(id)document hasPdf:(id)pdf countOfNoteLinks:(id)links countOfDistinctNoteLinks:(id)noteLinks countOfFolderLinks:(id)folderLinks countOfDistinctFolderLinks:(id)distinctFolderLinks countOfAudioAttachments:(id)attachments;
- (id)toDict;
@end

@implementation ICASNoteContentData

- (ICASNoteContentData)initWithCharacterCount:(id)count hasChecklist:(id)checklist hasStyleFormatting:(id)formatting hasTable:(id)table hasAttachmentInlineDrawingV1:(id)v1 hasAttachmentInlineDrawingV2:(id)v2 hasAttachmentFullscreenDrawing:(id)drawing hasAttachmentOther:(id)self0 hasAttachedPhoto:(id)self1 weeksSinceCreation:(id)self2 hasAttachmentRichUrl:(id)self3 hasAttachmentMapLink:(id)self4 hasTags:(id)self5 hasScannedDoc:(id)self6 countOfTags:(id)self7 countOfDistinctTags:(id)self8 hasMentions:(id)self9 countOfMentions:(id)ofMentions countOfDistinctMentions:(id)distinctMentions hasPaperKitDrawing:(id)kitDrawing hasPaperDocument:(id)document hasPdf:(id)pdf countOfNoteLinks:(id)links countOfDistinctNoteLinks:(id)noteLinks countOfFolderLinks:(id)folderLinks countOfDistinctFolderLinks:(id)distinctFolderLinks countOfAudioAttachments:(id)attachments
{
  countCopy = count;
  checklistCopy = checklist;
  checklistCopy2 = checklist;
  formattingCopy = formatting;
  tableCopy = table;
  tableCopy2 = table;
  v1Copy = v1;
  v2Copy = v2;
  drawingCopy = drawing;
  otherCopy = other;
  photoCopy = photo;
  creationCopy = creation;
  urlCopy = url;
  linkCopy = link;
  tagsCopy = tags;
  docCopy = doc;
  ofTagsCopy = ofTags;
  distinctTagsCopy = distinctTags;
  mentionsCopy = mentions;
  ofMentionsCopy = ofMentions;
  distinctMentionsCopy = distinctMentions;
  kitDrawingCopy = kitDrawing;
  documentCopy = document;
  pdfCopy = pdf;
  linksCopy = links;
  noteLinksCopy = noteLinks;
  folderLinksCopy = folderLinks;
  distinctFolderLinksCopy = distinctFolderLinks;
  attachmentsCopy = attachments;
  v68.receiver = self;
  v68.super_class = ICASNoteContentData;
  v40 = [(ICASNoteContentData *)&v68 init];
  v41 = v40;
  if (v40)
  {
    objc_storeStrong(&v40->_characterCount, count);
    objc_storeStrong(&v41->_hasChecklist, checklistCopy);
    objc_storeStrong(&v41->_hasStyleFormatting, formatting);
    objc_storeStrong(&v41->_hasTable, tableCopy);
    objc_storeStrong(&v41->_hasAttachmentInlineDrawingV1, v1);
    objc_storeStrong(&v41->_hasAttachmentInlineDrawingV2, v2);
    objc_storeStrong(&v41->_hasAttachmentFullscreenDrawing, drawing);
    objc_storeStrong(&v41->_hasAttachmentOther, other);
    objc_storeStrong(&v41->_hasAttachedPhoto, photo);
    objc_storeStrong(&v41->_weeksSinceCreation, creation);
    objc_storeStrong(&v41->_hasAttachmentRichUrl, url);
    objc_storeStrong(&v41->_hasAttachmentMapLink, link);
    objc_storeStrong(&v41->_hasTags, tags);
    objc_storeStrong(&v41->_hasScannedDoc, doc);
    objc_storeStrong(&v41->_countOfTags, ofTags);
    objc_storeStrong(&v41->_countOfDistinctTags, distinctTags);
    objc_storeStrong(&v41->_hasMentions, mentions);
    objc_storeStrong(&v41->_countOfMentions, ofMentions);
    objc_storeStrong(&v41->_countOfDistinctMentions, distinctMentions);
    objc_storeStrong(&v41->_hasPaperKitDrawing, kitDrawing);
    objc_storeStrong(&v41->_hasPaperDocument, document);
    objc_storeStrong(&v41->_hasPdf, pdf);
    objc_storeStrong(&v41->_countOfNoteLinks, links);
    objc_storeStrong(&v41->_countOfDistinctNoteLinks, noteLinks);
    objc_storeStrong(&v41->_countOfFolderLinks, folderLinks);
    objc_storeStrong(&v41->_countOfDistinctFolderLinks, distinctFolderLinks);
    objc_storeStrong(&v41->_countOfAudioAttachments, attachments);
  }

  return v41;
}

- (id)toDict
{
  v88[27] = *MEMORY[0x277D85DE8];
  v87[0] = @"characterCount";
  characterCount = [(ICASNoteContentData *)self characterCount];
  if (characterCount)
  {
    characterCount2 = [(ICASNoteContentData *)self characterCount];
  }

  else
  {
    characterCount2 = objc_opt_new();
  }

  v85 = characterCount2;
  v88[0] = characterCount2;
  v87[1] = @"hasChecklist";
  hasChecklist = [(ICASNoteContentData *)self hasChecklist];
  if (hasChecklist)
  {
    hasChecklist2 = [(ICASNoteContentData *)self hasChecklist];
  }

  else
  {
    hasChecklist2 = objc_opt_new();
  }

  v83 = hasChecklist2;
  v88[1] = hasChecklist2;
  v87[2] = @"hasStyleFormatting";
  hasStyleFormatting = [(ICASNoteContentData *)self hasStyleFormatting];
  if (hasStyleFormatting)
  {
    hasStyleFormatting2 = [(ICASNoteContentData *)self hasStyleFormatting];
  }

  else
  {
    hasStyleFormatting2 = objc_opt_new();
  }

  v81 = hasStyleFormatting2;
  v88[2] = hasStyleFormatting2;
  v87[3] = @"hasTable";
  hasTable = [(ICASNoteContentData *)self hasTable];
  if (hasTable)
  {
    hasTable2 = [(ICASNoteContentData *)self hasTable];
  }

  else
  {
    hasTable2 = objc_opt_new();
  }

  v79 = hasTable2;
  v88[3] = hasTable2;
  v87[4] = @"hasAttachmentInlineDrawingV1";
  hasAttachmentInlineDrawingV1 = [(ICASNoteContentData *)self hasAttachmentInlineDrawingV1];
  if (hasAttachmentInlineDrawingV1)
  {
    hasAttachmentInlineDrawingV12 = [(ICASNoteContentData *)self hasAttachmentInlineDrawingV1];
  }

  else
  {
    hasAttachmentInlineDrawingV12 = objc_opt_new();
  }

  v77 = hasAttachmentInlineDrawingV12;
  v88[4] = hasAttachmentInlineDrawingV12;
  v87[5] = @"hasAttachmentInlineDrawingV2";
  hasAttachmentInlineDrawingV2 = [(ICASNoteContentData *)self hasAttachmentInlineDrawingV2];
  if (hasAttachmentInlineDrawingV2)
  {
    hasAttachmentInlineDrawingV22 = [(ICASNoteContentData *)self hasAttachmentInlineDrawingV2];
  }

  else
  {
    hasAttachmentInlineDrawingV22 = objc_opt_new();
  }

  v75 = hasAttachmentInlineDrawingV22;
  v88[5] = hasAttachmentInlineDrawingV22;
  v87[6] = @"hasAttachmentFullscreenDrawing";
  hasAttachmentFullscreenDrawing = [(ICASNoteContentData *)self hasAttachmentFullscreenDrawing];
  if (hasAttachmentFullscreenDrawing)
  {
    hasAttachmentFullscreenDrawing2 = [(ICASNoteContentData *)self hasAttachmentFullscreenDrawing];
  }

  else
  {
    hasAttachmentFullscreenDrawing2 = objc_opt_new();
  }

  v73 = hasAttachmentFullscreenDrawing2;
  v88[6] = hasAttachmentFullscreenDrawing2;
  v87[7] = @"hasAttachmentOther";
  hasAttachmentOther = [(ICASNoteContentData *)self hasAttachmentOther];
  if (hasAttachmentOther)
  {
    hasAttachmentOther2 = [(ICASNoteContentData *)self hasAttachmentOther];
  }

  else
  {
    hasAttachmentOther2 = objc_opt_new();
  }

  v71 = hasAttachmentOther2;
  v88[7] = hasAttachmentOther2;
  v87[8] = @"hasAttachedPhoto";
  hasAttachedPhoto = [(ICASNoteContentData *)self hasAttachedPhoto];
  if (hasAttachedPhoto)
  {
    hasAttachedPhoto2 = [(ICASNoteContentData *)self hasAttachedPhoto];
  }

  else
  {
    hasAttachedPhoto2 = objc_opt_new();
  }

  v69 = hasAttachedPhoto2;
  v88[8] = hasAttachedPhoto2;
  v87[9] = @"weeksSinceCreation";
  weeksSinceCreation = [(ICASNoteContentData *)self weeksSinceCreation];
  if (weeksSinceCreation)
  {
    weeksSinceCreation2 = [(ICASNoteContentData *)self weeksSinceCreation];
  }

  else
  {
    weeksSinceCreation2 = objc_opt_new();
  }

  v67 = weeksSinceCreation2;
  v88[9] = weeksSinceCreation2;
  v87[10] = @"hasAttachmentRichUrl";
  hasAttachmentRichUrl = [(ICASNoteContentData *)self hasAttachmentRichUrl];
  if (hasAttachmentRichUrl)
  {
    hasAttachmentRichUrl2 = [(ICASNoteContentData *)self hasAttachmentRichUrl];
  }

  else
  {
    hasAttachmentRichUrl2 = objc_opt_new();
  }

  v65 = hasAttachmentRichUrl2;
  v88[10] = hasAttachmentRichUrl2;
  v87[11] = @"hasAttachmentMapLink";
  hasAttachmentMapLink = [(ICASNoteContentData *)self hasAttachmentMapLink];
  if (hasAttachmentMapLink)
  {
    hasAttachmentMapLink2 = [(ICASNoteContentData *)self hasAttachmentMapLink];
  }

  else
  {
    hasAttachmentMapLink2 = objc_opt_new();
  }

  v63 = hasAttachmentMapLink2;
  v88[11] = hasAttachmentMapLink2;
  v87[12] = @"hasTags";
  hasTags = [(ICASNoteContentData *)self hasTags];
  if (hasTags)
  {
    hasTags2 = [(ICASNoteContentData *)self hasTags];
  }

  else
  {
    hasTags2 = objc_opt_new();
  }

  v61 = hasTags2;
  v88[12] = hasTags2;
  v87[13] = @"hasScannedDoc";
  hasScannedDoc = [(ICASNoteContentData *)self hasScannedDoc];
  if (hasScannedDoc)
  {
    hasScannedDoc2 = [(ICASNoteContentData *)self hasScannedDoc];
  }

  else
  {
    hasScannedDoc2 = objc_opt_new();
  }

  v59 = hasScannedDoc2;
  v88[13] = hasScannedDoc2;
  v87[14] = @"countOfTags";
  countOfTags = [(ICASNoteContentData *)self countOfTags];
  if (countOfTags)
  {
    countOfTags2 = [(ICASNoteContentData *)self countOfTags];
  }

  else
  {
    countOfTags2 = objc_opt_new();
  }

  v57 = countOfTags2;
  v88[14] = countOfTags2;
  v87[15] = @"countOfDistinctTags";
  countOfDistinctTags = [(ICASNoteContentData *)self countOfDistinctTags];
  if (countOfDistinctTags)
  {
    countOfDistinctTags2 = [(ICASNoteContentData *)self countOfDistinctTags];
  }

  else
  {
    countOfDistinctTags2 = objc_opt_new();
  }

  v55 = countOfDistinctTags2;
  v88[15] = countOfDistinctTags2;
  v87[16] = @"hasMentions";
  hasMentions = [(ICASNoteContentData *)self hasMentions];
  if (hasMentions)
  {
    hasMentions2 = [(ICASNoteContentData *)self hasMentions];
  }

  else
  {
    hasMentions2 = objc_opt_new();
  }

  v53 = hasMentions2;
  v88[16] = hasMentions2;
  v87[17] = @"countOfMentions";
  countOfMentions = [(ICASNoteContentData *)self countOfMentions];
  if (countOfMentions)
  {
    countOfMentions2 = [(ICASNoteContentData *)self countOfMentions];
  }

  else
  {
    countOfMentions2 = objc_opt_new();
  }

  v51 = countOfMentions2;
  v88[17] = countOfMentions2;
  v87[18] = @"countOfDistinctMentions";
  countOfDistinctMentions = [(ICASNoteContentData *)self countOfDistinctMentions];
  if (countOfDistinctMentions)
  {
    countOfDistinctMentions2 = [(ICASNoteContentData *)self countOfDistinctMentions];
  }

  else
  {
    countOfDistinctMentions2 = objc_opt_new();
  }

  v49 = countOfDistinctMentions2;
  v88[18] = countOfDistinctMentions2;
  v87[19] = @"hasPaperKitDrawing";
  hasPaperKitDrawing = [(ICASNoteContentData *)self hasPaperKitDrawing];
  if (hasPaperKitDrawing)
  {
    hasPaperKitDrawing2 = [(ICASNoteContentData *)self hasPaperKitDrawing];
  }

  else
  {
    hasPaperKitDrawing2 = objc_opt_new();
  }

  v47 = hasPaperKitDrawing2;
  v88[19] = hasPaperKitDrawing2;
  v87[20] = @"hasPaperDocument";
  hasPaperDocument = [(ICASNoteContentData *)self hasPaperDocument];
  if (hasPaperDocument)
  {
    hasPaperDocument2 = [(ICASNoteContentData *)self hasPaperDocument];
  }

  else
  {
    hasPaperDocument2 = objc_opt_new();
  }

  v45 = hasPaperDocument2;
  v88[20] = hasPaperDocument2;
  v87[21] = @"hasPdf";
  hasPdf = [(ICASNoteContentData *)self hasPdf];
  if (hasPdf)
  {
    hasPdf2 = [(ICASNoteContentData *)self hasPdf];
  }

  else
  {
    hasPdf2 = objc_opt_new();
  }

  v43 = hasPdf2;
  v88[21] = hasPdf2;
  v87[22] = @"countOfNoteLinks";
  countOfNoteLinks = [(ICASNoteContentData *)self countOfNoteLinks];
  if (countOfNoteLinks)
  {
    countOfNoteLinks2 = [(ICASNoteContentData *)self countOfNoteLinks];
  }

  else
  {
    countOfNoteLinks2 = objc_opt_new();
  }

  v27 = countOfNoteLinks2;
  v88[22] = countOfNoteLinks2;
  v87[23] = @"countOfDistinctNoteLinks";
  countOfDistinctNoteLinks = [(ICASNoteContentData *)self countOfDistinctNoteLinks];
  if (countOfDistinctNoteLinks)
  {
    countOfDistinctNoteLinks2 = [(ICASNoteContentData *)self countOfDistinctNoteLinks];
  }

  else
  {
    countOfDistinctNoteLinks2 = objc_opt_new();
  }

  v30 = countOfDistinctNoteLinks2;
  v88[23] = countOfDistinctNoteLinks2;
  v87[24] = @"countOfFolderLinks";
  countOfFolderLinks = [(ICASNoteContentData *)self countOfFolderLinks];
  if (countOfFolderLinks)
  {
    countOfFolderLinks2 = [(ICASNoteContentData *)self countOfFolderLinks];
  }

  else
  {
    countOfFolderLinks2 = objc_opt_new();
  }

  v33 = countOfFolderLinks2;
  v88[24] = countOfFolderLinks2;
  v87[25] = @"countOfDistinctFolderLinks";
  countOfDistinctFolderLinks = [(ICASNoteContentData *)self countOfDistinctFolderLinks];
  if (countOfDistinctFolderLinks)
  {
    countOfDistinctFolderLinks2 = [(ICASNoteContentData *)self countOfDistinctFolderLinks];
  }

  else
  {
    countOfDistinctFolderLinks2 = objc_opt_new();
  }

  v36 = countOfDistinctFolderLinks2;
  v88[25] = countOfDistinctFolderLinks2;
  v87[26] = @"countOfAudioAttachments";
  countOfAudioAttachments = [(ICASNoteContentData *)self countOfAudioAttachments];
  if (countOfAudioAttachments)
  {
    countOfAudioAttachments2 = [(ICASNoteContentData *)self countOfAudioAttachments];
  }

  else
  {
    countOfAudioAttachments2 = objc_opt_new();
  }

  v39 = countOfAudioAttachments2;
  v88[26] = countOfAudioAttachments2;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:27];

  v40 = *MEMORY[0x277D85DE8];

  return v42;
}

@end