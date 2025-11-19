@interface MFOutgoingMessageContent
- (id)copy;
- (void)dealloc;
@end

@implementation MFOutgoingMessageContent

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFOutgoingMessageContent;
  [(MFOutgoingMessageContent *)&v3 dealloc];
}

- (id)copy
{
  v3 = objc_alloc_init(objc_opt_class());
  [v3 setHeaders:self->_headers];
  [v3 setPlaceholders:self->_placeholders];
  return v3;
}

@end