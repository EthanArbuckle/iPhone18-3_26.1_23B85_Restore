@interface ICAttachmentGenericModel
- (BOOL)hasPreviews;
@end

@implementation ICAttachmentGenericModel

- (BOOL)hasPreviews
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 usesLinkPresentation];

  return v3;
}

@end