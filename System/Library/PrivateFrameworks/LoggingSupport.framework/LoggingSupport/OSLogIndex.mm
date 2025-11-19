@interface OSLogIndex
@end

@implementation OSLogIndex

uint64_t __108___OSLogIndex_enumerateEntriesInRange_options_usingCatalogFilter_catalogCacheSize_dataCacheSize_usingBlock___block_invoke(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 56);
  v6 = a2 + 1;
  v7 = *a2;
  v8 = [*(a1 + 32) tracepoints];
  v9 = [v8 getFileNameAt:*(a3 + 16)];
  [v5 _setLogEvent:a3 rangeUUIDIndex:v7 machTimebase:v6 traceFilename:v9];

  if (*a3 == 3 && [*(a1 + 56) type] == 1024 && objc_msgSend(*(a1 + 56), "_oversizeIdentifier"))
  {
    v10 = [*(a1 + 32) tracepoints];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v12 = [*(a1 + 32) tracepoints];
      v13 = *(a1 + 40);
      v14 = *(*(a3 + 88) + 8);
      v15 = [*(a1 + 56) _oversizeIdentifier];
      v16 = *(*(a3 + 88) + 16);
      v17 = *(a3 + 8);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __108___OSLogIndex_enumerateEntriesInRange_options_usingCatalogFilter_catalogCacheSize_dataCacheSize_usingBlock___block_invoke_2;
      v34[3] = &__block_descriptor_48_e39_B16__0___OSLogEnumeratorOversizeChunk_8lu32l8;
      v34[4] = *(a1 + 56);
      v34[5] = a3;
      [v12 findOversize:v13 process:v14 oversize_id:v15 pidversion:v16 timestamp:v17 block:v34];
      v18 = 0;
    }

    else
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v12 = [*(a1 + 32) oversizeChunks];
      v24 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v24)
      {
        v25 = v24;
        v18 = 0;
        v26 = *v31;
        while (2)
        {
          v27 = 0;
          v28 = v18;
          do
          {
            if (*v31 != v26)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v30 + 1) + 8 * v27);

            if ([v18 matches:objc_msgSend(*(a1 + 56) procinfo:{"_oversizeIdentifier"), *(a3 + 88)}])
            {
              [v18 fillProxy:*(a1 + 56)];
              v29 = [*(a1 + 32) oversizeChunks];
              [v29 removeObject:v18];
              goto LABEL_20;
            }

            ++v27;
            v28 = v18;
          }

          while (v25 != v27);
          v25 = [v12 countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }

        v29 = v18;
      }

      else
      {
        v29 = 0;
      }

      v18 = 0;
LABEL_20:
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = *(a1 + 56);
  v21 = (*(*(a1 + 48) + 16))();
  objc_autoreleasePoolPop(v19);
  [*(a1 + 56) _assertBalanced];

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __108___OSLogIndex_enumerateEntriesInRange_options_usingCatalogFilter_catalogCacheSize_dataCacheSize_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 matches:objc_msgSend(*(a1 + 32) procinfo:{"_oversizeIdentifier"), *(*(a1 + 40) + 88)}];
  if (v4)
  {
    [v3 fillProxy:*(a1 + 32)];
  }

  return v4;
}

