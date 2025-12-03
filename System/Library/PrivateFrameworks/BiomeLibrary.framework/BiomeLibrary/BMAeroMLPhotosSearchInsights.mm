@interface BMAeroMLPhotosSearchInsights
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMAeroMLPhotosSearchInsights)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMAeroMLPhotosSearchInsights)initWithWasThereAnyResultsShown:(id)shown searchResultSize:(id)size didUserViewAnyPhoto:(id)photo viewedPhotoCount:(id)count uiSurface:(int)surface sizeOfPhotoDB:(id)b numberOfSearchesFromThisSurfaceLastWeek:(id)week numberOfSearchesFromThisSurfaceWeeklyAvg:(id)self0 queryRaw:(id)self1 numberOfTokensInQuery:(id)self2 numberOfKnownEntitiesInQuery:(id)self3 isSpecificPersonInQuery:(id)self4 isGeneralPersonReferenceInQuery:(id)self5 isSpecificLocationInQuery:(id)self6 isGeneralLocationReferenceInQuery:(id)self7 isSpecificDateInQuery:(id)self8 isGeneralDateReferenceInQuery:(id)self9 isHolidayReferenceInQuery:(id)holidayReferenceInQuery isActionRunningInQuery:(id)runningInQuery isActionHoldingInQuery:(id)holdingInQuery isActionClimbingInQuery:(id)climbingInQuery language:(id)language region:(id)region version:(id)version libraryProcessingProgress:(id)progress librarySizeBucket:(int)bucket;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMAeroMLPhotosSearchInsights

+ (id)columns
{
  v31[26] = *MEMORY[0x1E69E9840];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"wasThereAnyResultsShown" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"searchResultSize" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"didUserViewAnyPhoto" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewedPhotoCount" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uiSurface" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sizeOfPhotoDB" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfSearchesFromThisSurfaceLastWeek" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfSearchesFromThisSurfaceWeeklyAvg" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:4 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryRaw" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfTokensInQuery" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfKnownEntitiesInQuery" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:4 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSpecificPersonInQuery" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isGeneralPersonReferenceInQuery" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSpecificLocationInQuery" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isGeneralLocationReferenceInQuery" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSpecificDateInQuery" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isGeneralDateReferenceInQuery" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isHolidayReferenceInQuery" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActionRunningInQuery" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActionHoldingInQuery" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActionClimbingInQuery" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"language" dataType:2 requestOnly:0 fieldNumber:22 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"region" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:2 requestOnly:0 fieldNumber:24 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"libraryProcessingProgress" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"librarySizeBucket" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:4 convertedType:0];
  v31[0] = v30;
  v31[1] = v29;
  v31[2] = v28;
  v31[3] = v27;
  v31[4] = v26;
  v31[5] = v25;
  v31[6] = v24;
  v31[7] = v23;
  v31[8] = v22;
  v31[9] = v21;
  v31[10] = v20;
  v31[11] = v19;
  v31[12] = v18;
  v31[13] = v17;
  v31[14] = v16;
  v31[15] = v15;
  v31[16] = v2;
  v31[17] = v3;
  v31[18] = v14;
  v31[19] = v13;
  v31[20] = v4;
  v31[21] = v5;
  v31[22] = v6;
  v31[23] = v12;
  v31[24] = v7;
  v31[25] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:26];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMAeroMLPhotosSearchInsights hasWasThereAnyResultsShown](self, "hasWasThereAnyResultsShown") || [v5 hasWasThereAnyResultsShown])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasWasThereAnyResultsShown])
      {
        goto LABEL_121;
      }

      if (![v5 hasWasThereAnyResultsShown])
      {
        goto LABEL_121;
      }

      wasThereAnyResultsShown = [(BMAeroMLPhotosSearchInsights *)self wasThereAnyResultsShown];
      if (wasThereAnyResultsShown != [v5 wasThereAnyResultsShown])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasSearchResultSize](self, "hasSearchResultSize") || [v5 hasSearchResultSize])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasSearchResultSize])
      {
        goto LABEL_121;
      }

      if (![v5 hasSearchResultSize])
      {
        goto LABEL_121;
      }

      searchResultSize = [(BMAeroMLPhotosSearchInsights *)self searchResultSize];
      if (searchResultSize != [v5 searchResultSize])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasDidUserViewAnyPhoto](self, "hasDidUserViewAnyPhoto") || [v5 hasDidUserViewAnyPhoto])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasDidUserViewAnyPhoto])
      {
        goto LABEL_121;
      }

      if (![v5 hasDidUserViewAnyPhoto])
      {
        goto LABEL_121;
      }

      didUserViewAnyPhoto = [(BMAeroMLPhotosSearchInsights *)self didUserViewAnyPhoto];
      if (didUserViewAnyPhoto != [v5 didUserViewAnyPhoto])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasViewedPhotoCount](self, "hasViewedPhotoCount") || [v5 hasViewedPhotoCount])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasViewedPhotoCount])
      {
        goto LABEL_121;
      }

      if (![v5 hasViewedPhotoCount])
      {
        goto LABEL_121;
      }

      viewedPhotoCount = [(BMAeroMLPhotosSearchInsights *)self viewedPhotoCount];
      if (viewedPhotoCount != [v5 viewedPhotoCount])
      {
        goto LABEL_121;
      }
    }

    uiSurface = [(BMAeroMLPhotosSearchInsights *)self uiSurface];
    if (uiSurface != [v5 uiSurface])
    {
      goto LABEL_121;
    }

    if (-[BMAeroMLPhotosSearchInsights hasSizeOfPhotoDB](self, "hasSizeOfPhotoDB") || [v5 hasSizeOfPhotoDB])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasSizeOfPhotoDB])
      {
        goto LABEL_121;
      }

      if (![v5 hasSizeOfPhotoDB])
      {
        goto LABEL_121;
      }

      sizeOfPhotoDB = [(BMAeroMLPhotosSearchInsights *)self sizeOfPhotoDB];
      if (sizeOfPhotoDB != [v5 sizeOfPhotoDB])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasNumberOfSearchesFromThisSurfaceLastWeek](self, "hasNumberOfSearchesFromThisSurfaceLastWeek") || [v5 hasNumberOfSearchesFromThisSurfaceLastWeek])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasNumberOfSearchesFromThisSurfaceLastWeek])
      {
        goto LABEL_121;
      }

      if (![v5 hasNumberOfSearchesFromThisSurfaceLastWeek])
      {
        goto LABEL_121;
      }

      numberOfSearchesFromThisSurfaceLastWeek = [(BMAeroMLPhotosSearchInsights *)self numberOfSearchesFromThisSurfaceLastWeek];
      if (numberOfSearchesFromThisSurfaceLastWeek != [v5 numberOfSearchesFromThisSurfaceLastWeek])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasNumberOfSearchesFromThisSurfaceWeeklyAvg](self, "hasNumberOfSearchesFromThisSurfaceWeeklyAvg") || [v5 hasNumberOfSearchesFromThisSurfaceWeeklyAvg])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasNumberOfSearchesFromThisSurfaceWeeklyAvg])
      {
        goto LABEL_121;
      }

      if (![v5 hasNumberOfSearchesFromThisSurfaceWeeklyAvg])
      {
        goto LABEL_121;
      }

      numberOfSearchesFromThisSurfaceWeeklyAvg = [(BMAeroMLPhotosSearchInsights *)self numberOfSearchesFromThisSurfaceWeeklyAvg];
      if (numberOfSearchesFromThisSurfaceWeeklyAvg != [v5 numberOfSearchesFromThisSurfaceWeeklyAvg])
      {
        goto LABEL_121;
      }
    }

    queryRaw = [(BMAeroMLPhotosSearchInsights *)self queryRaw];
    queryRaw2 = [v5 queryRaw];
    v16 = queryRaw2;
    if (queryRaw == queryRaw2)
    {
    }

    else
    {
      queryRaw3 = [(BMAeroMLPhotosSearchInsights *)self queryRaw];
      queryRaw4 = [v5 queryRaw];
      v19 = [queryRaw3 isEqual:queryRaw4];

      if (!v19)
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasNumberOfTokensInQuery](self, "hasNumberOfTokensInQuery") || [v5 hasNumberOfTokensInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasNumberOfTokensInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasNumberOfTokensInQuery])
      {
        goto LABEL_121;
      }

      numberOfTokensInQuery = [(BMAeroMLPhotosSearchInsights *)self numberOfTokensInQuery];
      if (numberOfTokensInQuery != [v5 numberOfTokensInQuery])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasNumberOfKnownEntitiesInQuery](self, "hasNumberOfKnownEntitiesInQuery") || [v5 hasNumberOfKnownEntitiesInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasNumberOfKnownEntitiesInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasNumberOfKnownEntitiesInQuery])
      {
        goto LABEL_121;
      }

      numberOfKnownEntitiesInQuery = [(BMAeroMLPhotosSearchInsights *)self numberOfKnownEntitiesInQuery];
      if (numberOfKnownEntitiesInQuery != [v5 numberOfKnownEntitiesInQuery])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasIsSpecificPersonInQuery](self, "hasIsSpecificPersonInQuery") || [v5 hasIsSpecificPersonInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasIsSpecificPersonInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasIsSpecificPersonInQuery])
      {
        goto LABEL_121;
      }

      isSpecificPersonInQuery = [(BMAeroMLPhotosSearchInsights *)self isSpecificPersonInQuery];
      if (isSpecificPersonInQuery != [v5 isSpecificPersonInQuery])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasIsGeneralPersonReferenceInQuery](self, "hasIsGeneralPersonReferenceInQuery") || [v5 hasIsGeneralPersonReferenceInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasIsGeneralPersonReferenceInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasIsGeneralPersonReferenceInQuery])
      {
        goto LABEL_121;
      }

      isGeneralPersonReferenceInQuery = [(BMAeroMLPhotosSearchInsights *)self isGeneralPersonReferenceInQuery];
      if (isGeneralPersonReferenceInQuery != [v5 isGeneralPersonReferenceInQuery])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasIsSpecificLocationInQuery](self, "hasIsSpecificLocationInQuery") || [v5 hasIsSpecificLocationInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasIsSpecificLocationInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasIsSpecificLocationInQuery])
      {
        goto LABEL_121;
      }

      isSpecificLocationInQuery = [(BMAeroMLPhotosSearchInsights *)self isSpecificLocationInQuery];
      if (isSpecificLocationInQuery != [v5 isSpecificLocationInQuery])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasIsGeneralLocationReferenceInQuery](self, "hasIsGeneralLocationReferenceInQuery") || [v5 hasIsGeneralLocationReferenceInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasIsGeneralLocationReferenceInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasIsGeneralLocationReferenceInQuery])
      {
        goto LABEL_121;
      }

      isGeneralLocationReferenceInQuery = [(BMAeroMLPhotosSearchInsights *)self isGeneralLocationReferenceInQuery];
      if (isGeneralLocationReferenceInQuery != [v5 isGeneralLocationReferenceInQuery])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasIsSpecificDateInQuery](self, "hasIsSpecificDateInQuery") || [v5 hasIsSpecificDateInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasIsSpecificDateInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasIsSpecificDateInQuery])
      {
        goto LABEL_121;
      }

      isSpecificDateInQuery = [(BMAeroMLPhotosSearchInsights *)self isSpecificDateInQuery];
      if (isSpecificDateInQuery != [v5 isSpecificDateInQuery])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasIsGeneralDateReferenceInQuery](self, "hasIsGeneralDateReferenceInQuery") || [v5 hasIsGeneralDateReferenceInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasIsGeneralDateReferenceInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasIsGeneralDateReferenceInQuery])
      {
        goto LABEL_121;
      }

      isGeneralDateReferenceInQuery = [(BMAeroMLPhotosSearchInsights *)self isGeneralDateReferenceInQuery];
      if (isGeneralDateReferenceInQuery != [v5 isGeneralDateReferenceInQuery])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasIsHolidayReferenceInQuery](self, "hasIsHolidayReferenceInQuery") || [v5 hasIsHolidayReferenceInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasIsHolidayReferenceInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasIsHolidayReferenceInQuery])
      {
        goto LABEL_121;
      }

      isHolidayReferenceInQuery = [(BMAeroMLPhotosSearchInsights *)self isHolidayReferenceInQuery];
      if (isHolidayReferenceInQuery != [v5 isHolidayReferenceInQuery])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasIsActionRunningInQuery](self, "hasIsActionRunningInQuery") || [v5 hasIsActionRunningInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasIsActionRunningInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasIsActionRunningInQuery])
      {
        goto LABEL_121;
      }

      isActionRunningInQuery = [(BMAeroMLPhotosSearchInsights *)self isActionRunningInQuery];
      if (isActionRunningInQuery != [v5 isActionRunningInQuery])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasIsActionHoldingInQuery](self, "hasIsActionHoldingInQuery") || [v5 hasIsActionHoldingInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasIsActionHoldingInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasIsActionHoldingInQuery])
      {
        goto LABEL_121;
      }

      isActionHoldingInQuery = [(BMAeroMLPhotosSearchInsights *)self isActionHoldingInQuery];
      if (isActionHoldingInQuery != [v5 isActionHoldingInQuery])
      {
        goto LABEL_121;
      }
    }

    if (-[BMAeroMLPhotosSearchInsights hasIsActionClimbingInQuery](self, "hasIsActionClimbingInQuery") || [v5 hasIsActionClimbingInQuery])
    {
      if (![(BMAeroMLPhotosSearchInsights *)self hasIsActionClimbingInQuery])
      {
        goto LABEL_121;
      }

      if (![v5 hasIsActionClimbingInQuery])
      {
        goto LABEL_121;
      }

      isActionClimbingInQuery = [(BMAeroMLPhotosSearchInsights *)self isActionClimbingInQuery];
      if (isActionClimbingInQuery != [v5 isActionClimbingInQuery])
      {
        goto LABEL_121;
      }
    }

    language = [(BMAeroMLPhotosSearchInsights *)self language];
    language2 = [v5 language];
    v35 = language2;
    if (language == language2)
    {
    }

    else
    {
      language3 = [(BMAeroMLPhotosSearchInsights *)self language];
      language4 = [v5 language];
      v38 = [language3 isEqual:language4];

      if (!v38)
      {
        goto LABEL_121;
      }
    }

    region = [(BMAeroMLPhotosSearchInsights *)self region];
    region2 = [v5 region];
    v41 = region2;
    if (region == region2)
    {
    }

    else
    {
      region3 = [(BMAeroMLPhotosSearchInsights *)self region];
      region4 = [v5 region];
      v44 = [region3 isEqual:region4];

      if (!v44)
      {
        goto LABEL_121;
      }
    }

    version = [(BMAeroMLPhotosSearchInsights *)self version];
    version2 = [v5 version];
    v47 = version2;
    if (version == version2)
    {
    }

    else
    {
      version3 = [(BMAeroMLPhotosSearchInsights *)self version];
      version4 = [v5 version];
      v50 = [version3 isEqual:version4];

      if (!v50)
      {
        goto LABEL_121;
      }
    }

    if (!-[BMAeroMLPhotosSearchInsights hasLibraryProcessingProgress](self, "hasLibraryProcessingProgress") && ![v5 hasLibraryProcessingProgress] || -[BMAeroMLPhotosSearchInsights hasLibraryProcessingProgress](self, "hasLibraryProcessingProgress") && objc_msgSend(v5, "hasLibraryProcessingProgress") && (v51 = -[BMAeroMLPhotosSearchInsights libraryProcessingProgress](self, "libraryProcessingProgress"), v51 == objc_msgSend(v5, "libraryProcessingProgress")))
    {
      librarySizeBucket = [(BMAeroMLPhotosSearchInsights *)self librarySizeBucket];
      v20 = librarySizeBucket == [v5 librarySizeBucket];
LABEL_122:

      goto LABEL_123;
    }

