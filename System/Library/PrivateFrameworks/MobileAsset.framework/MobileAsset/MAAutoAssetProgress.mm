@interface MAAutoAssetProgress
- (BOOL)isEqual:(id)equal;
- (MAAutoAssetProgress)init;
- (MAAutoAssetProgress)initWithCoder:(id)coder;
- (id)copy;
- (id)newSummaryDictionary;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetProgress

- (MAAutoAssetProgress)init
{
  v3.receiver = self;
  v3.super_class = MAAutoAssetProgress;
  result = [(MAAutoAssetProgress *)&v3 init];
  if (result)
  {
    result->_isStalled = 0;
    result->_totalWrittenBytes = 0;
    result->_expectedTimeRemainingSecs = 0.0;
    result->_totalExpectedBytes = 0;
  }

  return result;
}

- (MAAutoAssetProgress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MAAutoAssetProgress;
  v5 = [(MAAutoAssetProgress *)&v8 init];
  if (v5)
  {
    v5->_totalExpectedBytes = [coderCopy decodeInt64ForKey:@"totalExpectedBytes"];
    v5->_totalWrittenBytes = [coderCopy decodeInt64ForKey:@"totalWrittenBytes"];
    v5->_isStalled = [coderCopy decodeBoolForKey:@"isStalled"];
    [coderCopy decodeDoubleForKey:@"expectedTimeRemainingSecs"];
    v5->_expectedTimeRemainingSecs = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[MAAutoAssetProgress totalExpectedBytes](self forKey:{"totalExpectedBytes"), @"totalExpectedBytes"}];
  [coderCopy encodeInt64:-[MAAutoAssetProgress totalWrittenBytes](self forKey:{"totalWrittenBytes"), @"totalWrittenBytes"}];
  [coderCopy encodeBool:-[MAAutoAssetProgress isStalled](self forKey:{"isStalled"), @"isStalled"}];
  [(MAAutoAssetProgress *)self expectedTimeRemainingSecs];
  [coderCopy encodeDouble:@"expectedTimeRemainingSecs" forKey:?];
}

- (id)copy
{
  v3 = objc_alloc_init(MAAutoAssetProgress);
  [(MAAutoAssetProgress *)v3 setTotalExpectedBytes:[(MAAutoAssetProgress *)self totalExpectedBytes]];
  [(MAAutoAssetProgress *)v3 setTotalWrittenBytes:[(MAAutoAssetProgress *)self totalWrittenBytes]];
  [(MAAutoAssetProgress *)v3 setIsStalled:[(MAAutoAssetProgress *)self isStalled]];
  [(MAAutoAssetProgress *)self expectedTimeRemainingSecs];
  [(MAAutoAssetProgress *)v3 setExpectedTimeRemainingSecs:?];
  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      totalExpectedBytes = [(MAAutoAssetProgress *)v5 totalExpectedBytes];
      if (totalExpectedBytes == [(MAAutoAssetProgress *)self totalExpectedBytes]&& (v7 = [(MAAutoAssetProgress *)v5 totalWrittenBytes], v7 == [(MAAutoAssetProgress *)self totalWrittenBytes]) && (v8 = [(MAAutoAssetProgress *)v5 isStalled], v8 == [(MAAutoAssetProgress *)self isStalled]))
      {
        [(MAAutoAssetProgress *)v5 expectedTimeRemainingSecs];
        v12 = v11;
        [(MAAutoAssetProgress *)self expectedTimeRemainingSecs];
        v9 = v12 == v13;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  totalExpectedBytes = [(MAAutoAssetProgress *)self totalExpectedBytes];
  totalWrittenBytes = [(MAAutoAssetProgress *)self totalWrittenBytes];
  if ([(MAAutoAssetProgress *)self isStalled])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  [(MAAutoAssetProgress *)self expectedTimeRemainingSecs];
  return [v3 stringWithFormat:@"expectedBytes:%lld|writtenBytes:%lld|stalled:%@|timeRemainingSecs:%f", totalExpectedBytes, totalWrittenBytes, v6, v7];
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MAAutoAssetProgress totalExpectedBytes](self, "totalExpectedBytes")}];
  [v3 setSafeObject:v4 forKey:@"totalExpectedBytes"];

  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MAAutoAssetProgress totalWrittenBytes](self, "totalWrittenBytes")}];
  [v3 setSafeObject:v5 forKey:@"totalWrittenBytes"];

  if ([(MAAutoAssetProgress *)self isStalled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 setSafeObject:v6 forKey:@"isStalled"];
  v7 = MEMORY[0x1E696AD98];
  [(MAAutoAssetProgress *)self expectedTimeRemainingSecs];
  v8 = [v7 numberWithDouble:?];
  [v3 setSafeObject:v8 forKey:@"expectedTimeRemainingSecs"];

  return v3;
}

@end