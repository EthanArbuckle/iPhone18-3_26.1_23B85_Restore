@interface NSCollectionLayoutEdgeSpacing
+ (NSCollectionLayoutEdgeSpacing)spacingForLeading:(NSCollectionLayoutSpacing *)leading top:(NSCollectionLayoutSpacing *)top trailing:(NSCollectionLayoutSpacing *)trailing bottom:(NSCollectionLayoutSpacing *)bottom;
+ (id)defaultSpacing;
+ (id)fixedSpacing:(double)spacing;
+ (id)flexibleSpacing:(double)spacing;
- (BOOL)_hasSpacing;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSpacingFixedForEdge:(unint64_t)edge;
- (BOOL)isSpacingFlexibleForEdge:(unint64_t)edge;
- (CVCDirectionalEdgeInsets)edgeOutsets;
- (NSCollectionLayoutEdgeSpacing)initWithLeading:(id)leading top:(id)top trailing:(id)trailing bottom:(id)bottom;
- (double)spacingForEdge:(unint64_t)edge;
- (id)_externalDescription;
- (id)_spacingForEdge:(unint64_t)edge;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NSCollectionLayoutEdgeSpacing

+ (id)defaultSpacing
{
  v3 = [NSCollectionLayoutSpacing fixedSpacing:0.0];
  v4 = [[self alloc] initWithLeading:v3 top:v3 trailing:v3 bottom:v3];

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

- (NSCollectionLayoutEdgeSpacing)initWithLeading:(id)leading top:(id)top trailing:(id)trailing bottom:(id)bottom
{
  leadingCopy = leading;
  topCopy = top;
  trailingCopy = trailing;
  bottomCopy = bottom;
  v18.receiver = self;
  v18.super_class = NSCollectionLayoutEdgeSpacing;
  v15 = [(NSCollectionLayoutEdgeSpacing *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_leading, leading);
    objc_storeStrong(&v16->_top, top);
    objc_storeStrong(&v16->_trailing, trailing);
    objc_storeStrong(&v16->_bottom, bottom);
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
    _externalDescription = [(NSCollectionLayoutSpacing *)self->_leading _externalDescription];
    _externalDescription2 = [(NSCollectionLayoutSpacing *)self->_top _externalDescription];
    _externalDescription3 = [(NSCollectionLayoutSpacing *)self->_trailing _externalDescription];
    _externalDescription4 = [(NSCollectionLayoutSpacing *)self->_bottom _externalDescription];
    v7 = [v8 stringWithFormat:@"<leading=%@ top=%@; trailing=%@; bottom=%@>", _externalDescription, _externalDescription2, _externalDescription3, _externalDescription4];;
  }

  return v7;
}

+ (id)flexibleSpacing:(double)spacing
{
  v4 = [NSCollectionLayoutSpacing flexibleSpacing:spacing];
  v5 = [[self alloc] initWithLeading:v4 top:v4 trailing:v4 bottom:v4];

  return v5;
}

+ (id)fixedSpacing:(double)spacing
{
  v4 = [NSCollectionLayoutSpacing fixedSpacing:spacing];
  v5 = [[self alloc] initWithLeading:v4 top:v4 trailing:v4 bottom:v4];

  return v5;
}

+ (NSCollectionLayoutEdgeSpacing)spacingForLeading:(NSCollectionLayoutSpacing *)leading top:(NSCollectionLayoutSpacing *)top trailing:(NSCollectionLayoutSpacing *)trailing bottom:(NSCollectionLayoutSpacing *)bottom
{
  v10 = bottom;
  v11 = trailing;
  v12 = top;
  v13 = leading;
  v14 = [[self alloc] initWithLeading:v13 top:v12 trailing:v11 bottom:v10];

  return v14;
}

- (BOOL)isSpacingFixedForEdge:(unint64_t)edge
{
  v3 = [(NSCollectionLayoutEdgeSpacing *)self _spacingForEdge:edge];
  isFixedSpacing = [v3 isFixedSpacing];

  return isFixedSpacing;
}

- (BOOL)isSpacingFlexibleForEdge:(unint64_t)edge
{
  v3 = [(NSCollectionLayoutEdgeSpacing *)self _spacingForEdge:edge];
  isFlexibleSpacing = [v3 isFlexibleSpacing];

  return isFlexibleSpacing;
}

- (double)spacingForEdge:(unint64_t)edge
{
  v3 = [(NSCollectionLayoutEdgeSpacing *)self _spacingForEdge:edge];
  [v3 spacing];
  v5 = v4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  leading = self->_leading;
  top = self->_top;
  trailing = self->_trailing;
  bottom = self->_bottom;

  return [v4 initWithLeading:leading top:top trailing:trailing bottom:bottom];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(NSCollectionLayoutEdgeSpacing *)self leading], v5 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutEdgeSpacing *)equalCopy leading], v6 = objc_claimAutoreleasedReturnValue(), v7 = __objectEqual(v5, v6), v6, v5, v7) && ([(NSCollectionLayoutEdgeSpacing *)self top], v8 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutEdgeSpacing *)equalCopy top], v9 = objc_claimAutoreleasedReturnValue(), v10 = __objectEqual(v8, v9), v9, v8, v10) && ([(NSCollectionLayoutEdgeSpacing *)self bottom], v11 = objc_claimAutoreleasedReturnValue(), [(NSCollectionLayoutEdgeSpacing *)equalCopy bottom], v12 = objc_claimAutoreleasedReturnValue(), v13 = __objectEqual(v11, v12), v12, v11, v13))
    {
      trailing = [(NSCollectionLayoutEdgeSpacing *)self trailing];
      trailing2 = [(NSCollectionLayoutEdgeSpacing *)equalCopy trailing];
      v16 = __objectEqual(trailing, trailing2);
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)_spacingForEdge:(unint64_t)edge
{
  v4 = edge - 1;
  if (edge - 1 <= 7 && ((0x8Bu >> v4) & 1) != 0)
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