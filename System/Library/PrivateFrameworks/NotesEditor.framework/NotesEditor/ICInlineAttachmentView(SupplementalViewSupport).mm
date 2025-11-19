@interface ICInlineAttachmentView(SupplementalViewSupport)
- (id)viewIdentifier;
@end

@implementation ICInlineAttachmentView(SupplementalViewSupport)

- (id)viewIdentifier
{
  v1 = [a1 textAttachment];
  v2 = [v1 viewIdentifier];

  return v2;
}

@end