@interface SFGradientView
+ (id)standardGaussianGradientView;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (SFGradientView)initWithCoder:(id)coder;
- (SFGradientView)initWithColors:(id)colors locations:(id)locations;
- (SFGradientView)initWithFrame:(CGRect)frame;
@end

@implementation SFGradientView

+ (id)standardGaussianGradientView
{
  v22[16] = *MEMORY[0x1E69E9840];
  v17 = [SFGradientView alloc];
  v21 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
  v22[0] = v21;
  v20 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.994603225];
  v22[1] = v20;
  v19 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.978587023];
  v22[2] = v19;
  v18 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.952464435];
  v22[3] = v18;
  v16 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.917060124];
  v22[4] = v16;
  v15 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.822990973];
  v22[5] = v15;
  v14 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.707279774];
  v22[6] = v14;
  v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.458754447];
  v22[7] = v13;
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.346236755];
  v22[8] = v2;
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.250244738];
  v22[9] = v3;
  v4 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.173203094];
  v22[10] = v4;
  v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.114800887];
  v22[11] = v5;
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0728674787];
  v22[12] = v6;
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0442915775];
  v22[13] = v7;
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0143711881];
  v22[14] = v8;
  v9 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.00392156863];
  v22[15] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:16];
  v11 = [(SFGradientView *)v17 initWithColors:v10 locations:&unk_1EFF744C0];

  return v11;
}

- (SFGradientView)initWithColors:(id)colors locations:(id)locations
{
  colorsCopy = colors;
  locationsCopy = locations;
  v14.receiver = self;
  v14.super_class = SFGradientView;
  v8 = [(SFGradientView *)&v14 init];
  v9 = v8;
  if (v8)
  {
    [(SFGradientView *)v8 setUserInteractionEnabled:0];
    gradientLayer = [(SFGradientView *)v9 gradientLayer];
    v11 = [colorsCopy safari_mapObjectsUsingBlock:&__block_literal_global_18];
    [gradientLayer setColors:v11];

    [gradientLayer setLocations:locationsCopy];
    v12 = v9;
  }

  return v9;
}

uint64_t __43__SFGradientView_initWithColors_locations___block_invoke(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

- (SFGradientView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"SFGradientView is not compatible with Interface Builder." userInfo:0];
  objc_exception_throw(v4);
}

- (SFGradientView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SFGradientView;
  v3 = [(SFGradientView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFGradientView *)v3 setUserInteractionEnabled:0];
    v5 = v4;
  }

  return v4;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"startPoint"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"endPoint"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SFGradientView;
    v5 = [(SFGradientView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end