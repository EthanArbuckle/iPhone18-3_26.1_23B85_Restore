@interface ICTableAttachmentView
- (void)sharedInit:(BOOL)init;
- (void)updateHighlights;
@end

@implementation ICTableAttachmentView

- (void)sharedInit:(BOOL)init
{
  v5.receiver = self;
  v5.super_class = ICTableAttachmentView;
  [(ICAttachmentView *)&v5 sharedInit:init];
  array = [MEMORY[0x277CBEB18] array];
  [(ICTableAttachmentView *)self setOutsideViews:array];
}

- (void)updateHighlights
{
  [(ICTableAttachmentView *)self foregroundAlpha];

  [(ICTableAttachmentView *)self ic_setAlpha:?];
}

@end