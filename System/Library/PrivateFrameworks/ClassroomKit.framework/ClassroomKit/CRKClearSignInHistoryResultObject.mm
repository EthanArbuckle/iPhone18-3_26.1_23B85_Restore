@interface CRKClearSignInHistoryResultObject
- (CRKClearSignInHistoryResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKClearSignInHistoryResultObject

- (CRKClearSignInHistoryResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = CRKClearSignInHistoryResultObject;
  v5 = [(CATTaskResultObject *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countOfRemovedRecords"];
    v5->_countOfRemovedRecords = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKClearSignInHistoryResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKClearSignInHistoryResultObject countOfRemovedRecords](self, "countOfRemovedRecords", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"countOfRemovedRecords"];
}

@end