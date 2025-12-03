@interface MABinaryAdjacency
+ (id)adjacencyWithSources:(id)sources relation:(id)relation targetsClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (MABinaryAdjacency)initWithAdjacency:(id)adjacency graph:(id)graph sourcesClass:(Class)class targetsClass:(Class)targetsClass;
- (MABinaryAdjacency)initWithAdjacency:(id)adjacency graphReference:(id)reference sourcesClass:(Class)class targetsClass:(Class)targetsClass;
- (MANodeCollection)sources;
- (MANodeCollection)targets;
- (id)differenceWith:(id)with;
- (id)intersectingSourcesWith:(id)with;
- (id)intersectingTargetsWith:(id)with;
- (id)subtractingSourcesWith:(id)with;
- (id)subtractingTargetsWith:(id)with;
- (id)targetsForSourceIdentifier:(unint64_t)identifier;
- (id)targetsForSources:(id)sources;
- (id)targetsWithMinimumCount:(unint64_t)count;
- (id)transposed;
- (void)enumerateTargetsBySourceWithBlock:(id)block;
@end

@implementation MABinaryAdjacency

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && [(MABinaryAdjacency *)self isEqualToAdjacency:equalCopy];
  }

  return v7;
}

- (id)subtractingSourcesWith:(id)with
{
  withCopy = with;
  adjacency = [(MABinaryAdjacency *)self adjacency];
  elementIdentifiers = [withCopy elementIdentifiers];

  v7 = [adjacency subtractingSourcesWith:elementIdentifiers];

  v8 = [[MABinaryAdjacency alloc] initWithAdjacency:v7 graphReference:self->_graphReference sourcesClass:self->_sourcesClass targetsClass:self->_targetsClass];

  return v8;
}

- (id)subtractingTargetsWith:(id)with
{
  withCopy = with;
  adjacency = [(MABinaryAdjacency *)self adjacency];
  elementIdentifiers = [withCopy elementIdentifiers];

  v7 = [adjacency subtractingTargetsWith:elementIdentifiers];

  v8 = [[MABinaryAdjacency alloc] initWithAdjacency:v7 graphReference:self->_graphReference sourcesClass:self->_sourcesClass targetsClass:self->_targetsClass];

  return v8;
}

- (id)intersectingSourcesWith:(id)with
{
  withCopy = with;
  adjacency = [(MABinaryAdjacency *)self adjacency];
  elementIdentifiers = [withCopy elementIdentifiers];

  v7 = [adjacency intersectingSourcesWith:elementIdentifiers];

  v8 = [[MABinaryAdjacency alloc] initWithAdjacency:v7 graphReference:self->_graphReference sourcesClass:self->_sourcesClass targetsClass:self->_targetsClass];

  return v8;
}

- (id)intersectingTargetsWith:(id)with
{
  withCopy = with;
  adjacency = [(MABinaryAdjacency *)self adjacency];
  elementIdentifiers = [withCopy elementIdentifiers];

  v7 = [adjacency intersectingTargetsWith:elementIdentifiers];

  v8 = [[MABinaryAdjacency alloc] initWithAdjacency:v7 graphReference:self->_graphReference sourcesClass:self->_sourcesClass targetsClass:self->_targetsClass];

  return v8;
}

- (id)differenceWith:(id)with
{
  withCopy = with;
  adjacency = [(MABinaryAdjacency *)self adjacency];
  adjacency2 = [withCopy adjacency];

  v7 = [adjacency differenceWith:adjacency2];

  v8 = [[MABinaryAdjacency alloc] initWithAdjacency:v7 graphReference:self->_graphReference sourcesClass:self->_sourcesClass targetsClass:self->_targetsClass];

  return v8;
}

- (id)transposed
{
  adjacency = [(MABinaryAdjacency *)self adjacency];
  transposed = [adjacency transposed];

  v5 = [[MABinaryAdjacency alloc] initWithAdjacency:transposed graphReference:self->_graphReference sourcesClass:self->_targetsClass targetsClass:self->_sourcesClass];

  return v5;
}

