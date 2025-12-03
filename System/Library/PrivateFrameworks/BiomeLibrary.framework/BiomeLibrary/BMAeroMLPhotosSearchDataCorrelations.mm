@interface BMAeroMLPhotosSearchDataCorrelations
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAeroMLPhotosSearchDataCorrelations)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAeroMLPhotosSearchDataCorrelations)initWithSearchSessionUUID:(id)d uiSurface:(int)surface matchedPeopleRatio:(id)ratio matchedLocationRatio:(id)locationRatio matchedSceneRatio:(id)sceneRatio matchedSceneConfidence:(id)confidence matchedSceneBoundingBox:(id)box matchedOCRCharacterRatio:(id)self0 matchedOCRImportance:(id)self1 matchedFieldsCount:(id)self2 L1Score:(id)self3 freshness:(id)self4 favorited:(id)self5 aestheticScore:(id)self6 curationScore:(id)self7 hasEverClickInLastWeek:(id)self8 hasEverClickInLastMonth:(id)self9 hasEverShareInLastWeek:(id)lastWeek hasEverShareInLastMonth:(id)lastMonth clickCountInLastWeekNormalizedAcrossItems:(id)items clickCountInLastMonthNormalizedAcrossItems:(id)acrossItems shareCountInLastWeekNormalizedAcrossItems:(id)normalizedAcrossItems shareCountInLastMonthNormalizedAcrossItems:(id)monthNormalizedAcrossItems clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)weekNormalizedAcrossItems clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)lastMonthNormalizedAcrossItems clickCountGivenLocationInLastWeekNormalizedAcrossItems:(id)lastWeekNormalizedAcrossItems clickCountGivenLocationInLastMonthNormalizedAcrossItems:(id)inLastMonthNormalizedAcrossItems clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)d0 clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)d1 clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)d2 clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)d3 clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)d4 clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)d5 clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)d6 clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)d7 shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)d8 shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)d9 shareCountGivenLocationInLastWeekNormalizedAcrossItems:(id)surface0 shareCountGivenLocationInLastMonthNormalizedAcrossItems:(id)surface1 shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)surface2 shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)surface3 shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)surface4 shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)surface5 shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)surface6 shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)surface7 shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)surface8 shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)surface9 clipScore:(id)ratio0 correlationMetricVersion:(id)ratio1 correlationMetricWindowInDays:(id)ratio2;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAeroMLPhotosSearchDataCorrelations

