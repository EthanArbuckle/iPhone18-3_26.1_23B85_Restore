@interface BMAeroMLPhotosSearchLabeledData
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAeroMLPhotosSearchLabeledData)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMAeroMLPhotosSearchLabeledData)initWithSearchSessionUUID:(id)a3 uiSurface:(int)a4 matchedPeopleRatio:(id)a5 matchedLocationRatio:(id)a6 matchedSceneRatio:(id)a7 matchedSceneConfidence:(id)a8 matchedSceneBoundingBox:(id)a9 matchedOCRCharacterRatio:(id)a10 matchedOCRImportance:(id)a11 matchedFieldsCount:(id)a12 L1Score:(id)a13 freshness:(id)a14 favorited:(id)a15 aestheticScore:(id)a16 curationScore:(id)a17 hasEverClickInLastWeek:(id)a18 hasEverClickInLastMonth:(id)a19 hasEverShareInLastWeek:(id)a20 hasEverShareInLastMonth:(id)a21 clickCountInLastWeekNormalizedAcrossItems:(id)a22 clickCountInLastMonthNormalizedAcrossItems:(id)a23 shareCountInLastWeekNormalizedAcrossItems:(id)a24 shareCountInLastMonthNormalizedAcrossItems:(id)a25 clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)a26 clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)a27 clickCountGivenLocationInLastWeekNormalizedAcrossItems:(id)a28 clickCountGivenLocationInLastMonthNormalizedAcrossItems:(id)a29 clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)a30 clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)a31 clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)a32 clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)a33 clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)a34 clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)a35 clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)a36 clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)a37 shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)a38 shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)a39 shareCountGivenLocationInLastWeekNormalizedAcrossItems:(id)a40 shareCountGivenLocationInLastMonthNormalizedAcrossItems:(id)a41 shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)a42 shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)a43 shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)a44 shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)a45 shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)a46 shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)a47 shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)a48 shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)a49 clipScore:(id)a50 clicked:(id)a51 clickOrder:(id)a52 itemPosition:(id)a53 L2ModelScore:(id)a54 isDuplicate:(id)a55 isCompleteMatch:(id)a56;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAeroMLPhotosSearchLabeledData

