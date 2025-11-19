@interface MAAutoAssetSetInfoEnd
- (MAAutoAssetSetInfoEnd)initWithCoder:(id)a3;
- (MAAutoAssetSetInfoEnd)initWithLockReason:(id)a3 endingLockCount:(int64_t)a4;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSetInfoEnd

- (MAAutoAssetSetInfoEnd)initWithLockReason:(id)a3 endingLockCount:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = MAAutoAssetSetInfoEnd;
  v8 = [(MAAutoAssetSetInfoEnd *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_endLockReason, a3);
    v9->_endLockCount = a4;
  }

  return v9;
}

- (MAAutoAssetSetInfoEnd)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MAAutoAssetSetInfoEnd;
  v5 = [(MAAutoAssetSetInfoEnd *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endLockReason"];
    endLockReason = v5->_endLockReason;
    v5->_endLockReason = v6;

    v5->_endLockCount = [v4 decodeIntegerForKey:@"endLockCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(MAAutoAssetSetInfoEnd *)self endLockReason];
  [v5 encodeObject:v4 forKey:@"endLockReason"];

  [v5 encodeInteger:-[MAAutoAssetSetInfoEnd endLockCount](self forKey:{"endLockCount"), @"endLockCount"}];
}

- (id)summary
{
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[MAAutoAssetSetInfoEnd endLockCount](self, "endLockCount")];
  if ([(MAAutoAssetSetInfoEnd *)self endLockCount]== -1)
  {

    v3 = @"ALL";
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = [(MAAutoAssetSetInfoEnd *)self endLockReason];
  v6 = [v4 stringWithFormat:@"endLockReason:%@|endLockCount:%@", v5, v3];

  return v6;
}

@end