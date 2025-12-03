@interface EQKitHVSpace
- (BOOL)isEqual:(id)equal;
- (EQKitHVSpace)initWithWidth:(double)width height:(double)height depth:(double)depth;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation EQKitHVSpace

- (EQKitHVSpace)initWithWidth:(double)width height:(double)height depth:(double)depth
{
  v9.receiver = self;
  v9.super_class = EQKitHVSpace;
  result = [(EQKitHVSpace *)&v9 init];
  if (result)
  {
    result->_width = width;
    result->_height = height;
    result->_depth = depth;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(EQKitHVSpace *)self width];
  v6 = v5;
  [(EQKitHVSpace *)self height];
  v8 = v7;
  [(EQKitHVSpace *)self depth];

  return [v4 initWithWidth:v6 height:v8 depth:v9];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else if ([(EQKitHVSpace *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    [(EQKitHVSpace *)self width];
    v7 = v6;
    [(EQKitHVSpace *)v5 width];
    if (v7 == v8 && ([(EQKitHVSpace *)self height], v10 = v9, [(EQKitHVSpace *)v5 height], v10 == v11))
    {
      [(EQKitHVSpace *)self depth];
      v13 = v12;
      [(EQKitHVSpace *)v5 depth];
      v15 = v13 == v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitHVSpace *)self height];
  v6 = v5;
  [(EQKitHVSpace *)self depth];
  v8 = v7;
  [(EQKitHVSpace *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f", v4, self, v6, v8, v9];
}

@end