+ (id)columns
{
  v59[54] = *MEMORY[0x1E69E9840];
  v58 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"searchSessionUUID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v57 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uiSurface" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v55 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedPeopleRatio" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v56 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedLocationRatio" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedSceneRatio" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedSceneConfidence" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedSceneBoundingBox" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedOCRCharacterRatio" dataType:1 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedOCRImportance" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedFieldsCount" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"L1Score" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"freshness" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:0 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"favorited" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aestheticScore" dataType:1 requestOnly:0 fieldNumber:14 protoDataType:0 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"curationScore" dataType:1 requestOnly:0 fieldNumber:15 protoDataType:0 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverClickInLastWeek" dataType:1 requestOnly:0 fieldNumber:16 protoDataType:0 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverClickInLastMonth" dataType:1 requestOnly:0 fieldNumber:17 protoDataType:0 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverShareInLastWeek" dataType:1 requestOnly:0 fieldNumber:18 protoDataType:0 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverShareInLastMonth" dataType:1 requestOnly:0 fieldNumber:19 protoDataType:0 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:20 protoDataType:0 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:21 protoDataType:0 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:22 protoDataType:0 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:23 protoDataType:0 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:24 protoDataType:0 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:25 protoDataType:0 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenLocationInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:26 protoDataType:0 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenLocationInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:27 protoDataType:0 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:28 protoDataType:0 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:29 protoDataType:0 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:30 protoDataType:0 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:31 protoDataType:0 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:32 protoDataType:0 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:33 protoDataType:0 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:34 protoDataType:0 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:35 protoDataType:0 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:36 protoDataType:0 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:37 protoDataType:0 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenLocationInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:38 protoDataType:0 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenLocationInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:39 protoDataType:0 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:40 protoDataType:0 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:41 protoDataType:0 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:42 protoDataType:0 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:43 protoDataType:0 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:44 protoDataType:0 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:45 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:46 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:47 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clipScore" dataType:1 requestOnly:0 fieldNumber:48 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clicked" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickOrder" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"itemPosition" dataType:0 requestOnly:0 fieldNumber:51 protoDataType:4 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"L2ModelScore" dataType:1 requestOnly:0 fieldNumber:52 protoDataType:0 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDuplicate" dataType:1 requestOnly:0 fieldNumber:53 protoDataType:0 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCompleteMatch" dataType:1 requestOnly:0 fieldNumber:54 protoDataType:0 convertedType:0];
  v59[0] = v58;
  v59[1] = v57;
  v59[2] = v55;
  v59[3] = v56;
  v59[4] = v53;
  v59[5] = v54;
  v59[6] = v52;
  v59[7] = v51;
  v59[8] = v50;
  v59[9] = v49;
  v59[10] = v48;
  v59[11] = v47;
  v59[12] = v46;
  v59[13] = v45;
  v59[14] = v44;
  v59[15] = v43;
  v59[16] = v42;
  v59[17] = v41;
  v59[18] = v40;
  v59[19] = v39;
  v59[20] = v38;
  v59[21] = v37;
  v59[22] = v36;
  v59[23] = v35;
  v59[24] = v34;
  v59[25] = v33;
  v59[26] = v32;
  v59[27] = v31;
  v59[28] = v30;
  v59[29] = v29;
  v59[30] = v28;
  v59[31] = v27;
  v59[32] = v26;
  v59[33] = v25;
  v59[34] = v24;
  v59[35] = v23;
  v59[36] = v22;
  v59[37] = v21;
  v59[38] = v20;
  v59[39] = v19;
  v59[40] = v18;
  v59[41] = v17;
  v59[42] = v16;
  v59[43] = v15;
  v59[44] = v2;
  v59[45] = v3;
  v59[46] = v4;
  v59[47] = v5;
  v59[48] = v6;
  v59[49] = v7;
  v59[50] = v8;
  v59[51] = v9;
  v59[52] = v14;
  v59[53] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:54];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAeroMLPhotosSearchLabeledData *)self searchSessionUUID];
    v7 = [v5 searchSessionUUID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAeroMLPhotosSearchLabeledData *)self searchSessionUUID];
      v10 = [v5 searchSessionUUID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_268;
      }
    }

    v13 = [(BMAeroMLPhotosSearchLabeledData *)self uiSurface];
    if (v13 == [v5 uiSurface])
    {
      if (!-[BMAeroMLPhotosSearchLabeledData hasMatchedPeopleRatio](self, "hasMatchedPeopleRatio") && ![v5 hasMatchedPeopleRatio] || -[BMAeroMLPhotosSearchLabeledData hasMatchedPeopleRatio](self, "hasMatchedPeopleRatio") && objc_msgSend(v5, "hasMatchedPeopleRatio") && (-[BMAeroMLPhotosSearchLabeledData matchedPeopleRatio](self, "matchedPeopleRatio"), v15 = v14, objc_msgSend(v5, "matchedPeopleRatio"), v15 == v16))
      {
        if (!-[BMAeroMLPhotosSearchLabeledData hasMatchedLocationRatio](self, "hasMatchedLocationRatio") && ![v5 hasMatchedLocationRatio] || -[BMAeroMLPhotosSearchLabeledData hasMatchedLocationRatio](self, "hasMatchedLocationRatio") && objc_msgSend(v5, "hasMatchedLocationRatio") && (-[BMAeroMLPhotosSearchLabeledData matchedLocationRatio](self, "matchedLocationRatio"), v18 = v17, objc_msgSend(v5, "matchedLocationRatio"), v18 == v19))
        {
          if (!-[BMAeroMLPhotosSearchLabeledData hasMatchedSceneRatio](self, "hasMatchedSceneRatio") && ![v5 hasMatchedSceneRatio] || -[BMAeroMLPhotosSearchLabeledData hasMatchedSceneRatio](self, "hasMatchedSceneRatio") && objc_msgSend(v5, "hasMatchedSceneRatio") && (-[BMAeroMLPhotosSearchLabeledData matchedSceneRatio](self, "matchedSceneRatio"), v21 = v20, objc_msgSend(v5, "matchedSceneRatio"), v21 == v22))
          {
            if (!-[BMAeroMLPhotosSearchLabeledData hasMatchedSceneConfidence](self, "hasMatchedSceneConfidence") && ![v5 hasMatchedSceneConfidence] || -[BMAeroMLPhotosSearchLabeledData hasMatchedSceneConfidence](self, "hasMatchedSceneConfidence") && objc_msgSend(v5, "hasMatchedSceneConfidence") && (-[BMAeroMLPhotosSearchLabeledData matchedSceneConfidence](self, "matchedSceneConfidence"), v24 = v23, objc_msgSend(v5, "matchedSceneConfidence"), v24 == v25))
            {
              if (!-[BMAeroMLPhotosSearchLabeledData hasMatchedSceneBoundingBox](self, "hasMatchedSceneBoundingBox") && ![v5 hasMatchedSceneBoundingBox] || -[BMAeroMLPhotosSearchLabeledData hasMatchedSceneBoundingBox](self, "hasMatchedSceneBoundingBox") && objc_msgSend(v5, "hasMatchedSceneBoundingBox") && (-[BMAeroMLPhotosSearchLabeledData matchedSceneBoundingBox](self, "matchedSceneBoundingBox"), v27 = v26, objc_msgSend(v5, "matchedSceneBoundingBox"), v27 == v28))
              {
                if (!-[BMAeroMLPhotosSearchLabeledData hasMatchedOCRCharacterRatio](self, "hasMatchedOCRCharacterRatio") && ![v5 hasMatchedOCRCharacterRatio] || -[BMAeroMLPhotosSearchLabeledData hasMatchedOCRCharacterRatio](self, "hasMatchedOCRCharacterRatio") && objc_msgSend(v5, "hasMatchedOCRCharacterRatio") && (-[BMAeroMLPhotosSearchLabeledData matchedOCRCharacterRatio](self, "matchedOCRCharacterRatio"), v30 = v29, objc_msgSend(v5, "matchedOCRCharacterRatio"), v30 == v31))
                {
                  if (!-[BMAeroMLPhotosSearchLabeledData hasMatchedOCRImportance](self, "hasMatchedOCRImportance") && ![v5 hasMatchedOCRImportance] || -[BMAeroMLPhotosSearchLabeledData hasMatchedOCRImportance](self, "hasMatchedOCRImportance") && objc_msgSend(v5, "hasMatchedOCRImportance") && (-[BMAeroMLPhotosSearchLabeledData matchedOCRImportance](self, "matchedOCRImportance"), v33 = v32, objc_msgSend(v5, "matchedOCRImportance"), v33 == v34))
                  {
                    if (!-[BMAeroMLPhotosSearchLabeledData hasMatchedFieldsCount](self, "hasMatchedFieldsCount") && ![v5 hasMatchedFieldsCount] || -[BMAeroMLPhotosSearchLabeledData hasMatchedFieldsCount](self, "hasMatchedFieldsCount") && objc_msgSend(v5, "hasMatchedFieldsCount") && (v35 = -[BMAeroMLPhotosSearchLabeledData matchedFieldsCount](self, "matchedFieldsCount"), v35 == objc_msgSend(v5, "matchedFieldsCount")))
                    {
                      if (!-[BMAeroMLPhotosSearchLabeledData hasL1Score](self, "hasL1Score") && ![v5 hasL1Score] || -[BMAeroMLPhotosSearchLabeledData hasL1Score](self, "hasL1Score") && objc_msgSend(v5, "hasL1Score") && (-[BMAeroMLPhotosSearchLabeledData L1Score](self, "L1Score"), v37 = v36, objc_msgSend(v5, "L1Score"), v37 == v38))
                      {
                        if (!-[BMAeroMLPhotosSearchLabeledData hasFreshness](self, "hasFreshness") && ![v5 hasFreshness] || -[BMAeroMLPhotosSearchLabeledData hasFreshness](self, "hasFreshness") && objc_msgSend(v5, "hasFreshness") && (-[BMAeroMLPhotosSearchLabeledData freshness](self, "freshness"), v40 = v39, objc_msgSend(v5, "freshness"), v40 == v41))
                        {
                          if (!-[BMAeroMLPhotosSearchLabeledData hasFavorited](self, "hasFavorited") && ![v5 hasFavorited] || -[BMAeroMLPhotosSearchLabeledData hasFavorited](self, "hasFavorited") && objc_msgSend(v5, "hasFavorited") && (v42 = -[BMAeroMLPhotosSearchLabeledData favorited](self, "favorited"), v42 == objc_msgSend(v5, "favorited")))
                          {
                            if (!-[BMAeroMLPhotosSearchLabeledData hasAestheticScore](self, "hasAestheticScore") && ![v5 hasAestheticScore] || -[BMAeroMLPhotosSearchLabeledData hasAestheticScore](self, "hasAestheticScore") && objc_msgSend(v5, "hasAestheticScore") && (-[BMAeroMLPhotosSearchLabeledData aestheticScore](self, "aestheticScore"), v44 = v43, objc_msgSend(v5, "aestheticScore"), v44 == v45))
                            {
                              if (!-[BMAeroMLPhotosSearchLabeledData hasCurationScore](self, "hasCurationScore") && ![v5 hasCurationScore] || -[BMAeroMLPhotosSearchLabeledData hasCurationScore](self, "hasCurationScore") && objc_msgSend(v5, "hasCurationScore") && (-[BMAeroMLPhotosSearchLabeledData curationScore](self, "curationScore"), v47 = v46, objc_msgSend(v5, "curationScore"), v47 == v48))
                              {
                                if (!-[BMAeroMLPhotosSearchLabeledData hasHasEverClickInLastWeek](self, "hasHasEverClickInLastWeek") && ![v5 hasHasEverClickInLastWeek] || -[BMAeroMLPhotosSearchLabeledData hasHasEverClickInLastWeek](self, "hasHasEverClickInLastWeek") && objc_msgSend(v5, "hasHasEverClickInLastWeek") && (-[BMAeroMLPhotosSearchLabeledData hasEverClickInLastWeek](self, "hasEverClickInLastWeek"), v50 = v49, objc_msgSend(v5, "hasEverClickInLastWeek"), v50 == v51))
                                {
                                  if (!-[BMAeroMLPhotosSearchLabeledData hasHasEverClickInLastMonth](self, "hasHasEverClickInLastMonth") && ![v5 hasHasEverClickInLastMonth] || -[BMAeroMLPhotosSearchLabeledData hasHasEverClickInLastMonth](self, "hasHasEverClickInLastMonth") && objc_msgSend(v5, "hasHasEverClickInLastMonth") && (-[BMAeroMLPhotosSearchLabeledData hasEverClickInLastMonth](self, "hasEverClickInLastMonth"), v53 = v52, objc_msgSend(v5, "hasEverClickInLastMonth"), v53 == v54))
                                  {
                                    if (!-[BMAeroMLPhotosSearchLabeledData hasHasEverShareInLastWeek](self, "hasHasEverShareInLastWeek") && ![v5 hasHasEverShareInLastWeek] || -[BMAeroMLPhotosSearchLabeledData hasHasEverShareInLastWeek](self, "hasHasEverShareInLastWeek") && objc_msgSend(v5, "hasHasEverShareInLastWeek") && (-[BMAeroMLPhotosSearchLabeledData hasEverShareInLastWeek](self, "hasEverShareInLastWeek"), v56 = v55, objc_msgSend(v5, "hasEverShareInLastWeek"), v56 == v57))
                                    {
                                      if (!-[BMAeroMLPhotosSearchLabeledData hasHasEverShareInLastMonth](self, "hasHasEverShareInLastMonth") && ![v5 hasHasEverShareInLastMonth] || -[BMAeroMLPhotosSearchLabeledData hasHasEverShareInLastMonth](self, "hasHasEverShareInLastMonth") && objc_msgSend(v5, "hasHasEverShareInLastMonth") && (-[BMAeroMLPhotosSearchLabeledData hasEverShareInLastMonth](self, "hasEverShareInLastMonth"), v59 = v58, objc_msgSend(v5, "hasEverShareInLastMonth"), v59 == v60))
                                      {
                                        if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountInLastWeekNormalizedAcrossItems](self, "hasClickCountInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountInLastWeekNormalizedAcrossItems](self, "hasClickCountInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountInLastWeekNormalizedAcrossItems](self, "clickCountInLastWeekNormalizedAcrossItems"), v62 = v61, objc_msgSend(v5, "clickCountInLastWeekNormalizedAcrossItems"), v62 == v63))
                                        {
                                          if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountInLastMonthNormalizedAcrossItems](self, "hasClickCountInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountInLastMonthNormalizedAcrossItems](self, "hasClickCountInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountInLastMonthNormalizedAcrossItems](self, "clickCountInLastMonthNormalizedAcrossItems"), v65 = v64, objc_msgSend(v5, "clickCountInLastMonthNormalizedAcrossItems"), v65 == v66))
                                          {
                                            if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountInLastWeekNormalizedAcrossItems](self, "hasShareCountInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountInLastWeekNormalizedAcrossItems](self, "hasShareCountInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountInLastWeekNormalizedAcrossItems](self, "shareCountInLastWeekNormalizedAcrossItems"), v68 = v67, objc_msgSend(v5, "shareCountInLastWeekNormalizedAcrossItems"), v68 == v69))
                                            {
                                              if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountInLastMonthNormalizedAcrossItems](self, "hasShareCountInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountInLastMonthNormalizedAcrossItems](self, "hasShareCountInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountInLastMonthNormalizedAcrossItems](self, "shareCountInLastMonthNormalizedAcrossItems"), v71 = v70, objc_msgSend(v5, "shareCountInLastMonthNormalizedAcrossItems"), v71 == v72))
                                              {
                                                if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v74 = v73, objc_msgSend(v5, "clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v74 == v75))
                                                {
                                                  if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v77 = v76, objc_msgSend(v5, "clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v77 == v78))
                                                  {
                                                    if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenLocationInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenLocationInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenLocationInLastWeekNormalizedAcrossItems](self, "clickCountGivenLocationInLastWeekNormalizedAcrossItems"), v80 = v79, objc_msgSend(v5, "clickCountGivenLocationInLastWeekNormalizedAcrossItems"), v80 == v81))
                                                    {
                                                      if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenLocationInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenLocationInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenLocationInLastMonthNormalizedAcrossItems](self, "clickCountGivenLocationInLastMonthNormalizedAcrossItems"), v83 = v82, objc_msgSend(v5, "clickCountGivenLocationInLastMonthNormalizedAcrossItems"), v83 == v84))
                                                      {
                                                        if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v86 = v85, objc_msgSend(v5, "clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v86 == v87))
                                                        {
                                                          if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v89 = v88, objc_msgSend(v5, "clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v89 == v90))
                                                          {
                                                            if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v92 = v91, objc_msgSend(v5, "clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v92 == v93))
                                                            {
                                                              if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v95 = v94, objc_msgSend(v5, "clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v95 == v96))
                                                              {
                                                                if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v98 = v97, objc_msgSend(v5, "clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v98 == v99))
                                                                {
                                                                  if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v101 = v100, objc_msgSend(v5, "clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v101 == v102))
                                                                  {
                                                                    if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v104 = v103, objc_msgSend(v5, "clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v104 == v105))
                                                                    {
                                                                      if (!-[BMAeroMLPhotosSearchLabeledData hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v107 = v106, objc_msgSend(v5, "clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v107 == v108))
                                                                      {
                                                                        if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v110 = v109, objc_msgSend(v5, "shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v110 == v111))
                                                                        {
                                                                          if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v113 = v112, objc_msgSend(v5, "shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v113 == v114))
                                                                          {
                                                                            if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenLocationInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenLocationInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenLocationInLastWeekNormalizedAcrossItems](self, "shareCountGivenLocationInLastWeekNormalizedAcrossItems"), v116 = v115, objc_msgSend(v5, "shareCountGivenLocationInLastWeekNormalizedAcrossItems"), v116 == v117))
                                                                            {
                                                                              if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenLocationInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenLocationInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenLocationInLastMonthNormalizedAcrossItems](self, "shareCountGivenLocationInLastMonthNormalizedAcrossItems"), v119 = v118, objc_msgSend(v5, "shareCountGivenLocationInLastMonthNormalizedAcrossItems"), v119 == v120))
                                                                              {
                                                                                if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v122 = v121, objc_msgSend(v5, "shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v122 == v123))
                                                                                {
                                                                                  if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v125 = v124, objc_msgSend(v5, "shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v125 == v126))
                                                                                  {
                                                                                    if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v128 = v127, objc_msgSend(v5, "shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v128 == v129))
                                                                                    {
                                                                                      if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v131 = v130, objc_msgSend(v5, "shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v131 == v132))
                                                                                      {
                                                                                        if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v134 = v133, objc_msgSend(v5, "shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v134 == v135))
                                                                                        {
                                                                                          if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v137 = v136, objc_msgSend(v5, "shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v137 == v138))
                                                                                          {
                                                                                            if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v140 = v139, objc_msgSend(v5, "shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v140 == v141))
                                                                                            {
                                                                                              if (!-[BMAeroMLPhotosSearchLabeledData hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchLabeledData hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchLabeledData shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v143 = v142, objc_msgSend(v5, "shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v143 == v144))
                                                                                              {
                                                                                                if (!-[BMAeroMLPhotosSearchLabeledData hasClipScore](self, "hasClipScore") && ![v5 hasClipScore] || -[BMAeroMLPhotosSearchLabeledData hasClipScore](self, "hasClipScore") && objc_msgSend(v5, "hasClipScore") && (-[BMAeroMLPhotosSearchLabeledData clipScore](self, "clipScore"), v146 = v145, objc_msgSend(v5, "clipScore"), v146 == v147))
                                                                                                {
                                                                                                  if (!-[BMAeroMLPhotosSearchLabeledData hasClicked](self, "hasClicked") && ![v5 hasClicked] || -[BMAeroMLPhotosSearchLabeledData hasClicked](self, "hasClicked") && objc_msgSend(v5, "hasClicked") && (v148 = -[BMAeroMLPhotosSearchLabeledData clicked](self, "clicked"), v148 == objc_msgSend(v5, "clicked")))
                                                                                                  {
                                                                                                    if (!-[BMAeroMLPhotosSearchLabeledData hasClickOrder](self, "hasClickOrder") && ![v5 hasClickOrder] || -[BMAeroMLPhotosSearchLabeledData hasClickOrder](self, "hasClickOrder") && objc_msgSend(v5, "hasClickOrder") && (v149 = -[BMAeroMLPhotosSearchLabeledData clickOrder](self, "clickOrder"), v149 == objc_msgSend(v5, "clickOrder")))
                                                                                                    {
                                                                                                      if (!-[BMAeroMLPhotosSearchLabeledData hasItemPosition](self, "hasItemPosition") && ![v5 hasItemPosition] || -[BMAeroMLPhotosSearchLabeledData hasItemPosition](self, "hasItemPosition") && objc_msgSend(v5, "hasItemPosition") && (v150 = -[BMAeroMLPhotosSearchLabeledData itemPosition](self, "itemPosition"), v150 == objc_msgSend(v5, "itemPosition")))
                                                                                                      {
                                                                                                        if (!-[BMAeroMLPhotosSearchLabeledData hasL2ModelScore](self, "hasL2ModelScore") && ![v5 hasL2ModelScore] || -[BMAeroMLPhotosSearchLabeledData hasL2ModelScore](self, "hasL2ModelScore") && objc_msgSend(v5, "hasL2ModelScore") && (-[BMAeroMLPhotosSearchLabeledData L2ModelScore](self, "L2ModelScore"), v152 = v151, objc_msgSend(v5, "L2ModelScore"), v152 == v153))
                                                                                                        {
                                                                                                          if (!-[BMAeroMLPhotosSearchLabeledData hasIsDuplicate](self, "hasIsDuplicate") && ![v5 hasIsDuplicate] || -[BMAeroMLPhotosSearchLabeledData hasIsDuplicate](self, "hasIsDuplicate") && objc_msgSend(v5, "hasIsDuplicate") && (-[BMAeroMLPhotosSearchLabeledData isDuplicate](self, "isDuplicate"), v155 = v154, objc_msgSend(v5, "isDuplicate"), v155 == v156))
                                                                                                          {
                                                                                                            if (!-[BMAeroMLPhotosSearchLabeledData hasIsCompleteMatch](self, "hasIsCompleteMatch") && ![v5 hasIsCompleteMatch])
                                                                                                            {
                                                                                                              v12 = 1;
                                                                                                              goto LABEL_269;
                                                                                                            }

                                                                                                            if (-[BMAeroMLPhotosSearchLabeledData hasIsCompleteMatch](self, "hasIsCompleteMatch") && [v5 hasIsCompleteMatch])
                                                                                                            {
                                                                                                              [(BMAeroMLPhotosSearchLabeledData *)self isCompleteMatch];
                                                                                                              v158 = v157;
                                                                                                              [v5 isCompleteMatch];
                                                                                                              v12 = v158 == v159;
LABEL_269:

                                                                                                              goto LABEL_270;
                                                                                                            }
                                                                                                          }
                                                                                                        }
                                                                                                      }
                                                                                                    }
                                                                                                  }
                                                                                                }
                                                                                              }
                                                                                            }
                                                                                          }
                                                                                        }
                                                                                      }
                                                                                    }
                                                                                  }
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_268:
    v12 = 0;
    goto LABEL_269;
  }

  v12 = 0;
LABEL_270:

  return v12;
}

- (id)jsonDictionary
{
  v265[54] = *MEMORY[0x1E69E9840];
  v3 = [(BMAeroMLPhotosSearchLabeledData *)self searchSessionUUID];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAeroMLPhotosSearchLabeledData uiSurface](self, "uiSurface")}];
  if (![(BMAeroMLPhotosSearchLabeledData *)self hasMatchedPeopleRatio]|| ([(BMAeroMLPhotosSearchLabeledData *)self matchedPeopleRatio], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self matchedPeopleRatio];
    v6 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self matchedPeopleRatio];
    v7 = [v6 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasMatchedLocationRatio]|| ([(BMAeroMLPhotosSearchLabeledData *)self matchedLocationRatio], fabs(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self matchedLocationRatio];
    v9 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self matchedLocationRatio];
    v10 = [v9 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasMatchedSceneRatio]|| ([(BMAeroMLPhotosSearchLabeledData *)self matchedSceneRatio], fabs(v11) == INFINITY))
  {
    v13 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self matchedSceneRatio];
    v12 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self matchedSceneRatio];
    v13 = [v12 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasMatchedSceneConfidence]|| ([(BMAeroMLPhotosSearchLabeledData *)self matchedSceneConfidence], fabs(v14) == INFINITY))
  {
    v16 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self matchedSceneConfidence];
    v15 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self matchedSceneConfidence];
    v16 = [v15 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasMatchedSceneBoundingBox]|| ([(BMAeroMLPhotosSearchLabeledData *)self matchedSceneBoundingBox], fabs(v17) == INFINITY))
  {
    v19 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self matchedSceneBoundingBox];
    v18 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self matchedSceneBoundingBox];
    v19 = [v18 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasMatchedOCRCharacterRatio]|| ([(BMAeroMLPhotosSearchLabeledData *)self matchedOCRCharacterRatio], fabs(v20) == INFINITY))
  {
    v262 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self matchedOCRCharacterRatio];
    v21 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self matchedOCRCharacterRatio];
    v262 = [v21 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasMatchedOCRImportance]|| ([(BMAeroMLPhotosSearchLabeledData *)self matchedOCRImportance], fabs(v22) == INFINITY))
  {
    v261 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self matchedOCRImportance];
    v23 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self matchedOCRImportance];
    v261 = [v23 numberWithDouble:?];
  }

  if ([(BMAeroMLPhotosSearchLabeledData *)self hasMatchedFieldsCount])
  {
    v260 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchLabeledData matchedFieldsCount](self, "matchedFieldsCount")}];
  }

  else
  {
    v260 = 0;
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasL1Score]|| ([(BMAeroMLPhotosSearchLabeledData *)self L1Score], fabs(v24) == INFINITY))
  {
    v259 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self L1Score];
    v25 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self L1Score];
    v259 = [v25 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasFreshness]|| ([(BMAeroMLPhotosSearchLabeledData *)self freshness], fabs(v26) == INFINITY))
  {
    v258 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self freshness];
    v27 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self freshness];
    v258 = [v27 numberWithDouble:?];
  }

  if ([(BMAeroMLPhotosSearchLabeledData *)self hasFavorited])
  {
    v257 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchLabeledData favorited](self, "favorited")}];
  }

  else
  {
    v257 = 0;
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasAestheticScore]|| ([(BMAeroMLPhotosSearchLabeledData *)self aestheticScore], fabs(v28) == INFINITY))
  {
    v256 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self aestheticScore];
    v29 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self aestheticScore];
    v256 = [v29 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasCurationScore]|| ([(BMAeroMLPhotosSearchLabeledData *)self curationScore], fabs(v30) == INFINITY))
  {
    v255 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self curationScore];
    v31 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self curationScore];
    v255 = [v31 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasHasEverClickInLastWeek]|| ([(BMAeroMLPhotosSearchLabeledData *)self hasEverClickInLastWeek], fabs(v32) == INFINITY))
  {
    v254 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self hasEverClickInLastWeek];
    v33 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self hasEverClickInLastWeek];
    v254 = [v33 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasHasEverClickInLastMonth]|| ([(BMAeroMLPhotosSearchLabeledData *)self hasEverClickInLastMonth], fabs(v34) == INFINITY))
  {
    v253 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self hasEverClickInLastMonth];
    v35 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self hasEverClickInLastMonth];
    v253 = [v35 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasHasEverShareInLastWeek]|| ([(BMAeroMLPhotosSearchLabeledData *)self hasEverShareInLastWeek], fabs(v36) == INFINITY))
  {
    v252 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self hasEverShareInLastWeek];
    v37 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self hasEverShareInLastWeek];
    v252 = [v37 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasHasEverShareInLastMonth]|| ([(BMAeroMLPhotosSearchLabeledData *)self hasEverShareInLastMonth], fabs(v38) == INFINITY))
  {
    v251 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self hasEverShareInLastMonth];
    v39 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self hasEverShareInLastMonth];
    v251 = [v39 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountInLastWeekNormalizedAcrossItems], fabs(v40) == INFINITY))
  {
    v250 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountInLastWeekNormalizedAcrossItems];
    v41 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountInLastWeekNormalizedAcrossItems];
    v250 = [v41 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountInLastMonthNormalizedAcrossItems], fabs(v42) == INFINITY))
  {
    v249 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountInLastMonthNormalizedAcrossItems];
    v43 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountInLastMonthNormalizedAcrossItems];
    v249 = [v43 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountInLastWeekNormalizedAcrossItems], fabs(v44) == INFINITY))
  {
    v248 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountInLastWeekNormalizedAcrossItems];
    v45 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountInLastWeekNormalizedAcrossItems];
    v248 = [v45 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountInLastMonthNormalizedAcrossItems], fabs(v46) == INFINITY))
  {
    v247 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountInLastMonthNormalizedAcrossItems];
    v47 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountInLastMonthNormalizedAcrossItems];
    v247 = [v47 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems], fabs(v48) == INFINITY))
  {
    v246 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v49 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v246 = [v49 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems], fabs(v50) == INFINITY))
  {
    v245 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v51 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v245 = [v51 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenLocationInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems], fabs(v52) == INFINITY))
  {
    v244 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems];
    v53 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems];
    v244 = [v53 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenLocationInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems], fabs(v54) == INFINITY))
  {
    v243 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems];
    v55 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems];
    v243 = [v55 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems], fabs(v56) == INFINITY))
  {
    v242 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v57 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v242 = [v57 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems], fabs(v58) == INFINITY))
  {
    v241 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v59 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v241 = [v59 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems], fabs(v60) == INFINITY))
  {
    v240 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v61 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v240 = [v61 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems], fabs(v62) == INFINITY))
  {
    v239 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v63 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v239 = [v63 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems], fabs(v64) == INFINITY))
  {
    v238 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v65 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v238 = [v65 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems], fabs(v66) == INFINITY))
  {
    v237 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v67 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v237 = [v67 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems], fabs(v68) == INFINITY))
  {
    v236 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v69 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v236 = [v69 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems], fabs(v70) == INFINITY))
  {
    v235 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v71 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v235 = [v71 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems], fabs(v72) == INFINITY))
  {
    v234 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v73 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v234 = [v73 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems], fabs(v74) == INFINITY))
  {
    v233 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v75 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v233 = [v75 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenLocationInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems], fabs(v76) == INFINITY))
  {
    v232 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems];
    v77 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems];
    v232 = [v77 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenLocationInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems], fabs(v78) == INFINITY))
  {
    v231 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems];
    v79 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems];
    v231 = [v79 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems], fabs(v80) == INFINITY))
  {
    v230 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v81 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v230 = [v81 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems], fabs(v82) == INFINITY))
  {
    v229 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v83 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v229 = [v83 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems], fabs(v84) == INFINITY))
  {
    v228 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v85 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v228 = [v85 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems], fabs(v86) == INFINITY))
  {
    v227 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v87 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v227 = [v87 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems], fabs(v88) == INFINITY))
  {
    v226 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v89 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v226 = [v89 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems], fabs(v90) == INFINITY))
  {
    v225 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v91 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v225 = [v91 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems], fabs(v92) == INFINITY))
  {
    v224 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v93 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v224 = [v93 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems], fabs(v94) == INFINITY))
  {
    v223 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v95 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v223 = [v95 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasClipScore]|| ([(BMAeroMLPhotosSearchLabeledData *)self clipScore], fabs(v96) == INFINITY))
  {
    v222 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self clipScore];
    v97 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self clipScore];
    v222 = [v97 numberWithDouble:?];
  }

  if ([(BMAeroMLPhotosSearchLabeledData *)self hasClicked])
  {
    v221 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchLabeledData clicked](self, "clicked")}];
  }

  else
  {
    v221 = 0;
  }

  if ([(BMAeroMLPhotosSearchLabeledData *)self hasClickOrder])
  {
    v220 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchLabeledData clickOrder](self, "clickOrder")}];
  }

  else
  {
    v220 = 0;
  }

  if ([(BMAeroMLPhotosSearchLabeledData *)self hasItemPosition])
  {
    v219 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchLabeledData itemPosition](self, "itemPosition")}];
  }

  else
  {
    v219 = 0;
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasL2ModelScore]|| ([(BMAeroMLPhotosSearchLabeledData *)self L2ModelScore], fabs(v98) == INFINITY))
  {
    v218 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self L2ModelScore];
    v99 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self L2ModelScore];
    v218 = [v99 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasIsDuplicate]|| ([(BMAeroMLPhotosSearchLabeledData *)self isDuplicate], fabs(v100) == INFINITY))
  {
    v217 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self isDuplicate];
    v101 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self isDuplicate];
    v217 = [v101 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchLabeledData *)self hasIsCompleteMatch]|| ([(BMAeroMLPhotosSearchLabeledData *)self isCompleteMatch], fabs(v102) == INFINITY))
  {
    v104 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchLabeledData *)self isCompleteMatch];
    v103 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchLabeledData *)self isCompleteMatch];
    v104 = [v103 numberWithDouble:?];
  }

  v264[0] = @"searchSessionUUID";
  v105 = v3;
  if (!v3)
  {
    v105 = [MEMORY[0x1E695DFB0] null];
  }

  v209 = v105;
  v265[0] = v105;
  v264[1] = @"uiSurface";
  v106 = v4;
  if (!v4)
  {
    v106 = [MEMORY[0x1E695DFB0] null];
  }

  v208 = v106;
  v265[1] = v106;
  v264[2] = @"matchedPeopleRatio";
  v107 = v7;
  if (!v7)
  {
    v107 = [MEMORY[0x1E695DFB0] null];
  }

  v207 = v107;
  v265[2] = v107;
  v264[3] = @"matchedLocationRatio";
  v108 = v10;
  if (!v10)
  {
    v108 = [MEMORY[0x1E695DFB0] null];
  }

  v206 = v108;
  v265[3] = v108;
  v264[4] = @"matchedSceneRatio";
  v109 = v13;
  if (!v13)
  {
    v109 = [MEMORY[0x1E695DFB0] null];
  }

  v205 = v109;
  v265[4] = v109;
  v264[5] = @"matchedSceneConfidence";
  v110 = v16;
  if (!v16)
  {
    v110 = [MEMORY[0x1E695DFB0] null];
  }

  v204 = v110;
  v265[5] = v110;
  v264[6] = @"matchedSceneBoundingBox";
  v111 = v19;
  if (!v19)
  {
    v111 = [MEMORY[0x1E695DFB0] null];
  }

  v203 = v111;
  v265[6] = v111;
  v264[7] = @"matchedOCRCharacterRatio";
  v112 = v262;
  if (!v262)
  {
    v112 = [MEMORY[0x1E695DFB0] null];
  }

  v265[7] = v112;
  v264[8] = @"matchedOCRImportance";
  v113 = v261;
  if (!v261)
  {
    v113 = [MEMORY[0x1E695DFB0] null];
  }

  v265[8] = v113;
  v264[9] = @"matchedFieldsCount";
  v114 = v260;
  if (!v260)
  {
    v114 = [MEMORY[0x1E695DFB0] null];
  }

  v212 = v114;
  v265[9] = v114;
  v264[10] = @"L1Score";
  v115 = v259;
  if (!v259)
  {
    v115 = [MEMORY[0x1E695DFB0] null];
  }

  v211 = v115;
  v265[10] = v115;
  v264[11] = @"freshness";
  v116 = v258;
  if (!v258)
  {
    v116 = [MEMORY[0x1E695DFB0] null];
  }

  v263 = v116;
  v265[11] = v116;
  v264[12] = @"favorited";
  v117 = v257;
  if (!v257)
  {
    v117 = [MEMORY[0x1E695DFB0] null];
  }

  v201 = v117;
  v265[12] = v117;
  v264[13] = @"aestheticScore";
  v118 = v256;
  if (!v256)
  {
    v118 = [MEMORY[0x1E695DFB0] null];
  }

  v200 = v118;
  v265[13] = v118;
  v264[14] = @"curationScore";
  v119 = v255;
  if (!v255)
  {
    v119 = [MEMORY[0x1E695DFB0] null];
  }

  v199 = v119;
  v265[14] = v119;
  v264[15] = @"hasEverClickInLastWeek";
  v120 = v254;
  if (!v254)
  {
    v120 = [MEMORY[0x1E695DFB0] null];
  }

  v198 = v120;
  v265[15] = v120;
  v264[16] = @"hasEverClickInLastMonth";
  v121 = v253;
  if (!v253)
  {
    v121 = [MEMORY[0x1E695DFB0] null];
  }

  v197 = v121;
  v265[16] = v121;
  v264[17] = @"hasEverShareInLastWeek";
  v122 = v252;
  if (!v252)
  {
    v122 = [MEMORY[0x1E695DFB0] null];
  }

  v196 = v122;
  v265[17] = v122;
  v264[18] = @"hasEverShareInLastMonth";
  v123 = v251;
  if (!v251)
  {
    v123 = [MEMORY[0x1E695DFB0] null];
  }

  v195 = v123;
  v265[18] = v123;
  v264[19] = @"clickCountInLastWeekNormalizedAcrossItems";
  v124 = v250;
  if (!v250)
  {
    v124 = [MEMORY[0x1E695DFB0] null];
  }

  v194 = v124;
  v265[19] = v124;
  v264[20] = @"clickCountInLastMonthNormalizedAcrossItems";
  v125 = v249;
  if (!v249)
  {
    v125 = [MEMORY[0x1E695DFB0] null];
  }

  v193 = v125;
  v265[20] = v125;
  v264[21] = @"shareCountInLastWeekNormalizedAcrossItems";
  v126 = v248;
  if (!v248)
  {
    v126 = [MEMORY[0x1E695DFB0] null];
  }

  v192 = v126;
  v265[21] = v126;
  v264[22] = @"shareCountInLastMonthNormalizedAcrossItems";
  v127 = v247;
  if (!v247)
  {
    v127 = [MEMORY[0x1E695DFB0] null];
  }

  v191 = v127;
  v265[22] = v127;
  v264[23] = @"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems";
  v128 = v246;
  if (!v246)
  {
    v128 = [MEMORY[0x1E695DFB0] null];
  }

  v190 = v128;
  v265[23] = v128;
  v264[24] = @"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems";
  v129 = v245;
  if (!v245)
  {
    v129 = [MEMORY[0x1E695DFB0] null];
  }

  v189 = v129;
  v265[24] = v129;
  v264[25] = @"clickCountGivenLocationInLastWeekNormalizedAcrossItems";
  v130 = v244;
  if (!v244)
  {
    v130 = [MEMORY[0x1E695DFB0] null];
  }

  v188 = v130;
  v265[25] = v130;
  v264[26] = @"clickCountGivenLocationInLastMonthNormalizedAcrossItems";
  v131 = v243;
  if (!v243)
  {
    v131 = [MEMORY[0x1E695DFB0] null];
  }

  v187 = v131;
  v265[26] = v131;
  v264[27] = @"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems";
  v132 = v242;
  if (!v242)
  {
    v132 = [MEMORY[0x1E695DFB0] null];
  }

  v186 = v132;
  v265[27] = v132;
  v264[28] = @"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems";
  v133 = v241;
  if (!v241)
  {
    v133 = [MEMORY[0x1E695DFB0] null];
  }

  v185 = v133;
  v265[28] = v133;
  v264[29] = @"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems";
  v134 = v240;
  if (!v240)
  {
    v134 = [MEMORY[0x1E695DFB0] null];
  }

  v184 = v134;
  v265[29] = v134;
  v264[30] = @"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems";
  v135 = v239;
  if (!v239)
  {
    v135 = [MEMORY[0x1E695DFB0] null];
  }

  v183 = v135;
  v265[30] = v135;
  v264[31] = @"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems";
  v136 = v238;
  if (!v238)
  {
    v136 = [MEMORY[0x1E695DFB0] null];
  }

  v182 = v136;
  v265[31] = v136;
  v264[32] = @"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems";
  v137 = v237;
  if (!v237)
  {
    v137 = [MEMORY[0x1E695DFB0] null];
  }

  v181 = v137;
  v265[32] = v137;
  v264[33] = @"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems";
  v138 = v236;
  if (!v236)
  {
    v138 = [MEMORY[0x1E695DFB0] null];
  }

  v180 = v138;
  v265[33] = v138;
  v264[34] = @"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems";
  v139 = v235;
  if (!v235)
  {
    v139 = [MEMORY[0x1E695DFB0] null];
  }

  v179 = v139;
  v265[34] = v139;
  v264[35] = @"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems";
  v140 = v234;
  if (!v234)
  {
    v140 = [MEMORY[0x1E695DFB0] null];
  }

  v178 = v140;
  v265[35] = v140;
  v264[36] = @"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems";
  v141 = v233;
  if (!v233)
  {
    v141 = [MEMORY[0x1E695DFB0] null];
  }

  v177 = v141;
  v265[36] = v141;
  v264[37] = @"shareCountGivenLocationInLastWeekNormalizedAcrossItems";
  v142 = v232;
  if (!v232)
  {
    v142 = [MEMORY[0x1E695DFB0] null];
  }

  v176 = v142;
  v265[37] = v142;
  v264[38] = @"shareCountGivenLocationInLastMonthNormalizedAcrossItems";
  v143 = v231;
  if (!v231)
  {
    v143 = [MEMORY[0x1E695DFB0] null];
  }

  v175 = v143;
  v265[38] = v143;
  v264[39] = @"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems";
  v144 = v230;
  if (!v230)
  {
    v144 = [MEMORY[0x1E695DFB0] null];
  }

  v174 = v144;
  v265[39] = v144;
  v264[40] = @"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems";
  v145 = v229;
  if (!v229)
  {
    v145 = [MEMORY[0x1E695DFB0] null];
  }

  v173 = v145;
  v265[40] = v145;
  v264[41] = @"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems";
  v146 = v228;
  if (!v228)
  {
    v146 = [MEMORY[0x1E695DFB0] null];
  }

  v172 = v146;
  v265[41] = v146;
  v264[42] = @"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems";
  v147 = v227;
  if (!v227)
  {
    v147 = [MEMORY[0x1E695DFB0] null];
  }

  v171 = v147;
  v265[42] = v147;
  v264[43] = @"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems";
  v148 = v226;
  if (!v226)
  {
    v148 = [MEMORY[0x1E695DFB0] null];
  }

  v170 = v148;
  v265[43] = v148;
  v264[44] = @"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems";
  v149 = v225;
  if (!v225)
  {
    v149 = [MEMORY[0x1E695DFB0] null];
  }

  v169 = v149;
  v265[44] = v149;
  v264[45] = @"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems";
  v150 = v224;
  if (!v224)
  {
    v150 = [MEMORY[0x1E695DFB0] null];
  }

  v168 = v150;
  v265[45] = v150;
  v264[46] = @"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems";
  v151 = v223;
  if (!v223)
  {
    v151 = [MEMORY[0x1E695DFB0] null];
  }

  v215 = v4;
  v167 = v151;
  v265[46] = v151;
  v264[47] = @"clipScore";
  v152 = v222;
  if (!v222)
  {
    v152 = [MEMORY[0x1E695DFB0] null];
  }

  v202 = v112;
  v166 = v152;
  v265[47] = v152;
  v264[48] = @"clicked";
  v153 = v221;
  if (!v221)
  {
    v153 = [MEMORY[0x1E695DFB0] null];
  }

  v214 = v3;
  v164 = v153;
  v265[48] = v153;
  v264[49] = @"clickOrder";
  v154 = v220;
  if (!v220)
  {
    v154 = [MEMORY[0x1E695DFB0] null];
  }

  v216 = v104;
  v213 = v7;
  v265[49] = v154;
  v264[50] = @"itemPosition";
  v155 = v219;
  if (!v219)
  {
    v155 = [MEMORY[0x1E695DFB0] null];
  }

  v156 = v13;
  v265[50] = v155;
  v264[51] = @"L2ModelScore";
  v157 = v218;
  if (!v218)
  {
    v157 = [MEMORY[0x1E695DFB0] null];
  }

  v158 = v113;
  v265[51] = v157;
  v264[52] = @"isDuplicate";
  v159 = v217;
  if (!v217)
  {
    v159 = [MEMORY[0x1E695DFB0] null];
  }

  v265[52] = v159;
  v264[53] = @"isCompleteMatch";
  v160 = v216;
  if (!v216)
  {
    v160 = [MEMORY[0x1E695DFB0] null];
  }

  v265[53] = v160;
  v210 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v265 forKeys:v264 count:{54, v164}];
  if (!v216)
  {
  }

  v161 = v263;
  if (!v217)
  {

    v161 = v263;
  }

  if (!v218)
  {

    v161 = v263;
  }

  if (!v219)
  {

    v161 = v263;
  }

  if (!v220)
  {

    v161 = v263;
  }

  if (!v221)
  {

    v161 = v263;
  }

  if (!v222)
  {

    v161 = v263;
  }

  if (!v223)
  {

    v161 = v263;
  }

  if (!v224)
  {

    v161 = v263;
  }

  if (!v225)
  {

    v161 = v263;
  }

  if (!v226)
  {

    v161 = v263;
  }

  if (!v227)
  {

    v161 = v263;
  }

  if (!v228)
  {

    v161 = v263;
  }

  if (!v229)
  {

    v161 = v263;
  }

  if (!v230)
  {

    v161 = v263;
  }

  if (!v231)
  {

    v161 = v263;
  }

  if (!v232)
  {

    v161 = v263;
  }

  if (!v233)
  {

    v161 = v263;
  }

  if (!v234)
  {

    v161 = v263;
  }

  if (!v235)
  {

    v161 = v263;
  }

  if (!v236)
  {

    v161 = v263;
  }

  if (!v237)
  {

    v161 = v263;
  }

  if (!v238)
  {

    v161 = v263;
  }

  if (!v239)
  {

    v161 = v263;
  }

  if (!v240)
  {

    v161 = v263;
  }

  if (!v241)
  {

    v161 = v263;
  }

  if (!v242)
  {

    v161 = v263;
  }

  if (!v243)
  {

    v161 = v263;
  }

  if (!v244)
  {

    v161 = v263;
  }

  if (!v245)
  {

    v161 = v263;
  }

  if (!v246)
  {

    v161 = v263;
  }

  if (!v247)
  {

    v161 = v263;
  }

  if (!v248)
  {

    v161 = v263;
  }

  if (!v249)
  {

    v161 = v263;
  }

  if (!v250)
  {

    v161 = v263;
  }

  if (!v251)
  {

    v161 = v263;
  }

  if (!v252)
  {

    v161 = v263;
  }

  if (!v253)
  {

    v161 = v263;
  }

  if (!v254)
  {

    v161 = v263;
  }

  if (!v255)
  {

    v161 = v263;
  }

  if (!v256)
  {

    v161 = v263;
  }

  if (!v257)
  {

    v161 = v263;
  }

  if (!v258)
  {
  }

  if (!v259)
  {
  }

  if (!v260)
  {
  }

  if (!v261)
  {
  }

  if (v262)
  {
    if (v19)
    {
      goto LABEL_406;
    }
  }

  else
  {

    if (v19)
    {
LABEL_406:
      if (v16)
      {
        goto LABEL_407;
      }

      goto LABEL_417;
    }
  }

  if (v16)
  {
LABEL_407:
    if (v156)
    {
      goto LABEL_408;
    }

    goto LABEL_418;
  }

