@interface MRIRRoute
+ (id)debugRouteWithDebugIdentifier:(id)a3;
+ (id)routeWithCandidate:(id)a3;
+ (id)routeWithEndpoint:(id)a3;
+ (id)routeWithOutputDevices:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
@end

@implementation MRIRRoute

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  v7 = [(MRIRRoute *)self routeIdentifier];
  [v6 appendFormat:@"routeIdentifier: %@", v7];

  v8 = [(MRIRRoute *)self nodes];
  [v6 appendFormat:@", nodes: %@", v8];

  v9 = [(MRIRRoute *)self donateAsCandidate];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  [v6 appendFormat:@", donateAsCandidate: %@", v10];
  [v6 appendString:@">"];

  return v6;
}

+ (id)routeWithCandidate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MRIRRoute);
  v5 = [v3 candidateIdentifier];
  [(MRIRRoute *)v4 setRouteIdentifier:v5];

  v6 = MEMORY[0x1E695DFD8];
  v7 = [v3 nodes];

  v8 = [v7 msv_map:&__block_literal_global_94];
  v9 = [v6 setWithArray:v8];
  [(MRIRRoute *)v4 setNodes:v9];

  [(MRIRRoute *)v4 setDonateAsCandidate:1];

  return v4;
}

+ (id)routeWithEndpoint:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(MRIRRoute *)a2 routeWithEndpoint:a1];
  }

  v6 = [v5 resolvedOutputDevices];
  v7 = [a1 routeWithOutputDevices:v6];

  return v7;
}

+ (id)routeWithOutputDevices:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v3 = [v34 copy];
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
          v13 = [v12 clusterCompositionOutputDevices];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
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
              v35 = [v12 configuredClusterSize];
              v20 = [v12 debugDescription];
              *buf = 138413058;
              v42 = v19;
              v43 = 2048;
              v44 = v36;
              v45 = 2048;
              v46 = v35;
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
  v29 = [v34 msv_firstWhere:&__block_literal_global_135_0];

  if (v29 && [v34 count] != 1)
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

+ (id)debugRouteWithDebugIdentifier:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"/"];
  v4 = [v3 firstObject];
  v5 = [v3 lastObject];
  v6 = [v5 componentsSeparatedByString:@"&"];

  v7 = objc_alloc_init(MRIRRoute);
  [(MRIRRoute *)v7 setRouteIdentifier:v4];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    LOBYTE(v9) = 1;
  }

  else if ([(MRIRRoute *)v4 conformsToProtocol:&unk_1F15B2568])
  {
    v6 = v5;
    v7 = [(MRIRRoute *)self routeIdentifier];
    v8 = [(MRIRRoute *)v6 routeIdentifier];
    if (v7 == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = [v7 isEqual:v8];
    }

    v10 = [(MRIRRoute *)self nodes];
    v11 = [(MRIRRoute *)v6 nodes];
    if (v10 != v11)
    {
      v12 = [(MRIRRoute *)self nodes];
      v13 = [(MRIRRoute *)v6 nodes];
      v9 &= [v12 isEqualToSet:v13];
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