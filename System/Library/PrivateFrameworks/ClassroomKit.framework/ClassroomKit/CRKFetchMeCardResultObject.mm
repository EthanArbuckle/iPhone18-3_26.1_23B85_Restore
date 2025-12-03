@interface CRKFetchMeCardResultObject
- (CRKFetchMeCardResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchMeCardResultObject

- (CRKFetchMeCardResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CRKFetchMeCardResultObject;
  v5 = [(CATTaskResultObject *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"cardInfo"];
    cardInfo = v5->_cardInfo;
    v5->_cardInfo = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKFetchMeCardResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchMeCardResultObject *)self cardInfo:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"cardInfo"];
}

@end