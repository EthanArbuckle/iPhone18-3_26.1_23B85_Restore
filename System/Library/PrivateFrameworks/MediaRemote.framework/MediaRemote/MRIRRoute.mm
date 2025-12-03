@interface MRIRRoute
+ (id)debugRouteWithDebugIdentifier:(id)identifier;
+ (id)routeWithCandidate:(id)candidate;
+ (id)routeWithEndpoint:(id)endpoint;
+ (id)routeWithOutputDevices:(id)devices;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
@end

@implementation MRIRRoute

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  routeIdentifier = [(MRIRRoute *)self routeIdentifier];
  [v6 appendFormat:@"routeIdentifier: %@", routeIdentifier];

  nodes = [(MRIRRoute *)self nodes];
  [v6 appendFormat:@", nodes: %@", nodes];

  donateAsCandidate = [(MRIRRoute *)self donateAsCandidate];
  v10 = @"NO";
  if (donateAsCandidate)
  {
    v10 = @"YES";
  }

  [v6 appendFormat:@", donateAsCandidate: %@", v10];
  [v6 appendString:@">"];

  return v6;
}

+ (id)routeWithCandidate:(id)candidate
{
  candidateCopy = candidate;
  v4 = objc_alloc_init(MRIRRoute);
  candidateIdentifier = [candidateCopy candidateIdentifier];
  [(MRIRRoute *)v4 setRouteIdentifier:candidateIdentifier];

  v6 = MEMORY[0x1E695DFD8];
  nodes = [candidateCopy nodes];

  v8 = [nodes msv_map:&__block_literal_global_94];
  v9 = [v6 setWithArray:v8];
  [(MRIRRoute *)v4 setNodes:v9];

  [(MRIRRoute *)v4 setDonateAsCandidate:1];

  return v4;
}

+ (id)routeWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (!endpointCopy)
  {
    [(MRIRRoute *)a2 routeWithEndpoint:self];
  }

  resolvedOutputDevices = [endpointCopy resolvedOutputDevices];
  v7 = [self routeWithOutputDevices:resolvedOutputDevices];

  return v7;
}

+ (id)routeWithOutputDevices:(id)devices
{
  v50 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v3 = [devicesCopy copy];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v9 = 1;
    v10 = MEMORY[0x1E695E0F0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        if ([v12 clusterType])
        {
          clusterCompositionOutputDevices = [v12 clusterCompositionOutputDevices];
          v14 = clusterCompositionOutputDevices;
          if (clusterCompositionOutputDevices)
          {
            v15 = clusterCompositionOutputDevices;
          }

          else
          {
            v15 = v10;
          }

          v16 = v15;

          [v4 addObjectsFromArray:v16];
          v17 = [v16 count];
          if (v17 != [v12 configuredClusterSize])
          {
            v18 = _MRLogForCategory(0xDuLL);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [v12 uid];
              v36 = [v16 count];
              configuredClusterSize = [v12 configuredClusterSize];
              v20 = [v12 debugDescription];
              *buf = 138413058;
              v42 = v19;
              v43 = 2048;
              v44 = v36;
              v45 = 2048;
              v46 = configuredClusterSize;
              v47 = 2112;
              v48 = v20;
              _os_log_error_impl(&dword_1A2860000, v18, OS_LOG_TYPE_ERROR, "[MRDRRC].IRR Donations disallowed, cluster %@ has %lu members, expected %lu; device: %@", buf, 0x2Au);
            }

            v9 = 0;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 1;
  }

  v21 = [v5 arrayByAddingObjectsFromArray:v4];
  v22 = [v21 mr_all:&__block_literal_global_123_0];
  v23 = [v5 msv_map:&__block_literal_global_126_0];
  v24 = [v4 msv_map:&__block_literal_global_128];
  v25 = [v23 msv_compactMap:&__block_literal_global_131_0];
  v26 = [v25 sortedArrayUsingSelector:sel_compare_];

  v27 = objc_alloc_init(MRIRRoute);
  v28 = [v26 componentsJoinedByString:@"|"];
  [(MRIRRoute *)v27 setRouteIdentifier:v28];

  [(MRIRRoute *)v27 setDonateAsCandidate:v22 & v9];
  v29 = [devicesCopy msv_firstWhere:&__block_literal_global_135_0];

  if (v29 && [devicesCopy count] != 1)
  {
    [(MRIRRoute *)v27 setDonateAsCandidate:0];
  }

  v30 = [v23 arrayByAddingObjectsFromArray:v24];
  v31 = [MEMORY[0x1E695DFD8] setWithArray:v30];
  [(MRIRRoute *)v27 setNodes:v31];

  v32 = *MEMORY[0x1E69E9840];

  return v27;
}

BOOL __36__MRIRRoute_routeWithOutputDevices___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 deviceType] == 1 || objc_msgSend(v2, "deviceType") == 4;

  return v3;
}

uint64_t __36__MRIRRoute_routeWithOutputDevices___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 deviceType] == 1)
  {
    v3 = [v2 supportsBufferedAirPlay] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)debugRouteWithDebugIdentifier:(id)identifier
{
  v3 = [identifier componentsSeparatedByString:@"/"];
  firstObject = [v3 firstObject];
  lastObject = [v3 lastObject];
  v6 = [lastObject componentsSeparatedByString:@"&"];

  v7 = objc_alloc_init(MRIRRoute);
  [(MRIRRoute *)v7 setRouteIdentifier:firstObject];
  v8 = MEMORY[0x1E695DFD8];
  v9 = [v6 msv_map:&__block_literal_global_144_0];
  v10 = [v8 setWithArray:v9];
  [(MRIRRoute *)v7 setNodes:v10];

  [(MRIRRoute *)v7 setDonateAsCandidate:1];

  return v7;
}

MRIRNode *__43__MRIRRoute_debugRouteWithDebugIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 isEqualToString:@"Speaker"];
  v3 = -[MRIRNode initWithAVOutputDeviceID:isLocal:]([MRIRNode alloc], "initWithAVOutputDeviceID:isLocal:", v2, [v2 isEqualToString:@"Speaker"] & 1);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else if ([(MRIRRoute *)equalCopy conformsToProtocol:&unk_1F15B2568])
  {
    v6 = v5;
    routeIdentifier = [(MRIRRoute *)self routeIdentifier];
    routeIdentifier2 = [(MRIRRoute *)v6 routeIdentifier];
    if (routeIdentifier == routeIdentifier2)
    {
      v9 = 1;
    }

    else
    {
      v9 = [routeIdentifier isEqual:routeIdentifier2];
    }

    nodes = [(MRIRRoute *)self nodes];
    nodes2 = [(MRIRRoute *)v6 nodes];
    if (nodes != nodes2)
    {
      nodes3 = [(MRIRRoute *)self nodes];
      nodes4 = [(MRIRRoute *)v6 nodes];
      v9 &= [nodes3 isEqualToSet:nodes4];
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

+ (void)routeWithEndpoint:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRRouteRepresentable.m" lineNumber:110 description:@"endpoint cannot be nil"];
}

@end