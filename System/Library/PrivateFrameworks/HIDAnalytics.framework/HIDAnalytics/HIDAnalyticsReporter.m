@interface HIDAnalyticsReporter
- (HIDAnalyticsReporter)init;
- (id)createBucketData:(id)a3 fieldvalue:(id)a4 fieldDescription:(id)a5;
- (void)dealloc;
- (void)dispatchAnalyticsForEvent:(id)a3;
- (void)logAnalyticsEvent:(id)a3;
- (void)logAnalyticsEvent:(id)a3 eventDescription:(id)a4 eventValue:(id)a5;
- (void)registerEvent:(id)a3;
- (void)start;
- (void)unregisterEvent:(id)a3;
@end

@implementation HIDAnalyticsReporter

- (HIDAnalyticsReporter)init
{
  v16.receiver = self;
  v16.super_class = HIDAnalyticsReporter;
  v2 = [(HIDAnalyticsReporter *)&v16 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    *(v2 + 8) = 0;
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.hidanalytics", v5);
    v7 = *(v2 + 2);
    *(v2 + 2) = v6;

    v8 = *(v2 + 2);
    if (v8)
    {
      v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);
      v10 = *(v2 + 3);
      *(v2 + 3) = v9;

      v11 = *(v2 + 3);
      if (v11)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __28__HIDAnalyticsReporter_init__block_invoke;
        v13[3] = &unk_2796A1D98;
        objc_copyWeak(&v14, &location);
        dispatch_source_set_event_handler(&v11->super, v13);
        dispatch_source_set_timer(*(v2 + 3), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
        dispatch_activate(*(v2 + 3));
        v11 = v2;
        objc_destroyWeak(&v14);
      }
    }

    else
    {
      v11 = 0;
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __28__HIDAnalyticsReporter_init__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 8);
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:*&v2[2]._os_unfair_lock_opaque];
    os_unfair_lock_unlock(v2 + 8);
    if (v3)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = v3;
      obj = v3;
      v4 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v24;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v24 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v23 + 1) + 8 * i);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v9 = [v8 name];
              *buf = 138412290;
              v28 = v9;
              _os_log_impl(&dword_25092B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HIDAnalytics Timer Send event %@", buf, 0xCu);
            }

            v10 = [v8 value];
            DeepCopy = CFPropertyListCreateDeepCopy(0, v10, 2uLL);

            v12 = [v8 name];
            if (v12)
            {
              v13 = MEMORY[0x277CCACA8];
              v14 = [v8 name];
              v15 = [v13 stringWithFormat:@"%@", v14];
            }

            else
            {
              v15 = @"unknown";
            }

            v16 = [v8 desc];
            if (v16)
            {
              v17 = MEMORY[0x277CCACA8];
              v18 = [v8 desc];
              v19 = [v17 stringWithFormat:@"%@", v18];
            }

            else
            {
              v19 = 0;
            }

            if (!DeepCopy)
            {

              goto LABEL_24;
            }

            os_unfair_lock_lock(v2 + 8);
            if ([*&v2[2]._os_unfair_lock_opaque containsObject:v8])
            {
              [v8 setValue:&unk_2862D5FE8];
              os_unfair_lock_unlock(v2 + 8);
              [(os_unfair_lock_s *)v2 logAnalyticsEvent:v15 eventDescription:v19 eventValue:DeepCopy];
            }

            else
            {
              os_unfair_lock_unlock(v2 + 8);
            }
          }

          v5 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v3 = v21;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NSMutableSet *)self->_events removeAllObjects];
  [(HIDAnalyticsReporter *)self stop];
  dispatch_source_cancel(self->_timer);
  v3.receiver = self;
  v3.super_class = HIDAnalyticsReporter;
  [(HIDAnalyticsReporter *)&v3 dealloc];
}

