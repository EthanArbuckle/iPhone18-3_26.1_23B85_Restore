@interface BMCoreRoutineProvider
- (id)locationEvents;
@end

@implementation BMCoreRoutineProvider

- (id)locationEvents
{
  v2 = [MEMORY[0x277D01280] defaultManager];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = [MEMORY[0x277CBEB18] array];
  v4 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__BMCoreRoutineProvider_locationEvents__block_invoke;
  v8[3] = &unk_278D06670;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [v2 fetchLocationsOfInterestVisitedSinceDate:v3 withHandler:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __39__BMCoreRoutineProvider_locationEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v34 = v5;
    v40 = a1;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v5;
    v37 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v37)
    {
      v36 = *v51;
      do
      {
        v7 = 0;
        do
        {
          if (*v51 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = v7;
          v8 = *(*(&v50 + 1) + 8 * v7);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v42 = v8;
          v39 = [v8 visits];
          v43 = [v39 countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v43)
          {
            v41 = *v47;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v47 != v41)
                {
                  objc_enumerationMutation(v39);
                }

                v10 = *(*(&v46 + 1) + 8 * i);
                v11 = objc_autoreleasePoolPush();
                v12 = [v42 identifier];
                v13 = [v12 UUIDString];

                if (v13)
                {
                  v45 = v11;
                  v14 = +[BMItemType locationIdentifier];
                  v44 = [BMItem itemWithType:v14 stringValue:v13];

                  v15 = [BMEvent alloc];
                  v16 = [v10 entryDate];
                  v17 = [v10 exitDate];
                  v18 = [(BMEvent *)v15 initWithStartDate:v16 endDate:v17 item:v44];

                  [*(*(*(v40 + 40) + 8) + 40) addObject:v18];
                  v19 = [BMItem alloc];
                  v20 = +[BMItemType enterLocation];
                  v21 = [(BMItem *)v19 initWithType:v20 value:v13];

                  v22 = [BMEvent alloc];
                  v23 = [v10 entryDate];
                  v24 = [v10 entryDate];
                  v25 = [(BMEvent *)v22 initWithStartDate:v23 endDate:v24 item:v21];

                  [*(*(*(v40 + 40) + 8) + 40) addObject:v25];
                  v26 = [BMItem alloc];
                  v27 = +[BMItemType exitLocation];
                  v28 = [(BMItem *)v26 initWithType:v27 value:v13];

                  v29 = [BMEvent alloc];
                  v30 = [v10 exitDate];
                  v31 = [v10 exitDate];
                  v32 = [(BMEvent *)v29 initWithStartDate:v30 endDate:v31 item:v28];

                  v11 = v45;
                  [*(*(*(v40 + 40) + 8) + 40) addObject:v32];
                }

                objc_autoreleasePoolPop(v11);
              }

              v43 = [v39 countByEnumeratingWithState:&v46 objects:v54 count:16];
            }

            while (v43);
          }

          v7 = v38 + 1;
        }

        while (v38 + 1 != v37);
        v37 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v37);
    }

    v6 = 0;
    v5 = v34;
    a1 = v40;
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v33 = *MEMORY[0x277D85DE8];
}

@end