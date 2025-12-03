@interface ICTextAttachmentViewProvider
- (void)loadView;
@end

@implementation ICTextAttachmentViewProvider

- (void)loadView
{
  objc_opt_class();
  textAttachment = [(NSTextAttachmentViewProvider *)self textAttachment];
  v6 = ICDynamicCast();

  layoutManager = [(NSTextAttachmentViewProvider *)self layoutManager];
  v5 = [v6 viewForLayoutManager:layoutManager];

  [(NSTextAttachmentViewProvider *)self setView:v5];
}

@end