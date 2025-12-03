@interface CKDetonatedAttachmentBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKBalloonDescriptor_t)highlightOverlayBalloonDescriptor;
- (CKDetonatedAttachmentBalloonView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size;
- (void)layoutSubviews;
@end

@implementation CKDetonatedAttachmentBalloonView

- (CKDetonatedAttachmentBalloonView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = CKDetonatedAttachmentBalloonView;
  v3 = [(CKColoredBalloonView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [CKDetonatedAttachmentView alloc];
    v5 = [(CKDetonatedAttachmentView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    attachmentView = v3->_attachmentView;
    v3->_attachmentView = v5;

    [(CKDetonatedAttachmentBalloonView *)v3 addSubview:v3->_attachmentView];
    v7 = +[CKUIBehavior sharedBehaviors];
    -[CKColoredBalloonView setColor:](v3, "setColor:", [v7 attachmentBalloonFillColor]);

    v8 = +[CKUIBehavior sharedBehaviors];
    attachmentBalloonStrokeColor = [v8 attachmentBalloonStrokeColor];

    v10 = +[CKUIBehavior sharedBehaviors];
    theme = [v10 theme];
    v12 = [theme unfilledBalloonColorForColorType:attachmentBalloonStrokeColor];
    [v12 ck_imColorComponents];
    [(CKBalloonView *)v3 setStrokeColor:?];

    v13 = +[CKUIBehavior sharedBehaviors];
    if ([v13 shouldFillAndStrokeAttachmentBalloon])
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    [(CKBalloonView *)v3 setBalloonStyle:v14];
  }

  return v3;
}

- (void)layoutSubviews
{
  v19.receiver = self;
  v19.super_class = CKDetonatedAttachmentBalloonView;
  [(CKColoredBalloonView *)&v19 layoutSubviews];
  [(CKDetonatedAttachmentBalloonView *)self bounds];
  [(CKDetonatedAttachmentBalloonView *)self alignmentRectForFrame:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CKDetonatedAttachmentView *)self->_attachmentView sizeThatFits:v7, v9];
  [(CKDetonatedAttachmentView *)self->_attachmentView setFrame:0.0, 0.0, v11, v12];
  attachmentView = self->_attachmentView;
  [(CKDetonatedAttachmentView *)attachmentView frame];
  v15 = v14;
  v17 = v16;
  if (CKMainScreenScale_once_90 != -1)
  {
    [CKDetonatedAttachmentBalloonView layoutSubviews];
  }

  v18 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_90 != 0.0)
  {
    v18 = *&CKMainScreenScale_sMainScreenScale_90;
  }

  [(CKDetonatedAttachmentView *)attachmentView setFrame:floor((v4 + (v8 - v15) * 0.5) * v18) / v18, floor((v6 + (v10 - v17) * 0.5) * v18) / v18, v15, v17];
}

- (UIEdgeInsets)alignmentRectInsetsForBoundsSize:(CGSize)size
{
  v4 = [(CKBalloonView *)self orientation:size.width];
  v5 = +[CKUIBehavior sharedBehaviors];
  [(CKColoredBalloonView *)self balloonDescriptor];
  [v5 attachmentBalloonAlignmentRectInsetsWithTailShape:v18];
  v9 = v8;
  v11 = v10;
  if (v4)
  {
    v12 = v6;
  }

  else
  {
    v12 = v7;
  }

  if (v4)
  {
    v13 = v7;
  }

  else
  {
    v13 = v6;
  }

  v14 = v9;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  v5 = [CKUIBehavior sharedBehaviors:insets];
  [v5 detonatedItemBalloonViewSize];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CKBalloonDescriptor_t)highlightOverlayBalloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  v5.receiver = self;
  v5.super_class = CKDetonatedAttachmentBalloonView;
  result = [(CKBalloonDescriptor_t *)&v5 highlightOverlayBalloonDescriptor];
  retstr->var2 = 0;
  return result;
}

@end