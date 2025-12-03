@interface SFToggleBackgroundLayer
- (id)implicitAnimationForKeyPath:(id)path;
@end

@implementation SFToggleBackgroundLayer

- (id)implicitAnimationForKeyPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = SFToggleBackgroundLayer;
  v5 = [(SFToggleBackgroundLayer *)&v12 implicitAnimationForKeyPath:pathCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if ([pathCopy isEqualToString:@"path"])
  {
    v7 = [MEMORY[0x1E6979318] animationWithKeyPath:pathCopy];
    presentationLayer = [(SFToggleBackgroundLayer *)self presentationLayer];
    v9 = [presentationLayer valueForKeyPath:pathCopy];
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