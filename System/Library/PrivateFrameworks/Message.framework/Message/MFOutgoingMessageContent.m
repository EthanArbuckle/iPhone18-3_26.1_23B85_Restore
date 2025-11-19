@interface MFOutgoingMessageContent
- (id)copy;
@end

@implementation MFOutgoingMessageContent

- (id)copy
{
  v3 = objc_alloc_init(objc_opt_class());
  [v3 setHeaders:self->_headers];
  [v3 setPlaceholders:self->_placeholders];
  return v3;
}

@end