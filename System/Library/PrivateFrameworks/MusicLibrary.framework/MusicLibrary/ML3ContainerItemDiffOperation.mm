@interface ML3ContainerItemDiffOperation
- (ML3ContainerItemDiffOperation)initWithContainerPersistentID:(int64_t)d updatedItemsPersistentIDs:(id)ds updatedItemsProperties:(id)properties connection:(id)connection;
- (void)main;
@end

@implementation ML3ContainerItemDiffOperation

- (void)main
{
  v122[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v114 = 0;
  v115 = &v114;
  v116 = 0x3032000000;
  v117 = __Block_byref_object_copy__9738;
  v118 = __Block_byref_object_dispose__9739;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__9738;
  v112 = __Block_byref_object_dispose__9739;
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v100 = 0;
  v101 = &v100;
  v102 = 0x5812000000;
  v103 = __Block_byref_object_copy__55;
  v104 = __Block_byref_object_dispose__56;
  v105 = "";
  memset(v106, 0, sizeof(v106));
  v107 = 1065353216;
  connection = self->_connection;
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_containerPersistentID];
  v122[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v122 count:1];
  v74 = [(ML3DatabaseConnection *)connection executeQuery:@"SELECT container_item_pid withParameters:item_pid, position, uuid, position_uuid, occurrence_id, subscription_store_item_id, cloud_universal_library_id, store_item_id, cloud_status, in_my_library, playback_endpoint_type FROM container_item LEFT OUTER JOIN item USING (item_pid) LEFT OUTER JOIN item_store USING (item_pid) WHERE container_pid = ? ORDER BY position", v4];

  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __37__ML3ContainerItemDiffOperation_main__block_invoke;
  v99[3] = &unk_278762B58;
  v99[4] = &v114;
  v99[5] = &v108;
  v99[6] = &v100;
  [v74 enumerateRowsWithBlock:v99];
  v79 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v5 = self->_updatedItemsPersistentIDs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v95 objects:v121 count:16];
  if (v6)
  {
    v7 = *v96;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v96 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v95 + 1) + 8 * i);
        v10 = [v109[5] objectForKeyedSubscript:v9];
        v11 = v10 == 0;

        if (v11)
        {
          [v79 addObject:v9];
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v95 objects:v121 count:16];
    }

    while (v6);
  }

  selfCopy2 = self;
  v73 = [(NSDictionary *)self->_updatedItemsProperties mutableCopy];
  v13 = [v79 count];
  if (v13)
  {
    v14 = 0;
    while (v13 > v14)
    {
      v15 = objc_autoreleasePoolPush();
      if (v13 - v14 >= 0x2710)
      {
        v16 = 10000;
      }

      else
      {
        v16 = v13 - v14;
      }

      v17 = +[ML3DatabaseStatementRenderer defaultRenderer];
      v18 = [v17 statementWithPrefix:@"SELECT item_pid inParameterCount:{subscription_store_item_id, cloud_universal_library_id, store_item_id, cloud_status, in_my_library, playback_endpoint_type FROM item LEFT OUTER JOIN item_store USING (item_pid) WHERE item_pid", v16}];

      v19 = [v79 subarrayWithRange:{v14, v16}];
      v20 = [(ML3DatabaseConnection *)self->_connection executeQuery:v18 withParameters:v19];
      v94[0] = MEMORY[0x277D85DD0];
      v94[1] = 3221225472;
      v94[2] = __37__ML3ContainerItemDiffOperation_main__block_invoke_2;
      v94[3] = &unk_2787653C8;
      v94[4] = &v108;
      [v20 enumerateRowsWithBlock:v94];

      v14 += v16;
      objc_autoreleasePoolPop(v15);
      selfCopy2 = self;
    }
  }

  v21 = [MEMORY[0x277CCA940] set];
  updatedItemsPersistentIDs = selfCopy2->_updatedItemsPersistentIDs;
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __37__ML3ContainerItemDiffOperation_main__block_invoke_3;
  v90[3] = &unk_278762B80;
  v93 = &v108;
  v72 = v21;
  v91 = v72;
  v84 = v73;
  v92 = v84;
  [(NSArray *)updatedItemsPersistentIDs enumerateObjectsUsingBlock:v90];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = selfCopy2->_updatedItemsPersistentIDs;
  v23 = [(NSArray *)obj countByEnumeratingWithState:&v86 objects:v120 count:16];
  if (v23)
  {
    v24 = 0;
    v83 = *v87;
    do
    {
      v25 = 0;
      do
      {
        if (*v87 != v83)
        {
          objc_enumerationMutation(obj);
        }

        longLongValue = [*(*(&v86 + 1) + 8 * v25) longLongValue];
        v27 = longLongValue;
        v28 = v101[7];
        if (!*&v28)
        {
          goto LABEL_39;
        }

        v29 = vcnt_s8(v28);
        v29.i16[0] = vaddlv_u8(v29);
        if (v29.u32[0] > 1uLL)
        {
          v30 = longLongValue;
          if (longLongValue >= *&v28)
          {
            v30 = longLongValue % *&v28;
          }
        }

        else
        {
          v30 = (*&v28 - 1) & longLongValue;
        }

        v31 = v101[6];
        v32 = *(v31 + 8 * v30);
        if (!v32 || (v33 = *v32) == 0)
        {
LABEL_39:
          v36 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
          v37 = [v84 objectForKeyedSubscript:v36];
          v38 = [v37 objectForKeyedSubscript:@"occurrence_id"];

          v39 = [ML3ContainerItemDiffMetadata diffMetadataWithPersistentID:0 containerPersistentID:self->_containerPersistentID itemPersistentID:v27 newPosition:v24 previousPosition:-1 uuid:&stru_28408B690 positionUUD:&stru_28408B690 occurrenceID:v38, v72];
          [array addObject:v39];
          goto LABEL_40;
        }

        v34 = *&v28 - 1;
        while (1)
        {
          v35 = v33[1];
          if (longLongValue == v35)
          {
            break;
          }

          if (v29.u32[0] > 1uLL)
          {
            if (v35 >= *&v28)
            {
              v35 %= *&v28;
            }
          }

          else
          {
            v35 &= v34;
          }

          if (v35 != v30)
          {
            goto LABEL_39;
          }

LABEL_38:
          v33 = *v33;
          if (!v33)
          {
            goto LABEL_39;
          }
        }

        if (v33[2] != longLongValue)
        {
          goto LABEL_38;
        }

        if (v29.u32[0] > 1uLL)
        {
          v40 = longLongValue;
          if (longLongValue >= *&v28)
          {
            v40 = longLongValue % *&v28;
          }
        }

        else
        {
          v40 = v34 & longLongValue;
        }

        v41 = *(v31 + 8 * v40);
        if (!v41 || (v42 = *v41) == 0)
        {
LABEL_87:
          std::__throw_out_of_range[abi:ne200100]();
        }

        while (2)
        {
          v43 = v42[1];
          if (v43 != longLongValue)
          {
            if (v29.u32[0] > 1uLL)
            {
              if (v43 >= *&v28)
              {
                v43 %= *&v28;
              }
            }

            else
            {
              v43 &= v34;
            }

            if (v43 != v40)
            {
              goto LABEL_87;
            }

LABEL_56:
            v42 = *v42;
            if (!v42)
            {
              goto LABEL_87;
            }

            continue;
          }

          break;
        }

        if (v42[2] != longLongValue)
        {
          goto LABEL_56;
        }

        v78 = v42[3];
        if (v42[4] == v78)
        {
          goto LABEL_39;
        }

        v44 = v115[5];
        v45 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
        v38 = [v44 objectForKeyedSubscript:v45];

        v46 = [MEMORY[0x277CCABB0] numberWithLongLong:v24];
        v39 = [v84 objectForKeyedSubscript:v46];

        if (v39)
        {
          v47 = v38;
          v48 = v39;
          v76 = v47;
          if (v47 == v48)
          {
            v49 = 1;
          }

          else
          {
            v49 = [v47 isEqual:v48];
          }

          v50 = v49 ^ 1;
        }

        else
        {
          v50 = 0;
        }

        if (v78[1] != v24 || (v50 & 1) != 0)
        {
          v51 = [v39 objectForKeyedSubscript:@"uuid"];
          v52 = v51;
          if (v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = &stru_28408B690;
          }

          v77 = v53;

          v54 = [v39 objectForKeyedSubscript:@"position_uuid"];
          v55 = v54;
          if (v54)
          {
            v56 = v54;
          }

          else
          {
            v56 = &stru_28408B690;
          }

          v75 = v56;

          v57 = [v39 objectForKeyedSubscript:@"occurrence_id"];
          v58 = v57;
          if (v57)
          {
            v59 = v57;
          }

          else
          {
            v59 = &stru_28408B690;
          }

          v60 = v59;

          v61 = [ML3ContainerItemDiffMetadata diffMetadataWithPersistentID:*v78 containerPersistentID:self->_containerPersistentID itemPersistentID:v27 newPosition:v24 previousPosition:v78[1] uuid:v77 positionUUD:v75 occurrenceID:v60];
          [array addObject:v61];
        }

        v63 = v42[3];
        v62 = v42[4];
        v64 = v63 + 2;
        if (v63 + 2 != v62)
        {
          do
          {
            v65 = v64[1];
            *(v64 - 2) = *v64;
            *(v64 - 1) = v65;
            v64 += 2;
          }

          while (v64 != v62);
          v63 = v64 - 2;
        }

        v42[4] = v63;
LABEL_40:

        ++v24;
        ++v25;
      }

      while (v25 != v23);
      v66 = [(NSArray *)obj countByEnumeratingWithState:&v86 objects:v120 count:16];
      v23 = v66;
    }

    while (v66);
  }

  v67 = v101[8];
  for (j = self; v67; v67 = *v67)
  {
    v69 = v67[3];
    for (k = v67[4]; v69 != k; j = self)
    {
      v71 = [ML3ContainerItemDiffMetadata diffMetadataWithPersistentID:*v69];
      [array2 addObject:v71];

      v69 += 2;
    }
  }

  [(ML3ContainerItemDiffOperation *)j setContainerItemsToUpdate:array];
  [(ML3ContainerItemDiffOperation *)j setContainerItemsToDelete:array2];

  _Block_object_dispose(&v100, 8);
  std::__hash_table<std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::vector<std::pair<long long,long long>>>>>::~__hash_table(v106);
  _Block_object_dispose(&v108, 8);

  _Block_object_dispose(&v114, 8);
}

