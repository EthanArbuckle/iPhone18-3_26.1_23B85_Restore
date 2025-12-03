@interface CPLRecordComputeStateVersion
- (BOOL)isEqual:(id)equal;
- (CPLRecordComputeStateVersion)initWithMajorVersion:(unint64_t)version stage:(unint64_t)stage;
- (CPLRecordComputeStateVersion)initWithString:(id)string;
- (id)asString;
- (int64_t)compare:(id)compare;
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  majorVersion = self->_majorVersion;
  v6 = compareCopy[1];
  if (majorVersion <= v6)
  {
    if (majorVersion == v6)
    {
      stage = self->_stage;
      v9 = compareCopy[2];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_majorVersion == equalCopy->_majorVersion && self->_stage == equalCopy->_stage;
  }

  return v5;
}

- (CPLRecordComputeStateVersion)initWithMajorVersion:(unint64_t)version stage:(unint64_t)stage
{
  v7.receiver = self;
  v7.super_class = CPLRecordComputeStateVersion;
  result = [(CPLRecordComputeStateVersion *)&v7 init];
  if (result)
  {
    result->_majorVersion = version;
    result->_stage = stage;
  }

  return result;
}

- (CPLRecordComputeStateVersion)initWithString:(id)string
{
  v4 = [string componentsSeparatedByString:@"."];
  firstObject = [v4 firstObject];
  integerValue = [firstObject integerValue];

  if ([v4 count] == 1)
  {
    integerValue2 = 0;
  }

  else
  {
    v8 = [v4 objectAtIndexedSubscript:1];
    integerValue2 = [v8 integerValue];
  }

  v9 = [(CPLRecordComputeStateVersion *)self initWithMajorVersion:integerValue stage:integerValue2];

  return v9;
}

@end