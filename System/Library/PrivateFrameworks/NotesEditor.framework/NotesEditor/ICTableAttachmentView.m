@interface ICTableAttachmentView
- (void)sharedInit:(BOOL)a3;
- (void)updateHighlights;
@end

@implementation ICTableAttachmentView

- (void)sharedInit:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICTableAttachmentView;
  [(ICAttachmentView *)&v5 sharedInit:a3];
  v4 = [MEMORY[0x277CBEB18] array];
  [(ICTableAttachmentView *)self setOutsideViews:v4];
}

- (void)updateHighlights
{
  [(ICTableAttachmentView *)self foregroundAlpha];

  [(ICTableAttachmentView *)self ic_setAlpha:?];
}

@end