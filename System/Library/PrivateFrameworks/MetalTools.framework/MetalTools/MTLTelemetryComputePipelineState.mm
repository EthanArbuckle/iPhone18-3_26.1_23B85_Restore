@interface MTLTelemetryComputePipelineState
- (MTLTelemetryComputePipelineState)initWithComputePipelineState:(id)state reflection:(id)reflection parent:(id)parent descriptor:(id)descriptor;
- (void)accumulateUsage;
@end

@implementation MTLTelemetryComputePipelineState

- (void)accumulateUsage
{
  queue = self->device->queue;
  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__MTLTelemetryComputePipelineState_accumulateUsage__block_invoke;
    block[3] = &unk_2787B4A48;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

uint64_t *__51__MTLTelemetryComputePipelineState_accumulateUsage__block_invoke(uint64_t a1)
{
  v2 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((*(*(a1 + 32) + 56) + 472), (*(a1 + 32) + 52));
  result = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((*(*(a1 + 32) + 56) + 512), v2 + 5);
  ++*(result + 6);
  ++*(v2 + 6);
  return result;
}

- (MTLTelemetryComputePipelineState)initWithComputePipelineState:(id)state reflection:(id)reflection parent:(id)parent descriptor:(id)descriptor
{
  v14.receiver = self;
  v14.super_class = MTLTelemetryComputePipelineState;
  v9 = [(MTLToolsObject *)&v14 initWithBaseObject:state parent:parent];
  if (v9)
  {
    if ([parent enableTelemetry])
    {
      v9->device = parent;
      *(&v9->uniqueID + 1) = +[MTLTelemetryComputePipelineState generateUniqueID];
      v10 = [objc_msgSend(reflection "performanceStatistics")];
      v11 = *(parent + 91);
      if (v11)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __94__MTLTelemetryComputePipelineState_initWithComputePipelineState_reflection_parent_descriptor___block_invoke;
        block[3] = &unk_2787B4A70;
        block[4] = state;
        block[5] = v9;
        block[6] = v10;
        block[7] = parent;
        block[8] = reflection;
        dispatch_sync(v11, block);
      }
    }
  }

  return v9;
}

uint64_t __94__MTLTelemetryComputePipelineState_initWithComputePipelineState_reflection_parent_descriptor___block_invoke(uint64_t a1)
{
  v1 = a1;
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getComputeKernelTelemetryID];
  v26 = v1;
  v3 = v1[5];
  v1 += 5;
  v4 = *(v3 + 56);
  v34 = v2;
  __dst = (v3 + 52);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryComputePipelineUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v4 + 472), (v3 + 52));
  *(v5 + 5) = v2;
  *(v5 + 6) = 0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v26[6]];
  v7 = *(*v1 + 56);
  __dst = &v34;
  v8 = std::__hash_table<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,MTLTelemetryKernelUsageRec>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v7 + 512), &v34);
  *(v8 + 6) = 0;
  v8[4] = v6;
  v9 = *(*v1 + 56);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v26[6];
  v10 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v10)
  {
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [v13 UTF8String];
        v15 = strlen(v14);
        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v16 = v15;
        if (v15 >= 0x17)
        {
          operator new();
        }

        v29 = v15;
        if (v15)
        {
          memmove(&__dst, v14, v15);
        }

        *(&__dst + v16) = 0;
        v17 = [objc_msgSend(v26[6] objectForKey:{v13), "unsignedIntValue"}];
        p_dst = &__dst;
        v18 = std::__hash_table<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,MTLTelemetryStatisticUIRec>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v9 + 560), &__dst);
        if (v17)
        {
          v19 = *(v18 + 14);
          if (v19)
          {
            if (v17 > *(v18 + 11))
            {
              *(v18 + 11) = v17;
            }

            if (v17 >= *(v18 + 10))
            {
              goto LABEL_20;
            }
          }

          else
          {
            *(v18 + 11) = v17;
          }

          *(v18 + 10) = v17;
LABEL_20:
          v18[6] = v18[6] + v17;
          *(v18 + 14) = v19 + 1;
        }

        if (v29 < 0)
        {
          operator delete(__dst);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v10);
  }

  v20 = (v26 + 8);
  v21 = [v26[8] usageFlags];
  v22 = v26[7];
  v27 = v26 + 7;
  *(*(v22 + 552) + 4) += v21 & 1;
  *(*(*v27 + 552) + 8) += ([*v20 usageFlags] >> 1) & 1;
  *(*(*v27 + 552) + 12) += ([*v20 usageFlags] >> 2) & 1;
  result = [*v20 usageFlags];
  *(*(*v27 + 552) + 16) += (result >> 3) & 1;
  ++**(*v27 + 552);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

@end