@interface MTLTelemetryRenderPipelineState
- (MTLTelemetryRenderPipelineState)initWithPipelineState:(id)state reflection:(id)reflection parent:(id)parent descriptor:(id)descriptor;
- (void)accumulateUsage;
- (void)dealloc;
@end

@implementation MTLTelemetryRenderPipelineState

- (void)accumulateUsage
{
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((*&self->uniqueID + 272), &self->super.super._externalReferences + 1);
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((*&self->uniqueID + 312), v3 + 5);
  ++*(v4 + 8);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((*&self->uniqueID + 312), v3 + 6);
  ++*(v5 + 8);
  ++v3[7];
}

- (MTLTelemetryRenderPipelineState)initWithPipelineState:(id)state reflection:(id)reflection parent:(id)parent descriptor:(id)descriptor
{
  v47 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = MTLTelemetryRenderPipelineState;
  v10 = [(MTLToolsRenderPipelineState *)&v44 initWithBaseObject:state parent:parent];
  if (v10 && [parent enableTelemetry])
  {
    *(&v10->super.super._externalReferences + 1) = +[MTLTelemetryRenderPipelineState generateUniqueID];
    *&v10->uniqueID = parent;
    performanceStatistics = [reflection performanceStatistics];
    v12 = [performanceStatistics objectForKey:*MEMORY[0x277CD6A20]];
    v13 = [performanceStatistics objectForKey:*MEMORY[0x277CD6A18]];
    v14 = [v12 objectForKey:@"Telemetry Statistics"];
    v15 = [v13 objectForKey:@"Telemetry Statistics"];
    v16 = *(parent + 91);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __86__MTLTelemetryRenderPipelineState_initWithPipelineState_reflection_parent_descriptor___block_invoke;
    block[3] = &unk_2787B4D48;
    block[4] = state;
    block[5] = v10;
    block[6] = v14;
    block[7] = v15;
    block[8] = descriptor;
    block[9] = parent;
    block[10] = reflection;
    dispatch_sync(v16, block);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    constantSamplerDescriptors = [reflection constantSamplerDescriptors];
    v18 = [constantSamplerDescriptors countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (!v18)
    {
      goto LABEL_13;
    }

    v19 = v18;
    v20 = *v40;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v40 != v20)
        {
          objc_enumerationMutation(constantSamplerDescriptors);
        }

        if ([*(*(&v39 + 1) + 8 * i) maxAnisotropy] >= 2)
        {
          LOBYTE(v10->device) = 1;
          goto LABEL_13;
        }
      }

      v19 = [constantSamplerDescriptors countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v19);
LABEL_13:
    v34 = v10;
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    fragmentArguments = [reflection fragmentArguments];
    v25 = [fragmentArguments countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (!v25)
    {
      goto LABEL_25;
    }

    v26 = v25;
    v27 = *v36;
LABEL_15:
    v28 = 0;
    while (1)
    {
      if (*v36 != v27)
      {
        objc_enumerationMutation(fragmentArguments);
      }

      v29 = *(*(&v35 + 1) + 8 * v28);
      if (![v29 isActive])
      {
        goto LABEL_23;
      }

      type = [v29 type];
      v31 = v22;
      if (type == 3)
      {
        goto LABEL_22;
      }

      if (type == 2)
      {
        break;
      }

LABEL_23:
      if (v26 == ++v28)
      {
        v26 = [fragmentArguments countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (!v26)
        {
LABEL_25:
          v10 = v34;
          *&v34->hasAnisoConstantSampler = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v22];
          v34->activeFragmentSamplers = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v23];

          goto LABEL_26;
        }

        goto LABEL_15;
      }
    }

    v31 = v23;
LABEL_22:
    [v31 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(v29, "index"))}];
    goto LABEL_23;
  }

