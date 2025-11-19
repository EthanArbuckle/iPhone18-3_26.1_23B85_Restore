@interface HAPPGSegment
- (HAPPGFrameEnumerator)frameEnumerator;
- (HAPPGSegment)initWithBinaryRepresentation:(id)a3;
@end

@implementation HAPPGSegment

- (HAPPGSegment)initWithBinaryRepresentation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HAPPGSegment;
  v5 = [(HAPPGSegment *)&v9 init];
  v6 = [v4 copy];
  mimosaData = v5->_mimosaData;
  v5->_mimosaData = v6;

  return v5;
}

- (HAPPGFrameEnumerator)frameEnumerator
{
  v2 = [[HAPPGFrameEnumerator alloc] initWithBinaryRepresentation:self->_mimosaData];

  return v2;
}

@end