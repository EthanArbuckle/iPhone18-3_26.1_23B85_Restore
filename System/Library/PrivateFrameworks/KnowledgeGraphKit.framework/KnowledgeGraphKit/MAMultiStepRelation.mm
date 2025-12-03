@interface MAMultiStepRelation
+ (id)scanRelationWithScanner:(id)scanner;
- (BOOL)isEqual:(id)equal;
- (MAMultiStepRelation)initWithBase:(id)base minNumberOfSteps:(unint64_t)steps maxNumberOfSteps:(unint64_t)ofSteps;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph;
- (id)inverse;
- (id)visualString;
- (unint64_t)hash;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph;
@end

@implementation MAMultiStepRelation

- (unint64_t)hash
{
  v3 = [(MARelation *)self->_base hash];
  v4 = (self->_minNumberOfSteps + ((v3 + 2654435769) << 6) + ((v3 + 2654435769) >> 2) + 2654435769u) ^ (v3 + 2654435769);
  return (self->_maxNumberOfSteps + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      minNumberOfSteps = self->_minNumberOfSteps;
      if (minNumberOfSteps == [(MAMultiStepRelation *)v5 minNumberOfSteps]&& (maxNumberOfSteps = self->_maxNumberOfSteps, maxNumberOfSteps == [(MAMultiStepRelation *)v5 maxNumberOfSteps]))
      {
        base = self->_base;
        base = [(MAMultiStepRelation *)v5 base];
        v10 = [(MARelation *)base isEqual:base];
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
  visualString = [(MARelation *)self->_base visualString];
  [v3 appendString:visualString];

  [v3 appendString:@"}*"];
  [v3 appendFormat:@"%lu", self->_minNumberOfSteps];
  if (self->_minNumberOfSteps != self->_maxNumberOfSteps)
  {
    [v3 appendFormat:@"..%lu", self->_maxNumberOfSteps];
  }

  return v3;
}

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph
{
  adjacencyCopy = adjacency;
  graphCopy = graph;
  v8 = adjacencyCopy;
  v9 = v8;
  v10 = 0;
  if (self->_minNumberOfSteps)
  {
    v11 = v8;
    do
    {
      v12 = [(MARelation *)self->_base adjacencyByJoiningWithAdjacency:v11 graph:graphCopy];

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
    v14 = [(MARelation *)self->_base adjacencyByJoiningWithAdjacency:i graph:graphCopy];
    [i formUnionWith:v14];
  }

  return i;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph
{
  graphCopy = graph;
  v7 = [KGDirectedBinaryAdjacency identityWith:identifiers];
  v8 = [(MAMultiStepRelation *)self adjacencyByJoiningWithAdjacency:v7 graph:graphCopy];

  return v8;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph
{
  identifiersCopy = identifiers;
  nodeIdentifiersCopy = nodeIdentifiers;
  graphCopy = graph;
  v11 = identifiersCopy;
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
      [(MARelation *)self->_base unionAdjacencySetFromSourceNodeIdentifiers:v14 toTargetNodeIdentifiers:v13 graph:graphCopy];

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

  [nodeIdentifiersCopy unionWithIdentifierSet:v13];
  if (v18 <= self->_maxNumberOfSteps)
  {
    do
    {
      v20 = objc_autoreleasePoolPush();
      v21 = objc_alloc_init(KGMutableElementIdentifierSet);
      [(MARelation *)self->_base unionAdjacencySetFromSourceNodeIdentifiers:v13 toTargetNodeIdentifiers:v21 graph:graphCopy];
      v19 = v21;

      [nodeIdentifiersCopy unionWithIdentifierSet:v19];
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
  inverse = [(MARelation *)self->_base inverse];
  v5 = [(MAMultiStepRelation *)v3 initWithBase:inverse minNumberOfSteps:self->_minNumberOfSteps maxNumberOfSteps:self->_maxNumberOfSteps];

  return v5;
}

- (MAMultiStepRelation)initWithBase:(id)base minNumberOfSteps:(unint64_t)steps maxNumberOfSteps:(unint64_t)ofSteps
{
  baseCopy = base;
  v13.receiver = self;
  v13.super_class = MAMultiStepRelation;
  initForSubclassing = [(MARelation *)&v13 initForSubclassing];
  v11 = initForSubclassing;
  if (initForSubclassing)
  {
    objc_storeStrong(initForSubclassing + 1, base);
    v11->_minNumberOfSteps = steps;
    v11->_maxNumberOfSteps = ofSteps;
  }

  return v11;
}

+ (id)scanRelationWithScanner:(id)scanner
{
  scannerCopy = scanner;
  scanLocation = [scannerCopy scanLocation];
  if ([scannerCopy scanString:@"-{" intoString:0])
  {
    v5 = [MARelation scanRelationWithScanner:scannerCopy];
    if (v5 && ([scannerCopy scanString:@"}*" intoString:0] & 1) != 0 && (v10 = 0, (objc_msgSend(scannerCopy, "scanInteger:", &v10) & 1) != 0))
    {
      v9 = v10;
      if ([scannerCopy scanString:@".." intoString:0] && (objc_msgSend(scannerCopy, "scanInteger:", &v9) & 1) == 0)
      {
        [scannerCopy setScanLocation:scanLocation];
      }

      v6 = [MAMultiStepRelation alloc];
      v7 = [(MAMultiStepRelation *)v6 initWithBase:v5 minNumberOfSteps:v10 maxNumberOfSteps:v9];
    }

    else
    {
      [scannerCopy setScanLocation:scanLocation];
      v7 = 0;
    }
  }

  else
  {
    [scannerCopy setScanLocation:scanLocation];
    v7 = 0;
  }

  return v7;
}

@end