LABEL_26:
  v32 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __86__MTLTelemetryRenderPipelineState_initWithPipelineState_reflection_parent_descriptor___block_invoke(void *a1)
{
  v1 = a1;
  v63 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v59 = [v2 getVertexShaderTelemetryID];
  LODWORD(v2) = [v2 getFragmentShaderTelemetryID];
  v46 = v1;
  v3 = v1[5];
  v1 += 5;
  v4 = *(v3 + 40);
  v58 = v2;
  __p[0] = (v3 + 36);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderPipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v4 + 272), (v3 + 36));
  *(v5 + 5) = v59;
  *(v5 + 6) = v2;
  *(v5 + 7) = 0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v46[6]];
  v7 = *(*v1 + 40);
  __p[0] = &v59;
  v8 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v7 + 312), &v59);
  v8[3] = 1;
  *(v8 + 8) = 0;
  v8[5] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v46[7]];
  v10 = *(*v1 + 40);
  __p[0] = &v58;
  v11 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryRenderFuncUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v10 + 312), &v58);
  v11[3] = 2;
  *(v11 + 8) = 0;
  v11[5] = v9;
  v12 = *(*v1 + 40);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v13 = v46[6];
  v14 = [v13 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v14)
  {
    v15 = *v55;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v55 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v54 + 1) + 8 * i);
        std::string::basic_string[abi:ne200100]<0>(__p, [v17 UTF8String]);
        v18 = [objc_msgSend(v46[6] objectForKey:{v17), "unsignedIntValue"}];
        v60 = __p;
        v19 = std::__hash_table<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v12 + 360), __p);
        if (v18)
        {
          v20 = *(v19 + 14);
          if (v20)
          {
            if (v18 > *(v19 + 11))
            {
              *(v19 + 11) = v18;
            }

            if (v18 >= *(v19 + 10))
            {
              goto LABEL_14;
            }
          }

          else
          {
            *(v19 + 11) = v18;
          }

          *(v19 + 10) = v18;
LABEL_14:
          v19[6] = v19[6] + v18;
          *(v19 + 14) = v20 + 1;
        }

        if (v53 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v14);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v21 = v46[7];
  v22 = [v21 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v22)
  {
    v23 = *v49;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v49 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v48 + 1) + 8 * j);
        std::string::basic_string[abi:ne200100]<0>(__p, [v25 UTF8String]);
        v26 = [objc_msgSend(v46[7] objectForKey:{v25), "unsignedIntValue"}];
        v60 = __p;
        v27 = std::__hash_table<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v12 + 400), __p);
        if (v26)
        {
          v28 = *(v27 + 14);
          if (v28)
          {
            if (v26 > *(v27 + 11))
            {
              *(v27 + 11) = v26;
            }

            if (v26 >= *(v27 + 10))
            {
              goto LABEL_32;
            }
          }

          else
          {
            *(v27 + 11) = v26;
          }

          *(v27 + 10) = v26;
LABEL_32:
          v27[6] = v27[6] + v26;
          *(v27 + 14) = v28 + 1;
        }

        if (v53 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v22);
  }

  v29 = 0;
  v30 = v46;
  do
  {
    v31 = [objc_msgSend(objc_msgSend(v30[8] "colorAttachments")];
    v30 = v46;
    if (v31)
    {
      ++*(*(v46[9] + 352) + 4 * v29);
    }

    ++v29;
  }

  while (v29 != 8);
  v32 = v46 + 9;
  *(*(v46[9] + 352) + 32) += [v46[8] isAlphaTestEnabled];
  *(*(*v32 + 352) + 36) += [v46[8] isAlphaToOneEnabled];
  *(*(*v32 + 352) + 40) += [v46[8] isAlphaToCoverageEnabled];
  v33 = [v46[8] rasterSampleCount];
  if (v33)
  {
    v34 = *(v46[9] + 352);
    if (v34[22])
    {
      if (v34[19] < v33)
      {
        v34[19] = v33;
        v34 = *(v46[9] + 352);
      }

      v36 = v34[18];
      v35 = v34 + 18;
      if (v36 <= v33)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v34[19] = v33;
      v35 = (*(v46[9] + 352) + 72);
    }

    *v35 = v33;
LABEL_49:
    *(*(v46[9] + 352) + 80) += v33;
    ++*(*(v46[9] + 352) + 88);
  }

  v37 = [v46[8] colorSampleCount];
  if (v37)
  {
    v38 = *(v46[9] + 352);
    if (v38[16])
    {
      if (v38[13] < v37)
      {
        v38[13] = v37;
        v38 = *(v46[9] + 352);
      }

      v40 = v38[12];
      v39 = v38 + 12;
      if (v40 <= v37)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v38[13] = v37;
      v39 = (*(v46[9] + 352) + 48);
    }

    *v39 = v37;
LABEL_58:
    *(*(v46[9] + 352) + 56) += v37;
    ++*(*(v46[9] + 352) + 64);
  }

  v41 = (v46 + 10);
  v42 = [v46[10] usageFlags];
  v43 = v46[9];
  v47 = v46 + 9;
  *(*(v43 + 352) + 96) += v42 & 1;
  *(*(*v47 + 352) + 100) += ([*v41 usageFlags] >> 1) & 1;
  *(*(*v47 + 352) + 104) += ([*v41 usageFlags] >> 2) & 1;
  *(*(*v47 + 352) + 108) += ([*v41 usageFlags] >> 3) & 1;
  *(*(*v47 + 352) + 112) += ([*v41 usageFlags] >> 4) & 1;
  result = [*v41 usageFlags];
  *(*(*v47 + 352) + 116) += (result >> 5) & 1;
  ++*(*(*v47 + 352) + 120);
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  if ([*&self->uniqueID enableTelemetry])
  {
  }

  v3.receiver = self;
  v3.super_class = MTLTelemetryRenderPipelineState;
  [(MTLToolsRenderPipelineState *)&v3 dealloc];
}

@end