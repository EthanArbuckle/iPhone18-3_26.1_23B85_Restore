@interface MTLToolsCounterSampleBuffer
- (NSString)label;
- (id)resolveCounterRange:(_NSRange)a3;
- (unint64_t)sampleCount;
@end

@implementation MTLToolsCounterSampleBuffer

- (NSString)label
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 label];
}

- (unint64_t)sampleCount
{
  v2 = [(MTLToolsObject *)self baseObject];

  return [v2 sampleCount];
}

- (id)resolveCounterRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(MTLToolsObject *)self baseObject];

  return [v5 resolveCounterRange:{location, length}];
}

@end