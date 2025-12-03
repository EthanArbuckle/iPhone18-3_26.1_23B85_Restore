@interface BPSCountWindowMetadata
- (BPSCountWindowMetadata)initWithCurrentCount:(unint64_t)count;
@end

@implementation BPSCountWindowMetadata

- (BPSCountWindowMetadata)initWithCurrentCount:(unint64_t)count
{
  v5.receiver = self;
  v5.super_class = BPSCountWindowMetadata;
  result = [(BPSCountWindowMetadata *)&v5 init];
  if (result)
  {
    result->_currentCount = count;
  }

  return result;
}

@end