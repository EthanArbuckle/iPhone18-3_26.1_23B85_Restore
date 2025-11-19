@interface PKSpotlightDocumentMatchingResult
- (PKSpotlightDocumentMatchingResult)initWithMatchingInfos:(id)a3 matchingValue:(id)a4 mdSearchableItemAttribute:(id)a5 statusCode:(int64_t)a6;
@end

@implementation PKSpotlightDocumentMatchingResult

- (PKSpotlightDocumentMatchingResult)initWithMatchingInfos:(id)a3 matchingValue:(id)a4 mdSearchableItemAttribute:(id)a5 statusCode:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = PKSpotlightDocumentMatchingResult;
  v14 = [(PKSpotlightDocumentMatchingResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_matchingAttribute, a3);
    objc_storeStrong(&v15->_matchingValue, a4);
    objc_storeStrong(&v15->_mdSearchableItemAttribute, a5);
    v15->_statusCode = a6;
  }

  return v15;
}

@end