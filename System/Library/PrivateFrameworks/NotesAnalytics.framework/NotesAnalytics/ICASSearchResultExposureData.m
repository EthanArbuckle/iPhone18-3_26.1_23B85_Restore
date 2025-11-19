@interface ICASSearchResultExposureData
- (ICASSearchResultExposureData)initWithTopHitCountForLongestSearchString:(id)a3 hasNonTopHitResultsForLongestSearchString:(id)a4 attachmentHitCountForLongestSearchString:(id)a5 searchBufferArray:(id)a6;
- (id)toDict;
@end

@implementation ICASSearchResultExposureData

- (ICASSearchResultExposureData)initWithTopHitCountForLongestSearchString:(id)a3 hasNonTopHitResultsForLongestSearchString:(id)a4 attachmentHitCountForLongestSearchString:(id)a5 searchBufferArray:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICASSearchResultExposureData;
  v15 = [(ICASSearchResultExposureData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_topHitCountForLongestSearchString, a3);
    objc_storeStrong(&v16->_hasNonTopHitResultsForLongestSearchString, a4);
    objc_storeStrong(&v16->_attachmentHitCountForLongestSearchString, a5);
    objc_storeStrong(&v16->_searchBufferArray, a6);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"topHitCountForLongestSearchString";
  v3 = [(ICASSearchResultExposureData *)self topHitCountForLongestSearchString];
  if (v3)
  {
    v4 = [(ICASSearchResultExposureData *)self topHitCountForLongestSearchString];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v19[0] = v4;
  v18[1] = @"hasNonTopHitResultsForLongestSearchString";
  v6 = [(ICASSearchResultExposureData *)self hasNonTopHitResultsForLongestSearchString];
  if (v6)
  {
    v7 = [(ICASSearchResultExposureData *)self hasNonTopHitResultsForLongestSearchString];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v19[1] = v7;
  v18[2] = @"attachmentHitCountForLongestSearchString";
  v9 = [(ICASSearchResultExposureData *)self attachmentHitCountForLongestSearchString];
  if (v9)
  {
    v10 = [(ICASSearchResultExposureData *)self attachmentHitCountForLongestSearchString];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v19[2] = v10;
  v18[3] = @"searchBufferArray";
  v12 = [(ICASSearchResultExposureData *)self searchBufferArray];
  if (v12)
  {
    v13 = [(ICASSearchResultExposureData *)self searchBufferArray];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v19[3] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end