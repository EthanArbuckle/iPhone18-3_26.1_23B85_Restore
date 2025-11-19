@interface CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject
- (CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject)initWithCoder:(id)a3;
- (CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject)initWithNumberOfDaysBeforeAutomaticRemoval:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject

- (CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject)initWithNumberOfDaysBeforeAutomaticRemoval:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject;
  result = [(CATTaskResultObject *)&v5 init];
  if (result)
  {
    result->_numberOfDaysBeforeAutomaticRemoval = a3;
  }

  return result;
}

- (CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject;
  v5 = [(CATTaskResultObject *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfDaysBeforeAutomaticRemoval"];
    v5->_numberOfDaysBeforeAutomaticRemoval = [v6 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject numberOfDaysBeforeAutomaticRemoval](self, "numberOfDaysBeforeAutomaticRemoval", v6.receiver, v6.super_class)}];
  [v4 encodeObject:v5 forKey:@"numberOfDaysBeforeAutomaticRemoval"];
}

@end