LABEL_121:
    v20 = 0;
    goto LABEL_122;
  }

  v20 = 0;
LABEL_123:

  return v20;
}

- (id)jsonDictionary
{
  v94[26] = *MEMORY[0x1E69E9840];
  if ([(BMAeroMLPhotosSearchInsights *)self hasWasThereAnyResultsShown])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights wasThereAnyResultsShown](self, "wasThereAnyResultsShown")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasSearchResultSize])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights searchResultSize](self, "searchResultSize")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasDidUserViewAnyPhoto])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights didUserViewAnyPhoto](self, "didUserViewAnyPhoto")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasViewedPhotoCount])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights viewedPhotoCount](self, "viewedPhotoCount")}];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAeroMLPhotosSearchInsights uiSurface](self, "uiSurface")}];
  if ([(BMAeroMLPhotosSearchInsights *)self hasSizeOfPhotoDB])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights sizeOfPhotoDB](self, "sizeOfPhotoDB")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasNumberOfSearchesFromThisSurfaceLastWeek])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights numberOfSearchesFromThisSurfaceLastWeek](self, "numberOfSearchesFromThisSurfaceLastWeek")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasNumberOfSearchesFromThisSurfaceWeeklyAvg])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights numberOfSearchesFromThisSurfaceWeeklyAvg](self, "numberOfSearchesFromThisSurfaceWeeklyAvg")}];
  }

  else
  {
    v92 = 0;
  }

  queryRaw = [(BMAeroMLPhotosSearchInsights *)self queryRaw];
  if ([(BMAeroMLPhotosSearchInsights *)self hasNumberOfTokensInQuery])
  {
    v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights numberOfTokensInQuery](self, "numberOfTokensInQuery")}];
  }

  else
  {
    v90 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasNumberOfKnownEntitiesInQuery])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights numberOfKnownEntitiesInQuery](self, "numberOfKnownEntitiesInQuery")}];
  }

  else
  {
    v89 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasIsSpecificPersonInQuery])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isSpecificPersonInQuery](self, "isSpecificPersonInQuery")}];
  }

  else
  {
    v88 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasIsGeneralPersonReferenceInQuery])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isGeneralPersonReferenceInQuery](self, "isGeneralPersonReferenceInQuery")}];
  }

  else
  {
    v87 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasIsSpecificLocationInQuery])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isSpecificLocationInQuery](self, "isSpecificLocationInQuery")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasIsGeneralLocationReferenceInQuery])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isGeneralLocationReferenceInQuery](self, "isGeneralLocationReferenceInQuery")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasIsSpecificDateInQuery])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isSpecificDateInQuery](self, "isSpecificDateInQuery")}];
  }

  else
  {
    v84 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasIsGeneralDateReferenceInQuery])
  {
    v83 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isGeneralDateReferenceInQuery](self, "isGeneralDateReferenceInQuery")}];
  }

  else
  {
    v83 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasIsHolidayReferenceInQuery])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isHolidayReferenceInQuery](self, "isHolidayReferenceInQuery")}];
  }

  else
  {
    v82 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasIsActionRunningInQuery])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isActionRunningInQuery](self, "isActionRunningInQuery")}];
  }

  else
  {
    v81 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasIsActionHoldingInQuery])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isActionHoldingInQuery](self, "isActionHoldingInQuery")}];
  }

  else
  {
    v80 = 0;
  }

  if ([(BMAeroMLPhotosSearchInsights *)self hasIsActionClimbingInQuery])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isActionClimbingInQuery](self, "isActionClimbingInQuery")}];
  }

  else
  {
    v79 = 0;
  }

  language = [(BMAeroMLPhotosSearchInsights *)self language];
  region = [(BMAeroMLPhotosSearchInsights *)self region];
  version = [(BMAeroMLPhotosSearchInsights *)self version];
  if ([(BMAeroMLPhotosSearchInsights *)self hasLibraryProcessingProgress])
  {
    v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights libraryProcessingProgress](self, "libraryProcessingProgress")}];
  }

  else
  {
    v75 = 0;
  }

  v74 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAeroMLPhotosSearchInsights librarySizeBucket](self, "librarySizeBucket")}];
  v93[0] = @"wasThereAnyResultsShown";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null;
  v94[0] = null;
  v93[1] = @"searchResultSize";
  null2 = v4;
  v12 = v7;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null2;
  v94[1] = null2;
  v93[2] = @"didUserViewAnyPhoto";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null3;
  v94[2] = null3;
  v93[3] = @"viewedPhotoCount";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null4;
  v94[3] = null4;
  v93[4] = @"uiSurface";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null5;
  v94[4] = null5;
  v93[5] = @"sizeOfPhotoDB";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null6;
  v94[5] = null6;
  v93[6] = @"numberOfSearchesFromThisSurfaceLastWeek";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = v4;
  v19 = v9;
  v60 = null7;
  v94[6] = null7;
  v93[7] = @"numberOfSearchesFromThisSurfaceWeeklyAvg";
  null8 = v92;
  if (!v92)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v8;
  v94[7] = null8;
  v93[8] = @"queryRaw";
  null9 = queryRaw;
  if (!queryRaw)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v5;
  v94[8] = null9;
  v93[9] = @"numberOfTokensInQuery";
  null10 = v90;
  if (!v90)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v6;
  v69 = null10;
  v94[9] = null10;
  v93[10] = @"numberOfKnownEntitiesInQuery";
  null11 = v89;
  if (!v89)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v12;
  v28 = v18;
  v68 = null11;
  v94[10] = null11;
  v93[11] = @"isSpecificPersonInQuery";
  null12 = v88;
  if (!v88)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null12;
  v94[11] = null12;
  v93[12] = @"isGeneralPersonReferenceInQuery";
  null13 = v87;
  if (!v87)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null13;
  v94[12] = null13;
  v93[13] = @"isSpecificLocationInQuery";
  null14 = v86;
  if (!v86)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null14;
  v94[13] = null14;
  v93[14] = @"isGeneralLocationReferenceInQuery";
  null15 = v85;
  if (!v85)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = v3;
  v55 = null15;
  v94[14] = null15;
  v93[15] = @"isSpecificDateInQuery";
  null16 = v84;
  if (!v84)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null16;
  v94[15] = null16;
  v93[16] = @"isGeneralDateReferenceInQuery";
  null17 = v83;
  if (!v83)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = v27;
  v53 = null17;
  v94[16] = null17;
  v93[17] = @"isHolidayReferenceInQuery";
  null18 = v82;
  if (!v82)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = v23;
  v52 = null18;
  v94[17] = null18;
  v93[18] = @"isActionRunningInQuery";
  null19 = v81;
  if (!v81)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null9;
  v51 = null19;
  v94[18] = null19;
  v93[19] = @"isActionHoldingInQuery";
  null20 = v80;
  if (!v80)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = v25;
  v50 = null20;
  v94[19] = null20;
  v93[20] = @"isActionClimbingInQuery";
  null21 = v79;
  if (!v79)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = null21;
  v94[20] = null21;
  v93[21] = @"language";
  null22 = language;
  if (!language)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v94[21] = null22;
  v93[22] = @"region";
  null23 = region;
  if (!region)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null8;
  v94[22] = null23;
  v93[23] = @"version";
  null24 = version;
  if (!version)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v94[23] = null24;
  v93[24] = @"libraryProcessingProgress";
  null25 = v75;
  if (!v75)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v94[24] = null25;
  v93[25] = @"librarySizeBucket";
  null26 = v74;
  if (!v74)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v94[25] = null26;
  v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:{26, v48}];
  if (!v74)
  {
  }

  v45 = v30;
  if (!v75)
  {

    v45 = v30;
  }

  if (!version)
  {

    v45 = v30;
  }

  if (!region)
  {

    v45 = v30;
  }

  if (!language)
  {

    v45 = v30;
  }

  if (!v79)
  {

    v45 = v30;
  }

  if (!v80)
  {

    v45 = v30;
  }

  if (!v81)
  {

    v45 = v30;
  }

  if (!v82)
  {

    v45 = v30;
  }

  if (!v83)
  {

    v45 = v30;
  }

  if (!v84)
  {

    v45 = v30;
  }

  if (!v85)
  {

    v45 = v30;
  }

  if (!v86)
  {

    v45 = v30;
  }

  if (!v87)
  {

    v45 = v30;
  }

  if (!v88)
  {
  }

  if (!v89)
  {
  }

  if (!v90)
  {
  }

  if (!queryRaw)
  {
  }

  if (v92)
  {
    if (v19)
    {
      goto LABEL_151;
    }
  }

  else
  {

    if (v19)
    {
LABEL_151:
      if (v21)
      {
        goto LABEL_152;
      }

      goto LABEL_162;
    }
  }

  if (v21)
  {
LABEL_152:
    if (v70)
    {
      goto LABEL_153;
    }

    goto LABEL_163;
  }

