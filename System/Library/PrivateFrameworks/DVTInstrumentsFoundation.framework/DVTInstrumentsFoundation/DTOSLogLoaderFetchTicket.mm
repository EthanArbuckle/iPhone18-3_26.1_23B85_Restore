@interface DTOSLogLoaderFetchTicket
- (id)startDateForLoader:(id)loader;
- (void)holdAgent:(id)agent loader:(id)loader;
- (void)prepareAgent:(id)agent loader:(id)loader;
@end

@implementation DTOSLogLoaderFetchTicket

- (id)startDateForLoader:(id)loader
{
  loaderCopy = loader;
  v5 = loaderCopy[12];
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

  if (loaderCopy[13])
  {
    [(DTOSLogLoaderFetchTicket *)self windowInSeconds];
    if (v9 > 0.0)
    {
      v10 = loaderCopy[13];
      [(DTOSLogLoaderFetchTicket *)self windowInSeconds];
      v8 = [v10 dateByAddingTimeInterval:-v11];
      goto LABEL_6;
    }
  }

LABEL_7:
  if (loaderCopy[12] && [v5 compare:?] == -1)
  {
    v13 = loaderCopy[12];

    v5 = v13;
  }

  return v5;
}

- (void)holdAgent:(id)agent loader:(id)loader
{
  agentCopy = agent;
  loaderCopy = loader;
  v8 = loaderCopy;
  v9 = &OBJC_IVAR___DTKTraceTapMemo__isSession;
  if (loaderCopy[7] || loaderCopy[4])
  {
    v31 = v34;
    v10 = 0x277CBE000uLL;
    v32 = agentCopy;
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

        objc_storeStrong(v8 + 44, agent);
        *(v8 + 510) = 0;
        ticket = [agentCopy ticket];
        *(v8 + 508) = 0;
        [v8 _setupCommonStreamParameters:*(v8 + v9[39])];
        [v8 _performResetOnOutputStream];
        v15 = v10;
        *(v8 + 507) = 0;
        v16 = [ticket startDateForLoader:v8];
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
        agentCopy = v32;
        goto LABEL_19;
      }

      v11 = v8[8];
      v12 = *(v10 + 2920);
      if (!v11)
      {
        break;
      }

      null = [v12 null];
      if (v11 != null)
      {

LABEL_13:
        ticket = [agentCopy ticket];
        if (ticket == v8[16])
        {
          pthread_mutex_lock((v8 + 23));
          if (v8[44])
          {
            __assert_rtn("[DTOSLogLoaderFetchTicket holdAgent:loader:]", "DTOSLogLoader.mm", 2182, "loader->_agentWaitingForEvents == nil");
          }

          objc_storeStrong(v8 + 44, agent);
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

          objc_storeStrong(v8 + 15, agent);
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
      ticket2 = [agentCopy ticket];
      v29 = v8[16];
      v8[16] = ticket2;

      if (v8[8])
      {
        goto LABEL_21;
      }
    }

    null2 = [v12 null];
    v21 = v8[8];
    v8[8] = null2;

    v22 = v8[7];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v34[0] = sub_247F9322C;
    v34[1] = &unk_278EF23A0;
    v35 = v8;
    v36 = agentCopy;
    [v22 prepareWithCompletionHandler:v33];

    ticket = v35;
    goto LABEL_19;
  }

  if (loaderCopy[44])
  {
    v30 = 2224;
LABEL_25:
    __assert_rtn("[DTOSLogLoaderFetchTicket holdAgent:loader:]", "DTOSLogLoader.mm", v30, "loader->_agentWaitingForEvents == nil");
  }

  [loaderCopy _welcomeAgent:agentCopy];
LABEL_21:
}

- (void)prepareAgent:(id)agent loader:(id)loader
{
  v18 = *MEMORY[0x277D85DE8];
  agentCopy = agent;
  loaderCopy = loader;
  pthread_mutex_lock((loaderCopy + 184));
  [*(loaderCopy + 45) setLength:*(loaderCopy + 35) - *(loaderCopy + 34)];
  [agentCopy setNextOutputBytes:*(loaderCopy + 45)];
  [agentCopy setLastMachContinuousTime:*(loaderCopy + 43)];
  [agentCopy setLostEventsSinceLastVisit:*(loaderCopy + 125)];
  [agentCopy setEncounteredBackdatedEvent:loaderCopy[504]];
  [agentCopy setFailureReason:*(loaderCopy + 11)];
  sub_247F8C514(loaderCopy);
  v7 = *(*(*(loaderCopy + 32) + 16) + 64);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    nextOutputBytes = [agentCopy nextOutputBytes];
    v10 = [nextOutputBytes length];
    v11 = *(loaderCopy + 124);
    v12 = 134218496;
    v13 = v10;
    v14 = 1024;
    v15 = v11;
    v16 = 1024;
    v17 = HIWORD(v7);
    _os_log_debug_impl(&dword_247F67000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Data Size: %lu, Rows Sent: %d, Stack depth: %d", &v12, 0x18u);
  }

  *(loaderCopy + 124) = 0;
  loaderCopy[509] = 0;
  *(loaderCopy + 125) = 0;
  pthread_cond_signal((loaderCopy + 136));
  pthread_mutex_unlock((loaderCopy + 184));
  if (*(loaderCopy + 10))
  {
    [agentCopy setFetchComplete:1];
  }

  else
  {
    [agentCopy setFetchComplete:loaderCopy[510]];
    if ([agentCopy isFetchComplete] && objc_msgSend(*(loaderCopy + 6), "trackPidToExecNameMapping") && *(loaderCopy + 64))
    {
      [agentCopy addPidToExecEntriesFromMapping:?];
    }
  }

  if (*(loaderCopy + 11))
  {
    [agentCopy setFetchComplete:1];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end