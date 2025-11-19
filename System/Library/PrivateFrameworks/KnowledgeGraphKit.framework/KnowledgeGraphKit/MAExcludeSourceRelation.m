@interface MAExcludeSourceRelation
+ (id)scanRelationWithScanner:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MAExcludeSourceRelation)initWithBase:(id)a3;
- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4;
- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4;
- (id)inverse;
- (id)visualString;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5;
@end

@implementation MAExcludeSourceRelation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      base = self->_base;
      v8 = [(MAExcludeSourceRelation *)v4 base];
      v6 = [(MARelation *)base isEqual:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)visualString
{
  v3 = [@"-{" mutableCopy];
  v4 = [(MARelation *)self->_base visualString];
  [v3 appendString:v4];

  [v3 appendString:@"}!"];

  return v3;
}

- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4
{
  base = self->_base;
  v6 = a3;
  v7 = [(MARelation *)base adjacencyByJoiningWithAdjacency:v6 graph:a4];
  v8 = [v7 differenceWith:v6];

  return v8;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4
{
  base = self->_base;
  v6 = a3;
  v7 = [(MARelation *)base adjacencyWithStartNodeIdentifiers:v6 graph:a4];
  v8 = [KGDirectedBinaryAdjacency identityWith:v6];

  v9 = [v7 differenceWith:v8];

  return v9;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(KGMutableElementIdentifierSet);
  [(MARelation *)self->_base unionAdjacencySetFromSourceNodeIdentifiers:v10 toTargetNodeIdentifiers:v11 graph:v8];

  [(KGMutableElementIdentifierSet *)v11 subtractIdentifierSet:v10];
  [v9 unionWithIdentifierSet:v11];
}

- (id)inverse
{
  v2 = [(MARelation *)self->_base inverse];
  v3 = [v2 excludeSource];

  return v3;
}

- (MAExcludeSourceRelation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MAExcludeSourceRelation;
  v6 = [(MARelation *)&v9 initForSubclassing];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

+ (id)scanRelationWithScanner:(id)a3
{
  v3 = a3;
  v4 = [v3 scanLocation];
  if ([v3 scanString:@"-{" intoString:0])
  {
    v5 = [MARelation scanRelationWithScanner:v3];
    if (v5 && ([v3 scanString:@"}!" intoString:0] & 1) != 0)
    {
      v6 = [[MAExcludeSourceRelation alloc] initWithBase:v5];
    }

    else
    {
      [v3 setScanLocation:v4];
      v6 = 0;
    }
  }

  else
  {
    [v3 setScanLocation:v4];
    v6 = 0;
  }

  return v6;
}

@end