LABEL_162:

  if (v70)
  {
LABEL_153:
    if (v71)
    {
      goto LABEL_154;
    }

    goto LABEL_164;
  }

LABEL_163:

  if (v71)
  {
LABEL_154:
    if (v72)
    {
      goto LABEL_155;
    }

    goto LABEL_165;
  }

LABEL_164:

  if (v72)
  {
LABEL_155:
    if (v28)
    {
      goto LABEL_156;
    }

LABEL_166:

    if (v73)
    {
      goto LABEL_157;
    }

    goto LABEL_167;
  }

LABEL_165:

  if (!v28)
  {
    goto LABEL_166;
  }

LABEL_156:
  if (v73)
  {
    goto LABEL_157;
  }

LABEL_167:

LABEL_157:
  v46 = *MEMORY[0x1E69E9840];

  return v67;
}

- (BMAeroMLPhotosSearchInsights)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v301[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"wasThereAnyResultsShown"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"searchResultSize"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v249 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v249 = v9;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"didUserViewAnyPhoto"];
      errorCopy = error;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v245 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v245 = v10;
LABEL_10:
        v11 = [dictionaryCopy objectForKeyedSubscript:@"viewedPhotoCount"];
        v246 = v11;
        selfCopy = self;
        if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v239 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v239 = v12;
LABEL_13:
          v13 = [dictionaryCopy objectForKeyedSubscript:@"uiSurface"];
          v238 = v9;
          v241 = v13;
          if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v244 = 0;
            goto LABEL_37;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v244 = v14;
LABEL_36:

