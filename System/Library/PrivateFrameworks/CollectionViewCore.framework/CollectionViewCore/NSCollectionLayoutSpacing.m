@interface NSCollectionLayoutSpacing
+ (NSCollectionLayoutSpacing)fixedSpacing:(CGFloat)fixedSpacing;
+ (NSCollectionLayoutSpacing)flexibleSpacing:(CGFloat)flexibleSpacing;
+ (id)defaultSpacing;
- (BOOL)isEqual:(id)a3;
- (NSCollectionLayoutSpacing)initWithSpacing:(double)a3 isFlexible:(BOOL)a4;
- (id)_externalDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NSCollectionLayoutSpacing

+ (id)defaultSpacing
{
  v2 = [[a1 alloc] initWithSpacing:0 isFlexible:0.0];

  return v2;
}

- (id)_externalDescription
{
  isFlexible = self->_isFlexible;
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_spacing];
  v5 = v4;
  if (isFlexible)
  {
    v6 = @".flexible(%@)";
  }

  else
  {
    v6 = @".fixed(%@)";
  }

  v7 = [v3 stringWithFormat:v6, v4];

  return v7;
}

- (NSCollectionLayoutSpacing)initWithSpacing:(double)a3 isFlexible:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = NSCollectionLayoutSpacing;
  result = [(NSCollectionLayoutSpacing *)&v7 init];
  if (result)
  {
    result->_spacing = a3;
    result->_isFlexible = a4;
  }

  return result;
}

- (id)description
{
  isFlexible = self->_isFlexible;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_spacing];
  v8 = v7;
  if (isFlexible)
  {
    v9 = @"<%@ - %p: flexible:%@>";
  }

  else
  {
    v9 = @"<%@ - %p: fixed:%@>";
  }

  v10 = [v4 stringWithFormat:v9, v6, self, v7];

  return v10;
}

+ (NSCollectionLayoutSpacing)flexibleSpacing:(CGFloat)flexibleSpacing
{
  v3 = [[a1 alloc] initWithSpacing:1 isFlexible:flexibleSpacing];

  return v3;
}

+ (NSCollectionLayoutSpacing)fixedSpacing:(CGFloat)fixedSpacing
{
  v3 = [[a1 alloc] initWithSpacing:0 isFlexible:fixedSpacing];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(NSCollectionLayoutSpacing *)self spacing];
  v6 = v5;
  v7 = [(NSCollectionLayoutSpacing *)self isFlexibleSpacing];

  return [v4 initWithSpacing:v7 isFlexible:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = [(NSCollectionLayoutSpacing *)self isFlexibleSpacing];
    if (v5 == [(NSCollectionLayoutSpacing *)v4 isFlexibleSpacing])
    {
      [(NSCollectionLayoutSpacing *)self spacing];
      v8 = v7;
      [(NSCollectionLayoutSpacing *)v4 spacing];
      v6 = vabdd_f64(v8, v9) <= 0.00001;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end