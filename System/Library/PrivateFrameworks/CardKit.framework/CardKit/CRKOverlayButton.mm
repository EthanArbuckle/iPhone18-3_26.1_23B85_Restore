@interface CRKOverlayButton
- (void)setBackgroundColor:(id)color forState:(unint64_t)state;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation CRKOverlayButton

- (void)setBackgroundColor:(id)color forState:(unint64_t)state
{
  colorCopy = color;
  v11.width = 1.0;
  v11.height = 1.0;
  UIGraphicsBeginImageContext(v11);
  CurrentContext = UIGraphicsGetCurrentContext();
  cGColor = [colorCopy CGColor];

  CGContextSetFillColorWithColor(CurrentContext, cGColor);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = 1.0;
  v12.size.height = 1.0;
  CGContextFillRect(CurrentContext, v12);
  v9 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(CRKOverlayButton *)self setBackgroundImage:v9 forState:state];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  if (animated)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__CRKOverlayButton_setSelected_animated___block_invoke;
    v7[3] = &unk_278DA3880;
    v7[4] = self;
    selectedCopy = selected;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__CRKOverlayButton_setSelected_animated___block_invoke_2;
    v5[3] = &unk_278DA38A8;
    v5[4] = self;
    selectedCopy2 = selected;
    [MEMORY[0x277D75D18] animateWithDuration:v7 animations:v5 completion:0.3];
  }

  else
  {

    [(CRKOverlayButton *)self setSelected:selected];
  }
}

void __41__CRKOverlayButton_setSelected_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _backgroundView];
  v4 = v2;
  v3 = 0.0;
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  [v2 setAlpha:v3];
}

void __41__CRKOverlayButton_setSelected_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setSelected:*(a1 + 40)];
  v2 = [*(a1 + 32) _backgroundView];
  v4 = v2;
  v3 = 1.0;
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
}

@end