LABEL_417:

  if (v156)
  {
LABEL_408:
    if (v10)
    {
      goto LABEL_409;
    }

    goto LABEL_419;
  }

LABEL_418:

  if (v10)
  {
LABEL_409:
    if (v213)
    {
      goto LABEL_410;
    }

    goto LABEL_420;
  }

LABEL_419:

  if (v213)
  {
LABEL_410:
    if (v215)
    {
      goto LABEL_411;
    }

LABEL_421:

    if (v214)
    {
      goto LABEL_412;
    }

    goto LABEL_422;
  }

LABEL_420:

  if (!v215)
  {
    goto LABEL_421;
  }

LABEL_411:
  if (v214)
  {
    goto LABEL_412;
  }

LABEL_422:

LABEL_412:
  v162 = *MEMORY[0x1E69E9840];

  return v210;
}

- (BMAeroMLPhotosSearchLabeledData)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v715[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"searchSessionUUID"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v8 = [v5 objectForKeyedSubscript:@"uiSurface"];
    v606 = v8;
    v605 = v7;
    if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
LABEL_15:

LABEL_16:
      v19 = [v5 objectForKeyedSubscript:@"matchedPeopleRatio"];
      if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v20 = a4;
        v21 = 0;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = a4;
        v21 = v19;
LABEL_19:
        v22 = [v5 objectForKeyedSubscript:@"matchedLocationRatio"];
        v601 = v6;
        v603 = v10;
        if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v600 = v22;
          v604 = 0;
          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v600 = v22;
          v604 = v22;
LABEL_22:
          v23 = [v5 objectForKeyedSubscript:@"matchedSceneRatio"];
          if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v602 = 0;
            goto LABEL_25;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v602 = v23;
LABEL_25:
            v24 = [v5 objectForKeyedSubscript:@"matchedSceneConfidence"];
            v599 = v24;
            if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v561 = 0;
LABEL_28:
              v26 = [v5 objectForKeyedSubscript:@"matchedSceneBoundingBox"];
              v567 = v26;
              if (v26 && (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (!v20)
                  {
                    v566 = 0;
                    v17 = 0;
                    v51 = v600;
                    v67 = v561;
LABEL_489:
                    v20 = v604;
                    goto LABEL_490;
                  }

                  v81 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v82 = *MEMORY[0x1E698F240];
                  v702 = *MEMORY[0x1E696A578];
                  v83 = v20;
                  v67 = v561;
                  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"matchedSceneBoundingBox"];
                  v703 = v20;
                  v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v703 forKeys:&v702 count:1];
                  v85 = v82;
                  v6 = v601;
                  v560 = v84;
                  v566 = 0;
                  v17 = 0;
                  *v83 = [v81 initWithDomain:v85 code:2 userInfo:?];
                  v51 = v600;
                  goto LABEL_488;
                }

                v566 = v27;
              }

              else
              {
                v566 = 0;
              }

              v28 = [v5 objectForKeyedSubscript:@"matchedOCRCharacterRatio"];
              v560 = v28;
              if (!v28 || (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v30 = 0;
                goto LABEL_34;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = v29;
LABEL_34:
                v31 = [v5 objectForKeyedSubscript:@"matchedOCRImportance"];
                v557 = v31;
                if (!v31 || (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v555 = 0;
                  goto LABEL_37;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v555 = v32;
LABEL_37:
                  v33 = [v5 objectForKeyedSubscript:@"matchedFieldsCount"];
                  v554 = v33;
                  v558 = v20;
                  if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v553 = 0;
                    goto LABEL_40;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v553 = v34;
LABEL_40:
                    v35 = [v5 objectForKeyedSubscript:@"L1Score"];
                    v550 = v23;
                    v552 = v35;
                    if (!v35 || (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v551 = 0;
                      goto LABEL_43;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v551 = v36;
LABEL_43:
                      v37 = [v5 objectForKeyedSubscript:@"freshness"];
                      v545 = v21;
                      v549 = v37;
                      if (!v37 || (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v548 = 0;
                        goto LABEL_46;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v548 = v38;
LABEL_46:
                        v39 = [v5 objectForKeyedSubscript:@"favorited"];
                        v547 = v39;
                        if (!v39 || (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v41 = v604;
                          v42 = v21;
                          v546 = 0;
LABEL_49:
                          v43 = [v5 objectForKeyedSubscript:@"aestheticScore"];
                          v604 = v41;
                          v544 = v43;
                          if (!v43)
                          {
                            v46 = 0;
                            v20 = v30;
                            goto LABEL_89;
                          }

                          v44 = v43;
                          v45 = v20;
                          objc_opt_class();
                          v20 = v30;
                          if (objc_opt_isKindOfClass())
                          {
                            v46 = 0;
LABEL_89:
                            v88 = v555;
                            goto LABEL_90;
                          }

                          objc_opt_class();
                          v88 = v555;
                          if (objc_opt_isKindOfClass())
                          {
                            v46 = v44;
LABEL_90:
                            v91 = [v5 objectForKeyedSubscript:@"curationScore"];
                            v543 = v46;
                            if (!v91 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v539 = v91;
                              v542 = 0;
                              goto LABEL_93;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v539 = v91;
                              v542 = v91;
LABEL_93:
                              v92 = [v5 objectForKeyedSubscript:@"hasEverClickInLastWeek"];
                              v21 = v42;
                              v541 = v92;
                              if (!v92 || (v93 = v92, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v94 = 0;
                                goto LABEL_96;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v94 = v93;
LABEL_96:
                                v95 = [v5 objectForKeyedSubscript:@"hasEverClickInLastMonth"];
                                v540 = v94;
                                v538 = v95;
                                if (!v95 || (v96 = v95, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v537 = 0;
LABEL_99:
                                  v97 = [v5 objectForKeyedSubscript:@"hasEverShareInLastWeek"];
                                  v23 = v550;
                                  v88 = v555;
                                  if (!v97)
                                  {
                                    v533 = 0;
                                    v536 = 0;
                                    v6 = v601;
                                    goto LABEL_131;
                                  }

                                  objc_opt_class();
                                  v6 = v601;
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v533 = v97;
                                    v536 = 0;
                                    goto LABEL_131;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v533 = v97;
                                    v536 = v97;
LABEL_131:
                                    v128 = [v5 objectForKeyedSubscript:@"hasEverShareInLastMonth"];
                                    v535 = v128;
                                    if (!v128 || (v129 = v128, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v534 = 0;
LABEL_134:
                                      v130 = [v5 objectForKeyedSubscript:@"clickCountInLastWeekNormalizedAcrossItems"];
                                      v532 = v130;
                                      if (v130 && (v131 = v130, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                      {
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                        {
                                          v132 = v558;
                                          if (!v558)
                                          {
                                            v17 = 0;
                                            v51 = v600;
                                            v159 = v539;
LABEL_475:
                                            v97 = v533;
                                            goto LABEL_476;
                                          }

                                          v200 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v577 = v5;
                                          v201 = *MEMORY[0x1E698F240];
                                          v676 = *MEMORY[0x1E696A578];
                                          v202 = v20;
                                          v203 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v443 = objc_opt_class();
                                          v204 = v203;
                                          v20 = v202;
                                          v23 = v550;
                                          v531 = [v204 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v443, @"clickCountInLastWeekNormalizedAcrossItems"];
                                          v677 = v531;
                                          v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v677 forKeys:&v676 count:1];
                                          v205 = v201;
                                          v6 = v601;
                                          v5 = v577;
                                          v132 = 0;
                                          v17 = 0;
                                          *v558 = [v200 initWithDomain:v205 code:2 userInfo:v134];
                                          goto LABEL_280;
                                        }

                                        v132 = v131;
                                      }

                                      else
                                      {
                                        v132 = 0;
                                      }

                                      v133 = [v5 objectForKeyedSubscript:@"clickCountInLastMonthNormalizedAcrossItems"];
                                      v530 = v133;
                                      if (!v133 || (v134 = v133, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v135 = v132;
                                        v531 = 0;
                                        goto LABEL_140;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v177 = v134;
                                        v135 = v132;
                                        v531 = v177;
LABEL_140:
                                        v136 = [v5 objectForKeyedSubscript:@"shareCountInLastWeekNormalizedAcrossItems"];
                                        v526 = v135;
                                        v529 = v136;
                                        if (!v136 || (v137 = v136, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v528 = 0;
                                          goto LABEL_143;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v528 = v137;
LABEL_143:
                                          v138 = [v5 objectForKeyedSubscript:@"shareCountInLastMonthNormalizedAcrossItems"];
                                          v527 = v138;
                                          if (!v138 || (v139 = v138, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v524 = 0;
                                            goto LABEL_146;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v524 = v139;
LABEL_146:
                                            v140 = [v5 objectForKeyedSubscript:@"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                            v525 = v140;
                                            if (!v140 || (v141 = v140, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v521 = 0;
                                              goto LABEL_149;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v521 = v141;
LABEL_149:
                                              v142 = [v5 objectForKeyedSubscript:@"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                              v523 = v142;
                                              if (!v142 || (v143 = v142, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v522 = 0;
                                                goto LABEL_152;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v522 = v143;
LABEL_152:
                                                v144 = [v5 objectForKeyedSubscript:@"clickCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                v520 = v144;
                                                if (!v144 || (v145 = v144, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v519 = 0;
                                                  goto LABEL_155;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v519 = v145;
LABEL_155:
                                                  v146 = [v5 objectForKeyedSubscript:@"clickCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                  v518 = v146;
                                                  if (!v146 || (v147 = v146, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v517 = 0;
                                                    goto LABEL_158;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v517 = v147;
LABEL_158:
                                                    v148 = [v5 objectForKeyedSubscript:@"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                    v516 = v148;
                                                    if (!v148 || (v149 = v148, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v515 = 0;
                                                      goto LABEL_161;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v515 = v149;
LABEL_161:
                                                      v150 = [v5 objectForKeyedSubscript:@"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                      v514 = v150;
                                                      if (!v150 || (v151 = v150, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v513 = 0;
LABEL_164:
                                                        v152 = [v5 objectForKeyedSubscript:@"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                        v512 = v152;
                                                        if (!v152)
                                                        {
                                                          v511 = 0;
                                                          v134 = v530;
                                                          goto LABEL_229;
                                                        }

                                                        v153 = v152;
                                                        objc_opt_class();
                                                        v134 = v530;
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v511 = 0;
                                                          goto LABEL_229;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v511 = v153;
LABEL_229:
                                                          v242 = [v5 objectForKeyedSubscript:@"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                          v510 = v242;
                                                          if (!v242 || (v243 = v242, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v509 = 0;
                                                            goto LABEL_232;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v509 = v243;
LABEL_232:
                                                            v244 = [v5 objectForKeyedSubscript:@"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                            v508 = v244;
                                                            if (!v244 || (v245 = v244, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v507 = 0;
                                                              goto LABEL_235;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v507 = v245;
LABEL_235:
                                                              v246 = [v5 objectForKeyedSubscript:@"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                              v506 = v246;
                                                              if (!v246 || (v247 = v246, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v505 = 0;
                                                                goto LABEL_238;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v505 = v247;
LABEL_238:
                                                                v248 = [v5 objectForKeyedSubscript:@"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                v504 = v248;
                                                                if (!v248 || (v249 = v248, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v501 = 0;
                                                                  goto LABEL_241;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v501 = v249;
LABEL_241:
                                                                  v250 = [v5 objectForKeyedSubscript:@"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                  v500 = v250;
                                                                  if (!v250 || (v251 = v250, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v499 = 0;
LABEL_244:
                                                                    v252 = [v5 objectForKeyedSubscript:@"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                                                    v497 = v252;
                                                                    if (v252 && (v253 = v252, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                    {
                                                                      objc_opt_class();
                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                      {
                                                                        if (!v558)
                                                                        {
                                                                          v498 = 0;
                                                                          v17 = 0;
                                                                          v51 = v600;
                                                                          v159 = v539;
LABEL_458:
                                                                          v337 = v497;
                                                                          goto LABEL_459;
                                                                        }

                                                                        v339 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v592 = v5;
                                                                        v340 = *MEMORY[0x1E698F240];
                                                                        v644 = *MEMORY[0x1E696A578];
                                                                        v341 = v20;
                                                                        v342 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                        v459 = objc_opt_class();
                                                                        v343 = v342;
                                                                        v20 = v341;
                                                                        v134 = v530;
                                                                        v23 = v550;
                                                                        v496 = [v343 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v459, @"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                                                        v645 = v496;
                                                                        v344 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v645 forKeys:&v644 count:1];
                                                                        v345 = v340;
                                                                        v6 = v601;
                                                                        v5 = v592;
                                                                        v498 = 0;
                                                                        v17 = 0;
                                                                        *v558 = [v339 initWithDomain:v345 code:2 userInfo:v344];
                                                                        v51 = v600;
                                                                        v159 = v539;
                                                                        goto LABEL_457;
                                                                      }

                                                                      v498 = v253;
                                                                    }

                                                                    else
                                                                    {
                                                                      v498 = 0;
                                                                    }

                                                                    v254 = [v5 objectForKeyedSubscript:@"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                                                    v495 = v254;
                                                                    if (!v254 || (v255 = v254, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v496 = 0;
                                                                      goto LABEL_250;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v496 = v255;
LABEL_250:
                                                                      v256 = [v5 objectForKeyedSubscript:@"shareCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                                      v494 = v256;
                                                                      if (!v256 || (v257 = v256, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v493 = 0;
                                                                        goto LABEL_253;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v493 = v257;
LABEL_253:
                                                                        v258 = [v5 objectForKeyedSubscript:@"shareCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                                        v492 = v258;
                                                                        if (!v258 || (v259 = v258, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v491 = 0;
                                                                          goto LABEL_256;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v491 = v259;
LABEL_256:
                                                                          v260 = [v5 objectForKeyedSubscript:@"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                                          v490 = v260;
                                                                          if (!v260 || (v261 = v260, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v489 = 0;
                                                                            goto LABEL_259;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v489 = v261;
LABEL_259:
                                                                            v262 = [v5 objectForKeyedSubscript:@"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                                            v488 = v262;
                                                                            if (!v262 || (v263 = v262, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v487 = 0;
                                                                              goto LABEL_262;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v487 = v263;
LABEL_262:
                                                                              v264 = [v5 objectForKeyedSubscript:@"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                                              v503 = v20;
                                                                              v485 = v264;
                                                                              if (!v264 || (v265 = v264, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v486 = 0;
                                                                                goto LABEL_265;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v486 = v265;
LABEL_265:
                                                                                v266 = [v5 objectForKeyedSubscript:@"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                                                v565 = v266;
                                                                                if (!v266 || (v267 = v266, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                {
                                                                                  v482 = 0;
                                                                                  goto LABEL_268;
                                                                                }

                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v482 = v267;
LABEL_268:
                                                                                  v484 = [v5 objectForKeyedSubscript:@"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                                                  if (!v484 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                  {
                                                                                    v483 = 0;
                                                                                    goto LABEL_271;
                                                                                  }

                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v483 = v484;
LABEL_271:
                                                                                    v481 = [v5 objectForKeyedSubscript:@"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                                                    if (!v481 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                    {
                                                                                      v480 = 0;
LABEL_274:
                                                                                      v268 = [v5 objectForKeyedSubscript:@"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                                      v479 = v268;
                                                                                      if (!v268)
                                                                                      {
                                                                                        goto LABEL_368;
                                                                                      }

                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        v268 = 0;
                                                                                        goto LABEL_368;
                                                                                      }

                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        v268 = v479;
LABEL_368:
                                                                                        v478 = v268;
                                                                                        v477 = [v5 objectForKeyedSubscript:@"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                                        if (!v477 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                        {
                                                                                          v381 = 0;
                                                                                          goto LABEL_371;
                                                                                        }

                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v381 = v477;
LABEL_371:
                                                                                          v476 = [v5 objectForKeyedSubscript:@"clipScore"];
                                                                                          if (v476)
                                                                                          {
                                                                                            v382 = v550;
                                                                                            objc_opt_class();
                                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                            {
                                                                                              objc_opt_class();
                                                                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                              {
                                                                                                if (!v558)
                                                                                                {
                                                                                                  v475 = 0;
                                                                                                  v17 = 0;
                                                                                                  v6 = v601;
                                                                                                  v51 = v600;
                                                                                                  v23 = v550;
                                                                                                  v159 = v539;
                                                                                                  v134 = v530;
                                                                                                  goto LABEL_446;
                                                                                                }

                                                                                                v409 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                v410 = *MEMORY[0x1E698F240];
                                                                                                v620 = *MEMORY[0x1E696A578];
                                                                                                v473 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clipScore"];
                                                                                                v621 = v473;
                                                                                                v474 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v621 forKeys:&v620 count:1];
                                                                                                v411 = [v409 initWithDomain:v410 code:2 userInfo:?];
                                                                                                v475 = 0;
                                                                                                v17 = 0;
                                                                                                *v558 = v411;
                                                                                                v6 = v601;
                                                                                                v51 = v600;
                                                                                                v23 = v550;
                                                                                                v159 = v539;
                                                                                                v134 = v530;
                                                                                                goto LABEL_445;
                                                                                              }

                                                                                              v475 = v476;
                                                                                              v382 = v550;
LABEL_380:
                                                                                              [v5 objectForKeyedSubscript:@"clicked"];
                                                                                              v474 = v472 = v381;
                                                                                              if (v474 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                              {
                                                                                                objc_opt_class();
                                                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                {
                                                                                                  v6 = v601;
                                                                                                  if (!v558)
                                                                                                  {
                                                                                                    v473 = 0;
                                                                                                    v17 = 0;
                                                                                                    v51 = v600;
                                                                                                    v23 = v550;
                                                                                                    v159 = v539;
                                                                                                    v134 = v530;
                                                                                                    goto LABEL_445;
                                                                                                  }

                                                                                                  v412 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                  v413 = *MEMORY[0x1E698F240];
                                                                                                  v618 = *MEMORY[0x1E696A578];
                                                                                                  v471 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clicked"];
                                                                                                  v619 = v471;
                                                                                                  v470 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v619 forKeys:&v618 count:1];
                                                                                                  v414 = [v412 initWithDomain:v413 code:2 userInfo:?];
                                                                                                  v473 = 0;
                                                                                                  v17 = 0;
                                                                                                  *v558 = v414;
                                                                                                  v51 = v600;
                                                                                                  v23 = v550;
                                                                                                  goto LABEL_516;
                                                                                                }

                                                                                                v473 = v474;
                                                                                                v382 = v550;
                                                                                              }

                                                                                              else
                                                                                              {
                                                                                                v473 = 0;
                                                                                              }

                                                                                              v386 = [v5 objectForKeyedSubscript:@"clickOrder"];
                                                                                              v470 = v386;
                                                                                              if (!v386 || (v387 = v386, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                              {
                                                                                                v471 = 0;
                                                                                                v388 = v603;
                                                                                                v389 = v566;
                                                                                                goto LABEL_386;
                                                                                              }

                                                                                              v23 = v382;
                                                                                              objc_opt_class();
                                                                                              if (objc_opt_isKindOfClass())
                                                                                              {
                                                                                                v471 = v387;
                                                                                                v389 = v566;
                                                                                                v388 = v603;
LABEL_386:
                                                                                                v566 = v389;
                                                                                                v468 = [v5 objectForKeyedSubscript:@"itemPosition"];
                                                                                                if (!v468 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                                {
                                                                                                  v469 = 0;
                                                                                                  goto LABEL_389;
                                                                                                }

                                                                                                objc_opt_class();
                                                                                                if (objc_opt_isKindOfClass())
                                                                                                {
                                                                                                  v469 = v468;
LABEL_389:
                                                                                                  v467 = [v5 objectForKeyedSubscript:@"L2ModelScore"];
                                                                                                  if (v467)
                                                                                                  {
                                                                                                    v390 = self;
                                                                                                    objc_opt_class();
                                                                                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                    {
                                                                                                      objc_opt_class();
                                                                                                      if (objc_opt_isKindOfClass())
                                                                                                      {
                                                                                                        v598 = v467;
LABEL_416:
                                                                                                        v401 = [v5 objectForKeyedSubscript:@"isDuplicate"];
                                                                                                        if (v401 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                                                        {
                                                                                                          objc_opt_class();
                                                                                                          v404 = v401;
                                                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                          {
                                                                                                            if (!v558)
                                                                                                            {
                                                                                                              v415 = 0;
                                                                                                              v17 = 0;
                                                                                                              goto LABEL_441;
                                                                                                            }

                                                                                                            v424 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                            v425 = *MEMORY[0x1E698F240];
                                                                                                            v610 = *MEMORY[0x1E696A578];
                                                                                                            v403 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDuplicate"];
                                                                                                            v611 = v403;
                                                                                                            v426 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v611 forKeys:&v610 count:1];
                                                                                                            v427 = v425;
                                                                                                            v405 = v426;
                                                                                                            v415 = 0;
                                                                                                            v17 = 0;
                                                                                                            *v558 = [v424 initWithDomain:v427 code:2 userInfo:v426];
                                                                                                            goto LABEL_440;
                                                                                                          }

                                                                                                          v402 = v401;
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v402 = 0;
                                                                                                        }

                                                                                                        v403 = [v5 objectForKeyedSubscript:@"isCompleteMatch"];
                                                                                                        if (v403)
                                                                                                        {
                                                                                                          v404 = v401;
                                                                                                          objc_opt_class();
                                                                                                          v405 = v403;
                                                                                                          if (objc_opt_isKindOfClass())
                                                                                                          {
                                                                                                            v403 = 0;
                                                                                                          }

                                                                                                          else
                                                                                                          {
                                                                                                            objc_opt_class();
                                                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                                            {
                                                                                                              if (v558)
                                                                                                              {
                                                                                                                v466 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                                v465 = *MEMORY[0x1E698F240];
                                                                                                                v608 = *MEMORY[0x1E696A578];
                                                                                                                v428 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isCompleteMatch"];
                                                                                                                v609 = v428;
                                                                                                                v429 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v609 forKeys:&v608 count:1];
                                                                                                                v405 = v403;
                                                                                                                *v558 = [v466 initWithDomain:v465 code:2 userInfo:v429];

                                                                                                                v403 = 0;
                                                                                                                v17 = 0;
                                                                                                                v415 = v402;
                                                                                                              }

                                                                                                              else
                                                                                                              {
                                                                                                                v17 = 0;
                                                                                                                v415 = v402;
                                                                                                                v405 = v403;
                                                                                                                v403 = 0;
                                                                                                              }

                                                                                                              goto LABEL_440;
                                                                                                            }

                                                                                                            v405 = v403;
                                                                                                            v403 = v403;
                                                                                                          }
                                                                                                        }

                                                                                                        else
                                                                                                        {
                                                                                                          v404 = v401;
                                                                                                          v405 = 0;
                                                                                                        }

                                                                                                        v415 = v402;
                                                                                                        v17 = objc_retainAutoreleasedReturnValue( -[BMAeroMLPhotosSearchLabeledData initWithSearchSessionUUID:uiSurface:matchedPeopleRatio:matchedLocationRatio:matchedSceneRatio:matchedSceneConfidence:matchedSceneBoundingBox:matchedOCRCharacterRatio:matchedOCRImportance:matchedFieldsCount:L1Score:freshness:favorited:aestheticScore:curationScore:hasEverClickInLastWeek:hasEverClickInLastMonth:hasEverShareInLastWeek:hasEverShareInLastMonth:clickCountInLastWeekNormalizedAcrossItems:clickCountInLastMonthNormalizedAcrossItems:shareCountInLastWeekNormalizedAcrossItems:shareCountInLastMonthNormalizedAcrossItems:clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:clickCountGivenLocationInLastWeekNormalizedAcrossItems:clickCountGivenLocationInLastMonthNormalizedAcrossItems:clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:shareCountGivenLocationInLastWeekNormalizedAcrossItems:shareCountGivenLocationInLastMonthNormalizedAcrossItems:shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:clipScore:clicked:clickOrder:itemPosition:L2ModelScore:isDuplicate:isCompleteMatch:]( v390,  "initWithSearchSessionUUID:uiSurface:matchedPeopleRatio:matchedLocationRatio:matchedSceneRatio:matchedSceneConfidence:matchedSceneBoundingBox:matchedOCRCharacterRatio:matchedOCRImportance:matchedFieldsCount:L1Score:freshness:favorited:aestheticScore:curationScore:hasEverClickInLastWeek:hasEverClickInLastMonth:hasEverShareInLastWeek:hasEverShareInLastMonth:clickCountInLastWeekNormalizedAcrossItems:clickCountInLastMonthNormalizedAcrossItems:shareCountInLastWeekNormalizedAcrossItems:shareCountInLastMonthNormalizedAcrossItems:clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:clickCountGivenLocationInLastWeekNormalizedAcrossItems:clickCountGivenLocationInLastMonthNormalizedAcrossItems:clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:shareCountGivenLocationInLastWeekNormalizedAcrossItems:shareCountGivenLocationInLastMonthNormalizedAcrossItems:shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:clipScore:clicked:clickOrder:itemPosition:L2ModelScore:isDuplicate:isCompleteMatch:",  v605,  [v388 intValue],  v545,  v604,  v602,  v561,  v566,  v503,  v555,  v553,  v551,  v548,  v546,  v543,  v542,  v540,  v537,  v536,  v534,  v526,  v531,  v528,  v524,  v521,  v522,  v519,  v517,  v515,  v513,  v511,  v509,  v507,  v505,  v501,  v499,  v498,  v496,  v493,  v491,  v489,  v487,  v486,  v482,  v483,  v480,  v478,
                                                                                                                  v472,
                                                                                                                  v475,
                                                                                                                  v473,
                                                                                                                  v471,
                                                                                                                  v469,
                                                                                                                  v598,
                                                                                                                  v402,
                                                                                                                  v403));
                                                                                                        self = v17;
LABEL_440:

LABEL_441:
                                                                                                        v51 = v600;

                                                                                                        v20 = v503;
                                                                                                        v159 = v539;
                                                                                                        v23 = v550;
LABEL_442:
                                                                                                        v134 = v530;
                                                                                                        v381 = v472;

                                                                                                        v6 = v601;
LABEL_443:

LABEL_444:
LABEL_445:

                                                                                                        goto LABEL_446;
                                                                                                      }

                                                                                                      if (v558)
                                                                                                      {
                                                                                                        v422 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                        v423 = *MEMORY[0x1E698F240];
                                                                                                        v612 = *MEMORY[0x1E696A578];
                                                                                                        v415 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"L2ModelScore"];
                                                                                                        v613 = v415;
                                                                                                        v404 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v613 forKeys:&v612 count:1];
                                                                                                        v598 = 0;
                                                                                                        v17 = 0;
                                                                                                        *v558 = [v422 initWithDomain:v423 code:2 userInfo:v404];
                                                                                                        goto LABEL_441;
                                                                                                      }

                                                                                                      v598 = 0;
                                                                                                      v17 = 0;
LABEL_520:
                                                                                                      v51 = v600;
                                                                                                      v23 = v550;
                                                                                                      v159 = v539;
                                                                                                      goto LABEL_442;
                                                                                                    }
                                                                                                  }

                                                                                                  else
                                                                                                  {
                                                                                                    v390 = self;
                                                                                                  }

                                                                                                  v598 = 0;
                                                                                                  goto LABEL_416;
                                                                                                }

                                                                                                if (v558)
                                                                                                {
                                                                                                  v420 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                  v421 = *MEMORY[0x1E698F240];
                                                                                                  v614 = *MEMORY[0x1E696A578];
                                                                                                  v598 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"itemPosition"];
                                                                                                  v615 = v598;
                                                                                                  v467 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v615 forKeys:&v614 count:1];
                                                                                                  v469 = 0;
                                                                                                  v17 = 0;
                                                                                                  *v558 = [v420 initWithDomain:v421 code:2 userInfo:?];
                                                                                                  goto LABEL_520;
                                                                                                }

                                                                                                v469 = 0;
                                                                                                v17 = 0;
                                                                                                v6 = v601;
                                                                                                v51 = v600;
                                                                                                v23 = v550;
LABEL_518:
                                                                                                v159 = v539;
                                                                                                v134 = v530;
                                                                                                v381 = v472;
                                                                                                goto LABEL_443;
                                                                                              }

                                                                                              v6 = v601;
                                                                                              if (v558)
                                                                                              {
                                                                                                v418 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                                v419 = *MEMORY[0x1E698F240];
                                                                                                v616 = *MEMORY[0x1E696A578];
                                                                                                v469 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clickOrder"];
                                                                                                v617 = v469;
                                                                                                v468 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v617 forKeys:&v616 count:1];
                                                                                                v471 = 0;
                                                                                                v17 = 0;
                                                                                                *v558 = [v418 initWithDomain:v419 code:2 userInfo:?];
                                                                                                v51 = v600;
                                                                                                goto LABEL_518;
                                                                                              }

                                                                                              v471 = 0;
                                                                                              v17 = 0;
                                                                                              v51 = v600;
LABEL_516:
                                                                                              v159 = v539;
                                                                                              v134 = v530;
                                                                                              v381 = v472;
                                                                                              goto LABEL_444;
                                                                                            }
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v382 = v550;
                                                                                          }

                                                                                          v475 = 0;
                                                                                          goto LABEL_380;
                                                                                        }

                                                                                        if (v558)
                                                                                        {
                                                                                          v406 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v407 = *MEMORY[0x1E698F240];
                                                                                          v622 = *MEMORY[0x1E696A578];
                                                                                          v475 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                                          v623 = v475;
                                                                                          v476 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v623 forKeys:&v622 count:1];
                                                                                          v408 = [v406 initWithDomain:v407 code:2 userInfo:?];
                                                                                          v381 = 0;
                                                                                          v17 = 0;
                                                                                          *v558 = v408;
                                                                                          v51 = v600;
                                                                                          v23 = v550;
                                                                                          v159 = v539;
                                                                                          v6 = v601;
LABEL_446:

LABEL_447:
                                                                                          v398 = v478;
LABEL_448:

LABEL_449:
                                                                                          v385 = v482;

                                                                                          goto LABEL_450;
                                                                                        }

                                                                                        v381 = 0;
                                                                                        v17 = 0;
LABEL_508:
                                                                                        v51 = v600;
                                                                                        v23 = v550;
                                                                                        v159 = v539;
                                                                                        v6 = v601;
                                                                                        goto LABEL_447;
                                                                                      }

                                                                                      if (v558)
                                                                                      {
                                                                                        v399 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v400 = *MEMORY[0x1E698F240];
                                                                                        v624 = *MEMORY[0x1E696A578];
                                                                                        v381 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                                        v625 = v381;
                                                                                        v477 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v625 forKeys:&v624 count:1];
                                                                                        v478 = 0;
                                                                                        v17 = 0;
                                                                                        *v558 = [v399 initWithDomain:v400 code:2 userInfo:?];
                                                                                        goto LABEL_508;
                                                                                      }

                                                                                      v398 = 0;
                                                                                      v17 = 0;
LABEL_504:
                                                                                      v51 = v600;
                                                                                      v23 = v550;
                                                                                      v159 = v539;
                                                                                      v6 = v601;
                                                                                      goto LABEL_448;
                                                                                    }

                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      v480 = v481;
                                                                                      goto LABEL_274;
                                                                                    }

                                                                                    if (v558)
                                                                                    {
                                                                                      v396 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v397 = *MEMORY[0x1E698F240];
                                                                                      v626 = *MEMORY[0x1E696A578];
                                                                                      v398 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                                                      v627 = v398;
                                                                                      v479 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v627 forKeys:&v626 count:1];
                                                                                      v480 = 0;
                                                                                      v17 = 0;
                                                                                      *v558 = [v396 initWithDomain:v397 code:2 userInfo:?];
                                                                                      goto LABEL_504;
                                                                                    }

                                                                                    v480 = 0;
                                                                                    v17 = 0;
LABEL_500:
                                                                                    v51 = v600;
                                                                                    v23 = v550;
                                                                                    v159 = v539;
                                                                                    v6 = v601;
                                                                                    goto LABEL_449;
                                                                                  }

                                                                                  if (v558)
                                                                                  {
                                                                                    v394 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v395 = *MEMORY[0x1E698F240];
                                                                                    v628 = *MEMORY[0x1E696A578];
                                                                                    v480 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                                                    v629 = v480;
                                                                                    v481 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v629 forKeys:&v628 count:1];
                                                                                    v483 = 0;
                                                                                    v17 = 0;
                                                                                    *v558 = [v394 initWithDomain:v395 code:2 userInfo:?];
                                                                                    goto LABEL_500;
                                                                                  }

                                                                                  v483 = 0;
                                                                                  v17 = 0;
                                                                                  v51 = v600;
                                                                                  v23 = v550;
                                                                                  v159 = v539;
                                                                                  v6 = v601;
                                                                                  v385 = v482;
LABEL_450:

                                                                                  goto LABEL_451;
                                                                                }

                                                                                if (v558)
                                                                                {
                                                                                  v391 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v392 = *MEMORY[0x1E698F240];
                                                                                  v630 = *MEMORY[0x1E696A578];
                                                                                  v483 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                                                  v631 = v483;
                                                                                  v484 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v631 forKeys:&v630 count:1];
                                                                                  v393 = [v391 initWithDomain:v392 code:2 userInfo:?];
                                                                                  v385 = 0;
                                                                                  v17 = 0;
                                                                                  *v558 = v393;
                                                                                  v51 = v600;
                                                                                  v23 = v550;
                                                                                  v159 = v539;
                                                                                  v6 = v601;
                                                                                  goto LABEL_450;
                                                                                }

                                                                                v385 = 0;
                                                                                v17 = 0;
LABEL_430:
                                                                                v51 = v600;
                                                                                v23 = v550;
                                                                                v159 = v539;
                                                                                v6 = v601;
LABEL_451:

                                                                                goto LABEL_452;
                                                                              }

                                                                              if (v558)
                                                                              {
                                                                                v383 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v384 = *MEMORY[0x1E698F240];
                                                                                v632 = *MEMORY[0x1E696A578];
                                                                                v385 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                                                v633 = v385;
                                                                                v565 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v633 forKeys:&v632 count:1];
                                                                                v486 = 0;
                                                                                v17 = 0;
                                                                                *v558 = [v383 initWithDomain:v384 code:2 userInfo:?];
                                                                                goto LABEL_430;
                                                                              }

                                                                              v486 = 0;
                                                                              v17 = 0;
                                                                              v51 = v600;
                                                                              v23 = v550;
                                                                              v159 = v539;
                                                                              v6 = v601;
LABEL_452:
                                                                              v344 = v495;

                                                                              goto LABEL_453;
                                                                            }

                                                                            if (v558)
                                                                            {
                                                                              v374 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v597 = v5;
                                                                              v375 = *MEMORY[0x1E698F240];
                                                                              v634 = *MEMORY[0x1E696A578];
                                                                              v376 = v20;
                                                                              v377 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                              v464 = objc_opt_class();
                                                                              v378 = v377;
                                                                              v20 = v376;
                                                                              v134 = v530;
                                                                              v23 = v550;
                                                                              v486 = [v378 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v464, @"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                                              v635 = v486;
                                                                              v379 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v635 forKeys:&v634 count:1];
                                                                              v380 = v375;
                                                                              v6 = v601;
                                                                              v5 = v597;
                                                                              v485 = v379;
                                                                              v487 = 0;
                                                                              v17 = 0;
                                                                              *v558 = [v374 initWithDomain:v380 code:2 userInfo:?];
                                                                              v51 = v600;
                                                                              v159 = v539;
                                                                              goto LABEL_452;
                                                                            }

                                                                            v487 = 0;
                                                                            v17 = 0;
LABEL_413:
                                                                            v51 = v600;
                                                                            v159 = v539;
                                                                            v344 = v495;
LABEL_453:

                                                                            goto LABEL_454;
                                                                          }

                                                                          if (v558)
                                                                          {
                                                                            v367 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v596 = v5;
                                                                            v368 = *MEMORY[0x1E698F240];
                                                                            v636 = *MEMORY[0x1E696A578];
                                                                            v369 = v20;
                                                                            v370 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                            v463 = objc_opt_class();
                                                                            v371 = v370;
                                                                            v20 = v369;
                                                                            v134 = v530;
                                                                            v23 = v550;
                                                                            v487 = [v371 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v463, @"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                                            v637 = v487;
                                                                            v372 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v637 forKeys:&v636 count:1];
                                                                            v373 = v368;
                                                                            v6 = v601;
                                                                            v5 = v596;
                                                                            v488 = v372;
                                                                            v489 = 0;
                                                                            v17 = 0;
                                                                            *v558 = [v367 initWithDomain:v373 code:2 userInfo:?];
                                                                            goto LABEL_413;
                                                                          }

                                                                          v489 = 0;
                                                                          v17 = 0;
LABEL_407:
                                                                          v51 = v600;
                                                                          v159 = v539;
                                                                          v344 = v495;
LABEL_454:

                                                                          goto LABEL_455;
                                                                        }

                                                                        if (v558)
                                                                        {
                                                                          v360 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v595 = v5;
                                                                          v361 = *MEMORY[0x1E698F240];
                                                                          v638 = *MEMORY[0x1E696A578];
                                                                          v362 = v20;
                                                                          v363 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                          v462 = objc_opt_class();
                                                                          v364 = v363;
                                                                          v20 = v362;
                                                                          v134 = v530;
                                                                          v23 = v550;
                                                                          v489 = [v364 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v462, @"shareCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                                          v639 = v489;
                                                                          v365 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v639 forKeys:&v638 count:1];
                                                                          v366 = v361;
                                                                          v6 = v601;
                                                                          v5 = v595;
                                                                          v490 = v365;
                                                                          v491 = 0;
                                                                          v17 = 0;
                                                                          *v558 = [v360 initWithDomain:v366 code:2 userInfo:?];
                                                                          goto LABEL_407;
                                                                        }

                                                                        v491 = 0;
                                                                        v17 = 0;
LABEL_401:
                                                                        v51 = v600;
                                                                        v159 = v539;
                                                                        v344 = v495;
LABEL_455:

                                                                        goto LABEL_456;
                                                                      }

                                                                      if (v558)
                                                                      {
                                                                        v353 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v594 = v5;
                                                                        v354 = *MEMORY[0x1E698F240];
                                                                        v640 = *MEMORY[0x1E696A578];
                                                                        v355 = v20;
                                                                        v356 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                        v461 = objc_opt_class();
                                                                        v357 = v356;
                                                                        v20 = v355;
                                                                        v134 = v530;
                                                                        v23 = v550;
                                                                        v491 = [v357 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v461, @"shareCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                                        v641 = v491;
                                                                        v358 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v641 forKeys:&v640 count:1];
                                                                        v359 = v354;
                                                                        v6 = v601;
                                                                        v5 = v594;
                                                                        v492 = v358;
                                                                        v493 = 0;
                                                                        v17 = 0;
                                                                        *v558 = [v353 initWithDomain:v359 code:2 userInfo:?];
                                                                        goto LABEL_401;
                                                                      }

                                                                      v493 = 0;
                                                                      v17 = 0;
                                                                      v51 = v600;
                                                                      v159 = v539;
                                                                      v344 = v495;
LABEL_456:

                                                                      goto LABEL_457;
                                                                    }

                                                                    if (v558)
                                                                    {
                                                                      v346 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v593 = v5;
                                                                      v347 = *MEMORY[0x1E698F240];
                                                                      v642 = *MEMORY[0x1E696A578];
                                                                      v348 = v20;
                                                                      v349 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                      v344 = v495;
                                                                      v460 = objc_opt_class();
                                                                      v350 = v349;
                                                                      v20 = v348;
                                                                      v134 = v530;
                                                                      v23 = v550;
                                                                      v493 = [v350 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v460, @"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                                                      v643 = v493;
                                                                      v351 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v643 forKeys:&v642 count:1];
                                                                      v352 = v347;
                                                                      v6 = v601;
                                                                      v5 = v593;
                                                                      v494 = v351;
                                                                      v496 = 0;
                                                                      v17 = 0;
                                                                      *v558 = [v346 initWithDomain:v352 code:2 userInfo:?];
                                                                      v51 = v600;
                                                                      v159 = v539;
                                                                      goto LABEL_456;
                                                                    }

                                                                    v496 = 0;
                                                                    v17 = 0;
                                                                    v51 = v600;
                                                                    v159 = v539;
                                                                    v344 = v495;
LABEL_457:

                                                                    goto LABEL_458;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v499 = v251;
                                                                    goto LABEL_244;
                                                                  }

                                                                  if (v558)
                                                                  {
                                                                    v332 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v591 = v5;
                                                                    v333 = *MEMORY[0x1E698F240];
                                                                    v646 = *MEMORY[0x1E696A578];
                                                                    v334 = v20;
                                                                    v335 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v458 = objc_opt_class();
                                                                    v336 = v335;
                                                                    v20 = v334;
                                                                    v134 = v530;
                                                                    v23 = v550;
                                                                    v498 = [v336 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v458, @"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                    v647 = v498;
                                                                    v337 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v647 forKeys:&v646 count:1];
                                                                    v338 = v333;
                                                                    v6 = v601;
                                                                    v5 = v591;
                                                                    v499 = 0;
                                                                    v17 = 0;
                                                                    *v558 = [v332 initWithDomain:v338 code:2 userInfo:v337];
                                                                    v51 = v600;
                                                                    v159 = v539;
LABEL_459:

                                                                    goto LABEL_460;
                                                                  }

                                                                  v499 = 0;
                                                                  v17 = 0;
LABEL_360:
                                                                  v51 = v600;
                                                                  v159 = v539;
LABEL_460:
                                                                  v225 = v521;

                                                                  goto LABEL_461;
                                                                }

                                                                if (v558)
                                                                {
                                                                  v325 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v590 = v5;
                                                                  v326 = *MEMORY[0x1E698F240];
                                                                  v648 = *MEMORY[0x1E696A578];
                                                                  v327 = v20;
                                                                  v328 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v457 = objc_opt_class();
                                                                  v329 = v328;
                                                                  v20 = v327;
                                                                  v134 = v530;
                                                                  v23 = v550;
                                                                  v499 = [v329 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v457, @"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                  v649 = v499;
                                                                  v330 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v649 forKeys:&v648 count:1];
                                                                  v331 = v326;
                                                                  v6 = v601;
                                                                  v5 = v590;
                                                                  v500 = v330;
                                                                  v501 = 0;
                                                                  v17 = 0;
                                                                  *v558 = [v325 initWithDomain:v331 code:2 userInfo:?];
                                                                  goto LABEL_360;
                                                                }

                                                                v501 = 0;
                                                                v17 = 0;
LABEL_354:
                                                                v51 = v600;
                                                                v159 = v539;
                                                                v225 = v521;
LABEL_461:

                                                                goto LABEL_462;
                                                              }

                                                              if (v558)
                                                              {
                                                                v318 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v589 = v5;
                                                                v319 = *MEMORY[0x1E698F240];
                                                                v650 = *MEMORY[0x1E696A578];
                                                                v320 = v20;
                                                                v321 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                v456 = objc_opt_class();
                                                                v322 = v321;
                                                                v20 = v320;
                                                                v134 = v530;
                                                                v23 = v550;
                                                                v501 = [v322 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v456, @"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                                v651 = v501;
                                                                v323 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v651 forKeys:&v650 count:1];
                                                                v324 = v319;
                                                                v6 = v601;
                                                                v5 = v589;
                                                                v504 = v323;
                                                                v505 = 0;
                                                                v17 = 0;
                                                                *v558 = [v318 initWithDomain:v324 code:2 userInfo:?];
                                                                goto LABEL_354;
                                                              }

                                                              v505 = 0;
                                                              v17 = 0;
LABEL_348:
                                                              v51 = v600;
                                                              v159 = v539;
                                                              v225 = v521;
LABEL_462:

                                                              goto LABEL_463;
                                                            }

                                                            if (v558)
                                                            {
                                                              v311 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v588 = v5;
                                                              v312 = *MEMORY[0x1E698F240];
                                                              v652 = *MEMORY[0x1E696A578];
                                                              v313 = v20;
                                                              v314 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v455 = objc_opt_class();
                                                              v315 = v314;
                                                              v20 = v313;
                                                              v134 = v530;
                                                              v23 = v550;
                                                              v505 = [v315 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v455, @"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                              v653 = v505;
                                                              v316 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v653 forKeys:&v652 count:1];
                                                              v317 = v312;
                                                              v6 = v601;
                                                              v5 = v588;
                                                              v506 = v316;
                                                              v507 = 0;
                                                              v17 = 0;
                                                              *v558 = [v311 initWithDomain:v317 code:2 userInfo:?];
                                                              goto LABEL_348;
                                                            }

                                                            v507 = 0;
                                                            v17 = 0;
LABEL_342:
                                                            v51 = v600;
                                                            v159 = v539;
                                                            v225 = v521;
LABEL_463:

                                                            goto LABEL_464;
                                                          }

                                                          if (v558)
                                                          {
                                                            v304 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v587 = v5;
                                                            v305 = *MEMORY[0x1E698F240];
                                                            v654 = *MEMORY[0x1E696A578];
                                                            v306 = v20;
                                                            v307 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v454 = objc_opt_class();
                                                            v308 = v307;
                                                            v20 = v306;
                                                            v134 = v530;
                                                            v23 = v550;
                                                            v507 = [v308 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v454, @"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                            v655 = v507;
                                                            v309 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v655 forKeys:&v654 count:1];
                                                            v310 = v305;
                                                            v6 = v601;
                                                            v5 = v587;
                                                            v508 = v309;
                                                            v509 = 0;
                                                            v17 = 0;
                                                            *v558 = [v304 initWithDomain:v310 code:2 userInfo:?];
                                                            goto LABEL_342;
                                                          }

                                                          v509 = 0;
                                                          v17 = 0;
LABEL_336:
                                                          v51 = v600;
                                                          v159 = v539;
                                                          v225 = v521;
LABEL_464:

                                                          goto LABEL_465;
                                                        }

                                                        if (v558)
                                                        {
                                                          v297 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v586 = v5;
                                                          v298 = *MEMORY[0x1E698F240];
                                                          v656 = *MEMORY[0x1E696A578];
                                                          v299 = v20;
                                                          v300 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v453 = objc_opt_class();
                                                          v301 = v300;
                                                          v20 = v299;
                                                          v134 = v530;
                                                          v23 = v550;
                                                          v509 = [v301 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v453, @"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                          v657 = v509;
                                                          v302 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v657 forKeys:&v656 count:1];
                                                          v303 = v298;
                                                          v6 = v601;
                                                          v5 = v586;
                                                          v510 = v302;
                                                          v511 = 0;
                                                          v17 = 0;
                                                          *v558 = [v297 initWithDomain:v303 code:2 userInfo:?];
                                                          goto LABEL_336;
                                                        }

                                                        v511 = 0;
                                                        v17 = 0;
LABEL_330:
                                                        v51 = v600;
                                                        v159 = v539;
                                                        v225 = v521;
LABEL_465:

                                                        goto LABEL_466;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v513 = v151;
                                                        goto LABEL_164;
                                                      }

                                                      if (v558)
                                                      {
                                                        v290 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v585 = v5;
                                                        v291 = *MEMORY[0x1E698F240];
                                                        v658 = *MEMORY[0x1E696A578];
                                                        v292 = v20;
                                                        v293 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v452 = objc_opt_class();
                                                        v294 = v293;
                                                        v20 = v292;
                                                        v134 = v530;
                                                        v23 = v550;
                                                        v511 = [v294 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v452, @"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                        v659 = v511;
                                                        v295 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v659 forKeys:&v658 count:1];
                                                        v296 = v291;
                                                        v6 = v601;
                                                        v5 = v585;
                                                        v512 = v295;
                                                        v513 = 0;
                                                        v17 = 0;
                                                        *v558 = [v290 initWithDomain:v296 code:2 userInfo:?];
                                                        goto LABEL_330;
                                                      }

                                                      v513 = 0;
                                                      v17 = 0;
                                                      v51 = v600;
                                                      v159 = v539;
                                                      v134 = v530;
LABEL_324:
                                                      v225 = v521;
LABEL_466:

                                                      goto LABEL_467;
                                                    }

                                                    if (v558)
                                                    {
                                                      v283 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v584 = v5;
                                                      v284 = *MEMORY[0x1E698F240];
                                                      v660 = *MEMORY[0x1E696A578];
                                                      v285 = v20;
                                                      v286 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v451 = objc_opt_class();
                                                      v287 = v286;
                                                      v20 = v285;
                                                      v134 = v530;
                                                      v23 = v550;
                                                      v513 = [v287 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v451, @"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                      v661 = v513;
                                                      v288 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v661 forKeys:&v660 count:1];
                                                      v289 = v284;
                                                      v6 = v601;
                                                      v5 = v584;
                                                      v514 = v288;
                                                      v515 = 0;
                                                      v17 = 0;
                                                      *v558 = [v283 initWithDomain:v289 code:2 userInfo:?];
                                                      v51 = v600;
                                                      v159 = v539;
                                                      goto LABEL_324;
                                                    }

                                                    v515 = 0;
                                                    v17 = 0;
                                                    v51 = v600;
                                                    v159 = v539;
                                                    v134 = v530;
LABEL_318:
                                                    v225 = v521;
LABEL_467:

                                                    goto LABEL_468;
                                                  }

                                                  if (v558)
                                                  {
                                                    v276 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v583 = v5;
                                                    v277 = *MEMORY[0x1E698F240];
                                                    v662 = *MEMORY[0x1E696A578];
                                                    v278 = v20;
                                                    v279 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v450 = objc_opt_class();
                                                    v280 = v279;
                                                    v20 = v278;
                                                    v134 = v530;
                                                    v23 = v550;
                                                    v515 = [v280 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v450, @"clickCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                    v663 = v515;
                                                    v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v663 forKeys:&v662 count:1];
                                                    v282 = v277;
                                                    v6 = v601;
                                                    v5 = v583;
                                                    v516 = v281;
                                                    v517 = 0;
                                                    v17 = 0;
                                                    *v558 = [v276 initWithDomain:v282 code:2 userInfo:?];
                                                    v51 = v600;
                                                    v159 = v539;
                                                    goto LABEL_318;
                                                  }

                                                  v517 = 0;
                                                  v17 = 0;
                                                  v51 = v600;
                                                  v159 = v539;
                                                  v134 = v530;
LABEL_312:
                                                  v225 = v521;
LABEL_468:

                                                  goto LABEL_469;
                                                }

                                                if (v558)
                                                {
                                                  v269 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v582 = v5;
                                                  v270 = *MEMORY[0x1E698F240];
                                                  v664 = *MEMORY[0x1E696A578];
                                                  v271 = v20;
                                                  v272 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v449 = objc_opt_class();
                                                  v273 = v272;
                                                  v20 = v271;
                                                  v134 = v530;
                                                  v23 = v550;
                                                  v517 = [v273 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v449, @"clickCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                  v665 = v517;
                                                  v274 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v665 forKeys:&v664 count:1];
                                                  v275 = v270;
                                                  v6 = v601;
                                                  v5 = v582;
                                                  v518 = v274;
                                                  v519 = 0;
                                                  v17 = 0;
                                                  *v558 = [v269 initWithDomain:v275 code:2 userInfo:?];
                                                  v51 = v600;
                                                  v159 = v539;
                                                  goto LABEL_312;
                                                }

                                                v519 = 0;
                                                v17 = 0;
                                                v51 = v600;
                                                v159 = v539;
                                                v134 = v530;
LABEL_306:
                                                v225 = v521;
LABEL_469:

                                                goto LABEL_470;
                                              }

                                              if (v558)
                                              {
                                                v235 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v581 = v5;
                                                v236 = *MEMORY[0x1E698F240];
                                                v666 = *MEMORY[0x1E696A578];
                                                v237 = v20;
                                                v238 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v448 = objc_opt_class();
                                                v239 = v238;
                                                v20 = v237;
                                                v134 = v530;
                                                v23 = v550;
                                                v519 = [v239 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v448, @"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                                v667 = v519;
                                                v240 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v667 forKeys:&v666 count:1];
                                                v241 = v236;
                                                v6 = v601;
                                                v5 = v581;
                                                v520 = v240;
                                                v522 = 0;
                                                v17 = 0;
                                                *v558 = [v235 initWithDomain:v241 code:2 userInfo:?];
                                                v51 = v600;
                                                v159 = v539;
                                                goto LABEL_306;
                                              }

                                              v522 = 0;
                                              v17 = 0;
                                              v51 = v600;
                                              v159 = v539;
                                              v134 = v530;
                                              v225 = v521;
LABEL_470:

                                              goto LABEL_471;
                                            }

                                            v225 = v558;
                                            if (v558)
                                            {
                                              v228 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v580 = v5;
                                              v229 = *MEMORY[0x1E698F240];
                                              v668 = *MEMORY[0x1E696A578];
                                              v230 = v20;
                                              v231 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v447 = objc_opt_class();
                                              v232 = v231;
                                              v20 = v230;
                                              v134 = v530;
                                              v23 = v550;
                                              v522 = [v232 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v447, @"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                              v669 = v522;
                                              v233 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v669 forKeys:&v668 count:1];
                                              v234 = v229;
                                              v6 = v601;
                                              v5 = v580;
                                              v523 = v233;
                                              v225 = 0;
                                              v17 = 0;
                                              *v558 = [v228 initWithDomain:v234 code:2 userInfo:?];
                                              v51 = v600;
                                              v159 = v539;
                                              goto LABEL_470;
                                            }

                                            v17 = 0;
                                            v51 = v600;
                                            v159 = v539;
                                            v134 = v530;
LABEL_471:

                                            v217 = v524;
                                            goto LABEL_472;
                                          }

                                          v217 = v558;
                                          if (v558)
                                          {
                                            v220 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v579 = v5;
                                            v221 = *MEMORY[0x1E698F240];
                                            v670 = *MEMORY[0x1E696A578];
                                            v222 = v20;
                                            v223 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v446 = objc_opt_class();
                                            v224 = v223;
                                            v20 = v222;
                                            v134 = v530;
                                            v23 = v550;
                                            v225 = [v224 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v446, @"shareCountInLastMonthNormalizedAcrossItems"];
                                            v671 = v225;
                                            v226 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v671 forKeys:&v670 count:1];
                                            v227 = v221;
                                            v6 = v601;
                                            v5 = v579;
                                            v525 = v226;
                                            v524 = 0;
                                            v17 = 0;
                                            *v558 = [v220 initWithDomain:v227 code:2 userInfo:?];
                                            v51 = v600;
                                            v159 = v539;
                                            goto LABEL_471;
                                          }

                                          v17 = 0;
                                          v51 = v600;
                                          v159 = v539;
                                          v134 = v530;
LABEL_472:

                                          v132 = v526;
                                          goto LABEL_473;
                                        }

                                        if (v558)
                                        {
                                          v212 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v578 = v5;
                                          v213 = *MEMORY[0x1E698F240];
                                          v672 = *MEMORY[0x1E696A578];
                                          v214 = v20;
                                          v215 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v445 = objc_opt_class();
                                          v216 = v215;
                                          v20 = v214;
                                          v134 = v530;
                                          v23 = v550;
                                          v217 = [v216 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v445, @"shareCountInLastWeekNormalizedAcrossItems"];
                                          v673 = v217;
                                          v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v673 forKeys:&v672 count:1];
                                          v219 = v213;
                                          v6 = v601;
                                          v5 = v578;
                                          v527 = v218;
                                          v528 = 0;
                                          v17 = 0;
                                          *v558 = [v212 initWithDomain:v219 code:2 userInfo:?];
                                          v51 = v600;
                                          v159 = v539;
                                          goto LABEL_472;
                                        }

                                        v528 = 0;
                                        v17 = 0;
                                        v51 = v600;
                                        v159 = v539;
                                        v132 = v135;
                                        v134 = v530;
LABEL_473:

                                        goto LABEL_474;
                                      }

                                      if (v558)
                                      {
                                        v206 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v564 = v19;
                                        v207 = *MEMORY[0x1E698F240];
                                        v674 = *MEMORY[0x1E696A578];
                                        v502 = v20;
                                        v208 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v444 = objc_opt_class();
                                        v209 = v208;
                                        v20 = v502;
                                        v23 = v550;
                                        v528 = [v209 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v444, @"clickCountInLastMonthNormalizedAcrossItems"];
                                        v675 = v528;
                                        v210 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v675 forKeys:&v674 count:1];
                                        v211 = v207;
                                        v19 = v564;
                                        v6 = v601;
                                        v529 = v210;
                                        v531 = 0;
                                        v17 = 0;
                                        *v558 = [v206 initWithDomain:v211 code:2 userInfo:?];
                                        v51 = v600;
                                        v159 = v539;
                                        goto LABEL_473;
                                      }

                                      v531 = 0;
                                      v17 = 0;
LABEL_280:
                                      v51 = v600;
                                      v159 = v539;
LABEL_474:

                                      goto LABEL_475;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v534 = v129;
                                      goto LABEL_134;
                                    }

                                    if (v558)
                                    {
                                      v193 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v576 = v5;
                                      v194 = *MEMORY[0x1E698F240];
                                      v678 = *MEMORY[0x1E696A578];
                                      v195 = v20;
                                      v196 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v442 = objc_opt_class();
                                      v197 = v196;
                                      v20 = v195;
                                      v97 = v533;
                                      v23 = v550;
                                      v132 = [v197 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v442, @"hasEverShareInLastMonth"];
                                      v679 = v132;
                                      v198 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v679 forKeys:&v678 count:1];
                                      v199 = v194;
                                      v6 = v601;
                                      v5 = v576;
                                      v532 = v198;
                                      v534 = 0;
                                      v17 = 0;
                                      *v558 = [v193 initWithDomain:v199 code:2 userInfo:?];
                                      v51 = v600;
                                      v159 = v539;
LABEL_476:

                                      v88 = v555;
                                      goto LABEL_477;
                                    }

                                    v534 = 0;
                                    v17 = 0;
                                    v51 = v600;
                                    v159 = v539;
                                    v97 = v533;
LABEL_477:

                                    goto LABEL_478;
                                  }

                                  if (v558)
                                  {
                                    v185 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v575 = v5;
                                    v186 = *MEMORY[0x1E698F240];
                                    v680 = *MEMORY[0x1E696A578];
                                    v187 = v20;
                                    v188 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v441 = objc_opt_class();
                                    v189 = v188;
                                    v20 = v187;
                                    v88 = v555;
                                    v23 = v550;
                                    v534 = [v189 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v441, @"hasEverShareInLastWeek"];
                                    v681 = v534;
                                    v190 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v681 forKeys:&v680 count:1];
                                    v191 = v185;
                                    v192 = v186;
                                    v6 = v601;
                                    v5 = v575;
                                    v535 = v190;
                                    v536 = 0;
                                    v17 = 0;
                                    *v558 = [v191 initWithDomain:v192 code:2 userInfo:?];
                                    v51 = v600;
                                    v159 = v539;
                                    goto LABEL_477;
                                  }

                                  v536 = 0;
                                  v17 = 0;
LABEL_215:
                                  v51 = v600;
                                  v159 = v539;
LABEL_478:

                                  v21 = v545;
                                  goto LABEL_479;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v537 = v96;
                                  goto LABEL_99;
                                }

                                if (v558)
                                {
                                  v178 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v574 = v5;
                                  v179 = *MEMORY[0x1E698F240];
                                  v682 = *MEMORY[0x1E696A578];
                                  v180 = v20;
                                  v181 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v440 = objc_opt_class();
                                  v182 = v181;
                                  v20 = v180;
                                  v88 = v555;
                                  v23 = v550;
                                  v536 = [v182 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v440, @"hasEverClickInLastMonth"];
                                  v683 = v536;
                                  v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v683 forKeys:&v682 count:1];
                                  v183 = v178;
                                  v184 = v179;
                                  v6 = v601;
                                  v5 = v574;
                                  v537 = 0;
                                  v17 = 0;
                                  *v558 = [v183 initWithDomain:v184 code:2 userInfo:v97];
                                  goto LABEL_215;
                                }

                                v537 = 0;
                                v17 = 0;
                                v51 = v600;
                                v159 = v539;
                                v23 = v550;
                                v6 = v601;
                                v88 = v555;
LABEL_479:

                                goto LABEL_480;
                              }

                              if (v558)
                              {
                                v169 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v573 = v5;
                                v170 = *MEMORY[0x1E698F240];
                                v684 = *MEMORY[0x1E696A578];
                                v171 = v88;
                                v172 = v20;
                                v173 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v439 = objc_opt_class();
                                v174 = v173;
                                v20 = v172;
                                v88 = v171;
                                v23 = v550;
                                v21 = v545;
                                v537 = [v174 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v439, @"hasEverClickInLastWeek"];
                                v685 = v537;
                                v175 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v685 forKeys:&v684 count:1];
                                v176 = v170;
                                v6 = v601;
                                v5 = v573;
                                v538 = v175;
                                v540 = 0;
                                v17 = 0;
                                *v558 = [v169 initWithDomain:v176 code:2 userInfo:?];
                                v51 = v600;
                                v159 = v539;
                                goto LABEL_479;
                              }

                              v540 = 0;
                              v17 = 0;
                              v51 = v600;
                              v159 = v539;
                              v23 = v550;
                              v6 = v601;
LABEL_480:

                              goto LABEL_481;
                            }

                            v159 = v91;
                            if (v558)
                            {
                              v161 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v572 = v5;
                              v162 = *MEMORY[0x1E698F240];
                              v686 = *MEMORY[0x1E696A578];
                              v163 = v88;
                              v164 = v20;
                              v165 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v438 = objc_opt_class();
                              v166 = v165;
                              v20 = v164;
                              v88 = v163;
                              v23 = v550;
                              v21 = v545;
                              v540 = [v166 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v438, @"curationScore"];
                              v687 = v540;
                              v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v687 forKeys:&v686 count:1];
                              v168 = v162;
                              v6 = v601;
                              v5 = v572;
                              v541 = v167;
                              v542 = 0;
                              v17 = 0;
                              *v558 = [v161 initWithDomain:v168 code:2 userInfo:?];
                              v51 = v600;
                              goto LABEL_480;
                            }

                            v542 = 0;
                            v17 = 0;
                            v51 = v600;
                            v21 = v42;
                            v23 = v550;
                            v6 = v601;
LABEL_481:

                            v45 = v543;
                            goto LABEL_482;
                          }

                          if (v45)
                          {
                            v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v571 = v5;
                            v155 = *MEMORY[0x1E698F240];
                            v688 = *MEMORY[0x1E696A578];
                            v156 = v20;
                            v157 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v437 = objc_opt_class();
                            v158 = v157;
                            v20 = v156;
                            v88 = v555;
                            v23 = v550;
                            v21 = v545;
                            v542 = [v158 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v437, @"aestheticScore"];
                            v689 = v542;
                            v159 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v689 forKeys:&v688 count:1];
                            v160 = v155;
                            v6 = v601;
                            v5 = v571;
                            v543 = 0;
                            v17 = 0;
                            *v558 = [v154 initWithDomain:v160 code:2 userInfo:v159];
                            v51 = v600;
                            goto LABEL_481;
                          }

                          v17 = 0;
                          v51 = v600;
                          v21 = v42;
                          v23 = v550;
                          v6 = v601;
LABEL_482:

                          v67 = v561;
                          goto LABEL_483;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v41 = v604;
                          v42 = v21;
                          v546 = v40;
                          goto LABEL_49;
                        }

                        if (v20)
                        {
                          v122 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v570 = v5;
                          v123 = *MEMORY[0x1E698F240];
                          v690 = *MEMORY[0x1E696A578];
                          v124 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v436 = objc_opt_class();
                          v125 = v124;
                          v20 = v30;
                          v88 = v555;
                          v45 = [v125 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v436, @"favorited"];
                          v691 = v45;
                          v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v691 forKeys:&v690 count:1];
                          v127 = v123;
                          v5 = v570;
                          v544 = v126;
                          v546 = 0;
                          v17 = 0;
                          *v558 = [v122 initWithDomain:v127 code:2 userInfo:?];
                          v51 = v600;
                          goto LABEL_482;
                        }

                        v546 = 0;
                        v17 = 0;
                        v51 = v600;
                        v67 = v561;
                        v20 = v30;
                        v88 = v555;
LABEL_483:

                        goto LABEL_484;
                      }

                      if (v20)
                      {
                        v116 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v569 = v5;
                        v117 = *MEMORY[0x1E698F240];
                        v692 = *MEMORY[0x1E696A578];
                        v118 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v435 = objc_opt_class();
                        v119 = v118;
                        v67 = v561;
                        v20 = v30;
                        v88 = v555;
                        v546 = [v119 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v435, @"freshness"];
                        v693 = v546;
                        v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v693 forKeys:&v692 count:1];
                        v121 = v117;
                        v5 = v569;
                        v547 = v120;
                        v548 = 0;
                        v17 = 0;
                        *v558 = [v116 initWithDomain:v121 code:2 userInfo:?];
                        v51 = v600;
                        goto LABEL_483;
                      }

                      v548 = 0;
                      v17 = 0;
                      v51 = v600;
                      v67 = v561;
                      v20 = v30;
                      v88 = v555;
LABEL_484:

                      goto LABEL_485;
                    }

                    if (v20)
                    {
                      v110 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v563 = v19;
                      v111 = *MEMORY[0x1E698F240];
                      v694 = *MEMORY[0x1E696A578];
                      v112 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v434 = objc_opt_class();
                      v113 = v112;
                      v67 = v561;
                      v20 = v30;
                      v88 = v555;
                      v548 = [v113 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v434, @"L1Score"];
                      v695 = v548;
                      v114 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v695 forKeys:&v694 count:1];
                      v115 = v111;
                      v19 = v563;
                      v549 = v114;
                      v551 = 0;
                      v17 = 0;
                      *v558 = [v110 initWithDomain:v115 code:2 userInfo:?];
                      v51 = v600;
                      goto LABEL_484;
                    }

                    v551 = 0;
                    v17 = 0;
                    v51 = v600;
                    v67 = v561;
                    v20 = v30;
                    v88 = v555;
LABEL_485:

                    goto LABEL_486;
                  }

                  if (v20)
                  {
                    v104 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v562 = v19;
                    v105 = *MEMORY[0x1E698F240];
                    v696 = *MEMORY[0x1E696A578];
                    v106 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v433 = objc_opt_class();
                    v107 = v106;
                    v67 = v561;
                    v20 = v30;
                    v88 = v555;
                    v551 = [v107 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v433, @"matchedFieldsCount"];
                    v697 = v551;
                    v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v697 forKeys:&v696 count:1];
                    v109 = v105;
                    v19 = v562;
                    v552 = v108;
                    v553 = 0;
                    v17 = 0;
                    *v558 = [v104 initWithDomain:v109 code:2 userInfo:?];
                    v51 = v600;
                    goto LABEL_485;
                  }

                  v553 = 0;
                  v17 = 0;
                  v51 = v600;
                  v67 = v561;
                  v20 = v30;
                  v88 = v555;
LABEL_486:

                  goto LABEL_487;
                }

                if (v20)
                {
                  v556 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v98 = *MEMORY[0x1E698F240];
                  v698 = *MEMORY[0x1E696A578];
                  v99 = v20;
                  v100 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v432 = objc_opt_class();
                  v101 = v100;
                  v67 = v561;
                  v20 = v30;
                  v553 = [v101 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v432, @"matchedOCRImportance"];
                  v699 = v553;
                  v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v699 forKeys:&v698 count:1];
                  v103 = v98;
                  v6 = v601;
                  v554 = v102;
                  v88 = 0;
                  v17 = 0;
                  *v99 = [v556 initWithDomain:v103 code:2 userInfo:?];
                  v51 = v600;
                  goto LABEL_486;
                }

                v17 = 0;
                v51 = v600;
                v67 = v561;
                v20 = v30;
                v88 = 0;
LABEL_487:

                goto LABEL_488;
              }

              if (v20)
              {
                v86 = objc_alloc(MEMORY[0x1E696ABC0]);
                v87 = *MEMORY[0x1E698F240];
                v700 = *MEMORY[0x1E696A578];
                v559 = v20;
                v67 = v561;
                v88 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"matchedOCRCharacterRatio"];
                v701 = v88;
                v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v701 forKeys:&v700 count:1];
                v90 = v87;
                v6 = v601;
                v557 = v89;
                v20 = 0;
                v17 = 0;
                *v559 = [v86 initWithDomain:v90 code:2 userInfo:?];
                v51 = v600;
                goto LABEL_487;
              }

              v17 = 0;
              v51 = v600;
              v67 = v561;
LABEL_488:

              goto LABEL_489;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v561 = v25;
              goto LABEL_28;
            }

            if (v20)
            {
              v70 = objc_alloc(MEMORY[0x1E696ABC0]);
              v71 = *MEMORY[0x1E698F240];
              v704 = *MEMORY[0x1E696A578];
              v72 = v20;
              v73 = objc_alloc(MEMORY[0x1E696AEC0]);
              v431 = objc_opt_class();
              v74 = v73;
              v20 = v604;
              v566 = [v74 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v431, @"matchedSceneConfidence"];
              v705 = v566;
              v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v705 forKeys:&v704 count:1];
              v76 = v71;
              v6 = v601;
              v567 = v75;
              v67 = 0;
              v17 = 0;
              *v72 = [v70 initWithDomain:v76 code:2 userInfo:?];
              v51 = v600;
LABEL_490:

              goto LABEL_491;
            }

            v67 = 0;
            v17 = 0;
            v51 = v600;
            v20 = v604;
LABEL_491:

            goto LABEL_492;
          }

          if (v20)
          {
            v62 = objc_alloc(MEMORY[0x1E696ABC0]);
            v63 = *MEMORY[0x1E698F240];
            v706 = *MEMORY[0x1E696A578];
            v64 = v20;
            v65 = objc_alloc(MEMORY[0x1E696AEC0]);
            v430 = objc_opt_class();
            v66 = v65;
            v20 = v604;
            v67 = [v66 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v430, @"matchedSceneRatio"];
            v707 = v67;
            v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v707 forKeys:&v706 count:1];
            v69 = v63;
            v6 = v601;
            v599 = v68;
            v602 = 0;
            v17 = 0;
            *v64 = [v62 initWithDomain:v69 code:2 userInfo:?];
            v51 = v600;
            goto LABEL_491;
          }

          v602 = 0;
          v17 = 0;
          v51 = v600;
          v20 = v604;
LABEL_492:

          v10 = v603;
          goto LABEL_493;
        }

        v51 = v22;
        if (v20)
        {
          v568 = v5;
          v54 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E698F240];
          v708 = *MEMORY[0x1E696A578];
          v56 = v21;
          v57 = v20;
          v58 = v56;
          v602 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"matchedLocationRatio"];
          v709 = v602;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v709 forKeys:&v708 count:1];
          v60 = v54;
          v6 = v601;
          v5 = v568;
          v61 = v55;
          v23 = v59;
          v20 = 0;
          v17 = 0;
          *v57 = [v60 initWithDomain:v61 code:2 userInfo:v59];
          v21 = v58;
          goto LABEL_492;
        }

        v17 = 0;
LABEL_493:

        v7 = v605;
        goto LABEL_494;
      }

      if (a4)
      {
        v47 = v6;
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v710 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"matchedPeopleRatio"];
        v711 = v50;
        v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v711 forKeys:&v710 count:1];
        v52 = v48;
        v6 = v47;
        v53 = v49;
        v20 = v50;
        v21 = 0;
        v17 = 0;
        *a4 = [v52 initWithDomain:v53 code:2 userInfo:v51];
        goto LABEL_493;
      }

      v21 = 0;
      v17 = 0;
LABEL_494:

      v9 = v606;
      goto LABEL_495;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v9;
      v10 = [MEMORY[0x1E696AD98] numberWithInt:BMAeroMLPhotosSearchLabeledDataUISurfaceTypeFromString(v18)];

      goto LABEL_15;
    }

    if (a4)
    {
      v77 = objc_alloc(MEMORY[0x1E696ABC0]);
      v78 = v6;
      v79 = *MEMORY[0x1E698F240];
      v712 = *MEMORY[0x1E696A578];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"uiSurface"];
      v713 = v21;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v713 forKeys:&v712 count:1];
      v80 = v79;
      v6 = v78;
      v10 = 0;
      v17 = 0;
      *a4 = [v77 initWithDomain:v80 code:2 userInfo:v19];
      goto LABEL_494;
    }

    v10 = 0;
    v17 = 0;
LABEL_495:

    goto LABEL_496;
  }

  if (a4)
  {
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = v6;
    v13 = *MEMORY[0x1E698F240];
    v714 = *MEMORY[0x1E696A578];
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"searchSessionUUID"];
    v715[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v715 forKeys:&v714 count:1];
    v16 = v13;
    v6 = v12;
    v10 = v14;
    v9 = v15;
    v7 = 0;
    v17 = 0;
    *a4 = [v11 initWithDomain:v16 code:2 userInfo:v15];
    goto LABEL_495;
  }

  v7 = 0;
  v17 = 0;
LABEL_496:

  v416 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAeroMLPhotosSearchLabeledData *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v58 = a3;
  if (self->_searchSessionUUID)
  {
    PBDataWriterWriteStringField();
  }

  uiSurface = self->_uiSurface;
  PBDataWriterWriteUint32Field();
  if (self->_hasMatchedPeopleRatio)
  {
    matchedPeopleRatio = self->_matchedPeopleRatio;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasMatchedLocationRatio)
  {
    matchedLocationRatio = self->_matchedLocationRatio;
    PBDataWriterWriteDoubleField();
  }

  v7 = v58;
  if (self->_hasMatchedSceneRatio)
  {
    matchedSceneRatio = self->_matchedSceneRatio;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasMatchedSceneConfidence)
  {
    matchedSceneConfidence = self->_matchedSceneConfidence;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasMatchedSceneBoundingBox)
  {
    matchedSceneBoundingBox = self->_matchedSceneBoundingBox;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasMatchedOCRCharacterRatio)
  {
    matchedOCRCharacterRatio = self->_matchedOCRCharacterRatio;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasMatchedOCRImportance)
  {
    matchedOCRImportance = self->_matchedOCRImportance;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasMatchedFieldsCount)
  {
    matchedFieldsCount = self->_matchedFieldsCount;
    PBDataWriterWriteUint32Field();
    v7 = v58;
  }

  if (self->_hasL1Score)
  {
    L1Score = self->_L1Score;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasFreshness)
  {
    freshness = self->_freshness;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasFavorited)
  {
    favorited = self->_favorited;
    PBDataWriterWriteBOOLField();
    v7 = v58;
  }

  if (self->_hasAestheticScore)
  {
    aestheticScore = self->_aestheticScore;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasCurationScore)
  {
    curationScore = self->_curationScore;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasHasEverClickInLastWeek)
  {
    hasEverClickInLastWeek = self->_hasEverClickInLastWeek;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasHasEverClickInLastMonth)
  {
    hasEverClickInLastMonth = self->_hasEverClickInLastMonth;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasHasEverShareInLastWeek)
  {
    hasEverShareInLastWeek = self->_hasEverShareInLastWeek;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasHasEverShareInLastMonth)
  {
    hasEverShareInLastMonth = self->_hasEverShareInLastMonth;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountInLastWeekNormalizedAcrossItems)
  {
    clickCountInLastWeekNormalizedAcrossItems = self->_clickCountInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountInLastMonthNormalizedAcrossItems)
  {
    clickCountInLastMonthNormalizedAcrossItems = self->_clickCountInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountInLastWeekNormalizedAcrossItems)
  {
    shareCountInLastWeekNormalizedAcrossItems = self->_shareCountInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountInLastMonthNormalizedAcrossItems)
  {
    shareCountInLastMonthNormalizedAcrossItems = self->_shareCountInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = self->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = self->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenLocationInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenLocationInLastWeekNormalizedAcrossItems = self->_clickCountGivenLocationInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenLocationInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenLocationInLastMonthNormalizedAcrossItems = self->_clickCountGivenLocationInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = self->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = self->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenLocationInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenLocationInLastWeekNormalizedAcrossItems = self->_shareCountGivenLocationInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenLocationInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenLocationInLastMonthNormalizedAcrossItems = self->_shareCountGivenLocationInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClipScore)
  {
    clipScore = self->_clipScore;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasClicked)
  {
    clicked = self->_clicked;
    PBDataWriterWriteBOOLField();
    v7 = v58;
  }

  if (self->_hasClickOrder)
  {
    clickOrder = self->_clickOrder;
    PBDataWriterWriteUint32Field();
    v7 = v58;
  }

  if (self->_hasItemPosition)
  {
    itemPosition = self->_itemPosition;
    PBDataWriterWriteUint32Field();
    v7 = v58;
  }

  if (self->_hasL2ModelScore)
  {
    L2ModelScore = self->_L2ModelScore;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasIsDuplicate)
  {
    isDuplicate = self->_isDuplicate;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }

  if (self->_hasIsCompleteMatch)
  {
    isCompleteMatch = self->_isCompleteMatch;
    PBDataWriterWriteDoubleField();
    v7 = v58;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BMAeroMLPhotosSearchLabeledData;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMAeroMLPhotosSearchLabeledDataReadFrom(v5, v4))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v67 = objc_alloc(MEMORY[0x1E696AEC0]);
  v103 = [(BMAeroMLPhotosSearchLabeledData *)self searchSessionUUID];
  v106 = BMAeroMLPhotosSearchLabeledDataUISurfaceTypeAsString([(BMAeroMLPhotosSearchLabeledData *)self uiSurface]);
  v3 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self matchedPeopleRatio];
  v105 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self matchedLocationRatio];
  v104 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self matchedSceneRatio];
  v100 = [v5 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self matchedSceneConfidence];
  v102 = [v6 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self matchedSceneBoundingBox];
  v101 = [v7 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self matchedOCRCharacterRatio];
  v97 = [v8 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self matchedOCRImportance];
  v99 = [v9 numberWithDouble:?];
  v98 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchLabeledData matchedFieldsCount](self, "matchedFieldsCount")}];
  v10 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self L1Score];
  v95 = [v10 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self freshness];
  v96 = [v11 numberWithDouble:?];
  v92 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchLabeledData favorited](self, "favorited")}];
  v12 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self aestheticScore];
  v94 = [v12 numberWithDouble:?];
  v13 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self curationScore];
  v91 = [v13 numberWithDouble:?];
  v14 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self hasEverClickInLastWeek];
  v93 = [v14 numberWithDouble:?];
  v15 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self hasEverClickInLastMonth];
  v88 = [v15 numberWithDouble:?];
  v16 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self hasEverShareInLastWeek];
  v90 = [v16 numberWithDouble:?];
  v17 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self hasEverShareInLastMonth];
  v87 = [v17 numberWithDouble:?];
  v18 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountInLastWeekNormalizedAcrossItems];
  v86 = [v18 numberWithDouble:?];
  v19 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountInLastMonthNormalizedAcrossItems];
  v89 = [v19 numberWithDouble:?];
  v20 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountInLastWeekNormalizedAcrossItems];
  v83 = [v20 numberWithDouble:?];
  v21 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountInLastMonthNormalizedAcrossItems];
  v85 = [v21 numberWithDouble:?];
  v22 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
  v82 = [v22 numberWithDouble:?];
  v23 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
  v81 = [v23 numberWithDouble:?];
  v24 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems];
  v80 = [v24 numberWithDouble:?];
  v25 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems];
  v84 = [v25 numberWithDouble:?];
  v26 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
  v77 = [v26 numberWithDouble:?];
  v27 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
  v79 = [v27 numberWithDouble:?];
  v28 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
  v76 = [v28 numberWithDouble:?];
  v29 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
  v75 = [v29 numberWithDouble:?];
  v30 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
  v74 = [v30 numberWithDouble:?];
  v31 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
  v73 = [v31 numberWithDouble:?];
  v32 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
  v78 = [v32 numberWithDouble:?];
  v33 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
  v71 = [v33 numberWithDouble:?];
  v34 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
  v72 = [v34 numberWithDouble:?];
  v35 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
  v69 = [v35 numberWithDouble:?];
  v36 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems];
  v66 = [v36 numberWithDouble:?];
  v37 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems];
  v65 = [v37 numberWithDouble:?];
  v38 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
  v64 = [v38 numberWithDouble:?];
  v39 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
  v70 = [v39 numberWithDouble:?];
  v40 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
  v63 = [v40 numberWithDouble:?];
  v41 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
  v62 = [v41 numberWithDouble:?];
  v42 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
  v59 = [v42 numberWithDouble:?];
  v43 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
  v61 = [v43 numberWithDouble:?];
  v44 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
  v60 = [v44 numberWithDouble:?];
  v45 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
  v58 = [v45 numberWithDouble:?];
  v46 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self clipScore];
  v57 = [v46 numberWithDouble:?];
  v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchLabeledData clicked](self, "clicked")}];
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchLabeledData clickOrder](self, "clickOrder")}];
  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchLabeledData itemPosition](self, "itemPosition")}];
  v47 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self L2ModelScore];
  v48 = [v47 numberWithDouble:?];
  v49 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self isDuplicate];
  v50 = [v49 numberWithDouble:?];
  v51 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchLabeledData *)self isCompleteMatch];
  v52 = [v51 numberWithDouble:?];
  v68 = [v67 initWithFormat:@"BMAeroMLPhotosSearchLabeledData with searchSessionUUID: %@, uiSurface: %@, matchedPeopleRatio: %@, matchedLocationRatio: %@, matchedSceneRatio: %@, matchedSceneConfidence: %@, matchedSceneBoundingBox: %@, matchedOCRCharacterRatio: %@, matchedOCRImportance: %@, matchedFieldsCount: %@, L1Score: %@, freshness: %@, favorited: %@, aestheticScore: %@, curationScore: %@, hasEverClickInLastWeek: %@, hasEverClickInLastMonth: %@, hasEverShareInLastWeek: %@, hasEverShareInLastMonth: %@, clickCountInLastWeekNormalizedAcrossItems: %@, clickCountInLastMonthNormalizedAcrossItems: %@, shareCountInLastWeekNormalizedAcrossItems: %@, shareCountInLastMonthNormalizedAcrossItems: %@, clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems: %@, clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems: %@, clickCountGivenLocationInLastWeekNormalizedAcrossItems: %@, clickCountGivenLocationInLastMonthNormalizedAcrossItems: %@, clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems: %@, clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems: %@, clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems: %@, clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems: %@, shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems: %@, shareCountGivenLocationInLastWeekNormalizedAcrossItems: %@, shareCountGivenLocationInLastMonthNormalizedAcrossItems: %@, shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems: %@, clipScore: %@, clicked: %@, clickOrder: %@, itemPosition: %@, L2ModelScore: %@, isDuplicate: %@, isCompleteMatch: %@", v103, v106, v105, v104, v100, v102, v101, v97, v99, v98, v95, v96, v92, v94, v91, v93, v88, v90, v87, v86, v89, v83, v85, v82, v81, v80, v84, v77, v79, v76, v75, v74, v73, v78, v71, v72, v69, v66, v65, v64, v70, v63, v62, v59, v61, v60, v58, v57, v56, v55, v54, v48, v50, v52];

  return v68;
}

