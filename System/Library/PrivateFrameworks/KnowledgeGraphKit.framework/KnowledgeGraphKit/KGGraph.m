@interface KGGraph
- (KGGraph)initWithImplementation:(id)a3 entityFactory:(id)a4;
- (id)_edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4;
- (id)_nodeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4;
- (id)adjacencyWithSourceNodeIdentifiers:(id)a3 edgeFilter:(id)a4 edgeDirection:(unint64_t)a5;
- (id)adjacencyWithTargetNodeIdentifiers:(id)a3 edgeFilter:(id)a4 edgeDirection:(unint64_t)a5;
- (id)edgeForIdentifier:(unint64_t)a3;
- (id)edgeIdentifiersBetweenStartNodeIdentifiers:(id)a3 endNodeIdentifiers:(id)a4 edgeFilter:(id)a5 edgeDirection:(unint64_t)a6;
- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4;
- (id)edgesForIdentifiers:(id)a3;
- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5;
- (id)nodeForIdentifier:(unint64_t)a3;
- (id)nodeIdentifiersOfEdgesForIdentifiers:(id)a3 edgeDirection:(unint64_t)a4;
- (id)nodesForIdentifiers:(id)a3;
- (id)sourcesByTargetWithEdgeIdentifiers:(id)a3;
- (id)targetsBySourceWithEdgeIdentifiers:(id)a3;
- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5;
@end

@implementation KGGraph

- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v11 = 0;
  v6 = [(KGGraphImplementation *)implementation transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:a3 edgeDirection:a4 edgeFilter:a5 error:&v11];
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

- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4 edgeFilter:(id)a5
{
  v14 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v11 = 0;
  v6 = [(KGGraphImplementation *)implementation neighborNodeIdentifiersWithStartNodeIdentifiers:a3 edgeDirection:a4 edgeFilter:a5 error:&v11];
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

- (id)edgeIdentifiersBetweenStartNodeIdentifiers:(id)a3 endNodeIdentifiers:(id)a4 edgeFilter:(id)a5 edgeDirection:(unint64_t)a6
{
  v15 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v12 = 0;
  v7 = [(KGGraphImplementation *)implementation edgeIdentifiersBetween:a3 endNodeIdentifiers:a4 edgeFilter:a5 edgeDirection:a6 error:&v12];
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

- (id)edgeIdentifiersWithStartNodeIdentifiers:(id)a3 edgeDirection:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v10 = 0;
  v5 = [(KGGraphImplementation *)implementation edgeIdentifiersWithStartNodeIdentifiers:a3 edgeDirection:a4 error:&v10];
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

- (id)_edgeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v10 = 0;
  v5 = [(KGGraphImplementation *)implementation edgeIdentifiersMatchingFilter:a3 intersectingIdentifiers:a4 error:&v10];
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

- (id)adjacencyWithTargetNodeIdentifiers:(id)a3 edgeFilter:(id)a4 edgeDirection:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if ((v5 & 2) != 0)
  {
    v11 = [(KGGraph *)self edgeIdentifiersWithStartNodeIdentifiers:v8 edgeDirection:1];
    v12 = [(KGGraph *)self edgeIdentifiersMatchingFilter:v9 intersectingIdentifiers:v11];

    v13 = [(KGGraph *)self targetsBySourceWithEdgeIdentifiers:v12];

    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v10 = v13;
  }

  else
  {
    if ((v5 & 1) == 0)
    {
LABEL_10:
      v13 = objc_alloc_init(KGDirectedBinaryAdjacency);
      goto LABEL_12;
    }

    v10 = 0;
  }

  v14 = [(KGGraph *)self edgeIdentifiersWithStartNodeIdentifiers:v8 edgeDirection:2];
  v15 = [(KGGraph *)self edgeIdentifiersMatchingFilter:v9 intersectingIdentifiers:v14];

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

- (id)adjacencyWithSourceNodeIdentifiers:(id)a3 edgeFilter:(id)a4 edgeDirection:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(KGDirectedBinaryAdjacency);
  v11 = objc_alloc_init(KGDirectedBinaryAdjacency);
  if ((v5 & 2) != 0)
  {
    v12 = [(KGGraph *)self edgeIdentifiersWithStartNodeIdentifiers:v8 edgeDirection:2];
    v13 = [(KGGraph *)self edgeIdentifiersMatchingFilter:v9 intersectingIdentifiers:v12];

    v14 = [(KGGraph *)self targetsBySourceWithEdgeIdentifiers:v13];

    v10 = v14;
  }

  if (v5)
  {
    v15 = [(KGGraph *)self edgeIdentifiersWithStartNodeIdentifiers:v8 edgeDirection:1];
    v16 = [(KGGraph *)self edgeIdentifiersMatchingFilter:v9 intersectingIdentifiers:v15];

    v17 = [(KGGraph *)self sourcesByTargetWithEdgeIdentifiers:v16];

    v11 = v17;
  }

  v18 = [(KGDirectedBinaryAdjacency *)v10 unionWith:v11];

  return v18;
}

- (id)sourcesByTargetWithEdgeIdentifiers:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v9 = 0;
  v4 = [(KGGraphImplementation *)implementation sourcesByTargetWithEdgeIdentifiers:a3 error:&v9];
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

- (id)targetsBySourceWithEdgeIdentifiers:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v9 = 0;
  v4 = [(KGGraphImplementation *)implementation targetsBySourceWithEdgeIdentifiers:a3 error:&v9];
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

- (id)nodeIdentifiersOfEdgesForIdentifiers:(id)a3 edgeDirection:(unint64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v10 = 0;
  v5 = [(KGGraphImplementation *)implementation nodeIdentifiersOfEdgesWithIdentifiers:a3 edgeDirection:a4 error:&v10];
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

- (id)_nodeIdentifiersMatchingFilter:(id)a3 intersectingIdentifiers:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  implementation = self->_implementation;
  v10 = 0;
  v5 = [(KGGraphImplementation *)implementation nodeIdentifiersMatchingFilter:a3 intersectingIdentifiers:a4 error:&v10];
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

- (id)edgesForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(KGElementCollection *)[KGEdgeCollection alloc] initWithIdentifiers:v4 graph:self];

  return v5;
}

- (id)nodesForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(KGElementCollection *)[KGNodeCollection alloc] initWithIdentifiers:v4 graph:self];

  return v5;
}

- (id)edgeForIdentifier:(unint64_t)a3
{
  v4 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a3];
  v5 = [(KGGraph *)self edgesForIdentifiers:v4];
  v6 = [v5 anyObject];

  return v6;
}

- (id)nodeForIdentifier:(unint64_t)a3
{
  v4 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:a3];
  v5 = [(KGGraph *)self nodesForIdentifiers:v4];
  v6 = [v5 anyObject];

  return v6;
}

- (KGGraph)initWithImplementation:(id)a3 entityFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = KGGraph;
  v9 = [(KGGraph *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_implementation, a3);
    objc_storeStrong(&v10->_entityFactory, a4);
  }

  return v10;
}

@end