@interface HKGradient
+ (id)defaultGradient;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHKGradient:(id)a3;
- (HKGradient)initWithColors:(id)a3 locations:(id)a4;
- (HKGradient)initWithTopColor:(id)a3 bottomColor:(id)a4;
- (UIColor)bottomColor;
- (UIColor)topColor;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HKGradient

- (HKGradient)initWithColors:(id)a3 locations:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKGradient;
  v9 = [(HKGradient *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_colors, a3);
    objc_storeStrong(&v10->_locations, a4);
  }

  return v10;
}

- (HKGradient)initWithTopColor:(id)a3 bottomColor:(id)a4
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = a3;
  v12[1] = a4;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:v12 count:2];

  v10 = [(HKGradient *)self initWithColors:v9 locations:&unk_1F4380FE8];
  return v10;
}

+ (id)defaultGradient
{
  v2 = objc_alloc(objc_opt_class());
  v3 = [MEMORY[0x1E69DC888] redColor];
  v4 = [MEMORY[0x1E69DC888] blueColor];
  v5 = [v2 initWithTopColor:v3 bottomColor:v4];

  return v5;
}

- (UIColor)topColor
{
  v2 = [(HKGradient *)self colors];
  v3 = [v2 firstObject];

  return v3;
}

- (UIColor)bottomColor
{
  v2 = [(HKGradient *)self colors];
  v3 = [v2 lastObject];

  return v3;
}

- (BOOL)isEqualToHKGradient:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(HKGradient *)self colors];
    v6 = [v4 colors];
    if ([v5 isEqualToArray:v6])
    {
      v7 = [(HKGradient *)self locations];
      v8 = [v4 locations];
      v9 = [v7 isEqualToArray:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HKGradient *)self isEqualToHKGradient:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(HKGradient *)self colors];
  v4 = [v3 hash];
  v5 = [(HKGradient *)self locations];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(HKGradient *)self colors];
    v7 = [v6 copyWithZone:a3];
    [v5 setColors:v7];

    v8 = [(HKGradient *)self locations];
    v9 = [v8 copyWithZone:a3];
    [v5 setLocations:v9];
  }

  return v5;
}

@end