- (BMAeroMLPhotosSearchLabeledData)initWithSearchSessionUUID:(id)a3 uiSurface:(int)a4 matchedPeopleRatio:(id)a5 matchedLocationRatio:(id)a6 matchedSceneRatio:(id)a7 matchedSceneConfidence:(id)a8 matchedSceneBoundingBox:(id)a9 matchedOCRCharacterRatio:(id)a10 matchedOCRImportance:(id)a11 matchedFieldsCount:(id)a12 L1Score:(id)a13 freshness:(id)a14 favorited:(id)a15 aestheticScore:(id)a16 curationScore:(id)a17 hasEverClickInLastWeek:(id)a18 hasEverClickInLastMonth:(id)a19 hasEverShareInLastWeek:(id)a20 hasEverShareInLastMonth:(id)a21 clickCountInLastWeekNormalizedAcrossItems:(id)a22 clickCountInLastMonthNormalizedAcrossItems:(id)a23 shareCountInLastWeekNormalizedAcrossItems:(id)a24 shareCountInLastMonthNormalizedAcrossItems:(id)a25 clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)a26 clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)a27 clickCountGivenLocationInLastWeekNormalizedAcrossItems:(id)a28 clickCountGivenLocationInLastMonthNormalizedAcrossItems:(id)a29 clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)a30 clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)a31 clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)a32 clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)a33 clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)a34 clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)a35 clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)a36 clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)a37 shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)a38 shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)a39 shareCountGivenLocationInLastWeekNormalizedAcrossItems:(id)a40 shareCountGivenLocationInLastMonthNormalizedAcrossItems:(id)a41 shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)a42 shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)a43 shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)a44 shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)a45 shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)a46 shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)a47 shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)a48 shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)a49 clipScore:(id)a50 clicked:(id)a51 clickOrder:(id)a52 itemPosition:(id)a53 L2ModelScore:(id)a54 isDuplicate:(id)a55 isCompleteMatch:(id)a56
{
  v123 = a3;
  v167 = a5;
  v168 = a6;
  v164 = a7;
  v166 = a8;
  v163 = a9;
  v162 = a10;
  v161 = a11;
  v60 = a12;
  v61 = a13;
  v124 = a14;
  v160 = a15;
  v62 = a16;
  v63 = a17;
  v64 = a18;
  v65 = a19;
  v66 = a20;
  v67 = a21;
  v159 = a22;
  v158 = a23;
  v157 = a24;
  v156 = a25;
  v155 = a26;
  v154 = a27;
  v153 = a28;
  v152 = a29;
  v151 = a30;
  v150 = a31;
  v149 = a32;
  v148 = a33;
  v147 = a34;
  v146 = a35;
  v145 = a36;
  v144 = a37;
  v143 = a38;
  v142 = a39;
  v141 = a40;
  v140 = a41;
  v139 = a42;
  v138 = a43;
  v137 = a44;
  v136 = a45;
  v135 = a46;
  v134 = a47;
  v133 = a48;
  v132 = a49;
  v131 = a50;
  v130 = a51;
  v129 = a52;
  v128 = a53;
  v127 = a54;
  v126 = a55;
  v125 = a56;
  v169.receiver = self;
  v169.super_class = BMAeroMLPhotosSearchLabeledData;
  v68 = [(BMEventBase *)&v169 init];

  if (v68)
  {
    v68->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v68->_searchSessionUUID, a3);
    v68->_uiSurface = a4;
    if (v167)
    {
      v68->_hasMatchedPeopleRatio = 1;
      [v167 doubleValue];
    }

    else
    {
      v68->_hasMatchedPeopleRatio = 0;
      v69 = -1.0;
    }

    v68->_matchedPeopleRatio = v69;
    if (v168)
    {
      v68->_hasMatchedLocationRatio = 1;
      [v168 doubleValue];
    }

    else
    {
      v68->_hasMatchedLocationRatio = 0;
      v70 = -1.0;
    }

    v68->_matchedLocationRatio = v70;
    if (v164)
    {
      v68->_hasMatchedSceneRatio = 1;
      [v164 doubleValue];
    }

    else
    {
      v68->_hasMatchedSceneRatio = 0;
      v71 = -1.0;
    }

    v68->_matchedSceneRatio = v71;
    if (v166)
    {
      v68->_hasMatchedSceneConfidence = 1;
      [v166 doubleValue];
    }

    else
    {
      v68->_hasMatchedSceneConfidence = 0;
      v72 = -1.0;
    }

    v68->_matchedSceneConfidence = v72;
    if (v163)
    {
      v68->_hasMatchedSceneBoundingBox = 1;
      [v163 doubleValue];
    }

    else
    {
      v68->_hasMatchedSceneBoundingBox = 0;
      v73 = -1.0;
    }

    v68->_matchedSceneBoundingBox = v73;
    if (v162)
    {
      v68->_hasMatchedOCRCharacterRatio = 1;
      [v162 doubleValue];
    }

    else
    {
      v68->_hasMatchedOCRCharacterRatio = 0;
      v74 = -1.0;
    }

    v68->_matchedOCRCharacterRatio = v74;
    if (v161)
    {
      v68->_hasMatchedOCRImportance = 1;
      [v161 doubleValue];
    }

    else
    {
      v68->_hasMatchedOCRImportance = 0;
      v75 = -1.0;
    }

    v68->_matchedOCRImportance = v75;
    if (v60)
    {
      v68->_hasMatchedFieldsCount = 1;
      v76 = [v60 unsignedIntValue];
    }

    else
    {
      v76 = 0;
      v68->_hasMatchedFieldsCount = 0;
    }

    v68->_matchedFieldsCount = v76;
    if (v61)
    {
      v68->_hasL1Score = 1;
      [v61 doubleValue];
    }

    else
    {
      v68->_hasL1Score = 0;
      v77 = -1.0;
    }

    v68->_L1Score = v77;
    if (v124)
    {
      v68->_hasFreshness = 1;
      [v124 doubleValue];
    }

    else
    {
      v68->_hasFreshness = 0;
      v78 = -1.0;
    }

    v68->_freshness = v78;
    if (v160)
    {
      v68->_hasFavorited = 1;
      v68->_favorited = [v160 BOOLValue];
    }

    else
    {
      v68->_hasFavorited = 0;
      v68->_favorited = 0;
    }

    if (v62)
    {
      v68->_hasAestheticScore = 1;
      [v62 doubleValue];
    }

    else
    {
      v68->_hasAestheticScore = 0;
      v79 = -1.0;
    }

    v68->_aestheticScore = v79;
    if (v63)
    {
      v68->_hasCurationScore = 1;
      [v63 doubleValue];
    }

    else
    {
      v68->_hasCurationScore = 0;
      v80 = -1.0;
    }

    v68->_curationScore = v80;
    if (v64)
    {
      v68->_hasHasEverClickInLastWeek = 1;
      [v64 doubleValue];
    }

    else
    {
      v68->_hasHasEverClickInLastWeek = 0;
      v81 = -1.0;
    }

    v68->_hasEverClickInLastWeek = v81;
    if (v65)
    {
      v68->_hasHasEverClickInLastMonth = 1;
      [v65 doubleValue];
    }

    else
    {
      v68->_hasHasEverClickInLastMonth = 0;
      v82 = -1.0;
    }

    v68->_hasEverClickInLastMonth = v82;
    if (v66)
    {
      v68->_hasHasEverShareInLastWeek = 1;
      [v66 doubleValue];
    }

    else
    {
      v68->_hasHasEverShareInLastWeek = 0;
      v83 = -1.0;
    }

    v68->_hasEverShareInLastWeek = v83;
    if (v67)
    {
      v68->_hasHasEverShareInLastMonth = 1;
      [v67 doubleValue];
    }

    else
    {
      v68->_hasHasEverShareInLastMonth = 0;
      v84 = -1.0;
    }

    v68->_hasEverShareInLastMonth = v84;
    if (v159)
    {
      v68->_hasClickCountInLastWeekNormalizedAcrossItems = 1;
      [v159 doubleValue];
    }

    else
    {
      v68->_hasClickCountInLastWeekNormalizedAcrossItems = 0;
      v85 = -1.0;
    }

    v68->_clickCountInLastWeekNormalizedAcrossItems = v85;
    if (v158)
    {
      v68->_hasClickCountInLastMonthNormalizedAcrossItems = 1;
      [v158 doubleValue];
    }

    else
    {
      v68->_hasClickCountInLastMonthNormalizedAcrossItems = 0;
      v86 = -1.0;
    }

    v68->_clickCountInLastMonthNormalizedAcrossItems = v86;
    if (v157)
    {
      v68->_hasShareCountInLastWeekNormalizedAcrossItems = 1;
      [v157 doubleValue];
    }

    else
    {
      v68->_hasShareCountInLastWeekNormalizedAcrossItems = 0;
      v87 = -1.0;
    }

    v68->_shareCountInLastWeekNormalizedAcrossItems = v87;
    if (v156)
    {
      v68->_hasShareCountInLastMonthNormalizedAcrossItems = 1;
      [v156 doubleValue];
    }

    else
    {
      v68->_hasShareCountInLastMonthNormalizedAcrossItems = 0;
      v88 = -1.0;
    }

    v68->_shareCountInLastMonthNormalizedAcrossItems = v88;
    if (v155)
    {
      v68->_hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 1;
      [v155 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 0;
      v89 = -1.0;
    }

    v68->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = v89;
    if (v154)
    {
      v68->_hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 1;
      [v154 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 0;
      v90 = -1.0;
    }

    v68->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = v90;
    if (v153)
    {
      v68->_hasClickCountGivenLocationInLastWeekNormalizedAcrossItems = 1;
      [v153 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenLocationInLastWeekNormalizedAcrossItems = 0;
      v91 = -1.0;
    }

    v68->_clickCountGivenLocationInLastWeekNormalizedAcrossItems = v91;
    if (v152)
    {
      v68->_hasClickCountGivenLocationInLastMonthNormalizedAcrossItems = 1;
      [v152 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenLocationInLastMonthNormalizedAcrossItems = 0;
      v92 = -1.0;
    }

    v68->_clickCountGivenLocationInLastMonthNormalizedAcrossItems = v92;
    if (v151)
    {
      v68->_hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 1;
      [v151 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 0;
      v93 = -1.0;
    }

    v68->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = v93;
    if (v150)
    {
      v68->_hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 1;
      [v150 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 0;
      v94 = -1.0;
    }

    v68->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = v94;
    if (v149)
    {
      v68->_hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 1;
      [v149 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 0;
      v95 = -1.0;
    }

    v68->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = v95;
    if (v148)
    {
      v68->_hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 1;
      [v148 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 0;
      v96 = -1.0;
    }

    v68->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = v96;
    if (v147)
    {
      v68->_hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 1;
      [v147 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 0;
      v97 = -1.0;
    }

    v68->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = v97;
    if (v146)
    {
      v68->_hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 1;
      [v146 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 0;
      v98 = -1.0;
    }

    v68->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = v98;
    if (v145)
    {
      v68->_hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 1;
      [v145 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 0;
      v99 = -1.0;
    }

    v68->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = v99;
    if (v144)
    {
      v68->_hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 1;
      [v144 doubleValue];
    }

    else
    {
      v68->_hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 0;
      v100 = -1.0;
    }

    v68->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = v100;
    if (v143)
    {
      v68->_hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 1;
      [v143 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 0;
      v101 = -1.0;
    }

    v68->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = v101;
    if (v142)
    {
      v68->_hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 1;
      [v142 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 0;
      v102 = -1.0;
    }

    v68->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = v102;
    if (v141)
    {
      v68->_hasShareCountGivenLocationInLastWeekNormalizedAcrossItems = 1;
      [v141 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenLocationInLastWeekNormalizedAcrossItems = 0;
      v103 = -1.0;
    }

    v68->_shareCountGivenLocationInLastWeekNormalizedAcrossItems = v103;
    if (v140)
    {
      v68->_hasShareCountGivenLocationInLastMonthNormalizedAcrossItems = 1;
      [v140 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenLocationInLastMonthNormalizedAcrossItems = 0;
      v104 = -1.0;
    }

    v68->_shareCountGivenLocationInLastMonthNormalizedAcrossItems = v104;
    if (v139)
    {
      v68->_hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 1;
      [v139 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 0;
      v105 = -1.0;
    }

    v68->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = v105;
    if (v138)
    {
      v68->_hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 1;
      [v138 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 0;
      v106 = -1.0;
    }

    v68->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = v106;
    if (v137)
    {
      v68->_hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 1;
      [v137 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 0;
      v107 = -1.0;
    }

    v68->_shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = v107;
    if (v136)
    {
      v68->_hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 1;
      [v136 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 0;
      v108 = -1.0;
    }

    v68->_shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = v108;
    if (v135)
    {
      v68->_hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 1;
      [v135 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 0;
      v109 = -1.0;
    }

    v68->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = v109;
    if (v134)
    {
      v68->_hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 1;
      [v134 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 0;
      v110 = -1.0;
    }

    v68->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = v110;
    if (v133)
    {
      v68->_hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 1;
      [v133 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 0;
      v111 = -1.0;
    }

    v68->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = v111;
    if (v132)
    {
      v68->_hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 1;
      [v132 doubleValue];
    }

    else
    {
      v68->_hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 0;
      v112 = -1.0;
    }

    v68->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = v112;
    if (v131)
    {
      v68->_hasClipScore = 1;
      [v131 doubleValue];
    }

    else
    {
      v68->_hasClipScore = 0;
      v113 = -1.0;
    }

    v68->_clipScore = v113;
    if (v130)
    {
      v68->_hasClicked = 1;
      v68->_clicked = [v130 BOOLValue];
    }

    else
    {
      v68->_hasClicked = 0;
      v68->_clicked = 0;
    }

    v114 = v129;
    if (v129)
    {
      v68->_hasClickOrder = 1;
      v114 = [v129 unsignedIntValue];
    }

    else
    {
      v68->_hasClickOrder = 0;
    }

    v68->_clickOrder = v114;
    v115 = v128;
    if (v128)
    {
      v68->_hasItemPosition = 1;
      v115 = [v128 unsignedIntValue];
    }

    else
    {
      v68->_hasItemPosition = 0;
    }

    v68->_itemPosition = v115;
    if (v127)
    {
      v68->_hasL2ModelScore = 1;
      [v127 doubleValue];
    }

    else
    {
      v68->_hasL2ModelScore = 0;
      v116 = -1.0;
    }

    v68->_L2ModelScore = v116;
    if (v126)
    {
      v68->_hasIsDuplicate = 1;
      [v126 doubleValue];
    }

    else
    {
      v68->_hasIsDuplicate = 0;
      v117 = -1.0;
    }

    v68->_isDuplicate = v117;
    if (v125)
    {
      v68->_hasIsCompleteMatch = 1;
      [v125 doubleValue];
    }

    else
    {
      v68->_hasIsCompleteMatch = 0;
      v118 = -1.0;
    }

    v68->_isCompleteMatch = v118;
  }

  v119 = v68;

  return v119;
}

+ (id)protoFields
{
  v59[54] = *MEMORY[0x1E69E9840];
  v58 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"searchSessionUUID" number:1 type:13 subMessageClass:0];
  v59[0] = v58;
  v57 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uiSurface" number:2 type:4 subMessageClass:0];
  v59[1] = v57;
  v56 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedPeopleRatio" number:3 type:0 subMessageClass:0];
  v59[2] = v56;
  v55 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedLocationRatio" number:4 type:0 subMessageClass:0];
  v59[3] = v55;
  v54 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedSceneRatio" number:5 type:0 subMessageClass:0];
  v59[4] = v54;
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedSceneConfidence" number:6 type:0 subMessageClass:0];
  v59[5] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedSceneBoundingBox" number:7 type:0 subMessageClass:0];
  v59[6] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedOCRCharacterRatio" number:8 type:0 subMessageClass:0];
  v59[7] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedOCRImportance" number:9 type:0 subMessageClass:0];
  v59[8] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedFieldsCount" number:10 type:4 subMessageClass:0];
  v59[9] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"L1Score" number:11 type:0 subMessageClass:0];
  v59[10] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"freshness" number:12 type:0 subMessageClass:0];
  v59[11] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"favorited" number:13 type:12 subMessageClass:0];
  v59[12] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aestheticScore" number:14 type:0 subMessageClass:0];
  v59[13] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"curationScore" number:15 type:0 subMessageClass:0];
  v59[14] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverClickInLastWeek" number:16 type:0 subMessageClass:0];
  v59[15] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverClickInLastMonth" number:17 type:0 subMessageClass:0];
  v59[16] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverShareInLastWeek" number:18 type:0 subMessageClass:0];
  v59[17] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverShareInLastMonth" number:19 type:0 subMessageClass:0];
  v59[18] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountInLastWeekNormalizedAcrossItems" number:20 type:0 subMessageClass:0];
  v59[19] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountInLastMonthNormalizedAcrossItems" number:21 type:0 subMessageClass:0];
  v59[20] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountInLastWeekNormalizedAcrossItems" number:22 type:0 subMessageClass:0];
  v59[21] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountInLastMonthNormalizedAcrossItems" number:23 type:0 subMessageClass:0];
  v59[22] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" number:24 type:0 subMessageClass:0];
  v59[23] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" number:25 type:0 subMessageClass:0];
  v59[24] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenLocationInLastWeekNormalizedAcrossItems" number:26 type:0 subMessageClass:0];
  v59[25] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenLocationInLastMonthNormalizedAcrossItems" number:27 type:0 subMessageClass:0];
  v59[26] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems" number:28 type:0 subMessageClass:0];
  v59[27] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems" number:29 type:0 subMessageClass:0];
  v59[28] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" number:30 type:0 subMessageClass:0];
  v59[29] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" number:31 type:0 subMessageClass:0];
  v59[30] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" number:32 type:0 subMessageClass:0];
  v59[31] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" number:33 type:0 subMessageClass:0];
  v59[32] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" number:34 type:0 subMessageClass:0];
  v59[33] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" number:35 type:0 subMessageClass:0];
  v59[34] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" number:36 type:0 subMessageClass:0];
  v59[35] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" number:37 type:0 subMessageClass:0];
  v59[36] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenLocationInLastWeekNormalizedAcrossItems" number:38 type:0 subMessageClass:0];
  v59[37] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenLocationInLastMonthNormalizedAcrossItems" number:39 type:0 subMessageClass:0];
  v59[38] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems" number:40 type:0 subMessageClass:0];
  v59[39] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems" number:41 type:0 subMessageClass:0];
  v59[40] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" number:42 type:0 subMessageClass:0];
  v59[41] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" number:43 type:0 subMessageClass:0];
  v59[42] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" number:44 type:0 subMessageClass:0];
  v59[43] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" number:45 type:0 subMessageClass:0];
  v59[44] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" number:46 type:0 subMessageClass:0];
  v59[45] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" number:47 type:0 subMessageClass:0];
  v59[46] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clipScore" number:48 type:0 subMessageClass:0];
  v59[47] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clicked" number:49 type:12 subMessageClass:0];
  v59[48] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickOrder" number:50 type:4 subMessageClass:0];
  v59[49] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"itemPosition" number:51 type:4 subMessageClass:0];
  v59[50] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"L2ModelScore" number:52 type:0 subMessageClass:0];
  v59[51] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDuplicate" number:53 type:0 subMessageClass:0];
  v59[52] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCompleteMatch" number:54 type:0 subMessageClass:0];
  v59[53] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:54];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMAeroMLPhotosSearchLabeledData alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[18] = 0;
    }
  }

  return v4;
}

@end