@interface MFOutgoingRichtextMessageContent
- (id)copy;
@end

@implementation MFOutgoingRichtextMessageContent

- (id)copy
{
  v5.receiver = self;
  v5.super_class = MFOutgoingRichtextMessageContent;
  v3 = [(MFOutgoingMessageContent *)&v5 copy];
  [v3 setPlaintextAlternative:self->_plaintextAlternative];
  [v3 setMixedContent:self->_mixedContent];
  return v3;
}

@end