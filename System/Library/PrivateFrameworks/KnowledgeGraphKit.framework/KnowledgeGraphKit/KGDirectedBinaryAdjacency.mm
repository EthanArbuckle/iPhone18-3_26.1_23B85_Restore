@interface KGDirectedBinaryAdjacency
+ (id)identityWith:(id)with;
- (BOOL)isEqual:(id)equal;
- (KGDirectedBinaryAdjacency)init;
- (KGDirectedBinaryAdjacency)initWithUnderlyingObject:(id)object;
- (id)differenceWith:(id)with;
- (id)intersectingSourcesWith:(id)with;
- (id)intersectingTargetsWith:(id)with;
- (id)joinOnTargetsOfAdjacency:(id)adjacency;
- (id)mutableCopy;
- (id)subtractingSourcesWith:(id)with;
- (id)subtractingTargetsWith:(id)with;
- (id)transposed;
- (id)unionWith:(id)with;
@end

@implementation KGDirectedBinaryAdjacency

- (id)mutableCopy
{
  v3 = objc_alloc_init(KGMutableDirectedBinaryAdjacency);
  v4 = [(KGWrapperDirectedBinaryAdjacency *)self->_underlyingObject mutableCopy];
  underlyingObject = v3->super._underlyingObject;
  v3->super._underlyingObject = v4;

  return v3;
}

+ (id)identityWith:(id)with
{
  v3 = [_TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency identityWith:with];
  v4 = [[KGDirectedBinaryAdjacency alloc] initWithUnderlyingObject:v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(KGWrapperDirectedBinaryAdjacency *)self->_underlyingObject isEqual:equalCopy[1]];

  return v5;
}

- (id)unionWith:(id)with
{
  v3 = [(KGWrapperDirectedBinaryAdjacency *)self->_underlyingObject unionWith:*(with + 1)];
  v4 = [[KGDirectedBinaryAdjacency alloc] initWithUnderlyingObject:v3];

  return v4;
}

- (id)differenceWith:(id)with
{
  v3 = [(KGWrapperDirectedBinaryAdjacency *)self->_underlyingObject differenceWith:*(with + 1)];
  v4 = [[KGDirectedBinaryAdjacency alloc] initWithUnderlyingObject:v3];

  return v4;
}

- (id)transposed
{
  transposed = [(KGWrapperDirectedBinaryAdjacency *)self->_underlyingObject transposed];
  v3 = [[KGDirectedBinaryAdjacency alloc] initWithUnderlyingObject:transposed];

  return v3;
}

- (id)joinOnTargetsOfAdjacency:(id)adjacency
{
  v3 = [(KGWrapperDirectedBinaryAdjacency *)self->_underlyingObject joinOnTargetsOfAdjacency:*(adjacency + 1)];
  v4 = [[KGDirectedBinaryAdjacency alloc] initWithUnderlyingObject:v3];

  return v4;
}

- (id)subtractingSourcesWith:(id)with
{
  v3 = [(KGWrapperDirectedBinaryAdjacency *)self->_underlyingObject subtractingSourcesWith:with];
  v4 = [[KGDirectedBinaryAdjacency alloc] initWithUnderlyingObject:v3];
  underlyingObject = v4->_underlyingObject;
  v4->_underlyingObject = v3;

  return v4;
}

- (id)subtractingTargetsWith:(id)with
{
  v3 = [(KGWrapperDirectedBinaryAdjacency *)self->_underlyingObject subtractingTargetsWith:with];
  v4 = [[KGDirectedBinaryAdjacency alloc] initWithUnderlyingObject:v3];
  underlyingObject = v4->_underlyingObject;
  v4->_underlyingObject = v3;

  return v4;
}

- (id)intersectingSourcesWith:(id)with
{
  v3 = [(KGWrapperDirectedBinaryAdjacency *)self->_underlyingObject intersectingSourcesWith:with];
  v4 = [[KGDirectedBinaryAdjacency alloc] initWithUnderlyingObject:v3];

  return v4;
}

- (id)intersectingTargetsWith:(id)with
{
  v3 = [(KGWrapperDirectedBinaryAdjacency *)self->_underlyingObject intersectingTargetsWith:with];
  v4 = [[KGDirectedBinaryAdjacency alloc] initWithUnderlyingObject:v3];

  return v4;
}

- (KGDirectedBinaryAdjacency)initWithUnderlyingObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = KGDirectedBinaryAdjacency;
  v6 = [(KGDirectedBinaryAdjacency *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingObject, object);
  }

  return v7;
}

- (KGDirectedBinaryAdjacency)init
{
  v6.receiver = self;
  v6.super_class = KGDirectedBinaryAdjacency;
  v2 = [(KGDirectedBinaryAdjacency *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC17KnowledgeGraphKit32KGWrapperDirectedBinaryAdjacency);
    underlyingObject = v2->_underlyingObject;
    v2->_underlyingObject = v3;
  }

  return v2;
}

@end