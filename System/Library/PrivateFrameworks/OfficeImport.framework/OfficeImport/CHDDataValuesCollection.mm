@interface CHDDataValuesCollection
- (BOOL)addDataPoint:(CHDDataPoint *)point;
- (BOOL)addDataValue:(id)value;
- (CHDDataPoint)dataPointAtIndex:(unint64_t)index;
- (CHDDataPoint)dataPointWithIndex:(unint64_t)index;
- (CHDDataValuesCollection)init;
- (CHDDataValuesCollection)initWithDataPointCount:(unint64_t)count;
- (id)contentFormatAtIndex:(unint64_t)index resources:(id)resources;
- (id)dataValueAtIndex:(unint64_t)index;
- (id)dataValueWithIndex:(unint64_t)index;
- (id)description;
- (unint64_t)maxDataPointIndex;
- (void)cleanup;
- (void)dealloc;
- (void)finishReading;
- (void)resetWithDataPointCount:(unint64_t)count;
- (void)setupBufferForValues:(unint64_t)values;
@end

@implementation CHDDataValuesCollection

- (CHDDataValuesCollection)init
{
  v5.receiver = self;
  v5.super_class = CHDDataValuesCollection;
  v2 = [(CHDDataValuesCollection *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->mContainsStringValue = 0;
    v2->mDataValueCount = 0;
    [(CHDDataValuesCollection *)v2 setupBufferForValues:0];
  }

  return v3;
}

- (void)finishReading
{
  mIndexToDataValueMap = self->mIndexToDataValueMap;
  if (mIndexToDataValueMap)
  {
    CFRelease(mIndexToDataValueMap);
    self->mIndexToDataValueMap = 0;
  }

  Mutable = CFDictionaryCreateMutable(0, self->mDataValueCount, 0, 0);
  self->mIndexToDataValueMap = Mutable;
  if (Mutable && self->mDataValueCount)
  {
    v5 = 0;
    do
    {
      v6 = [(CHDDataValuesCollection *)self dataPointAtIndex:v5];
      if (v6)
      {
        CFDictionarySetValue(self->mIndexToDataValueMap, v6->index, v5);
      }

      ++v5;
    }

    while (v5 < self->mDataValueCount);
  }
}

- (void)dealloc
{
  [(CHDDataValuesCollection *)self cleanup];
  v3.receiver = self;
  v3.super_class = CHDDataValuesCollection;
  [(CHDDataValuesCollection *)&v3 dealloc];
}

- (void)cleanup
{
  mPackedValues = self->mPackedValues;
  if (mPackedValues)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(mPackedValues);
    if (self->mDataValueCount)
    {
      v5 = 0;
      v6 = (MutableBytePtr + 8);
      do
      {
        EDValue::~EDValue(v6);
        ++v5;
        v6 = v7 + 2;
      }

      while (v5 < self->mDataValueCount);
    }

    CFRelease(self->mPackedValues);
    self->mPackedValues = 0;
  }

  mIndexToDataValueMap = self->mIndexToDataValueMap;
  if (mIndexToDataValueMap)
  {
    CFRelease(mIndexToDataValueMap);
    self->mIndexToDataValueMap = 0;
  }
}

