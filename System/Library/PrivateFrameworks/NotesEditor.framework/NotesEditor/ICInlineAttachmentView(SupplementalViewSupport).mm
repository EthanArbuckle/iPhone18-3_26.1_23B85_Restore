@interface ICInlineAttachmentView(SupplementalViewSupport)
- (id)viewIdentifier;
@end

@implementation ICInlineAttachmentView(SupplementalViewSupport)

- (id)viewIdentifier
{
  textAttachment = [self textAttachment];
  viewIdentifier = [textAttachment viewIdentifier];

  return viewIdentifier;
}

@end