uint64_t __59___OSLogIndex__enumerateEntriesInRange_options_usingBlock___block_invoke(uint64_t a1, uint64_t a2, int *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = objc_autoreleasePoolPush();
  memset(v30, 0, 236);
  v7 = *a3;
  if (*a3 == 3)
  {
    *(*(*(a1 + 48) + 8) + 56) = *(a3 + 5) + 16;
    *(*(*(a1 + 48) + 8) + 72) = *(a3 + 6);
    v17 = *(a3 + 12);
    _chunk_support_context_update((*(*(a1 + 48) + 8) + 32), *(a3 + 7));
    _chunk_support_convert_tracepoint(v17, v30, *(*(a1 + 48) + 8) + 32);
    v18 = 0;
    if (LODWORD(v30[0]) == 1024 && DWORD1(v30[12]))
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v19 = [*(a1 + 32) oversizeChunks];
      v20 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v20)
      {
        v18 = 0;
        v21 = *v27;
        while (2)
        {
          v22 = 0;
          v23 = v18;
          do
          {
            if (*v27 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v18 = *(*(&v26 + 1) + 8 * v22);

            if ([v18 matches:DWORD1(v30[12]) procinfo:*(*(*(a1 + 48) + 8) + 88)])
            {
              [v18 fillMessage:&v30[3] + 4];
              v20 = [*(a1 + 32) oversizeChunks];
              [v20 removeObject:v18];
              goto LABEL_24;
            }

            v22 = v22 + 1;
            v23 = v18;
          }

          while (v20 != v22);
          v20 = [v19 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }

        v20 = v18;
      }

      v18 = 0;
LABEL_24:
    }

    v3 = (*(*(a1 + 40) + 16))();
    if (LODWORD(v30[0]) == 2560)
    {
      free(*(&v30[8] + 12));
      *(&v30[8] + 12) = 0;
    }
  }

  else
  {
    if (v7 == 2)
    {
      v11 = *(a3 + 1);
      v12 = *(a3 + 56);
      v13 = *(a3 + 57);
      v14 = *(*(a1 + 48) + 8);
      *(v30 + 4) = 0uLL;
      *(&v30[1] + 4) = 0uLL;
      *(&v30[2] + 4) = 0uLL;
      *(&v30[3] + 4) = 0uLL;
      *(&v30[4] + 4) = 0uLL;
      *(&v30[5] + 4) = 0uLL;
      *(&v30[6] + 4) = 0uLL;
      *(&v30[7] + 4) = 0uLL;
      *(&v30[8] + 4) = 0uLL;
      *(&v30[9] + 4) = 0uLL;
      *(&v30[10] + 4) = 0uLL;
      *(&v30[11] + 4) = 0uLL;
      *(&v30[12] + 4) = 0uLL;
      *(&v30[13] + 4) = 0uLL;
      *(&v30[14] + 4) = 0;
      *(&v30[8] + 8) = *(a3 + 10);
      LODWORD(v30[0]) = 1280;
      *(&v30[9] + 12) = 1;
      BYTE4(v30[11]) = v12;
      if (v13 == 1)
      {
        *(&v30[9] + 12) = 3;
      }

      v15 = *(v14 + 120);
      if (!v15)
      {
        goto LABEL_10;
      }

      v16 = _timesync_continuous_to_wall_time(v15, &v30[8] + 1, v11, (&v30[6] + 12));
      v9 = v16 / 0x3B9ACA00;
      v10 = v16 % 0x3B9ACA00;
LABEL_9:
      *(&v30[5] + 12) = v9;
      DWORD1(v30[6]) = v10 / 0x3E8;
LABEL_10:
      v3 = (*(*(a1 + 40) + 16))();
      goto LABEL_28;
    }

    if (v7 == 1)
    {
      *(&v30[9] + 4) = 0uLL;
      *(&v30[8] + 4) = 0uLL;
      *(&v30[14] + 4) = 0;
      *(&v30[13] + 4) = 0uLL;
      *(&v30[12] + 4) = 0uLL;
      *(&v30[11] + 4) = 0uLL;
      *(&v30[10] + 4) = 0uLL;
      *(&v30[7] + 4) = 0uLL;
      *(&v30[6] + 4) = 0uLL;
      *(&v30[5] + 4) = 0uLL;
      *(&v30[4] + 4) = 0uLL;
      *(&v30[3] + 4) = 0uLL;
      *(&v30[2] + 4) = 0uLL;
      *(&v30[1] + 4) = 0uLL;
      *(v30 + 4) = 0uLL;
      *(&v30[8] + 8) = *(a3 + 10);
      LODWORD(v30[0]) = 1280;
      v8 = *(a3 + 9);
      *(&v30[10] + 4) = *(a3 + 8);
      *(&v30[10] + 12) = v8;
      *(&v30[3] + 12) = *(&v30[10] + 4);
      *(&v30[6] + 12) = *(a3 + 10);
      v9 = v8 / 0x3B9ACA00;
      v10 = v8 % 0x3B9ACA00;
      goto LABEL_9;
    }
  }

LABEL_28:
  objc_autoreleasePoolPop(v6);
  v24 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

@end