+ (id)columns
{
  v55[50] = *MEMORY[0x1E69E9840];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"searchSessionUUID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uiSurface" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedPeopleRatio" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedLocationRatio" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedSceneRatio" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedSceneConfidence" dataType:1 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedSceneBoundingBox" dataType:1 requestOnly:0 fieldNumber:7 protoDataType:0 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedOCRCharacterRatio" dataType:1 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedOCRImportance" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"matchedFieldsCount" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"L1Score" dataType:1 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"freshness" dataType:1 requestOnly:0 fieldNumber:12 protoDataType:0 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"favorited" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"aestheticScore" dataType:1 requestOnly:0 fieldNumber:14 protoDataType:0 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"curationScore" dataType:1 requestOnly:0 fieldNumber:15 protoDataType:0 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverClickInLastWeek" dataType:1 requestOnly:0 fieldNumber:16 protoDataType:0 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverClickInLastMonth" dataType:1 requestOnly:0 fieldNumber:17 protoDataType:0 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverShareInLastWeek" dataType:1 requestOnly:0 fieldNumber:18 protoDataType:0 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasEverShareInLastMonth" dataType:1 requestOnly:0 fieldNumber:19 protoDataType:0 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:20 protoDataType:0 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:21 protoDataType:0 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:22 protoDataType:0 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:23 protoDataType:0 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:24 protoDataType:0 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:25 protoDataType:0 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenLocationInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:26 protoDataType:0 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenLocationInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:27 protoDataType:0 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:28 protoDataType:0 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:29 protoDataType:0 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:30 protoDataType:0 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:31 protoDataType:0 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:32 protoDataType:0 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:33 protoDataType:0 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:34 protoDataType:0 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:35 protoDataType:0 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:36 protoDataType:0 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:37 protoDataType:0 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenLocationInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:38 protoDataType:0 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenLocationInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:39 protoDataType:0 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:40 protoDataType:0 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:41 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:42 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:43 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:44 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:45 protoDataType:0 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:46 protoDataType:0 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" dataType:1 requestOnly:0 fieldNumber:47 protoDataType:0 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clipScore" dataType:1 requestOnly:0 fieldNumber:48 protoDataType:0 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"correlationMetricVersion" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:4 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"correlationMetricWindowInDays" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:4 convertedType:0];
  v55[0] = v53;
  v55[1] = v54;
  v55[2] = v52;
  v55[3] = v51;
  v55[4] = v50;
  v55[5] = v49;
  v55[6] = v48;
  v55[7] = v47;
  v55[8] = v46;
  v55[9] = v45;
  v55[10] = v44;
  v55[11] = v43;
  v55[12] = v42;
  v55[13] = v41;
  v55[14] = v40;
  v55[15] = v39;
  v55[16] = v38;
  v55[17] = v37;
  v55[18] = v36;
  v55[19] = v35;
  v55[20] = v34;
  v55[21] = v33;
  v55[22] = v32;
  v55[23] = v31;
  v55[24] = v30;
  v55[25] = v29;
  v55[26] = v28;
  v55[27] = v27;
  v55[28] = v26;
  v55[29] = v25;
  v55[30] = v24;
  v55[31] = v23;
  v55[32] = v22;
  v55[33] = v21;
  v55[34] = v20;
  v55[35] = v19;
  v55[36] = v18;
  v55[37] = v17;
  v55[38] = v16;
  v55[39] = v15;
  v55[40] = v2;
  v55[41] = v3;
  v55[42] = v4;
  v55[43] = v5;
  v55[44] = v6;
  v55[45] = v7;
  v55[46] = v8;
  v55[47] = v9;
  v55[48] = v14;
  v55[49] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:50];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    searchSessionUUID = [(BMAeroMLPhotosSearchDataCorrelations *)self searchSessionUUID];
    searchSessionUUID2 = [v5 searchSessionUUID];
    v8 = searchSessionUUID2;
    if (searchSessionUUID == searchSessionUUID2)
    {
    }

    else
    {
      searchSessionUUID3 = [(BMAeroMLPhotosSearchDataCorrelations *)self searchSessionUUID];
      searchSessionUUID4 = [v5 searchSessionUUID];
      v11 = [searchSessionUUID3 isEqual:searchSessionUUID4];

      if (!v11)
      {
        goto LABEL_248;
      }
    }

    uiSurface = [(BMAeroMLPhotosSearchDataCorrelations *)self uiSurface];
    if (uiSurface == [v5 uiSurface])
    {
      if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedPeopleRatio](self, "hasMatchedPeopleRatio") && ![v5 hasMatchedPeopleRatio] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedPeopleRatio](self, "hasMatchedPeopleRatio") && objc_msgSend(v5, "hasMatchedPeopleRatio") && (-[BMAeroMLPhotosSearchDataCorrelations matchedPeopleRatio](self, "matchedPeopleRatio"), v15 = v14, objc_msgSend(v5, "matchedPeopleRatio"), v15 == v16))
      {
        if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedLocationRatio](self, "hasMatchedLocationRatio") && ![v5 hasMatchedLocationRatio] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedLocationRatio](self, "hasMatchedLocationRatio") && objc_msgSend(v5, "hasMatchedLocationRatio") && (-[BMAeroMLPhotosSearchDataCorrelations matchedLocationRatio](self, "matchedLocationRatio"), v18 = v17, objc_msgSend(v5, "matchedLocationRatio"), v18 == v19))
        {
          if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneRatio](self, "hasMatchedSceneRatio") && ![v5 hasMatchedSceneRatio] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneRatio](self, "hasMatchedSceneRatio") && objc_msgSend(v5, "hasMatchedSceneRatio") && (-[BMAeroMLPhotosSearchDataCorrelations matchedSceneRatio](self, "matchedSceneRatio"), v21 = v20, objc_msgSend(v5, "matchedSceneRatio"), v21 == v22))
          {
            if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneConfidence](self, "hasMatchedSceneConfidence") && ![v5 hasMatchedSceneConfidence] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneConfidence](self, "hasMatchedSceneConfidence") && objc_msgSend(v5, "hasMatchedSceneConfidence") && (-[BMAeroMLPhotosSearchDataCorrelations matchedSceneConfidence](self, "matchedSceneConfidence"), v24 = v23, objc_msgSend(v5, "matchedSceneConfidence"), v24 == v25))
            {
              if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneBoundingBox](self, "hasMatchedSceneBoundingBox") && ![v5 hasMatchedSceneBoundingBox] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedSceneBoundingBox](self, "hasMatchedSceneBoundingBox") && objc_msgSend(v5, "hasMatchedSceneBoundingBox") && (-[BMAeroMLPhotosSearchDataCorrelations matchedSceneBoundingBox](self, "matchedSceneBoundingBox"), v27 = v26, objc_msgSend(v5, "matchedSceneBoundingBox"), v27 == v28))
              {
                if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedOCRCharacterRatio](self, "hasMatchedOCRCharacterRatio") && ![v5 hasMatchedOCRCharacterRatio] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedOCRCharacterRatio](self, "hasMatchedOCRCharacterRatio") && objc_msgSend(v5, "hasMatchedOCRCharacterRatio") && (-[BMAeroMLPhotosSearchDataCorrelations matchedOCRCharacterRatio](self, "matchedOCRCharacterRatio"), v30 = v29, objc_msgSend(v5, "matchedOCRCharacterRatio"), v30 == v31))
                {
                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedOCRImportance](self, "hasMatchedOCRImportance") && ![v5 hasMatchedOCRImportance] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedOCRImportance](self, "hasMatchedOCRImportance") && objc_msgSend(v5, "hasMatchedOCRImportance") && (-[BMAeroMLPhotosSearchDataCorrelations matchedOCRImportance](self, "matchedOCRImportance"), v33 = v32, objc_msgSend(v5, "matchedOCRImportance"), v33 == v34))
                  {
                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasMatchedFieldsCount](self, "hasMatchedFieldsCount") && ![v5 hasMatchedFieldsCount] || -[BMAeroMLPhotosSearchDataCorrelations hasMatchedFieldsCount](self, "hasMatchedFieldsCount") && objc_msgSend(v5, "hasMatchedFieldsCount") && (v35 = -[BMAeroMLPhotosSearchDataCorrelations matchedFieldsCount](self, "matchedFieldsCount"), v35 == objc_msgSend(v5, "matchedFieldsCount")))
                    {
                      if (!-[BMAeroMLPhotosSearchDataCorrelations hasL1Score](self, "hasL1Score") && ![v5 hasL1Score] || -[BMAeroMLPhotosSearchDataCorrelations hasL1Score](self, "hasL1Score") && objc_msgSend(v5, "hasL1Score") && (-[BMAeroMLPhotosSearchDataCorrelations L1Score](self, "L1Score"), v37 = v36, objc_msgSend(v5, "L1Score"), v37 == v38))
                      {
                        if (!-[BMAeroMLPhotosSearchDataCorrelations hasFreshness](self, "hasFreshness") && ![v5 hasFreshness] || -[BMAeroMLPhotosSearchDataCorrelations hasFreshness](self, "hasFreshness") && objc_msgSend(v5, "hasFreshness") && (-[BMAeroMLPhotosSearchDataCorrelations freshness](self, "freshness"), v40 = v39, objc_msgSend(v5, "freshness"), v40 == v41))
                        {
                          if (!-[BMAeroMLPhotosSearchDataCorrelations hasFavorited](self, "hasFavorited") && ![v5 hasFavorited] || -[BMAeroMLPhotosSearchDataCorrelations hasFavorited](self, "hasFavorited") && objc_msgSend(v5, "hasFavorited") && (v42 = -[BMAeroMLPhotosSearchDataCorrelations favorited](self, "favorited"), v42 == objc_msgSend(v5, "favorited")))
                          {
                            if (!-[BMAeroMLPhotosSearchDataCorrelations hasAestheticScore](self, "hasAestheticScore") && ![v5 hasAestheticScore] || -[BMAeroMLPhotosSearchDataCorrelations hasAestheticScore](self, "hasAestheticScore") && objc_msgSend(v5, "hasAestheticScore") && (-[BMAeroMLPhotosSearchDataCorrelations aestheticScore](self, "aestheticScore"), v44 = v43, objc_msgSend(v5, "aestheticScore"), v44 == v45))
                            {
                              if (!-[BMAeroMLPhotosSearchDataCorrelations hasCurationScore](self, "hasCurationScore") && ![v5 hasCurationScore] || -[BMAeroMLPhotosSearchDataCorrelations hasCurationScore](self, "hasCurationScore") && objc_msgSend(v5, "hasCurationScore") && (-[BMAeroMLPhotosSearchDataCorrelations curationScore](self, "curationScore"), v47 = v46, objc_msgSend(v5, "curationScore"), v47 == v48))
                              {
                                if (!-[BMAeroMLPhotosSearchDataCorrelations hasHasEverClickInLastWeek](self, "hasHasEverClickInLastWeek") && ![v5 hasHasEverClickInLastWeek] || -[BMAeroMLPhotosSearchDataCorrelations hasHasEverClickInLastWeek](self, "hasHasEverClickInLastWeek") && objc_msgSend(v5, "hasHasEverClickInLastWeek") && (-[BMAeroMLPhotosSearchDataCorrelations hasEverClickInLastWeek](self, "hasEverClickInLastWeek"), v50 = v49, objc_msgSend(v5, "hasEverClickInLastWeek"), v50 == v51))
                                {
                                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasHasEverClickInLastMonth](self, "hasHasEverClickInLastMonth") && ![v5 hasHasEverClickInLastMonth] || -[BMAeroMLPhotosSearchDataCorrelations hasHasEverClickInLastMonth](self, "hasHasEverClickInLastMonth") && objc_msgSend(v5, "hasHasEverClickInLastMonth") && (-[BMAeroMLPhotosSearchDataCorrelations hasEverClickInLastMonth](self, "hasEverClickInLastMonth"), v53 = v52, objc_msgSend(v5, "hasEverClickInLastMonth"), v53 == v54))
                                  {
                                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasHasEverShareInLastWeek](self, "hasHasEverShareInLastWeek") && ![v5 hasHasEverShareInLastWeek] || -[BMAeroMLPhotosSearchDataCorrelations hasHasEverShareInLastWeek](self, "hasHasEverShareInLastWeek") && objc_msgSend(v5, "hasHasEverShareInLastWeek") && (-[BMAeroMLPhotosSearchDataCorrelations hasEverShareInLastWeek](self, "hasEverShareInLastWeek"), v56 = v55, objc_msgSend(v5, "hasEverShareInLastWeek"), v56 == v57))
                                    {
                                      if (!-[BMAeroMLPhotosSearchDataCorrelations hasHasEverShareInLastMonth](self, "hasHasEverShareInLastMonth") && ![v5 hasHasEverShareInLastMonth] || -[BMAeroMLPhotosSearchDataCorrelations hasHasEverShareInLastMonth](self, "hasHasEverShareInLastMonth") && objc_msgSend(v5, "hasHasEverShareInLastMonth") && (-[BMAeroMLPhotosSearchDataCorrelations hasEverShareInLastMonth](self, "hasEverShareInLastMonth"), v59 = v58, objc_msgSend(v5, "hasEverShareInLastMonth"), v59 == v60))
                                      {
                                        if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountInLastWeekNormalizedAcrossItems](self, "hasClickCountInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountInLastWeekNormalizedAcrossItems](self, "hasClickCountInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountInLastWeekNormalizedAcrossItems](self, "clickCountInLastWeekNormalizedAcrossItems"), v62 = v61, objc_msgSend(v5, "clickCountInLastWeekNormalizedAcrossItems"), v62 == v63))
                                        {
                                          if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountInLastMonthNormalizedAcrossItems](self, "hasClickCountInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountInLastMonthNormalizedAcrossItems](self, "hasClickCountInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountInLastMonthNormalizedAcrossItems](self, "clickCountInLastMonthNormalizedAcrossItems"), v65 = v64, objc_msgSend(v5, "clickCountInLastMonthNormalizedAcrossItems"), v65 == v66))
                                          {
                                            if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountInLastWeekNormalizedAcrossItems](self, "hasShareCountInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountInLastWeekNormalizedAcrossItems](self, "hasShareCountInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountInLastWeekNormalizedAcrossItems](self, "shareCountInLastWeekNormalizedAcrossItems"), v68 = v67, objc_msgSend(v5, "shareCountInLastWeekNormalizedAcrossItems"), v68 == v69))
                                            {
                                              if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountInLastMonthNormalizedAcrossItems](self, "hasShareCountInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountInLastMonthNormalizedAcrossItems](self, "hasShareCountInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountInLastMonthNormalizedAcrossItems](self, "shareCountInLastMonthNormalizedAcrossItems"), v71 = v70, objc_msgSend(v5, "shareCountInLastMonthNormalizedAcrossItems"), v71 == v72))
                                              {
                                                if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v74 = v73, objc_msgSend(v5, "clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v74 == v75))
                                                {
                                                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v77 = v76, objc_msgSend(v5, "clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v77 == v78))
                                                  {
                                                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenLocationInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenLocationInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenLocationInLastWeekNormalizedAcrossItems](self, "clickCountGivenLocationInLastWeekNormalizedAcrossItems"), v80 = v79, objc_msgSend(v5, "clickCountGivenLocationInLastWeekNormalizedAcrossItems"), v80 == v81))
                                                    {
                                                      if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenLocationInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenLocationInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenLocationInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenLocationInLastMonthNormalizedAcrossItems](self, "clickCountGivenLocationInLastMonthNormalizedAcrossItems"), v83 = v82, objc_msgSend(v5, "clickCountGivenLocationInLastMonthNormalizedAcrossItems"), v83 == v84))
                                                      {
                                                        if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v86 = v85, objc_msgSend(v5, "clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v86 == v87))
                                                        {
                                                          if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v89 = v88, objc_msgSend(v5, "clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v89 == v90))
                                                          {
                                                            if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v92 = v91, objc_msgSend(v5, "clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v92 == v93))
                                                            {
                                                              if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v95 = v94, objc_msgSend(v5, "clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v95 == v96))
                                                              {
                                                                if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v98 = v97, objc_msgSend(v5, "clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v98 == v99))
                                                                {
                                                                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v101 = v100, objc_msgSend(v5, "clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v101 == v102))
                                                                  {
                                                                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v104 = v103, objc_msgSend(v5, "clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v104 == v105))
                                                                    {
                                                                      if (!-[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v107 = v106, objc_msgSend(v5, "clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v107 == v108))
                                                                      {
                                                                        if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems](self, "shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v110 = v109, objc_msgSend(v5, "shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"), v110 == v111))
                                                                        {
                                                                          if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems](self, "shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v113 = v112, objc_msgSend(v5, "shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"), v113 == v114))
                                                                          {
                                                                            if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenLocationInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenLocationInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenLocationInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenLocationInLastWeekNormalizedAcrossItems](self, "shareCountGivenLocationInLastWeekNormalizedAcrossItems"), v116 = v115, objc_msgSend(v5, "shareCountGivenLocationInLastWeekNormalizedAcrossItems"), v116 == v117))
                                                                            {
                                                                              if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenLocationInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenLocationInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenLocationInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenLocationInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenLocationInLastMonthNormalizedAcrossItems](self, "shareCountGivenLocationInLastMonthNormalizedAcrossItems"), v119 = v118, objc_msgSend(v5, "shareCountGivenLocationInLastMonthNormalizedAcrossItems"), v119 == v120))
                                                                              {
                                                                                if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v122 = v121, objc_msgSend(v5, "shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"), v122 == v123))
                                                                                {
                                                                                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v125 = v124, objc_msgSend(v5, "shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"), v125 == v126))
                                                                                  {
                                                                                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v128 = v127, objc_msgSend(v5, "shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"), v128 == v129))
                                                                                    {
                                                                                      if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v131 = v130, objc_msgSend(v5, "shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"), v131 == v132))
                                                                                      {
                                                                                        if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v134 = v133, objc_msgSend(v5, "shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"), v134 == v135))
                                                                                        {
                                                                                          if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v137 = v136, objc_msgSend(v5, "shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"), v137 == v138))
                                                                                          {
                                                                                            if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && ![v5 hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems](self, "shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v140 = v139, objc_msgSend(v5, "shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"), v140 == v141))
                                                                                            {
                                                                                              if (!-[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && ![v5 hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems] || -[BMAeroMLPhotosSearchDataCorrelations hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && objc_msgSend(v5, "hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems") && (-[BMAeroMLPhotosSearchDataCorrelations shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems](self, "shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v143 = v142, objc_msgSend(v5, "shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"), v143 == v144))
                                                                                              {
                                                                                                if (!-[BMAeroMLPhotosSearchDataCorrelations hasClipScore](self, "hasClipScore") && ![v5 hasClipScore] || -[BMAeroMLPhotosSearchDataCorrelations hasClipScore](self, "hasClipScore") && objc_msgSend(v5, "hasClipScore") && (-[BMAeroMLPhotosSearchDataCorrelations clipScore](self, "clipScore"), v146 = v145, objc_msgSend(v5, "clipScore"), v146 == v147))
                                                                                                {
                                                                                                  if (!-[BMAeroMLPhotosSearchDataCorrelations hasCorrelationMetricVersion](self, "hasCorrelationMetricVersion") && ![v5 hasCorrelationMetricVersion] || -[BMAeroMLPhotosSearchDataCorrelations hasCorrelationMetricVersion](self, "hasCorrelationMetricVersion") && objc_msgSend(v5, "hasCorrelationMetricVersion") && (v148 = -[BMAeroMLPhotosSearchDataCorrelations correlationMetricVersion](self, "correlationMetricVersion"), v148 == objc_msgSend(v5, "correlationMetricVersion")))
                                                                                                  {
                                                                                                    if (!-[BMAeroMLPhotosSearchDataCorrelations hasCorrelationMetricWindowInDays](self, "hasCorrelationMetricWindowInDays") && ![v5 hasCorrelationMetricWindowInDays])
                                                                                                    {
                                                                                                      v12 = 1;
                                                                                                      goto LABEL_249;
                                                                                                    }

                                                                                                    if (-[BMAeroMLPhotosSearchDataCorrelations hasCorrelationMetricWindowInDays](self, "hasCorrelationMetricWindowInDays") && [v5 hasCorrelationMetricWindowInDays])
                                                                                                    {
                                                                                                      correlationMetricWindowInDays = [(BMAeroMLPhotosSearchDataCorrelations *)self correlationMetricWindowInDays];
                                                                                                      v12 = correlationMetricWindowInDays == [v5 correlationMetricWindowInDays];
LABEL_249:

                                                                                                      goto LABEL_250;
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

LABEL_248:
    v12 = 0;
    goto LABEL_249;
  }

  v12 = 0;
LABEL_250:

  return v12;
}

- (id)jsonDictionary
{
  v249[50] = *MEMORY[0x1E69E9840];
  searchSessionUUID = [(BMAeroMLPhotosSearchDataCorrelations *)self searchSessionUUID];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAeroMLPhotosSearchDataCorrelations uiSurface](self, "uiSurface")}];
  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedPeopleRatio]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedPeopleRatio], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedPeopleRatio];
    v6 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedPeopleRatio];
    v7 = [v6 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedLocationRatio]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedLocationRatio], fabs(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedLocationRatio];
    v9 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedLocationRatio];
    v10 = [v9 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedSceneRatio]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneRatio], fabs(v11) == INFINITY))
  {
    v13 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneRatio];
    v12 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneRatio];
    v13 = [v12 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedSceneConfidence]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneConfidence], fabs(v14) == INFINITY))
  {
    v205 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneConfidence];
    v15 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneConfidence];
    v205 = [v15 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedSceneBoundingBox]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneBoundingBox], fabs(v16) == INFINITY))
  {
    v18 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneBoundingBox];
    v17 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneBoundingBox];
    v18 = [v17 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedOCRCharacterRatio]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRCharacterRatio], fabs(v19) == INFINITY))
  {
    v247 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRCharacterRatio];
    v20 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRCharacterRatio];
    v247 = [v20 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedOCRImportance]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRImportance], fabs(v21) == INFINITY))
  {
    v246 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRImportance];
    v22 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRImportance];
    v246 = [v22 numberWithDouble:?];
  }

  if ([(BMAeroMLPhotosSearchDataCorrelations *)self hasMatchedFieldsCount])
  {
    v245 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations matchedFieldsCount](self, "matchedFieldsCount")}];
  }

  else
  {
    v245 = 0;
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasL1Score]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self L1Score], fabs(v23) == INFINITY))
  {
    v244 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self L1Score];
    v24 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self L1Score];
    v244 = [v24 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasFreshness]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self freshness], fabs(v25) == INFINITY))
  {
    v243 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self freshness];
    v26 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self freshness];
    v243 = [v26 numberWithDouble:?];
  }

  if ([(BMAeroMLPhotosSearchDataCorrelations *)self hasFavorited])
  {
    v242 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchDataCorrelations favorited](self, "favorited")}];
  }

  else
  {
    v242 = 0;
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasAestheticScore]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self aestheticScore], fabs(v27) == INFINITY))
  {
    v241 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self aestheticScore];
    v28 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self aestheticScore];
    v241 = [v28 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasCurationScore]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self curationScore], fabs(v29) == INFINITY))
  {
    v240 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self curationScore];
    v30 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self curationScore];
    v240 = [v30 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasHasEverClickInLastWeek]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastWeek], fabs(v31) == INFINITY))
  {
    v239 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastWeek];
    v32 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastWeek];
    v239 = [v32 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasHasEverClickInLastMonth]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastMonth], fabs(v33) == INFINITY))
  {
    v238 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastMonth];
    v34 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastMonth];
    v238 = [v34 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasHasEverShareInLastWeek]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastWeek], fabs(v35) == INFINITY))
  {
    v237 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastWeek];
    v36 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastWeek];
    v237 = [v36 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasHasEverShareInLastMonth]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastMonth], fabs(v37) == INFINITY))
  {
    v236 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastMonth];
    v38 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastMonth];
    v236 = [v38 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastWeekNormalizedAcrossItems], fabs(v39) == INFINITY))
  {
    v235 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastWeekNormalizedAcrossItems];
    v40 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastWeekNormalizedAcrossItems];
    v235 = [v40 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastMonthNormalizedAcrossItems], fabs(v41) == INFINITY))
  {
    v234 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastMonthNormalizedAcrossItems];
    v42 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastMonthNormalizedAcrossItems];
    v234 = [v42 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastWeekNormalizedAcrossItems], fabs(v43) == INFINITY))
  {
    v233 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastWeekNormalizedAcrossItems];
    v44 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastWeekNormalizedAcrossItems];
    v233 = [v44 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastMonthNormalizedAcrossItems], fabs(v45) == INFINITY))
  {
    v232 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastMonthNormalizedAcrossItems];
    v46 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastMonthNormalizedAcrossItems];
    v232 = [v46 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems], fabs(v47) == INFINITY))
  {
    v231 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v48 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v231 = [v48 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems], fabs(v49) == INFINITY))
  {
    v230 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v50 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v230 = [v50 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenLocationInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems], fabs(v51) == INFINITY))
  {
    v229 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems];
    v52 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems];
    v229 = [v52 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenLocationInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems], fabs(v53) == INFINITY))
  {
    v228 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems];
    v54 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems];
    v228 = [v54 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems], fabs(v55) == INFINITY))
  {
    v227 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v56 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v227 = [v56 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems], fabs(v57) == INFINITY))
  {
    v226 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v58 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v226 = [v58 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems], fabs(v59) == INFINITY))
  {
    v225 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v60 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v225 = [v60 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems], fabs(v61) == INFINITY))
  {
    v224 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v62 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v224 = [v62 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems], fabs(v63) == INFINITY))
  {
    v223 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v64 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v223 = [v64 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems], fabs(v65) == INFINITY))
  {
    v222 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v66 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v222 = [v66 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems], fabs(v67) == INFINITY))
  {
    v221 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v68 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v221 = [v68 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems], fabs(v69) == INFINITY))
  {
    v220 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v70 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v220 = [v70 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems], fabs(v71) == INFINITY))
  {
    v219 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v72 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
    v219 = [v72 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems], fabs(v73) == INFINITY))
  {
    v218 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v74 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
    v218 = [v74 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenLocationInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems], fabs(v75) == INFINITY))
  {
    v217 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems];
    v76 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems];
    v217 = [v76 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenLocationInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems], fabs(v77) == INFINITY))
  {
    v216 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems];
    v78 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems];
    v216 = [v78 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems], fabs(v79) == INFINITY))
  {
    v215 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v80 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
    v215 = [v80 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems], fabs(v81) == INFINITY))
  {
    v214 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v82 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
    v214 = [v82 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems], fabs(v83) == INFINITY))
  {
    v213 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v84 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
    v213 = [v84 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems], fabs(v85) == INFINITY))
  {
    v212 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v86 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
    v212 = [v86 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems], fabs(v87) == INFINITY))
  {
    v211 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v88 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
    v211 = [v88 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems], fabs(v89) == INFINITY))
  {
    v210 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v90 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
    v210 = [v90 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems], fabs(v91) == INFINITY))
  {
    v209 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v92 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
    v209 = [v92 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems], fabs(v93) == INFINITY))
  {
    v208 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v94 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
    v208 = [v94 numberWithDouble:?];
  }

  if (![(BMAeroMLPhotosSearchDataCorrelations *)self hasClipScore]|| ([(BMAeroMLPhotosSearchDataCorrelations *)self clipScore], fabs(v95) == INFINITY))
  {
    v207 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchDataCorrelations *)self clipScore];
    v96 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchDataCorrelations *)self clipScore];
    v207 = [v96 numberWithDouble:?];
  }

  if ([(BMAeroMLPhotosSearchDataCorrelations *)self hasCorrelationMetricVersion])
  {
    v206 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations correlationMetricVersion](self, "correlationMetricVersion")}];
  }

  else
  {
    v206 = 0;
  }

  if ([(BMAeroMLPhotosSearchDataCorrelations *)self hasCorrelationMetricWindowInDays])
  {
    v97 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations correlationMetricWindowInDays](self, "correlationMetricWindowInDays")}];
  }

  else
  {
    v97 = 0;
  }

  v248[0] = @"searchSessionUUID";
  null = searchSessionUUID;
  if (!searchSessionUUID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v197 = null;
  v249[0] = null;
  v248[1] = @"uiSurface";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v196 = null2;
  v249[1] = null2;
  v248[2] = @"matchedPeopleRatio";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v195 = null3;
  v249[2] = null3;
  v248[3] = @"matchedLocationRatio";
  null4 = v10;
  if (!v10)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v194 = null4;
  v249[3] = null4;
  v248[4] = @"matchedSceneRatio";
  null5 = v13;
  if (!v13)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v193 = null5;
  v249[4] = null5;
  v248[5] = @"matchedSceneConfidence";
  null6 = v205;
  if (!v205)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v192 = null6;
  v249[5] = null6;
  v248[6] = @"matchedSceneBoundingBox";
  null7 = v18;
  if (!v18)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v191 = null7;
  v249[6] = null7;
  v248[7] = @"matchedOCRCharacterRatio";
  null8 = v247;
  if (!v247)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v249[7] = null8;
  v248[8] = @"matchedOCRImportance";
  null9 = v246;
  if (!v246)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v249[8] = null9;
  v248[9] = @"matchedFieldsCount";
  null10 = v245;
  if (!v245)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v188 = null10;
  v249[9] = null10;
  v248[10] = @"L1Score";
  null11 = v244;
  if (!v244)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = v10;
  v200 = null11;
  v249[10] = null11;
  v248[11] = @"freshness";
  null12 = v243;
  if (!v243)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = searchSessionUUID;
  v199 = null12;
  v249[11] = null12;
  v248[12] = @"favorited";
  null13 = v242;
  if (!v242)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = null13;
  v249[12] = null13;
  v248[13] = @"aestheticScore";
  null14 = v241;
  if (!v241)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v187 = null14;
  v249[13] = null14;
  v248[14] = @"curationScore";
  null15 = v240;
  if (!v240)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v186 = null15;
  v249[14] = null15;
  v248[15] = @"hasEverClickInLastWeek";
  null16 = v239;
  if (!v239)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v185 = null16;
  v249[15] = null16;
  v248[16] = @"hasEverClickInLastMonth";
  null17 = v238;
  if (!v238)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v184 = null17;
  v249[16] = null17;
  v248[17] = @"hasEverShareInLastWeek";
  null18 = v237;
  if (!v237)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v183 = null18;
  v249[17] = null18;
  v248[18] = @"hasEverShareInLastMonth";
  null19 = v236;
  if (!v236)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v182 = null19;
  v249[18] = null19;
  v248[19] = @"clickCountInLastWeekNormalizedAcrossItems";
  null20 = v235;
  if (!v235)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v181 = null20;
  v249[19] = null20;
  v248[20] = @"clickCountInLastMonthNormalizedAcrossItems";
  null21 = v234;
  if (!v234)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v180 = null21;
  v249[20] = null21;
  v248[21] = @"shareCountInLastWeekNormalizedAcrossItems";
  null22 = v233;
  if (!v233)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v179 = null22;
  v249[21] = null22;
  v248[22] = @"shareCountInLastMonthNormalizedAcrossItems";
  null23 = v232;
  if (!v232)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v178 = null23;
  v249[22] = null23;
  v248[23] = @"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems";
  null24 = v231;
  if (!v231)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v177 = null24;
  v249[23] = null24;
  v248[24] = @"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems";
  null25 = v230;
  if (!v230)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v176 = null25;
  v249[24] = null25;
  v248[25] = @"clickCountGivenLocationInLastWeekNormalizedAcrossItems";
  null26 = v229;
  if (!v229)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v175 = null26;
  v249[25] = null26;
  v248[26] = @"clickCountGivenLocationInLastMonthNormalizedAcrossItems";
  null27 = v228;
  if (!v228)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v174 = null27;
  v249[26] = null27;
  v248[27] = @"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems";
  null28 = v227;
  if (!v227)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v173 = null28;
  v249[27] = null28;
  v248[28] = @"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems";
  null29 = v226;
  if (!v226)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v172 = null29;
  v249[28] = null29;
  v248[29] = @"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems";
  null30 = v225;
  if (!v225)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v171 = null30;
  v249[29] = null30;
  v248[30] = @"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems";
  null31 = v224;
  if (!v224)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v170 = null31;
  v249[30] = null31;
  v248[31] = @"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems";
  null32 = v223;
  if (!v223)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v169 = null32;
  v249[31] = null32;
  v248[32] = @"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems";
  null33 = v222;
  if (!v222)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v168 = null33;
  v249[32] = null33;
  v248[33] = @"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems";
  null34 = v221;
  if (!v221)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v167 = null34;
  v249[33] = null34;
  v248[34] = @"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems";
  null35 = v220;
  if (!v220)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v166 = null35;
  v249[34] = null35;
  v248[35] = @"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems";
  null36 = v219;
  if (!v219)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v165 = null36;
  v249[35] = null36;
  v248[36] = @"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems";
  null37 = v218;
  if (!v218)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v164 = null37;
  v249[36] = null37;
  v248[37] = @"shareCountGivenLocationInLastWeekNormalizedAcrossItems";
  null38 = v217;
  if (!v217)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v163 = null38;
  v249[37] = null38;
  v248[38] = @"shareCountGivenLocationInLastMonthNormalizedAcrossItems";
  null39 = v216;
  if (!v216)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v162 = null39;
  v249[38] = null39;
  v248[39] = @"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems";
  null40 = v215;
  if (!v215)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v161 = null40;
  v249[39] = null40;
  v248[40] = @"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems";
  null41 = v214;
  if (!v214)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v203 = v7;
  v160 = null41;
  v249[40] = null41;
  v248[41] = @"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems";
  null42 = v213;
  if (!v213)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v202 = v18;
  v159 = null42;
  v249[41] = null42;
  v248[42] = @"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems";
  null43 = v212;
  if (!v212)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v189 = null9;
  v158 = null43;
  v249[42] = null43;
  v248[43] = @"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems";
  null44 = v211;
  if (!v211)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v156 = null44;
  v249[43] = null44;
  v248[44] = @"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems";
  null45 = v210;
  if (!v210)
  {
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v201 = v4;
  v249[44] = null45;
  v248[45] = @"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems";
  null46 = v209;
  if (!v209)
  {
    null46 = [MEMORY[0x1E695DFB0] null];
  }

  v204 = v97;
  v249[45] = null46;
  v248[46] = @"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems";
  null47 = v208;
  if (!v208)
  {
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v190 = null8;
  v148 = v109;
  v249[46] = null47;
  v248[47] = @"clipScore";
  null48 = v207;
  if (!v207)
  {
    null48 = [MEMORY[0x1E695DFB0] null];
  }

  v150 = v111;
  v249[47] = null48;
  v248[48] = @"correlationMetricVersion";
  null49 = v206;
  if (!v206)
  {
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v249[48] = null49;
  v248[49] = @"correlationMetricWindowInDays";
  null50 = v204;
  if (!v204)
  {
    null50 = [MEMORY[0x1E695DFB0] null];
  }

  v249[49] = null50;
  v198 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v249 forKeys:v248 count:{50, v156}];
  if (!v204)
  {
  }

  v153 = v113;
  if (!v206)
  {

    v153 = v113;
  }

  if (!v207)
  {

    v153 = v113;
  }

  if (!v208)
  {

    v153 = v113;
  }

  if (!v209)
  {

    v153 = v113;
  }

  if (!v210)
  {

    v153 = v113;
  }

  if (!v211)
  {

    v153 = v113;
  }

  if (!v212)
  {

    v153 = v113;
  }

  if (!v213)
  {

    v153 = v113;
  }

  if (!v214)
  {

    v153 = v113;
  }

  if (!v215)
  {

    v153 = v113;
  }

  if (!v216)
  {

    v153 = v113;
  }

  if (!v217)
  {

    v153 = v113;
  }

  if (!v218)
  {

    v153 = v113;
  }

  if (!v219)
  {

    v153 = v113;
  }

  if (!v220)
  {

    v153 = v113;
  }

  if (!v221)
  {

    v153 = v113;
  }

  if (!v222)
  {

    v153 = v113;
  }

  if (!v223)
  {

    v153 = v113;
  }

  if (!v224)
  {

    v153 = v113;
  }

  if (!v225)
  {

    v153 = v113;
  }

  if (!v226)
  {

    v153 = v113;
  }

  if (!v227)
  {

    v153 = v113;
  }

  if (!v228)
  {

    v153 = v113;
  }

  if (!v229)
  {

    v153 = v113;
  }

  if (!v230)
  {

    v153 = v113;
  }

  if (!v231)
  {

    v153 = v113;
  }

  if (!v232)
  {

    v153 = v113;
  }

  if (!v233)
  {

    v153 = v113;
  }

  if (!v234)
  {

    v153 = v113;
  }

  if (!v235)
  {

    v153 = v113;
  }

  if (!v236)
  {

    v153 = v113;
  }

  if (!v237)
  {

    v153 = v113;
  }

  if (!v238)
  {

    v153 = v113;
  }

  if (!v239)
  {

    v153 = v113;
  }

  if (!v240)
  {

    v153 = v113;
  }

  if (!v241)
  {

    v153 = v113;
  }

  if (!v242)
  {
  }

  if (!v243)
  {
  }

  if (!v244)
  {
  }

  if (!v245)
  {
  }

  if (!v246)
  {
  }

  if (v247)
  {
    if (v202)
    {
      goto LABEL_375;
    }
  }

  else
  {

    if (v202)
    {
LABEL_375:
      if (v205)
      {
        goto LABEL_376;
      }

      goto LABEL_386;
    }
  }

  if (v205)
  {
LABEL_376:
    if (v13)
    {
      goto LABEL_377;
    }

    goto LABEL_387;
  }

LABEL_386:

  if (v13)
  {
LABEL_377:
    if (v148)
    {
      goto LABEL_378;
    }

    goto LABEL_388;
  }

LABEL_387:

  if (v148)
  {
LABEL_378:
    if (v203)
    {
      goto LABEL_379;
    }

    goto LABEL_389;
  }

LABEL_388:

  if (v203)
  {
LABEL_379:
    if (v201)
    {
      goto LABEL_380;
    }

LABEL_390:

    if (v150)
    {
      goto LABEL_381;
    }

    goto LABEL_391;
  }

LABEL_389:

  if (!v201)
  {
    goto LABEL_390;
  }

LABEL_380:
  if (v150)
  {
    goto LABEL_381;
  }

LABEL_391:

LABEL_381:
  v154 = *MEMORY[0x1E69E9840];

  return v198;
}

- (BMAeroMLPhotosSearchDataCorrelations)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v685[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v584 = [dictionaryCopy objectForKeyedSubscript:@"searchSessionUUID"];
  if (!v584 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v582 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v582 = v584;
LABEL_4:
    v585 = [dictionaryCopy objectForKeyedSubscript:@"uiSurface"];
    if (!v585 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v580 = 0;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v580 = v585;
LABEL_15:

LABEL_16:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"matchedPeopleRatio"];
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        errorCopy2 = error;
        v12 = 0;
        goto LABEL_19;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        v12 = v10;
LABEL_19:
        v13 = [dictionaryCopy objectForKeyedSubscript:@"matchedLocationRatio"];
        if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v577 = v13;
          v578 = 0;
          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v577 = v13;
          v578 = v13;
LABEL_22:
          v581 = [dictionaryCopy objectForKeyedSubscript:@"matchedSceneRatio"];
          if (!v581 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v579 = 0;
            goto LABEL_25;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v579 = v581;
LABEL_25:
            v14 = [dictionaryCopy objectForKeyedSubscript:@"matchedSceneConfidence"];
            v576 = v14;
            if (!v14 || (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v16 = 0;
              goto LABEL_28;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
LABEL_28:
              v17 = [dictionaryCopy objectForKeyedSubscript:@"matchedSceneBoundingBox"];
              v566 = v17;
              if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v533 = 0;
LABEL_31:
                v19 = [dictionaryCopy objectForKeyedSubscript:@"matchedOCRCharacterRatio"];
                v565 = v19;
                if (v19 && (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v21 = errorCopy2;
                    if (!errorCopy2)
                    {
                      v8 = 0;
                      v94 = v577;
                      v30 = v12;
                      errorCopy2 = v578;
LABEL_471:
                      v120 = v533;
                      goto LABEL_472;
                    }

                    v135 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v538 = v10;
                    v136 = *MEMORY[0x1E698F240];
                    v670 = *MEMORY[0x1E696A578];
                    v137 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v383 = objc_opt_class();
                    v138 = v137;
                    errorCopy2 = v578;
                    v30 = v12;
                    v24 = [v138 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v383, @"matchedOCRCharacterRatio"];
                    v671 = v24;
                    v139 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v671 forKeys:&v670 count:1];
                    v140 = v136;
                    v10 = v538;
                    v532 = v139;
                    v8 = 0;
                    *v21 = [v135 initWithDomain:v140 code:2 userInfo:?];
                    v21 = 0;
                    v94 = v577;
                    goto LABEL_470;
                  }

                  v21 = v20;
                }

                else
                {
                  v21 = 0;
                }

                v22 = [dictionaryCopy objectForKeyedSubscript:@"matchedOCRImportance"];
                v532 = v22;
                if (!v22 || (v23 = v22, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v24 = 0;
                  goto LABEL_37;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = v23;
LABEL_37:
                  v25 = [dictionaryCopy objectForKeyedSubscript:@"matchedFieldsCount"];
                  v527 = v21;
                  v530 = v25;
                  if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v522 = 0;
                    goto LABEL_40;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v522 = v26;
LABEL_40:
                    v27 = [dictionaryCopy objectForKeyedSubscript:@"L1Score"];
                    v521 = v24;
                    v528 = v27;
                    if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v525 = 0;
                      goto LABEL_43;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v525 = v28;
LABEL_43:
                      v29 = [dictionaryCopy objectForKeyedSubscript:@"freshness"];
                      v30 = v12;
                      if (!v29 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v31 = 0;
                        goto LABEL_46;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v31 = v29;
LABEL_46:
                        v32 = [dictionaryCopy objectForKeyedSubscript:@"favorited"];
                        v517 = v16;
                        v515 = v29;
                        v518 = v31;
                        v520 = v32;
                        if (!v32 || (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v519 = 0;
LABEL_49:
                          v523 = [dictionaryCopy objectForKeyedSubscript:@"aestheticScore"];
                          if (v523 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              if (!errorCopy2)
                              {
                                v516 = 0;
                                v8 = 0;
                                v94 = v577;
                                errorCopy2 = v578;
LABEL_464:
                                v144 = v522;
                                goto LABEL_465;
                              }

                              v174 = errorCopy2;
                              v175 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v572 = dictionaryCopy;
                              v176 = *MEMORY[0x1E698F240];
                              v658 = *MEMORY[0x1E696A578];
                              v177 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v389 = objc_opt_class();
                              v178 = v177;
                              errorCopy2 = v578;
                              v513 = [v178 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v389, @"aestheticScore"];
                              v659 = v513;
                              v179 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v659 forKeys:&v658 count:1];
                              v180 = v176;
                              dictionaryCopy = v572;
                              v514 = v179;
                              v516 = 0;
                              v8 = 0;
                              *v174 = [v175 initWithDomain:v180 code:2 userInfo:?];
                              v94 = v577;
                              goto LABEL_463;
                            }

                            v516 = v523;
                          }

                          else
                          {
                            v516 = 0;
                          }

                          v34 = [dictionaryCopy objectForKeyedSubscript:@"curationScore"];
                          v514 = v34;
                          if (!v34 || (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v513 = 0;
                            goto LABEL_55;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v513 = v35;
LABEL_55:
                            v36 = [dictionaryCopy objectForKeyedSubscript:@"hasEverClickInLastWeek"];
                            v512 = v36;
                            if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v38 = 0;
                              goto LABEL_58;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v38 = v37;
LABEL_58:
                              v39 = [dictionaryCopy objectForKeyedSubscript:@"hasEverClickInLastMonth"];
                              if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v510 = 0;
                                goto LABEL_61;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v510 = v39;
LABEL_61:
                                v40 = [dictionaryCopy objectForKeyedSubscript:@"hasEverShareInLastWeek"];
                                v509 = v40;
                                if (!v40 || (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v507 = 0;
                                  goto LABEL_64;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v507 = v41;
LABEL_64:
                                  v42 = [dictionaryCopy objectForKeyedSubscript:@"hasEverShareInLastMonth"];
                                  v506 = v42;
                                  if (!v42 || (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v504 = 0;
                                    goto LABEL_67;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v504 = v43;
LABEL_67:
                                    v44 = [dictionaryCopy objectForKeyedSubscript:@"clickCountInLastWeekNormalizedAcrossItems"];
                                    v503 = v44;
                                    if (!v44 || (v45 = v44, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v501 = 0;
                                      goto LABEL_70;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v501 = v45;
LABEL_70:
                                      v46 = [dictionaryCopy objectForKeyedSubscript:@"clickCountInLastMonthNormalizedAcrossItems"];
                                      v500 = v46;
                                      if (!v46 || (v47 = v46, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v498 = 0;
                                        goto LABEL_73;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v498 = v47;
LABEL_73:
                                        v48 = [dictionaryCopy objectForKeyedSubscript:@"shareCountInLastWeekNormalizedAcrossItems"];
                                        v497 = v48;
                                        if (!v48 || (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v495 = 0;
                                          goto LABEL_76;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v495 = v49;
LABEL_76:
                                          v50 = [dictionaryCopy objectForKeyedSubscript:@"shareCountInLastMonthNormalizedAcrossItems"];
                                          v494 = v50;
                                          if (!v50 || (v51 = v50, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v492 = 0;
                                            goto LABEL_79;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v492 = v51;
LABEL_79:
                                            v52 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                            v491 = v52;
                                            if (!v52 || (v53 = v52, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v489 = 0;
                                              goto LABEL_82;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v489 = v53;
LABEL_82:
                                              v54 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                              v488 = v54;
                                              if (!v54 || (v55 = v54, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v486 = 0;
                                                goto LABEL_85;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v486 = v55;
LABEL_85:
                                                v56 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                v485 = v56;
                                                if (!v56 || (v57 = v56, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v483 = 0;
                                                  goto LABEL_88;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v483 = v57;
LABEL_88:
                                                  v58 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                  v463 = v58;
                                                  if (!v58 || (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v462 = 0;
                                                    goto LABEL_91;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v462 = v59;
LABEL_91:
                                                    v60 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                    v461 = v60;
                                                    if (!v60 || (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v460 = 0;
                                                      goto LABEL_94;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v460 = v61;
LABEL_94:
                                                      v62 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                      v459 = v62;
                                                      if (!v62 || (v63 = v62, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v458 = 0;
                                                        goto LABEL_97;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v458 = v63;
LABEL_97:
                                                        v64 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                        v457 = v64;
                                                        if (!v64 || (v65 = v64, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v456 = 0;
                                                          goto LABEL_100;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v456 = v65;
LABEL_100:
                                                          v66 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                          v455 = v66;
                                                          if (!v66 || (v67 = v66, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v454 = 0;
                                                            goto LABEL_103;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v454 = v67;
LABEL_103:
                                                            v68 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                            v453 = v68;
                                                            if (!v68 || (v69 = v68, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v452 = 0;
                                                              goto LABEL_106;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v452 = v69;
LABEL_106:
                                                              v70 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                              v451 = v70;
                                                              if (!v70 || (v71 = v70, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v450 = 0;
                                                                goto LABEL_109;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v450 = v71;
LABEL_109:
                                                                v72 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                v449 = v72;
                                                                if (!v72 || (v73 = v72, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v448 = 0;
                                                                  goto LABEL_112;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v448 = v73;
LABEL_112:
                                                                  v74 = [dictionaryCopy objectForKeyedSubscript:@"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                  v446 = v74;
                                                                  if (!v74 || (v75 = v74, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v445 = 0;
LABEL_115:
                                                                    v76 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                                                    v443 = v76;
                                                                    if (v76 && (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                    {
                                                                      objc_opt_class();
                                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                      {
                                                                        if (!errorCopy2)
                                                                        {
                                                                          v444 = 0;
                                                                          v8 = 0;
                                                                          v94 = v577;
                                                                          errorCopy2 = v578;
LABEL_441:
                                                                          v316 = v443;
                                                                          goto LABEL_442;
                                                                        }

                                                                        v318 = errorCopy2;
                                                                        v475 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v559 = v10;
                                                                        v319 = *MEMORY[0x1E698F240];
                                                                        v614 = *MEMORY[0x1E696A578];
                                                                        v320 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                        v411 = objc_opt_class();
                                                                        v321 = v320;
                                                                        errorCopy2 = v578;
                                                                        v442 = [v321 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v411, @"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                                                        v615 = v442;
                                                                        v322 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v615 forKeys:&v614 count:1];
                                                                        v323 = v319;
                                                                        v10 = v559;
                                                                        v447 = v322;
                                                                        v444 = 0;
                                                                        v8 = 0;
                                                                        *v318 = [v475 initWithDomain:v323 code:2 userInfo:?];
                                                                        v94 = v577;
                                                                        goto LABEL_387;
                                                                      }

                                                                      v444 = v77;
                                                                    }

                                                                    else
                                                                    {
                                                                      v444 = 0;
                                                                    }

                                                                    v447 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                                                    if (!v447 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v442 = 0;
                                                                      goto LABEL_121;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v442 = v447;
LABEL_121:
                                                                      v78 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                                      v440 = v78;
                                                                      if (!v78 || (v79 = v78, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v441 = 0;
                                                                        goto LABEL_124;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v441 = v79;
LABEL_124:
                                                                        v80 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                                        v438 = v80;
                                                                        if (!v80 || (v81 = v80, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v439 = 0;
                                                                          goto LABEL_127;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v439 = v81;
LABEL_127:
                                                                          v82 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                                          v436 = v82;
                                                                          if (!v82 || (v83 = v82, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v437 = 0;
                                                                            goto LABEL_130;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v437 = v83;
LABEL_130:
                                                                            v84 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                                            v435 = v84;
                                                                            if (!v84 || (v85 = v84, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v534 = 0;
LABEL_133:
                                                                              v86 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                                              v433 = v86;
                                                                              if (v86 && (v87 = v86, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                              {
                                                                                objc_opt_class();
                                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                                {
                                                                                  v481 = v30;
                                                                                  if (!errorCopy2)
                                                                                  {
                                                                                    v434 = 0;
                                                                                    v8 = 0;
                                                                                    v94 = v577;
                                                                                    errorCopy2 = v578;
LABEL_434:
                                                                                    v346 = v534;
                                                                                    goto LABEL_435;
                                                                                  }

                                                                                  v575 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v355 = *MEMORY[0x1E698F240];
                                                                                  v602 = *MEMORY[0x1E696A578];
                                                                                  v95 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                                                  v603 = v95;
                                                                                  v432 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v603 forKeys:&v602 count:1];
                                                                                  v434 = 0;
                                                                                  v8 = 0;
                                                                                  *errorCopy2 = [v575 initWithDomain:v355 code:2 userInfo:?];
                                                                                  goto LABEL_418;
                                                                                }

                                                                                v434 = v87;
                                                                              }

                                                                              else
                                                                              {
                                                                                v434 = 0;
                                                                              }

                                                                              v88 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                                              v432 = v88;
                                                                              if (!v88 || (v89 = v88, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v428 = 0;
                                                                                goto LABEL_139;
                                                                              }

                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v428 = v89;
LABEL_139:
                                                                                v430 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                                                if (!v430 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                {
                                                                                  v431 = 0;
                                                                                  goto LABEL_142;
                                                                                }

                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v431 = v430;
LABEL_142:
                                                                                  v90 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                                                  v427 = v90;
                                                                                  if (!v90 || (v91 = v90, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                  {
                                                                                    v429 = 0;
                                                                                    goto LABEL_145;
                                                                                  }

                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v429 = v91;
LABEL_145:
                                                                                    v425 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                                    if (!v425 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                    {
                                                                                      v426 = 0;
                                                                                      goto LABEL_148;
                                                                                    }

                                                                                    objc_opt_class();
                                                                                    if (objc_opt_isKindOfClass())
                                                                                    {
                                                                                      v426 = v425;
LABEL_148:
                                                                                      v423 = [dictionaryCopy objectForKeyedSubscript:@"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                                      if (!v423 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                      {
                                                                                        v424 = 0;
                                                                                        goto LABEL_151;
                                                                                      }

                                                                                      objc_opt_class();
                                                                                      if (objc_opt_isKindOfClass())
                                                                                      {
                                                                                        v424 = v423;
LABEL_151:
                                                                                        v421 = [dictionaryCopy objectForKeyedSubscript:@"clipScore"];
                                                                                        if (!v421 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                        {
                                                                                          v422 = 0;
                                                                                          goto LABEL_154;
                                                                                        }

                                                                                        objc_opt_class();
                                                                                        if (objc_opt_isKindOfClass())
                                                                                        {
                                                                                          v422 = v421;
LABEL_154:
                                                                                          v420 = [dictionaryCopy objectForKeyedSubscript:@"correlationMetricVersion"];
                                                                                          if (!v420 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                          {
                                                                                            v464 = 0;
                                                                                            goto LABEL_157;
                                                                                          }

                                                                                          objc_opt_class();
                                                                                          if (objc_opt_isKindOfClass())
                                                                                          {
                                                                                            v464 = v420;
LABEL_157:
                                                                                            v92 = [dictionaryCopy objectForKeyedSubscript:@"correlationMetricWindowInDays"];
                                                                                            v418 = v92;
                                                                                            if (!v92 || (v93 = v92, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                            {
                                                                                              v419 = 0;
LABEL_160:
                                                                                              v94 = v577;
                                                                                              errorCopy2 = v578;
                                                                                              v95 = v428;
                                                                                              v8 = objc_retainAutoreleasedReturnValue( -[BMAeroMLPhotosSearchDataCorrelations initWithSearchSessionUUID:uiSurface:matchedPeopleRatio:matchedLocationRatio:matchedSceneRatio:matchedSceneConfidence:matchedSceneBoundingBox:matchedOCRCharacterRatio:matchedOCRImportance:matchedFieldsCount:L1Score:freshness:favorited:aestheticScore:curationScore:hasEverClickInLastWeek:hasEverClickInLastMonth:hasEverShareInLastWeek:hasEverShareInLastMonth:clickCountInLastWeekNormalizedAcrossItems:clickCountInLastMonthNormalizedAcrossItems:shareCountInLastWeekNormalizedAcrossItems:shareCountInLastMonthNormalizedAcrossItems:clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:clickCountGivenLocationInLastWeekNormalizedAcrossItems:clickCountGivenLocationInLastMonthNormalizedAcrossItems:clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:shareCountGivenLocationInLastWeekNormalizedAcrossItems:shareCountGivenLocationInLastMonthNormalizedAcrossItems:shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:clipScore:correlationMetricVersion:correlationMetricWindowInDays:]( self,  "initWithSearchSessionUUID:uiSurface:matchedPeopleRatio:matchedLocationRatio:matchedSceneRatio:matchedSceneConfidence:matchedSceneBoundingBox:matchedOCRCharacterRatio:matchedOCRImportance:matchedFieldsCount:L1Score:freshness:favorited:aestheticScore:curationScore:hasEverClickInLastWeek:hasEverClickInLastMonth:hasEverShareInLastWeek:hasEverShareInLastMonth:clickCountInLastWeekNormalizedAcrossItems:clickCountInLastMonthNormalizedAcrossItems:shareCountInLastWeekNormalizedAcrossItems:shareCountInLastMonthNormalizedAcrossItems:clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:clickCountGivenLocationInLastWeekNormalizedAcrossItems:clickCountGivenLocationInLastMonthNormalizedAcrossItems:clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:shareCountGivenLocationInLastWeekNormalizedAcrossItems:shareCountGivenLocationInLastMonthNormalizedAcrossItems:shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:clipScore:correlationMetricVersion:correlationMetricWindowInDays:",  v582,  [v580 intValue],  v30,  v578,  v579,  v517,  v533,  v527,  v521,  v522,  v525,  v31,  v519,  v516,  v513,  v38,  v510,  v507,  v504,  v501,  v498,  v495,  v492,  v489,  v486,  v483,  v462,  v460,  v458,  v456,  v454,  v452,  v450,  v448,  v445,  v444,  v442,  v441,  v439,  v437,  v534,  v434,  v428,  v431,  v429,  v426,
                                                                                                       v424,
                                                                                                       v422,
                                                                                                       v464,
                                                                                                       v419));
                                                                                              self = v8;
LABEL_426:

LABEL_427:
LABEL_428:

LABEL_429:
LABEL_430:

LABEL_431:
                                                                                              goto LABEL_432;
                                                                                            }

                                                                                            objc_opt_class();
                                                                                            if (objc_opt_isKindOfClass())
                                                                                            {
                                                                                              v419 = v93;
                                                                                              goto LABEL_160;
                                                                                            }

                                                                                            v417 = v38;
                                                                                            v373 = v10;
                                                                                            if (errorCopy2)
                                                                                            {
                                                                                              v374 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                              v375 = *MEMORY[0x1E698F240];
                                                                                              v586 = *MEMORY[0x1E696A578];
                                                                                              v376 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"correlationMetricWindowInDays"];
                                                                                              v587 = v376;
                                                                                              v377 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v587 forKeys:&v586 count:1];
                                                                                              *errorCopy2 = [v374 initWithDomain:v375 code:2 userInfo:v377];
                                                                                            }

                                                                                            v419 = 0;
                                                                                            v8 = 0;
                                                                                            v10 = v373;
LABEL_425:
                                                                                            v94 = v577;
                                                                                            errorCopy2 = v578;
                                                                                            v38 = v417;
                                                                                            v95 = v428;
                                                                                            goto LABEL_426;
                                                                                          }

                                                                                          v417 = v38;
                                                                                          if (errorCopy2)
                                                                                          {
                                                                                            v370 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                            v371 = *MEMORY[0x1E698F240];
                                                                                            v588 = *MEMORY[0x1E696A578];
                                                                                            v419 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"correlationMetricVersion"];
                                                                                            v589 = v419;
                                                                                            v418 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v589 forKeys:&v588 count:1];
                                                                                            v372 = [v370 initWithDomain:v371 code:2 userInfo:?];
                                                                                            v464 = 0;
                                                                                            v8 = 0;
                                                                                            *errorCopy2 = v372;
                                                                                            goto LABEL_425;
                                                                                          }

                                                                                          v464 = 0;
                                                                                          v8 = 0;
LABEL_489:
                                                                                          v94 = v577;
                                                                                          errorCopy2 = v578;
                                                                                          v38 = v417;
                                                                                          v95 = v428;
                                                                                          goto LABEL_427;
                                                                                        }

                                                                                        v417 = v38;
                                                                                        if (errorCopy2)
                                                                                        {
                                                                                          v367 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                          v368 = *MEMORY[0x1E698F240];
                                                                                          v590 = *MEMORY[0x1E696A578];
                                                                                          v464 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"clipScore"];
                                                                                          v591 = v464;
                                                                                          v420 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v591 forKeys:&v590 count:1];
                                                                                          v369 = [v367 initWithDomain:v368 code:2 userInfo:?];
                                                                                          v422 = 0;
                                                                                          v8 = 0;
                                                                                          *errorCopy2 = v369;
                                                                                          goto LABEL_489;
                                                                                        }

                                                                                        v422 = 0;
                                                                                        v8 = 0;
                                                                                        v94 = v577;
                                                                                        errorCopy2 = v578;
LABEL_487:
                                                                                        v95 = v428;
                                                                                        goto LABEL_428;
                                                                                      }

                                                                                      v482 = v30;
                                                                                      if (errorCopy2)
                                                                                      {
                                                                                        v365 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                        v366 = *MEMORY[0x1E698F240];
                                                                                        v592 = *MEMORY[0x1E696A578];
                                                                                        v422 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                                        v593 = v422;
                                                                                        v421 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v593 forKeys:&v592 count:1];
                                                                                        v424 = 0;
                                                                                        v8 = 0;
                                                                                        *errorCopy2 = [v365 initWithDomain:v366 code:2 userInfo:?];
                                                                                        v30 = v482;
                                                                                        v94 = v577;
                                                                                        errorCopy2 = v578;
                                                                                        goto LABEL_487;
                                                                                      }

                                                                                      v424 = 0;
                                                                                      v8 = 0;
LABEL_485:
                                                                                      v30 = v482;
                                                                                      v94 = v577;
                                                                                      errorCopy2 = v578;
                                                                                      v95 = v428;
                                                                                      goto LABEL_429;
                                                                                    }

                                                                                    v482 = v30;
                                                                                    if (errorCopy2)
                                                                                    {
                                                                                      v363 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                      v364 = *MEMORY[0x1E698F240];
                                                                                      v594 = *MEMORY[0x1E696A578];
                                                                                      v424 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                                      v595 = v424;
                                                                                      v423 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v595 forKeys:&v594 count:1];
                                                                                      v426 = 0;
                                                                                      v8 = 0;
                                                                                      *errorCopy2 = [v363 initWithDomain:v364 code:2 userInfo:?];
                                                                                      goto LABEL_485;
                                                                                    }

                                                                                    v426 = 0;
                                                                                    v8 = 0;
LABEL_483:
                                                                                    v30 = v482;
                                                                                    v94 = v577;
                                                                                    errorCopy2 = v578;
                                                                                    v95 = v428;
                                                                                    goto LABEL_430;
                                                                                  }

                                                                                  v482 = v30;
                                                                                  if (errorCopy2)
                                                                                  {
                                                                                    v361 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v362 = *MEMORY[0x1E698F240];
                                                                                    v596 = *MEMORY[0x1E696A578];
                                                                                    v426 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                                                    v597 = v426;
                                                                                    v425 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v597 forKeys:&v596 count:1];
                                                                                    v429 = 0;
                                                                                    v8 = 0;
                                                                                    *errorCopy2 = [v361 initWithDomain:v362 code:2 userInfo:?];
                                                                                    goto LABEL_483;
                                                                                  }

                                                                                  v429 = 0;
                                                                                  v8 = 0;
LABEL_481:
                                                                                  v30 = v482;
                                                                                  v94 = v577;
                                                                                  errorCopy2 = v578;
                                                                                  v95 = v428;
                                                                                  goto LABEL_431;
                                                                                }

                                                                                v482 = v30;
                                                                                if (errorCopy2)
                                                                                {
                                                                                  v359 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v360 = *MEMORY[0x1E698F240];
                                                                                  v598 = *MEMORY[0x1E696A578];
                                                                                  v429 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                                                  v599 = v429;
                                                                                  v427 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v599 forKeys:&v598 count:1];
                                                                                  v431 = 0;
                                                                                  v8 = 0;
                                                                                  *errorCopy2 = [v359 initWithDomain:v360 code:2 userInfo:?];
                                                                                  goto LABEL_481;
                                                                                }

                                                                                v431 = 0;
                                                                                v8 = 0;
                                                                                v94 = v577;
                                                                                errorCopy2 = v578;
                                                                                v95 = v428;
LABEL_432:

                                                                                goto LABEL_433;
                                                                              }

                                                                              v481 = v30;
                                                                              if (errorCopy2)
                                                                              {
                                                                                v356 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v357 = *MEMORY[0x1E698F240];
                                                                                v600 = *MEMORY[0x1E696A578];
                                                                                v431 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                                                v601 = v431;
                                                                                v430 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v601 forKeys:&v600 count:1];
                                                                                v358 = [v356 initWithDomain:v357 code:2 userInfo:?];
                                                                                v95 = 0;
                                                                                v8 = 0;
                                                                                *errorCopy2 = v358;
                                                                                v30 = v481;
                                                                                v94 = v577;
                                                                                errorCopy2 = v578;
                                                                                goto LABEL_432;
                                                                              }

                                                                              v95 = 0;
                                                                              v8 = 0;
LABEL_418:
                                                                              v30 = v481;
                                                                              v94 = v577;
                                                                              errorCopy2 = v578;
LABEL_433:

                                                                              goto LABEL_434;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v534 = v85;
                                                                              goto LABEL_133;
                                                                            }

                                                                            if (errorCopy2)
                                                                            {
                                                                              v349 = errorCopy2;
                                                                              v480 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v564 = v10;
                                                                              v350 = *MEMORY[0x1E698F240];
                                                                              v604 = *MEMORY[0x1E696A578];
                                                                              v351 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                              v416 = objc_opt_class();
                                                                              v352 = v351;
                                                                              errorCopy2 = v578;
                                                                              v434 = [v352 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v416, @"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                                              v605 = v434;
                                                                              v353 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v605 forKeys:&v604 count:1];
                                                                              v354 = v350;
                                                                              v10 = v564;
                                                                              v433 = v353;
                                                                              v346 = 0;
                                                                              v8 = 0;
                                                                              *v349 = [v480 initWithDomain:v354 code:2 userInfo:?];
                                                                              v94 = v577;
                                                                              v31 = v518;
LABEL_435:

                                                                              goto LABEL_436;
                                                                            }

                                                                            v346 = 0;
                                                                            v8 = 0;
                                                                            v94 = v577;
                                                                            errorCopy2 = v578;
LABEL_411:
                                                                            v31 = v518;
LABEL_436:

                                                                            goto LABEL_437;
                                                                          }

                                                                          if (errorCopy2)
                                                                          {
                                                                            v342 = errorCopy2;
                                                                            v479 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v563 = v10;
                                                                            v343 = *MEMORY[0x1E698F240];
                                                                            v606 = *MEMORY[0x1E696A578];
                                                                            v344 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                            v415 = objc_opt_class();
                                                                            v345 = v344;
                                                                            errorCopy2 = v578;
                                                                            v346 = [v345 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v415, @"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                                            v607 = v346;
                                                                            v347 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v607 forKeys:&v606 count:1];
                                                                            v348 = v343;
                                                                            v10 = v563;
                                                                            v435 = v347;
                                                                            v437 = 0;
                                                                            v8 = 0;
                                                                            *v342 = [v479 initWithDomain:v348 code:2 userInfo:?];
                                                                            v94 = v577;
                                                                            goto LABEL_411;
                                                                          }

                                                                          v437 = 0;
                                                                          v8 = 0;
                                                                          v94 = v577;
                                                                          errorCopy2 = v578;
LABEL_405:
                                                                          v31 = v518;
LABEL_437:

                                                                          goto LABEL_438;
                                                                        }

                                                                        if (errorCopy2)
                                                                        {
                                                                          v336 = errorCopy2;
                                                                          v478 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v562 = v10;
                                                                          v337 = *MEMORY[0x1E698F240];
                                                                          v608 = *MEMORY[0x1E696A578];
                                                                          v338 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                          v414 = objc_opt_class();
                                                                          v339 = v338;
                                                                          errorCopy2 = v578;
                                                                          v437 = [v339 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v414, @"shareCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                                          v609 = v437;
                                                                          v340 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v609 forKeys:&v608 count:1];
                                                                          v341 = v337;
                                                                          v10 = v562;
                                                                          v436 = v340;
                                                                          v439 = 0;
                                                                          v8 = 0;
                                                                          *v336 = [v478 initWithDomain:v341 code:2 userInfo:?];
                                                                          v94 = v577;
                                                                          goto LABEL_405;
                                                                        }

                                                                        v439 = 0;
                                                                        v8 = 0;
                                                                        v94 = v577;
                                                                        errorCopy2 = v578;
LABEL_399:
                                                                        v31 = v518;
LABEL_438:

                                                                        goto LABEL_439;
                                                                      }

                                                                      if (errorCopy2)
                                                                      {
                                                                        v330 = errorCopy2;
                                                                        v477 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v561 = v10;
                                                                        v331 = *MEMORY[0x1E698F240];
                                                                        v610 = *MEMORY[0x1E696A578];
                                                                        v332 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                        v413 = objc_opt_class();
                                                                        v333 = v332;
                                                                        errorCopy2 = v578;
                                                                        v439 = [v333 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v413, @"shareCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                                        v611 = v439;
                                                                        v334 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v611 forKeys:&v610 count:1];
                                                                        v335 = v331;
                                                                        v10 = v561;
                                                                        v438 = v334;
                                                                        v441 = 0;
                                                                        v8 = 0;
                                                                        *v330 = [v477 initWithDomain:v335 code:2 userInfo:?];
                                                                        v94 = v577;
                                                                        goto LABEL_399;
                                                                      }

                                                                      v441 = 0;
                                                                      v8 = 0;
                                                                      v94 = v577;
                                                                      errorCopy2 = v578;
LABEL_393:
                                                                      v31 = v518;
LABEL_439:

                                                                      goto LABEL_440;
                                                                    }

                                                                    if (errorCopy2)
                                                                    {
                                                                      v324 = errorCopy2;
                                                                      v476 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v560 = v10;
                                                                      v325 = *MEMORY[0x1E698F240];
                                                                      v612 = *MEMORY[0x1E696A578];
                                                                      v326 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                      v412 = objc_opt_class();
                                                                      v327 = v326;
                                                                      errorCopy2 = v578;
                                                                      v441 = [v327 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v412, @"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                                                      v613 = v441;
                                                                      v328 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v613 forKeys:&v612 count:1];
                                                                      v329 = v325;
                                                                      v10 = v560;
                                                                      v440 = v328;
                                                                      v442 = 0;
                                                                      v8 = 0;
                                                                      *v324 = [v476 initWithDomain:v329 code:2 userInfo:?];
                                                                      v94 = v577;
                                                                      goto LABEL_393;
                                                                    }

                                                                    v442 = 0;
                                                                    v8 = 0;
                                                                    v94 = v577;
                                                                    errorCopy2 = v578;
LABEL_387:
                                                                    v31 = v518;
LABEL_440:

                                                                    goto LABEL_441;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v445 = v75;
                                                                    goto LABEL_115;
                                                                  }

                                                                  if (errorCopy2)
                                                                  {
                                                                    v312 = errorCopy2;
                                                                    v474 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v558 = v10;
                                                                    v313 = *MEMORY[0x1E698F240];
                                                                    v616 = *MEMORY[0x1E696A578];
                                                                    v314 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v410 = objc_opt_class();
                                                                    v315 = v314;
                                                                    errorCopy2 = v578;
                                                                    v444 = [v315 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v410, @"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems"];
                                                                    v617 = v444;
                                                                    v316 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v617 forKeys:&v616 count:1];
                                                                    v317 = v313;
                                                                    v10 = v558;
                                                                    v445 = 0;
                                                                    v8 = 0;
                                                                    *v312 = [v474 initWithDomain:v317 code:2 userInfo:v316];
                                                                    v94 = v577;
                                                                    v31 = v518;
LABEL_442:

                                                                    goto LABEL_443;
                                                                  }

                                                                  v445 = 0;
                                                                  v8 = 0;
                                                                  v94 = v577;
                                                                  errorCopy2 = v578;
LABEL_376:
                                                                  v31 = v518;
LABEL_443:

                                                                  goto LABEL_444;
                                                                }

                                                                if (errorCopy2)
                                                                {
                                                                  v306 = errorCopy2;
                                                                  v473 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v557 = v10;
                                                                  v307 = *MEMORY[0x1E698F240];
                                                                  v618 = *MEMORY[0x1E696A578];
                                                                  v308 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v409 = objc_opt_class();
                                                                  v309 = v308;
                                                                  errorCopy2 = v578;
                                                                  v445 = [v309 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v409, @"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems"];
                                                                  v619 = v445;
                                                                  v310 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v619 forKeys:&v618 count:1];
                                                                  v311 = v307;
                                                                  v10 = v557;
                                                                  v446 = v310;
                                                                  v448 = 0;
                                                                  v8 = 0;
                                                                  *v306 = [v473 initWithDomain:v311 code:2 userInfo:?];
                                                                  v94 = v577;
                                                                  goto LABEL_376;
                                                                }

                                                                v448 = 0;
                                                                v8 = 0;
                                                                v94 = v577;
                                                                errorCopy2 = v578;
LABEL_370:
                                                                v31 = v518;
LABEL_444:

                                                                goto LABEL_445;
                                                              }

                                                              if (errorCopy2)
                                                              {
                                                                v300 = errorCopy2;
                                                                v472 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v556 = v10;
                                                                v301 = *MEMORY[0x1E698F240];
                                                                v620 = *MEMORY[0x1E696A578];
                                                                v302 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                v408 = objc_opt_class();
                                                                v303 = v302;
                                                                errorCopy2 = v578;
                                                                v448 = [v303 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v408, @"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems"];
                                                                v621 = v448;
                                                                v304 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v621 forKeys:&v620 count:1];
                                                                v305 = v301;
                                                                v10 = v556;
                                                                v449 = v304;
                                                                v450 = 0;
                                                                v8 = 0;
                                                                *v300 = [v472 initWithDomain:v305 code:2 userInfo:?];
                                                                v94 = v577;
                                                                goto LABEL_370;
                                                              }

                                                              v450 = 0;
                                                              v8 = 0;
                                                              v94 = v577;
                                                              errorCopy2 = v578;
LABEL_364:
                                                              v31 = v518;
LABEL_445:

                                                              goto LABEL_446;
                                                            }

                                                            if (errorCopy2)
                                                            {
                                                              v294 = errorCopy2;
                                                              v471 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v555 = v10;
                                                              v295 = *MEMORY[0x1E698F240];
                                                              v622 = *MEMORY[0x1E696A578];
                                                              v296 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v407 = objc_opt_class();
                                                              v297 = v296;
                                                              errorCopy2 = v578;
                                                              v450 = [v297 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v407, @"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems"];
                                                              v623 = v450;
                                                              v298 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v623 forKeys:&v622 count:1];
                                                              v299 = v295;
                                                              v10 = v555;
                                                              v451 = v298;
                                                              v452 = 0;
                                                              v8 = 0;
                                                              *v294 = [v471 initWithDomain:v299 code:2 userInfo:?];
                                                              v94 = v577;
                                                              goto LABEL_364;
                                                            }

                                                            v452 = 0;
                                                            v8 = 0;
                                                            v94 = v577;
                                                            errorCopy2 = v578;
LABEL_358:
                                                            v31 = v518;
LABEL_446:

                                                            goto LABEL_447;
                                                          }

                                                          if (errorCopy2)
                                                          {
                                                            v288 = errorCopy2;
                                                            v470 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v554 = v10;
                                                            v289 = *MEMORY[0x1E698F240];
                                                            v624 = *MEMORY[0x1E696A578];
                                                            v290 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v406 = objc_opt_class();
                                                            v291 = v290;
                                                            errorCopy2 = v578;
                                                            v452 = [v291 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v406, @"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems"];
                                                            v625 = v452;
                                                            v292 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v625 forKeys:&v624 count:1];
                                                            v293 = v289;
                                                            v10 = v554;
                                                            v453 = v292;
                                                            v454 = 0;
                                                            v8 = 0;
                                                            *v288 = [v470 initWithDomain:v293 code:2 userInfo:?];
                                                            v94 = v577;
                                                            goto LABEL_358;
                                                          }

                                                          v454 = 0;
                                                          v8 = 0;
                                                          v94 = v577;
                                                          errorCopy2 = v578;
LABEL_352:
                                                          v31 = v518;
LABEL_447:

                                                          goto LABEL_448;
                                                        }

                                                        if (errorCopy2)
                                                        {
                                                          v282 = errorCopy2;
                                                          v469 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v553 = v10;
                                                          v283 = *MEMORY[0x1E698F240];
                                                          v626 = *MEMORY[0x1E696A578];
                                                          v284 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v405 = objc_opt_class();
                                                          v285 = v284;
                                                          errorCopy2 = v578;
                                                          v454 = [v285 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v405, @"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems"];
                                                          v627 = v454;
                                                          v286 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v627 forKeys:&v626 count:1];
                                                          v287 = v283;
                                                          v10 = v553;
                                                          v455 = v286;
                                                          v456 = 0;
                                                          v8 = 0;
                                                          *v282 = [v469 initWithDomain:v287 code:2 userInfo:?];
                                                          v94 = v577;
                                                          goto LABEL_352;
                                                        }

                                                        v456 = 0;
                                                        v8 = 0;
                                                        v94 = v577;
                                                        errorCopy2 = v578;
LABEL_346:
                                                        v31 = v518;
LABEL_448:

                                                        goto LABEL_449;
                                                      }

                                                      if (errorCopy2)
                                                      {
                                                        v276 = errorCopy2;
                                                        v468 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v552 = v10;
                                                        v277 = *MEMORY[0x1E698F240];
                                                        v628 = *MEMORY[0x1E696A578];
                                                        v278 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v404 = objc_opt_class();
                                                        v279 = v278;
                                                        errorCopy2 = v578;
                                                        v456 = [v279 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v404, @"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems"];
                                                        v629 = v456;
                                                        v280 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v629 forKeys:&v628 count:1];
                                                        v281 = v277;
                                                        v10 = v552;
                                                        v457 = v280;
                                                        v458 = 0;
                                                        v8 = 0;
                                                        *v276 = [v468 initWithDomain:v281 code:2 userInfo:?];
                                                        v94 = v577;
                                                        goto LABEL_346;
                                                      }

                                                      v458 = 0;
                                                      v8 = 0;
                                                      v94 = v577;
                                                      errorCopy2 = v578;
LABEL_340:
                                                      v31 = v518;
LABEL_449:

                                                      goto LABEL_450;
                                                    }

                                                    if (errorCopy2)
                                                    {
                                                      v270 = errorCopy2;
                                                      v467 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v551 = v10;
                                                      v271 = *MEMORY[0x1E698F240];
                                                      v630 = *MEMORY[0x1E696A578];
                                                      v272 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v403 = objc_opt_class();
                                                      v273 = v272;
                                                      errorCopy2 = v578;
                                                      v458 = [v273 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v403, @"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems"];
                                                      v631 = v458;
                                                      v274 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v631 forKeys:&v630 count:1];
                                                      v275 = v271;
                                                      v10 = v551;
                                                      v459 = v274;
                                                      v460 = 0;
                                                      v8 = 0;
                                                      *v270 = [v467 initWithDomain:v275 code:2 userInfo:?];
                                                      v94 = v577;
                                                      goto LABEL_340;
                                                    }

                                                    v460 = 0;
                                                    v8 = 0;
                                                    v94 = v577;
                                                    errorCopy2 = v578;
LABEL_334:
                                                    v31 = v518;
LABEL_450:

                                                    goto LABEL_451;
                                                  }

                                                  if (errorCopy2)
                                                  {
                                                    v264 = errorCopy2;
                                                    v466 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v550 = v10;
                                                    v265 = *MEMORY[0x1E698F240];
                                                    v632 = *MEMORY[0x1E696A578];
                                                    v266 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v402 = objc_opt_class();
                                                    v267 = v266;
                                                    errorCopy2 = v578;
                                                    v460 = [v267 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v402, @"clickCountGivenLocationInLastMonthNormalizedAcrossItems"];
                                                    v633 = v460;
                                                    v268 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v633 forKeys:&v632 count:1];
                                                    v269 = v265;
                                                    v10 = v550;
                                                    v461 = v268;
                                                    v462 = 0;
                                                    v8 = 0;
                                                    *v264 = [v466 initWithDomain:v269 code:2 userInfo:?];
                                                    v94 = v577;
                                                    goto LABEL_334;
                                                  }

                                                  v462 = 0;
                                                  v8 = 0;
                                                  v94 = v577;
                                                  errorCopy2 = v578;
LABEL_328:
                                                  v31 = v518;
LABEL_451:

                                                  goto LABEL_452;
                                                }

                                                if (errorCopy2)
                                                {
                                                  v257 = errorCopy2;
                                                  v484 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v549 = v10;
                                                  v258 = *MEMORY[0x1E698F240];
                                                  v634 = *MEMORY[0x1E696A578];
                                                  v259 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v401 = objc_opt_class();
                                                  v260 = v259;
                                                  errorCopy2 = v578;
                                                  v462 = [v260 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v401, @"clickCountGivenLocationInLastWeekNormalizedAcrossItems"];
                                                  v635 = v462;
                                                  v261 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v635 forKeys:&v634 count:1];
                                                  v262 = v258;
                                                  v10 = v549;
                                                  v463 = v261;
                                                  v263 = [v484 initWithDomain:v262 code:2 userInfo:?];
                                                  v483 = 0;
                                                  v8 = 0;
                                                  *v257 = v263;
                                                  v94 = v577;
                                                  goto LABEL_328;
                                                }

                                                v483 = 0;
                                                v8 = 0;
                                                v94 = v577;
                                                errorCopy2 = v578;
LABEL_322:
                                                v31 = v518;
LABEL_452:

                                                goto LABEL_453;
                                              }

                                              if (errorCopy2)
                                              {
                                                v250 = errorCopy2;
                                                v487 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v548 = v10;
                                                v251 = *MEMORY[0x1E698F240];
                                                v636 = *MEMORY[0x1E696A578];
                                                v252 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v400 = objc_opt_class();
                                                v253 = v252;
                                                errorCopy2 = v578;
                                                v483 = [v253 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v400, @"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems"];
                                                v637 = v483;
                                                v254 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v637 forKeys:&v636 count:1];
                                                v255 = v251;
                                                v10 = v548;
                                                v485 = v254;
                                                v256 = [v487 initWithDomain:v255 code:2 userInfo:?];
                                                v486 = 0;
                                                v8 = 0;
                                                *v250 = v256;
                                                v94 = v577;
                                                goto LABEL_322;
                                              }

                                              v486 = 0;
                                              v8 = 0;
                                              v94 = v577;
                                              errorCopy2 = v578;
LABEL_316:
                                              v31 = v518;
LABEL_453:

                                              goto LABEL_454;
                                            }

                                            if (errorCopy2)
                                            {
                                              v243 = errorCopy2;
                                              v490 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v547 = v10;
                                              v244 = *MEMORY[0x1E698F240];
                                              v638 = *MEMORY[0x1E696A578];
                                              v245 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v399 = objc_opt_class();
                                              v246 = v245;
                                              errorCopy2 = v578;
                                              v486 = [v246 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v399, @"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems"];
                                              v639 = v486;
                                              v247 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v639 forKeys:&v638 count:1];
                                              v248 = v244;
                                              v10 = v547;
                                              v488 = v247;
                                              v249 = [v490 initWithDomain:v248 code:2 userInfo:?];
                                              v489 = 0;
                                              v8 = 0;
                                              *v243 = v249;
                                              v94 = v577;
                                              goto LABEL_316;
                                            }

                                            v489 = 0;
                                            v8 = 0;
                                            v94 = v577;
                                            errorCopy2 = v578;
LABEL_310:
                                            v31 = v518;
LABEL_454:

                                            goto LABEL_455;
                                          }

                                          if (errorCopy2)
                                          {
                                            v236 = errorCopy2;
                                            v493 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v546 = v10;
                                            v237 = *MEMORY[0x1E698F240];
                                            v640 = *MEMORY[0x1E696A578];
                                            v238 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v398 = objc_opt_class();
                                            v239 = v238;
                                            errorCopy2 = v578;
                                            v489 = [v239 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v398, @"shareCountInLastMonthNormalizedAcrossItems"];
                                            v641 = v489;
                                            v240 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v641 forKeys:&v640 count:1];
                                            v241 = v237;
                                            v10 = v546;
                                            v491 = v240;
                                            v242 = [v493 initWithDomain:v241 code:2 userInfo:?];
                                            v492 = 0;
                                            v8 = 0;
                                            *v236 = v242;
                                            v94 = v577;
                                            goto LABEL_310;
                                          }

                                          v492 = 0;
                                          v8 = 0;
                                          v94 = v577;
                                          errorCopy2 = v578;
LABEL_304:
                                          v31 = v518;
LABEL_455:

                                          goto LABEL_456;
                                        }

                                        if (errorCopy2)
                                        {
                                          v229 = errorCopy2;
                                          v496 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v545 = v10;
                                          v230 = *MEMORY[0x1E698F240];
                                          v642 = *MEMORY[0x1E696A578];
                                          v231 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v397 = objc_opt_class();
                                          v232 = v231;
                                          errorCopy2 = v578;
                                          v492 = [v232 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v397, @"shareCountInLastWeekNormalizedAcrossItems"];
                                          v643 = v492;
                                          v233 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v643 forKeys:&v642 count:1];
                                          v234 = v230;
                                          v10 = v545;
                                          v494 = v233;
                                          v235 = [v496 initWithDomain:v234 code:2 userInfo:?];
                                          v495 = 0;
                                          v8 = 0;
                                          *v229 = v235;
                                          v94 = v577;
                                          goto LABEL_304;
                                        }

                                        v495 = 0;
                                        v8 = 0;
                                        v94 = v577;
                                        errorCopy2 = v578;
LABEL_298:
                                        v31 = v518;
LABEL_456:

                                        goto LABEL_457;
                                      }

                                      if (errorCopy2)
                                      {
                                        v222 = errorCopy2;
                                        v499 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v544 = v10;
                                        v223 = *MEMORY[0x1E698F240];
                                        v644 = *MEMORY[0x1E696A578];
                                        v224 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v396 = objc_opt_class();
                                        v225 = v224;
                                        errorCopy2 = v578;
                                        v495 = [v225 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v396, @"clickCountInLastMonthNormalizedAcrossItems"];
                                        v645 = v495;
                                        v226 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v645 forKeys:&v644 count:1];
                                        v227 = v223;
                                        v10 = v544;
                                        v497 = v226;
                                        v228 = [v499 initWithDomain:v227 code:2 userInfo:?];
                                        v498 = 0;
                                        v8 = 0;
                                        *v222 = v228;
                                        v94 = v577;
                                        goto LABEL_298;
                                      }

                                      v498 = 0;
                                      v8 = 0;
                                      v94 = v577;
                                      errorCopy2 = v578;
LABEL_292:
                                      v31 = v518;
LABEL_457:

                                      goto LABEL_458;
                                    }

                                    if (errorCopy2)
                                    {
                                      v215 = errorCopy2;
                                      v502 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v543 = v10;
                                      v216 = *MEMORY[0x1E698F240];
                                      v646 = *MEMORY[0x1E696A578];
                                      v217 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v395 = objc_opt_class();
                                      v218 = v217;
                                      errorCopy2 = v578;
                                      v498 = [v218 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v395, @"clickCountInLastWeekNormalizedAcrossItems"];
                                      v647 = v498;
                                      v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v647 forKeys:&v646 count:1];
                                      v220 = v216;
                                      v10 = v543;
                                      v500 = v219;
                                      v221 = [v502 initWithDomain:v220 code:2 userInfo:?];
                                      v501 = 0;
                                      v8 = 0;
                                      *v215 = v221;
                                      v94 = v577;
                                      goto LABEL_292;
                                    }

                                    v501 = 0;
                                    v8 = 0;
                                    v94 = v577;
                                    errorCopy2 = v578;
LABEL_286:
                                    v31 = v518;
LABEL_458:

                                    goto LABEL_459;
                                  }

                                  if (errorCopy2)
                                  {
                                    v208 = errorCopy2;
                                    v505 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v542 = v10;
                                    v209 = *MEMORY[0x1E698F240];
                                    v648 = *MEMORY[0x1E696A578];
                                    v210 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v394 = objc_opt_class();
                                    v211 = v210;
                                    errorCopy2 = v578;
                                    v501 = [v211 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v394, @"hasEverShareInLastMonth"];
                                    v649 = v501;
                                    v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v649 forKeys:&v648 count:1];
                                    v213 = v209;
                                    v10 = v542;
                                    v503 = v212;
                                    v214 = [v505 initWithDomain:v213 code:2 userInfo:?];
                                    v504 = 0;
                                    v8 = 0;
                                    *v208 = v214;
                                    v94 = v577;
                                    goto LABEL_286;
                                  }

                                  v504 = 0;
                                  v8 = 0;
                                  v94 = v577;
                                  errorCopy2 = v578;
LABEL_280:
                                  v31 = v518;
LABEL_459:

                                  goto LABEL_460;
                                }

                                if (errorCopy2)
                                {
                                  v201 = errorCopy2;
                                  v508 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v541 = v10;
                                  v202 = *MEMORY[0x1E698F240];
                                  v650 = *MEMORY[0x1E696A578];
                                  v203 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v393 = objc_opt_class();
                                  v204 = v203;
                                  errorCopy2 = v578;
                                  v504 = [v204 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v393, @"hasEverShareInLastWeek"];
                                  v651 = v504;
                                  v205 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v651 forKeys:&v650 count:1];
                                  v206 = v202;
                                  v10 = v541;
                                  v506 = v205;
                                  v207 = [v508 initWithDomain:v206 code:2 userInfo:?];
                                  v507 = 0;
                                  v8 = 0;
                                  *v201 = v207;
                                  v94 = v577;
                                  goto LABEL_280;
                                }

                                v507 = 0;
                                v8 = 0;
                                v94 = v577;
                                errorCopy2 = v578;
LABEL_274:
                                v31 = v518;
LABEL_460:

                                goto LABEL_461;
                              }

                              if (errorCopy2)
                              {
                                v194 = errorCopy2;
                                v511 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v540 = v10;
                                v195 = *MEMORY[0x1E698F240];
                                v652 = *MEMORY[0x1E696A578];
                                v196 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v392 = objc_opt_class();
                                v197 = v196;
                                errorCopy2 = v578;
                                v507 = [v197 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v392, @"hasEverClickInLastMonth"];
                                v653 = v507;
                                v198 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v653 forKeys:&v652 count:1];
                                v199 = v195;
                                v10 = v540;
                                v509 = v198;
                                v200 = [v511 initWithDomain:v199 code:2 userInfo:?];
                                v510 = 0;
                                v8 = 0;
                                *v194 = v200;
                                v94 = v577;
                                goto LABEL_274;
                              }

                              v510 = 0;
                              v8 = 0;
                              v94 = v577;
                              errorCopy2 = v578;
LABEL_268:
                              v31 = v518;
LABEL_461:

                              goto LABEL_462;
                            }

                            if (errorCopy2)
                            {
                              v188 = errorCopy2;
                              v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v574 = dictionaryCopy;
                              v190 = *MEMORY[0x1E698F240];
                              v654 = *MEMORY[0x1E696A578];
                              v191 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v391 = objc_opt_class();
                              v192 = v191;
                              errorCopy2 = v578;
                              v510 = [v192 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v391, @"hasEverClickInLastWeek"];
                              v655 = v510;
                              v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v655 forKeys:&v654 count:1];
                              v193 = v190;
                              dictionaryCopy = v574;
                              v38 = 0;
                              v8 = 0;
                              *v188 = [v189 initWithDomain:v193 code:2 userInfo:v39];
                              v94 = v577;
                              goto LABEL_268;
                            }

                            v38 = 0;
                            v8 = 0;
                            v94 = v577;
                            errorCopy2 = v578;
LABEL_462:

                            v29 = v515;
                            goto LABEL_463;
                          }

                          if (errorCopy2)
                          {
                            v181 = errorCopy2;
                            v182 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v573 = dictionaryCopy;
                            v183 = *MEMORY[0x1E698F240];
                            v656 = *MEMORY[0x1E696A578];
                            v184 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v390 = objc_opt_class();
                            v185 = v184;
                            errorCopy2 = v578;
                            v38 = [v185 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v390, @"curationScore"];
                            v657 = v38;
                            v186 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v657 forKeys:&v656 count:1];
                            v187 = v183;
                            dictionaryCopy = v573;
                            v512 = v186;
                            v513 = 0;
                            v8 = 0;
                            *v181 = [v182 initWithDomain:v187 code:2 userInfo:?];
                            v94 = v577;
                            goto LABEL_462;
                          }

                          v513 = 0;
                          v8 = 0;
                          v94 = v577;
                          errorCopy2 = v578;
LABEL_463:

                          goto LABEL_464;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v519 = v33;
                          goto LABEL_49;
                        }

                        if (errorCopy2)
                        {
                          v167 = errorCopy2;
                          v168 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v571 = dictionaryCopy;
                          v169 = *MEMORY[0x1E698F240];
                          v660 = *MEMORY[0x1E696A578];
                          v170 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v388 = objc_opt_class();
                          v171 = v170;
                          v144 = v522;
                          errorCopy2 = v578;
                          v516 = [v171 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v388, @"favorited"];
                          v661 = v516;
                          v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v661 forKeys:&v660 count:1];
                          v173 = v169;
                          dictionaryCopy = v571;
                          v523 = v172;
                          v519 = 0;
                          v8 = 0;
                          *v167 = [v168 initWithDomain:v173 code:2 userInfo:?];
                          v94 = v577;
                          v31 = v518;
LABEL_465:

                          v16 = v517;
                          goto LABEL_466;
                        }

                        v519 = 0;
                        v8 = 0;
                        v94 = v577;
                        errorCopy2 = v578;
                        v144 = v522;
LABEL_466:

                        goto LABEL_467;
                      }

                      v31 = errorCopy2;
                      if (errorCopy2)
                      {
                        v524 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v570 = dictionaryCopy;
                        v162 = *MEMORY[0x1E698F240];
                        v662 = *MEMORY[0x1E696A578];
                        v465 = v12;
                        v163 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v387 = objc_opt_class();
                        v164 = v163;
                        v144 = v522;
                        errorCopy2 = v578;
                        v30 = v465;
                        v519 = [v164 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v387, @"freshness"];
                        v663 = v519;
                        v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v663 forKeys:&v662 count:1];
                        v166 = v162;
                        dictionaryCopy = v570;
                        v520 = v165;
                        v8 = 0;
                        *v31 = [v524 initWithDomain:v166 code:2 userInfo:?];
                        v31 = 0;
                        v94 = v577;
                        goto LABEL_466;
                      }

                      v8 = 0;
                      v94 = v577;
                      errorCopy2 = v578;
                      v144 = v522;
LABEL_467:

                      v24 = v521;
                      goto LABEL_468;
                    }

                    if (errorCopy2)
                    {
                      v155 = errorCopy2;
                      v526 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v569 = dictionaryCopy;
                      v156 = *MEMORY[0x1E698F240];
                      v664 = *MEMORY[0x1E696A578];
                      v157 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v386 = objc_opt_class();
                      v158 = v157;
                      errorCopy2 = v578;
                      v30 = v12;
                      v144 = v522;
                      v159 = [v158 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v386, @"L1Score"];
                      v665 = v159;
                      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v665 forKeys:&v664 count:1];
                      v160 = v156;
                      dictionaryCopy = v569;
                      v161 = [v526 initWithDomain:v160 code:2 userInfo:v29];
                      v525 = 0;
                      v8 = 0;
                      *v155 = v161;
                      v31 = v159;
                      v94 = v577;
                      goto LABEL_467;
                    }

                    v525 = 0;
                    v8 = 0;
                    v94 = v577;
                    v30 = v12;
                    errorCopy2 = v578;
                    v144 = v522;
LABEL_468:

                    v21 = v527;
                    goto LABEL_469;
                  }

                  if (errorCopy2)
                  {
                    v148 = errorCopy2;
                    v529 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v568 = dictionaryCopy;
                    v149 = *MEMORY[0x1E698F240];
                    v666 = *MEMORY[0x1E696A578];
                    v150 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v385 = objc_opt_class();
                    v151 = v150;
                    errorCopy2 = v578;
                    v525 = [v151 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v385, @"matchedFieldsCount"];
                    v667 = v525;
                    v152 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v667 forKeys:&v666 count:1];
                    v153 = v529;
                    v154 = v149;
                    dictionaryCopy = v568;
                    v528 = v152;
                    v8 = 0;
                    *v148 = [v153 initWithDomain:v154 code:2 userInfo:?];
                    v30 = v12;
                    v144 = 0;
                    v94 = v577;
                    goto LABEL_468;
                  }

                  v8 = 0;
                  v94 = v577;
                  v30 = v12;
                  v144 = 0;
                  errorCopy2 = v578;
