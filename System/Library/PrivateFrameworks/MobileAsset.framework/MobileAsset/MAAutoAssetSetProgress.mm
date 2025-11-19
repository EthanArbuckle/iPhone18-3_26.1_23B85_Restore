@interface MAAutoAssetSetProgress
- (BOOL)isEqual:(id)a3;
- (MAAutoAssetSetProgress)init;
- (MAAutoAssetSetProgress)initWithCoder:(id)a3;
- (id)copy;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSetProgress

- (MAAutoAssetSetProgress)init
{
  v3.receiver = self;
  v3.super_class = MAAutoAssetSetProgress;
  result = [(MAAutoAssetSetProgress *)&v3 init];
  if (result)
  {
    result->_isStalled = 0;
    *&result->_downloadedAssetCount = 0u;
    *&result->_totalExpectedBytes = 0u;
    result->_expectedTimeRemainingSecs = 0.0;
  }

  return result;
}

- (MAAutoAssetSetProgress)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MAAutoAssetSetProgress;
  v5 = [(MAAutoAssetSetProgress *)&v8 init];
  if (v5)
  {
    v5->_downloadedAssetCount = [v4 decodeInt64ForKey:@"downloadedAssetCount"];
    v5->_remainingAssetCount = [v4 decodeInt64ForKey:@"remainingAssetCount"];
    v5->_totalExpectedBytes = [v4 decodeInt64ForKey:@"totalExpectedBytes"];
    v5->_totalWrittenBytes = [v4 decodeInt64ForKey:@"totalWrittenBytes"];
    v5->_isStalled = [v4 decodeBoolForKey:@"isStalled"];
    [v4 decodeFloatForKey:@"expectedTimeRemainingSecs"];
    v5->_expectedTimeRemainingSecs = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInt64:-[MAAutoAssetSetProgress downloadedAssetCount](self forKey:{"downloadedAssetCount"), @"downloadedAssetCount"}];
  [v5 encodeInt64:-[MAAutoAssetSetProgress remainingAssetCount](self forKey:{"remainingAssetCount"), @"remainingAssetCount"}];
  [v5 encodeInt64:-[MAAutoAssetSetProgress totalExpectedBytes](self forKey:{"totalExpectedBytes"), @"totalExpectedBytes"}];
  [v5 encodeInt64:-[MAAutoAssetSetProgress totalWrittenBytes](self forKey:{"totalWrittenBytes"), @"totalWrittenBytes"}];
  [v5 encodeBool:-[MAAutoAssetSetProgress isStalled](self forKey:{"isStalled"), @"isStalled"}];
  [(MAAutoAssetSetProgress *)self expectedTimeRemainingSecs];
  *&v4 = v4;
  [v5 encodeFloat:@"expectedTimeRemainingSecs" forKey:v4];
}

- (id)copy
{
  v3 = objc_alloc_init(MAAutoAssetSetProgress);
  [(MAAutoAssetSetProgress *)v3 setDownloadedAssetCount:[(MAAutoAssetSetProgress *)self downloadedAssetCount]];
  [(MAAutoAssetSetProgress *)v3 setRemainingAssetCount:[(MAAutoAssetSetProgress *)self remainingAssetCount]];
  [(MAAutoAssetSetProgress *)v3 setTotalExpectedBytes:[(MAAutoAssetSetProgress *)self totalExpectedBytes]];
  [(MAAutoAssetSetProgress *)v3 setTotalWrittenBytes:[(MAAutoAssetSetProgress *)self totalWrittenBytes]];
  [(MAAutoAssetSetProgress *)v3 setIsStalled:[(MAAutoAssetSetProgress *)self isStalled]];
  [(MAAutoAssetSetProgress *)self expectedTimeRemainingSecs];
  [(MAAutoAssetSetProgress *)v3 setExpectedTimeRemainingSecs:?];
  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MAAutoAssetSetProgress *)v5 downloadedAssetCount];
      if (v6 == [(MAAutoAssetSetProgress *)self downloadedAssetCount]&& (v7 = [(MAAutoAssetSetProgress *)v5 remainingAssetCount], v7 == [(MAAutoAssetSetProgress *)self remainingAssetCount]) && (v8 = [(MAAutoAssetSetProgress *)v5 totalExpectedBytes], v8 == [(MAAutoAssetSetProgress *)self totalExpectedBytes]) && (v9 = [(MAAutoAssetSetProgress *)v5 totalWrittenBytes], v9 == [(MAAutoAssetSetProgress *)self totalWrittenBytes]) && (v10 = [(MAAutoAssetSetProgress *)v5 isStalled], v10 == [(MAAutoAssetSetProgress *)self isStalled]))
      {
        [(MAAutoAssetSetProgress *)v5 expectedTimeRemainingSecs];
        v14 = v13;
        [(MAAutoAssetSetProgress *)self expectedTimeRemainingSecs];
        v11 = v14 == v15;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MAAutoAssetSetProgress *)self downloadedAssetCount];
  v5 = [(MAAutoAssetSetProgress *)self remainingAssetCount];
  v6 = [(MAAutoAssetSetProgress *)self totalExpectedBytes];
  v7 = [(MAAutoAssetSetProgress *)self totalWrittenBytes];
  if ([(MAAutoAssetSetProgress *)self isStalled])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  [(MAAutoAssetSetProgress *)self expectedTimeRemainingSecs];
  return [v3 stringWithFormat:@"downloadedCount:%lld|remainingAssetCount:%lld|expectedBytes:%lld|writtenBytes:%lld|stalled:%@|timeRemainingSecs:%f", v4, v5, v6, v7, v8, v9];
}

@end