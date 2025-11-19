@interface BWParallelSplitterNode
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWParallelSplitterNode

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  if (a3)
  {
    CMSetAttachment(a3, @"ParallelSplitterInputBuffer", a3, 1u);
  }

  v7.receiver = self;
  v7.super_class = BWParallelSplitterNode;
  [(BWFanOutNode *)&v7 renderSampleBuffer:a3 forInput:a4];
}

@end