LABEL_469:

                  goto LABEL_470;
                }

                v24 = errorCopy2;
                if (errorCopy2)
                {
                  v531 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v539 = v10;
                  v141 = *MEMORY[0x1E698F240];
                  v668 = *MEMORY[0x1E696A578];
                  v142 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v384 = objc_opt_class();
                  v143 = v142;
                  errorCopy2 = v578;
                  v30 = v12;
                  v144 = [v143 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v384, @"matchedOCRImportance"];
                  v669 = v144;
                  v145 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v669 forKeys:&v668 count:1];
                  v146 = v531;
                  v147 = v141;
                  v10 = v539;
                  v530 = v145;
                  v8 = 0;
                  *v24 = [v146 initWithDomain:v147 code:2 userInfo:?];
                  v24 = 0;
                  v94 = v577;
                  goto LABEL_469;
                }

                v8 = 0;
                v94 = v577;
                v30 = v12;
                errorCopy2 = v578;
LABEL_470:

                goto LABEL_471;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v533 = v18;
                goto LABEL_31;
              }

              if (errorCopy2)
              {
                v127 = errorCopy2;
                v128 = objc_alloc(MEMORY[0x1E696ABC0]);
                v537 = v10;
                v129 = *MEMORY[0x1E698F240];
                v672 = *MEMORY[0x1E696A578];
                v130 = objc_alloc(MEMORY[0x1E696AEC0]);
                v382 = objc_opt_class();
                v131 = v130;
                errorCopy2 = v578;
                v30 = v12;
                v132 = [v131 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v382, @"matchedSceneBoundingBox"];
                v673 = v132;
                v133 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v673 forKeys:&v672 count:1];
                v134 = v129;
                v10 = v537;
                v565 = v133;
                v120 = 0;
                v8 = 0;
                *v127 = [v128 initWithDomain:v134 code:2 userInfo:?];
                v21 = v132;
                v94 = v577;
