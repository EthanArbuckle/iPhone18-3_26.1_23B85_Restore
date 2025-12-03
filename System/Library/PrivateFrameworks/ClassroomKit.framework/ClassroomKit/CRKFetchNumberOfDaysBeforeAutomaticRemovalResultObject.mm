@interface CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject
- (CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject)initWithCoder:(id)coder;
- (CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject)initWithNumberOfDaysBeforeAutomaticRemoval:(int64_t)removal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject

- (CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject)initWithNumberOfDaysBeforeAutomaticRemoval:(int64_t)removal
{
  v5.receiver = self;
  v5.super_class = CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject;
  result = [(CATTaskResultObject *)&v5 init];
  if (result)
  {
    result->_numberOfDaysBeforeAutomaticRemoval = removal;
  }

  return result;
}

- (CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject;
  v5 = [(CATTaskResultObject *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfDaysBeforeAutomaticRemoval"];
    v5->_numberOfDaysBeforeAutomaticRemoval = [v6 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CRKFetchNumberOfDaysBeforeAutomaticRemovalResultObject numberOfDaysBeforeAutomaticRemoval](self, "numberOfDaysBeforeAutomaticRemoval", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"numberOfDaysBeforeAutomaticRemoval"];
}

@end