@interface BWParallelSplitterNode
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWParallelSplitterNode

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (buffer)
  {
    CMSetAttachment(buffer, @"ParallelSplitterInputBuffer", buffer, 1u);
  }

  v7.receiver = self;
  v7.super_class = BWParallelSplitterNode;
  [(BWFanOutNode *)&v7 renderSampleBuffer:buffer forInput:input];
}

@end