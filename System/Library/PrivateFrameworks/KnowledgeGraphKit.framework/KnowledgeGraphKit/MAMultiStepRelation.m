@interface MAMultiStepRelation
+ (id)scanRelationWithScanner:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MAMultiStepRelation)initWithBase:(id)a3 minNumberOfSteps:(unint64_t)a4 maxNumberOfSteps:(unint64_t)a5;
- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4;
- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4;
- (id)inverse;
- (id)visualString;
- (unint64_t)hash;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5;
@end

@implementation MAMultiStepRelation

- (unint64_t)hash
{
  v3 = [(MARelation *)self->_base hash];
  v4 = (self->_minNumberOfSteps + ((v3 + 2654435769) << 6) + ((v3 + 2654435769) >> 2) + 2654435769u) ^ (v3 + 2654435769);
  return (self->_maxNumberOfSteps + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      minNumberOfSteps = self->_minNumberOfSteps;
      if (minNumberOfSteps == [(MAMultiStepRelation *)v5 minNumberOfSteps]&& (maxNumberOfSteps = self->_maxNumberOfSteps, maxNumberOfSteps == [(MAMultiStepRelation *)v5 maxNumberOfSteps]))
      {
        base = self->_base;
        v9 = [(MAMultiStepRelation *)v5 base];
        v10 = [(MARelation *)base isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)visualString
{
  v3 = [@"-{" mutableCopy];
  v4 = [(MARelation *)self->_base visualString];
  [v3 appendString:v4];

  [v3 appendString:@"}*"];
  [v3 appendFormat:@"%lu", self->_minNumberOfSteps];
  if (self->_minNumberOfSteps != self->_maxNumberOfSteps)
  {
    [v3 appendFormat:@"..%lu", self->_maxNumberOfSteps];
  }

  return v3;
}

- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  v10 = 0;
  if (self->_minNumberOfSteps)
  {
    v11 = v8;
    do
    {
      v12 = [(MARelation *)self->_base adjacencyByJoiningWithAdjacency:v11 graph:v7];

      ++v10;
      v11 = v12;
    }

    while (v10 < self->_minNumberOfSteps);
  }

  else
  {
    v12 = v8;
  }

  for (i = [v12 mutableCopy]; v10 < self->_maxNumberOfSteps; ++v10)
  {
    v14 = [(MARelation *)self->_base adjacencyByJoiningWithAdjacency:i graph:v7];
    [i formUnionWith:v14];
  }

  return i;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4
{
  v6 = a4;
  v7 = [KGDirectedBinaryAdjacency identityWith:a3];
  v8 = [(MAMultiStepRelation *)self adjacencyByJoiningWithAdjacency:v7 graph:v6];

  return v8;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v22 = v11;
  if (self->_minNumberOfSteps)
  {
    v12 = -1;
    v13 = v11;
    do
    {
      v14 = v13;
      v15 = objc_autoreleasePoolPush();
      v13 = objc_alloc_init(KGMutableElementIdentifierSet);
      [(MARelation *)self->_base unionAdjacencySetFromSourceNodeIdentifiers:v14 toTargetNodeIdentifiers:v13 graph:v10];

      objc_autoreleasePoolPop(v15);
      v16 = v12 + 1;
      v17 = v12 + 2;
      ++v12;
    }

    while (v17 < self->_minNumberOfSteps);
    v18 = v16 + 2;
  }

  else
  {
    v18 = 1;
    v13 = v11;
  }

  [v9 unionWithIdentifierSet:v13];
  if (v18 <= self->_maxNumberOfSteps)
  {
    do
    {
      v20 = objc_autoreleasePoolPush();
      v21 = objc_alloc_init(KGMutableElementIdentifierSet);
      [(MARelation *)self->_base unionAdjacencySetFromSourceNodeIdentifiers:v13 toTargetNodeIdentifiers:v21 graph:v10];
      v19 = v21;

      [v9 unionWithIdentifierSet:v19];
      objc_autoreleasePoolPop(v20);
      ++v18;
      v13 = v19;
    }

    while (v18 <= self->_maxNumberOfSteps);
  }

  else
  {
    v19 = v13;
  }
}

- (id)inverse
{
  v3 = [MAMultiStepRelation alloc];
  v4 = [(MARelation *)self->_base inverse];
  v5 = [(MAMultiStepRelation *)v3 initWithBase:v4 minNumberOfSteps:self->_minNumberOfSteps maxNumberOfSteps:self->_maxNumberOfSteps];

  return v5;
}

- (MAMultiStepRelation)initWithBase:(id)a3 minNumberOfSteps:(unint64_t)a4 maxNumberOfSteps:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = MAMultiStepRelation;
  v10 = [(MARelation *)&v13 initForSubclassing];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(v10 + 1, a3);
    v11->_minNumberOfSteps = a4;
    v11->_maxNumberOfSteps = a5;
  }

  return v11;
}

+ (id)scanRelationWithScanner:(id)a3
{
  v3 = a3;
  v4 = [v3 scanLocation];
  if ([v3 scanString:@"-{" intoString:0])
  {
    v5 = [MARelation scanRelationWithScanner:v3];
    if (v5 && ([v3 scanString:@"}*" intoString:0] & 1) != 0 && (v10 = 0, (objc_msgSend(v3, "scanInteger:", &v10) & 1) != 0))
    {
      v9 = v10;
      if ([v3 scanString:@".." intoString:0] && (objc_msgSend(v3, "scanInteger:", &v9) & 1) == 0)
      {
        [v3 setScanLocation:v4];
      }

      v6 = [MAMultiStepRelation alloc];
      v7 = [(MAMultiStepRelation *)v6 initWithBase:v5 minNumberOfSteps:v10 maxNumberOfSteps:v9];
    }

    else
    {
      [v3 setScanLocation:v4];
      v7 = 0;
    }
  }

  else
  {
    [v3 setScanLocation:v4];
    v7 = 0;
  }

  return v7;
}

@end