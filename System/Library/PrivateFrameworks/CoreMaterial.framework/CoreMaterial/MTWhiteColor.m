@interface MTWhiteColor
- (CAColorMatrix)sourceOverColorMatrix;
- (CGColor)CGColor;
- (MTWhiteColor)colorWithAlphaComponent:(double)a3;
- (MTWhiteColor)initWithWhite:(double)a3 alpha:(double)a4;
- (id)_initWithCGColor:(CGColor *)a3;
- (id)_initWithDescription:(id)a3;
- (id)_rgbColor;
- (id)colorBlendedWithColor:(id)a3;
- (id)colorDescription;
- (id)description;
@end

@implementation MTWhiteColor

- (CGColor)CGColor
{
  components[2] = *MEMORY[0x1E69E9840];
  result = self->super._cachedColor;
  if (!result)
  {
    alpha = self->_alpha;
    components[0] = self->_white;
    components[1] = alpha;
    if (GrayColorSpace_onceToken != -1)
    {
      +[MTColor colorWithCGColor:];
    }

    result = CGColorCreate(GrayColorSpace___GrayColorSpace, components);
    self->super._cachedColor = result;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

- (CAColorMatrix)sourceOverColorMatrix
{
  white = self->_white;
  alpha = self->_alpha;
  return MEMORY[0x1EEDD5DB0]();
}

- (MTWhiteColor)initWithWhite:(double)a3 alpha:(double)a4
{
  v9.receiver = self;
  v9.super_class = MTWhiteColor;
  v6 = [(MTWhiteColor *)&v9 init];
  if (v6)
  {
    if (a3 < 0.0 || a3 > 1.0)
    {
      [MTWhiteColor initWithWhite:alpha:];
    }

    if (a4 < 0.0 || a4 > 1.0)
    {
      [MTWhiteColor initWithWhite:alpha:];
    }

    v6->_white = a3;
    v6->_alpha = a4;
  }

  return v6;
}

- (id)_initWithCGColor:(CGColor *)a3
{
  if (!a3)
  {
    [MTWhiteColor _initWithCGColor:];
    goto LABEL_6;
  }

  ColorSpace = CGColorGetColorSpace(a3);
  v6 = CGColorSpaceGetName(ColorSpace);
  if (![v6 isEqualToString:*MEMORY[0x1E695F0E0]] || (Components = CGColorGetComponents(a3), CGColorGetNumberOfComponents(a3) != 2))
  {

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v8 = *Components;
  v9 = Components[1];

  self = [(MTWhiteColor *)self initWithWhite:v8 alpha:v9];
  v10 = self;
LABEL_7:
  v11 = v10;

  return v11;
}

- (id)_initWithDescription:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MTWhiteColor _initWithDescription:];
  }

  v5 = [v4 objectForKey:@"alpha"];
  if (!v5)
  {
    [MTWhiteColor _initWithDescription:];
  }

  v6 = [v4 objectForKey:@"white"];
  if (!v6)
  {
    [MTWhiteColor _initWithDescription:];
  }

  [v6 floatValue];
  v8 = v7;
  [v5 floatValue];
  v10 = [(MTWhiteColor *)self initWithWhite:v8 alpha:v9];

  return v10;
}

- (id)colorDescription
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"white";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_white];
  v8[1] = @"alpha";
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_alpha];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (MTWhiteColor)colorWithAlphaComponent:(double)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithWhite:self->_white alpha:a3];

  return v3;
}

- (id)colorBlendedWithColor:(id)a3
{
  v4 = a3;
  v5 = self;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      alpha = v5->_alpha;
      v7 = v4[3];
      v8 = 1.0;
      v9 = alpha + v7 * (1.0 - alpha);
      if (v9 != 0.0)
      {
        v8 = (alpha * v5->_white + v7 * v4[2] * (1.0 - alpha)) / v9;
      }

      v10 = [MTColor colorWithWhite:v8 alpha:?];
    }

    else
    {
      v11 = [(MTWhiteColor *)v5 _rgbColor];
      v10 = [(MTWhiteColor *)v11 colorBlendedWithColor:v4];

      v5 = v11;
    }

    v5 = v10;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  white = self->_white;
  return [v3 stringWithFormat:@"<%@: %p; white: %f; alpha: %f>", v4, self, *&white, *&self->_alpha];
}

- (id)_rgbColor
{
  v2 = [[MTRGBColor alloc] initWithRed:self->_white green:self->_white blue:self->_white alpha:self->_alpha];

  return v2;
}

- (void)initWithWhite:alpha:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"(0 <= white) && (white <= 1.0)" object:? file:? lineNumber:? description:?];
}

- (void)initWithWhite:alpha:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"(0 <= alpha) && (alpha <= 1.0)" object:? file:? lineNumber:? description:?];
}

- (void)_initWithCGColor:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"cgColor" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDescription:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"colorDescription" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDescription:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"wrappedAlpha != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDescription:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"wrappedWhite != nil" object:? file:? lineNumber:? description:?];
}

@end