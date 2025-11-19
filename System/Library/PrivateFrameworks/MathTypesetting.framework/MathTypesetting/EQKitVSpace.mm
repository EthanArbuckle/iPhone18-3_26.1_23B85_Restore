@interface EQKitVSpace
- (BOOL)isEqual:(id)a3;
- (EQKitVSpace)initWithHeight:(double)a3 depth:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EQKitVSpace

- (EQKitVSpace)initWithHeight:(double)a3 depth:(double)a4
{
  v7.receiver = self;
  v7.super_class = EQKitVSpace;
  result = [(EQKitVSpace *)&v7 init];
  if (result)
  {
    result->_height = a3;
    result->_depth = a4;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(EQKitVSpace *)self height];
  v6 = v5;
  [(EQKitVSpace *)self depth];

  return [v4 initWithHeight:v6 depth:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else if ([(EQKitVSpace *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    [(EQKitVSpace *)self height];
    v7 = v6;
    [(EQKitVSpace *)v5 height];
    if (v7 == v8)
    {
      [(EQKitVSpace *)self depth];
      v10 = v9;
      [(EQKitVSpace *)v5 depth];
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitVSpace *)self height];
  v6 = v5;
  [(EQKitVSpace *)self depth];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f", v4, self, v6, v7];
}

@end