@interface BLTDebugObserverHolder
+ (void)startWithWKAppList:(id)a3;
- (BLTDebugObserverHolder)initWithWKAppList:(id)a3;
- (void)dealloc;
- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 withReply:(id)a7;
@end

@implementation BLTDebugObserverHolder

+ (void)startWithWKAppList:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__BLTDebugObserverHolder_startWithWKAppList___block_invoke;
  v7[3] = &unk_278D31928;
  v8 = v4;
  v9 = a1;
  v5 = startWithWKAppList__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&startWithWKAppList__onceToken, v7);
  }
}

uint64_t __45__BLTDebugObserverHolder_startWithWKAppList___block_invoke(uint64_t a1)
{
  result = BLTIsDebugOrInternalBuild();
  if (result)
  {
    startWithWKAppList____sharedInstance = [objc_alloc(*(a1 + 40)) initWithWKAppList:*(a1 + 32)];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (BLTDebugObserverHolder)initWithWKAppList:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BLTDebugObserverHolder;
  v5 = [(BLTDebugObserverHolder *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_wkAppList, v4);
    v7 = BLTWorkQueue();
    v8 = BLTWorkQueue();
    v9 = [BLTBBObserver surrogateWithQueue:v7 calloutQueue:v8];
    observer = v6->_observer;
    v6->_observer = v9;

    [(BBObserver *)v6->_observer setDelegate:v6];
    [(BBObserver *)v6->_observer setObserverFeed:32878];
  }

  return v6;
}

- (void)dealloc
{
  [(BBObserver *)self->_observer invalidate];
  v3.receiver = self;
  v3.super_class = BLTDebugObserverHolder;
  [(BLTDebugObserverHolder *)&v3 dealloc];
}

- (void)observer:(id)a3 addBulletin:(id)a4 forFeed:(unint64_t)a5 playLightsAndSirens:(BOOL)a6 withReply:(id)a7
{
  v8 = a6;
  v39 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a7;
  v13 = blt_general_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v11 sectionID];
    [v11 publisherMatchID];
    v26 = v25 = v11;
    if (v8)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    v16 = +[BLTPairedSyncCoordinator syncState];
    if ([v16 isInitialSyncComplete])
    {
      v17 = "YES";
    }

    else
    {
      v17 = "NO";
    }

    WeakRetained = objc_loadWeakRetained(&self->_wkAppList);
    *buf = 138413570;
    if ([WeakRetained isLoaded])
    {
      v19 = "YES";
    }

    else
    {
      v19 = "NO";
    }

    v28 = v14;
    v29 = 2112;
    v30 = v26;
    v31 = 2048;
    v32 = a5;
    v33 = 2080;
    v34 = v15;
    v11 = v25;
    v35 = 2080;
    v36 = v17;
    v37 = 2080;
    v38 = v19;
    _os_log_impl(&dword_241FB3000, v13, OS_LOG_TYPE_INFO, "Bulletin in section %@ with matchID %@ sent to observers now on feed %lu with lightsandsirens: %s initSyncComplete: %s wkAppsLoaded: %s", buf, 0x3Eu);
  }

  v12[2](v12, 0);
  v20 = [MEMORY[0x277CBEAA8] date];
  if ((a5 & 0x806E) != 0)
  {
    kdebug_trace();
    if (v8)
    {
      v21 = blt_general_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v11 publishDate];
        [v20 timeIntervalSinceDate:v22];
        *buf = 134217984;
        v28 = v23;
        _os_log_impl(&dword_241FB3000, v21, OS_LOG_TYPE_INFO, "Bulletin raised after %f seconds from 'publish' date", buf, 0xCu);
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end