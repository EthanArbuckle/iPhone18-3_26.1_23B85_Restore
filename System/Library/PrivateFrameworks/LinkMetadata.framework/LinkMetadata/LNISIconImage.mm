@interface LNISIconImage
- (LNISIconImage)initWithCoder:(id)a3;
- (LNISIconImage)initWithIconType:(int64_t)a3 identifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNISIconImage

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = LNISIconImage;
  v4 = a3;
  [(LNImage *)&v6 encodeWithCoder:v4];
  [v4 encodeInteger:-[LNISIconImage iconType](self forKey:{"iconType", v6.receiver, v6.super_class), @"iconType"}];
  v5 = [(LNISIconImage *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];
}

- (LNISIconImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"iconType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  if (v6)
  {
    self = [(LNISIconImage *)self initWithIconType:v5 identifier:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (LNISIconImage)initWithIconType:(int64_t)a3 identifier:(id)a4
{
  v8 = a4;
  if (!v8)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"LNISIconImage.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v13.receiver = self;
  v13.super_class = LNISIconImage;
  v9 = [(LNImage *)&v13 initWithSystemImageNamed:&stru_1F02ED148];
  v10 = v9;
  if (v9)
  {
    v9->_iconType = a3;
    objc_storeStrong(&v9->_identifier, a4);
  }

  return v10;
}

@end