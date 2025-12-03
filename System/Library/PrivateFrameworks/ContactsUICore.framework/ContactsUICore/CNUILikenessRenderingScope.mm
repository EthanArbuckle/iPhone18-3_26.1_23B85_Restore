@interface CNUILikenessRenderingScope
+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)size scale:(double)scale rightToLeft:(BOOL)left style:(unint64_t)style color:(id)color;
+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(CGColor *)color rightToLeft:(BOOL)left style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle color:(id)self0 maskedAvatarIndices:(id)self1;
+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(CGColor *)color rightToLeft:(BOOL)left style:(unint64_t)style color:(id)a9;
- (BOOL)isEqual:(id)equal;
- (CGSize)pointSize;
- (CNUILikenessRenderingScope)initWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(CGColor *)color rightToLeft:(BOOL)left style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle color:(id)self0 maskedAvatarIndices:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)setStrokeColor:(CGColor *)color;
@end

@implementation CNUILikenessRenderingScope

- (CGSize)pointSize
{
  width = self->_pointSize.width;
  height = self->_pointSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  strokeColor = self->_strokeColor;
  if (strokeColor)
  {
    CGColorRelease(strokeColor);
  }

  v4.receiver = self;
  v4.super_class = CNUILikenessRenderingScope;
  [(CNUILikenessRenderingScope *)&v4 dealloc];
}

- (unint64_t)hash
{
  if ([(CNUILikenessRenderingScope *)self excludePointSizeInEqualityCheck])
  {
    v3 = 527;
  }

  else
  {
    v3 = 31 * [MEMORY[0x1E6996730] cgsizeHash:{self->_pointSize.width, self->_pointSize.height}] + 16337;
  }

  v4 = [MEMORY[0x1E6996730] cgfloatHash:self->_scale];
  v5 = [MEMORY[0x1E6996730] cgfloatHash:self->_strokeWidth];
  strokeColor = self->_strokeColor;
  if (strokeColor)
  {
    strokeColor = CFHash(strokeColor);
  }

  v7 = v5 - (v4 + v3) + 32 * (v4 + v3);
  v8 = self->_rightToLeft - (strokeColor + 32 * v7 - v7) + 32 * (strokeColor + 32 * v7 - v7);
  v9 = self->_style - v8 + 32 * v8;
  v10 = self->_backgroundStyle - v9 + 32 * v9;
  v11 = [MEMORY[0x1E6996730] objectHash:self->_color] - v10 + 32 * v10;
  return [MEMORY[0x1E6996730] objectHash:self->_maskedAvatarIndices] - v11 + 32 * v11;
}

+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(CGColor *)color rightToLeft:(BOOL)left style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle color:(id)self0 maskedAvatarIndices:(id)self1
{
  leftCopy = left;
  height = size.height;
  width = size.width;
  indicesCopy = indices;
  v22 = a10;
  v23 = [[self alloc] initWithPointSize:color scale:leftCopy strokeWidth:style strokeColor:backgroundStyle rightToLeft:v22 style:indicesCopy backgroundStyle:width color:height maskedAvatarIndices:{scale, width}];

  return v23;
}

+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(CGColor *)color rightToLeft:(BOOL)left style:(unint64_t)style color:(id)a9
{
  leftCopy = left;
  height = size.height;
  width = size.width;
  v17 = a9;
  v18 = [self alloc];
  indexSet = [MEMORY[0x1E696AC90] indexSet];
  v20 = [v18 initWithPointSize:color scale:leftCopy strokeWidth:style strokeColor:0 rightToLeft:v17 style:indexSet backgroundStyle:width color:height maskedAvatarIndices:{scale, width}];

  return v20;
}

+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)size scale:(double)scale rightToLeft:(BOOL)left style:(unint64_t)style color:(id)color
{
  leftCopy = left;
  height = size.height;
  width = size.width;
  colorCopy = color;
  v14 = [self alloc];
  indexSet = [MEMORY[0x1E696AC90] indexSet];
  v16 = [v14 initWithPointSize:0 scale:leftCopy strokeWidth:style strokeColor:0 rightToLeft:colorCopy style:indexSet backgroundStyle:width color:height maskedAvatarIndices:{scale, 0.0}];

  return v16;
}

