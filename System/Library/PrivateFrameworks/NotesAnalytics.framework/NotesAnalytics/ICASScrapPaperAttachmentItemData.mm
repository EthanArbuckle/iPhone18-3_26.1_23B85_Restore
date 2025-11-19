@interface ICASScrapPaperAttachmentItemData
- (ICASScrapPaperAttachmentItemData)initWithTotalCountOfScrapPapersWithAttachmentDocScan:(id)a3 totalCountOfScrapPapersWithAttachmentInlineDrawingV1:(id)a4 totalCountOfScrapPapersWithAttachmentInlineDrawingV2:(id)a5 totalCountOfScrapPapersWithAttachmentPaperKit:(id)a6 totalCountOfScrapPapersWithAttachmentFullscreenDrawing:(id)a7 totalCountOfScrapPapersWithAttachmentTables:(id)a8 totalCountOfScrapPapersWithAttachmentOther:(id)a9 totalCountOfScrapPapersWithAttachmentRichUrl:(id)a10 totalCountOfScrapPapersWithAttachmentMapLink:(id)a11 totalCountOfScrapPapersWithAttachmentDeepLink:(id)a12;
- (id)toDict;
@end

@implementation ICASScrapPaperAttachmentItemData

- (ICASScrapPaperAttachmentItemData)initWithTotalCountOfScrapPapersWithAttachmentDocScan:(id)a3 totalCountOfScrapPapersWithAttachmentInlineDrawingV1:(id)a4 totalCountOfScrapPapersWithAttachmentInlineDrawingV2:(id)a5 totalCountOfScrapPapersWithAttachmentPaperKit:(id)a6 totalCountOfScrapPapersWithAttachmentFullscreenDrawing:(id)a7 totalCountOfScrapPapersWithAttachmentTables:(id)a8 totalCountOfScrapPapersWithAttachmentOther:(id)a9 totalCountOfScrapPapersWithAttachmentRichUrl:(id)a10 totalCountOfScrapPapersWithAttachmentMapLink:(id)a11 totalCountOfScrapPapersWithAttachmentDeepLink:(id)a12
{
  v35 = a3;
  obj = a4;
  v34 = a4;
  v27 = a5;
  v33 = a5;
  v32 = a6;
  v28 = a7;
  v31 = a7;
  v29 = a8;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v22 = a12;
  v36.receiver = self;
  v36.super_class = ICASScrapPaperAttachmentItemData;
  v23 = [(ICASScrapPaperAttachmentItemData *)&v36 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_totalCountOfScrapPapersWithAttachmentDocScan, a3);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentInlineDrawingV1, obj);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentInlineDrawingV2, v27);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentPaperKit, a6);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentFullscreenDrawing, v28);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentTables, v29);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentOther, a9);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentRichUrl, a10);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentMapLink, a11);
    objc_storeStrong(&v24->_totalCountOfScrapPapersWithAttachmentDeepLink, a12);
  }

  return v24;
}

- (id)toDict
{
  v37[10] = *MEMORY[0x277D85DE8];
  v36[0] = @"totalCountOfScrapPapersWithAttachmentDocScan";
  v35 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentDocScan];
  if (v35)
  {
    v3 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentDocScan];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v34 = v3;
  v37[0] = v3;
  v36[1] = @"totalCountOfScrapPapersWithAttachmentInlineDrawingV1";
  v33 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentInlineDrawingV1];
  if (v33)
  {
    v4 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentInlineDrawingV1];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v32 = v4;
  v37[1] = v4;
  v36[2] = @"totalCountOfScrapPapersWithAttachmentInlineDrawingV2";
  v31 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentInlineDrawingV2];
  if (v31)
  {
    v5 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentInlineDrawingV2];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v30 = v5;
  v37[2] = v5;
  v36[3] = @"totalCountOfScrapPapersWithAttachmentPaperKit";
  v29 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentPaperKit];
  if (v29)
  {
    v6 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentPaperKit];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v28 = v6;
  v37[3] = v6;
  v36[4] = @"totalCountOfScrapPapersWithAttachmentFullscreenDrawing";
  v27 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentFullscreenDrawing];
  if (v27)
  {
    v7 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentFullscreenDrawing];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v26 = v7;
  v37[4] = v7;
  v36[5] = @"totalCountOfScrapPapersWithAttachmentTables";
  v25 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentTables];
  if (v25)
  {
    v8 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentTables];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v37[5] = v8;
  v36[6] = @"totalCountOfScrapPapersWithAttachmentOther";
  v10 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentOther];
  if (v10)
  {
    v11 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentOther];
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  v37[6] = v11;
  v36[7] = @"totalCountOfScrapPapersWithAttachmentRichUrl";
  v13 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentRichUrl];
  if (v13)
  {
    v14 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentRichUrl];
  }

  else
  {
    v14 = objc_opt_new();
  }

  v15 = v14;
  v37[7] = v14;
  v36[8] = @"totalCountOfScrapPapersWithAttachmentMapLink";
  v16 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentMapLink];
  if (v16)
  {
    v17 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentMapLink];
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = v17;
  v37[8] = v17;
  v36[9] = @"totalCountOfScrapPapersWithAttachmentDeepLink";
  v19 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentDeepLink];
  if (v19)
  {
    v20 = [(ICASScrapPaperAttachmentItemData *)self totalCountOfScrapPapersWithAttachmentDeepLink];
  }

  else
  {
    v20 = objc_opt_new();
  }

  v21 = v20;
  v37[9] = v20;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:10];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end