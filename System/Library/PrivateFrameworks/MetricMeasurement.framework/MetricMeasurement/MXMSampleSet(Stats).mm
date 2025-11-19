@interface MXMSampleSet(Stats)
- (void)distance;
@end

@implementation MXMSampleSet(Stats)

- (void)distance
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MXMSampleSet+Stats.m" lineNumber:32 description:{@"Length is correct (2), but failed to retrieve values from set. Internal Error."}];
}

@end