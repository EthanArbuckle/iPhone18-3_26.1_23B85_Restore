@interface CLSBusinessCacheUpdater
- (CLSBusinessCacheUpdater)initWithBusinessCategoryCache:(id)cache;
- (id)_resolvedBusinessMUIDs:(id)ds progressBlock:(id)block error:(id *)error;
- (id)enrichedBusinessItemsByMuidsForBusinessItems:(id)items progressBlock:(id)block;
- (id)enrichedBusinessItemsByMuidsForMuids:(id)muids progressBlock:(id)block;
@end

@implementation CLSBusinessCacheUpdater

- (id)_resolvedBusinessMUIDs:(id)ds progressBlock:(id)block error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  blockCopy = block;
  v10 = _Block_copy(blockCopy);
  v11 = v10;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  if (v10 && (LOBYTE(v39) = 0, (*(v10 + 2))(v10, &v39, 0.0), v12 = *(v46 + 24) | v39, *(v46 + 24) = v12, (v12 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      buf = 0xEB04000100;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
    }

    v13 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v14 = [dsCopy count];
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_3839];
    v29 = [dsCopy filteredArrayUsingPredicate:v15];

    if ([v29 count] != v14)
    {
      v16 = +[CLSLogging sharedLogging];
      loggingConnection = [v16 loggingConnection];

      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_INFO, "Removed invalid muids from business item muids to resolve", &buf, 2u);
      }
    }

    errorCopy = error;
    v19 = blockCopy;
    v20 = dispatch_block_create(0, &__block_literal_global_21);
    buf = 0;
    p_buf = &buf;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__3842;
    v54 = __Block_byref_object_dispose__3843;
    v55 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__3842;
    v43 = __Block_byref_object_dispose__3843;
    v44 = 0;
    v21 = [[CLSBusinessGeoServiceQuery alloc] initWithMUIDs:v29];
    v22 = [[CLSGeoMapQueryHelper alloc] initWithQueryObject:v21];
    v23 = self->_businessCategoryCache;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __70__CLSBusinessCacheUpdater__resolvedBusinessMUIDs_progressBlock_error___block_invoke_24;
    v36[3] = &unk_2788A7ED0;
    v24 = v11;
    v37 = v24;
    v38 = &v45;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __70__CLSBusinessCacheUpdater__resolvedBusinessMUIDs_progressBlock_error___block_invoke_2;
    v31[3] = &unk_2788A7EF8;
    v34 = &buf;
    v35 = &v39;
    v25 = v23;
    v32 = v25;
    v26 = v20;
    v33 = v26;
    [(CLSGeoMapQueryHelper *)v22 launchQueryWithCancellerBlock:v36 completionBlock:v31];
    dispatch_block_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    blockCopy = v19;
    if (errorCopy)
    {
      *errorCopy = p_buf[5];
    }

    if (v11 && (v30 = 0, (*(v24 + 2))(v24, &v30, 1.0), v27 = *(v46 + 24) | v30, *(v46 + 24) = v27, (v27 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v49[0] = 67109120;
        v49[1] = 280;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", v49, 8u);
      }

      v13 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v13 = v40[5];
    }

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&buf, 8);

    dsCopy = v29;
  }

  _Block_object_dispose(&v45, 8);

  return v13;
}

uint64_t __70__CLSBusinessCacheUpdater__resolvedBusinessMUIDs_progressBlock_error___block_invoke_24(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v5 = 0;
    result = (*(result + 16))(result, &v5, 0.5);
    *(*(*(a1 + 40) + 8) + 24) |= v5;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

void __70__CLSBusinessCacheUpdater__resolvedBusinessMUIDs_progressBlock_error___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (a2)
  {
    v10 = [v9 resultingMapItems];
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * v16);
          v18 = [CLSBusinessItem alloc];
          v19 = [(CLSBusinessItem *)v18 initFromMapItem:v17 isoCountryCode:0 categoryOnly:0, v23];
          if (v19)
          {
            [v11 addObject:v19];
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    v20 = [*(a1 + 32) updateBusinessItems:v11];
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }

  (*(*(a1 + 40) + 16))();
}

BOOL __70__CLSBusinessCacheUpdater__resolvedBusinessMUIDs_progressBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 unsignedLongLongValue];

  return [CLSLocationOfInterest isValidMuid:v2];
}

