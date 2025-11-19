@interface BBButton
+ (id)buttonWithTitle:(id)a3 glyphData:(id)a4 action:(id)a5 identifier:(id)a6;
+ (id)buttonWithTitle:(id)a3 image:(id)a4 action:(id)a5 identifier:(id)a6;
- (BBButton)initWithCoder:(id)a3;
- (BBButton)initWithTitle:(id)a3 image:(id)a4 action:(id)a5 identifier:(id)a6;
- (BOOL)isEqual:(id)a3;
- (NSData)glyphData;
- (id)awakeAfterUsingCoder:(id)a3;
- (id)description;
- (id)replacementObjectForCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBButton

+ (id)buttonWithTitle:(id)a3 glyphData:(id)a4 action:(id)a5 identifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [BBImage imageWithData:a4];
  v14 = [a1 buttonWithTitle:v12 image:v13 action:v11 identifier:v10];

  return v14;
}

+ (id)buttonWithTitle:(id)a3 image:(id)a4 action:(id)a5 identifier:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!(v11 | v12))
  {
    [BBButton buttonWithTitle:a2 image:a1 action:? identifier:?];
  }

  v15 = [[a1 alloc] initWithTitle:v11 image:v12 action:v13 identifier:v14];

  return v15;
}

- (BBButton)initWithTitle:(id)a3 image:(id)a4 action:(id)a5 identifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BBButton;
  v14 = [(BBButton *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(BBButton *)v14 setTitle:v10];
    [(BBButton *)v15 setImage:v11];
    [(BBButton *)v15 setAction:v12];
    [(BBButton *)v15 setIdentifier:v13];
  }

  return v15;
}

- (NSData)glyphData
{
  v2 = [(BBButton *)self image];
  v3 = [v2 data];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(BBButton *)self title];
      v7 = [(BBButton *)v5 title];
      if (BSEqualStrings())
      {
        v8 = [(BBButton *)self image];
        v9 = [(BBButton *)v5 image];
        if (BSEqualObjects())
        {
          v10 = [(BBButton *)self action];
          v11 = [(BBButton *)v5 action];
          if (BSEqualObjects())
          {
            v15 = [(BBButton *)self identifier];
            v12 = [(BBButton *)v5 identifier];
            v13 = BSEqualObjects();
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(BBButton *)self title];
  v4 = [v3 hash];
  v5 = [(BBButton *)self image];
  v6 = [v5 hash] ^ v4;
  v7 = [(BBButton *)self action];
  v8 = [v7 hash];
  v9 = [(BBButton *)self identifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(BBButton *)self title];
  v6 = [(BBButton *)self action];
  v7 = [v3 stringWithFormat:@"<%@: %p title: %@; action: %@>", v4, self, v5, v6];;

  return v7;
}

- (BBButton)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v9 = [(BBButton *)self initWithTitle:v5 image:v6 action:v7 identifier:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BBButton *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(BBButton *)self image];
  [v4 encodeObject:v6 forKey:@"image"];

  v7 = [(BBButton *)self action];
  [v4 encodeObject:v7 forKey:@"action"];

  v8 = [(BBButton *)self identifier];
  [v4 encodeObject:v8 forKey:@"identifier"];
}

- (id)replacementObjectForCoder:(id)a3
{
  v4 = [self bb_objectCache];
  v5 = [v4 cacheObject:self];

  return v5;
}

- (id)awakeAfterUsingCoder:(id)a3
{
  v4 = [self bb_objectCache];
  v5 = [v4 cacheObject:self];

  return v5;
}

+ (void)buttonWithTitle:(uint64_t)a1 image:(uint64_t)a2 action:identifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BBButton.m" lineNumber:45 description:{@"%@-buttonWithTitle:action: requires a title or image (or both)", a2}];
}

@end