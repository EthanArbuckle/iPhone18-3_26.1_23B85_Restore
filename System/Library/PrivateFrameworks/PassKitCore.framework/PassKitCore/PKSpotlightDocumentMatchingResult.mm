@interface PKSpotlightDocumentMatchingResult
- (PKSpotlightDocumentMatchingResult)initWithMatchingInfos:(id)infos matchingValue:(id)value mdSearchableItemAttribute:(id)attribute statusCode:(int64_t)code;
@end

@implementation PKSpotlightDocumentMatchingResult

- (PKSpotlightDocumentMatchingResult)initWithMatchingInfos:(id)infos matchingValue:(id)value mdSearchableItemAttribute:(id)attribute statusCode:(int64_t)code
{
  infosCopy = infos;
  valueCopy = value;
  attributeCopy = attribute;
  v17.receiver = self;
  v17.super_class = PKSpotlightDocumentMatchingResult;
  v14 = [(PKSpotlightDocumentMatchingResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_matchingAttribute, infos);
    objc_storeStrong(&v15->_matchingValue, value);
    objc_storeStrong(&v15->_mdSearchableItemAttribute, attribute);
    v15->_statusCode = code;
  }

  return v15;
}

@end