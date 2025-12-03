@interface FSMetadataRange
+ (id)rangeWithOffset:(int64_t)offset segmentLength:(unint64_t)length segmentCount:(unint64_t)count;
- (FSMetadataRange)initWithOffset:(int64_t)offset segmentLength:(unint64_t)length segmentCount:(unint64_t)count;
@end

@implementation FSMetadataRange

- (FSMetadataRange)initWithOffset:(int64_t)offset segmentLength:(unint64_t)length segmentCount:(unint64_t)count
{
  v9.receiver = self;
  v9.super_class = FSMetadataRange;
  result = [(FSMetadataRange *)&v9 init];
  if (result)
  {
    result->_startOffset = offset;
    result->_segmentLength = length;
    result->_segmentCount = count;
  }

  return result;
}

+ (id)rangeWithOffset:(int64_t)offset segmentLength:(unint64_t)length segmentCount:(unint64_t)count
{
  v5 = [[FSMetadataRange alloc] initWithOffset:offset segmentLength:length segmentCount:count];

  return v5;
}

@end