LABEL_37:
            v38 = [dictionaryCopy objectForKeyedSubscript:@"sizeOfPhotoDB"];
            v237 = v38;
            if (!v38 || (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v40 = 0;
              goto LABEL_40;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = v39;
LABEL_40:
              v41 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSearchesFromThisSurfaceLastWeek"];
              v231 = v8;
              v232 = v41;
              if (!v41 || (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v43 = 0;
LABEL_43:
                v44 = [dictionaryCopy objectForKeyedSubscript:@"numberOfSearchesFromThisSurfaceWeeklyAvg"];
                v233 = v44;
                if (!v44)
                {
LABEL_52:
                  v45 = [dictionaryCopy objectForKeyedSubscript:@"queryRaw"];
                  v225 = v43;
                  v227 = v44;
                  v229 = v45;
                  if (v45 && (v46 = v45, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    v48 = v8;
                    v49 = v40;
                    v50 = v10;
                    v51 = v48;
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!errorCopy)
                      {
                        v72 = 0;
                        errorCopy3 = 0;
                        v34 = v239;
                        v43 = v225;
LABEL_236:
                        v68 = v227;
                        goto LABEL_237;
                      }

                      v75 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v76 = *MEMORY[0x1E698F240];
                      v284 = *MEMORY[0x1E696A578];
                      v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"queryRaw"];
                      v285 = v77;
                      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v285 forKeys:&v284 count:1];
                      v226 = 0;
                      errorCopy3 = 0;
                      *errorCopy = [v75 initWithDomain:v76 code:2 userInfo:v47];
                      v10 = v50;
                      v78 = v77;
                      v34 = v239;
                      v40 = v49;
                      v43 = v225;
                      goto LABEL_235;
                    }

                    v226 = v46;
                    v8 = v51;
                    v43 = v225;
                  }

                  else
                  {
                    v226 = 0;
                  }

                  v47 = [dictionaryCopy objectForKeyedSubscript:@"numberOfTokensInQuery"];
                  v224 = v40;
                  if (!v47)
                  {
                    v221 = 0;
                    goto LABEL_63;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v221 = v47;
                    v47 = 0;
                    goto LABEL_63;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v221 = v47;
                    v47 = v47;
LABEL_63:
                    v52 = [dictionaryCopy objectForKeyedSubscript:@"numberOfKnownEntitiesInQuery"];
                    v222 = v47;
                    if (!v52 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v213 = 0;
                      goto LABEL_66;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v213 = v52;
LABEL_66:
                      v53 = [dictionaryCopy objectForKeyedSubscript:@"isSpecificPersonInQuery"];
                      v217 = v53;
                      if (!v53 || (v54 = v53, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v55 = v52;
                        v215 = 0;
                        goto LABEL_69;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v55 = v52;
                        v215 = v54;
LABEL_69:
                        v56 = [dictionaryCopy objectForKeyedSubscript:@"isGeneralPersonReferenceInQuery"];
                        v211 = v56;
                        if (!v56 || (v57 = v56, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v206 = 0;
                          goto LABEL_72;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v206 = v57;
LABEL_72:
                          v58 = [dictionaryCopy objectForKeyedSubscript:@"isSpecificLocationInQuery"];
                          v207 = v58;
                          if (!v58 || (v59 = v58, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v209 = 0;
                            goto LABEL_75;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v209 = v59;
LABEL_75:
                            v60 = [dictionaryCopy objectForKeyedSubscript:@"isGeneralLocationReferenceInQuery"];
                            v202 = v60;
                            if (v60)
                            {
                              v61 = v60;
                              v62 = v8;
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                objc_opt_class();
                                v63 = v225;
                                if (objc_opt_isKindOfClass())
                                {
                                  v204 = v61;
LABEL_100:
                                  v84 = [dictionaryCopy objectForKeyedSubscript:@"isSpecificDateInQuery"];
                                  v191 = v84;
                                  if (v84 && (v85 = v84, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (!errorCopy)
                                      {
                                        v193 = 0;
                                        errorCopy3 = 0;
                                        v34 = v239;
                                        v47 = v221;
                                        v89 = v213;
                                        v52 = v55;
                                        v43 = v63;
LABEL_228:
                                        v93 = v206;
                                        goto LABEL_229;
                                      }

                                      v194 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v188 = *MEMORY[0x1E698F240];
                                      v270 = *MEMORY[0x1E696A578];
                                      v199 = v55;
                                      v43 = v63;
                                      v52 = v199;
                                      v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSpecificDateInQuery"];
                                      v271 = v189;
                                      v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
                                      v125 = v188;
                                      v187 = v124;
                                      v126 = [v194 initWithDomain:v125 code:2 userInfo:?];
                                      v193 = 0;
                                      errorCopy3 = 0;
                                      *errorCopy = v126;
                                      goto LABEL_201;
                                    }

                                    v193 = v85;
                                  }

                                  else
                                  {
                                    v193 = 0;
                                  }

                                  v52 = v55;
                                  v43 = v63;
                                  v86 = [dictionaryCopy objectForKeyedSubscript:@"isGeneralDateReferenceInQuery"];
                                  v187 = v86;
                                  if (!v86)
                                  {
                                    v189 = 0;
                                    v88 = v62;
                                    goto LABEL_123;
                                  }

                                  v87 = v86;
                                  objc_opt_class();
                                  v88 = v62;
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v189 = 0;
                                    goto LABEL_123;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v189 = v87;
LABEL_123:
                                    v97 = [dictionaryCopy objectForKeyedSubscript:@"isHolidayReferenceInQuery"];
                                    v183 = v97;
                                    if (!v97 || (v98 = v97, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v185 = 0;
                                      goto LABEL_126;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v185 = v98;
LABEL_126:
                                      v99 = [dictionaryCopy objectForKeyedSubscript:@"isActionRunningInQuery"];
                                      v179 = v99;
                                      if (!v99 || (v100 = v99, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v181 = 0;
                                        goto LABEL_129;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v181 = v100;
LABEL_129:
                                        v101 = [dictionaryCopy objectForKeyedSubscript:@"isActionHoldingInQuery"];
                                        v175 = v101;
                                        if (!v101 || (v102 = v101, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v177 = 0;
                                          goto LABEL_132;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v177 = v102;
LABEL_132:
                                          v103 = [dictionaryCopy objectForKeyedSubscript:@"isActionClimbingInQuery"];
                                          v171 = v103;
                                          if (!v103 || (v104 = v103, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v172 = 0;
LABEL_135:
                                            v105 = [dictionaryCopy objectForKeyedSubscript:@"language"];
                                            v167 = v105;
                                            if (v105 && (v106 = v105, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                            {
                                              v200 = v52;
                                              v236 = v7;
                                              objc_opt_class();
                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                              {
                                                if (!errorCopy)
                                                {
                                                  v170 = 0;
                                                  errorCopy3 = 0;
                                                  v34 = v239;
                                                  v43 = v225;
                                                  v47 = v221;
                                                  v89 = v213;
                                                  v136 = v172;
                                                  goto LABEL_222;
                                                }

                                                v140 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v141 = *MEMORY[0x1E698F240];
                                                v258 = *MEMORY[0x1E696A578];
                                                v168 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"language"];
                                                v259 = v168;
                                                v165 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v259 forKeys:&v258 count:1];
                                                v170 = 0;
                                                errorCopy3 = 0;
                                                *errorCopy = [v140 initWithDomain:v141 code:2 userInfo:?];
                                                goto LABEL_250;
                                              }

                                              v170 = v106;
                                              v43 = v225;
                                            }

                                            else
                                            {
                                              v170 = 0;
                                            }

                                            v107 = [dictionaryCopy objectForKeyedSubscript:@"region"];
                                            v165 = v107;
                                            if (!v107 || (v108 = v107, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v168 = 0;
                                              goto LABEL_141;
                                            }

                                            v200 = v52;
                                            v236 = v7;
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v168 = v108;
                                              v43 = v225;
LABEL_141:
                                              v109 = [dictionaryCopy objectForKeyedSubscript:@"version"];
                                              v162 = v109;
                                              if (!v109 || (v110 = v109, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v166 = 0;
                                                goto LABEL_144;
                                              }

                                              v200 = v52;
                                              v236 = v7;
                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v166 = v110;
                                                v43 = v225;
LABEL_144:
                                                v111 = [dictionaryCopy objectForKeyedSubscript:@"libraryProcessingProgress"];
                                                v161 = v111;
                                                if (!v111 || (v112 = v111, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v163 = 0;
LABEL_147:
                                                  v113 = [dictionaryCopy objectForKeyedSubscript:@"librarySizeBucket"];
                                                  v195 = v113;
                                                  if (!v113)
                                                  {
LABEL_150:
                                                    v34 = v239;
LABEL_217:
                                                    intValue = [v244 intValue];
                                                    LODWORD(v160) = [v113 intValue];
                                                    v152 = v88;
                                                    v89 = v213;
                                                    selfCopy = [(BMAeroMLPhotosSearchInsights *)selfCopy initWithWasThereAnyResultsShown:v152 searchResultSize:v249 didUserViewAnyPhoto:v245 viewedPhotoCount:v34 uiSurface:intValue sizeOfPhotoDB:v224 numberOfSearchesFromThisSurfaceLastWeek:v43 numberOfSearchesFromThisSurfaceWeeklyAvg:v227 queryRaw:v226 numberOfTokensInQuery:v222 numberOfKnownEntitiesInQuery:v213 isSpecificPersonInQuery:v215 isGeneralPersonReferenceInQuery:v206 isSpecificLocationInQuery:v209 isGeneralLocationReferenceInQuery:v204 isSpecificDateInQuery:v193 isGeneralDateReferenceInQuery:v189 isHolidayReferenceInQuery:v185 isActionRunningInQuery:v181 isActionHoldingInQuery:v177 isActionClimbingInQuery:v172 language:v170 region:v168 version:v166 libraryProcessingProgress:v163 librarySizeBucket:v160];
                                                    v146 = v113;
                                                    errorCopy3 = selfCopy;
                                                    v47 = v221;
LABEL_218:

LABEL_219:
                                                    v136 = v172;

LABEL_220:
LABEL_221:

                                                    goto LABEL_222;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v113 = 0;
                                                    goto LABEL_150;
                                                  }

                                                  v138 = v113;
                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v113 = v113;
                                                    v139 = v138;
                                                    v34 = v239;
LABEL_216:

                                                    goto LABEL_217;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v150 = v113;
                                                    v113 = [MEMORY[0x1E696AD98] numberWithInt:BMAeroMLPhotosSearchInsightsPhotosLibrarySizeBucketFromString(v150)];

                                                    v139 = v138;
                                                    v34 = v239;
                                                    v43 = v225;
                                                    goto LABEL_216;
                                                  }

                                                  if (errorCopy)
                                                  {
                                                    v155 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v156 = *MEMORY[0x1E698F240];
                                                    v250 = *MEMORY[0x1E696A578];
                                                    v157 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"librarySizeBucket"];
                                                    v251 = v157;
                                                    v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v251 forKeys:&v250 count:1];
                                                    *errorCopy = [v155 initWithDomain:v156 code:2 userInfo:v158];
                                                  }

                                                  v146 = 0;
                                                  errorCopy3 = 0;
LABEL_256:
                                                  v34 = v239;
                                                  v43 = v225;
                                                  v47 = v221;
                                                  v89 = v213;
                                                  goto LABEL_218;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v163 = v112;
                                                  goto LABEL_147;
                                                }

                                                if (errorCopy)
                                                {
                                                  v201 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v164 = *MEMORY[0x1E698F240];
                                                  v252 = *MEMORY[0x1E696A578];
                                                  v146 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"libraryProcessingProgress"];
                                                  v253 = v146;
                                                  v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v253 forKeys:&v252 count:1];
                                                  v148 = v201;
                                                  v195 = v147;
                                                  v149 = [v148 initWithDomain:v164 code:2 userInfo:?];
                                                  v163 = 0;
                                                  errorCopy3 = 0;
                                                  *errorCopy = v149;
                                                  goto LABEL_256;
                                                }

                                                v163 = 0;
                                                errorCopy3 = 0;
                                                v34 = v239;
                                                v43 = v225;
                                                v47 = v221;
LABEL_258:
                                                v89 = v213;
                                                goto LABEL_219;
                                              }

                                              if (errorCopy)
                                              {
                                                v144 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v145 = *MEMORY[0x1E698F240];
                                                v254 = *MEMORY[0x1E696A578];
                                                v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"version"];
                                                v255 = v163;
                                                v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v255 forKeys:&v254 count:1];
                                                v166 = 0;
                                                errorCopy3 = 0;
                                                *errorCopy = [v144 initWithDomain:v145 code:2 userInfo:?];
                                                v34 = v239;
                                                v43 = v225;
                                                v47 = v221;
                                                goto LABEL_258;
                                              }

                                              v166 = 0;
                                              errorCopy3 = 0;
LABEL_252:
                                              v7 = v236;
                                              v34 = v239;
                                              v43 = v225;
                                              v47 = v221;
                                              v52 = v200;
                                              v89 = v213;
                                              v136 = v172;
                                              goto LABEL_220;
                                            }

                                            if (errorCopy)
                                            {
                                              v142 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v143 = *MEMORY[0x1E698F240];
                                              v256 = *MEMORY[0x1E696A578];
                                              v166 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"region"];
                                              v257 = v166;
                                              v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v257 forKeys:&v256 count:1];
                                              v168 = 0;
                                              errorCopy3 = 0;
                                              *errorCopy = [v142 initWithDomain:v143 code:2 userInfo:?];
                                              goto LABEL_252;
                                            }

                                            v168 = 0;
                                            errorCopy3 = 0;
LABEL_250:
                                            v7 = v236;
                                            v34 = v239;
                                            v43 = v225;
                                            v47 = v221;
                                            v52 = v200;
                                            v89 = v213;
                                            v136 = v172;
                                            goto LABEL_221;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v172 = v104;
                                            goto LABEL_135;
                                          }

                                          if (errorCopy)
                                          {
                                            v174 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v169 = *MEMORY[0x1E698F240];
                                            v260 = *MEMORY[0x1E696A578];
                                            v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isActionClimbingInQuery"];
                                            v261 = v170;
                                            v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v261 forKeys:&v260 count:1];
                                            v136 = 0;
                                            errorCopy3 = 0;
                                            *errorCopy = [v174 initWithDomain:v169 code:2 userInfo:?];
                                            v34 = v239;
                                            v47 = v221;
                                            v89 = v213;
LABEL_222:

LABEL_223:
                                            goto LABEL_224;
                                          }

                                          v136 = 0;
                                          errorCopy3 = 0;
LABEL_247:
                                          v34 = v239;
                                          v47 = v221;
                                          v89 = v213;
                                          goto LABEL_223;
                                        }

                                        if (errorCopy)
                                        {
                                          v178 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v173 = *MEMORY[0x1E698F240];
                                          v262 = *MEMORY[0x1E696A578];
                                          v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isActionHoldingInQuery"];
                                          v263 = v136;
                                          v171 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v263 forKeys:&v262 count:1];
                                          v137 = [v178 initWithDomain:v173 code:2 userInfo:?];
                                          v177 = 0;
                                          errorCopy3 = 0;
                                          *errorCopy = v137;
                                          goto LABEL_247;
                                        }

                                        v177 = 0;
                                        errorCopy3 = 0;
LABEL_213:
                                        v34 = v239;
                                        v47 = v221;
                                        v89 = v213;
LABEL_224:

                                        goto LABEL_225;
                                      }

                                      if (errorCopy)
                                      {
                                        v182 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v176 = *MEMORY[0x1E698F240];
                                        v264 = *MEMORY[0x1E696A578];
                                        v177 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isActionRunningInQuery"];
                                        v265 = v177;
                                        v133 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v265 forKeys:&v264 count:1];
                                        v134 = v176;
                                        v175 = v133;
                                        v135 = [v182 initWithDomain:v134 code:2 userInfo:?];
                                        v181 = 0;
                                        errorCopy3 = 0;
                                        *errorCopy = v135;
                                        goto LABEL_213;
                                      }

                                      v181 = 0;
                                      errorCopy3 = 0;
LABEL_209:
                                      v34 = v239;
                                      v47 = v221;
                                      v89 = v213;
LABEL_225:

                                      goto LABEL_226;
                                    }

                                    if (errorCopy)
                                    {
                                      v186 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v180 = *MEMORY[0x1E698F240];
                                      v266 = *MEMORY[0x1E696A578];
                                      v181 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isHolidayReferenceInQuery"];
                                      v267 = v181;
                                      v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
                                      v131 = v180;
                                      v179 = v130;
                                      v132 = [v186 initWithDomain:v131 code:2 userInfo:?];
                                      v185 = 0;
                                      errorCopy3 = 0;
                                      *errorCopy = v132;
                                      goto LABEL_209;
                                    }

                                    v185 = 0;
                                    errorCopy3 = 0;
LABEL_205:
                                    v34 = v239;
                                    v47 = v221;
                                    v89 = v213;
LABEL_226:

                                    goto LABEL_227;
                                  }

                                  if (errorCopy)
                                  {
                                    v190 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v184 = *MEMORY[0x1E698F240];
                                    v268 = *MEMORY[0x1E696A578];
                                    v185 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isGeneralDateReferenceInQuery"];
                                    v269 = v185;
                                    v127 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
                                    v128 = v184;
                                    v183 = v127;
                                    v129 = [v190 initWithDomain:v128 code:2 userInfo:?];
                                    v189 = 0;
                                    errorCopy3 = 0;
                                    *errorCopy = v129;
                                    goto LABEL_205;
                                  }

                                  v189 = 0;
                                  errorCopy3 = 0;
LABEL_201:
                                  v34 = v239;
                                  v47 = v221;
                                  v89 = v213;
LABEL_227:

                                  goto LABEL_228;
                                }

                                if (errorCopy)
                                {
                                  v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v192 = *MEMORY[0x1E698F240];
                                  v272 = *MEMORY[0x1E696A578];
                                  v198 = v55;
                                  v43 = v225;
                                  v93 = v206;
                                  v52 = v198;
                                  v193 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isGeneralLocationReferenceInQuery"];
                                  v273 = v193;
                                  v121 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v273 forKeys:&v272 count:1];
                                  v122 = v192;
                                  v191 = v121;
                                  v123 = [v205 initWithDomain:v122 code:2 userInfo:?];
                                  v204 = 0;
                                  errorCopy3 = 0;
                                  *errorCopy = v123;
                                  v34 = v239;
                                  v47 = v221;
                                  v89 = v213;
LABEL_229:

                                  goto LABEL_230;
                                }

                                v204 = 0;
                                errorCopy3 = 0;
                                v34 = v239;
                                v47 = v221;
                                v89 = v213;
                                v52 = v55;
                                v43 = v225;
                                v93 = v206;
LABEL_230:

                                goto LABEL_231;
                              }
                            }

                            else
                            {
                              v62 = v8;
                            }

                            v204 = 0;
                            v63 = v225;
                            goto LABEL_100;
                          }

                          if (errorCopy)
                          {
                            v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v203 = *MEMORY[0x1E698F240];
                            v274 = *MEMORY[0x1E696A578];
                            v197 = v55;
                            v43 = v225;
                            v93 = v206;
                            v52 = v197;
                            v204 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSpecificLocationInQuery"];
                            v275 = v204;
                            v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
                            v119 = v203;
                            v202 = v118;
                            v120 = [v210 initWithDomain:v119 code:2 userInfo:?];
                            v209 = 0;
                            errorCopy3 = 0;
                            *errorCopy = v120;
                            v34 = v239;
                            v47 = v221;
                            v89 = v213;
                            goto LABEL_230;
                          }

                          v209 = 0;
                          errorCopy3 = 0;
                          v34 = v239;
                          v47 = v221;
                          v89 = v213;
                          v52 = v55;
                          v43 = v225;
                          v93 = v206;
