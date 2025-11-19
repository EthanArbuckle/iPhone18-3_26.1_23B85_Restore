@interface EQKitHSpace
- (BOOL)isEqual:(id)a3;
- (EQKitHSpace)initWithWidth:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EQKitHSpace

- (EQKitHSpace)initWithWidth:(double)a3
{
  v5.receiver = self;
  v5.super_class = EQKitHSpace;
  result = [(EQKitHSpace *)&v5 init];
  if (result)
  {
    result->_width = a3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(EQKitHSpace *)self width];

  return [v4 initWithWidth:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(EQKitHSpace *)v4 isMemberOfClass:objc_opt_class()])
  {
    [(EQKitHSpace *)self width];
    v6 = v5;
    [(EQKitHSpace *)v4 width];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitHSpace *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: width=%f", v4, self, v5];
}

@end