- (id)targetsWithMinimumCount:(unint64_t)count
{
  v5 = objc_alloc(self->_targetsClass);
  graphReference = self->_graphReference;
  v7 = [(KGDirectedBinaryAdjacency *)self->_adjacency targetsWithMinimumCount:count];
  v8 = [v5 initWithGraphReference:graphReference elementIdentifiers:v7];

  return v8;
}

- (id)targetsForSourceIdentifier:(unint64_t)identifier
{
  v5 = objc_alloc(self->_targetsClass);
  graphReference = self->_graphReference;
  v7 = [(KGDirectedBinaryAdjacency *)self->_adjacency targetsForSourceIdentifier:identifier];
  v8 = [v5 initWithGraphReference:graphReference elementIdentifiers:v7];

  return v8;
}

- (id)targetsForSources:(id)sources
{
  targetsClass = self->_targetsClass;
  sourcesCopy = sources;
  v6 = [targetsClass alloc];
  p_adjacency = &self->_adjacency;
  adjacency = self->_adjacency;
  v8 = p_adjacency[1];
  elementIdentifiers = [sourcesCopy elementIdentifiers];

  v11 = [(KGDirectedBinaryAdjacency *)adjacency targetsForSources:elementIdentifiers];
  v12 = [v6 initWithGraphReference:v8 elementIdentifiers:v11];

  return v12;
}

- (void)enumerateTargetsBySourceWithBlock:(id)block
{
  blockCopy = block;
  adjacency = self->_adjacency;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__MABinaryAdjacency_enumerateTargetsBySourceWithBlock___block_invoke;
  v7[3] = &unk_2797FF8E0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
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
  targets = [(KGDirectedBinaryAdjacency *)self->_adjacency targets];
  v6 = [v3 initWithGraphReference:graphReference elementIdentifiers:targets];

  return v6;
}

- (MANodeCollection)sources
{
  v3 = objc_alloc(self->_sourcesClass);
  graphReference = self->_graphReference;
  sources = [(KGDirectedBinaryAdjacency *)self->_adjacency sources];
  v6 = [v3 initWithGraphReference:graphReference elementIdentifiers:sources];

  return v6;
}

- (MABinaryAdjacency)initWithAdjacency:(id)adjacency graph:(id)graph sourcesClass:(Class)class targetsClass:(Class)targetsClass
{
  adjacencyCopy = adjacency;
  graphReference = [graph graphReference];
  v12 = [(MABinaryAdjacency *)self initWithAdjacency:adjacencyCopy graphReference:graphReference sourcesClass:class targetsClass:targetsClass];

  return v12;
}

- (MABinaryAdjacency)initWithAdjacency:(id)adjacency graphReference:(id)reference sourcesClass:(Class)class targetsClass:(Class)targetsClass
{
  adjacencyCopy = adjacency;
  referenceCopy = reference;
  v16.receiver = self;
  v16.super_class = MABinaryAdjacency;
  v13 = [(MABinaryAdjacency *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_adjacency, adjacency);
    objc_storeStrong(&v14->_graphReference, reference);
    objc_storeStrong(&v14->_sourcesClass, class);
    objc_storeStrong(&v14->_targetsClass, targetsClass);
  }

  return v14;
}

+ (id)adjacencyWithSources:(id)sources relation:(id)relation targetsClass:(Class)class
{
  relationCopy = relation;
  sourcesCopy = sources;
  graphReference = [sourcesCopy graphReference];
  concreteGraph = [graphReference concreteGraph];
  elementIdentifiers = [sourcesCopy elementIdentifiers];
  v13 = [concreteGraph adjacencyWithSources:elementIdentifiers relation:relationCopy];

  v14 = [self alloc];
  v15 = objc_opt_class();

  v16 = [v14 initWithAdjacency:v13 graphReference:graphReference sourcesClass:v15 targetsClass:class];

  return v16;
}

@end