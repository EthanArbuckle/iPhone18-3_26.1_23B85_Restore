@interface ICASScrapPaperAttachmentItemData
- (ICASScrapPaperAttachmentItemData)initWithTotalCountOfScrapPapersWithAttachmentDocScan:(id)scan totalCountOfScrapPapersWithAttachmentInlineDrawingV1:(id)v1 totalCountOfScrapPapersWithAttachmentInlineDrawingV2:(id)v2 totalCountOfScrapPapersWithAttachmentPaperKit:(id)kit totalCountOfScrapPapersWithAttachmentFullscreenDrawing:(id)drawing totalCountOfScrapPapersWithAttachmentTables:(id)tables totalCountOfScrapPapersWithAttachmentOther:(id)other totalCountOfScrapPapersWithAttachmentRichUrl:(id)self0 totalCountOfScrapPapersWithAttachmentMapLink:(id)self1 totalCountOfScrapPapersWithAttachmentDeepLink:(id)self2;
- (id)toDict;
@end

@implementation ICASScrapPaperAttachmentItemData

- (ICASScrapPaperAttachmentItemData)initWithTotalCountOfScrapPapersWithAttachmentDocScan:(id)scan totalCountOfScrapPapersWithAttachmentInlineDrawingV1:(id)v1 totalCountOfScrapPapersWithAttachmentInlineDrawingV2:(id)v2 totalCountOfScrapPapersWithAttachmentPaperKit:(id)kit totalCountOfScrapPapersWithAttachmentFullscreenDrawing:(id)drawing totalCountOfScrapPapersWithAttachmentTables:(id)tables totalCountOfScrapPapersWithAttachmentOther:(id)other totalCountOfScrapPapersWithAttachmentRichUrl:(id)self0 totalCountOfScrapPapersWithAttachmentMapLink:(id)self1 totalCountOfScrapPapersWithAttachmentDeepLink:(id)self2
{
  scanCopy = scan;
  obj = v1;
  v1Copy = v1;
  v2Copy = v2;
  v2Copy2 = v2;
  kitCopy = kit;
  drawingCopy = drawing;
  drawingCopy2 = drawing;
  tablesCopy = tables;
  tablesCopy2 = tables;
  otherCopy = other;
  urlCopy = url;
  linkCopy = link;
  deepLinkCopy = deepLink;
  v36.receiver = self;
  v36.super_class = ICASScrapPaperAttachmentItemData;
  v23 = [(ICASScrapPaperAttachmentItemData *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_totalCountOfScrapPapersWithAttachmentDocScan, scan);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentInlineDrawingV1, obj);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentInlineDrawingV2, v2Copy);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentPaperKit, kit);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentFullscreenDrawing, drawingCopy);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentTables, tablesCopy);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentOther, other);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentRichUrl, url);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentMapLink, link);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentDeepLink, deepLink);
  }

  return v24;
}

