@interface MAOptionalStepRelation
+ (id)scanRelationWithScanner:(id)scanner;
- (BOOL)isEqual:(id)equal;
- (MAOptionalStepRelation)initWithBase:(id)base;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph;
- (id)inverse;
- (id)transitiveClosure;
- (id)visualString;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph;
@end

@implementation MAOptionalStepRelation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      base = self->_base;
      base = [(MAOptionalStepRelation *)equalCopy base];
      v6 = [(MARelation *)base isEqual:base];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)transitiveClosure
{
  transitiveClosure = [(MARelation *)self->_base transitiveClosure];
  optionalStep = [transitiveClosure optionalStep];

  return optionalStep;
}

- (id)visualString
{
  v3 = [@"-{" mutableCopy];
  visualString = [(MARelation *)self->_base visualString];
  [v3 appendString:visualString];

  [v3 appendString:@"}?"];

  return v3;
}

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph
{
  base = self->_base;
  adjacencyCopy = adjacency;
  v7 = [(MARelation *)base adjacencyByJoiningWithAdjacency:adjacencyCopy graph:graph];
  v8 = [v7 mutableCopy];

  [v8 formUnionWith:adjacencyCopy];

  return v8;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph
{
  base = self->_base;
  identifiersCopy = identifiers;
  v7 = [(MARelation *)base adjacencyWithStartNodeIdentifiers:identifiersCopy graph:graph];
  v8 = [v7 mutableCopy];

  v9 = [KGDirectedBinaryAdjacency identityWith:identifiersCopy];

  [v8 formUnionWith:v9];

  return v8;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph
{
  graphCopy = graph;
  nodeIdentifiersCopy = nodeIdentifiers;
  identifiersCopy = identifiers;
  [nodeIdentifiersCopy unionWithIdentifierSet:identifiersCopy];
  [(MARelation *)self->_base unionAdjacencySetFromSourceNodeIdentifiers:identifiersCopy toTargetNodeIdentifiers:nodeIdentifiersCopy graph:graphCopy];
}

- (id)inverse
{
  inverse = [(MARelation *)self->_base inverse];
  optionalStep = [inverse optionalStep];

  return optionalStep;
}

- (MAOptionalStepRelation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = MAOptionalStepRelation;
  initForSubclassing = [(MARelation *)&v9 initForSubclassing];
  v7 = initForSubclassing;
  if (initForSubclassing)
  {
    objc_storeStrong(initForSubclassing + 1, base);
  }

  return v7;
}

+ (id)scanRelationWithScanner:(id)scanner
{
  scannerCopy = scanner;
  scanLocation = [scannerCopy scanLocation];
  if ([scannerCopy scanString:@"-{" intoString:0])
  {
    v5 = [MARelation scanRelationWithScanner:scannerCopy];
    if (v5 && ([scannerCopy scanString:@"}?" intoString:0] & 1) != 0)
    {
      v6 = [[MAOptionalStepRelation alloc] initWithBase:v5];
    }

    else
    {
      [scannerCopy setScanLocation:scanLocation];
      v6 = 0;
    }
  }

  else
  {
    [scannerCopy setScanLocation:scanLocation];
    v6 = 0;
  }

  return v6;
}

@end