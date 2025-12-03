@interface KMCoreRoutineBridge
- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block;
- (KMCoreRoutineBridge)init;
- (id)_fetchLocationOfInterestBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
@end

@implementation KMCoreRoutineBridge

- (id)_fetchLocationOfInterestBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v8 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1714;
  v33 = __Block_byref_object_dispose__1715;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1714;
  v27 = __Block_byref_object_dispose__1715;
  v28 = 0;
  defaultManager = [MEMORY[0x277D01280] defaultManager];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __78__KMCoreRoutineBridge__fetchLocationOfInterestBetweenStartDate_endDate_error___block_invoke;
  v19[3] = &unk_279805CA8;
  v21 = &v29;
  v22 = &v23;
  v10 = v8;
  v20 = v10;
  [defaultManager fetchLocationsOfInterestVisitedBetweenStartDate:dateCopy endDate:endDateCopy withHandler:v19];

  v11 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v10, v11))
  {
    v12 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA068];
    0x3FF0000000000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fetch CoreRoutine LOI timed out after %f second(s)", 0x3FF0000000000000];
    v36[0] = 0x3FF0000000000000;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v15 = [v12 errorWithDomain:@"com.apple.siri.vocabulary.donate.coreroutine.loi" code:1 userInfo:v14];
    KVSetError();

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  if (v24[5])
  {
    KVSetError();
    goto LABEL_5;
  }

  v16 = v30[5];
LABEL_6:

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

void __78__KMCoreRoutineBridge__fetchLocationOfInterestBetweenStartDate_endDate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)enumerateItemsWithError:(id *)error usingBlock:(id)block
{
  v48 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar dateByAddingUnit:16 value:-90 toDate:date options:0];

  currentCalendar2 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [currentCalendar2 dateByAddingUnit:16 value:10 toDate:date options:0];

  v40 = 0;
  selfCopy = self;
  v11 = [(KMCoreRoutineBridge *)self _fetchLocationOfInterestBetweenStartDate:v7 endDate:v9 error:&v40];
  v12 = v40;
  if (v11)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v32 = v11;
    obj = v11;
    v13 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      v30 = v7;
      v31 = date;
      v29 = v9;
      while (2)
      {
        v16 = 0;
        v17 = v12;
        do
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v36 + 1) + 8 * v16);
          v19 = objc_autoreleasePoolPush();
          itemMapper = selfCopy->_itemMapper;
          v35 = v17;
          v21 = [(KVItemMapper *)itemMapper mapObject:v18 error:&v35];
          v12 = v35;

          if ([v21 count] != 1)
          {
            v26 = KMLogContextCore;
            v9 = v29;
            if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v42 = "[KMCoreRoutineBridge enumerateItemsWithError:usingBlock:]";
              v43 = 2112;
              v44 = v21;
              v45 = 2112;
              v46 = v12;
              _os_log_error_impl(&dword_2559DF000, v26, OS_LOG_TYPE_ERROR, "%s Unexepected items: %@ error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v19);
            v24 = 0;
            v7 = v30;
            date = v31;
            goto LABEL_20;
          }

          firstObject = [v21 firstObject];
          v23 = blockCopy[2](blockCopy, firstObject);

          objc_autoreleasePoolPop(v19);
          if (!v23)
          {
            v24 = 0;
            v7 = v30;
            date = v31;
            v9 = v29;
            goto LABEL_20;
          }

          ++v16;
          v17 = v12;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
        v24 = 1;
        v7 = v30;
        date = v31;
        v9 = v29;
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v24 = 1;
    }

LABEL_20:

    v11 = v32;
  }

  else
  {
    v25 = KMLogContextCore;
    if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[KMCoreRoutineBridge enumerateItemsWithError:usingBlock:]";
      v43 = 2112;
      v44 = v12;
      _os_log_error_impl(&dword_2559DF000, v25, OS_LOG_TYPE_ERROR, "%s Could not get CoreRoutine LOIs: %@", buf, 0x16u);
    }

    v24 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

- (KMCoreRoutineBridge)init
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = KMCoreRoutineBridge;
  v2 = [(KMCoreRoutineBridge *)&v11 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v10 = 0;
  v3 = [objc_alloc(MEMORY[0x277D22D30]) initWithObjectClass:objc_opt_class() error:&v10];
  v4 = v10;
  itemMapper = v2->_itemMapper;
  v2->_itemMapper = v3;

  if (v2->_itemMapper)
  {

LABEL_4:
    v6 = v2;
    goto LABEL_8;
  }

  v7 = KMLogContextCore;
  if (os_log_type_enabled(KMLogContextCore, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v13 = "[KMCoreRoutineBridge init]";
    v14 = 2112;
    v15 = v4;
    _os_log_error_impl(&dword_2559DF000, v7, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v6 = 0;
LABEL_8:

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

@end