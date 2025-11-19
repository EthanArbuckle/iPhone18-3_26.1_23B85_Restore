@interface MABinaryAdjacency
+ (id)adjacencyWithSources:(id)a3 relation:(id)a4 targetsClass:(Class)a5;
- (BOOL)isEqual:(id)a3;
- (MABinaryAdjacency)initWithAdjacency:(id)a3 graph:(id)a4 sourcesClass:(Class)a5 targetsClass:(Class)a6;
- (MABinaryAdjacency)initWithAdjacency:(id)a3 graphReference:(id)a4 sourcesClass:(Class)a5 targetsClass:(Class)a6;
- (MANodeCollection)sources;
- (MANodeCollection)targets;
- (id)differenceWith:(id)a3;
- (id)intersectingSourcesWith:(id)a3;
- (id)intersectingTargetsWith:(id)a3;
- (id)subtractingSourcesWith:(id)a3;
- (id)subtractingTargetsWith:(id)a3;
- (id)targetsForSourceIdentifier:(unint64_t)a3;
- (id)targetsForSources:(id)a3;
- (id)targetsWithMinimumCount:(unint64_t)a3;
- (id)transposed;
- (void)enumerateTargetsBySourceWithBlock:(id)a3;
@end

@implementation MABinaryAdjacency

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && [(MABinaryAdjacency *)self isEqualToAdjacency:v4];
  }

  return v7;
}

- (id)subtractingSourcesWith:(id)a3
{
  v4 = a3;
  v5 = [(MABinaryAdjacency *)self adjacency];
  v6 = [v4 elementIdentifiers];

  v7 = [v5 subtractingSourcesWith:v6];

  v8 = [[MABinaryAdjacency alloc] initWithAdjacency:v7 graphReference:self->_graphReference sourcesClass:self->_sourcesClass targetsClass:self->_targetsClass];

  return v8;
}

- (id)subtractingTargetsWith:(id)a3
{
  v4 = a3;
  v5 = [(MABinaryAdjacency *)self adjacency];
  v6 = [v4 elementIdentifiers];

  v7 = [v5 subtractingTargetsWith:v6];

  v8 = [[MABinaryAdjacency alloc] initWithAdjacency:v7 graphReference:self->_graphReference sourcesClass:self->_sourcesClass targetsClass:self->_targetsClass];

  return v8;
}

- (id)intersectingSourcesWith:(id)a3
{
  v4 = a3;
  v5 = [(MABinaryAdjacency *)self adjacency];
  v6 = [v4 elementIdentifiers];

  v7 = [v5 intersectingSourcesWith:v6];

  v8 = [[MABinaryAdjacency alloc] initWithAdjacency:v7 graphReference:self->_graphReference sourcesClass:self->_sourcesClass targetsClass:self->_targetsClass];

  return v8;
}

- (id)intersectingTargetsWith:(id)a3
{
  v4 = a3;
  v5 = [(MABinaryAdjacency *)self adjacency];
  v6 = [v4 elementIdentifiers];

  v7 = [v5 intersectingTargetsWith:v6];

  v8 = [[MABinaryAdjacency alloc] initWithAdjacency:v7 graphReference:self->_graphReference sourcesClass:self->_sourcesClass targetsClass:self->_targetsClass];

  return v8;
}

- (id)differenceWith:(id)a3
{
  v4 = a3;
  v5 = [(MABinaryAdjacency *)self adjacency];
  v6 = [v4 adjacency];

  v7 = [v5 differenceWith:v6];

  v8 = [[MABinaryAdjacency alloc] initWithAdjacency:v7 graphReference:self->_graphReference sourcesClass:self->_sourcesClass targetsClass:self->_targetsClass];

  return v8;
}

- (id)transposed
{
  v3 = [(MABinaryAdjacency *)self adjacency];
  v4 = [v3 transposed];

  v5 = [[MABinaryAdjacency alloc] initWithAdjacency:v4 graphReference:self->_graphReference sourcesClass:self->_targetsClass targetsClass:self->_sourcesClass];

  return v5;
}

