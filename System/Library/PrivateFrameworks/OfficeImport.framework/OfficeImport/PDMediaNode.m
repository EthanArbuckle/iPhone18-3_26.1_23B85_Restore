@interface PDMediaNode
- (PDMediaNode)init;
@end

@implementation PDMediaNode

- (PDMediaNode)init
{
  v3.receiver = self;
  v3.super_class = PDMediaNode;
  result = [(PDTimeNode *)&v3 init];
  if (result)
  {
    result->mIsShowWhenStopped = 1;
    result->mNumberOfSlides = 1;
    result->mVolume = 50000;
  }

  return result;
}

@end