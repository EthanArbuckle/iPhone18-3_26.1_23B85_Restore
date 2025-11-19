@interface MemoryEfficientTracepointBuffer
@end

@implementation MemoryEfficientTracepointBuffer

uint64_t __68___MemoryEfficientTracepointBuffer_iterateChunksAndFillEvent_block___block_invoke(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = *a2;
  if (*a2 != 24589)
  {
    if (v6 == 24587)
    {
      if (a3 == *(*(a1 + 80) + 27))
      {
        v7 = *(*(a1 + 32) + 96);
        v8 = *(a1 + 88);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __68___MemoryEfficientTracepointBuffer_iterateChunksAndFillEvent_block___block_invoke_2;
        v27[3] = &__block_descriptor_40_e164___catalog_s__catalog_hdr_s_SQ___os_trace_uuid_map_s___os_trace_str_map_s_Q__os_procinfo_map_s_QQ_subchunk_queue_t___catalog_subchunk_s____catalog_subchunk_s__Q_8__0l;
        v27[4] = a2;
        *(*(*(a1 + 56) + 8) + 24) = [v7 catalogForCDHash:v8 identifier:a3 generator:v27];
        *(*(*(a1 + 64) + 8) + 24) = *(*(*(*(a1 + 56) + 8) + 24) + 64);
      }
    }

    else if (v6 == 4096)
    {
      *(*(*(a1 + 48) + 8) + 24) = a2;
    }

    return 1;
  }

  v9 = *(*(*(a1 + 56) + 8) + 24);
  if (!v9)
  {
    return 1;
  }

  v10 = *(a1 + 80);
  if (a3 != *(v10 + 5))
  {
    *(*(*(a1 + 64) + 8) + 24) = **(*(*(a1 + 64) + 8) + 24);
    return 1;
  }

  v11 = *(*(*(a1 + 64) + 8) + 24);
  v12 = *(a1 + 40);
  v13 = *(*(*(a1 + 48) + 8) + 24);
  v14 = *(a1 + 32);
  v15 = v12;
  v47 = 0;
  v16 = v14[13];
  v17 = *v10;
  v18 = *(v10 + 5);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __TPChunkHelper_block_invoke;
  v46[3] = &__block_descriptor_48_e13__24__0_Q8_I16l;
  v46[4] = a2;
  v46[5] = v11;
  v19 = [v16 dataForCDHash:v17 identifier:v18 size:&v47 generator:v46];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (v19)
  {
    v20 = v19;
    v21 = v47;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v29 = __TPChunkHelper_block_invoke_2;
    v30 = &unk_2787AF200;
    v34 = v19;
    v35 = v10;
    v32 = &v42;
    v33 = &v38;
    v36 = v9;
    v37 = v13;
    v31 = v15;
    v22 = v28;
    v23 = 0;
    do
    {
      if (v21 - v23 < 0x10)
      {
        break;
      }

      v24 = *(v20 + v23 + 8);
      if (v21 - v23 - 16 < v24)
      {
        break;
      }

      if (!v29(v22))
      {
        break;
      }

      v23 = (v23 + v24 + 23) & 0xFFFFFFFFFFFFFFF8;
    }

    while (v23 - 1 < v21);

    if (*(v43 + 24) == 1)
    {
      v25 = *(v39 + 24);
    }

    else
    {
      v25 = 1;
      *(v39 + 24) = 1;
    }
  }

  else
  {
    v25 = 1;
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  result = 0;
  *(*(*(a1 + 72) + 8) + 24) = v25 & 1;
  return result;
}

void __101___MemoryEfficientTracepointBuffer_insertTracepoints_chunkOffset_chunkSetStartAddr_subchunk_options___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*(a2 + 16) & 0xFFFFFFFFFFFFLL) + *(*(a1 + 56) + 8);
  if (v3 <= *(a1 + 88))
  {
    v3 = *(a1 + 88);
  }

  if (v3 >= *(a1 + 96))
  {
    v4 = *(a1 + 96);
  }

  else
  {
    v4 = v3;
  }

  v5 = *(*(a1 + 104) + 16);
  v6 = a2 - *(a1 + 112);
  v7 = *(a1 + 120);
  v8 = *(a1 + 128);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v9;
  v11 = [v10 store];
  v12 = [v11 fileName];
  v13 = [v14 insertValuesIntoIndex:v6 coffset:v7 fileName:v12 sortKey:v4 type:3];

  *(v13 + 35) = v2;
  *(v13 + 43) = v5;
  *(v13 + 27) = v8;
}