- (CNUILikenessRenderingScope)initWithPointSize:(CGSize)size scale:(double)scale strokeWidth:(double)width strokeColor:(CGColor *)color rightToLeft:(BOOL)left style:(unint64_t)style backgroundStyle:(unint64_t)backgroundStyle color:(id)self0 maskedAvatarIndices:(id)self1
{
  height = size.height;
  width = size.width;
  v21 = a10;
  indicesCopy = indices;
  v32.receiver = self;
  v32.super_class = CNUILikenessRenderingScope;
  v23 = [(CNUILikenessRenderingScope *)&v32 init];
  v24 = v23;
  if (v23)
  {
    v23->_pointSize.width = width;
    v23->_pointSize.height = height;
    v23->_scale = scale;
    v23->_strokeWidth = width;
    Copy = CGColorCreateCopy(color);
    v24->_rightToLeft = left;
    v24->_strokeColor = Copy;
    v24->_style = style;
    v24->_backgroundStyle = backgroundStyle;
    v26 = [v21 copy];
    color = v24->_color;
    v24->_color = v26;

    v28 = [indicesCopy copy];
    maskedAvatarIndices = v24->_maskedAvatarIndices;
    v24->_maskedAvatarIndices = v28;

    v30 = v24;
  }

  return v24;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  [(CNUILikenessRenderingScope *)self pointSize];
  v4 = NSStringFromSize(v29);
  v5 = [v3 appendName:@"pointSize" object:v4];

  v6 = MEMORY[0x1E696AEC0];
  [(CNUILikenessRenderingScope *)self scale];
  v8 = [v6 stringWithFormat:@"%.1f", v7];
  v9 = [v3 appendName:@"scale" object:v8];

  v10 = MEMORY[0x1E696AEC0];
  [(CNUILikenessRenderingScope *)self strokeWidth];
  v12 = [v10 stringWithFormat:@"%.1f", v11];
  v13 = [v3 appendName:@"strokeWidth" object:v12];

  if ([(CNUILikenessRenderingScope *)self rightToLeft])
  {
    v14 = [v3 appendName:@"text-direction" object:@"RTL"];
  }

  color = [(CNUILikenessRenderingScope *)self color];

  if (color)
  {
    color2 = [(CNUILikenessRenderingScope *)self color];
    colorName = [color2 colorName];
    v18 = [v3 appendName:@"color" object:colorName];
  }

  v19 = [v3 appendName:@"style" unsignedInteger:{-[CNUILikenessRenderingScope style](self, "style")}];
  v20 = [v3 appendName:@"backgroundStyle" unsignedInteger:{-[CNUILikenessRenderingScope backgroundStyle](self, "backgroundStyle")}];
  maskedAvatarIndices = [(CNUILikenessRenderingScope *)self maskedAvatarIndices];
  v22 = maskedAvatarIndices;
  if (maskedAvatarIndices)
  {
    v23 = [maskedAvatarIndices _cn_map:&__block_literal_global_6];
    v24 = [v23 componentsJoinedByString:{@", "}];
  }

  else
  {
    v24 = &stru_1F162C170;
  }

  v25 = [v3 appendName:@"maskedAvatarIndices" object:v24];

  build = [v3 build];

  return build;
}

- (void)setStrokeColor:(CGColor *)color
{
  strokeColor = self->_strokeColor;
  if (strokeColor != color)
  {
    if (strokeColor)
    {
      CGColorRelease(strokeColor);
    }

    self->_strokeColor = CGColorRetain(color);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(CNUILikenessRenderingScope *)self excludePointSizeInEqualityCheck]&& (self->_pointSize.width == equalCopy->_pointSize.width ? (v5 = self->_pointSize.height == equalCopy->_pointSize.height) : (v5 = 0), !v5) || vabdd_f64(self->_scale, equalCopy->_scale) >= 0.0001 || vabdd_f64(self->_strokeWidth, equalCopy->_strokeWidth) >= 0.0001 || !CGColorEqualToColor(self->_strokeColor, equalCopy->_strokeColor) || self->_rightToLeft != equalCopy->_rightToLeft || self->_style != equalCopy->_style || self->_backgroundStyle != equalCopy->_backgroundStyle || (color = self->_color, color | equalCopy->_color) && ![(PRMonogramColor *)color isEqual:?]|| (maskedAvatarIndices = self->_maskedAvatarIndices, maskedAvatarIndices | equalCopy->_maskedAvatarIndices) && ![(NSIndexSet *)maskedAvatarIndices isEqual:?])
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CNUILikenessRenderingScope alloc];
  [(CNUILikenessRenderingScope *)self pointSize];
  v6 = v5;
  v8 = v7;
  [(CNUILikenessRenderingScope *)self scale];
  v10 = v9;
  [(CNUILikenessRenderingScope *)self strokeWidth];
  v12 = v11;
  strokeColor = [(CNUILikenessRenderingScope *)self strokeColor];
  rightToLeft = [(CNUILikenessRenderingScope *)self rightToLeft];
  style = [(CNUILikenessRenderingScope *)self style];
  backgroundStyle = [(CNUILikenessRenderingScope *)self backgroundStyle];
  color = [(CNUILikenessRenderingScope *)self color];
  maskedAvatarIndices = [(CNUILikenessRenderingScope *)self maskedAvatarIndices];
  v19 = [(CNUILikenessRenderingScope *)v4 initWithPointSize:strokeColor scale:rightToLeft strokeWidth:style strokeColor:backgroundStyle rightToLeft:color style:maskedAvatarIndices backgroundStyle:v6 color:v8 maskedAvatarIndices:v10, v12];

  [(CNUILikenessRenderingScope *)v19 setExcludePointSizeInEqualityCheck:[(CNUILikenessRenderingScope *)self excludePointSizeInEqualityCheck]];
  return v19;
}

@end