LABEL_472:

                goto LABEL_473;
              }

              v120 = 0;
              v8 = 0;
              v94 = v577;
              v30 = v12;
              errorCopy2 = v578;
LABEL_473:

              goto LABEL_474;
            }

            if (errorCopy2)
            {
              v115 = errorCopy2;
              v116 = objc_alloc(MEMORY[0x1E696ABC0]);
              v536 = v10;
              v117 = *MEMORY[0x1E698F240];
              v674 = *MEMORY[0x1E696A578];
              v118 = objc_alloc(MEMORY[0x1E696AEC0]);
              v381 = objc_opt_class();
              v119 = v118;
              errorCopy2 = v578;
              v30 = v12;
              v120 = [v119 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v381, @"matchedSceneConfidence"];
              v675 = v120;
              v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v675 forKeys:&v674 count:1];
              v122 = v117;
              v10 = v536;
              v566 = v121;
              v16 = 0;
              v8 = 0;
              *v115 = [v116 initWithDomain:v122 code:2 userInfo:?];
              v94 = v577;
              goto LABEL_473;
            }

            v16 = 0;
            v8 = 0;
            v94 = v577;
            v30 = v12;
            errorCopy2 = v578;
LABEL_474:

            goto LABEL_475;
          }

          v30 = v12;
          if (errorCopy2)
          {
            v108 = objc_alloc(MEMORY[0x1E696ABC0]);
            v535 = v10;
            v109 = *MEMORY[0x1E698F240];
            v676 = *MEMORY[0x1E696A578];
            v110 = errorCopy2;
            v111 = objc_alloc(MEMORY[0x1E696AEC0]);
            v380 = objc_opt_class();
            v112 = v111;
            errorCopy2 = v578;
            v16 = [v112 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v380, @"matchedSceneRatio"];
            v677 = v16;
            v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v677 forKeys:&v676 count:1];
            v114 = v109;
            v10 = v535;
            v576 = v113;
            v579 = 0;
            v8 = 0;
            *v110 = [v108 initWithDomain:v114 code:2 userInfo:?];
            v94 = v577;
            goto LABEL_474;
          }

          v579 = 0;
          v8 = 0;
          v94 = v577;
          errorCopy2 = v578;