- (id)createBucketData:(id)a3 fieldvalue:(id)a4 fieldDescription:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = MEMORY[0x277CBEB18];
    v11 = v8;
    v12 = objc_alloc_init(v10);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__HIDAnalyticsReporter_createBucketData_fieldvalue_fieldDescription___block_invoke;
    v17[3] = &unk_2796A1DC0;
    v18 = v7;
    v19 = v9;
    v13 = v12;
    v20 = v13;
    [v11 enumerateObjectsUsingBlock:v17];

    v14 = v20;
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __69__HIDAnalyticsReporter_createBucketData_fieldvalue_fieldDescription___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@BucketID", *(a1 + 32)];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@BucketCount", *(a1 + 32)];
    v8 = v12;
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@Description", *(a1 + 32)];
    v10 = *(a1 + 40);
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v11 setObject:v6 forKeyedSubscript:v5];
    [v11 setObject:v8 forKeyedSubscript:v7];
    if (v10)
    {
      [v11 setObject:v10 forKeyedSubscript:v9];
    }

    if ([v8 unsignedIntValue])
    {
      [*(a1 + 48) addObject:v11];
    }
  }
}

- (void)logAnalyticsEvent:(id)a3 eventDescription:(id)a4 eventValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a5)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__HIDAnalyticsReporter_logAnalyticsEvent_eventDescription_eventValue___block_invoke;
    v11[3] = &unk_2796A1DC0;
    v11[4] = self;
    v12 = v9;
    v13 = v8;
    [a5 enumerateObjectsUsingBlock:v11];
  }
}

void __70__HIDAnalyticsReporter_logAnalyticsEvent_eventDescription_eventValue___block_invoke(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 objectForKeyedSubscript:@"Name"];
    v6 = [v4 objectForKeyedSubscript:@"Type"];
    v7 = [v4 objectForKeyedSubscript:@"Value"];
    if (!v7 || !v5 || !v6)
    {
      goto LABEL_10;
    }

    if ([v6 unsignedIntegerValue] == 1)
    {
      v8 = [*(a1 + 32) createBucketData:v5 fieldvalue:v7 fieldDescription:*(a1 + 40)];
      if (!v8)
      {
LABEL_10:

        goto LABEL_11;
      }

      v9 = v8;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__HIDAnalyticsReporter_logAnalyticsEvent_eventDescription_eventValue___block_invoke_2;
      v15[3] = &unk_2796A1E10;
      v10 = &v16;
      v16 = *(a1 + 48);
      [v9 enumerateObjectsUsingBlock:v15];
    }

    else
    {
      v17[0] = @"FieldName";
      v17[1] = @"FieldValue";
      v18[0] = v5;
      v18[1] = v7;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
      v12 = *(a1 + 48);
      v10 = &v14;
      v14 = v11;
      v9 = v11;
      AnalyticsSendEventLazy();
    }

    goto LABEL_10;
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

void __70__HIDAnalyticsReporter_logAnalyticsEvent_eventDescription_eventValue___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();
}

- (void)logAnalyticsEvent:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 value];
  DeepCopy = CFPropertyListCreateDeepCopy(0, v5, 2uLL);

  v7 = [v4 name];
  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v4 name];
    v10 = [v8 stringWithFormat:@"%@", v9];
  }

  else
  {
    v10 = @"unknown";
  }

  v11 = [v4 desc];
  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [v4 desc];
    v14 = [v12 stringWithFormat:@"%@", v13];
  }

  else
  {
    v14 = 0;
  }

  if (DeepCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__HIDAnalyticsReporter_logAnalyticsEvent___block_invoke;
    block[3] = &unk_2796A1E38;
    objc_copyWeak(&v20, &location);
    v17 = v10;
    v18 = v14;
    v19 = DeepCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v20);
  }

  objc_destroyWeak(&location);
}

void __42__HIDAnalyticsReporter_logAnalyticsEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained logAnalyticsEvent:*(a1 + 32) eventDescription:*(a1 + 40) eventValue:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)registerEvent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_events addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)unregisterEvent:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_events removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (([v4 isLogged] & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v4 name];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_25092B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HIDAnalytics Unregister Send event %@", &v7, 0xCu);
    }

    [(HIDAnalyticsReporter *)self logAnalyticsEvent:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  timer = self->_timer;
  v3 = dispatch_time(0x8000000000000000, 0);

  dispatch_source_set_timer(timer, v3, 0x274A48A78000uLL, 0);
}

- (void)dispatchAnalyticsForEvent:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableSet *)self->_events containsObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 name];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_25092B000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "HIDAnalytics Set Value Send event %@", &v8, 0xCu);
    }

    [(HIDAnalyticsReporter *)self logAnalyticsEvent:v4];
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end