@interface MXMSampleSet(Stats)
- (void)distance;
@end

@implementation MXMSampleSet(Stats)

- (void)distance
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"MXMSampleSet+Stats.m" lineNumber:32 description:{@"Length is correct (2), but failed to retrieve values from set. Internal Error."}];
}

@end