- (CHDDataValuesCollection)initWithDataPointCount:(unint64_t)count
{
  v7.receiver = self;
  v7.super_class = CHDDataValuesCollection;
  v4 = [(CHDDataValuesCollection *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->mContainsStringValue = 0;
    v4->mDataValueCount = 0;
    [(CHDDataValuesCollection *)v4 setupBufferForValues:count];
  }

  return v5;
}

- (void)resetWithDataPointCount:(unint64_t)count
{
  if (self->mDataValueCount == count)
  {
    [(CHDDataValuesCollection *)self cleanup];
    [(CHDDataValuesCollection *)self setupBufferForValues:count];
  }

  self->mContainsStringValue = 0;
  self->mDataValueCount = 0;
}

- (BOOL)addDataPoint:(CHDDataPoint *)point
{
  MutableBytePtr = CFDataGetMutableBytePtr(self->mPackedValues);
  if (MutableBytePtr)
  {
    v6 = 32 * self->mDataValueCount + 32;
    Length = CFDataGetLength(self->mPackedValues);
    v8 = MutableBytePtr;
    if (v6 > Length)
    {
      CFDataIncreaseLength(self->mPackedValues, 32);
      v8 = CFDataGetMutableBytePtr(self->mPackedValues);
    }

    v9 = &v8[32 * self->mDataValueCount];
    *v9 = point->index;
    EDValue::operator=((v9 + 1), &point->value);
    v9[3] = point->contentFormatId;
    ++self->mDataValueCount;
    if (!self->mContainsStringValue && EDValue::isStringType(&point->value))
    {
      self->mContainsStringValue = 1;
    }
  }

  return MutableBytePtr != 0;
}

- (BOOL)addDataValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  if (valueCopy)
  {
    v6 = -[CHDDataValuesCollection addDataPoint:](self, "addDataPoint:", [valueCopy dataPoint]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CHDDataPoint)dataPointAtIndex:(unint64_t)index
{
  MutableBytePtr = CFDataGetMutableBytePtr(self->mPackedValues);
  if (MutableBytePtr)
  {
    v6 = self->mDataValueCount > index;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return &MutableBytePtr[32 * index];
  }

  else
  {
    return 0;
  }
}

- (CHDDataPoint)dataPointWithIndex:(unint64_t)index
{
  mIndexToDataValueMap = self->mIndexToDataValueMap;
  if (mIndexToDataValueMap)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(mIndexToDataValueMap, index, &value))
    {
      return [(CHDDataValuesCollection *)self dataPointAtIndex:value];
    }

    return 0;
  }

  if (!self->mDataValueCount)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    result = [(CHDDataValuesCollection *)self dataPointAtIndex:v7];
    if (result)
    {
      if (result->index == index)
      {
        break;
      }
    }

    if (++v7 >= self->mDataValueCount)
    {
      return 0;
    }
  }

  return result;
}

- (id)dataValueAtIndex:(unint64_t)index
{
  v3 = [(CHDDataValuesCollection *)self dataPointAtIndex:index];
  if (v3)
  {
    v4 = v3;
    v5 = [CHDDataValue dataValueWithIndex:v4->index value:&v4->value];
    [v5 setContentFormatId:v4->contentFormatId];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contentFormatAtIndex:(unint64_t)index resources:(id)resources
{
  resourcesCopy = resources;
  v7 = [(CHDDataValuesCollection *)self dataPointAtIndex:index];
  if (v7)
  {
    contentFormats = [resourcesCopy contentFormats];
    v7 = [contentFormats objectWithKey:v7->contentFormatId];
  }

  return v7;
}

- (id)dataValueWithIndex:(unint64_t)index
{
  v3 = [(CHDDataValuesCollection *)self dataPointWithIndex:index];
  if (v3)
  {
    v4 = v3;
    v5 = [CHDDataValue dataValueWithIndex:v4->index value:&v4->value];
    [v5 setContentFormatId:v4->contentFormatId];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)maxDataPointIndex
{
  mDataValueCount = self->mDataValueCount;
  if (!mDataValueCount)
  {
    return 0;
  }

  result = [(CHDDataValuesCollection *)self dataPointAtIndex:mDataValueCount - 1];
  if (result)
  {
    return *result;
  }

  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDDataValuesCollection;
  v2 = [(CHDDataValuesCollection *)&v4 description];

  return v2;
}

- (void)setupBufferForValues:(unint64_t)values
{
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  self->mPackedValues = Mutable;
  if (Mutable)
  {

    CFDataIncreaseLength(Mutable, 32 * values);
  }
}

@end