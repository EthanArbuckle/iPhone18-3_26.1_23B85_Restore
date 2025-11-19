@interface MFOutgoingRichtextMessageContent
- (id)copy;
- (void)dealloc;
@end

@implementation MFOutgoingRichtextMessageContent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFOutgoingRichtextMessageContent;
  [(MFOutgoingMessageContent *)&v3 dealloc];
}

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