void __37__ML3ContainerItemDiffOperation_main__block_invoke(void *a1, void *a2, void *a3)
{
  v56[3] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v46 = a3;
  v44 = v4;
  v45 = [v4 int64ForColumnIndex:0];
  v5 = [v4 int64ForColumnIndex:1];
  v47 = [v4 int64ForColumnIndex:2];
  v48 = [v4 stringForColumnIndex:3];
  v50 = [v4 stringForColumnIndex:4];
  v51 = [v4 stringForColumnIndex:5];
  v6 = [v4 int64ForColumnIndex:6];
  v49 = [v4 stringForColumnIndex:7];
  v7 = [v4 int64ForColumnIndex:8];
  v8 = [v4 int64ForColumnIndex:9];
  v9 = [v4 int64ForColumnIndex:10];
  v10 = [v4 int64ForColumnIndex:11];
  v55[0] = @"uuid";
  v55[1] = @"position_uuid";
  v56[0] = v48;
  v56[1] = v50;
  v55[2] = @"occurrence_id";
  v56[2] = v51;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
  v12 = *(*(a1[4] + 8) + 40);
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v47];
  [v12 setObject:v11 forKeyedSubscript:v13];

  v53[0] = @"item_store.subscription_store_item_id";
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
  v15 = v14;
  v16 = &stru_28408B690;
  if (v49)
  {
    v16 = v49;
  }

  v54[0] = v14;
  v54[1] = v16;
  v53[1] = @"item_store.cloud_universal_library_id";
  v53[2] = @"item_store.store_item_id";
  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
  v54[2] = v17;
  v53[3] = @"item_store.cloud_status";
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  v54[3] = v18;
  v53[4] = @"in_my_library";
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
  v54[4] = v19;
  v53[5] = @"item_store.playback_endpoint_type";
  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
  v54[5] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:6];
  v22 = *(*(a1[5] + 8) + 40);
  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  [v22 setObject:v21 forKeyedSubscript:v23];

  v24 = *(a1[6] + 8);
  v25 = v24[7];
  if (!*&v25)
  {
    goto LABEL_20;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = v5;
    if (v5 >= *&v25)
    {
      v27 = v5 % *&v25;
    }
  }

  else
  {
    v27 = (*&v25 - 1) & v5;
  }

  v28 = *(*&v24[6] + 8 * v27);
  if (!v28 || (v29 = *v28) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v30 = v29[1];
    if (v30 == v5)
    {
      break;
    }

    if (v26.u32[0] > 1uLL)
    {
      if (v30 >= *&v25)
      {
        v30 %= *&v25;
      }
    }

    else
    {
      v30 &= *&v25 - 1;
    }

    if (v30 != v27)
    {
      goto LABEL_20;
    }

LABEL_19:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_20;
    }
  }

  if (v29[2] != v5)
  {
    goto LABEL_19;
  }

  v32 = v29[4];
  v31 = v29[5];
  if (v32 >= v31)
  {
    v34 = v29[3];
    v35 = v32 - v34;
    v36 = (v32 - v34) >> 4;
    v37 = v36 + 1;
    if ((v36 + 1) >> 60)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v38 = v31 - v34;
    if (v38 >> 3 > v37)
    {
      v37 = v38 >> 3;
    }

    if (v38 >= 0x7FFFFFFFFFFFFFF0)
    {
      v39 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      if (!(v39 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v40 = v36;
    v41 = (16 * v36);
    *v41 = v45;
    v41[1] = v47;
    v33 = 16 * v36 + 16;
    v42 = &v41[-2 * v40];
    memcpy(v42, v34, v35);
    v43 = v29[3];
    v29[3] = v42;
    v29[4] = v33;
    v29[5] = 0;
    if (v43)
    {
      operator delete(v43);
    }
  }

  else
  {
    *v32 = v45;
    v32[1] = v47;
    v33 = (v32 + 2);
  }

  v29[4] = v33;
}

void __37__ML3ContainerItemDiffOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 int64ForColumnIndex:1];
  v6 = [v3 stringForColumnIndex:2];
  v22 = v6;
  v7 = [v3 int64ForColumnIndex:3];
  v8 = [v3 int64ForColumnIndex:4];
  v9 = [v3 int64ForColumnIndex:5];
  v10 = [v3 int64ForColumnIndex:6];
  v23[0] = @"item_store.subscription_store_item_id";
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
  v12 = v11;
  v13 = &stru_28408B690;
  if (v6)
  {
    v13 = v6;
  }

  v24[0] = v11;
  v24[1] = v13;
  v23[1] = @"item_store.cloud_universal_library_id";
  v23[2] = @"item_store.store_item_id";
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:v7];
  v24[2] = v14;
  v23[3] = @"item_store.cloud_status";
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  v24[3] = v15;
  v23[4] = @"in_my_library";
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
  v17 = v4;
  v24[4] = v16;
  v23[5] = @"item_store.playback_endpoint_type";
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
  v24[5] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
  v20 = *(*(*(a1 + 32) + 8) + 40);
  v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v17];
  [v20 setObject:v19 forKeyedSubscript:v21];
}

