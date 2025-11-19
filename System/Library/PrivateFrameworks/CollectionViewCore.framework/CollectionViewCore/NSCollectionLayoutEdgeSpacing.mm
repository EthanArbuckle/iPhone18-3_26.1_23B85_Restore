@interface NSCollectionLayoutEdgeSpacing
+ (NSCollectionLayoutEdgeSpacing)spacingForLeading:(NSCollectionLayoutSpacing *)leading top:(NSCollectionLayoutSpacing *)top trailing:(NSCollectionLayoutSpacing *)trailing bottom:(NSCollectionLayoutSpacing *)bottom;
+ (id)defaultSpacing;
+ (id)fixedSpacing:(double)a3;
+ (id)flexibleSpacing:(double)a3;
- (BOOL)_hasSpacing;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSpacingFixedForEdge:(unint64_t)a3;
- (BOOL)isSpacingFlexibleForEdge:(unint64_t)a3;
- (CVCDirectionalEdgeInsets)edgeOutsets;
- (NSCollectionLayoutEdgeSpacing)initWithLeading:(id)a3 top:(id)a4 trailing:(id)a5 bottom:(id)a6;
- (double)spacingForEdge:(unint64_t)a3;
- (id)_externalDescription;
- (id)_spacingForEdge:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation NSCollectionLayoutEdgeSpacing

+ (id)defaultSpacing
{
  v3 = [NSCollectionLayoutSpacing fixedSpacing:0.0];
  v4 = [[a1 alloc] initWithLeading:v3 top:v3 trailing:v3 bottom:v3];

  return v4;
}

- (BOOL)_hasSpacing
{
  if ([(NSCollectionLayoutSpacing *)self->_leading _hasSpacing]|| [(NSCollectionLayoutSpacing *)self->_trailing _hasSpacing]|| [(NSCollectionLayoutSpacing *)self->_top _hasSpacing])
  {
    return 1;
  }

  bottom = self->_bottom;

  return [(NSCollectionLayoutSpacing *)bottom _hasSpacing];
}

- (CVCDirectionalEdgeInsets)edgeOutsets
{
  [(NSCollectionLayoutSpacing *)self->_top spacing];
  v4 = v3;
  [(NSCollectionLayoutSpacing *)self->_leading spacing];
  v6 = v5;
  [(NSCollectionLayoutSpacing *)self->_bottom spacing];
  v8 = v7;
  [(NSCollectionLayoutSpacing *)self->_trailing spacing];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.trailing = v10;
  result.bottom = v13;
  result.leading = v12;
  result.top = v11;
  return result;
}

- (NSCollectionLayoutEdgeSpacing)initWithLeading:(id)a3 top:(id)a4 trailing:(id)a5 bottom:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = NSCollectionLayoutEdgeSpacing;
  v15 = [(NSCollectionLayoutEdgeSpacing *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_leading, a3);
    objc_storeStrong(&v16->_top, a4);
    objc_storeStrong(&v16->_trailing, a5);
    objc_storeStrong(&v16->_bottom, a6);
  }

  return v16;
}

- (id)description
{
  [(NSCollectionLayoutEdgeSpacing *)self edgeOutsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = MEMORY[0x277CCACA8];
  v18 = *&self->_leading;
  trailing = self->_trailing;
  bottom = self->_bottom;
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  v16 = [v9 stringWithFormat:@"<leading=%@ top=%@; trailing=%@; bottom=%@; outsets=@{%@, %@, %@, %@}>", v18, trailing, bottom, v12, v13, v14, v15];;

  return v16;
}

- (id)_externalDescription
{
  if ([(NSCollectionLayoutSpacing *)self->_leading isFixedSpacing]&& ([(NSCollectionLayoutSpacing *)self->_leading spacing], v3 == 0.0) && [(NSCollectionLayoutSpacing *)self->_top isFixedSpacing]&& ([(NSCollectionLayoutSpacing *)self->_top spacing], v4 == 0.0) && [(NSCollectionLayoutSpacing *)self->_trailing isFixedSpacing]&& ([(NSCollectionLayoutSpacing *)self->_trailing spacing], v5 == 0.0) && [(NSCollectionLayoutSpacing *)self->_bottom isFixedSpacing]&& ([(NSCollectionLayoutSpacing *)self->_bottom spacing], v6 == 0.0))
  {
    v7 = @"0";
  }

  else
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [(NSCollectionLayoutSpacing *)self->_leading _externalDescription];
    v10 = [(NSCollectionLayoutSpacing *)self->_top _externalDescription];
    v11 = [(NSCollectionLayoutSpacing *)self->_trailing _externalDescription];
    v12 = [(NSCollectionLayoutSpacing *)self->_bottom _externalDescription];
    v7 = [v8 stringWithFormat:@"<leading=%@ top=%@; trailing=%@; bottom=%@>", v9, v10, v11, v12];;
  }

  return v7;
}

