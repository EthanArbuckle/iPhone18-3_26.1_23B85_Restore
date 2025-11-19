@interface LNSystemNamedColor
- (BOOL)isEqual:(id)a3;
- (LNSystemNamedColor)initWithCoder:(id)a3;
- (LNSystemNamedColor)initWithSystemColor:(unint64_t)a3 variant:(unint64_t)a4;
- (id)description;
- (id)initUnsafeWithSystemColor:(unint64_t)a3 variant:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSystemNamedColor

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
    goto LABEL_10;
  }

  v6 = v4;
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v6 = 0;
    goto LABEL_7;
  }

  v7 = [(LNSystemNamedColor *)self systemColor];
  if (v7 != [(LNSystemNamedColor *)v6 systemColor])
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v8 = [(LNSystemNamedColor *)self colorVariant];
  v9 = v8 == [(LNSystemNamedColor *)v6 colorVariant];
LABEL_8:

LABEL_10:
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LNSystemNamedColor systemColor](self forKey:{"systemColor"), @"systemColor"}];
  [v4 encodeInteger:-[LNSystemNamedColor colorVariant](self forKey:{"colorVariant"), @"colorVariant"}];
}

- (LNSystemNamedColor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"systemColor"];
  v6 = [v4 decodeIntegerForKey:@"colorVariant"];

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

- (LNSystemNamedColor)initWithSystemColor:(unint64_t)a3 variant:(unint64_t)a4
{
  v4 = 0;
  if (a3 <= 0xD && a4 <= 1)
  {
    self = [LNSystemNamedColor initUnsafeWithSystemColor:"initUnsafeWithSystemColor:variant:" variant:?];
    v4 = self;
  }

  return v4;
}

- (id)initUnsafeWithSystemColor:(unint64_t)a3 variant:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = LNSystemNamedColor;
  v6 = [(LNSystemNamedColor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(LNSystemNamedColor *)v6 setSystemColor:a3];
    [(LNSystemNamedColor *)v7 setColorVariant:a4];
  }

  return v7;
}

@end