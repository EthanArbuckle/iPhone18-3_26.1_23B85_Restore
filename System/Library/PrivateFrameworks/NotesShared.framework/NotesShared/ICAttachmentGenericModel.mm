@interface ICAttachmentGenericModel
- (BOOL)hasPreviews;
@end

@implementation ICAttachmentGenericModel

- (BOOL)hasPreviews
{
  attachment = [(ICAttachmentModel *)self attachment];
  usesLinkPresentation = [attachment usesLinkPresentation];

  return usesLinkPresentation;
}

@end