@interface BWFencedAnimationInfo
- (BWFencedAnimationInfo)initWithFencePortSendRight:(id)right;
- (void)dealloc;
@end

@implementation BWFencedAnimationInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFencedAnimationInfo;
  [(BWFencedAnimationInfo *)&v3 dealloc];
}

- (BWFencedAnimationInfo)initWithFencePortSendRight:(id)right
{
  v7.receiver = self;
  v7.super_class = BWFencedAnimationInfo;
  v4 = [(BWFencedAnimationInfo *)&v7 init];
  if (v4)
  {
    rightCopy = right;
    v4->_fencePortSendRight = rightCopy;
    if (rightCopy)
    {
      v4->_fencePortGenerationCount = atomic_fetch_add_explicit(&sFencedAnimationFencePortGenerationCount, 1uLL, memory_order_relaxed) + 1;
    }
  }

  return v4;
}

@end