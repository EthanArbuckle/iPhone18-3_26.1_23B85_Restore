@interface ICBaseAttachmentView(SupplementalViewSupport)
- (id)viewIdentifier;
@end

@implementation ICBaseAttachmentView(SupplementalViewSupport)

- (id)viewIdentifier
{
  v1 = [a1 textAttachment];
  v2 = [v1 attachment];
  v3 = [v2 identifier];

  return v3;
}

@end