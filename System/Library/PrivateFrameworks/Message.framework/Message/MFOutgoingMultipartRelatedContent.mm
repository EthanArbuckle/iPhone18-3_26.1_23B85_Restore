@interface MFOutgoingMultipartRelatedContent
- (id)copy;
@end

@implementation MFOutgoingMultipartRelatedContent

- (id)copy
{
  v5.receiver = self;
  v5.super_class = MFOutgoingMultipartRelatedContent;
  v3 = [(MFOutgoingRichtextMessageContent *)&v5 copy];
  [v3 setHtmlBody:self->_htmlBody];
  return v3;
}

@end