@interface MAAutoAssetInfoEnd
- (MAAutoAssetInfoEnd)initWithCoder:(id)coder;
- (MAAutoAssetInfoEnd)initWithLockReason:(id)reason endingLockCount:(int64_t)count;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetInfoEnd

- (MAAutoAssetInfoEnd)initWithLockReason:(id)reason endingLockCount:(int64_t)count
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = MAAutoAssetInfoEnd;
  v8 = [(MAAutoAssetInfoEnd *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endLockReason, reason);
    v9->_endLockCount = count;
  }

  return v9;
}

- (MAAutoAssetInfoEnd)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MAAutoAssetInfoEnd;
  v5 = [(MAAutoAssetInfoEnd *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endLockReason"];
    endLockReason = v5->_endLockReason;
    v5->_endLockReason = v6;

    v5->_endLockCount = [coderCopy decodeIntegerForKey:@"endLockCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  endLockReason = [(MAAutoAssetInfoEnd *)self endLockReason];
  [coderCopy encodeObject:endLockReason forKey:@"endLockReason"];

  [coderCopy encodeInteger:-[MAAutoAssetInfoEnd endLockCount](self forKey:{"endLockCount"), @"endLockCount"}];
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  endLockReason = [(MAAutoAssetInfoEnd *)self endLockReason];
  v5 = [v3 stringWithFormat:@"%@|endCount:%ld", endLockReason, -[MAAutoAssetInfoEnd endLockCount](self, "endLockCount")];

  return v5;
}

@end