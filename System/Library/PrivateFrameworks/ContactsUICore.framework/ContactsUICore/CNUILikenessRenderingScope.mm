@interface CNUILikenessRenderingScope
+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)a3 scale:(double)a4 rightToLeft:(BOOL)a5 style:(unint64_t)a6 color:(id)a7;
+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(CGColor *)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8 backgroundStyle:(unint64_t)a9 color:(id)a10 maskedAvatarIndices:(id)a11;
+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(CGColor *)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8 color:(id)a9;
- (BOOL)isEqual:(id)a3;
- (CGSize)pointSize;
- (CNUILikenessRenderingScope)initWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(CGColor *)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8 backgroundStyle:(unint64_t)a9 color:(id)a10 maskedAvatarIndices:(id)a11;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)setStrokeColor:(CGColor *)a3;
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

+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(CGColor *)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8 backgroundStyle:(unint64_t)a9 color:(id)a10 maskedAvatarIndices:(id)a11
{
  v14 = a7;
  height = a3.height;
  width = a3.width;
  v21 = a11;
  v22 = a10;
  v23 = [[a1 alloc] initWithPointSize:a6 scale:v14 strokeWidth:a8 strokeColor:a9 rightToLeft:v22 style:v21 backgroundStyle:width color:height maskedAvatarIndices:{a4, a5}];

  return v23;
}

+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(CGColor *)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8 color:(id)a9
{
  v10 = a7;
  height = a3.height;
  width = a3.width;
  v17 = a9;
  v18 = [a1 alloc];
  v19 = [MEMORY[0x1E696AC90] indexSet];
  v20 = [v18 initWithPointSize:a6 scale:v10 strokeWidth:a8 strokeColor:0 rightToLeft:v17 style:v19 backgroundStyle:width color:height maskedAvatarIndices:{a4, a5}];

  return v20;
}

+ (CNUILikenessRenderingScope)renderingScopeWithPointSize:(CGSize)a3 scale:(double)a4 rightToLeft:(BOOL)a5 style:(unint64_t)a6 color:(id)a7
{
  v8 = a5;
  height = a3.height;
  width = a3.width;
  v13 = a7;
  v14 = [a1 alloc];
  v15 = [MEMORY[0x1E696AC90] indexSet];
  v16 = [v14 initWithPointSize:0 scale:v8 strokeWidth:a6 strokeColor:0 rightToLeft:v13 style:v15 backgroundStyle:width color:height maskedAvatarIndices:{a4, 0.0}];

  return v16;
}

- (CNUILikenessRenderingScope)initWithPointSize:(CGSize)a3 scale:(double)a4 strokeWidth:(double)a5 strokeColor:(CGColor *)a6 rightToLeft:(BOOL)a7 style:(unint64_t)a8 backgroundStyle:(unint64_t)a9 color:(id)a10 maskedAvatarIndices:(id)a11
{
  height = a3.height;
  width = a3.width;
  v21 = a10;
  v22 = a11;
  v32.receiver = self;
  v32.super_class = CNUILikenessRenderingScope;
  v23 = [(CNUILikenessRenderingScope *)&v32 init];
  v24 = v23;
  if (v23)
  {
    v23->_pointSize.width = width;
    v23->_pointSize.height = height;
    v23->_scale = a4;
    v23->_strokeWidth = a5;
    Copy = CGColorCreateCopy(a6);
    v24->_rightToLeft = a7;
    v24->_strokeColor = Copy;
    v24->_style = a8;
    v24->_backgroundStyle = a9;
    v26 = [v21 copy];
    color = v24->_color;
    v24->_color = v26;

    v28 = [v22 copy];
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

  v15 = [(CNUILikenessRenderingScope *)self color];

  if (v15)
  {
    v16 = [(CNUILikenessRenderingScope *)self color];
    v17 = [v16 colorName];
    v18 = [v3 appendName:@"color" object:v17];
  }

  v19 = [v3 appendName:@"style" unsignedInteger:{-[CNUILikenessRenderingScope style](self, "style")}];
  v20 = [v3 appendName:@"backgroundStyle" unsignedInteger:{-[CNUILikenessRenderingScope backgroundStyle](self, "backgroundStyle")}];
  v21 = [(CNUILikenessRenderingScope *)self maskedAvatarIndices];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 _cn_map:&__block_literal_global_6];
    v24 = [v23 componentsJoinedByString:{@", "}];
  }

  else
  {
    v24 = &stru_1F162C170;
  }

  v25 = [v3 appendName:@"maskedAvatarIndices" object:v24];

  v26 = [v3 build];

  return v26;
}

- (void)setStrokeColor:(CGColor *)a3
{
  strokeColor = self->_strokeColor;
  if (strokeColor != a3)
  {
    if (strokeColor)
    {
      CGColorRelease(strokeColor);
    }

    self->_strokeColor = CGColorRetain(a3);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(CNUILikenessRenderingScope *)self excludePointSizeInEqualityCheck]&& (self->_pointSize.width == v4->_pointSize.width ? (v5 = self->_pointSize.height == v4->_pointSize.height) : (v5 = 0), !v5) || vabdd_f64(self->_scale, v4->_scale) >= 0.0001 || vabdd_f64(self->_strokeWidth, v4->_strokeWidth) >= 0.0001 || !CGColorEqualToColor(self->_strokeColor, v4->_strokeColor) || self->_rightToLeft != v4->_rightToLeft || self->_style != v4->_style || self->_backgroundStyle != v4->_backgroundStyle || (color = self->_color, color | v4->_color) && ![(PRMonogramColor *)color isEqual:?]|| (maskedAvatarIndices = self->_maskedAvatarIndices, maskedAvatarIndices | v4->_maskedAvatarIndices) && ![(NSIndexSet *)maskedAvatarIndices isEqual:?])
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CNUILikenessRenderingScope alloc];
  [(CNUILikenessRenderingScope *)self pointSize];
  v6 = v5;
  v8 = v7;
  [(CNUILikenessRenderingScope *)self scale];
  v10 = v9;
  [(CNUILikenessRenderingScope *)self strokeWidth];
  v12 = v11;
  v13 = [(CNUILikenessRenderingScope *)self strokeColor];
  v14 = [(CNUILikenessRenderingScope *)self rightToLeft];
  v15 = [(CNUILikenessRenderingScope *)self style];
  v16 = [(CNUILikenessRenderingScope *)self backgroundStyle];
  v17 = [(CNUILikenessRenderingScope *)self color];
  v18 = [(CNUILikenessRenderingScope *)self maskedAvatarIndices];
  v19 = [(CNUILikenessRenderingScope *)v4 initWithPointSize:v13 scale:v14 strokeWidth:v15 strokeColor:v16 rightToLeft:v17 style:v18 backgroundStyle:v6 color:v8 maskedAvatarIndices:v10, v12];

  [(CNUILikenessRenderingScope *)v19 setExcludePointSizeInEqualityCheck:[(CNUILikenessRenderingScope *)self excludePointSizeInEqualityCheck]];
  return v19;
}

@end