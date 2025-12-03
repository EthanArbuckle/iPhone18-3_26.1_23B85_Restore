@interface MAExcludeSourceRelation
+ (id)scanRelationWithScanner:(id)scanner;
- (BOOL)isEqual:(id)equal;
- (MAExcludeSourceRelation)initWithBase:(id)base;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph;
- (id)inverse;
- (id)visualString;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph;
@end

@implementation MAExcludeSourceRelation

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
      base = [(MAExcludeSourceRelation *)equalCopy base];
      v6 = [(MARelation *)base isEqual:base];
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
  visualString = [(MARelation *)self->_base visualString];
  [v3 appendString:visualString];

  [v3 appendString:@"}!"];

  return v3;
}

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph
{
  base = self->_base;
  adjacencyCopy = adjacency;
  v7 = [(MARelation *)base adjacencyByJoiningWithAdjacency:adjacencyCopy graph:graph];
  v8 = [v7 differenceWith:adjacencyCopy];

  return v8;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph
{
  base = self->_base;
  identifiersCopy = identifiers;
  v7 = [(MARelation *)base adjacencyWithStartNodeIdentifiers:identifiersCopy graph:graph];
  v8 = [KGDirectedBinaryAdjacency identityWith:identifiersCopy];

  v9 = [v7 differenceWith:v8];

  return v9;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph
{
  graphCopy = graph;
  nodeIdentifiersCopy = nodeIdentifiers;
  identifiersCopy = identifiers;
  v11 = objc_alloc_init(KGMutableElementIdentifierSet);
  [(MARelation *)self->_base unionAdjacencySetFromSourceNodeIdentifiers:identifiersCopy toTargetNodeIdentifiers:v11 graph:graphCopy];

  [(KGMutableElementIdentifierSet *)v11 subtractIdentifierSet:identifiersCopy];
  [nodeIdentifiersCopy unionWithIdentifierSet:v11];
}

- (id)inverse
{
  inverse = [(MARelation *)self->_base inverse];
  excludeSource = [inverse excludeSource];

  return excludeSource;
}

- (MAExcludeSourceRelation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = MAExcludeSourceRelation;
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
    if (v5 && ([scannerCopy scanString:@"}!" intoString:0] & 1) != 0)
    {
      v6 = [[MAExcludeSourceRelation alloc] initWithBase:v5];
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