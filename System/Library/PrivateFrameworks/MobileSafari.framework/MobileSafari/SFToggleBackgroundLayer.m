@interface SFToggleBackgroundLayer
- (id)implicitAnimationForKeyPath:(id)a3;
@end

@implementation SFToggleBackgroundLayer

- (id)implicitAnimationForKeyPath:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SFToggleBackgroundLayer;
  v5 = [(SFToggleBackgroundLayer *)&v12 implicitAnimationForKeyPath:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if ([v4 isEqualToString:@"path"])
  {
    v7 = [MEMORY[0x1E6979318] animationWithKeyPath:v4];
    v8 = [(SFToggleBackgroundLayer *)self presentationLayer];
    v9 = [v8 valueForKeyPath:v4];
    [v7 setFromValue:v9];

    v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EA0]];
    [v7 setTimingFunction:v10];

    [v7 setFillMode:*MEMORY[0x1E69797D8]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end