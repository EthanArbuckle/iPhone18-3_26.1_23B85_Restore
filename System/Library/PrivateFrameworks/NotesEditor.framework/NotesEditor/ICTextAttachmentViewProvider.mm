@interface ICTextAttachmentViewProvider
- (void)loadView;
@end

@implementation ICTextAttachmentViewProvider

- (void)loadView
{
  objc_opt_class();
  v3 = [(NSTextAttachmentViewProvider *)self textAttachment];
  v6 = ICDynamicCast();

  v4 = [(NSTextAttachmentViewProvider *)self layoutManager];
  v5 = [v6 viewForLayoutManager:v4];

  [(NSTextAttachmentViewProvider *)self setView:v5];
}

@end