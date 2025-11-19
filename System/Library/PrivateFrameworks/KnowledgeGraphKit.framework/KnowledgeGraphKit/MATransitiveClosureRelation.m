@interface MATransitiveClosureRelation
+ (id)scanRelationWithScanner:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MATransitiveClosureRelation)initWithBase:(id)a3;
- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4;
- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4;
- (id)inverse;
- (id)visualString;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5;
@end

@implementation MATransitiveClosureRelation

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
      v8 = [(MATransitiveClosureRelation *)v4 base];
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

  [v3 appendString:@"}*"];

  return v3;
}

- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4
{
  v6 = a4;
  v7 = [(MARelation *)self->_base adjacencyByJoiningWithAdjacency:a3 graph:v6];
  v8 = [(MARelation *)self->_base optionalStep];
  v9 = [v8 adjacencyByJoiningWithAdjacency:v7 graph:v6];
  if ([v7 isEqual:v9])
  {
    v10 = v7;
  }

  else
  {
    do
    {
      v10 = v9;

      v9 = [v8 adjacencyByJoiningWithAdjacency:v10 graph:v6];

      v7 = v10;
    }

    while (![v10 isEqual:v9]);
  }

  return v10;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4
{
  v6 = a4;
  v7 = [(MARelation *)self->_base adjacencyWithStartNodeIdentifiers:a3 graph:v6];
  v8 = [(MARelation *)self->_base optionalStep];
  v9 = [v8 adjacencyByJoiningWithAdjacency:v7 graph:v6];
  if ([v7 isEqual:v9])
  {
    v10 = v7;
  }

  else
  {
    do
    {
      v10 = v9;

      v9 = [v8 adjacencyByJoiningWithAdjacency:v10 graph:v6];

      v7 = v10;
    }

    while (![v10 isEqual:v9]);
  }

  return v10;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(KGMutableElementIdentifierSet);
  v16 = v8;
  v12 = v16;
  while (![(KGElementIdentifierSet *)v12 isEmpty])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = objc_alloc_init(KGMutableElementIdentifierSet);
    [(MARelation *)self->_base unionAdjacencySetFromSourceNodeIdentifiers:v12 toTargetNodeIdentifiers:v14 graph:v10];
    [(KGMutableElementIdentifierSet *)v14 subtractIdentifierSet:v11];
    [(KGMutableElementIdentifierSet *)v11 unionWithIdentifierSet:v14];

    v15 = [(MARelation *)self->_base isTransitive];
    objc_autoreleasePoolPop(v13);
    v12 = v14;
    if (v15)
    {
      goto LABEL_6;
    }
  }

  v14 = v12;
LABEL_6:
  [v9 unionWithIdentifierSet:v11];
}

- (id)inverse
{
  v3 = [MATransitiveClosureRelation alloc];
  v4 = [(MARelation *)self->_base inverse];
  v5 = [(MATransitiveClosureRelation *)v3 initWithBase:v4];

  return v5;
}

- (MATransitiveClosureRelation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MATransitiveClosureRelation;
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
    if (v5 && ([v3 scanString:@"}*" intoString:0] & 1) != 0 && !objc_msgSend(v3, "scanInteger:", 0))
    {
      v6 = [[MATransitiveClosureRelation alloc] initWithBase:v5];
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