- (id)toDict
{
  v37[10] = *MEMORY[0x277D85DE8];
  v36[0] = @"totalCountOfScrapPapersWithAttachmentDocScan";
  totalCountOfScrapPapersWithAttachmentDocScan = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentDocScan];
  if (totalCountOfScrapPapersWithAttachmentDocScan)
  {
    totalCountOfScrapPapersWithAttachmentDocScan2 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentDocScan];
  }

  else
  {
    totalCountOfScrapPapersWithAttachmentDocScan2 = objc_opt_new();
  }

  v34 = totalCountOfScrapPapersWithAttachmentDocScan2;
  v37[0] = totalCountOfScrapPapersWithAttachmentDocScan2;
  v36[1] = @"totalCountOfScrapPapersWithAttachmentInlineDrawingV1";
  totalCountOfScrapPapersWithAttachmentInlineDrawingV1 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentInlineDrawingV1];
  if (totalCountOfScrapPapersWithAttachmentInlineDrawingV1)
  {
    totalCountOfScrapPapersWithAttachmentInlineDrawingV12 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentInlineDrawingV1];
  }

  else
  {
    totalCountOfScrapPapersWithAttachmentInlineDrawingV12 = objc_opt_new();
  }

  v32 = totalCountOfScrapPapersWithAttachmentInlineDrawingV12;
  v37[1] = totalCountOfScrapPapersWithAttachmentInlineDrawingV12;
  v36[2] = @"totalCountOfScrapPapersWithAttachmentInlineDrawingV2";
  totalCountOfScrapPapersWithAttachmentInlineDrawingV2 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentInlineDrawingV2];
  if (totalCountOfScrapPapersWithAttachmentInlineDrawingV2)
  {
    totalCountOfScrapPapersWithAttachmentInlineDrawingV22 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentInlineDrawingV2];
  }

  else
  {
    totalCountOfScrapPapersWithAttachmentInlineDrawingV22 = objc_opt_new();
  }

  v30 = totalCountOfScrapPapersWithAttachmentInlineDrawingV22;
  v37[2] = totalCountOfScrapPapersWithAttachmentInlineDrawingV22;
  v36[3] = @"totalCountOfScrapPapersWithAttachmentPaperKit";
  totalCountOfScrapPapersWithAttachmentPaperKit = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentPaperKit];
  if (totalCountOfScrapPapersWithAttachmentPaperKit)
  {
    totalCountOfScrapPapersWithAttachmentPaperKit2 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentPaperKit];
  }

  else
  {
    totalCountOfScrapPapersWithAttachmentPaperKit2 = objc_opt_new();
  }

  v28 = totalCountOfScrapPapersWithAttachmentPaperKit2;
  v37[3] = totalCountOfScrapPapersWithAttachmentPaperKit2;
  v36[4] = @"totalCountOfScrapPapersWithAttachmentFullscreenDrawing";
  totalCountOfScrapPapersWithAttachmentFullscreenDrawing = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentFullscreenDrawing];
  if (totalCountOfScrapPapersWithAttachmentFullscreenDrawing)
  {
    totalCountOfScrapPapersWithAttachmentFullscreenDrawing2 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentFullscreenDrawing];
  }

  else
  {
    totalCountOfScrapPapersWithAttachmentFullscreenDrawing2 = objc_opt_new();
  }

  v26 = totalCountOfScrapPapersWithAttachmentFullscreenDrawing2;
  v37[4] = totalCountOfScrapPapersWithAttachmentFullscreenDrawing2;
  v36[5] = @"totalCountOfScrapPapersWithAttachmentTables";
  totalCountOfScrapPapersWithAttachmentTables = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentTables];
  if (totalCountOfScrapPapersWithAttachmentTables)
  {
    totalCountOfScrapPapersWithAttachmentTables2 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentTables];
  }

  else
  {
    totalCountOfScrapPapersWithAttachmentTables2 = objc_opt_new();
  }

  v9 = totalCountOfScrapPapersWithAttachmentTables2;
  v37[5] = totalCountOfScrapPapersWithAttachmentTables2;
  v36[6] = @"totalCountOfScrapPapersWithAttachmentOther";
  totalCountOfScrapPapersWithAttachmentOther = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentOther];
  if (totalCountOfScrapPapersWithAttachmentOther)
  {
    totalCountOfScrapPapersWithAttachmentOther2 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentOther];
  }

  else
  {
    totalCountOfScrapPapersWithAttachmentOther2 = objc_opt_new();
  }

  v12 = totalCountOfScrapPapersWithAttachmentOther2;
  v37[6] = totalCountOfScrapPapersWithAttachmentOther2;
  v36[7] = @"totalCountOfScrapPapersWithAttachmentRichUrl";
  totalCountOfScrapPapersWithAttachmentRichUrl = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentRichUrl];
  if (totalCountOfScrapPapersWithAttachmentRichUrl)
  {
    totalCountOfScrapPapersWithAttachmentRichUrl2 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentRichUrl];
  }

  else
  {
    totalCountOfScrapPapersWithAttachmentRichUrl2 = objc_opt_new();
  }

  v15 = totalCountOfScrapPapersWithAttachmentRichUrl2;
  v37[7] = totalCountOfScrapPapersWithAttachmentRichUrl2;
  v36[8] = @"totalCountOfScrapPapersWithAttachmentMapLink";
  totalCountOfScrapPapersWithAttachmentMapLink = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentMapLink];
  if (totalCountOfScrapPapersWithAttachmentMapLink)
  {
    totalCountOfScrapPapersWithAttachmentMapLink2 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentMapLink];
  }

  else
  {
    totalCountOfScrapPapersWithAttachmentMapLink2 = objc_opt_new();
  }

  v18 = totalCountOfScrapPapersWithAttachmentMapLink2;
  v37[8] = totalCountOfScrapPapersWithAttachmentMapLink2;
  v36[9] = @"totalCountOfScrapPapersWithAttachmentDeepLink";
  totalCountOfScrapPapersWithAttachmentDeepLink = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentDeepLink];
  if (totalCountOfScrapPapersWithAttachmentDeepLink)
  {
    totalCountOfScrapPapersWithAttachmentDeepLink2 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentDeepLink];
  }

  else
  {
    totalCountOfScrapPapersWithAttachmentDeepLink2 = objc_opt_new();
  }

  v21 = totalCountOfScrapPapersWithAttachmentDeepLink2;
  v37[9] = totalCountOfScrapPapersWithAttachmentDeepLink2;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:10];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end