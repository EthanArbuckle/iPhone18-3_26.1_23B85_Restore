@interface MTWhiteColor
- (CAColorMatrix)sourceOverColorMatrix;
- (CGColor)CGColor;
- (MTWhiteColor)colorWithAlphaComponent:(double)component;
- (MTWhiteColor)initWithWhite:(double)white alpha:(double)alpha;
- (id)_initWithCGColor:(CGColor *)color;
- (id)_initWithDescription:(id)description;
- (id)_rgbColor;
- (id)colorBlendedWithColor:(id)color;
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

- (MTWhiteColor)initWithWhite:(double)white alpha:(double)alpha
{
  v9.receiver = self;
  v9.super_class = MTWhiteColor;
  v6 = [(MTWhiteColor *)&v9 init];
  if (v6)
  {
    if (white < 0.0 || white > 1.0)
    {
      [MTWhiteColor initWithWhite:alpha:];
    }

    if (alpha < 0.0 || alpha > 1.0)
    {
      [MTWhiteColor initWithWhite:alpha:];
    }

    v6->_white = white;
    v6->_alpha = alpha;
  }

  return v6;
}

- (id)_initWithCGColor:(CGColor *)color
{
  if (!color)
  {
    [MTWhiteColor _initWithCGColor:];
    goto LABEL_6;
  }

  ColorSpace = CGColorGetColorSpace(color);
  v6 = CGColorSpaceGetName(ColorSpace);
  if (![v6 isEqualToString:*MEMORY[0x1E695F0E0]] || (Components = CGColorGetComponents(color), CGColorGetNumberOfComponents(color) != 2))
  {

LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  v8 = *Components;
  v9 = Components[1];

  self = [(MTWhiteColor *)self initWithWhite:v8 alpha:v9];
  selfCopy = self;
LABEL_7:
  v11 = selfCopy;

  return v11;
}

- (id)_initWithDescription:(id)description
{
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    [MTWhiteColor _initWithDescription:];
  }

  v5 = [descriptionCopy objectForKey:@"alpha"];
  if (!v5)
  {
    [MTWhiteColor _initWithDescription:];
  }

  v6 = [descriptionCopy objectForKey:@"white"];
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

- (MTWhiteColor)colorWithAlphaComponent:(double)component
{
  v3 = [objc_alloc(objc_opt_class()) initWithWhite:self->_white alpha:component];

  return v3;
}

- (id)colorBlendedWithColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  if (colorCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      alpha = selfCopy->_alpha;
      v7 = colorCopy[3];
      v8 = 1.0;
      v9 = alpha + v7 * (1.0 - alpha);
      if (v9 != 0.0)
      {
        v8 = (alpha * selfCopy->_white + v7 * colorCopy[2] * (1.0 - alpha)) / v9;
      }

      v10 = [MTColor colorWithWhite:v8 alpha:?];
    }

    else
    {
      _rgbColor = [(MTWhiteColor *)selfCopy _rgbColor];
      v10 = [(MTWhiteColor *)_rgbColor colorBlendedWithColor:colorCopy];

      selfCopy = _rgbColor;
    }

    selfCopy = v10;
  }

  return selfCopy;
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