LABEL_231:

                          goto LABEL_232;
                        }

                        if (errorCopy)
                        {
                          v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v208 = *MEMORY[0x1E698F240];
                          v276 = *MEMORY[0x1E696A578];
                          v196 = v55;
                          v43 = v225;
                          v52 = v196;
                          v209 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isGeneralPersonReferenceInQuery"];
                          v277 = v209;
                          v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v277 forKeys:&v276 count:1];
                          v116 = v208;
                          v207 = v115;
                          v117 = [v114 initWithDomain:v116 code:2 userInfo:?];
                          v93 = 0;
                          errorCopy3 = 0;
                          *errorCopy = v117;
                          v34 = v239;
                          v47 = v221;
                          v89 = v213;
                          goto LABEL_231;
                        }

                        v93 = 0;
                        errorCopy3 = 0;
                        v34 = v239;
                        v47 = v221;
                        v89 = v213;
                        v52 = v55;
                        v43 = v225;
LABEL_232:

                        goto LABEL_233;
                      }

                      if (errorCopy)
                      {
                        v216 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v212 = *MEMORY[0x1E698F240];
                        v278 = *MEMORY[0x1E696A578];
                        v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSpecificPersonInQuery"];
                        v279 = v93;
                        v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v279 forKeys:&v278 count:1];
                        v95 = v212;
                        v211 = v94;
                        v96 = [v216 initWithDomain:v95 code:2 userInfo:?];
                        v215 = 0;
                        errorCopy3 = 0;
                        *errorCopy = v96;
                        v34 = v239;
                        v47 = v221;
                        v89 = v213;
                        goto LABEL_232;
                      }

                      v215 = 0;
                      errorCopy3 = 0;
                      v34 = v239;
                      v47 = v221;
                      v89 = v213;
LABEL_233:

                      goto LABEL_234;
                    }

                    if (errorCopy)
                    {
                      v219 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v214 = *MEMORY[0x1E698F240];
                      v280 = *MEMORY[0x1E696A578];
                      v215 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfKnownEntitiesInQuery"];
                      v281 = v215;
                      v91 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v281 forKeys:&v280 count:1];
                      v92 = v219;
                      v217 = v91;
                      v89 = 0;
                      errorCopy3 = 0;
                      *errorCopy = [v92 initWithDomain:v214 code:2 userInfo:?];
                      v34 = v239;
                      v47 = v221;
                      goto LABEL_233;
                    }

                    v89 = 0;
                    errorCopy3 = 0;
                    v34 = v239;
                    v47 = v221;
LABEL_234:

                    v78 = v222;
                    v40 = v224;
                    goto LABEL_235;
                  }

                  if (errorCopy)
                  {
                    v223 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v218 = *MEMORY[0x1E698F240];
                    v282 = *MEMORY[0x1E696A578];
                    v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfTokensInQuery"];
                    v283 = v89;
                    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v283 forKeys:&v282 count:1];
                    v90 = [v223 initWithDomain:v218 code:2 userInfo:v52];
                    v222 = 0;
                    errorCopy3 = 0;
                    *errorCopy = v90;
                    v34 = v239;
                    goto LABEL_234;
                  }

                  errorCopy3 = 0;
                  v34 = v239;
                  v78 = 0;
LABEL_235:

                  v72 = v226;
                  goto LABEL_236;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v44 = 0;
                  goto LABEL_52;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v44 = v44;
                  goto LABEL_52;
                }

                if (errorCopy)
                {
                  v230 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v228 = *MEMORY[0x1E698F240];
                  v286 = *MEMORY[0x1E696A578];
                  v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfSearchesFromThisSurfaceWeeklyAvg"];
                  v287 = v72;
                  v73 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v287 forKeys:&v286 count:1];
                  v74 = v230;
                  v229 = v73;
                  v68 = 0;
                  errorCopy3 = 0;
                  *errorCopy = [v74 initWithDomain:v228 code:2 userInfo:?];
                  v34 = v239;
LABEL_237:

                  v8 = v231;
                  goto LABEL_238;
                }

                v68 = 0;
                errorCopy3 = 0;
LABEL_154:
                v34 = v239;
LABEL_238:

                v42 = v232;
                goto LABEL_239;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v43 = v42;
                goto LABEL_43;
              }

              if (errorCopy)
              {
                v66 = objc_alloc(MEMORY[0x1E696ABC0]);
                v235 = v7;
                v67 = *MEMORY[0x1E698F240];
                v288 = *MEMORY[0x1E696A578];
                v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfSearchesFromThisSurfaceLastWeek"];
                v289 = v68;
                v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v289 forKeys:&v288 count:1];
                v70 = v67;
                v7 = v235;
                v233 = v69;
                v71 = [v66 initWithDomain:v70 code:2 userInfo:?];
                v43 = 0;
                errorCopy3 = 0;
                *errorCopy = v71;
                goto LABEL_154;
              }

              v43 = 0;
              errorCopy3 = 0;
LABEL_120:
              v34 = v239;
LABEL_239:

              v21 = v245;
              v83 = v237;
              goto LABEL_240;
            }

            errorCopy3 = error;
            if (error)
            {
              v64 = objc_alloc(MEMORY[0x1E696ABC0]);
              v234 = *MEMORY[0x1E698F240];
              v290 = *MEMORY[0x1E696A578];
              v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sizeOfPhotoDB"];
              v291 = v43;
              v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v291 forKeys:&v290 count:1];
              v65 = [v64 initWithDomain:v234 code:2 userInfo:v42];
              v40 = 0;
              errorCopy3 = 0;
              *errorCopy = v65;
              goto LABEL_120;
            }

            v40 = 0;
            v34 = v239;
            v83 = v39;
            v21 = v245;
LABEL_240:

            v9 = v238;
            goto LABEL_241;
          }

          v220 = v10;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = v14;
            v244 = [MEMORY[0x1E696AD98] numberWithInt:BMAeroMLPhotosSearchInsightsUISurfaceTypeFromString(v37)];

            goto LABEL_36;
          }

          if (error)
          {
            v79 = objc_alloc(MEMORY[0x1E696ABC0]);
            v80 = *MEMORY[0x1E698F240];
            v292 = *MEMORY[0x1E696A578];
            v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"uiSurface"];
            v293 = v40;
            v81 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
            v82 = [v79 initWithDomain:v80 code:2 userInfo:v81];
            v244 = 0;
            errorCopy3 = 0;
            *errorCopy = v82;
            v83 = v81;
            v10 = v220;
            v21 = v245;
            v34 = v239;
            goto LABEL_240;
          }

          v244 = 0;
          errorCopy3 = 0;
          v21 = v245;
          v34 = v239;
LABEL_241:

          self = selfCopy;
          goto LABEL_242;
        }

        errorCopy3 = error;
        if (error)
        {
          v242 = objc_alloc(MEMORY[0x1E696ABC0]);
          v240 = *MEMORY[0x1E698F240];
          v294 = *MEMORY[0x1E696A578];
          v21 = v245;
          v244 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"viewedPhotoCount"];
          v295 = v244;
          v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v295 forKeys:&v294 count:1];
          v36 = v242;
          v241 = v35;
          v34 = 0;
          errorCopy3 = 0;
          *error = [v36 initWithDomain:v240 code:2 userInfo:?];
          goto LABEL_241;
        }

        v34 = 0;
        v21 = v245;
LABEL_242:

        goto LABEL_243;
      }

      if (error)
      {
        v247 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v296 = *MEMORY[0x1E696A578];
        v24 = v7;
        v25 = v9;
        selfCopy2 = self;
        v27 = v8;
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v159 = objc_opt_class();
        v29 = v28;
        v8 = v27;
        self = selfCopy2;
        v9 = v25;
        v7 = v24;
        v30 = [v29 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v159, @"didUserViewAnyPhoto"];
        v297 = v30;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
        v32 = v247;
        v33 = v23;
        v34 = v30;
        v246 = v31;
        v21 = 0;
        errorCopy3 = 0;
        *error = [v32 initWithDomain:v33 code:2 userInfo:?];
        goto LABEL_242;
      }

      v21 = 0;
      errorCopy3 = 0;
LABEL_243:

      goto LABEL_244;
    }

    if (error)
    {
      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v298 = *MEMORY[0x1E696A578];
      v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"searchResultSize"];
      v299 = v21;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v299 forKeys:&v298 count:1];
      v22 = [v19 initWithDomain:v20 code:2 userInfo:v10];
      v249 = 0;
      errorCopy3 = 0;
      *error = v22;
      goto LABEL_243;
    }

    v249 = 0;
    errorCopy3 = 0;
LABEL_244:

    goto LABEL_245;
  }

  if (error)
  {
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = *MEMORY[0x1E698F240];
    v300 = *MEMORY[0x1E696A578];
    v249 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"wasThereAnyResultsShown"];
    v301[0] = v249;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v301 forKeys:&v300 count:1];
    v17 = [v15 initWithDomain:v16 code:2 userInfo:v9];
    v8 = 0;
    errorCopy3 = 0;
    *error = v17;
    goto LABEL_244;
  }

  v8 = 0;
  errorCopy3 = 0;