LABEL_475:

          goto LABEL_476;
        }

        v94 = v13;
        if (errorCopy2)
        {
          v102 = errorCopy2;
          v567 = dictionaryCopy;
          v103 = v10;
          v104 = objc_alloc(MEMORY[0x1E696ABC0]);
          v105 = *MEMORY[0x1E698F240];
          v678 = *MEMORY[0x1E696A578];
          v30 = v12;
          v579 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"matchedLocationRatio"];
          v679 = v579;
          v106 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v679 forKeys:&v678 count:1];
          v107 = v104;
          v10 = v103;
          dictionaryCopy = v567;
          v581 = v106;
          errorCopy2 = 0;
          v8 = 0;
          *v102 = [v107 initWithDomain:v105 code:2 userInfo:v106];
          goto LABEL_475;
        }

        v8 = 0;
        v30 = v12;
LABEL_476:

        goto LABEL_477;
      }

      if (error)
      {
        v96 = v10;
        v97 = objc_alloc(MEMORY[0x1E696ABC0]);
        v98 = *MEMORY[0x1E698F240];
        v680 = *MEMORY[0x1E696A578];
        v99 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"matchedPeopleRatio"];
        v681 = v99;
        v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v681 forKeys:&v680 count:1];
        v100 = v97;
        v10 = v96;
        v101 = v98;
        errorCopy2 = v99;
        v30 = 0;
        v8 = 0;
        *error = [v100 initWithDomain:v101 code:2 userInfo:v94];
        goto LABEL_476;
      }

      v30 = 0;
      v8 = 0;