void __37__ML3ContainerItemDiffOperation_main__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = a2;
  v28 = [*(*(*(a1 + 48) + 8) + 40) objectForKeyedSubscript:?];
  v26 = [v28 objectForKeyedSubscript:@"item_store.subscription_store_item_id"];
  v24 = [v26 longLongValue];
  v25 = [v28 objectForKeyedSubscript:@"item_store.cloud_universal_library_id"];
  v4 = [v28 objectForKeyedSubscript:@"item_store.store_item_id"];
  v5 = [v4 longLongValue];
  v6 = [v29 longLongValue];
  v7 = [v28 objectForKeyedSubscript:@"item_store.cloud_status"];
  v8 = [v7 longLongValue];
  v9 = [v28 objectForKeyedSubscript:@"in_my_library"];
  v10 = [v9 BOOLValue];
  v11 = [v28 objectForKeyedSubscript:@"item_store.playback_endpoint_type"];
  v12 = ML3ContainerItemOccurrencePrefix(v24, v25, v5, v6, v8, v10, [v11 longLongValue]);

  v13 = [*(a1 + 32) countForObject:v12];
  [*(a1 + 32) addObject:v12];
  v14 = [v12 stringByAppendingFormat:@"_%lld", v13];
  v15 = *(a1 + 40);
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v17 = [v15 objectForKeyedSubscript:v16];
  v18 = [v17 mutableCopy];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x277CBEB38] dictionary];
  }

  v21 = v20;

  [v21 setObject:v14 forKeyedSubscript:@"occurrence_id"];
  v22 = *(a1 + 40);
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v22 setObject:v21 forKeyedSubscript:v23];
}

- (ML3ContainerItemDiffOperation)initWithContainerPersistentID:(int64_t)d updatedItemsPersistentIDs:(id)ds updatedItemsProperties:(id)properties connection:(id)connection
{
  dsCopy = ds;
  propertiesCopy = properties;
  connectionCopy = connection;
  v20.receiver = self;
  v20.super_class = ML3ContainerItemDiffOperation;
  v13 = [(ML3ContainerItemDiffOperation *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->_containerPersistentID = d;
    v15 = [dsCopy copy];
    updatedItemsPersistentIDs = v14->_updatedItemsPersistentIDs;
    v14->_updatedItemsPersistentIDs = v15;

    v17 = [propertiesCopy copy];
    updatedItemsProperties = v14->_updatedItemsProperties;
    v14->_updatedItemsProperties = v17;

    objc_storeStrong(&v14->_connection, connection);
  }

  return v14;
}

@end