- (id)enrichedBusinessItemsByMuidsForMuids:(id)muids progressBlock:(id)block
{
  v79 = *MEMORY[0x277D85DE8];
  muidsCopy = muids;
  blockCopy = block;
  v8 = _Block_copy(blockCopy);
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v38 = blockCopy;
  v39 = v8;
  if (!v8 || (LOBYTE(v58) = 0, (*(v8 + 2))(v8, &v58, 0.0), v9 = *(v67 + 24) | v58, *(v67 + 24) = v9, (v9 & 1) == 0))
  {
    v37 = [muidsCopy count];
    v11 = [(CLSBusinessCategoryCache *)self->_businessCategoryCache businessItemsForMuids:muidsCopy];
    v12 = [muidsCopy mutableCopy];
    selfCopy = self;
    v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v37];
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v62 objects:v78 count:16];
    if (v15)
    {
      v16 = *v63;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v63 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v62 + 1) + 8 * i);
          v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v18, "muid")}];
          if ([v18 isEnriched])
          {
            [v13 setObject:v18 forKeyedSubscript:v19];
            [v12 removeObject:v19];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v62 objects:v78 count:16];
      }

      while (v15);
    }

    if (v39)
    {
      LOBYTE(v58) = 0;
      (v39)[2](v39, &v58, 0.2);
      v20 = *(v67 + 24) | v58;
      *(v67 + 24) = v20;
      if (v20)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = 165;
          _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
        }

        v10 = MEMORY[0x277CBEC10];
        goto LABEL_47;
      }
    }

    v34 = [v13 count];
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    if (![v12 count])
    {
      goto LABEL_40;
    }

    v21 = [v12 count];
    v22 = [MEMORY[0x277CBEB58] setWithCapacity:30];
    *buf = 0;
    v71 = buf;
    v72 = 0x2020000000;
    LOBYTE(v73) = 0;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v57 = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__CLSBusinessCacheUpdater_enrichedBusinessItemsByMuidsForMuids_progressBlock___block_invoke;
    aBlock[3] = &unk_2788A7E88;
    v48 = &v66;
    v49 = buf;
    v52 = 0x3FC999999999999ALL;
    v50 = &v58;
    v47 = v39;
    aBlock[4] = selfCopy;
    v23 = v22;
    v53 = 1.0 / v21 * 0.8;
    v45 = v23;
    v51 = &v54;
    v46 = v13;
    v24 = _Block_copy(aBlock);
    v36 = muidsCopy;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = v12;
    v26 = [v25 countByEnumeratingWithState:&v40 objects:v77 count:16];
    if (v26)
    {
      v27 = *v41;
LABEL_23:
      v28 = 0;
      while (1)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v25);
        }

        [v23 addObject:*(*(&v40 + 1) + 8 * v28)];
        if ([v23 count] >= 0x1F)
        {
          v24[2](v24);
        }

        if (v55[3])
        {
          break;
        }

        if (*(v67 + 24) == 1)
        {
          muidsCopy = v36;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *v75 = 67109120;
            v76 = 214;
            _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", v75, 8u);
          }

          v29 = 0;
          goto LABEL_39;
        }

        if (v26 == ++v28)
        {
          v26 = [v25 countByEnumeratingWithState:&v40 objects:v77 count:16];
          if (v26)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    muidsCopy = v36;
    if ([v23 count] && (v55[3] & 1) == 0)
    {
      v24[2](v24);
    }

    v29 = 1;
LABEL_39:

    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(buf, 8);

    if (v29)
    {
LABEL_40:
      v30 = [v13 count];
      v31 = v59[3];
      *buf = v37;
      v71 = (v30 - v34);
      v72 = v34;
      v73 = v31;
      v74 = 30;
      CLSPrintQueryPerformerProtocolStatisticsDescription(@"CLSBusinessGeoQuery.enrichByMUID", buf);
      if (!v39 || (LOBYTE(v54) = 0, (v39)[2](v39, &v54, 1.0), v32 = *(v67 + 24) | v54, *(v67 + 24) = v32, (v32 & 1) == 0))
      {
        v10 = v13;
        goto LABEL_46;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = 228;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
      }
    }

    v10 = MEMORY[0x277CBEC10];
LABEL_46:
    _Block_object_dispose(&v58, 8);
LABEL_47:

    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = 146;
    _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", buf, 8u);
  }

  v10 = MEMORY[0x277CBEC10];
LABEL_48:
  _Block_object_dispose(&v66, 8);

  return v10;
}

