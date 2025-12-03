@interface BBObserverGatewayHolder
+ (id)gatewayHolderSortComparator;
+ (unint64_t)sortIndexForGatewayHolder:(id)holder;
+ (unint64_t)sortOrderForPriority:(unint64_t)priority;
- (BBObserverGatewayHolder)initWithQueue:(id)queue name:(id)name;
- (BOOL)_invalidateTimeout:(id)timeout;
- (id)_addTimeout:(double)timeout forBulletinID:(id)d inSectionID:(id)iD handler:(id)handler;
- (void)_handleTimeout;
- (void)_invalidateTimer;
- (void)_startNextTimer;
- (void)_startTimerWithFireDate:(id)date;
- (void)dealloc;
- (void)sendAddBulletin:(id)bulletin playLightsAndSirens:(BOOL)sirens forFeeds:(unint64_t)feeds withTimeout:(double)timeout handler:(id)handler;
@end

@implementation BBObserverGatewayHolder

- (BBObserverGatewayHolder)initWithQueue:(id)queue name:(id)name
{
  queueCopy = queue;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = BBObserverGatewayHolder;
  v9 = [(BBObserverGatewayHolder *)&v17 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    timeouts = v9->_timeouts;
    v9->_timeouts = v10;

    v12 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v12;

    objc_storeStrong(&v9->_queue, queue);
    v14 = [[BBMaskedSet alloc] initWithMaskBits:16];
    observerFeedSet = v9->_observerFeedSet;
    v9->_observerFeedSet = v14;
  }

  return v9;
}