LABEL_477:

      goto LABEL_478;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v585;
      v580 = [MEMORY[0x1E696AD98] numberWithInt:BMAeroMLPhotosSearchDataCorrelationsUISurfaceTypeFromString(v9)];

      goto LABEL_15;
    }

    if (error)
    {
      v123 = objc_alloc(MEMORY[0x1E696ABC0]);
      v124 = *MEMORY[0x1E698F240];
      v682 = *MEMORY[0x1E696A578];
      v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"uiSurface"];
      v683 = v30;
      v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v683 forKeys:&v682 count:1];
      v126 = v124;
      v10 = v125;
      v580 = 0;
      v8 = 0;
      *error = [v123 initWithDomain:v126 code:2 userInfo:?];
      goto LABEL_477;
    }

    v580 = 0;
    v8 = 0;
LABEL_478:

    goto LABEL_479;
  }

  if (error)
  {
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v7 = *MEMORY[0x1E698F240];
    v684 = *MEMORY[0x1E696A578];
    v580 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"searchSessionUUID"];
    v685[0] = v580;
    v585 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v685 forKeys:&v684 count:1];
    v582 = 0;
    v8 = 0;
    *error = [v6 initWithDomain:v7 code:2 userInfo:?];
    goto LABEL_478;
  }

  v582 = 0;
  v8 = 0;
