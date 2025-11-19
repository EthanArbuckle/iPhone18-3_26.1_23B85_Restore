@interface MARelation
+ (MARelation)relationWithVisualString:(id)a3;
+ (id)_scanNonChainRelationWithScanner:(id)a3;
+ (id)chain:(id)a3;
+ (id)union:(id)a3;
- (MARelation)excludeSource;
- (MARelation)inverse;
- (MARelation)optionalStep;
- (MARelation)transitiveClosure;
- (NSString)visualString;
- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4;
- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4;
- (id)initForSubclassing;
- (id)repeatWithCount:(unint64_t)a3;
- (id)repeatWithMinCount:(unint64_t)a3 maxCount:(unint64_t)a4;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5;
@end

@implementation MARelation

- (id)repeatWithMinCount:(unint64_t)a3 maxCount:(unint64_t)a4
{
  v4 = [[MAMultiStepRelation alloc] initWithBase:self minNumberOfSteps:a3 maxNumberOfSteps:a4];

  return v4;
}

- (id)repeatWithCount:(unint64_t)a3
{
  v3 = [[MAMultiStepRelation alloc] initWithBase:self numberOfSteps:a3];

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

- (id)adjacencyByJoiningWithAdjacency:(id)a3 graph:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v9);
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = KGAbstractMethodException(self, a2);
  objc_exception_throw(v12);
}

- (id)initForSubclassing
{
  v3.receiver = self;
  v3.super_class = MARelation;
  return [(MARelation *)&v3 init];
}

+ (id)union:(id)a3
{
  v3 = a3;
  v4 = [[MAUnionRelation alloc] initWithRelations:v3];

  return v4;
}

+ (id)chain:(id)a3
{
  v3 = a3;
  v4 = [[MAChainRelation alloc] initWithSteps:v3];

  return v4;
}

+ (MARelation)relationWithVisualString:(id)a3
{
  v4 = MEMORY[0x277CCAC80];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  v7 = [a1 scanRelationWithScanner:v6];
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

+ (id)_scanNonChainRelationWithScanner:(id)a3
{
  v3 = a3;
  v4 = [MANeighborRelation scanRelationWithScanner:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [MANodeFilterRelation scanRelationWithScanner:v3];
    v8 = v7;
    if (v7)
    {
      v6 = v7;
    }

    else
    {
      v9 = [MAMultiStepRelation scanRelationWithScanner:v3];
      v10 = v9;
      if (v9)
      {
        v6 = v9;
      }

      else
      {
        v11 = [MATransitiveClosureRelation scanRelationWithScanner:v3];
        v12 = v11;
        if (v11)
        {
          v6 = v11;
        }

        else
        {
          v13 = [MAOptionalStepRelation scanRelationWithScanner:v3];
          v14 = v13;
          if (v13)
          {
            v6 = v13;
          }

          else
          {
            v15 = [MAExcludeSourceRelation scanRelationWithScanner:v3];
            v16 = v15;
            if (v15)
            {
              v17 = v15;
            }

            else
            {
              v17 = [MAUnionRelation scanRelationWithScanner:v3];
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