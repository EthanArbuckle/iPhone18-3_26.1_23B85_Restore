@interface FSMetadataRange
+ (id)rangeWithOffset:(int64_t)a3 segmentLength:(unint64_t)a4 segmentCount:(unint64_t)a5;
- (FSMetadataRange)initWithOffset:(int64_t)a3 segmentLength:(unint64_t)a4 segmentCount:(unint64_t)a5;
@end

@implementation FSMetadataRange

- (FSMetadataRange)initWithOffset:(int64_t)a3 segmentLength:(unint64_t)a4 segmentCount:(unint64_t)a5
{
  v9.receiver = self;
  v9.super_class = FSMetadataRange;
  result = [(FSMetadataRange *)&v9 init];
  if (result)
  {
    result->_startOffset = a3;
    result->_segmentLength = a4;
    result->_segmentCount = a5;
  }

  return result;
}

+ (id)rangeWithOffset:(int64_t)a3 segmentLength:(unint64_t)a4 segmentCount:(unint64_t)a5
{
  v5 = [[FSMetadataRange alloc] initWithOffset:a3 segmentLength:a4 segmentCount:a5];

  return v5;
}

@end