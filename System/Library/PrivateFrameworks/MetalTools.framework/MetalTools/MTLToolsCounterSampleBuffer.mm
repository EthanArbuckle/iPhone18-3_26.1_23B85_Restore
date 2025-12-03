@interface MTLToolsCounterSampleBuffer
- (NSString)label;
- (id)resolveCounterRange:(_NSRange)range;
- (unint64_t)sampleCount;
@end

@implementation MTLToolsCounterSampleBuffer

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (unint64_t)sampleCount
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject sampleCount];
}

- (id)resolveCounterRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject resolveCounterRange:{location, length}];
}

@end