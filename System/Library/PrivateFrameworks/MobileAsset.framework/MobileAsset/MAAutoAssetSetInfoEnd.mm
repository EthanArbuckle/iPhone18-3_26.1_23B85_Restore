@interface MAAutoAssetSetInfoEnd
- (MAAutoAssetSetInfoEnd)initWithCoder:(id)coder;
- (MAAutoAssetSetInfoEnd)initWithLockReason:(id)reason endingLockCount:(int64_t)count;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetInfoEnd

- (MAAutoAssetSetInfoEnd)initWithLockReason:(id)reason endingLockCount:(int64_t)count
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = MAAutoAssetSetInfoEnd;
  v8 = [(MAAutoAssetSetInfoEnd *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endLockReason, reason);
    v9->_endLockCount = count;
  }

  return v9;
}

- (MAAutoAssetSetInfoEnd)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MAAutoAssetSetInfoEnd;
  v5 = [(MAAutoAssetSetInfoEnd *)&v9 init];
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
  endLockReason = [(MAAutoAssetSetInfoEnd *)self endLockReason];
  [coderCopy encodeObject:endLockReason forKey:@"endLockReason"];

  [coderCopy encodeInteger:-[MAAutoAssetSetInfoEnd endLockCount](self forKey:{"endLockCount"), @"endLockCount"}];
}

- (id)summary
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[MAAutoAssetSetInfoEnd endLockCount](self, "endLockCount")];
  if ([(MAAutoAssetSetInfoEnd *)self endLockCount]== -1)
  {

    v3 = @"ALL";
  }

  v4 = MEMORY[0x1E696AEC0];
  endLockReason = [(MAAutoAssetSetInfoEnd *)self endLockReason];
  v6 = [v4 stringWithFormat:@"endLockReason:%@|endLockCount:%@", endLockReason, v3];

  return v6;
}

@end