@interface NSCollectionLayoutSpacing
+ (NSCollectionLayoutSpacing)fixedSpacing:(CGFloat)fixedSpacing;
+ (NSCollectionLayoutSpacing)flexibleSpacing:(CGFloat)flexibleSpacing;
+ (id)defaultSpacing;
- (BOOL)isEqual:(id)equal;
- (NSCollectionLayoutSpacing)initWithSpacing:(double)spacing isFlexible:(BOOL)flexible;
- (id)_externalDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NSCollectionLayoutSpacing

+ (id)defaultSpacing
{
  v2 = [[self alloc] initWithSpacing:0 isFlexible:0.0];

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

- (NSCollectionLayoutSpacing)initWithSpacing:(double)spacing isFlexible:(BOOL)flexible
{
  v7.receiver = self;
  v7.super_class = NSCollectionLayoutSpacing;
  result = [(NSCollectionLayoutSpacing *)&v7 init];
  if (result)
  {
    result->_spacing = spacing;
    result->_isFlexible = flexible;
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
  v3 = [[self alloc] initWithSpacing:1 isFlexible:flexibleSpacing];

  return v3;
}

+ (NSCollectionLayoutSpacing)fixedSpacing:(CGFloat)fixedSpacing
{
  v3 = [[self alloc] initWithSpacing:0 isFlexible:fixedSpacing];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(NSCollectionLayoutSpacing *)self spacing];
  v6 = v5;
  isFlexibleSpacing = [(NSCollectionLayoutSpacing *)self isFlexibleSpacing];

  return [v4 initWithSpacing:isFlexibleSpacing isFlexible:v6];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    isFlexibleSpacing = [(NSCollectionLayoutSpacing *)self isFlexibleSpacing];
    if (isFlexibleSpacing == [(NSCollectionLayoutSpacing *)equalCopy isFlexibleSpacing])
    {
      [(NSCollectionLayoutSpacing *)self spacing];
      v8 = v7;
      [(NSCollectionLayoutSpacing *)equalCopy spacing];
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