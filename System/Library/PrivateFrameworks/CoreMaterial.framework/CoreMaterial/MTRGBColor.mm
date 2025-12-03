@interface MTRGBColor
- (CAColorMatrix)sourceOverColorMatrix;
- (CGColor)CGColor;
- (MTRGBColor)colorWithAlphaComponent:(double)component;
- (MTRGBColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (id)_initWithCGColor:(CGColor *)color;
- (id)_initWithDescription:(id)description;
- (id)colorBlendedWithColor:(id)color;
- (id)colorDescription;
- (id)description;
@end

@implementation MTRGBColor

- (MTRGBColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v13.receiver = self;
  v13.super_class = MTRGBColor;
  v10 = [(MTRGBColor *)&v13 init];
  if (v10)
  {
    if (red < 0.0 || red > 1.0)
    {
      [MTRGBColor initWithRed:green:blue:alpha:];
    }

    if (green < 0.0 || green > 1.0)
    {
      [MTRGBColor initWithRed:green:blue:alpha:];
    }

    if (blue < 0.0 || blue > 1.0)
    {
      [MTRGBColor initWithRed:green:blue:alpha:];
    }

    if (alpha < 0.0 || alpha > 1.0)
    {
      [MTRGBColor initWithRed:green:blue:alpha:];
    }

    v10->_red = red;
    v10->_green = green;
    v10->_blue = blue;
    v10->_alpha = alpha;
  }

  return v10;
}

- (id)_initWithCGColor:(CGColor *)color
{
  if (!color)
  {
    [MTRGBColor _initWithCGColor:];
    goto LABEL_6;
  }

  ColorSpace = CGColorGetColorSpace(color);
  v6 = CGColorSpaceGetName(ColorSpace);
  if (![v6 isEqualToString:*MEMORY[0x1E695F110]] || (Components = CGColorGetComponents(color), CGColorGetNumberOfComponents(color) != 4))
  {

LABEL_6:
    selfCopy = 0;
    goto LABEL_7;
  }

  v8 = *Components;
  v9 = Components[1];
  v10 = Components[2];
  v11 = Components[3];

  self = [(MTRGBColor *)self initWithRed:v8 green:v9 blue:v10 alpha:v11];
  selfCopy = self;
LABEL_7:
  v13 = selfCopy;

  return v13;
}

- (id)_initWithDescription:(id)description
{
  descriptionCopy = description;
  if (!descriptionCopy)
  {
    [MTRGBColor _initWithDescription:];
  }

  v5 = [descriptionCopy objectForKey:@"alpha"];
  if (!v5)
  {
    [MTRGBColor _initWithDescription:];
  }

  v6 = [descriptionCopy objectForKey:@"red"];
  if (!v6)
  {
    [MTRGBColor _initWithDescription:];
  }

  v7 = [descriptionCopy objectForKey:@"green"];
  if (!v7)
  {
    [MTRGBColor _initWithDescription:];
  }

  v8 = [descriptionCopy objectForKey:@"blue"];
  if (!v8)
  {
    [MTRGBColor _initWithDescription:];
  }

  [v6 floatValue];
  v10 = v9;
  [v7 floatValue];
  v12 = v11;
  [v8 floatValue];
  v14 = v13;
  [v5 floatValue];
  v16 = [(MTRGBColor *)self initWithRed:v10 green:v12 blue:v14 alpha:v15];

  return v16;
}

- (CGColor)CGColor
{
  components[4] = *MEMORY[0x1E69E9840];
  result = self->super._cachedColor;
  if (!result)
  {
    green = self->_green;
    blue = self->_blue;
    alpha = self->_alpha;
    components[0] = self->_red;
    components[1] = green;
    components[2] = blue;
    components[3] = alpha;
    if (RGBColorSpace_onceToken != -1)
    {
      +[MTColor colorWithCGColor:];
    }

    result = CGColorCreate(RGBColorSpace___RGBColorSpace, components);
    self->super._cachedColor = result;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)colorDescription
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"red";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_red];
  v11[0] = v3;
  v10[1] = @"green";
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_green];
  v11[1] = v4;
  v10[2] = @"blue";
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_blue];
  v11[2] = v5;
  v10[3] = @"alpha";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_alpha];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (MTRGBColor)colorWithAlphaComponent:(double)component
{
  v3 = [objc_alloc(objc_opt_class()) initWithRed:self->_red green:self->_green blue:self->_blue alpha:component];

  return v3;
}

- (id)colorBlendedWithColor:(id)color
{
  selfCopy = self;
  if (color)
  {
    _rgbColor = [color _rgbColor];
    v6 = _rgbColor;
    alpha = selfCopy->_alpha;
    v8 = _rgbColor[5];
    v9 = 1.0;
    v10 = 1.0 - alpha;
    v11 = alpha + v8 * (1.0 - alpha);
    v12 = 1.0;
    v13 = 1.0;
    if (v11 != 0.0)
    {
      v9 = (alpha * selfCopy->_red + v8 * _rgbColor[2] * v10) / v11;
      v12 = (alpha * selfCopy->_green + v8 * _rgbColor[3] * v10) / v11;
      v13 = (alpha * selfCopy->_blue + v8 * _rgbColor[4] * v10) / v11;
    }

    v14 = [MTColor colorWithRed:v9 green:v12 blue:v13 alpha:?];

    selfCopy = v14;
  }

  return selfCopy;
}

- (CAColorMatrix)sourceOverColorMatrix
{
  red = self->_red;
  green = self->_green;
  blue = self->_blue;
  alpha = self->_alpha;
  return MEMORY[0x1EEDD5DB0](red, green, blue, alpha);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  red = self->_red;
  blue = self->_blue;
  return [v3 stringWithFormat:@"<%@: %p; red: %f; green: %f; blue: %f; alpha: %f>", v4, self, *&red, *&self->_green, *&blue, *&self->_alpha];
}

- (void)initWithRed:green:blue:alpha:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"(0 <= red) && (red <= 1.0)" object:? file:? lineNumber:? description:?];
}

- (void)initWithRed:green:blue:alpha:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"(0 <= green) && (green <= 1.0)" object:? file:? lineNumber:? description:?];
}

- (void)initWithRed:green:blue:alpha:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"(0 <= blue) && (blue <= 1.0)" object:? file:? lineNumber:? description:?];
}

- (void)initWithRed:green:blue:alpha:.cold.4()
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
  [v0 handleFailureInMethod:@"wrappedRed != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDescription:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"wrappedGreen != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithDescription:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"wrappedBlue != nil" object:? file:? lineNumber:? description:?];
}

@end