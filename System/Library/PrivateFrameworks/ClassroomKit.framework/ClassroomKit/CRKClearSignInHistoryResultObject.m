@interface CRKClearSignInHistoryResultObject
- (CRKClearSignInHistoryResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKClearSignInHistoryResultObject

- (CRKClearSignInHistoryResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CRKClearSignInHistoryResultObject;
  v5 = [(CATTaskResultObject *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countOfRemovedRecords"];
    v5->_countOfRemovedRecords = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKClearSignInHistoryResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKClearSignInHistoryResultObject countOfRemovedRecords](self, "countOfRemovedRecords", v6.receiver, v6.super_class)}];
  [v4 encodeObject:v5 forKey:@"countOfRemovedRecords"];
}

@end