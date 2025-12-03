@interface KGGraph
- (KGGraph)initWithImplementation:(id)implementation entityFactory:(id)factory;
- (id)_edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers;
- (id)_nodeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers;
- (id)adjacencyWithSourceNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeDirection:(unint64_t)direction;
- (id)adjacencyWithTargetNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeDirection:(unint64_t)direction;
- (id)edgeForIdentifier:(unint64_t)identifier;
- (id)edgeIdentifiersBetweenStartNodeIdentifiers:(id)identifiers endNodeIdentifiers:(id)nodeIdentifiers edgeFilter:(id)filter edgeDirection:(unint64_t)direction;
- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction;
- (id)edgesForIdentifiers:(id)identifiers;
- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter;
- (id)nodeForIdentifier:(unint64_t)identifier;
- (id)nodeIdentifiersOfEdgesForIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction;
- (id)nodesForIdentifiers:(id)identifiers;
- (id)sourcesByTargetWithEdgeIdentifiers:(id)identifiers;
- (id)targetsBySourceWithEdgeIdentifiers:(id)identifiers;
- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter;
@end

@implementation KGGraph

- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter
{
  v14 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v11 = 0;
  v6 = [(KGGraphImplementation *)implementation transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:identifiers edgeDirection:direction edgeFilter:filter error:&v11];
  v7 = v11;
  if (!v6)
  {
    v8 = KGLoggingConnection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_255870000, v8, OS_LOG_TYPE_ERROR, "Error fetching transitive closure neighbor node identifiers with error(%@)", buf, 0xCu);
    }

    v6 = objc_alloc_init(KGElementIdentifierSet);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction edgeFilter:(id)filter
{
  v14 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v11 = 0;
  v6 = [(KGGraphImplementation *)implementation neighborNodeIdentifiersWithStartNodeIdentifiers:identifiers edgeDirection:direction edgeFilter:filter error:&v11];
  v7 = v11;
  if (!v6)
  {
    v8 = KGLoggingConnection();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_255870000, v8, OS_LOG_TYPE_ERROR, "Error fetching neighbor node identifiers with error(%@)", buf, 0xCu);
    }

    v6 = objc_alloc_init(KGElementIdentifierSet);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)edgeIdentifiersBetweenStartNodeIdentifiers:(id)identifiers endNodeIdentifiers:(id)nodeIdentifiers edgeFilter:(id)filter edgeDirection:(unint64_t)direction
{
  v15 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v12 = 0;
  v7 = [(KGGraphImplementation *)implementation edgeIdentifiersBetween:identifiers endNodeIdentifiers:nodeIdentifiers edgeFilter:filter edgeDirection:direction error:&v12];
  v8 = v12;
  if (!v7)
  {
    v9 = KGLoggingConnection();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_error_impl(&dword_255870000, v9, OS_LOG_TYPE_ERROR, "Error fetching edge identifiers for nodes with error(%@)", buf, 0xCu);
    }

    v7 = objc_alloc_init(KGElementIdentifierSet);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction
{
  v13 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v10 = 0;
  v5 = [(KGGraphImplementation *)implementation edgeIdentifiersWithStartNodeIdentifiers:identifiers edgeDirection:direction error:&v10];
  v6 = v10;
  if (!v5)
  {
    v7 = KGLoggingConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_255870000, v7, OS_LOG_TYPE_ERROR, "Error fetching edge identifiers for nodes with error(%@)", buf, 0xCu);
    }

    v5 = objc_alloc_init(KGElementIdentifierSet);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers
{
  v13 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v10 = 0;
  v5 = [(KGGraphImplementation *)implementation edgeIdentifiersMatchingFilter:filter intersectingIdentifiers:identifiers error:&v10];
  v6 = v10;
  if (!v5)
  {
    v7 = KGLoggingConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_255870000, v7, OS_LOG_TYPE_ERROR, "Error fetching edge identifiers with error(%@)", buf, 0xCu);
    }

    v5 = objc_alloc_init(KGElementIdentifierSet);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)adjacencyWithTargetNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeDirection:(unint64_t)direction
{
  directionCopy = direction;
  identifiersCopy = identifiers;
  filterCopy = filter;
  if ((directionCopy & 2) != 0)
  {
    v11 = [(KGGraph *)self edgeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:1];
    v12 = [(KGGraph *)self edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:v11];

    v13 = [(KGGraph *)self targetsBySourceWithEdgeIdentifiers:v12];

    if ((directionCopy & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v13;
  }

  else
  {
    if ((directionCopy & 1) == 0)
    {
LABEL_10:
      v13 = objc_alloc_init(KGDirectedBinaryAdjacency);
      goto LABEL_12;
    }

    v10 = 0;
  }

  v14 = [(KGGraph *)self edgeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:2];
  v15 = [(KGGraph *)self edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:v14];

  v13 = [(KGGraph *)self sourcesByTargetWithEdgeIdentifiers:v15];

  if (!v10)
  {
LABEL_9:
    if (v13)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v13)
  {
    v16 = [(KGDirectedBinaryAdjacency *)v10 unionWith:v13];

    v13 = v16;
  }

  else
  {
    v13 = v10;
  }

LABEL_12:

  return v13;
}

- (id)adjacencyWithSourceNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeDirection:(unint64_t)direction
{
  directionCopy = direction;
  identifiersCopy = identifiers;
  filterCopy = filter;
  v10 = objc_alloc_init(KGDirectedBinaryAdjacency);
  v11 = objc_alloc_init(KGDirectedBinaryAdjacency);
  if ((directionCopy & 2) != 0)
  {
    v12 = [(KGGraph *)self edgeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:2];
    v13 = [(KGGraph *)self edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:v12];

    v14 = [(KGGraph *)self targetsBySourceWithEdgeIdentifiers:v13];

    v10 = v14;
  }

  if (directionCopy)
  {
    v15 = [(KGGraph *)self edgeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:1];
    v16 = [(KGGraph *)self edgeIdentifiersMatchingFilter:filterCopy intersectingIdentifiers:v15];

    v17 = [(KGGraph *)self sourcesByTargetWithEdgeIdentifiers:v16];

    v11 = v17;
  }

  v18 = [(KGDirectedBinaryAdjacency *)v10 unionWith:v11];

  return v18;
}

- (id)sourcesByTargetWithEdgeIdentifiers:(id)identifiers
{
  v12 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v9 = 0;
  v4 = [(KGGraphImplementation *)implementation sourcesByTargetWithEdgeIdentifiers:identifiers error:&v9];
  v5 = v9;
  if (!v4)
  {
    v6 = KGLoggingConnection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_255870000, v6, OS_LOG_TYPE_ERROR, "Error fetching sources by target adjacency with error(%@)", buf, 0xCu);
    }

    v4 = objc_alloc_init(KGDirectedBinaryAdjacency);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)targetsBySourceWithEdgeIdentifiers:(id)identifiers
{
  v12 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v9 = 0;
  v4 = [(KGGraphImplementation *)implementation targetsBySourceWithEdgeIdentifiers:identifiers error:&v9];
  v5 = v9;
  if (!v4)
  {
    v6 = KGLoggingConnection();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_error_impl(&dword_255870000, v6, OS_LOG_TYPE_ERROR, "Error fetching targets by source adjacency with error(%@)", buf, 0xCu);
    }

    v4 = objc_alloc_init(KGDirectedBinaryAdjacency);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)nodeIdentifiersOfEdgesForIdentifiers:(id)identifiers edgeDirection:(unint64_t)direction
{
  v13 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v10 = 0;
  v5 = [(KGGraphImplementation *)implementation nodeIdentifiersOfEdgesWithIdentifiers:identifiers edgeDirection:direction error:&v10];
  v6 = v10;
  if (!v5)
  {
    v7 = KGLoggingConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_255870000, v7, OS_LOG_TYPE_ERROR, "Error fetching nodes of edges with error(%@)", buf, 0xCu);
    }

    v5 = objc_alloc_init(KGElementIdentifierSet);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_nodeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers
{
  v13 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v10 = 0;
  v5 = [(KGGraphImplementation *)implementation nodeIdentifiersMatchingFilter:filter intersectingIdentifiers:identifiers error:&v10];
  v6 = v10;
  if (!v5)
  {
    v7 = KGLoggingConnection();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_error_impl(&dword_255870000, v7, OS_LOG_TYPE_ERROR, "Error fetching node identifiers with error(%@)", buf, 0xCu);
    }

    v5 = objc_alloc_init(KGElementIdentifierSet);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)edgesForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(KGElementCollection *)[KGEdgeCollection alloc] initWithIdentifiers:identifiersCopy graph:self];

  return v5;
}

- (id)nodesForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [(KGElementCollection *)[KGNodeCollection alloc] initWithIdentifiers:identifiersCopy graph:self];

  return v5;
}

- (id)edgeForIdentifier:(unint64_t)identifier
{
  v4 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:identifier];
  v5 = [(KGGraph *)self edgesForIdentifiers:v4];
  anyObject = [v5 anyObject];

  return anyObject;
}

- (id)nodeForIdentifier:(unint64_t)identifier
{
  v4 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:identifier];
  v5 = [(KGGraph *)self nodesForIdentifiers:v4];
  anyObject = [v5 anyObject];

  return anyObject;
}

- (KGGraph)initWithImplementation:(id)implementation entityFactory:(id)factory
{
  implementationCopy = implementation;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = KGGraph;
  v9 = [(KGGraph *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_implementation, implementation);
    objc_storeStrong(&v10->_entityFactory, factory);
  }

  return v10;
}

@end