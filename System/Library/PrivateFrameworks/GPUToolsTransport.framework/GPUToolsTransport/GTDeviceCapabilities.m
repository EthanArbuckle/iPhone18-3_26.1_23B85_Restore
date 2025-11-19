@interface GTDeviceCapabilities
- (id)deviceCompatibilityCapabilitiesWithHeapDescriptors:(id)a3;
@end

@implementation GTDeviceCapabilities

- (id)deviceCompatibilityCapabilitiesWithHeapDescriptors:(id)a3
{
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  apr_initialize();
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v45 = 0;
  v46 = 0;
  v4 = [v3 objectForKeyedSubscript:@"heap-texture-info"];
  v5 = v4;
  v44 = 0;
  if (v4)
  {
    v45 = GTCapabilitiesHeapTextureInfo_deserialize(v4, newpool, &v44);
    v46 = v6;
  }

  v42 = 0;
  v43 = 0;
  v7 = [v3 objectForKeyedSubscript:@"heap-acceleration-structure-info"];
  v8 = v7;
  v41 = 0;
  if (v7)
  {
    v42 = GTCapabilitiesHeapAccelerationStructureInfo_deserialize(v7, newpool, &v41);
    v43 = v9;
  }

  v32 = v3;
  v10 = MTLCreateSystemDefaultDevice();
  v30 = v8;
  v31 = v5;
  v29 = v10;
  if (v10)
  {
    v51[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  }

  else
  {
    v11 = 0;
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v34 = *v38;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        p = 0;
        apr_pool_create_ex(&p, 0, 0, 0);
        v16 = GTCapabilitiesRuntime_fromDeviceSafe(v15, p);
        v17 = GTCapabilitiesRuntime_serialize(v16, 2049, p);
        v18 = GTCapabilitiesRuntime_heapTextureInfoCompatible(&v45, v16, v15);
        v19 = GTCapabilitiesRuntime_heapAccelerationStructureInfoCompatible(&v42, v16, v15);
        v48[0] = @"device-name";
        v20 = [v15 name];
        v49[0] = v20;
        v49[1] = v17;
        v48[1] = @"capabilities-runtime";
        v48[2] = @"heap-texture-compatibility";
        v21 = [MEMORY[0x277CCABB0] numberWithBool:v18];
        v49[2] = v21;
        v48[3] = @"heap-acceleration-structure-compatibility";
        v22 = [MEMORY[0x277CCABB0] numberWithBool:v19];
        v49[3] = v22;
        v48[4] = @"heap-texture-info-decoded";
        v23 = [MEMORY[0x277CCABB0] numberWithInt:v44 ^ 1u];
        v49[4] = v23;
        v48[5] = @"heap-acceleration-structure-info-decoded";
        v24 = [MEMORY[0x277CCABB0] numberWithInt:v41 ^ 1u];
        v49[5] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:6];
        [v35 addObject:v25];

        apr_pool_destroy(p);
      }

      v13 = [obj countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v13);
  }

  apr_pool_destroy(newpool);
  v26 = [v35 copy];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

@end