uint64_t __86___MemoryEfficientTracepointBuffer_insertTimesyncPoints_forBoot_oldestContinuousTime___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) >= *(a1 + 40))
  {
    snprintf(__str, 0x1AuLL, "%016llx.timesync", *(*(a1 + 48) + 24));
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
    v6 = [v4 insertValuesIntoIndex:3735928559 coffset:3735928559 fileName:v5 sortKey:*(a2 + 8) type:1];

    v7 = *(a1 + 32);
    v8 = *(a2 + 16);
    v11[0] = *a2;
    v11[1] = v8;
    *(v6 + 31) = [v7 addTSEntry:v11];
    *(v6 + 27) = [*(a1 + 32) indexOfUUID:*(a1 + 56)];
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

void __56___MemoryEfficientTracepointBuffer_setupStoresForIndex___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = [v20 path];
  if (!v3)
  {
    v3 = "(null)";
  }

  __s1 = v3;
  v4 = strcmp(v3, "logdata.LiveData.tracev3");
  v5 = [*(a1 + 32) fileNames];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [*(a1 + 32) fileNames];
      v10 = [v9 objectAtIndexedSubscript:v8];

      v11 = *(*(a1 + 32) + 112);
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
      v13 = [v11 objectForKey:v12];

      if (!v13 && (!v4 && ([v10 containsString:@"logdata.LiveData.tracev3"] & 1) != 0 || !strcmp(__s1, objc_msgSend(v10, "UTF8String"))))
      {
        v22 = v7;
        v14 = [v20 copyMappedChunkStore:&v22];
        v15 = v22;

        if (v14)
        {
          v16 = *(*(a1 + 32) + 112);
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
          [v16 setObject:v14 forKey:v17];
        }

        v7 = v15;
      }

      ++v8;
      v18 = [*(a1 + 32) fileNames];
      v19 = [v18 count];
    }

    while (v8 < v19);
  }
}

uint64_t __90___MemoryEfficientTracepointBuffer_finishedInsertingTracepointsWithNextMajorTime_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 18);
  v4 = *(a3 + 18);
  v5 = v3 >= v4;
  if (v3 == v4)
  {
    v6 = *(a2 + 26);
    v7 = *(a3 + 26);
    v5 = v6 >= v7;
    if (v6 == v7)
    {
      if (v6 == 2)
      {
        v5 = *(a2 + 29) >= *(a3 + 29);
        v13 = 32;
        v14 = 36;
        goto LABEL_9;
      }

      if (v6 != 3)
      {
        return 0;
      }

      v8 = *(a2 + 43);
      v9 = *(a3 + 43);
      v5 = v8 >= v9;
      if (v8 == v9)
      {
        v10 = *(a2 + 35);
        v11 = *(a3 + 35);
        v5 = v10 >= v11;
        if (v10 == v11)
        {
          return *(a1 + 32);
        }
      }
    }
  }

  v13 = 36;
  v14 = 32;
LABEL_9:
  if (!v5)
  {
    v13 = v14;
  }

  return *(a1 + v13);
}

void __55___MemoryEfficientTracepointBuffer_init_dataCacheSize___block_invoke_2(int a1, int a2, int a3, int a4, void *a5)
{
  if (a4)
  {
    free(a5);
  }
}

@end