+ (id)flexibleSpacing:(double)a3
{
  v4 = [NSCollectionLayoutSpacing flexibleSpacing:a3];
  v5 = [[a1 alloc] initWithLeading:v4 top:v4 trailing:v4 bottom:v4];

  return v5;
}

+ (id)fixedSpacing:(double)a3
{
  v4 = [NSCollectionLayoutSpacing fixedSpacing:a3];
  v5 = [[a1 alloc] initWithLeading:v4 top:v4 trailing:v4 bottom:v4];

  return v5;
}

+ (NSCollectionLayoutEdgeSpacing)spacingForLeading:(NSCollectionLayoutSpacing *)leading top:(NSCollectionLayoutSpacing *)top trailing:(NSCollectionLayoutSpacing *)trailing bottom:(NSCollectionLayoutSpacing *)bottom
{
  v10 = bottom;
  v11 = trailing;
  v12 = top;
  v13 = leading;
  v14 = [[a1 alloc] initWithLeading:v13 top:v12 trailing:v11 bottom:v10];

  return v14;
}

- (BOOL)isSpacingFixedForEdge:(unint64_t)a3
{
  v3 = [(NSCollectionLayoutEdgeSpacing *)self _spacingForEdge:a3];
  v4 = [v3 isFixedSpacing];

  return v4;
}

- (BOOL)isSpacingFlexibleForEdge:(unint64_t)a3
{
  v3 = [(NSCollectionLayoutEdgeSpacing *)self _spacingForEdge:a3];
  v4 = [v3 isFlexibleSpacing];

  return v4;
}

- (double)spacingForEdge:(unint64_t)a3
{
  v3 = [(NSCollectionLayoutEdgeSpacing *)self _spacingForEdge:a3];
  [v3 spacing];
  v5 = v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  leading = self->_leading;
  top = self->_top;
  trailing = self->_trailing;
  bottom = self->_bottom;

  return [v4 initWithLeading:leading top:top trailing:trailing bottom:bottom];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(NSCollectionLayoutEdgeSpacing *)self leading], v5 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutEdgeSpacing *)v4 leading], v6 = objc_claimAutoreleasedReturnValue(), v7 = __objectEqual(v5, v6), v6, v5, v7) && ([(NSCollectionLayoutEdgeSpacing *)self top], v8 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutEdgeSpacing *)v4 top], v9 = objc_claimAutoreleasedReturnValue(), v10 = __objectEqual(v8, v9), v9, v8, v10) && ([(NSCollectionLayoutEdgeSpacing *)self bottom], v11 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutEdgeSpacing *)v4 bottom], v12 = objc_claimAutoreleasedReturnValue(), v13 = __objectEqual(v11, v12), v12, v11, v13))
    {
      v14 = [(NSCollectionLayoutEdgeSpacing *)self trailing];
      v15 = [(NSCollectionLayoutEdgeSpacing *)v4 trailing];
      v16 = __objectEqual(v14, v15);
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)_spacingForEdge:(unint64_t)a3
{
  v4 = a3 - 1;
  if (a3 - 1 <= 7 && ((0x8Bu >> v4) & 1) != 0)
  {
    v5 = *(&self->super.isa + qword_243BB23F8[v4]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end