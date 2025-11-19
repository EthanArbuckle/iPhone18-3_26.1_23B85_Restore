@interface CRKFetchMeCardResultObject
- (CRKFetchMeCardResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchMeCardResultObject

- (CRKFetchMeCardResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CRKFetchMeCardResultObject;
  v5 = [(CATTaskResultObject *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodePropertyListForKey:@"cardInfo"];
    cardInfo = v5->_cardInfo;
    v5->_cardInfo = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKFetchMeCardResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(CRKFetchMeCardResultObject *)self cardInfo:v6.receiver];
  [v4 encodeObject:v5 forKey:@"cardInfo"];
}

@end