LABEL_245:

  v153 = *MEMORY[0x1E69E9840];
  return errorCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAeroMLPhotosSearchInsights *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasWasThereAnyResultsShown)
  {
    wasThereAnyResultsShown = self->_wasThereAnyResultsShown;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasSearchResultSize)
  {
    searchResultSize = self->_searchResultSize;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDidUserViewAnyPhoto)
  {
    didUserViewAnyPhoto = self->_didUserViewAnyPhoto;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasViewedPhotoCount)
  {
    viewedPhotoCount = self->_viewedPhotoCount;
    PBDataWriterWriteUint32Field();
  }

  uiSurface = self->_uiSurface;
  PBDataWriterWriteUint32Field();
  if (self->_hasSizeOfPhotoDB)
  {
    sizeOfPhotoDB = self->_sizeOfPhotoDB;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasNumberOfSearchesFromThisSurfaceLastWeek)
  {
    numberOfSearchesFromThisSurfaceLastWeek = self->_numberOfSearchesFromThisSurfaceLastWeek;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasNumberOfSearchesFromThisSurfaceWeeklyAvg)
  {
    numberOfSearchesFromThisSurfaceWeeklyAvg = self->_numberOfSearchesFromThisSurfaceWeeklyAvg;
    PBDataWriterWriteUint32Field();
  }

  if (self->_queryRaw)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasNumberOfTokensInQuery)
  {
    numberOfTokensInQuery = self->_numberOfTokensInQuery;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasNumberOfKnownEntitiesInQuery)
  {
    numberOfKnownEntitiesInQuery = self->_numberOfKnownEntitiesInQuery;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasIsSpecificPersonInQuery)
  {
    isSpecificPersonInQuery = self->_isSpecificPersonInQuery;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsGeneralPersonReferenceInQuery)
  {
    isGeneralPersonReferenceInQuery = self->_isGeneralPersonReferenceInQuery;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSpecificLocationInQuery)
  {
    isSpecificLocationInQuery = self->_isSpecificLocationInQuery;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsGeneralLocationReferenceInQuery)
  {
    isGeneralLocationReferenceInQuery = self->_isGeneralLocationReferenceInQuery;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSpecificDateInQuery)
  {
    isSpecificDateInQuery = self->_isSpecificDateInQuery;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsGeneralDateReferenceInQuery)
  {
    isGeneralDateReferenceInQuery = self->_isGeneralDateReferenceInQuery;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsHolidayReferenceInQuery)
  {
    isHolidayReferenceInQuery = self->_isHolidayReferenceInQuery;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsActionRunningInQuery)
  {
    isActionRunningInQuery = self->_isActionRunningInQuery;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsActionHoldingInQuery)
  {
    isActionHoldingInQuery = self->_isActionHoldingInQuery;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsActionClimbingInQuery)
  {
    isActionClimbingInQuery = self->_isActionClimbingInQuery;
    PBDataWriterWriteBOOLField();
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_region)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasLibraryProcessingProgress)
  {
    libraryProcessingProgress = self->_libraryProcessingProgress;
    PBDataWriterWriteUint32Field();
  }

  librarySizeBucket = self->_librarySizeBucket;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v173.receiver = self;
  v173.super_class = BMAeroMLPhotosSearchInsights;
  v5 = [(BMEventBase *)&v173 init];
  if (!v5)
  {
LABEL_291:
    v171 = v5;
    goto LABEL_292;
  }

  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v174 = 0;
      v10 = [fromCopy position] + 1;
      if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v9 |= (v174 & 0x7F) << v7;
      if ((v174 & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      v13 = v8++ >= 9;
      if (v13)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
    if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v5->_hasWasThereAnyResultsShown = 1;
        while (1)
        {
          v174 = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (v174 & 0x7F) << v15;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v13 = v16++ >= 9;
          if (v13)
          {
            LOBYTE(v21) = 0;
            goto LABEL_262;
          }
        }

        v21 = (v17 != 0) & ~[fromCopy hasError];
LABEL_262:
        v5->_wasThereAnyResultsShown = v21;
        continue;
      case 2u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        v5->_hasSearchResultSize = 1;
        while (1)
        {
          v174 = 0;
          v107 = [fromCopy position] + 1;
          if (v107 >= [fromCopy position] && (v108 = objc_msgSend(fromCopy, "position") + 1, v108 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v106 |= (v174 & 0x7F) << v104;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v13 = v105++ >= 9;
          if (v13)
          {
            v110 = 0;
            goto LABEL_266;
          }
        }

        if ([fromCopy hasError])
        {
          v110 = 0;
        }

        else
        {
          v110 = v106;
        }

LABEL_266:
        v5->_searchResultSize = v110;
        continue;
      case 3u:
        v76 = 0;
        v77 = 0;
        v78 = 0;
        v5->_hasDidUserViewAnyPhoto = 1;
        while (1)
        {
          v174 = 0;
          v79 = [fromCopy position] + 1;
          if (v79 >= [fromCopy position] && (v80 = objc_msgSend(fromCopy, "position") + 1, v80 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v78 |= (v174 & 0x7F) << v76;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v13 = v77++ >= 9;
          if (v13)
          {
            LOBYTE(v82) = 0;
            goto LABEL_250;
          }
        }

        v82 = (v78 != 0) & ~[fromCopy hasError];
LABEL_250:
        v5->_didUserViewAnyPhoto = v82;
        continue;
      case 4u:
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v5->_hasViewedPhotoCount = 1;
        while (1)
        {
          v174 = 0;
          v93 = [fromCopy position] + 1;
          if (v93 >= [fromCopy position] && (v94 = objc_msgSend(fromCopy, "position") + 1, v94 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v92 |= (v174 & 0x7F) << v90;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          v13 = v91++ >= 9;
          if (v13)
          {
            v96 = 0;
            goto LABEL_256;
          }
        }

        if ([fromCopy hasError])
        {
          v96 = 0;
        }

        else
        {
          v96 = v92;
        }

LABEL_256:
        v5->_viewedPhotoCount = v96;
        continue;
      case 5u:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        while (1)
        {
          v174 = 0;
          v46 = [fromCopy position] + 1;
          if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v45 |= (v174 & 0x7F) << v43;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v49 = v44++ > 8;
          if (v49)
          {
            goto LABEL_232;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v45 > 4)
        {
LABEL_232:
          LODWORD(v45) = 0;
        }

        v170 = 60;
        goto LABEL_244;
      case 6u:
        v125 = 0;
        v126 = 0;
        v127 = 0;
        v5->_hasSizeOfPhotoDB = 1;
        while (1)
        {
          v174 = 0;
          v128 = [fromCopy position] + 1;
          if (v128 >= [fromCopy position] && (v129 = objc_msgSend(fromCopy, "position") + 1, v129 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v127 |= (v174 & 0x7F) << v125;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v125 += 7;
          v13 = v126++ >= 9;
          if (v13)
          {
            v131 = 0;
            goto LABEL_274;
          }
        }

        if ([fromCopy hasError])
        {
          v131 = 0;
        }

        else
        {
          v131 = v127;
        }

LABEL_274:
        v5->_sizeOfPhotoDB = v131;
        continue;
      case 7u:
        v141 = 0;
        v142 = 0;
        v143 = 0;
        v5->_hasNumberOfSearchesFromThisSurfaceLastWeek = 1;
        while (1)
        {
          v174 = 0;
          v144 = [fromCopy position] + 1;
          if (v144 >= [fromCopy position] && (v145 = objc_msgSend(fromCopy, "position") + 1, v145 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v143 |= (v174 & 0x7F) << v141;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v141 += 7;
          v13 = v142++ >= 9;
          if (v13)
          {
            v147 = 0;
            goto LABEL_280;
          }
        }

        if ([fromCopy hasError])
        {
          v147 = 0;
        }

        else
        {
          v147 = v143;
        }

LABEL_280:
        v5->_numberOfSearchesFromThisSurfaceLastWeek = v147;
        continue;
      case 8u:
        v97 = 0;
        v98 = 0;
        v99 = 0;
        v5->_hasNumberOfSearchesFromThisSurfaceWeeklyAvg = 1;
        while (1)
        {
          v174 = 0;
          v100 = [fromCopy position] + 1;
          if (v100 >= [fromCopy position] && (v101 = objc_msgSend(fromCopy, "position") + 1, v101 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v99 |= (v174 & 0x7F) << v97;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v97 += 7;
          v13 = v98++ >= 9;
          if (v13)
          {
            v103 = 0;
            goto LABEL_260;
          }
        }

        if ([fromCopy hasError])
        {
          v103 = 0;
        }

        else
        {
          v103 = v99;
        }

LABEL_260:
        v5->_numberOfSearchesFromThisSurfaceWeeklyAvg = v103;
        continue;
      case 9u:
        v132 = PBReaderReadString();
        v133 = 96;
        goto LABEL_221;
      case 0xAu:
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v5->_hasNumberOfTokensInQuery = 1;
        while (1)
        {
          v174 = 0;
          v60 = [fromCopy position] + 1;
          if (v60 >= [fromCopy position] && (v61 = objc_msgSend(fromCopy, "position") + 1, v61 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v59 |= (v174 & 0x7F) << v57;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          v13 = v58++ >= 9;
          if (v13)
          {
            v63 = 0;
            goto LABEL_239;
          }
        }

        if ([fromCopy hasError])
        {
          v63 = 0;
        }

        else
        {
          v63 = v59;
        }

LABEL_239:
        v5->_numberOfTokensInQuery = v63;
        continue;
      case 0xBu:
        v155 = 0;
        v156 = 0;
        v157 = 0;
        v5->_hasNumberOfKnownEntitiesInQuery = 1;
        while (1)
        {
          v174 = 0;
          v158 = [fromCopy position] + 1;
          if (v158 >= [fromCopy position] && (v159 = objc_msgSend(fromCopy, "position") + 1, v159 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v157 |= (v174 & 0x7F) << v155;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v155 += 7;
          v13 = v156++ >= 9;
          if (v13)
          {
            v161 = 0;
            goto LABEL_286;
          }
        }

        if ([fromCopy hasError])
        {
          v161 = 0;
        }

        else
        {
          v161 = v157;
        }

LABEL_286:
        v5->_numberOfKnownEntitiesInQuery = v161;
        continue;
      case 0xCu:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v5->_hasIsSpecificPersonInQuery = 1;
        while (1)
        {
          v174 = 0;
          v39 = [fromCopy position] + 1;
          if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v38 |= (v174 & 0x7F) << v36;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v13 = v37++ >= 9;
          if (v13)
          {
            LOBYTE(v42) = 0;
            goto LABEL_229;
          }
        }

        v42 = (v38 != 0) & ~[fromCopy hasError];
LABEL_229:
        v5->_isSpecificPersonInQuery = v42;
        continue;
      case 0xDu:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v5->_hasIsGeneralPersonReferenceInQuery = 1;
        while (1)
        {
          v174 = 0;
          v53 = [fromCopy position] + 1;
          if (v53 >= [fromCopy position] && (v54 = objc_msgSend(fromCopy, "position") + 1, v54 <= objc_msgSend(fromCopy, "length")))
          {
            data13 = [fromCopy data];
            [data13 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v52 |= (v174 & 0x7F) << v50;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v50 += 7;
          v13 = v51++ >= 9;
          if (v13)
          {
            LOBYTE(v56) = 0;
            goto LABEL_235;
          }
        }

        v56 = (v52 != 0) & ~[fromCopy hasError];
LABEL_235:
        v5->_isGeneralPersonReferenceInQuery = v56;
        continue;
      case 0xEu:
        v134 = 0;
        v135 = 0;
        v136 = 0;
        v5->_hasIsSpecificLocationInQuery = 1;
        while (1)
        {
          v174 = 0;
          v137 = [fromCopy position] + 1;
          if (v137 >= [fromCopy position] && (v138 = objc_msgSend(fromCopy, "position") + 1, v138 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v136 |= (v174 & 0x7F) << v134;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v134 += 7;
          v13 = v135++ >= 9;
          if (v13)
          {
            LOBYTE(v140) = 0;
            goto LABEL_276;
          }
        }

        v140 = (v136 != 0) & ~[fromCopy hasError];
LABEL_276:
        v5->_isSpecificLocationInQuery = v140;
        continue;
      case 0xFu:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v5->_hasIsGeneralLocationReferenceInQuery = 1;
        while (1)
        {
          v174 = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data15 = [fromCopy data];
            [data15 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 |= (v174 & 0x7F) << v29;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v13 = v30++ >= 9;
          if (v13)
          {
            LOBYTE(v35) = 0;
            goto LABEL_227;
          }
        }

        v35 = (v31 != 0) & ~[fromCopy hasError];
LABEL_227:
        v5->_isGeneralLocationReferenceInQuery = v35;
        continue;
      case 0x10u:
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v5->_hasIsSpecificDateInQuery = 1;
        while (1)
        {
          v174 = 0;
          v86 = [fromCopy position] + 1;
          if (v86 >= [fromCopy position] && (v87 = objc_msgSend(fromCopy, "position") + 1, v87 <= objc_msgSend(fromCopy, "length")))
          {
            data16 = [fromCopy data];
            [data16 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v85 |= (v174 & 0x7F) << v83;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v83 += 7;
          v13 = v84++ >= 9;
          if (v13)
          {
            LOBYTE(v89) = 0;
            goto LABEL_252;
          }
        }

        v89 = (v85 != 0) & ~[fromCopy hasError];
LABEL_252:
        v5->_isSpecificDateInQuery = v89;
        continue;
      case 0x11u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        v5->_hasIsGeneralDateReferenceInQuery = 1;
        while (1)
        {
          v174 = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data17 = [fromCopy data];
            [data17 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v24 |= (v174 & 0x7F) << v22;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v13 = v23++ >= 9;
          if (v13)
          {
            LOBYTE(v28) = 0;
            goto LABEL_225;
          }
        }

        v28 = (v24 != 0) & ~[fromCopy hasError];
LABEL_225:
        v5->_isGeneralDateReferenceInQuery = v28;
        continue;
      case 0x12u:
        v111 = 0;
        v112 = 0;
        v113 = 0;
        v5->_hasIsHolidayReferenceInQuery = 1;
        while (1)
        {
          v174 = 0;
          v114 = [fromCopy position] + 1;
          if (v114 >= [fromCopy position] && (v115 = objc_msgSend(fromCopy, "position") + 1, v115 <= objc_msgSend(fromCopy, "length")))
          {
            data18 = [fromCopy data];
            [data18 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v113 |= (v174 & 0x7F) << v111;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v111 += 7;
          v13 = v112++ >= 9;
          if (v13)
          {
            LOBYTE(v117) = 0;
            goto LABEL_268;
          }
        }

        v117 = (v113 != 0) & ~[fromCopy hasError];
LABEL_268:
        v5->_isHolidayReferenceInQuery = v117;
        continue;
      case 0x13u:
        v148 = 0;
        v149 = 0;
        v150 = 0;
        v5->_hasIsActionRunningInQuery = 1;
        while (1)
        {
          v174 = 0;
          v151 = [fromCopy position] + 1;
          if (v151 >= [fromCopy position] && (v152 = objc_msgSend(fromCopy, "position") + 1, v152 <= objc_msgSend(fromCopy, "length")))
          {
            data19 = [fromCopy data];
            [data19 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v150 |= (v174 & 0x7F) << v148;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v148 += 7;
          v13 = v149++ >= 9;
          if (v13)
          {
            LOBYTE(v154) = 0;
            goto LABEL_282;
          }
        }

        v154 = (v150 != 0) & ~[fromCopy hasError];
LABEL_282:
        v5->_isActionRunningInQuery = v154;
        continue;
      case 0x14u:
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v5->_hasIsActionHoldingInQuery = 1;
        while (1)
        {
          v174 = 0;
          v165 = [fromCopy position] + 1;
          if (v165 >= [fromCopy position] && (v166 = objc_msgSend(fromCopy, "position") + 1, v166 <= objc_msgSend(fromCopy, "length")))
          {
            data20 = [fromCopy data];
            [data20 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v164 |= (v174 & 0x7F) << v162;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v162 += 7;
          v13 = v163++ >= 9;
          if (v13)
          {
            LOBYTE(v168) = 0;
            goto LABEL_288;
          }
        }

        v168 = (v164 != 0) & ~[fromCopy hasError];
LABEL_288:
        v5->_isActionHoldingInQuery = v168;
        continue;
      case 0x15u:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v5->_hasIsActionClimbingInQuery = 1;
        while (1)
        {
          v174 = 0;
          v121 = [fromCopy position] + 1;
          if (v121 >= [fromCopy position] && (v122 = objc_msgSend(fromCopy, "position") + 1, v122 <= objc_msgSend(fromCopy, "length")))
          {
            data21 = [fromCopy data];
            [data21 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v120 |= (v174 & 0x7F) << v118;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v118 += 7;
          v13 = v119++ >= 9;
          if (v13)
          {
            LOBYTE(v124) = 0;
            goto LABEL_270;
          }
        }

        v124 = (v120 != 0) & ~[fromCopy hasError];
LABEL_270:
        v5->_isActionClimbingInQuery = v124;
        continue;
      case 0x16u:
        v132 = PBReaderReadString();
        v133 = 104;
        goto LABEL_221;
      case 0x17u:
        v132 = PBReaderReadString();
        v133 = 112;
        goto LABEL_221;
      case 0x18u:
        v132 = PBReaderReadString();
        v133 = 120;
LABEL_221:
        v169 = *(&v5->super.super.isa + v133);
        *(&v5->super.super.isa + v133) = v132;

        continue;
      case 0x19u:
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v5->_hasLibraryProcessingProgress = 1;
        while (1)
        {
          v174 = 0;
          v72 = [fromCopy position] + 1;
          if (v72 >= [fromCopy position] && (v73 = objc_msgSend(fromCopy, "position") + 1, v73 <= objc_msgSend(fromCopy, "length")))
          {
            data22 = [fromCopy data];
            [data22 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v71 |= (v174 & 0x7F) << v69;
          if ((v174 & 0x80) == 0)
          {
            break;
          }

          v69 += 7;
          v13 = v70++ >= 9;
          if (v13)
          {
            v75 = 0;
            goto LABEL_248;
          }
        }

        if ([fromCopy hasError])
        {
          v75 = 0;
        }

        else
        {
          v75 = v71;
        }

LABEL_248:
        v5->_libraryProcessingProgress = v75;
        continue;
      case 0x1Au:
        v64 = 0;
        v65 = 0;
        v45 = 0;
        break;
      default:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_290;
        }

        continue;
    }

    while (1)
    {
      v174 = 0;
      v66 = [fromCopy position] + 1;
      if (v66 >= [fromCopy position] && (v67 = objc_msgSend(fromCopy, "position") + 1, v67 <= objc_msgSend(fromCopy, "length")))
      {
        data23 = [fromCopy data];
        [data23 getBytes:&v174 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v45 |= (v174 & 0x7F) << v64;
      if ((v174 & 0x80) == 0)
      {
        break;
      }

      v64 += 7;
      v49 = v65++ > 8;
      if (v49)
      {
        goto LABEL_242;
      }
    }

    if (([fromCopy hasError] & 1) != 0 || v45 > 0xA)
    {
LABEL_242:
      LODWORD(v45) = 0;
    }

    v170 = 88;
LABEL_244:
    *(&v5->super.super.isa + v170) = v45;
  }

  if (([fromCopy hasError] & 1) == 0)
  {
    goto LABEL_291;
  }

LABEL_290:
  v171 = 0;
LABEL_292:

  return v171;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights wasThereAnyResultsShown](self, "wasThereAnyResultsShown")}];
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights searchResultSize](self, "searchResultSize")}];
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights didUserViewAnyPhoto](self, "didUserViewAnyPhoto")}];
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights viewedPhotoCount](self, "viewedPhotoCount")}];
  v25 = BMAeroMLPhotosSearchInsightsUISurfaceTypeAsString([(BMAeroMLPhotosSearchInsights *)self uiSurface]);
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights sizeOfPhotoDB](self, "sizeOfPhotoDB")}];
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights numberOfSearchesFromThisSurfaceLastWeek](self, "numberOfSearchesFromThisSurfaceLastWeek")}];
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights numberOfSearchesFromThisSurfaceWeeklyAvg](self, "numberOfSearchesFromThisSurfaceWeeklyAvg")}];
  queryRaw = [(BMAeroMLPhotosSearchInsights *)self queryRaw];
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights numberOfTokensInQuery](self, "numberOfTokensInQuery")}];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights numberOfKnownEntitiesInQuery](self, "numberOfKnownEntitiesInQuery")}];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isSpecificPersonInQuery](self, "isSpecificPersonInQuery")}];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isGeneralPersonReferenceInQuery](self, "isGeneralPersonReferenceInQuery")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isSpecificLocationInQuery](self, "isSpecificLocationInQuery")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isGeneralLocationReferenceInQuery](self, "isGeneralLocationReferenceInQuery")}];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isSpecificDateInQuery](self, "isSpecificDateInQuery")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isGeneralDateReferenceInQuery](self, "isGeneralDateReferenceInQuery")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isHolidayReferenceInQuery](self, "isHolidayReferenceInQuery")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isActionRunningInQuery](self, "isActionRunningInQuery")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isActionHoldingInQuery](self, "isActionHoldingInQuery")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMAeroMLPhotosSearchInsights isActionClimbingInQuery](self, "isActionClimbingInQuery")}];
  language = [(BMAeroMLPhotosSearchInsights *)self language];
  region = [(BMAeroMLPhotosSearchInsights *)self region];
  version = [(BMAeroMLPhotosSearchInsights *)self version];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchInsights libraryProcessingProgress](self, "libraryProcessingProgress")}];
  v8 = BMAeroMLPhotosSearchInsightsPhotosLibrarySizeBucketAsString([(BMAeroMLPhotosSearchInsights *)self librarySizeBucket]);
  v19 = [v18 initWithFormat:@"BMAeroMLPhotosSearchInsights with wasThereAnyResultsShown: %@, searchResultSize: %@, didUserViewAnyPhoto: %@, viewedPhotoCount: %@, uiSurface: %@, sizeOfPhotoDB: %@, numberOfSearchesFromThisSurfaceLastWeek: %@, numberOfSearchesFromThisSurfaceWeeklyAvg: %@, queryRaw: %@, numberOfTokensInQuery: %@, numberOfKnownEntitiesInQuery: %@, isSpecificPersonInQuery: %@, isGeneralPersonReferenceInQuery: %@, isSpecificLocationInQuery: %@, isGeneralLocationReferenceInQuery: %@, isSpecificDateInQuery: %@, isGeneralDateReferenceInQuery: %@, isHolidayReferenceInQuery: %@, isActionRunningInQuery: %@, isActionHoldingInQuery: %@, isActionClimbingInQuery: %@, language: %@, region: %@, version: %@, libraryProcessingProgress: %@, librarySizeBucket: %@", v30, v31, v27, v29, v25, v24, v28, v26, queryRaw, v22, v17, v21, v16, v15, v14, v20, v13, v3, v12, v11, v10, language, region, version, v7, v8];

  return v19;
}