LABEL_479:

  v378 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAeroMLPhotosSearchDataCorrelations *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

  v7 = toCopy;
  if (self->_hasMatchedSceneRatio)
  {
    matchedSceneRatio = self->_matchedSceneRatio;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasMatchedSceneConfidence)
  {
    matchedSceneConfidence = self->_matchedSceneConfidence;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasMatchedSceneBoundingBox)
  {
    matchedSceneBoundingBox = self->_matchedSceneBoundingBox;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasMatchedOCRCharacterRatio)
  {
    matchedOCRCharacterRatio = self->_matchedOCRCharacterRatio;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasMatchedOCRImportance)
  {
    matchedOCRImportance = self->_matchedOCRImportance;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasMatchedFieldsCount)
  {
    matchedFieldsCount = self->_matchedFieldsCount;
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }

  if (self->_hasL1Score)
  {
    L1Score = self->_L1Score;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasFreshness)
  {
    freshness = self->_freshness;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasFavorited)
  {
    favorited = self->_favorited;
    PBDataWriterWriteBOOLField();
    v7 = toCopy;
  }

  if (self->_hasAestheticScore)
  {
    aestheticScore = self->_aestheticScore;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasCurationScore)
  {
    curationScore = self->_curationScore;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasHasEverClickInLastWeek)
  {
    hasEverClickInLastWeek = self->_hasEverClickInLastWeek;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasHasEverClickInLastMonth)
  {
    hasEverClickInLastMonth = self->_hasEverClickInLastMonth;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasHasEverShareInLastWeek)
  {
    hasEverShareInLastWeek = self->_hasEverShareInLastWeek;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasHasEverShareInLastMonth)
  {
    hasEverShareInLastMonth = self->_hasEverShareInLastMonth;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountInLastWeekNormalizedAcrossItems)
  {
    clickCountInLastWeekNormalizedAcrossItems = self->_clickCountInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountInLastMonthNormalizedAcrossItems)
  {
    clickCountInLastMonthNormalizedAcrossItems = self->_clickCountInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountInLastWeekNormalizedAcrossItems)
  {
    shareCountInLastWeekNormalizedAcrossItems = self->_shareCountInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountInLastMonthNormalizedAcrossItems)
  {
    shareCountInLastMonthNormalizedAcrossItems = self->_shareCountInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = self->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = self->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenLocationInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenLocationInLastWeekNormalizedAcrossItems = self->_clickCountGivenLocationInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenLocationInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenLocationInLastMonthNormalizedAcrossItems = self->_clickCountGivenLocationInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems)
  {
    clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = self->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems)
  {
    clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = self->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = self->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = self->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenLocationInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenLocationInLastWeekNormalizedAcrossItems = self->_shareCountGivenLocationInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenLocationInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenLocationInLastMonthNormalizedAcrossItems = self->_shareCountGivenLocationInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems)
  {
    shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = self->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems)
  {
    shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = self->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasClipScore)
  {
    clipScore = self->_clipScore;
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }

  if (self->_hasCorrelationMetricVersion)
  {
    correlationMetricVersion = self->_correlationMetricVersion;
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }

  if (self->_hasCorrelationMetricWindowInDays)
  {
    correlationMetricWindowInDays = self->_correlationMetricWindowInDays;
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v9.receiver = self;
  v9.super_class = BMAeroMLPhotosSearchDataCorrelations;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMAeroMLPhotosSearchDataCorrelationsReadFrom(v5, fromCopy))
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
  v62 = objc_alloc(MEMORY[0x1E696AEC0]);
  searchSessionUUID = [(BMAeroMLPhotosSearchDataCorrelations *)self searchSessionUUID];
  v99 = BMAeroMLPhotosSearchDataCorrelationsUISurfaceTypeAsString([(BMAeroMLPhotosSearchDataCorrelations *)self uiSurface]);
  v3 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedPeopleRatio];
  v98 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedLocationRatio];
  v97 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneRatio];
  v93 = [v5 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneConfidence];
  v95 = [v6 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedSceneBoundingBox];
  v94 = [v7 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRCharacterRatio];
  v92 = [v8 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self matchedOCRImportance];
  v89 = [v9 numberWithDouble:?];
  v91 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations matchedFieldsCount](self, "matchedFieldsCount")}];
  v10 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self L1Score];
  v88 = [v10 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self freshness];
  v90 = [v11 numberWithDouble:?];
  v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchDataCorrelations favorited](self, "favorited")}];
  v12 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self aestheticScore];
  v87 = [v12 numberWithDouble:?];
  v13 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self curationScore];
  v84 = [v13 numberWithDouble:?];
  v14 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastWeek];
  v82 = [v14 numberWithDouble:?];
  v15 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverClickInLastMonth];
  v86 = [v15 numberWithDouble:?];
  v16 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastWeek];
  v83 = [v16 numberWithDouble:?];
  v17 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self hasEverShareInLastMonth];
  v79 = [v17 numberWithDouble:?];
  v18 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastWeekNormalizedAcrossItems];
  v81 = [v18 numberWithDouble:?];
  v19 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountInLastMonthNormalizedAcrossItems];
  v78 = [v19 numberWithDouble:?];
  v20 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastWeekNormalizedAcrossItems];
  v76 = [v20 numberWithDouble:?];
  v21 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountInLastMonthNormalizedAcrossItems];
  v80 = [v21 numberWithDouble:?];
  v22 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
  v75 = [v22 numberWithDouble:?];
  v23 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
  v77 = [v23 numberWithDouble:?];
  v24 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastWeekNormalizedAcrossItems];
  v74 = [v24 numberWithDouble:?];
  v25 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenLocationInLastMonthNormalizedAcrossItems];
  v72 = [v25 numberWithDouble:?];
  v26 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
  v73 = [v26 numberWithDouble:?];
  v27 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
  v70 = [v27 numberWithDouble:?];
  v28 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
  v61 = [v28 numberWithDouble:?];
  v29 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
  v71 = [v29 numberWithDouble:?];
  v30 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
  v60 = [v30 numberWithDouble:?];
  v31 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
  v69 = [v31 numberWithDouble:?];
  v32 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
  v68 = [v32 numberWithDouble:?];
  v33 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
  v67 = [v33 numberWithDouble:?];
  v34 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems];
  v59 = [v34 numberWithDouble:?];
  v35 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems];
  v66 = [v35 numberWithDouble:?];
  v36 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastWeekNormalizedAcrossItems];
  v58 = [v36 numberWithDouble:?];
  v37 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenLocationInLastMonthNormalizedAcrossItems];
  v65 = [v37 numberWithDouble:?];
  v38 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems];
  v64 = [v38 numberWithDouble:?];
  v39 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems];
  v56 = [v39 numberWithDouble:?];
  v40 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems];
  v55 = [v40 numberWithDouble:?];
  v41 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems];
  v57 = [v41 numberWithDouble:?];
  v42 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems];
  v54 = [v42 numberWithDouble:?];
  v43 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems];
  v53 = [v43 numberWithDouble:?];
  v44 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems];
  v45 = [v44 numberWithDouble:?];
  v46 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems];
  v47 = [v46 numberWithDouble:?];
  v48 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchDataCorrelations *)self clipScore];
  v49 = [v48 numberWithDouble:?];
  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations correlationMetricVersion](self, "correlationMetricVersion")}];
  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchDataCorrelations correlationMetricWindowInDays](self, "correlationMetricWindowInDays")}];
  v63 = [v62 initWithFormat:@"BMAeroMLPhotosSearchDataCorrelations with searchSessionUUID: %@, uiSurface: %@, matchedPeopleRatio: %@, matchedLocationRatio: %@, matchedSceneRatio: %@, matchedSceneConfidence: %@, matchedSceneBoundingBox: %@, matchedOCRCharacterRatio: %@, matchedOCRImportance: %@, matchedFieldsCount: %@, L1Score: %@, freshness: %@, favorited: %@, aestheticScore: %@, curationScore: %@, hasEverClickInLastWeek: %@, hasEverClickInLastMonth: %@, hasEverShareInLastWeek: %@, hasEverShareInLastMonth: %@, clickCountInLastWeekNormalizedAcrossItems: %@, clickCountInLastMonthNormalizedAcrossItems: %@, shareCountInLastWeekNormalizedAcrossItems: %@, shareCountInLastMonthNormalizedAcrossItems: %@, clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems: %@, clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems: %@, clickCountGivenLocationInLastWeekNormalizedAcrossItems: %@, clickCountGivenLocationInLastMonthNormalizedAcrossItems: %@, clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems: %@, clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems: %@, clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems: %@, clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems: %@, clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems: %@, shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems: %@, shareCountGivenLocationInLastWeekNormalizedAcrossItems: %@, shareCountGivenLocationInLastMonthNormalizedAcrossItems: %@, shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems: %@, shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems: %@, shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems: %@, clipScore: %@, correlationMetricVersion: %@, correlationMetricWindowInDays: %@", searchSessionUUID, v99, v98, v97, v93, v95, v94, v92, v89, v91, v88, v90, v85, v87, v84, v82, v86, v83, v79, v81, v78, v76, v80, v75, v77, v74, v72, v73, v70, v61, v71, v60, v69, v68, v67, v59, v66, v58, v65, v64, v56, v55, v57, v54, v53, v45, v47, v49, v50, v51];

  return v63;
}