void __78__CLSBusinessCacheUpdater_enrichedBusinessItemsByMuidsForMuids_progressBlock___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 && (buf[0] = 0, (*(v2 + 16))(v2, buf, *(a1 + 96)), *(*(*(a1 + 64) + 8) + 24) |= buf[0], (*(*(*(a1 + 64) + 8) + 24) & 1) != 0))
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else
  {
    ++*(*(*(a1 + 80) + 8) + 24);
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) allObjects];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __78__CLSBusinessCacheUpdater_enrichedBusinessItemsByMuidsForMuids_progressBlock___block_invoke_2;
    v23[3] = &unk_2788A7E38;
    v5 = *(a1 + 56);
    v26 = *(a1 + 96);
    v6 = *(a1 + 64);
    v24 = v5;
    v25 = v6;
    v22 = 0;
    v7 = [v3 _resolvedBusinessMUIDs:v4 progressBlock:v23 error:&v22];
    v8 = v22;

    if (v8)
    {
      *(*(*(a1 + 88) + 8) + 24) = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v8;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Received a GeoService error, stopping Business Item resolution: (%@)", buf, 0xCu);
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v17 = v7;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            v15 = *(a1 + 48);
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v14, "muid")}];
            [v15 setObject:v14 forKeyedSubscript:v16];
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v27 count:16];
        }

        while (v11);
      }

      [*(a1 + 40) removeAllObjects];
      v7 = v17;
    }
  }
}

uint64_t __78__CLSBusinessCacheUpdater_enrichedBusinessItemsByMuidsForMuids_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v6 = 0;
    result = (*(result + 16))(result, &v6, *(a1 + 48) + *(a1 + 56) * a3);
    *(*(*(a1 + 40) + 8) + 24) |= v6;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

- (id)enrichedBusinessItemsByMuidsForBusinessItems:(id)items progressBlock:(id)block
{
  v88 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  blockCopy = block;
  v6 = _Block_copy(blockCopy);
  v7 = v6;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 0;
  v44 = blockCopy;
  if (v6 && (LOBYTE(v70) = 0, (*(v6 + 2))(v6, &v70, 0.0), v8 = *(v79 + 24) | v70, *(v79 + 24) = v8, (v8 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *&buf = 0x2B04000100;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
    }

    v9 = MEMORY[0x277CBEC10];
  }

  else
  {
    v10 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = [itemsCopy count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[CLSBusinessCacheUpdater] Starting to enrich:%lu business items by MUID", &buf, 0xCu);
    }

    v45 = v7;

    v13 = [itemsCopy count];
    v50 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v13];
    v43 = v13;
    v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:v13];
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v14 = itemsCopy;
    v15 = [v14 countByEnumeratingWithState:&v74 objects:v87 count:16];
    if (v15)
    {
      v16 = MEMORY[0x277D86220];
      v17 = *v75;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v75 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v74 + 1) + 8 * i);
          muid = [v19 muid];
          if ([v19 isEnriched])
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buf) = 0;
              _os_log_debug_impl(&dword_22F907000, v16, OS_LOG_TYPE_DEBUG, "[CLSBusinessCacheUpdater] Finished enriching business item", &buf, 2u);
            }

            v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:muid];
            [v50 setObject:v19 forKeyedSubscript:v21];
          }

          else
          {
            v21 = [(CLSBusinessCategoryCache *)self->_businessCategoryCache businessItemsForMuid:muid];
            isEnriched = [v21 isEnriched];
            v23 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
            if (isEnriched)
            {
              if (v23)
              {
                LOWORD(buf) = 0;
                _os_log_debug_impl(&dword_22F907000, v16, OS_LOG_TYPE_DEBUG, "[CLSBusinessCacheUpdater] Finished enriching business item from cache", &buf, 2u);
              }

              v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:muid];
              [v50 setObject:v21 forKeyedSubscript:v24];
            }

            else
            {
              if (v23)
              {
                LOWORD(buf) = 0;
                _os_log_debug_impl(&dword_22F907000, v16, OS_LOG_TYPE_DEBUG, "[CLSBusinessCacheUpdater] Business item is not enriched. Adding to resolve queue", &buf, 2u);
              }

              [v47 addObject:v19];
            }
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v74 objects:v87 count:16];
      }

      while (v15);
    }

    v25 = v45;
    if (v45 && (LOBYTE(v70) = 0, (v45)[2](v45, &v70, 0.1), v26 = *(v79 + 24) | v70, *(v79 + 24) = v26, (v26 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *&buf = 0x4B04000100;
        _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
      }

      v9 = MEMORY[0x277CBEC10];
    }

    else
    {
      v27 = [v50 count];
      v70 = 0;
      v71 = &v70;
      v72 = 0x2020000000;
      v73 = 0;
      if ([v47 count])
      {
        v28 = [v47 count];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v83 = 0x2020000000;
        LOBYTE(v84) = 0;
        v66 = 0;
        v67 = &v66;
        v68 = 0x2020000000;
        v69 = 0;
        v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:30];
        v30 = 1.0 / v28 * 0.8;
        v31 = self->_businessCategoryCache;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __86__CLSBusinessCacheUpdater_enrichedBusinessItemsByMuidsForBusinessItems_progressBlock___block_invoke;
        aBlock[3] = &unk_2788A7E60;
        v60 = &v78;
        p_buf = &buf;
        v64 = 0x3FB999999999999ALL;
        v62 = &v70;
        v59 = v45;
        aBlock[4] = self;
        v32 = v29;
        v65 = v30;
        v56 = v32;
        v63 = &v66;
        v49 = v31;
        v57 = v49;
        v58 = v50;
        v33 = _Block_copy(aBlock);
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v34 = v47;
        v35 = [v34 countByEnumeratingWithState:&v51 objects:v86 count:16];
        if (v35)
        {
          v36 = *v52;
LABEL_34:
          v37 = 0;
          while (1)
          {
            if (*v52 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(*(&v51 + 1) + 8 * v37), "muid")}];
            [v32 addObject:v38];

            if ([v32 count] >= 0x1E)
            {
              v33[2](v33);
            }

            if (v67[3])
            {
              break;
            }

            if (v35 == ++v37)
            {
              v35 = [v34 countByEnumeratingWithState:&v51 objects:v86 count:16];
              if (v35)
              {
                goto LABEL_34;
              }

              break;
            }
          }
        }

        if ([v32 count] && (v67[3] & 1) == 0)
        {
          v33[2](v33);
        }

        _Block_object_dispose(&v66, 8);
        _Block_object_dispose(&buf, 8);
        v25 = v45;
      }

      v39 = [v50 count];
      v40 = v71[3];
      *&buf = v43;
      *(&buf + 1) = v39 - v27;
      v83 = v27;
      v84 = v40;
      v85 = 30;
      CLSPrintQueryPerformerProtocolStatisticsDescription(@"CLSBusinessGeoQuery.enrichBusiness", &buf);
      if (v25 && (LOBYTE(v66) = 0, (v25)[2](v25, &v66, 1.0), v41 = *(v79 + 24) | v66, *(v79 + 24) = v41, (v41 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *&buf = 0x8B04000100;
          _os_log_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d", &buf, 8u);
        }

        v9 = MEMORY[0x277CBEC10];
      }

      else
      {
        v9 = v50;
      }

      _Block_object_dispose(&v70, 8);
    }

    v7 = v45;
  }

  _Block_object_dispose(&v78, 8);

  return v9;
}

