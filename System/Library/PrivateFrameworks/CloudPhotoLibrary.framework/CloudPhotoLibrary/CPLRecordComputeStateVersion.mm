@interface CPLRecordComputeStateVersion
- (BOOL)isEqual:(id)a3;
- (CPLRecordComputeStateVersion)initWithMajorVersion:(unint64_t)a3 stage:(unint64_t)a4;
- (CPLRecordComputeStateVersion)initWithString:(id)a3;
- (id)asString;
- (int64_t)compare:(id)a3;
@end

@implementation CPLRecordComputeStateVersion

- (id)asString
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_majorVersion];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_stage];
  v6 = [v3 initWithFormat:@"%@.%@", v4, v5];

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  majorVersion = self->_majorVersion;
  v6 = v4[1];
  if (majorVersion <= v6)
  {
    if (majorVersion == v6)
    {
      stage = self->_stage;
      v9 = v4[2];
      v10 = stage > v9;
      if (stage == v9)
      {
        v11 = 0;
      }

      else
      {
        v11 = -1;
      }

      if (v10)
      {
        v7 = 1;
      }

      else
      {
        v7 = v11;
      }
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_majorVersion == v4->_majorVersion && self->_stage == v4->_stage;
  }

  return v5;
}

- (CPLRecordComputeStateVersion)initWithMajorVersion:(unint64_t)a3 stage:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = CPLRecordComputeStateVersion;
  result = [(CPLRecordComputeStateVersion *)&v7 init];
  if (result)
  {
    result->_majorVersion = a3;
    result->_stage = a4;
  }

  return result;
}

- (CPLRecordComputeStateVersion)initWithString:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"."];
  v5 = [v4 firstObject];
  v6 = [v5 integerValue];

  if ([v4 count] == 1)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 objectAtIndexedSubscript:1];
    v7 = [v8 integerValue];
  }

  v9 = [(CPLRecordComputeStateVersion *)self initWithMajorVersion:v6 stage:v7];

  return v9;
}

@end