@interface CLSTemporalClusterReader
- (id)eventsBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5;
@end

@implementation CLSTemporalClusterReader

- (id)eventsBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB18];
  v9 = a4;
  v10 = a3;
  v11 = [v8 array];
  v12 = objc_alloc_init(MEMORY[0x277D3A518]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__CLSTemporalClusterReader_eventsBetweenStartDate_endDate_error___block_invoke;
  v16[3] = &unk_2788A7AC0;
  v16[4] = self;
  v13 = v11;
  v17 = v13;
  LODWORD(a5) = [v12 iterRankedTemporalClustersForStartDate:v10 endDate:v9 error:a5 block:v16];

  if (a5)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __65__CLSTemporalClusterReader_eventsBetweenStartDate_endDate_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 event];
  if (v4 && [objc_opt_class() _isSupportedPortraitEventCategory:{objc_msgSend(v4, "suggestedEventCategory")}])
  {
    v3 = [[CLSTemporalClusterEvent alloc] initWithPortraitEvent:v4];
    [*(a1 + 40) addObject:v3];
  }
}

@end