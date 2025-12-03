@interface ICASSearchResultExposureData
- (ICASSearchResultExposureData)initWithTopHitCountForLongestSearchString:(id)string hasNonTopHitResultsForLongestSearchString:(id)searchString attachmentHitCountForLongestSearchString:(id)longestSearchString searchBufferArray:(id)array;
- (id)toDict;
@end

@implementation ICASSearchResultExposureData

- (ICASSearchResultExposureData)initWithTopHitCountForLongestSearchString:(id)string hasNonTopHitResultsForLongestSearchString:(id)searchString attachmentHitCountForLongestSearchString:(id)longestSearchString searchBufferArray:(id)array
{
  stringCopy = string;
  searchStringCopy = searchString;
  longestSearchStringCopy = longestSearchString;
  arrayCopy = array;
  v18.receiver = self;
  v18.super_class = ICASSearchResultExposureData;
  v15 = [(ICASSearchResultExposureData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_topHitCountForLongestSearchString, string);
    objc_storeStrong(&v16->_hasNonTopHitResultsForLongestSearchString, searchString);
    objc_storeStrong(&v16->_attachmentHitCountForLongestSearchString, longestSearchString);
    objc_storeStrong(&v16->_searchBufferArray, array);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"topHitCountForLongestSearchString";
  topHitCountForLongestSearchString = [(ICASSearchResultExposureData *)self topHitCountForLongestSearchString];
  if (topHitCountForLongestSearchString)
  {
    topHitCountForLongestSearchString2 = [(ICASSearchResultExposureData *)self topHitCountForLongestSearchString];
  }

  else
  {
    topHitCountForLongestSearchString2 = objc_opt_new();
  }

  v5 = topHitCountForLongestSearchString2;
  v19[0] = topHitCountForLongestSearchString2;
  v18[1] = @"hasNonTopHitResultsForLongestSearchString";
  hasNonTopHitResultsForLongestSearchString = [(ICASSearchResultExposureData *)self hasNonTopHitResultsForLongestSearchString];
  if (hasNonTopHitResultsForLongestSearchString)
  {
    hasNonTopHitResultsForLongestSearchString2 = [(ICASSearchResultExposureData *)self hasNonTopHitResultsForLongestSearchString];
  }

  else
  {
    hasNonTopHitResultsForLongestSearchString2 = objc_opt_new();
  }

  v8 = hasNonTopHitResultsForLongestSearchString2;
  v19[1] = hasNonTopHitResultsForLongestSearchString2;
  v18[2] = @"attachmentHitCountForLongestSearchString";
  attachmentHitCountForLongestSearchString = [(ICASSearchResultExposureData *)self attachmentHitCountForLongestSearchString];
  if (attachmentHitCountForLongestSearchString)
  {
    attachmentHitCountForLongestSearchString2 = [(ICASSearchResultExposureData *)self attachmentHitCountForLongestSearchString];
  }

  else
  {
    attachmentHitCountForLongestSearchString2 = objc_opt_new();
  }

  v11 = attachmentHitCountForLongestSearchString2;
  v19[2] = attachmentHitCountForLongestSearchString2;
  v18[3] = @"searchBufferArray";
  searchBufferArray = [(ICASSearchResultExposureData *)self searchBufferArray];
  if (searchBufferArray)
  {
    searchBufferArray2 = [(ICASSearchResultExposureData *)self searchBufferArray];
  }

  else
  {
    searchBufferArray2 = objc_opt_new();
  }

  v14 = searchBufferArray2;
  v19[3] = searchBufferArray2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end