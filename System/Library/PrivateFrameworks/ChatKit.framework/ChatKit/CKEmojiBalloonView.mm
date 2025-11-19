@interface CKEmojiBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKEmojiBalloonView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setOrientation:(char)a3;
@end

@implementation CKEmojiBalloonView

- (CKEmojiBalloonView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CKEmojiBalloonView;
  v3 = [(CKImageBalloonView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKEmojiBalloonView *)v3 setClipsToBounds:1];
    [(CKEmojiBalloonView *)v4 setContentMode:5];
  }

  return v4;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = CKEmojiBalloonView;
  [(CKImageBalloonView *)&v18 layoutSubviews];
  v3 = +[CKUIBehavior sharedBehaviors];
  [v3 balloonMaskTailSizeForTailShape:1];
  v5 = v4;
  if (CKMainScreenScale_once_24 != -1)
  {
    [CKEmojiBalloonView layoutSubviews];
  }

  v6 = *&CKMainScreenScale_sMainScreenScale_24;

  v7 = [(CKBalloonView *)self orientation];
  if (CKMainScreenScale_once_24 != -1)
  {
    [CKEmojiBalloonView layoutSubviews];
  }

  v8 = *&CKMainScreenScale_sMainScreenScale_24;
  v9 = [(CKEmojiBalloonView *)self layer];
  v10 = v9;
  memset(&v17, 0, sizeof(v17));
  if (v9)
  {
    [v9 contentsTransform];
  }

  v11 = 1.0;
  if (v8 == 0.0)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = v8;
  }

  if (v6 != 0.0)
  {
    v11 = v6;
  }

  v13 = floor(v5 * 0.5 * v11) / v11;
  v14 = -floor(v13 * 1.5 * v12) / v12;
  if (v7)
  {
    v13 = -v13;
  }

  v15 = v17;
  CGAffineTransformTranslate(&v16, &v15, v13, v14);
  [v10 setContentsTransform:&v16];
}

- (void)setOrientation:(char)a3
{
  v3 = a3;
  if ([(CKBalloonView *)self orientation]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CKEmojiBalloonView;
    [(CKBalloonView *)&v5 setOrientation:v3];
    [(CKEmojiBalloonView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  v6 = [(CKImageBalloonView *)self animatedImage:a4];
  v7 = v6;
  if (!v6)
  {
    v6 = self;
  }

  v8 = [v6 image];
  [v8 size];
  v10 = v9;
  v12 = v11;

  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 balloonMaskTailSizeForTailShape:1];
  v15 = v14;
  if (CKMainScreenScale_once_24 != -1)
  {
    [CKEmojiBalloonView sizeThatFits:textAlignmentInsets:tailInsets:];
  }

  v16 = *&CKMainScreenScale_sMainScreenScale_24;
  if (*&CKMainScreenScale_sMainScreenScale_24 == 0.0)
  {
    v16 = 1.0;
  }

  v17 = floor(v15 * 0.5 * v16) / v16;

  v18 = v10 - v17;
  v19 = v12 + v17 * -3.0;
  result.height = v19;
  result.width = v18;
  return result;
}

@end