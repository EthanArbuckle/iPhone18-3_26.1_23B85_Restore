@interface MFOutgoingMultipartRelatedContent
- (id)copy;
- (void)dealloc;
@end

@implementation MFOutgoingMultipartRelatedContent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFOutgoingMultipartRelatedContent;
  [(MFOutgoingRichtextMessageContent *)&v3 dealloc];
}

- (id)copy
{
  v5.receiver = self;
  v5.super_class = MFOutgoingMultipartRelatedContent;
  v3 = [(MFOutgoingRichtextMessageContent *)&v5 copy];
  [v3 setHtmlBody:self->_htmlBody];
  return v3;
}

@end