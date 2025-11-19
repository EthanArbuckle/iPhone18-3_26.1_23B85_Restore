@interface MSPSharedTripCapabilityFetchingPeer
- (NSOrderedSet)requestedHandles;
- (id)_requestedHandles;
- (id)removeRequestedHandles:(id)a3;
- (void)updateRequestedHandles:(id)a3 added:(id *)a4 removed:(id *)a5;
@end

@implementation MSPSharedTripCapabilityFetchingPeer

- (id)_requestedHandles
{
  requestedHandles = self->_requestedHandles;
  if (!requestedHandles)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v5 = self->_requestedHandles;
    self->_requestedHandles = v4;

    requestedHandles = self->_requestedHandles;
  }

  return requestedHandles;
}

- (NSOrderedSet)requestedHandles
{
  v2 = [(MSPSharedTripCapabilityFetchingPeer *)self _requestedHandles];
  v3 = [v2 copy];

  return v3;
}

- (void)updateRequestedHandles:(id)a3 added:(id *)a4 removed:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if ([v8 count] || self->_requestedHandles)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v8];
    [v9 minusOrderedSet:self->_requestedHandles];
    if (a4)
    {
      *a4 = [v9 copy];
    }

    v10 = [(NSMutableOrderedSet *)self->_requestedHandles set];
    v11 = [v10 mutableCopy];

    v12 = [MEMORY[0x277CBEB98] setWithArray:v8];
    [v11 minusSet:v12];

    if (a5)
    {
      *a5 = [v11 copy];
    }

    v13 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138478339;
      v18 = v8;
      v19 = 2113;
      v20 = v9;
      v21 = 2113;
      v22 = v11;
      _os_log_impl(&dword_25813A000, v13, OS_LOG_TYPE_DEBUG, "[Peer] Updated contacts: %{private}@\n\tAdded: %{private}@\n\tRemoved: %{private}@", &v17, 0x20u);
    }

    v14 = [(MSPSharedTripCapabilityFetchingPeer *)self _requestedHandles];
    [v14 removeAllObjects];

    v15 = [(MSPSharedTripCapabilityFetchingPeer *)self _requestedHandles];
    [v15 addObjectsFromArray:v8];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)removeRequestedHandles:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] || self->_requestedHandles)
  {
    v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
    v6 = [(NSMutableOrderedSet *)self->_requestedHandles set];
    v7 = [v6 mutableCopy];

    [(NSMutableOrderedSet *)v7 intersectSet:v5];
    [(NSMutableOrderedSet *)self->_requestedHandles minusSet:v7];
    v8 = MSPGetSharedTripCapabilityFetchingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138477827;
      v15 = v7;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "[Peer] Removing requested contacts %{private}@", &v14, 0xCu);
    }

    if ([(NSMutableOrderedSet *)self->_requestedHandles count])
    {
      v9 = MSPGetSharedTripCapabilityFetchingLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        requestedHandles = self->_requestedHandles;
        v14 = 138477827;
        v15 = requestedHandles;
        _os_log_impl(&dword_25813A000, v9, OS_LOG_TYPE_DEBUG, "[Peer] Still waiting for %{private}@", &v14, 0xCu);
      }
    }

    v11 = [(NSMutableOrderedSet *)v7 copy];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end