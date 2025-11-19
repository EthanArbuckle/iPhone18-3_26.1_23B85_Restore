@interface UIColor(MediaControls)
- (id)adjustedColorByScale:()MediaControls;
@end

@implementation UIColor(MediaControls)

- (id)adjustedColorByScale:()MediaControls
{
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if ([a1 getRed:&v9 green:&v8 blue:&v7 alpha:&v6])
  {
    v4 = [MEMORY[0x1E69DC888] colorWithRed:v9 + a2 green:v8 + a2 blue:v7 + a2 alpha:v6];
  }

  else
  {
    v4 = a1;
  }

  return v4;
}

@end