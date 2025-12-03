@interface CKEmojiBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKEmojiBalloonView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setOrientation:(char)orientation;
@end

@implementation CKEmojiBalloonView

- (CKEmojiBalloonView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CKEmojiBalloonView;
  v3 = [(CKImageBalloonView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

  orientation = [(CKBalloonView *)self orientation];
  if (CKMainScreenScale_once_24 != -1)
  {
    [CKEmojiBalloonView layoutSubviews];
  }

  v8 = *&CKMainScreenScale_sMainScreenScale_24;
  layer = [(CKEmojiBalloonView *)self layer];
  v10 = layer;
  memset(&v17, 0, sizeof(v17));
  if (layer)
  {
    [layer contentsTransform];
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
  if (orientation)
  {
    v13 = -v13;
  }

  v15 = v17;
  CGAffineTransformTranslate(&v16, &v15, v13, v14);
  [v10 setContentsTransform:&v16];
}

- (void)setOrientation:(char)orientation
{
  orientationCopy = orientation;
  if ([(CKBalloonView *)self orientation]!= orientation)
  {
    v5.receiver = self;
    v5.super_class = CKEmojiBalloonView;
    [(CKBalloonView *)&v5 setOrientation:orientationCopy];
    [(CKEmojiBalloonView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  selfCopy = [(CKImageBalloonView *)self animatedImage:insets];
  v7 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  image = [selfCopy image];
  [image size];
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