@interface ICBaseAttachmentView(SupplementalViewSupport)
- (id)viewIdentifier;
@end

@implementation ICBaseAttachmentView(SupplementalViewSupport)

- (id)viewIdentifier
{
  textAttachment = [self textAttachment];
  attachment = [textAttachment attachment];
  identifier = [attachment identifier];

  return identifier;
}

@end