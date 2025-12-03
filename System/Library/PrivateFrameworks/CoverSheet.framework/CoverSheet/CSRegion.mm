@interface CSRegion
+ (id)regionForCoordinateSpace:(id)space;
+ (id)regionForCoordinateSpace:(id)space withExtent:(CGRect)extent;
- (BOOL)intersectsCoordinateSpace:(id)space;
- (BOOL)isEqual:(id)equal;
- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space;
- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space;
- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space;
- (CGRect)extent;
- (CSRegion)initWithCoordinateSpace:(id)space withExtent:(CGRect)extent role:(int64_t)role;
- (NSString)description;
- (UICoordinateSpace)coordinateSpace;
- (UICoordinateSpace)identity;
- (id)copyWithZone:(_NSZone *)zone;
- (id)provider;
- (id)regionForCoordinateSpace:(id)space;
@end

@implementation CSRegion

- (UICoordinateSpace)coordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);

  return WeakRetained;
}

- (UICoordinateSpace)identity
{
  WeakRetained = objc_loadWeakRetained(&self->_identity);

  return WeakRetained;
}

- (id)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

- (CGRect)extent
{
  x = self->_extent.origin.x;
  y = self->_extent.origin.y;
  width = self->_extent.size.width;
  height = self->_extent.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (id)regionForCoordinateSpace:(id)space
{
  if (space)
  {
    spaceCopy = space;
    v5 = [self alloc];
    [spaceCopy bounds];
    v6 = [v5 initWithCoordinateSpace:spaceCopy withExtent:0 role:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)regionForCoordinateSpace:(id)space withExtent:(CGRect)extent
{
  if (space)
  {
    height = extent.size.height;
    width = extent.size.width;
    y = extent.origin.y;
    x = extent.origin.x;
    spaceCopy = space;
    v10 = [[self alloc] initWithCoordinateSpace:spaceCopy withExtent:0 role:{x, y, width, height}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CSRegion)initWithCoordinateSpace:(id)space withExtent:(CGRect)extent role:(int64_t)role
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  spaceCopy = space;
  v19.receiver = self;
  v19.super_class = CSRegion;
  v12 = [(CSRegion *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_role = role;
    v14 = objc_storeWeak(&v12->_identity, spaceCopy);
    objc_storeWeak(&v13->_coordinateSpace, v14);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (CGRectIsEmpty(v20))
    {
      v15 = *(MEMORY[0x277CBF398] + 16);
      v13->_extent.origin = *MEMORY[0x277CBF398];
      v13->_extent.size = v15;
    }

    else
    {
      v13->_extent.origin.x = x;
      v13->_extent.origin.y = y;
      v13->_extent.size.width = width;
      v13->_extent.size.height = height;
    }

    v16 = [MEMORY[0x277CF0C00] descriptionForObject:spaceCopy];
    identifier = v13->_identifier;
    v13->_identifier = v16;
  }

  return v13;
}

- (id)regionForCoordinateSpace:(id)space
{
  spaceCopy = space;
  coordinateSpace = [(CSRegion *)self coordinateSpace];

  if (coordinateSpace == spaceCopy)
  {
    selfCopy = self;
  }

  else
  {
    [(CSRegion *)self extent];
    [(CSRegion *)self convertRect:spaceCopy toCoordinateSpace:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    identifier = [(CSRegion *)self identifier];
    identity = [(CSRegion *)self identity];
    provider = [(CSRegion *)self provider];
    isReservedForHorizontalScrolling = [(CSRegion *)self isReservedForHorizontalScrolling];
    role = [(CSRegion *)self role];
    selfCopy = [CSRegion regionForCoordinateSpace:spaceCopy withExtent:v7, v9, v11, v13];
    [(CSRegion *)selfCopy setRole:role];
    [(CSRegion *)selfCopy setIdentifier:identifier];
    [(CSRegion *)selfCopy setIdentity:identity];
    [(CSRegion *)selfCopy setProvider:provider];
    [(CSRegion *)selfCopy setReservedForHorizontalScrolling:isReservedForHorizontalScrolling];
  }

  return selfCopy;
}

- (BOOL)intersectsCoordinateSpace:(id)space
{
  spaceCopy = space;
  if ([(CSRegion *)self isHidden]|| ([(CSRegion *)self identity], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == spaceCopy) || CGRectIsNull(self->_extent))
  {
    v6 = 0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];

    [spaceCopy bounds];
    [fixedCoordinateSpace convertRect:spaceCopy fromCoordinateSpace:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
    [fixedCoordinateSpace convertRect:WeakRetained fromCoordinateSpace:{self->_extent.origin.x, self->_extent.origin.y, self->_extent.size.width, self->_extent.size.height}];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v27.origin.x = v20;
    v27.origin.y = v22;
    v27.size.width = v24;
    v27.size.height = v26;
    v28.origin.x = v11;
    v28.origin.y = v13;
    v28.size.width = v15;
    v28.size.height = v17;
    v6 = CGRectIntersectsRect(v27, v28);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CSRegion alloc];
  coordinateSpace = [(CSRegion *)self coordinateSpace];
  [(CSRegion *)self extent];
  v10 = [(CSRegion *)v4 initWithCoordinateSpace:coordinateSpace withExtent:[(CSRegion *)self role] role:v6, v7, v8, v9];

  identifier = [(CSRegion *)self identifier];
  [(CSRegion *)v10 setIdentifier:identifier];

  identity = [(CSRegion *)self identity];
  [(CSRegion *)v10 setIdentity:identity];

  [(CSRegion *)v10 setReservedForHorizontalScrolling:[(CSRegion *)self isReservedForHorizontalScrolling]];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else if (-[CSRegion isMemberOfClass:](equalCopy, "isMemberOfClass:", objc_opt_class()) && (role = self->_role, role == -[CSRegion role](equalCopy, "role")) && (hidden = self->_hidden, hidden == -[CSRegion isHidden](equalCopy, "isHidden")) && (-[CSRegion extent](equalCopy, "extent"), BSRectEqualToRect()) && (reservedForHorizontalScrolling = self->_reservedForHorizontalScrolling, reservedForHorizontalScrolling == -[CSRegion isReservedForHorizontalScrolling](equalCopy, "isReservedForHorizontalScrolling")) && (identifier = self->_identifier, -[CSRegion identifier](equalCopy, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(identifier) = -[NSString isEqualToString:](identifier, "isEqualToString:", v9), v9, identifier) && (v10 = objc_loadWeakRetained(&self->_coordinateSpace), -[CSRegion coordinateSpace](equalCopy, "coordinateSpace"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqual:v11], v11, v10, v12))
  {
    WeakRetained = objc_loadWeakRetained(&self->_identity);
    identity = [(CSRegion *)equalCopy identity];
    v15 = [WeakRetained isEqual:identity];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  role = self->_role;
  if (role > 3)
  {
    v6 = @"(unknown)";
  }

  else
  {
    v6 = off_27838D698[role];
  }

  v7 = [v3 appendObject:v6 withName:@"role"];
  v8 = [v4 appendBool:-[CSRegion isHidden](self withName:"isHidden") ifEqualTo:{@"hidden", 1}];
  if (!CGRectIsEmpty(self->_extent))
  {
    v9 = [v4 appendRect:@"extent" withName:{self->_extent.origin.x, self->_extent.origin.y, self->_extent.size.width, self->_extent.size.height}];
  }

  v10 = [v4 appendBool:-[CSRegion isReservedForHorizontalScrolling](self withName:"isReservedForHorizontalScrolling") ifEqualTo:{@"reservedForHorizontalScrolling", 1}];
  v11 = [v4 appendObject:self->_identifier withName:@"identifier" skipIfNil:1];
  build = [v4 build];

  return build;
}

- (CGPoint)convertPoint:(CGPoint)point toCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertPoint:spaceCopy toCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point fromCoordinateSpace:(id)space
{
  y = point.y;
  x = point.x;
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertPoint:spaceCopy fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)convertRect:(CGRect)rect toCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertRect:spaceCopy toCoordinateSpace:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)convertRect:(CGRect)rect fromCoordinateSpace:(id)space
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  spaceCopy = space;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertRect:spaceCopy fromCoordinateSpace:{x, y, width, height}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

@end