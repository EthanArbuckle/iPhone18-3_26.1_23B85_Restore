@interface NTKCSeparatorView
+ (double)intrinsicHeight;
- (CGSize)intrinsicContentSize;
- (NTKCSeparatorView)init;
@end

@implementation NTKCSeparatorView

- (NTKCSeparatorView)init
{
  [objc_opt_class() intrinsicHeight];
  v8.receiver = self;
  v8.super_class = NTKCSeparatorView;
  v4 = [(NTKCSeparatorView *)&v8 initWithFrame:0.0, 0.0, 0.0, v3];
  if (v4)
  {
    v5 = NTKCSeparatorColor();
    v7.receiver = v4;
    v7.super_class = NTKCSeparatorView;
    [(NTKCSeparatorView *)&v7 setBackgroundColor:v5];
  }

  return v4;
}

+ (double)intrinsicHeight
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = 1.0 / v3;

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  [objc_opt_class() intrinsicHeight];
  v4 = v3;
  v5 = v2;
  result.height = v4;
  result.width = v5;
  return result;
}

@end