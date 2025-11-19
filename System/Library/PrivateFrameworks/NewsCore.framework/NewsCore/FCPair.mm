@interface FCPair
+ (id)pair;
+ (id)pairWithFirst:(id)a3 second:(id)a4;
+ (id)pairWithPair:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FCPair)initWithCoder:(id)a3;
- (FCPair)initWithFirst:(id)a3 second:(id)a4;
- (FCPair)initWithPair:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCPair

- (unint64_t)hash
{
  v3 = [(FCPair *)self first];
  v4 = [v3 hash];
  v5 = [(FCPair *)self second];
  v6 = [v5 hash];

  return v6 ^ v4;
}

+ (id)pairWithFirst:(id)a3 second:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFirst:v7 second:v6];

  return v8;
}

+ (id)pairWithPair:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPair:v4];

  return v5;
}

+ (id)pair
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (FCPair)initWithFirst:(id)a3 second:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FCPair;
  v8 = [(FCPair *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(FCPair *)v8 p_SetFirst:v6];
    [(FCPair *)v9 p_SetSecond:v7];
  }

  return v9;
}

- (FCPair)initWithPair:(id)a3
{
  v4 = a3;
  v5 = [v4 first];
  v6 = [v4 second];

  v7 = [(FCPair *)self initWithFirst:v5 second:v6];
  return v7;
}

- (FCPair)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObject];
  v6 = [v4 decodeObject];

  v7 = [(FCPair *)self initWithFirst:v5 second:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FCPair *)self first];
  [v4 encodeObject:v5];

  v6 = [(FCPair *)self second];
  [v4 encodeObject:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FCPair *)self first];
      v6 = [(FCPair *)v4 first];
      if ([v5 isEqual:v6])
      {
        v7 = [(FCPair *)self second];
        v8 = [(FCPair *)v4 second];
        v9 = [v7 isEqual:v8];
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
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FCPair *)self first];
  v5 = [v4 description];
  v6 = [(FCPair *)self second];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"%@, %@", v5, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(FCPair *)self first];
  v6 = [v5 copyWithZone:a3];

  v7 = [(FCPair *)self second];
  v8 = [v7 copyWithZone:a3];

  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithFirst:second:", v6, v8}];
  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [(FCPair *)self first];
  v6 = [v5 copyWithZone:a3];

  v7 = [(FCPair *)self second];
  v8 = [v7 copyWithZone:a3];

  v9 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithFirst:second:", v6, v8}];
  return v9;
}

@end