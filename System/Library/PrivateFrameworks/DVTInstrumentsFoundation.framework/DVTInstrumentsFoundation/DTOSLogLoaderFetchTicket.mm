@interface DTOSLogLoaderFetchTicket
- (id)startDateForLoader:(id)a3;
- (void)holdAgent:(id)a3 loader:(id)a4;
- (void)prepareAgent:(id)a3 loader:(id)a4;
@end

@implementation DTOSLogLoaderFetchTicket

- (id)startDateForLoader:(id)a3
{
  v4 = a3;
  v5 = v4[12];
  [(DTOSLogLoaderFetchTicket *)self fetchStartTime];
  if (v6 > 0.0)
  {
    v7 = MEMORY[0x277CBEAA8];
    [(DTOSLogLoaderFetchTicket *)self fetchStartTime];
    v8 = [v7 dateWithTimeIntervalSince1970:?];
LABEL_6:
    v12 = v8;

    v5 = v12;
    goto LABEL_7;
  }

  if (v4[13])
  {
    [(DTOSLogLoaderFetchTicket *)self windowInSeconds];
    if (v9 > 0.0)
    {
      v10 = v4[13];
      [(DTOSLogLoaderFetchTicket *)self windowInSeconds];
      v8 = [v10 dateByAddingTimeInterval:-v11];
      goto LABEL_6;
    }
  }

LABEL_7:
  if (v4[12] && [v5 compare:?] == -1)
  {
    v13 = v4[12];

    v5 = v13;
  }

  return v5;
}

- (void)holdAgent:(id)a3 loader:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = &OBJC_IVAR___DTKTraceTapMemo__isSession;
  if (v7[7] || v7[4])
  {
    v31 = v34;
    v10 = 0x277CBE000uLL;
    v32 = v6;
    while (1)
    {
      if (*(v8 + v9[39]) && (v8[5] & 1) == 0)
      {
        pthread_mutex_lock((v8 + 23));
        if (v8[44])
        {
          v30 = 2105;
          goto LABEL_25;
        }

        objc_storeStrong(v8 + 44, a3);
        *(v8 + 510) = 0;
        v14 = [v6 ticket];
        *(v8 + 508) = 0;
        [v8 _setupCommonStreamParameters:*(v8 + v9[39])];
        [v8 _performResetOnOutputStream];
        v15 = v10;
        *(v8 + 507) = 0;
        v16 = [v14 startDateForLoader:v8];
        v17 = v9;
        v18 = *(v8 + v9[39]);
        v19 = v18;
        [v19 activateStreamFromDate:v16];
        objc_storeStrong(v8 + 8, v18);
        *(v8 + 40) = 1;
        pthread_cond_signal((v8 + 17));
        pthread_mutex_unlock((v8 + 23));

        v10 = v15;
        v9 = v17;
        v6 = v32;
        goto LABEL_19;
      }

      v11 = v8[8];
      v12 = *(v10 + 2920);
      if (!v11)
      {
        break;
      }

      v13 = [v12 null];
      if (v11 != v13)
      {

LABEL_13:
        v14 = [v6 ticket];
        if (v14 == v8[16])
        {
          pthread_mutex_lock((v8 + 23));
          if (v8[44])
          {
            __assert_rtn("[DTOSLogLoaderFetchTicket holdAgent:loader:]", "DTOSLogLoader.mm", 2182, "loader->_agentWaitingForEvents == nil");
          }

          objc_storeStrong(v8 + 44, a3);
          if (*(v8 + 510) == 1)
          {
            [v8 _welcomeAgent:v8[44]];
            v27 = v8[44];
            v8[44] = 0;
          }

          pthread_cond_signal((v8 + 17));
          pthread_mutex_unlock((v8 + 23));
        }

        else
        {
          [v8[8] invalidate];
          v24 = v8[8];
          v8[8] = 0;

          v25 = v9[39];
          v26 = *(v8 + v25);
          *(v8 + v25) = 0;

          objc_storeStrong(v8 + 15, a3);
        }

LABEL_19:

        goto LABEL_20;
      }

      v23 = *(v8 + 40);

      if (v23)
      {
        goto LABEL_13;
      }

LABEL_20:
      v28 = [v6 ticket];
      v29 = v8[16];
      v8[16] = v28;

      if (v8[8])
      {
        goto LABEL_21;
      }
    }

    v20 = [v12 null];
    v21 = v8[8];
    v8[8] = v20;

    v22 = v8[7];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v34[0] = sub_247F9322C;
    v34[1] = &unk_278EF23A0;
    v35 = v8;
    v36 = v6;
    [v22 prepareWithCompletionHandler:v33];

    v14 = v35;
    goto LABEL_19;
  }

  if (v7[44])
  {
    v30 = 2224;
LABEL_25:
    __assert_rtn("[DTOSLogLoaderFetchTicket holdAgent:loader:]", "DTOSLogLoader.mm", v30, "loader->_agentWaitingForEvents == nil");
  }

  [v7 _welcomeAgent:v6];
LABEL_21:
}

- (void)prepareAgent:(id)a3 loader:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  pthread_mutex_lock((v6 + 184));
  [*(v6 + 45) setLength:*(v6 + 35) - *(v6 + 34)];
  [v5 setNextOutputBytes:*(v6 + 45)];
  [v5 setLastMachContinuousTime:*(v6 + 43)];
  [v5 setLostEventsSinceLastVisit:*(v6 + 125)];
  [v5 setEncounteredBackdatedEvent:v6[504]];
  [v5 setFailureReason:*(v6 + 11)];
  sub_247F8C514(v6);
  v7 = *(*(*(v6 + 32) + 16) + 64);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = [v5 nextOutputBytes];
    v10 = [v9 length];
    v11 = *(v6 + 124);
    v12 = 134218496;
    v13 = v10;
    v14 = 1024;
    v15 = v11;
    v16 = 1024;
    v17 = HIWORD(v7);
    _os_log_debug_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Data Size: %lu, Rows Sent: %d, Stack depth: %d", &v12, 0x18u);
  }

  *(v6 + 124) = 0;
  v6[509] = 0;
  *(v6 + 125) = 0;
  pthread_cond_signal((v6 + 136));
  pthread_mutex_unlock((v6 + 184));
  if (*(v6 + 10))
  {
    [v5 setFetchComplete:1];
  }

  else
  {
    [v5 setFetchComplete:v6[510]];
    if ([v5 isFetchComplete] && objc_msgSend(*(v6 + 6), "trackPidToExecNameMapping") && *(v6 + 64))
    {
      [v5 addPidToExecEntriesFromMapping:?];
    }
  }

  if (*(v6 + 11))
  {
    [v5 setFetchComplete:1];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end