- (BMAeroMLPhotosSearchInsights)initWithWasThereAnyResultsShown:(id)shown searchResultSize:(id)size didUserViewAnyPhoto:(id)photo viewedPhotoCount:(id)count uiSurface:(int)surface sizeOfPhotoDB:(id)b numberOfSearchesFromThisSurfaceLastWeek:(id)week numberOfSearchesFromThisSurfaceWeeklyAvg:(id)self0 queryRaw:(id)self1 numberOfTokensInQuery:(id)self2 numberOfKnownEntitiesInQuery:(id)self3 isSpecificPersonInQuery:(id)self4 isGeneralPersonReferenceInQuery:(id)self5 isSpecificLocationInQuery:(id)self6 isGeneralLocationReferenceInQuery:(id)self7 isSpecificDateInQuery:(id)self8 isGeneralDateReferenceInQuery:(id)self9 isHolidayReferenceInQuery:(id)holidayReferenceInQuery isActionRunningInQuery:(id)runningInQuery isActionHoldingInQuery:(id)holdingInQuery isActionClimbingInQuery:(id)climbingInQuery language:(id)language region:(id)region version:(id)version libraryProcessingProgress:(id)progress librarySizeBucket:(int)bucket
{
  shownCopy = shown;
  sizeCopy = size;
  photoCopy = photo;
  countCopy = count;
  bCopy = b;
  weekCopy = week;
  avgCopy = avg;
  rawCopy = raw;
  queryCopy = query;
  inQueryCopy = inQuery;
  personInQueryCopy = personInQuery;
  referenceInQueryCopy = referenceInQuery;
  locationInQueryCopy = locationInQuery;
  locationReferenceInQueryCopy = locationReferenceInQuery;
  dateInQueryCopy = dateInQuery;
  dateReferenceInQueryCopy = dateReferenceInQuery;
  holidayReferenceInQueryCopy = holidayReferenceInQuery;
  runningInQueryCopy = runningInQuery;
  holdingInQueryCopy = holdingInQuery;
  climbingInQueryCopy = climbingInQuery;
  languageCopy = language;
  regionCopy = region;
  versionCopy = version;
  progressCopy = progress;
  v68.receiver = self;
  v68.super_class = BMAeroMLPhotosSearchInsights;
  v40 = [(BMEventBase *)&v68 init];
  if (v40)
  {
    v40->_dataVersion = [objc_opt_class() latestDataVersion];
    if (shownCopy)
    {
      v40->_hasWasThereAnyResultsShown = 1;
      v40->_wasThereAnyResultsShown = [shownCopy BOOLValue];
    }

    else
    {
      v40->_hasWasThereAnyResultsShown = 0;
      v40->_wasThereAnyResultsShown = 0;
    }

    if (sizeCopy)
    {
      v40->_hasSearchResultSize = 1;
      unsignedIntValue = [sizeCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v40->_hasSearchResultSize = 0;
    }

    v40->_searchResultSize = unsignedIntValue;
    if (photoCopy)
    {
      v40->_hasDidUserViewAnyPhoto = 1;
      v40->_didUserViewAnyPhoto = [photoCopy BOOLValue];
    }

    else
    {
      v40->_hasDidUserViewAnyPhoto = 0;
      v40->_didUserViewAnyPhoto = 0;
    }

    unsignedIntValue2 = countCopy;
    if (countCopy)
    {
      v40->_hasViewedPhotoCount = 1;
      unsignedIntValue2 = [countCopy unsignedIntValue];
    }

    else
    {
      v40->_hasViewedPhotoCount = 0;
    }

    v40->_viewedPhotoCount = unsignedIntValue2;
    v40->_uiSurface = surface;
    unsignedIntValue3 = bCopy;
    if (bCopy)
    {
      v40->_hasSizeOfPhotoDB = 1;
      unsignedIntValue3 = [bCopy unsignedIntValue];
    }

    else
    {
      v40->_hasSizeOfPhotoDB = 0;
    }

    v40->_sizeOfPhotoDB = unsignedIntValue3;
    unsignedIntValue4 = weekCopy;
    if (weekCopy)
    {
      v40->_hasNumberOfSearchesFromThisSurfaceLastWeek = 1;
      unsignedIntValue4 = [weekCopy unsignedIntValue];
    }

    else
    {
      v40->_hasNumberOfSearchesFromThisSurfaceLastWeek = 0;
    }

    v40->_numberOfSearchesFromThisSurfaceLastWeek = unsignedIntValue4;
    unsignedIntValue5 = avgCopy;
    if (avgCopy)
    {
      v40->_hasNumberOfSearchesFromThisSurfaceWeeklyAvg = 1;
      unsignedIntValue5 = [avgCopy unsignedIntValue];
    }

    else
    {
      v40->_hasNumberOfSearchesFromThisSurfaceWeeklyAvg = 0;
    }

    v40->_numberOfSearchesFromThisSurfaceWeeklyAvg = unsignedIntValue5;
    objc_storeStrong(&v40->_queryRaw, raw);
    unsignedIntValue6 = queryCopy;
    if (queryCopy)
    {
      v40->_hasNumberOfTokensInQuery = 1;
      unsignedIntValue6 = [queryCopy unsignedIntValue];
    }

    else
    {
      v40->_hasNumberOfTokensInQuery = 0;
    }

    v40->_numberOfTokensInQuery = unsignedIntValue6;
    unsignedIntValue7 = inQueryCopy;
    if (inQueryCopy)
    {
      v40->_hasNumberOfKnownEntitiesInQuery = 1;
      unsignedIntValue7 = [inQueryCopy unsignedIntValue];
    }

    else
    {
      v40->_hasNumberOfKnownEntitiesInQuery = 0;
    }

    v40->_numberOfKnownEntitiesInQuery = unsignedIntValue7;
    if (personInQueryCopy)
    {
      v40->_hasIsSpecificPersonInQuery = 1;
      v40->_isSpecificPersonInQuery = [personInQueryCopy BOOLValue];
    }

    else
    {
      v40->_hasIsSpecificPersonInQuery = 0;
      v40->_isSpecificPersonInQuery = 0;
    }

    if (referenceInQueryCopy)
    {
      v40->_hasIsGeneralPersonReferenceInQuery = 1;
      v40->_isGeneralPersonReferenceInQuery = [referenceInQueryCopy BOOLValue];
    }

    else
    {
      v40->_hasIsGeneralPersonReferenceInQuery = 0;
      v40->_isGeneralPersonReferenceInQuery = 0;
    }

    if (locationInQueryCopy)
    {
      v40->_hasIsSpecificLocationInQuery = 1;
      v40->_isSpecificLocationInQuery = [locationInQueryCopy BOOLValue];
    }

    else
    {
      v40->_hasIsSpecificLocationInQuery = 0;
      v40->_isSpecificLocationInQuery = 0;
    }

    if (locationReferenceInQueryCopy)
    {
      v40->_hasIsGeneralLocationReferenceInQuery = 1;
      v40->_isGeneralLocationReferenceInQuery = [locationReferenceInQueryCopy BOOLValue];
    }

    else
    {
      v40->_hasIsGeneralLocationReferenceInQuery = 0;
      v40->_isGeneralLocationReferenceInQuery = 0;
    }

    if (dateInQueryCopy)
    {
      v40->_hasIsSpecificDateInQuery = 1;
      v40->_isSpecificDateInQuery = [dateInQueryCopy BOOLValue];
    }

    else
    {
      v40->_hasIsSpecificDateInQuery = 0;
      v40->_isSpecificDateInQuery = 0;
    }

    if (dateReferenceInQueryCopy)
    {
      v40->_hasIsGeneralDateReferenceInQuery = 1;
      v40->_isGeneralDateReferenceInQuery = [dateReferenceInQueryCopy BOOLValue];
    }

    else
    {
      v40->_hasIsGeneralDateReferenceInQuery = 0;
      v40->_isGeneralDateReferenceInQuery = 0;
    }

    if (holidayReferenceInQueryCopy)
    {
      v40->_hasIsHolidayReferenceInQuery = 1;
      v40->_isHolidayReferenceInQuery = [holidayReferenceInQueryCopy BOOLValue];
    }

    else
    {
      v40->_hasIsHolidayReferenceInQuery = 0;
      v40->_isHolidayReferenceInQuery = 0;
    }

    if (runningInQueryCopy)
    {
      v40->_hasIsActionRunningInQuery = 1;
      v40->_isActionRunningInQuery = [runningInQueryCopy BOOLValue];
    }

    else
    {
      v40->_hasIsActionRunningInQuery = 0;
      v40->_isActionRunningInQuery = 0;
    }

    if (holdingInQueryCopy)
    {
      v40->_hasIsActionHoldingInQuery = 1;
      v40->_isActionHoldingInQuery = [holdingInQueryCopy BOOLValue];
    }

    else
    {
      v40->_hasIsActionHoldingInQuery = 0;
      v40->_isActionHoldingInQuery = 0;
    }

    if (climbingInQueryCopy)
    {
      v40->_hasIsActionClimbingInQuery = 1;
      v40->_isActionClimbingInQuery = [climbingInQueryCopy BOOLValue];
    }

    else
    {
      v40->_hasIsActionClimbingInQuery = 0;
      v40->_isActionClimbingInQuery = 0;
    }

    objc_storeStrong(&v40->_language, language);
    objc_storeStrong(&v40->_region, region);
    objc_storeStrong(&v40->_version, version);
    if (progressCopy)
    {
      v40->_hasLibraryProcessingProgress = 1;
      unsignedIntValue8 = [progressCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue8 = 0;
      v40->_hasLibraryProcessingProgress = 0;
    }

    v40->_libraryProcessingProgress = unsignedIntValue8;
    v40->_librarySizeBucket = bucket;
  }

  return v40;
}

+ (id)protoFields
{
  v31[26] = *MEMORY[0x1E69E9840];
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"wasThereAnyResultsShown" number:1 type:12 subMessageClass:0];
  v31[0] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"searchResultSize" number:2 type:4 subMessageClass:0];
  v31[1] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"didUserViewAnyPhoto" number:3 type:12 subMessageClass:0];
  v31[2] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewedPhotoCount" number:4 type:4 subMessageClass:0];
  v31[3] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uiSurface" number:5 type:4 subMessageClass:0];
  v31[4] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sizeOfPhotoDB" number:6 type:4 subMessageClass:0];
  v31[5] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSearchesFromThisSurfaceLastWeek" number:7 type:4 subMessageClass:0];
  v31[6] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSearchesFromThisSurfaceWeeklyAvg" number:8 type:4 subMessageClass:0];
  v31[7] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryRaw" number:9 type:13 subMessageClass:0];
  v31[8] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfTokensInQuery" number:10 type:4 subMessageClass:0];
  v31[9] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfKnownEntitiesInQuery" number:11 type:4 subMessageClass:0];
  v31[10] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSpecificPersonInQuery" number:12 type:12 subMessageClass:0];
  v31[11] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isGeneralPersonReferenceInQuery" number:13 type:12 subMessageClass:0];
  v31[12] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSpecificLocationInQuery" number:14 type:12 subMessageClass:0];
  v31[13] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isGeneralLocationReferenceInQuery" number:15 type:12 subMessageClass:0];
  v31[14] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSpecificDateInQuery" number:16 type:12 subMessageClass:0];
  v31[15] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isGeneralDateReferenceInQuery" number:17 type:12 subMessageClass:0];
  v31[16] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isHolidayReferenceInQuery" number:18 type:12 subMessageClass:0];
  v31[17] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActionRunningInQuery" number:19 type:12 subMessageClass:0];
  v31[18] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActionHoldingInQuery" number:20 type:12 subMessageClass:0];
  v31[19] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActionClimbingInQuery" number:21 type:12 subMessageClass:0];
  v31[20] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"language" number:22 type:13 subMessageClass:0];
  v31[21] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"region" number:23 type:13 subMessageClass:0];
  v31[22] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:24 type:13 subMessageClass:0];
  v31[23] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"libraryProcessingProgress" number:25 type:4 subMessageClass:0];
  v31[24] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"librarySizeBucket" number:26 type:4 subMessageClass:0];
  v31[25] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:26];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
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

    v8 = [[BMAeroMLPhotosSearchInsights alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[12] = 0;
    }
  }

  return v4;
}

@end