void __86__CLSBusinessCacheUpdater_enrichedBusinessItemsByMuidsForBusinessItems_progressBlock___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  if (v2 && (buf[0] = 0, (*(v2 + 16))(v2, buf, *(a1 + 104)), *(*(*(a1 + 72) + 8) + 24) |= buf[0], (*(*(*(a1 + 72) + 8) + 24) & 1) != 0))
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
  }

  else
  {
    ++*(*(*(a1 + 88) + 8) + 24);
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __86__CLSBusinessCacheUpdater_enrichedBusinessItemsByMuidsForBusinessItems_progressBlock___block_invoke_2;
    v24[3] = &unk_2788A7E38;
    v5 = *(a1 + 64);
    v27 = *(a1 + 104);
    v6 = *(a1 + 72);
    v25 = v5;
    v26 = v6;
    v23 = 0;
    v7 = [v3 _resolvedBusinessMUIDs:v4 progressBlock:v24 error:&v23];
    v8 = v23;
    if (v8)
    {
      *(*(*(a1 + 96) + 8) + 24) = 1;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v8;
        _os_log_error_impl(&dword_22F907000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Received a GeoService error, stopping Business Item resolution: (%@)", buf, 0xCu);
      }
    }

    else
    {
      v9 = [*(a1 + 48) updateBusinessItems:v7];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v18 = v7;
      v10 = v7;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            v16 = *(a1 + 56);
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v15, "muid")}];
            [v16 setObject:v15 forKeyedSubscript:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v28 count:16];
        }

        while (v12);
      }

      [*(a1 + 40) removeAllObjects];
      v7 = v18;
    }
  }
}

uint64_t __86__CLSBusinessCacheUpdater_enrichedBusinessItemsByMuidsForBusinessItems_progressBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  result = *(a1 + 32);
  if (result)
  {
    v6 = 0;
    result = (*(result + 16))(result, &v6, *(a1 + 48) + *(a1 + 56) * a3);
    *(*(*(a1 + 40) + 8) + 24) |= v6;
    if (*(*(*(a1 + 40) + 8) + 24) == 1)
    {
      *a2 = 1;
    }
  }

  return result;
}

- (CLSBusinessCacheUpdater)initWithBusinessCategoryCache:(id)cache
{
  cacheCopy = cache;
  v9.receiver = self;
  v9.super_class = CLSBusinessCacheUpdater;
  v6 = [(CLSBusinessCacheUpdater *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_businessCategoryCache, cache);
  }

  return v7;
}

@end