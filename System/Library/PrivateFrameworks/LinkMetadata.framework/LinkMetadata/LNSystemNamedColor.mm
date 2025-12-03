@interface LNSystemNamedColor
- (BOOL)isEqual:(id)equal;
- (LNSystemNamedColor)initWithCoder:(id)coder;
- (LNSystemNamedColor)initWithSystemColor:(unint64_t)color variant:(unint64_t)variant;
- (id)description;
- (id)initUnsafeWithSystemColor:(unint64_t)color variant:(unint64_t)variant;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSystemNamedColor

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
    goto LABEL_10;
  }

  v6 = equalCopy;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  systemColor = [(LNSystemNamedColor *)self systemColor];
  if (systemColor != [(LNSystemNamedColor *)v6 systemColor])
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  colorVariant = [(LNSystemNamedColor *)self colorVariant];
  v9 = colorVariant == [(LNSystemNamedColor *)v6 colorVariant];
LABEL_8:

LABEL_10:
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNSystemNamedColor systemColor](self forKey:{"systemColor"), @"systemColor"}];
  [coderCopy encodeInteger:-[LNSystemNamedColor colorVariant](self forKey:{"colorVariant"), @"colorVariant"}];
}

- (LNSystemNamedColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"systemColor"];
  v6 = [coderCopy decodeIntegerForKey:@"colorVariant"];

  return [(LNSystemNamedColor *)self initWithSystemColor:v5 variant:v6];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, systemColor: %lu, colorVariant %lu>", v5, self, -[LNSystemNamedColor systemColor](self, "systemColor"), -[LNSystemNamedColor colorVariant](self, "colorVariant")];

  return v6;
}

- (LNSystemNamedColor)initWithSystemColor:(unint64_t)color variant:(unint64_t)variant
{
  selfCopy = 0;
  if (color <= 0xD && variant <= 1)
  {
    self = [LNSystemNamedColor initUnsafeWithSystemColor:"initUnsafeWithSystemColor:variant:" variant:?];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)initUnsafeWithSystemColor:(unint64_t)color variant:(unint64_t)variant
{
  v9.receiver = self;
  v9.super_class = LNSystemNamedColor;
  v6 = [(LNSystemNamedColor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(LNSystemNamedColor *)v6 setSystemColor:color];
    [(LNSystemNamedColor *)v7 setColorVariant:variant];
  }

  return v7;
}

@end