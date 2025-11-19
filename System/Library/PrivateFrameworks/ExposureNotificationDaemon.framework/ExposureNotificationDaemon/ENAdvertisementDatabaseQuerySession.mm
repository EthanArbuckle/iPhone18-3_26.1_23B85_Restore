@interface ENAdvertisementDatabaseQuerySession
- (BOOL)enumerateAdvertisementsMatchingKeys:(id)a3 attenuationThreshold:(unsigned __int8)a4 timestampTolerance:(double)a5 error:(id *)a6 handler:(id)a7;
- (id)beaconCountMetricsWithStartDate:(id)a3 endDate:(id)a4 windowDuration:(double)a5 error:(id *)a6;
- (void)dealloc;
@end

@implementation ENAdvertisementDatabaseQuerySession

- (void)dealloc
{
  v3 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v4 = [v3 isSensitiveLoggingAllowed];

  if (v4 && gLogCategory_ENAdvertisementDatabaseQuerySession <= 50 && (gLogCategory_ENAdvertisementDatabaseQuerySession != -1 || _LogCategory_Initialize()))
  {
    [(ENAdvertisementDatabaseQuerySession *)self dealloc];
  }

  [(ENAdvertisementDatabaseQuerySession *)self invalidate];
  v5.receiver = self;
  v5.super_class = ENAdvertisementDatabaseQuerySession;
  [(ENAdvertisementDatabaseQuerySession *)&v5 dealloc];
}

- (BOOL)enumerateAdvertisementsMatchingKeys:(id)a3 attenuationThreshold:(unsigned __int8)a4 timestampTolerance:(double)a5 error:(id *)a6 handler:(id)a7
{
  v75 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v49 = a7;
  self->_tekCount += [v11 count];
  v12 = objc_alloc_init(MEMORY[0x277CBEB30]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v14)
  {
    v15 = *v65;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v65 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v64 + 1) + 8 * i);
        v18 = [v17 keyData];
        [v12 setObject:v17 forKey:v18];
      }

      v14 = [v13 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v14);
  }

  v19 = [v12 allValues];

  v46 = objc_autoreleasePoolPush();
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy_;
  v62 = __Block_byref_object_dispose_;
  v63 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__ENAdvertisementDatabaseQuerySession_enumerateAdvertisementsMatchingKeys_attenuationThreshold_timestampTolerance_error_handler___block_invoke;
  block[3] = &unk_278FD0FE0;
  v55 = &v58;
  block[4] = self;
  v48 = v19;
  v54 = v48;
  v57 = a4;
  v56 = a5;
  dispatch_sync(queue, block);
  v21 = v59[5];
  v47 = v21;
  if (v21)
  {
    v22 = v21;
    v50 = [v47 bytes];
    v23 = 0;
    v24 = [v59[5] length] / 0x28uLL;
    while (v23 < v24)
    {
      contexta = objc_autoreleasePoolPush();
      v25 = v50 + 40 * v23;
      v27 = *(v25 + 28);
      v26 = (v25 + 28);
      if (v27 == -1)
      {
        v32 = v23 + 1;
      }

      else
      {
        v28 = objc_alloc_init(MEMORY[0x277CBEB10]);
        v29 = 0;
        v30 = *v26;
        v31 = (v50 + 32 + 40 * v23);
        v32 = v23;
        do
        {
          v73[0] = *(v31 - 2);
          *(v73 + 12) = *(v31 - 20);
          v33 = *(v31 - 1);
          if (v33 == -1)
          {
            v29 = (v29 + 1);
          }

          else
          {
            if (v33 != v30)
            {
              goto LABEL_19;
            }

            v34 = *v31;
            v35 = [ENAdvertisement alloc];
            *v70 = v73[0];
            *&v70[12] = *(v73 + 12);
            v71 = v30;
            v72 = v34;
            v36 = [(ENAdvertisement *)v35 initWithStructRepresentation:v70];
            [v28 addObject:v36];
          }

          v31 += 5;
          ++v32;
        }

        while (v24 != v32);
        v32 = v24;
LABEL_19:
        v37 = +[ENLoggingPrefs sharedENLoggingPrefs];
        v38 = [v37 isSensitiveLoggingAllowed];

        if (v38 && gLogCategory_ENAdvertisementDatabaseQuerySession <= 10 && (gLogCategory_ENAdvertisementDatabaseQuerySession != -1 || _LogCategory_Initialize()))
        {
          v44 = v32 - v23;
          v45 = v29;
          v43 = v23;
          LogPrintF_safe();
        }

        v39 = [v48 objectAtIndexedSubscript:{v30, v43, v44, v45, v46}];
        v49[2](v49, v39, v28);
      }

      objc_autoreleasePoolPop(contexta);
      v23 = v32;
    }

    _Block_object_dispose(&v58, 8);
    objc_autoreleasePoolPop(v46);
  }

  else
  {

    _Block_object_dispose(&v58, 8);
    objc_autoreleasePoolPop(v46);
    v68 = *MEMORY[0x277CCA458];
    v69 = @"Error encountered querying database";
    v40 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B0] errorWithDomain:*MEMORY[0x277CC5BD0] code:16 userInfo:v40];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
  return v47 != 0;
}

void __129__ENAdvertisementDatabaseQuerySession_enumerateAdvertisementsMatchingKeys_attenuationThreshold_timestampTolerance_error_handler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) advertisementsBufferMatchingDailyKeys:*(a1 + 40) attenuationThreshold:*(a1 + 64) timestampTolerance:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)beaconCountMetricsWithStartDate:(id)a3 endDate:(id)a4 windowDuration:(double)a5 error:(id *)a6
{
  v38[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if (self->_database)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = 0;
    v12 = objc_autoreleasePoolPush();
    queue = self->_queue;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __100__ENAdvertisementDatabaseQuerySession_beaconCountMetricsWithStartDate_endDate_windowDuration_error___block_invoke;
    v23 = &unk_278FD1008;
    v27 = &v29;
    v24 = self;
    v25 = v10;
    v26 = v11;
    v28 = a5;
    dispatch_sync(queue, &v20);

    objc_autoreleasePoolPop(v12);
    v14 = v30[5];
    if (a6 && !v14)
    {
      v35 = *MEMORY[0x277CCA458];
      v36 = @"Nil beacon count metrics";
      v15 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:&v36 forKeys:&v35 count:{1, v20, v21, v22, v23, v24}];
      *a6 = [MEMORY[0x277CCA9B0] errorWithDomain:*MEMORY[0x277CC5BD0] code:11 userInfo:v15];

      v14 = v30[5];
    }

    v16 = v14;
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v37 = *MEMORY[0x277CCA458];
    v38[0] = @"Nil advertisement database";
    v17 = [MEMORY[0x277CBEAC8] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    if (a6)
    {
      *a6 = [MEMORY[0x277CCA9B0] errorWithDomain:*MEMORY[0x277CC5BD0] code:11 userInfo:v17];
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

void __100__ENAdvertisementDatabaseQuerySession_beaconCountMetricsWithStartDate_endDate_windowDuration_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) beaconCountMetricsWithStartDate:*(a1 + 40) endDate:*(a1 + 48) windowDuration:*(a1 + 64)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end