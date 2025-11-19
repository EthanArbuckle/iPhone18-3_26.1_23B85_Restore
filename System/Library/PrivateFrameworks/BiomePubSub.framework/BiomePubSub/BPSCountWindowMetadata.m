@interface BPSCountWindowMetadata
- (BPSCountWindowMetadata)initWithCurrentCount:(unint64_t)a3;
@end

@implementation BPSCountWindowMetadata

- (BPSCountWindowMetadata)initWithCurrentCount:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = BPSCountWindowMetadata;
  result = [(BPSCountWindowMetadata *)&v5 init];
  if (result)
  {
    result->_currentCount = a3;
  }

  return result;
}

@end