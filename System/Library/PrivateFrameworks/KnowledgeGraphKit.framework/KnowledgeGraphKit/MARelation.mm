@interface MARelation
+ (MARelation)relationWithVisualString:(id)string;
+ (id)_scanNonChainRelationWithScanner:(id)scanner;
+ (id)chain:(id)chain;
+ (id)union:(id)union;
- (MARelation)excludeSource;
- (MARelation)inverse;
- (MARelation)optionalStep;
- (MARelation)transitiveClosure;
- (NSString)visualString;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph;
- (id)initForSubclassing;
- (id)repeatWithCount:(unint64_t)count;
- (id)repeatWithMinCount:(unint64_t)count maxCount:(unint64_t)maxCount;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph;
@end

@implementation MARelation

- (id)repeatWithMinCount:(unint64_t)count maxCount:(unint64_t)maxCount
{
  v4 = [[MAMultiStepRelation alloc] initWithBase:self minNumberOfSteps:count maxNumberOfSteps:maxCount];

  return v4;
}

- (id)repeatWithCount:(unint64_t)count
{
  v3 = [[MAMultiStepRelation alloc] initWithBase:self numberOfSteps:count];

  return v3;
}

- (MARelation)inverse
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (MARelation)excludeSource
{
  v2 = [[MAExcludeSourceRelation alloc] initWithBase:self];

  return v2;
}

- (MARelation)optionalStep
{
  v2 = [[MAOptionalStepRelation alloc] initWithBase:self];

  return v2;
}

- (MARelation)transitiveClosure
{
  v2 = [[MATransitiveClosureRelation alloc] initWithBase:self];

  return v2;
}

- (NSString)visualString
{
  v2 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v2);
}

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency graph:(id)graph
{
  adjacencyCopy = adjacency;
  graphCopy = graph;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph
{
  identifiersCopy = identifiers;
  graphCopy = graph;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph
{
  identifiersCopy = identifiers;
  nodeIdentifiersCopy = nodeIdentifiers;
  graphCopy = graph;
  v12 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v12);
}

- (id)initForSubclassing
{
  v3.receiver = self;
  v3.super_class = MARelation;
  return [(MARelation *)&v3 init];
}

+ (id)union:(id)union
{
  unionCopy = union;
  v4 = [[MAUnionRelation alloc] initWithRelations:unionCopy];

  return v4;
}

+ (id)chain:(id)chain
{
  chainCopy = chain;
  v4 = [[MAChainRelation alloc] initWithSteps:chainCopy];

  return v4;
}

+ (MARelation)relationWithVisualString:(id)string
{
  v4 = MEMORY[0x277CCAC80];
  stringCopy = string;
  v6 = [[v4 alloc] initWithString:stringCopy];

  v7 = [self scanRelationWithScanner:v6];
  if ([v6 isAtEnd])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_scanNonChainRelationWithScanner:(id)scanner
{
  scannerCopy = scanner;
  v4 = [MANeighborRelation scanRelationWithScanner:scannerCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [MANodeFilterRelation scanRelationWithScanner:scannerCopy];
    v8 = v7;
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v9 = [MAMultiStepRelation scanRelationWithScanner:scannerCopy];
      v10 = v9;
      if (v9)
      {
        v6 = v9;
      }

      else
      {
        v11 = [MATransitiveClosureRelation scanRelationWithScanner:scannerCopy];
        v12 = v11;
        if (v11)
        {
          v6 = v11;
        }

        else
        {
          v13 = [MAOptionalStepRelation scanRelationWithScanner:scannerCopy];
          v14 = v13;
          if (v13)
          {
            v6 = v13;
          }

          else
          {
            v15 = [MAExcludeSourceRelation scanRelationWithScanner:scannerCopy];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = [MAUnionRelation scanRelationWithScanner:scannerCopy];
            }

            v6 = v17;
          }
        }
      }
    }
  }

  return v6;
}

@end