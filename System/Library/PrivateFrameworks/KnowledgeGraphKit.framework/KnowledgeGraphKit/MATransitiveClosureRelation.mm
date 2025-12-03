@interface MATransitiveClosureRelation
+ (id)scanRelationWithScanner:(id)scanner;
- (BOOL)isEqual:(id)equal;
- (MATransitiveClosureRelation)initWithBase:(id)base;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph;
- (id)inverse;
- (id)visualString;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph;
@end

@implementation MATransitiveClosureRelation

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
      base = [(MATransitiveClosureRelation *)equalCopy base];
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

  [v3 appendString:@"}*"];

  return v3;
}

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph
{
  graphCopy = graph;
  v7 = [(MARelation *)self->_base adjacencyByJoiningWithAdjacency:adjacency graph:graphCopy];
  optionalStep = [(MARelation *)self->_base optionalStep];
  v9 = [optionalStep adjacencyByJoiningWithAdjacency:v7 graph:graphCopy];
  if ([v7 isEqual:v9])
  {
    v10 = v7;
  }

  else
  {
    do
    {
      v10 = v9;

      v9 = [optionalStep adjacencyByJoiningWithAdjacency:v10 graph:graphCopy];

      v7 = v10;
    }

    while (![v10 isEqual:v9]);
  }

  return v10;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph
{
  graphCopy = graph;
  v7 = [(MARelation *)self->_base adjacencyWithStartNodeIdentifiers:identifiers graph:graphCopy];
  optionalStep = [(MARelation *)self->_base optionalStep];
  v9 = [optionalStep adjacencyByJoiningWithAdjacency:v7 graph:graphCopy];
  if ([v7 isEqual:v9])
  {
    v10 = v7;
  }

  else
  {
    do
    {
      v10 = v9;

      v9 = [optionalStep adjacencyByJoiningWithAdjacency:v10 graph:graphCopy];

      v7 = v10;
    }

    while (![v10 isEqual:v9]);
  }

  return v10;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph
{
  identifiersCopy = identifiers;
  nodeIdentifiersCopy = nodeIdentifiers;
  graphCopy = graph;
  v11 = objc_alloc_init(KGMutableElementIdentifierSet);
  v16 = identifiersCopy;
  v12 = v16;
  while (![(KGElementIdentifierSet *)v12 isEmpty])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = objc_alloc_init(KGMutableElementIdentifierSet);
    [(MARelation *)self->_base unionAdjacencySetFromSourceNodeIdentifiers:v12 toTargetNodeIdentifiers:v14 graph:graphCopy];
    [(KGMutableElementIdentifierSet *)v14 subtractIdentifierSet:v11];
    [(KGMutableElementIdentifierSet *)v11 unionWithIdentifierSet:v14];

    isTransitive = [(MARelation *)self->_base isTransitive];
    objc_autoreleasePoolPop(v13);
    v12 = v14;
    if (isTransitive)
    {
      goto LABEL_6;
    }
  }

  v14 = v12;
LABEL_6:
  [nodeIdentifiersCopy unionWithIdentifierSet:v11];
}

- (id)inverse
{
  v3 = [MATransitiveClosureRelation alloc];
  inverse = [(MARelation *)self->_base inverse];
  v5 = [(MATransitiveClosureRelation *)v3 initWithBase:inverse];

  return v5;
}

- (MATransitiveClosureRelation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = MATransitiveClosureRelation;
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
    if (v5 && ([scannerCopy scanString:@"}*" intoString:0] & 1) != 0 && !objc_msgSend(scannerCopy, "scanInteger:", 0))
    {
      v6 = [[MATransitiveClosureRelation alloc] initWithBase:v5];
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