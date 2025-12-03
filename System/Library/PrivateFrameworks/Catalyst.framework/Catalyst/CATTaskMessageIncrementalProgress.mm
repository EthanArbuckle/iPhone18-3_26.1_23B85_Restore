@interface CATTaskMessageIncrementalProgress
- (CATTaskMessageIncrementalProgress)initWithCoder:(id)coder;
- (CATTaskMessageIncrementalProgress)initWithTaskUUID:(id)d completedUnitCount:(int64_t)count totalUnitCount:(int64_t)unitCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATTaskMessageIncrementalProgress

- (CATTaskMessageIncrementalProgress)initWithTaskUUID:(id)d completedUnitCount:(int64_t)count totalUnitCount:(int64_t)unitCount
{
  v8.receiver = self;
  v8.super_class = CATTaskMessageIncrementalProgress;
  result = [(CATTaskMessage *)&v8 initWithTaskUUID:d];
  if (result)
  {
    result->_completedUnitCount = count;
    result->_totalUnitCount = unitCount;
  }

  return result;
}

- (CATTaskMessageIncrementalProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CATTaskMessageIncrementalProgress;
  v5 = [(CATTaskMessage *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"completedUnitCount"];
    v5->_completedUnitCount = [v6 integerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalUnitCount"];
    v5->_totalUnitCount = [v7 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CATTaskMessageIncrementalProgress;
  coderCopy = coder;
  [(CATTaskMessage *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CATTaskMessageIncrementalProgress completedUnitCount](self, "completedUnitCount", v7.receiver, v7.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"completedUnitCount"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CATTaskMessageIncrementalProgress totalUnitCount](self, "totalUnitCount")}];
  [coderCopy encodeObject:v6 forKey:@"totalUnitCount"];
}

@end