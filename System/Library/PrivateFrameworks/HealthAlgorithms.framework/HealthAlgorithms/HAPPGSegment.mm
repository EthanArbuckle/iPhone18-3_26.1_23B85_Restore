@interface HAPPGSegment
- (HAPPGFrameEnumerator)frameEnumerator;
- (HAPPGSegment)initWithBinaryRepresentation:(id)representation;
@end

@implementation HAPPGSegment

- (HAPPGSegment)initWithBinaryRepresentation:(id)representation
{
  representationCopy = representation;
  v9.receiver = self;
  v9.super_class = HAPPGSegment;
  v5 = [(HAPPGSegment *)&v9 init];
  v6 = [representationCopy copy];
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