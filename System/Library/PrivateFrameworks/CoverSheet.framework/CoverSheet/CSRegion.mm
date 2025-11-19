@interface CSRegion
+ (id)regionForCoordinateSpace:(id)a3;
+ (id)regionForCoordinateSpace:(id)a3 withExtent:(CGRect)a4;
- (BOOL)intersectsCoordinateSpace:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4;
- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4;
- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4;
- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4;
- (CGRect)extent;
- (CSRegion)initWithCoordinateSpace:(id)a3 withExtent:(CGRect)a4 role:(int64_t)a5;
- (NSString)description;
- (UICoordinateSpace)coordinateSpace;
- (UICoordinateSpace)identity;
- (id)copyWithZone:(_NSZone *)a3;
- (id)provider;
- (id)regionForCoordinateSpace:(id)a3;
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

+ (id)regionForCoordinateSpace:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 alloc];
    [v4 bounds];
    v6 = [v5 initWithCoordinateSpace:v4 withExtent:0 role:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)regionForCoordinateSpace:(id)a3 withExtent:(CGRect)a4
{
  if (a3)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v9 = a3;
    v10 = [[a1 alloc] initWithCoordinateSpace:v9 withExtent:0 role:{x, y, width, height}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CSRegion)initWithCoordinateSpace:(id)a3 withExtent:(CGRect)a4 role:(int64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v19.receiver = self;
  v19.super_class = CSRegion;
  v12 = [(CSRegion *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_role = a5;
    v14 = objc_storeWeak(&v12->_identity, v11);
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

    v16 = [MEMORY[0x277CF0C00] descriptionForObject:v11];
    identifier = v13->_identifier;
    v13->_identifier = v16;
  }

  return v13;
}

- (id)regionForCoordinateSpace:(id)a3
{
  v4 = a3;
  v5 = [(CSRegion *)self coordinateSpace];

  if (v5 == v4)
  {
    v19 = self;
  }

  else
  {
    [(CSRegion *)self extent];
    [(CSRegion *)self convertRect:v4 toCoordinateSpace:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(CSRegion *)self identifier];
    v15 = [(CSRegion *)self identity];
    v16 = [(CSRegion *)self provider];
    v17 = [(CSRegion *)self isReservedForHorizontalScrolling];
    v18 = [(CSRegion *)self role];
    v19 = [CSRegion regionForCoordinateSpace:v4 withExtent:v7, v9, v11, v13];
    [(CSRegion *)v19 setRole:v18];
    [(CSRegion *)v19 setIdentifier:v14];
    [(CSRegion *)v19 setIdentity:v15];
    [(CSRegion *)v19 setProvider:v16];
    [(CSRegion *)v19 setReservedForHorizontalScrolling:v17];
  }

  return v19;
}

- (BOOL)intersectsCoordinateSpace:(id)a3
{
  v4 = a3;
  if ([(CSRegion *)self isHidden]|| ([(CSRegion *)self identity], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == v4) || CGRectIsNull(self->_extent))
  {
    v6 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277D759A0] mainScreen];
    v9 = [v8 fixedCoordinateSpace];

    [v4 bounds];
    [v9 convertRect:v4 fromCoordinateSpace:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
    [v9 convertRect:WeakRetained fromCoordinateSpace:{self->_extent.origin.x, self->_extent.origin.y, self->_extent.size.width, self->_extent.size.height}];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CSRegion alloc];
  v5 = [(CSRegion *)self coordinateSpace];
  [(CSRegion *)self extent];
  v10 = [(CSRegion *)v4 initWithCoordinateSpace:v5 withExtent:[(CSRegion *)self role] role:v6, v7, v8, v9];

  v11 = [(CSRegion *)self identifier];
  [(CSRegion *)v10 setIdentifier:v11];

  v12 = [(CSRegion *)self identity];
  [(CSRegion *)v10 setIdentity:v12];

  [(CSRegion *)v10 setReservedForHorizontalScrolling:[(CSRegion *)self isReservedForHorizontalScrolling]];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else if (-[CSRegion isMemberOfClass:](v4, "isMemberOfClass:", objc_opt_class()) && (role = self->_role, role == -[CSRegion role](v4, "role")) && (hidden = self->_hidden, hidden == -[CSRegion isHidden](v4, "isHidden")) && (-[CSRegion extent](v4, "extent"), BSRectEqualToRect()) && (reservedForHorizontalScrolling = self->_reservedForHorizontalScrolling, reservedForHorizontalScrolling == -[CSRegion isReservedForHorizontalScrolling](v4, "isReservedForHorizontalScrolling")) && (identifier = self->_identifier, -[CSRegion identifier](v4, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), LODWORD(identifier) = -[NSString isEqualToString:](identifier, "isEqualToString:", v9), v9, identifier) && (v10 = objc_loadWeakRetained(&self->_coordinateSpace), -[CSRegion coordinateSpace](v4, "coordinateSpace"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v10 isEqual:v11], v11, v10, v12))
  {
    WeakRetained = objc_loadWeakRetained(&self->_identity);
    v14 = [(CSRegion *)v4 identity];
    v15 = [WeakRetained isEqual:v14];
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
  v12 = [v4 build];

  return v12;
}

- (CGPoint)convertPoint:(CGPoint)a3 toCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertPoint:v7 toCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)a3 fromCoordinateSpace:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertPoint:v7 fromCoordinateSpace:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGRect)convertRect:(CGRect)a3 toCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertRect:v9 toCoordinateSpace:{x, y, width, height}];
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

- (CGRect)convertRect:(CGRect)a3 fromCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  [WeakRetained convertRect:v9 fromCoordinateSpace:{x, y, width, height}];
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