- (BMAeroMLPhotosSearchDataCorrelations)initWithSearchSessionUUID:(id)d uiSurface:(int)surface matchedPeopleRatio:(id)ratio matchedLocationRatio:(id)locationRatio matchedSceneRatio:(id)sceneRatio matchedSceneConfidence:(id)confidence matchedSceneBoundingBox:(id)box matchedOCRCharacterRatio:(id)self0 matchedOCRImportance:(id)self1 matchedFieldsCount:(id)self2 L1Score:(id)self3 freshness:(id)self4 favorited:(id)self5 aestheticScore:(id)self6 curationScore:(id)self7 hasEverClickInLastWeek:(id)self8 hasEverClickInLastMonth:(id)self9 hasEverShareInLastWeek:(id)lastWeek hasEverShareInLastMonth:(id)lastMonth clickCountInLastWeekNormalizedAcrossItems:(id)items clickCountInLastMonthNormalizedAcrossItems:(id)acrossItems shareCountInLastWeekNormalizedAcrossItems:(id)normalizedAcrossItems shareCountInLastMonthNormalizedAcrossItems:(id)monthNormalizedAcrossItems clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)weekNormalizedAcrossItems clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)lastMonthNormalizedAcrossItems clickCountGivenLocationInLastWeekNormalizedAcrossItems:(id)lastWeekNormalizedAcrossItems clickCountGivenLocationInLastMonthNormalizedAcrossItems:(id)inLastMonthNormalizedAcrossItems clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)d0 clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)d1 clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)d2 clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)d3 clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)d4 clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)d5 clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)d6 clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)d7 shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems:(id)d8 shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems:(id)d9 shareCountGivenLocationInLastWeekNormalizedAcrossItems:(id)surface0 shareCountGivenLocationInLastMonthNormalizedAcrossItems:(id)surface1 shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems:(id)surface2 shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems:(id)surface3 shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems:(id)surface4 shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems:(id)surface5 shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems:(id)surface6 shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems:(id)surface7 shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems:(id)surface8 shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems:(id)surface9 clipScore:(id)ratio0 correlationMetricVersion:(id)ratio1 correlationMetricWindowInDays:(id)ratio2
{
  dCopy = d;
  ratioCopy = ratio;
  locationRatioCopy = locationRatio;
  sceneRatioCopy = sceneRatio;
  confidenceCopy = confidence;
  boxCopy = box;
  characterRatioCopy = characterRatio;
  importanceCopy = importance;
  countCopy = count;
  scoreCopy = score;
  freshnessCopy = freshness;
  favoritedCopy = favorited;
  aestheticScoreCopy = aestheticScore;
  curationScoreCopy = curationScore;
  weekCopy = week;
  monthCopy = month;
  lastWeekCopy = lastWeek;
  lastMonthCopy = lastMonth;
  itemsCopy = items;
  acrossItemsCopy = acrossItems;
  normalizedAcrossItemsCopy = normalizedAcrossItems;
  monthNormalizedAcrossItemsCopy = monthNormalizedAcrossItems;
  weekNormalizedAcrossItemsCopy = weekNormalizedAcrossItems;
  lastMonthNormalizedAcrossItemsCopy = lastMonthNormalizedAcrossItems;
  lastWeekNormalizedAcrossItemsCopy = lastWeekNormalizedAcrossItems;
  inLastMonthNormalizedAcrossItemsCopy = inLastMonthNormalizedAcrossItems;
  inLastWeekNormalizedAcrossItemsCopy = inLastWeekNormalizedAcrossItems;
  categoryInLastMonthNormalizedAcrossItemsCopy = categoryInLastMonthNormalizedAcrossItems;
  categoryInLastWeekNormalizedAcrossItemsCopy = categoryInLastWeekNormalizedAcrossItems;
  recencyCategoryInLastMonthNormalizedAcrossItemsCopy = recencyCategoryInLastMonthNormalizedAcrossItems;
  sceneCategoryInLastWeekNormalizedAcrossItemsCopy = sceneCategoryInLastWeekNormalizedAcrossItems;
  sceneCategoryInLastMonthNormalizedAcrossItemsCopy = sceneCategoryInLastMonthNormalizedAcrossItems;
  countCategoryInLastWeekNormalizedAcrossItemsCopy = countCategoryInLastWeekNormalizedAcrossItems;
  countCategoryInLastMonthNormalizedAcrossItemsCopy = countCategoryInLastMonthNormalizedAcrossItems;
  dayInLastWeekNormalizedAcrossItemsCopy = dayInLastWeekNormalizedAcrossItems;
  dayInLastMonthNormalizedAcrossItemsCopy = dayInLastMonthNormalizedAcrossItems;
  locationInLastWeekNormalizedAcrossItemsCopy = locationInLastWeekNormalizedAcrossItems;
  locationInLastMonthNormalizedAcrossItemsCopy = locationInLastMonthNormalizedAcrossItems;
  dayCategoryInLastWeekNormalizedAcrossItemsCopy = dayCategoryInLastWeekNormalizedAcrossItems;
  dayCategoryInLastMonthNormalizedAcrossItemsCopy = dayCategoryInLastMonthNormalizedAcrossItems;
  recencyCategoryInLastWeekNormalizedAcrossItemsCopy = recencyCategoryInLastWeekNormalizedAcrossItems;
  givenRecencyCategoryInLastMonthNormalizedAcrossItemsCopy = givenRecencyCategoryInLastMonthNormalizedAcrossItems;
  givenSceneCategoryInLastWeekNormalizedAcrossItemsCopy = givenSceneCategoryInLastWeekNormalizedAcrossItems;
  givenSceneCategoryInLastMonthNormalizedAcrossItemsCopy = givenSceneCategoryInLastMonthNormalizedAcrossItems;
  faceCountCategoryInLastWeekNormalizedAcrossItemsCopy = faceCountCategoryInLastWeekNormalizedAcrossItems;
  faceCountCategoryInLastMonthNormalizedAcrossItemsCopy = faceCountCategoryInLastMonthNormalizedAcrossItems;
  clipScoreCopy = clipScore;
  versionCopy = version;
  daysCopy = days;
  v158.receiver = self;
  v158.super_class = BMAeroMLPhotosSearchDataCorrelations;
  v63 = [(BMEventBase *)&v158 init];

  if (v63)
  {
    v63->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v63->_searchSessionUUID, d);
    v63->_uiSurface = surface;
    if (ratioCopy)
    {
      v63->_hasMatchedPeopleRatio = 1;
      [ratioCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedPeopleRatio = 0;
      v64 = -1.0;
    }

    v63->_matchedPeopleRatio = v64;
    if (locationRatioCopy)
    {
      v63->_hasMatchedLocationRatio = 1;
      [locationRatioCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedLocationRatio = 0;
      v65 = -1.0;
    }

    v63->_matchedLocationRatio = v65;
    if (sceneRatioCopy)
    {
      v63->_hasMatchedSceneRatio = 1;
      [sceneRatioCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedSceneRatio = 0;
      v66 = -1.0;
    }

    v63->_matchedSceneRatio = v66;
    if (confidenceCopy)
    {
      v63->_hasMatchedSceneConfidence = 1;
      [confidenceCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedSceneConfidence = 0;
      v67 = -1.0;
    }

    v63->_matchedSceneConfidence = v67;
    if (boxCopy)
    {
      v63->_hasMatchedSceneBoundingBox = 1;
      [boxCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedSceneBoundingBox = 0;
      v68 = -1.0;
    }

    v63->_matchedSceneBoundingBox = v68;
    if (characterRatioCopy)
    {
      v63->_hasMatchedOCRCharacterRatio = 1;
      [characterRatioCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedOCRCharacterRatio = 0;
      v69 = -1.0;
    }

    v63->_matchedOCRCharacterRatio = v69;
    if (importanceCopy)
    {
      v63->_hasMatchedOCRImportance = 1;
      [importanceCopy doubleValue];
    }

    else
    {
      v63->_hasMatchedOCRImportance = 0;
      v70 = -1.0;
    }

    v63->_matchedOCRImportance = v70;
    unsignedIntValue = countCopy;
    if (countCopy)
    {
      v63->_hasMatchedFieldsCount = 1;
      unsignedIntValue = [countCopy unsignedIntValue];
    }

    else
    {
      v63->_hasMatchedFieldsCount = 0;
    }

    v63->_matchedFieldsCount = unsignedIntValue;
    if (scoreCopy)
    {
      v63->_hasL1Score = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v63->_hasL1Score = 0;
      v72 = -1.0;
    }

    v63->_L1Score = v72;
    if (freshnessCopy)
    {
      v63->_hasFreshness = 1;
      [freshnessCopy doubleValue];
    }

    else
    {
      v63->_hasFreshness = 0;
      v73 = -1.0;
    }

    v63->_freshness = v73;
    if (favoritedCopy)
    {
      v63->_hasFavorited = 1;
      v63->_favorited = [favoritedCopy BOOLValue];
    }

    else
    {
      v63->_hasFavorited = 0;
      v63->_favorited = 0;
    }

    if (aestheticScoreCopy)
    {
      v63->_hasAestheticScore = 1;
      [aestheticScoreCopy doubleValue];
    }

    else
    {
      v63->_hasAestheticScore = 0;
      v74 = -1.0;
    }

    v63->_aestheticScore = v74;
    if (curationScoreCopy)
    {
      v63->_hasCurationScore = 1;
      [curationScoreCopy doubleValue];
    }

    else
    {
      v63->_hasCurationScore = 0;
      v75 = -1.0;
    }

    v63->_curationScore = v75;
    if (weekCopy)
    {
      v63->_hasHasEverClickInLastWeek = 1;
      [weekCopy doubleValue];
    }

    else
    {
      v63->_hasHasEverClickInLastWeek = 0;
      v76 = -1.0;
    }

    v63->_hasEverClickInLastWeek = v76;
    if (monthCopy)
    {
      v63->_hasHasEverClickInLastMonth = 1;
      [monthCopy doubleValue];
    }

    else
    {
      v63->_hasHasEverClickInLastMonth = 0;
      v77 = -1.0;
    }

    v63->_hasEverClickInLastMonth = v77;
    if (lastWeekCopy)
    {
      v63->_hasHasEverShareInLastWeek = 1;
      [lastWeekCopy doubleValue];
    }

    else
    {
      v63->_hasHasEverShareInLastWeek = 0;
      v78 = -1.0;
    }

    v63->_hasEverShareInLastWeek = v78;
    if (lastMonthCopy)
    {
      v63->_hasHasEverShareInLastMonth = 1;
      [lastMonthCopy doubleValue];
    }

    else
    {
      v63->_hasHasEverShareInLastMonth = 0;
      v79 = -1.0;
    }

    v63->_hasEverShareInLastMonth = v79;
    if (itemsCopy)
    {
      v63->_hasClickCountInLastWeekNormalizedAcrossItems = 1;
      [itemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountInLastWeekNormalizedAcrossItems = 0;
      v80 = -1.0;
    }

    v63->_clickCountInLastWeekNormalizedAcrossItems = v80;
    if (acrossItemsCopy)
    {
      v63->_hasClickCountInLastMonthNormalizedAcrossItems = 1;
      [acrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountInLastMonthNormalizedAcrossItems = 0;
      v81 = -1.0;
    }

    v63->_clickCountInLastMonthNormalizedAcrossItems = v81;
    if (normalizedAcrossItemsCopy)
    {
      v63->_hasShareCountInLastWeekNormalizedAcrossItems = 1;
      [normalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountInLastWeekNormalizedAcrossItems = 0;
      v82 = -1.0;
    }

    v63->_shareCountInLastWeekNormalizedAcrossItems = v82;
    if (monthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountInLastMonthNormalizedAcrossItems = 1;
      [monthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountInLastMonthNormalizedAcrossItems = 0;
      v83 = -1.0;
    }

    v63->_shareCountInLastMonthNormalizedAcrossItems = v83;
    if (weekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 1;
      [weekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 0;
      v84 = -1.0;
    }

    v63->_clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = v84;
    if (lastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 1;
      [lastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 0;
      v85 = -1.0;
    }

    v63->_clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = v85;
    if (lastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenLocationInLastWeekNormalizedAcrossItems = 1;
      [lastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenLocationInLastWeekNormalizedAcrossItems = 0;
      v86 = -1.0;
    }

    v63->_clickCountGivenLocationInLastWeekNormalizedAcrossItems = v86;
    if (inLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenLocationInLastMonthNormalizedAcrossItems = 1;
      [inLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenLocationInLastMonthNormalizedAcrossItems = 0;
      v87 = -1.0;
    }

    v63->_clickCountGivenLocationInLastMonthNormalizedAcrossItems = v87;
    if (inLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 1;
      [inLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 0;
      v88 = -1.0;
    }

    v63->_clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems = v88;
    if (categoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 1;
      [categoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 0;
      v89 = -1.0;
    }

    v63->_clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems = v89;
    if (categoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 1;
      [categoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 0;
      v90 = -1.0;
    }

    v63->_clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = v90;
    if (recencyCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 1;
      [recencyCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 0;
      v91 = -1.0;
    }

    v63->_clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = v91;
    if (sceneCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 1;
      [sceneCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 0;
      v92 = -1.0;
    }

    v63->_clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = v92;
    if (sceneCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 1;
      [sceneCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 0;
      v93 = -1.0;
    }

    v63->_clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = v93;
    if (countCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 1;
      [countCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 0;
      v94 = -1.0;
    }

    v63->_clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = v94;
    if (countCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 1;
      [countCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasClickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 0;
      v95 = -1.0;
    }

    v63->_clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = v95;
    if (dayInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 1;
      [dayInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = 0;
      v96 = -1.0;
    }

    v63->_shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems = v96;
    if (dayInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 1;
      [dayInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = 0;
      v97 = -1.0;
    }

    v63->_shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems = v97;
    if (locationInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenLocationInLastWeekNormalizedAcrossItems = 1;
      [locationInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenLocationInLastWeekNormalizedAcrossItems = 0;
      v98 = -1.0;
    }

    v63->_shareCountGivenLocationInLastWeekNormalizedAcrossItems = v98;
    if (locationInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenLocationInLastMonthNormalizedAcrossItems = 1;
      [locationInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenLocationInLastMonthNormalizedAcrossItems = 0;
      v99 = -1.0;
    }

    v63->_shareCountGivenLocationInLastMonthNormalizedAcrossItems = v99;
    if (dayCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 1;
      [dayCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = 0;
      v100 = -1.0;
    }

    v63->_shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems = v100;
    if (dayCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 1;
      [dayCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = 0;
      v101 = -1.0;
    }

    v63->_shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems = v101;
    if (recencyCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 1;
      [recencyCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = 0;
      v102 = -1.0;
    }

    v63->_shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems = v102;
    if (givenRecencyCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 1;
      [givenRecencyCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = 0;
      v103 = -1.0;
    }

    v63->_shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems = v103;
    if (givenSceneCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 1;
      [givenSceneCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = 0;
      v104 = -1.0;
    }

    v63->_shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems = v104;
    if (givenSceneCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 1;
      [givenSceneCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = 0;
      v105 = -1.0;
    }

    v63->_shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems = v105;
    if (faceCountCategoryInLastWeekNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 1;
      [faceCountCategoryInLastWeekNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = 0;
      v106 = -1.0;
    }

    v63->_shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems = v106;
    if (faceCountCategoryInLastMonthNormalizedAcrossItemsCopy)
    {
      v63->_hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 1;
      [faceCountCategoryInLastMonthNormalizedAcrossItemsCopy doubleValue];
    }

    else
    {
      v63->_hasShareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = 0;
      v107 = -1.0;
    }

    v63->_shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems = v107;
    if (clipScoreCopy)
    {
      v63->_hasClipScore = 1;
      [clipScoreCopy doubleValue];
    }

    else
    {
      v63->_hasClipScore = 0;
      v108 = -1.0;
    }

    v63->_clipScore = v108;
    if (versionCopy)
    {
      v63->_hasCorrelationMetricVersion = 1;
      unsignedIntValue2 = [versionCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v63->_hasCorrelationMetricVersion = 0;
    }

    v63->_correlationMetricVersion = unsignedIntValue2;
    if (daysCopy)
    {
      v63->_hasCorrelationMetricWindowInDays = 1;
      unsignedIntValue3 = [daysCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue3 = 0;
      v63->_hasCorrelationMetricWindowInDays = 0;
    }

    v63->_correlationMetricWindowInDays = unsignedIntValue3;
  }

  v111 = v63;

  return v111;
}

+ (id)protoFields
{
  v55[50] = *MEMORY[0x1E69E9840];
  v54 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"searchSessionUUID" number:1 type:13 subMessageClass:0];
  v55[0] = v54;
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uiSurface" number:2 type:4 subMessageClass:0];
  v55[1] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedPeopleRatio" number:3 type:0 subMessageClass:0];
  v55[2] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedLocationRatio" number:4 type:0 subMessageClass:0];
  v55[3] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedSceneRatio" number:5 type:0 subMessageClass:0];
  v55[4] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedSceneConfidence" number:6 type:0 subMessageClass:0];
  v55[5] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedSceneBoundingBox" number:7 type:0 subMessageClass:0];
  v55[6] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedOCRCharacterRatio" number:8 type:0 subMessageClass:0];
  v55[7] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedOCRImportance" number:9 type:0 subMessageClass:0];
  v55[8] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"matchedFieldsCount" number:10 type:4 subMessageClass:0];
  v55[9] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"L1Score" number:11 type:0 subMessageClass:0];
  v55[10] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"freshness" number:12 type:0 subMessageClass:0];
  v55[11] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"favorited" number:13 type:12 subMessageClass:0];
  v55[12] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"aestheticScore" number:14 type:0 subMessageClass:0];
  v55[13] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"curationScore" number:15 type:0 subMessageClass:0];
  v55[14] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverClickInLastWeek" number:16 type:0 subMessageClass:0];
  v55[15] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverClickInLastMonth" number:17 type:0 subMessageClass:0];
  v55[16] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverShareInLastWeek" number:18 type:0 subMessageClass:0];
  v55[17] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasEverShareInLastMonth" number:19 type:0 subMessageClass:0];
  v55[18] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountInLastWeekNormalizedAcrossItems" number:20 type:0 subMessageClass:0];
  v55[19] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountInLastMonthNormalizedAcrossItems" number:21 type:0 subMessageClass:0];
  v55[20] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountInLastWeekNormalizedAcrossItems" number:22 type:0 subMessageClass:0];
  v55[21] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountInLastMonthNormalizedAcrossItems" number:23 type:0 subMessageClass:0];
  v55[22] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" number:24 type:0 subMessageClass:0];
  v55[23] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" number:25 type:0 subMessageClass:0];
  v55[24] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenLocationInLastWeekNormalizedAcrossItems" number:26 type:0 subMessageClass:0];
  v55[25] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenLocationInLastMonthNormalizedAcrossItems" number:27 type:0 subMessageClass:0];
  v55[26] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenDayCategoryInLastWeekNormalizedAcrossItems" number:28 type:0 subMessageClass:0];
  v55[27] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenDayCategoryInLastMonthNormalizedAcrossItems" number:29 type:0 subMessageClass:0];
  v55[28] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" number:30 type:0 subMessageClass:0];
  v55[29] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" number:31 type:0 subMessageClass:0];
  v55[30] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" number:32 type:0 subMessageClass:0];
  v55[31] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" number:33 type:0 subMessageClass:0];
  v55[32] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" number:34 type:0 subMessageClass:0];
  v55[33] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clickCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" number:35 type:0 subMessageClass:0];
  v55[34] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenTimeOfDayInLastWeekNormalizedAcrossItems" number:36 type:0 subMessageClass:0];
  v55[35] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenTimeOfDayInLastMonthNormalizedAcrossItems" number:37 type:0 subMessageClass:0];
  v55[36] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenLocationInLastWeekNormalizedAcrossItems" number:38 type:0 subMessageClass:0];
  v55[37] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenLocationInLastMonthNormalizedAcrossItems" number:39 type:0 subMessageClass:0];
  v55[38] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenDayCategoryInLastWeekNormalizedAcrossItems" number:40 type:0 subMessageClass:0];
  v55[39] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenDayCategoryInLastMonthNormalizedAcrossItems" number:41 type:0 subMessageClass:0];
  v55[40] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenRecencyCategoryInLastWeekNormalizedAcrossItems" number:42 type:0 subMessageClass:0];
  v55[41] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenRecencyCategoryInLastMonthNormalizedAcrossItems" number:43 type:0 subMessageClass:0];
  v55[42] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenSceneCategoryInLastWeekNormalizedAcrossItems" number:44 type:0 subMessageClass:0];
  v55[43] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenSceneCategoryInLastMonthNormalizedAcrossItems" number:45 type:0 subMessageClass:0];
  v55[44] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenFaceCountCategoryInLastWeekNormalizedAcrossItems" number:46 type:0 subMessageClass:0];
  v55[45] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shareCountGivenFaceCountCategoryInLastMonthNormalizedAcrossItems" number:47 type:0 subMessageClass:0];
  v55[46] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clipScore" number:48 type:0 subMessageClass:0];
  v55[47] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"correlationMetricVersion" number:49 type:4 subMessageClass:0];
  v55[48] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"correlationMetricWindowInDays" number:50 type:4 subMessageClass:0];
  v55[49] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:50];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMAeroMLPhotosSearchDataCorrelations alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[17] = 0;
    }
  }

  return v4;
}

@end