- (id)targetsWithMinimumCount:(unint64_t)a3
{
  v5 = objc_alloc(self->_targetsClass);
  graphReference = self->_graphReference;
  v7 = [(KGDirectedBinaryAdjacency *)self->_adjacency targetsWithMinimumCount:a3];
  v8 = [v5 initWithGraphReference:graphReference elementIdentifiers:v7];

  return v8;
}

- (id)targetsForSourceIdentifier:(unint64_t)a3
{
  v5 = objc_alloc(self->_targetsClass);
  graphReference = self->_graphReference;
  v7 = [(KGDirectedBinaryAdjacency *)self->_adjacency targetsForSourceIdentifier:a3];
  v8 = [v5 initWithGraphReference:graphReference elementIdentifiers:v7];

  return v8;
}

- (id)targetsForSources:(id)a3
{
  targetsClass = self->_targetsClass;
  v5 = a3;
  v6 = [targetsClass alloc];
  p_adjacency = &self->_adjacency;
  adjacency = self->_adjacency;
  v8 = p_adjacency[1];
  v10 = [v5 elementIdentifiers];

  v11 = [(KGDirectedBinaryAdjacency *)adjacency targetsForSources:v10];
  v12 = [v6 initWithGraphReference:v8 elementIdentifiers:v11];

  return v12;
}

- (void)enumerateTargetsBySourceWithBlock:(id)a3
{
  v4 = a3;
  adjacency = self->_adjacency;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MABinaryAdjacency_enumerateTargetsBySourceWithBlock___block_invoke;
  v7[3] = &unk_2797FF8E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(KGDirectedBinaryAdjacency *)adjacency enumerateTargetsBySourceWith:v7];
}

void __55__MABinaryAdjacency_enumerateTargetsBySourceWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a2];
  v7 = [objc_alloc(*(*(a1 + 32) + 24)) initWithGraphReference:*(*(a1 + 32) + 16) elementIdentifiers:v6];
  v8 = [objc_alloc(*(*(a1 + 32) + 32)) initWithGraphReference:*(*(a1 + 32) + 16) elementIdentifiers:v9];
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v5);
}

- (MANodeCollection)targets
{
  v3 = objc_alloc(self->_targetsClass);
  graphReference = self->_graphReference;
  v5 = [(KGDirectedBinaryAdjacency *)self->_adjacency targets];
  v6 = [v3 initWithGraphReference:graphReference elementIdentifiers:v5];

  return v6;
}

- (MANodeCollection)sources
{
  v3 = objc_alloc(self->_sourcesClass);
  graphReference = self->_graphReference;
  v5 = [(KGDirectedBinaryAdjacency *)self->_adjacency sources];
  v6 = [v3 initWithGraphReference:graphReference elementIdentifiers:v5];

  return v6;
}

- (MABinaryAdjacency)initWithAdjacency:(id)a3 graph:(id)a4 sourcesClass:(Class)a5 targetsClass:(Class)a6
{
  v10 = a3;
  v11 = [a4 graphReference];
  v12 = [(MABinaryAdjacency *)self initWithAdjacency:v10 graphReference:v11 sourcesClass:a5 targetsClass:a6];

  return v12;
}

- (MABinaryAdjacency)initWithAdjacency:(id)a3 graphReference:(id)a4 sourcesClass:(Class)a5 targetsClass:(Class)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = MABinaryAdjacency;
  v13 = [(MABinaryAdjacency *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_adjacency, a3);
    objc_storeStrong(&v14->_graphReference, a4);
    objc_storeStrong(&v14->_sourcesClass, a5);
    objc_storeStrong(&v14->_targetsClass, a6);
  }

  return v14;
}

+ (id)adjacencyWithSources:(id)a3 relation:(id)a4 targetsClass:(Class)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 graphReference];
  v11 = [v10 concreteGraph];
  v12 = [v9 elementIdentifiers];
  v13 = [v11 adjacencyWithSources:v12 relation:v8];

  v14 = [a1 alloc];
  v15 = objc_opt_class();

  v16 = [v14 initWithAdjacency:v13 graphReference:v10 sourcesClass:v15 targetsClass:a5];

  return v16;
}

@end