- (void)_startNextTimer
{
  v20 = *MEMORY[0x277D85DE8];
  [(BBObserverGatewayHolder *)self _invalidateTimer];
  if ([(NSMutableArray *)self->_timeouts count])
  {
    v3 = [(NSMutableArray *)self->_timeouts objectAtIndexedSubscript:0];
    v4 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      name = [(BBObserverGatewayHolder *)self name];
      timeout = [v3 timeout];
      bulletinID = [v3 bulletinID];
      sectionID = [v3 sectionID];
      v12 = 138544130;
      v13 = name;
      v14 = 2114;
      v15 = timeout;
      v16 = 2114;
      v17 = bulletinID;
      v18 = 2114;
      v19 = sectionID;
      _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ start timer (%{public}@) for out for bulletin %{public}@ in section %{public}@", &v12, 0x2Au);
    }

    timeout2 = [v3 timeout];
    [(BBObserverGatewayHolder *)self _startTimerWithFireDate:timeout2];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_startTimerWithFireDate:(id)date
{
  v4 = MEMORY[0x277D3A180];
  dateCopy = date;
  v6 = [[v4 alloc] initWithFireDate:dateCopy serviceIdentifier:@"com.apple.bulletinboard.identityqueue.gatewayholdertimeout" target:self selector:sel__handleTimeout userInfo:0];

  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v6;

  [(PCPersistentTimer *)self->_timeoutTimer setMinimumEarlyFireProportion:1.0];
  [(PCPersistentTimer *)self->_timeoutTimer setUserVisible:1];
  queue = self->_queue;
  v8 = self->_timeoutTimer;

  [(PCPersistentTimer *)v8 scheduleInQueue:queue];
}

- (void)_invalidateTimer
{
  [(PCPersistentTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;
}

- (BOOL)_invalidateTimeout:(id)timeout
{
  v22 = *MEMORY[0x277D85DE8];
  timeoutCopy = timeout;
  v5 = [(NSMutableArray *)self->_timeouts indexOfObject:timeoutCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      name = [(BBObserverGatewayHolder *)self name];
      timeout = [timeoutCopy timeout];
      bulletinID = [timeoutCopy bulletinID];
      sectionID = [timeoutCopy sectionID];
      v14 = 138544130;
      v15 = name;
      v16 = 2114;
      v17 = timeout;
      v18 = 2114;
      v19 = bulletinID;
      v20 = 2114;
      v21 = sectionID;
      _os_log_impl(&dword_241EFF000, v7, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ invalidated timer (%{public}@) for out for bulletin %{public}@ in section %{public}@", &v14, 0x2Au);
    }

    [(NSMutableArray *)self->_timeouts removeObjectAtIndex:v5];
    if (!v5)
    {
      [(BBObserverGatewayHolder *)self _startNextTimer];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5 != 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_handleTimeout
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_timeouts count])
  {
    v3 = [(NSMutableArray *)self->_timeouts objectAtIndexedSubscript:0];
    v4 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      name = [(BBObserverGatewayHolder *)self name];
      bulletinID = [v3 bulletinID];
      sectionID = [v3 sectionID];
      v11 = 138543874;
      v12 = name;
      v13 = 2114;
      v14 = bulletinID;
      v15 = 2114;
      v16 = sectionID;
      _os_log_impl(&dword_241EFF000, v5, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ timed out for bulletin %{public}@ in section %{public}@", &v11, 0x20u);
    }

    timeoutHandler = [v3 timeoutHandler];
    timeoutHandler[2]();

    [(NSMutableArray *)self->_timeouts removeObjectAtIndex:0];
    [(BBObserverGatewayHolder *)self _startNextTimer];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_addTimeout:(double)timeout forBulletinID:(id)d inSectionID:(id)iD handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v12 = MEMORY[0x277CBEAA8];
  handlerCopy = handler;
  v14 = [v12 dateWithTimeIntervalSinceNow:timeout];
  v15 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    name = [(BBObserverGatewayHolder *)self name];
    v21 = 138544130;
    v22 = name;
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = dCopy;
    v27 = 2114;
    v28 = iDCopy;
    _os_log_impl(&dword_241EFF000, v16, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ add timer (%{public}@) for bulletin %{public}@ in section %{public}@", &v21, 0x2Au);
  }

  v18 = objc_alloc_init(BBObserverGatewayAddBulletinRequest);
  [(BBObserverGatewayAddBulletinRequest *)v18 setTimeout:v14];
  [(BBObserverGatewayAddBulletinRequest *)v18 setTimeoutHandler:handlerCopy];

  [(BBObserverGatewayAddBulletinRequest *)v18 setBulletinID:dCopy];
  [(BBObserverGatewayAddBulletinRequest *)v18 setSectionID:iDCopy];
  [(NSMutableArray *)self->_timeouts addObject:v18];
  if ([(NSMutableArray *)self->_timeouts count]== 1)
  {
    [(BBObserverGatewayHolder *)self _startNextTimer];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)sendAddBulletin:(id)bulletin playLightsAndSirens:(BOOL)sirens forFeeds:(unint64_t)feeds withTimeout:(double)timeout handler:(id)handler
{
  sirensCopy = sirens;
  v57 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  handlerCopy = handler;
  bulletinID = [bulletinCopy bulletinID];
  sectionID = [bulletinCopy sectionID];
  v14 = self->_feed & feeds;
  v15 = BBLogGateway;
  v16 = os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    if (sirensCopy)
    {
      if (v16)
      {
        v17 = v15;
        name = [(BBObserverGatewayHolder *)self name];
        v19 = "WITH";
        *buf = 138544386;
        *&buf[4] = name;
        if (!handlerCopy)
        {
          v19 = "WITHOUT";
        }

        *&buf[12] = 2114;
        *&buf[14] = bulletinID;
        *&buf[22] = 2114;
        v52 = sectionID;
        v53 = 2048;
        timeoutCopy = timeout;
        v55 = 2082;
        v56 = v19;
        _os_log_impl(&dword_241EFF000, v17, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ sending add bulletin lights and sirens YES for %{public}@ in section %{public}@ with timeout %f %{public}s handler", buf, 0x34u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v52) = 0;
      objc_initWeak(&location, self);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __92__BBObserverGatewayHolder_sendAddBulletin_playLightsAndSirens_forFeeds_withTimeout_handler___block_invoke;
      v44[3] = &unk_278D2BA98;
      objc_copyWeak(&v49, &location);
      v20 = bulletinID;
      v45 = v20;
      v21 = sectionID;
      v46 = v21;
      v48 = buf;
      v22 = handlerCopy;
      v47 = v22;
      v23 = [(BBObserverGatewayHolder *)self _addTimeout:v20 forBulletinID:v21 inSectionID:v44 handler:timeout];
      gateway = [(BBObserverGatewayHolder *)self gateway];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __92__BBObserverGatewayHolder_sendAddBulletin_playLightsAndSirens_forFeeds_withTimeout_handler___block_invoke_42;
      v36[3] = &unk_278D2BAC0;
      objc_copyWeak(v43, &location);
      v37 = v20;
      v38 = v21;
      v42 = buf;
      v25 = v23;
      v39 = v25;
      v40 = bulletinCopy;
      v43[1] = feeds;
      v41 = v22;
      [(BBObserverGatewayHolder *)self sendObserver:gateway addBulletin:v40 playLightsAndSirens:1 forFeeds:feeds withHandler:v36];

      objc_destroyWeak(v43);
      objc_destroyWeak(&v49);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
      goto LABEL_16;
    }

    if (v16)
    {
      v28 = v15;
      name2 = [(BBObserverGatewayHolder *)self name];
      bulletinID2 = [bulletinCopy bulletinID];
      sectionID2 = [bulletinCopy sectionID];
      *buf = 138543874;
      *&buf[4] = name2;
      *&buf[12] = 2114;
      *&buf[14] = bulletinID2;
      *&buf[22] = 2114;
      v52 = sectionID2;
      _os_log_impl(&dword_241EFF000, v28, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ sending add bulletin lights and sirens NO for %{public}@ in section %{public}@ with NO timeout and NO handler", buf, 0x20u);
    }

    gateway2 = [(BBObserverGatewayHolder *)self gateway];
    [(BBObserverGatewayHolder *)self sendObserver:gateway2 addBulletin:bulletinCopy playLightsAndSirens:0 forFeeds:feeds withHandler:0];

    [(BBObserverGatewayHolder *)self sendObserversAddBulletin:bulletinCopy playLightsAndSirens:0 forFeeds:feeds];
    if (handlerCopy)
    {
LABEL_15:
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  else
  {
    if (v16)
    {
      v26 = v15;
      name3 = [(BBObserverGatewayHolder *)self name];
      *buf = 138544130;
      *&buf[4] = name3;
      *&buf[12] = 2114;
      *&buf[14] = bulletinID;
      *&buf[22] = 2114;
      v52 = sectionID;
      v53 = 2048;
      timeoutCopy = *&feeds;
      _os_log_impl(&dword_241EFF000, v26, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ will not handle add bulletin %{public}@ in section %{public}@ for feed %lu. It's not in a relevant feed.", buf, 0x2Au);
    }

    if (handlerCopy)
    {
      goto LABEL_15;
    }
  }

LABEL_16:

  v33 = *MEMORY[0x277D85DE8];
}

void __92__BBObserverGatewayHolder_sendAddBulletin_playLightsAndSirens_forFeeds_withTimeout_handler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = BBLogGateway;
    if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [WeakRetained name];
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v10 = 138543874;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_241EFF000, v4, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ did NOT receive lights and sirens response for bulletin %{public}@ in section %{public}@", &v10, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, 0, 0);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __92__BBObserverGatewayHolder_sendAddBulletin_playLightsAndSirens_forFeeds_withTimeout_handler___block_invoke_42(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (!WeakRetained)
  {
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v7 = BBLogGateway;
  if (os_log_type_enabled(BBLogGateway, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [WeakRetained name];
    v10 = v9;
    v11 = "DID NOT";
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    *v16 = 138544130;
    if (a2)
    {
      v11 = "DID";
    }

    *&v16[4] = v9;
    v17 = 2082;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v13;
    _os_log_impl(&dword_241EFF000, v8, OS_LOG_TYPE_DEFAULT, "Gateway %{public}@ received %{public}s play lights and sirens for bulletin %{public}@ in section %{public}@", v16, 0x2Au);
  }

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    [WeakRetained _invalidateTimeout:*(a1 + 48)];
    if ((a2 & 1) != 0 || [WeakRetained gatewayPriority] != 3)
    {
      [WeakRetained sendObserversAddBulletin:*(a1 + 56) playLightsAndSirens:a2 forFeeds:{*(a1 + 88), *v16}];
    }

LABEL_11:
    v14 = *(a1 + 64);
    if (v14)
    {
      (*(v14 + 16))(v14, a2, v5);
    }
  }

LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(BBObserverGatewayHolder *)self _invalidateTimer];
  v3.receiver = self;
  v3.super_class = BBObserverGatewayHolder;
  [(BBObserverGatewayHolder *)&v3 dealloc];
}

+ (id)gatewayHolderSortComparator
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__BBObserverGatewayHolder_gatewayHolderSortComparator__block_invoke;
  v4[3] = &__block_descriptor_40_e61_q24__0__BBObserverGatewayHolder_8__BBObserverGatewayHolder_16l;
  v4[4] = self;
  v2 = MEMORY[0x245D05D40](v4, a2);

  return v2;
}

uint64_t __54__BBObserverGatewayHolder_gatewayHolderSortComparator__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 sortIndexForGatewayHolder:a2];
  v8 = [*(a1 + 32) sortIndexForGatewayHolder:v6];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v11 = [v9 compare:v10];

  return v11;
}

+ (unint64_t)sortOrderForPriority:(unint64_t)priority
{
  if (priority > 6)
  {
    return -1;
  }

  else
  {
    return qword_241F7FE18[priority];
  }
}

+ (unint64_t)sortIndexForGatewayHolder:(id)holder
{
  holderCopy = holder;
  gatewayPriority = [holderCopy gatewayPriority];
  if (gatewayPriority == 2)
  {
    name = [holderCopy name];
    bulletinDistributorLegacyGatewayName = [self bulletinDistributorLegacyGatewayName];
    v8 = [name isEqual:bulletinDistributorLegacyGatewayName];

    if (v8)
    {
      gatewayPriority = 5;
    }

    else
    {
      name2 = [holderCopy name];
      usernotificationsdLegacyGatewayName = [self usernotificationsdLegacyGatewayName];
      v11 = [name2 isEqual:usernotificationsdLegacyGatewayName];

      if (v11)
      {
        gatewayPriority = 6;
      }

      else
      {
        gatewayPriority = 2;
      }
    }
  }

  v12 = [self sortOrderForPriority:gatewayPriority];

  return v12;
}

@end