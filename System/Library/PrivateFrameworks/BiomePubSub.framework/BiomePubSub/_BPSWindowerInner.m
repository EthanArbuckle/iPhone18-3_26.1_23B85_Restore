@interface _BPSWindowerInner
- (_BPSWindowerInner)initWithDownstream:(id)a3 key:(id)a4 assigner:(id)a5;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)a3;
- (int64_t)receiveInput:(id)a3 key:(id)a4 identifier:(id)a5;
- (void)cancel;
- (void)cancelWithKey:(id)a3 identifier:(id)a4;
- (void)receiveCompletion:(id)a3;
- (void)receiveCompletion:(id)a3 key:(id)a4 identifier:(id)a5;
- (void)receiveSubscription:(id)a3;
- (void)receiveSubscription:(id)a3 key:(id)a4 identifier:(id)a5;
- (void)requestDemand:(int64_t)a3;
- (void)requestDemand:(int64_t)a3 key:(id)a4 identifier:(id)a5;
@end

@implementation _BPSWindowerInner

- (_BPSWindowerInner)initWithDownstream:(id)a3 key:(id)a4 assigner:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v30.receiver = self;
  v30.super_class = _BPSWindowerInner;
  v12 = [(_BPSWindowerInner *)&v30 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_downstream, a3);
    v14 = _Block_copy(v10);
    key = v13->_key;
    v13->_key = v14;

    objc_storeStrong(&v13->_assigner, a5);
    v16 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:0];
    status = v13->_status;
    v13->_status = v16;

    v13->_demand = 0;
    v18 = MEMORY[0x1E695E0F8];
    v19 = [MEMORY[0x1E695E0F8] mutableCopy];
    windows = v13->_windows;
    v13->_windows = v19;

    v21 = [v18 mutableCopy];
    windowsDemand = v13->_windowsDemand;
    v13->_windowsDemand = v21;

    v23 = [v18 mutableCopy];
    windowsBuffer = v13->_windowsBuffer;
    v13->_windowsBuffer = v23;

    v25 = [v18 mutableCopy];
    windowsStatus = v13->_windowsStatus;
    v13->_windowsStatus = v25;

    v27 = [MEMORY[0x1E695E0F0] mutableCopy];
    buffer = v13->_buffer;
    v13->_buffer = v27;

    v13->_recursion = 0;
    v13->_sideRecursion = 0;
  }

  return v13;
}

- (void)receiveCompletion:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  os_unfair_lock_lock(&v5->_lock);
  if ([(BPSSubscriptionStatus *)v5->_status state]== 1)
  {
    v32 = v4;
    v6 = MEMORY[0x1E695E0F0];
    v38 = [MEMORY[0x1E695E0F0] mutableCopy];
    v37 = [v6 mutableCopy];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v5->_windowsStatus;
    v35 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v35)
    {
      v34 = *v44;
      do
      {
        v7 = 0;
        do
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = v7;
          v8 = *(*(&v43 + 1) + 8 * v7);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v9 = [(NSMutableDictionary *)v5->_windowsStatus objectForKeyedSubscript:v8];
          v10 = [v9 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v40;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v40 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v39 + 1) + 8 * i);
                v15 = [(NSMutableDictionary *)v5->_windows objectForKeyedSubscript:v8];
                v16 = [v15 objectForKeyedSubscript:v14];
                [v38 addObject:v16];

                v17 = [(NSMutableDictionary *)v5->_windowsStatus objectForKeyedSubscript:v8];
                v18 = [v17 objectForKeyedSubscript:v14];
                [v37 addObject:v18];
              }

              v11 = [v9 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v11);
          }

          v7 = v36 + 1;
        }

        while (v36 + 1 != v35);
        v35 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v35);
    }

    v4 = v32;
    if ([v38 count])
    {
      v19 = 0;
      do
      {
        v20 = [v37 objectAtIndexedSubscript:v19];
        v21 = [v20 state];

        if (v21 == 1)
        {
          os_unfair_lock_unlock(&v5->_lock);
          v22 = [v38 objectAtIndexedSubscript:v19];
          [v22 receiveCompletion:v32];

          os_unfair_lock_lock(&v5->_lock);
          v23 = [v37 objectAtIndexedSubscript:v19];
          [v23 setState:2];

          v24 = [v37 objectAtIndexedSubscript:v19];
          [v24 setSubscription:0];
        }

        ++v19;
      }

      while ([v38 count] > v19);
    }

    [(BPSSubscriptionStatus *)v5->_status setState:2];
    [(BPSSubscriptionStatus *)v5->_status setSubscription:0];
    [(NSMutableDictionary *)v5->_windows removeAllObjects];
    [(NSMutableDictionary *)v5->_windowsDemand removeAllObjects];
    [(NSMutableDictionary *)v5->_windowsBuffer removeAllObjects];
    [(NSMutableDictionary *)v5->_windowsStatus removeAllObjects];
    v25 = [(_BPSWindowerInner *)v5 downstream];
    v26 = [v32 state];
    if (v26 == 1)
    {
      v29 = [v32 error];
      [(NSMutableArray *)v5->_buffer removeAllObjects];
      os_unfair_lock_unlock(&v5->_lock);
      v30 = [BPSCompletion failureWithError:v29];
      [v25 receiveCompletion:v30];
    }

    else
    {
      if (v26)
      {
LABEL_30:

        goto LABEL_31;
      }

      if (v5->_demand >= 1)
      {
        do
        {
          if (![(NSMutableArray *)v5->_buffer count])
          {
            break;
          }

          --v5->_demand;
          v27 = [(NSMutableArray *)v5->_buffer objectAtIndexedSubscript:0];
          [(NSMutableArray *)v5->_buffer removeObjectAtIndex:0];
          os_unfair_lock_unlock(&v5->_lock);
          v28 = [v25 receiveInput:v27];
          os_unfair_lock_lock(&v5->_lock);
          v5->_demand += v28;
        }

        while (v5->_demand > 0);
      }

      os_unfair_lock_unlock(&v5->_lock);
      v29 = +[BPSCompletion success];
      [v25 receiveCompletion:v29];
    }

    goto LABEL_30;
  }

  os_unfair_lock_unlock(&v5->_lock);
LABEL_31:

  v31 = *MEMORY[0x1E69E9840];
}

- (int64_t)receiveInput:(id)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  v67 = v4;
  v6 = (*(v5->_key + 2))();
  v7 = [v6 copyWithZone:0];

  os_unfair_lock_lock(&v5->_lock);
  if ([(BPSSubscriptionStatus *)v5->_status state]== 1)
  {
    v8 = [(NSMutableDictionary *)v5->_windows objectForKeyedSubscript:v7];

    v9 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
    v10 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
    if (v8)
    {
      v11 = [(NSMutableDictionary *)v5->_windows objectForKeyedSubscript:v7];
      v12 = [v11 allValues];
    }

    else
    {
      v13 = MEMORY[0x1E695E0F8];
      v14 = [MEMORY[0x1E695E0F8] mutableCopy];
      [(NSMutableDictionary *)v5->_windows setObject:v14 forKeyedSubscript:v7];

      v15 = [v13 mutableCopy];
      [(NSMutableDictionary *)v5->_windowsDemand setObject:v15 forKeyedSubscript:v7];

      v16 = [v13 mutableCopy];
      [(NSMutableDictionary *)v5->_windowsBuffer setObject:v16 forKeyedSubscript:v7];

      v11 = [v13 mutableCopy];
      [(NSMutableDictionary *)v5->_windowsStatus setObject:v11 forKeyedSubscript:v7];
      v12 = MEMORY[0x1E695E0F0];
    }

    v17 = v5->_assigner;
    os_unfair_lock_unlock(&v5->_lock);
    v61 = v17;
    v18 = [(BPSWindowAssigner *)v17 assignWindow:v12 input:v67];
    os_unfair_lock_lock(&v5->_lock);
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    obj = v18;
    v68 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
    if (v68)
    {
      v64 = v7;
      v65 = *v73;
      v63 = v5;
      v66 = v12;
      do
      {
        v19 = 0;
        do
        {
          if (*v73 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v69 = v19;
          v20 = *(*(&v72 + 1) + 8 * v19);
          v21 = [v20 identifier];
          if ([v12 containsObject:v20])
          {
            v22 = v10[439];
            v23 = [*(&v5->super.super.super.isa + v22) objectForKeyedSubscript:v7];
            v24 = [v23 objectForKeyedSubscript:v21];
            [v24 addObject:v67];

            v70 = v9[438];
            v25 = [*(&v5->super.super.super.isa + v70) objectForKeyedSubscript:v7];
            v26 = [(_BPSWindowerSide *)v25 objectForKeyedSubscript:v21];
            if ([(_BPSWindowerInner *)v26 integerValue]>= 1)
            {
              v27 = [*(&v5->super.super.super.isa + v22) objectForKeyedSubscript:v7];
              v28 = [v27 objectForKeyedSubscript:v21];
              v71 = v22;
              v29 = [v28 count];

              if (!v29)
              {
                goto LABEL_19;
              }

              while (1)
              {
                v30 = MEMORY[0x1E696AD98];
                v31 = [*(&v5->super.super.super.isa + v70) objectForKeyedSubscript:v7];
                v32 = [v31 objectForKeyedSubscript:v21];
                v33 = [v30 numberWithInteger:{objc_msgSend(v32, "integerValue") - 1}];
                v34 = [*(&v5->super.super.super.isa + v70) objectForKeyedSubscript:v7];
                [v34 setObject:v33 forKeyedSubscript:v21];

                v35 = [*(&v5->super.super.super.isa + v71) objectForKeyedSubscript:v7];
                v36 = [v35 objectForKeyedSubscript:v21];
                v25 = [v36 objectAtIndexedSubscript:0];

                v37 = [*(&v5->super.super.super.isa + v71) objectForKeyedSubscript:v7];
                v38 = [v37 objectForKeyedSubscript:v21];
                [v38 removeObjectAtIndex:0];

                v39 = [(NSMutableDictionary *)v5->_windows objectForKeyedSubscript:v7];
                v26 = [v39 objectForKeyedSubscript:v21];

                os_unfair_lock_unlock(&v5->_lock);
                v40 = [(_BPSWindowerInner *)v26 receiveInput:v25];
                os_unfair_lock_lock(&v5->_lock);
                v41 = MEMORY[0x1E696AD98];
                v42 = [*(&v5->super.super.super.isa + v70) objectForKeyedSubscript:v7];
                v43 = [v42 objectForKeyedSubscript:v21];
                v44 = [v41 numberWithInteger:{objc_msgSend(v43, "integerValue") + v40}];
                v45 = [*(&v5->super.super.super.isa + v70) objectForKeyedSubscript:v7];
                [v45 setObject:v44 forKeyedSubscript:v21];

                v46 = [*(&v5->super.super.super.isa + v70) objectForKeyedSubscript:v7];
                v47 = [v46 objectForKeyedSubscript:v21];
                if ([v47 integerValue] < 1)
                {
                  break;
                }

                v48 = [*(&v5->super.super.super.isa + v71) objectForKeyedSubscript:v7];
                v49 = [v48 objectForKeyedSubscript:v21];
                v50 = [v49 count];

                if (!v50)
                {
                  goto LABEL_19;
                }
              }
            }
          }

          else
          {
            v51 = [(NSMutableDictionary *)v5->_windows objectForKeyedSubscript:v7];
            [v51 setObject:v20 forKeyedSubscript:v21];

            v52 = [*(&v5->super.super.super.isa + v9[438]) objectForKeyedSubscript:v7];
            [v52 setObject:&unk_1F48701A8 forKeyedSubscript:v21];

            v76 = v67;
            v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
            v54 = [v53 mutableCopy];
            v55 = [*(&v5->super.super.super.isa + v10[439]) objectForKeyedSubscript:v7];
            [v55 setObject:v54 forKeyedSubscript:v21];

            v56 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:v20];
            v57 = [(NSMutableDictionary *)v5->_windowsStatus objectForKeyedSubscript:v7];
            [v57 setObject:v56 forKeyedSubscript:v21];

            v26 = v5;
            os_unfair_lock_unlock(&v5->_lock);
            v25 = [[_BPSWindowerSide alloc] initWithKey:v7 identifier:v21 windowerInner:v26];
            [v20 setDownstream:v25];
            [v20 receiveSubscription:v25];
            os_unfair_lock_lock(&v5->_lock);
          }

          v5 = v63;
          v7 = v64;
LABEL_19:

          v19 = v69 + 1;
          v9 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
          v10 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
          v12 = v66;
        }

        while (v69 + 1 != v68);
        v58 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
        v68 = v58;
      }

      while (v58);
    }

    os_unfair_lock_unlock(&v5->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&v5->_lock);
  }

  v59 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)receiveSubscription:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state])
  {
    os_unfair_lock_unlock(&self->_lock);
    [v7 cancel];
  }

  else
  {
    [(BPSSubscriptionStatus *)self->_status setState:1];
    [(BPSSubscriptionStatus *)self->_status setSubscription:v7];
    downstream = self->_downstream;
    v5 = self;
    v6 = downstream;
    os_unfair_lock_unlock(&self->_lock);
    [(BPSSubscriber *)v6 receiveSubscription:v5];

    [v7 requestDemand:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)cancel
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = self;
  os_unfair_lock_lock(&v2->_lock);
  if ([(BPSSubscriptionStatus *)v2->_status state]== 1)
  {
    v3 = [MEMORY[0x1E695E0F0] mutableCopy];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = v2->_windowsStatus;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [(NSMutableDictionary *)v2->_windowsStatus objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
          v10 = [v9 allValues];
          [v3 addObjectsFromArray:v10];
        }

        v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v6);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * j);
          if ([v16 state] == 1)
          {
            os_unfair_lock_unlock(&v2->_lock);
            v17 = [v16 subscription];
            [v17 cancel];

            os_unfair_lock_lock(&v2->_lock);
            [v16 setState:2];
            [v16 setSubscription:0];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v13);
    }

    [(BPSSubscriptionStatus *)v2->_status setState:2];
    [(NSMutableDictionary *)v2->_windows removeAllObjects];
    [(NSMutableDictionary *)v2->_windowsDemand removeAllObjects];
    [(NSMutableDictionary *)v2->_windowsBuffer removeAllObjects];
    [(NSMutableDictionary *)v2->_windowsStatus removeAllObjects];
    v18 = [(BPSSubscriptionStatus *)v2->_status subscription];
    [(BPSSubscriptionStatus *)v2->_status setSubscription:0];
    os_unfair_lock_unlock(&v2->_lock);
    [v18 cancel];
  }

  else
  {
    os_unfair_lock_unlock(&v2->_lock);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)requestDemand:(int64_t)a3
{
  v5 = self;
  v15 = v5;
  if (a3 <= 0)
  {
    [(_BPSWindowerInner *)a2 requestDemand:v5];
    v5 = v15;
  }

  os_unfair_lock_lock(&v5->_lock);
  v6 = [(BPSSubscriptionStatus *)v15->_status state];
  v7 = v15;
  if (v6 == 1 && !v15->_recursion)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      demand = v15->_demand;
      if (demand != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = demand + a3;
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = v10;
        }
      }
    }

    v15->_demand = v8;
    if (v8 >= 1)
    {
      do
      {
        v11 = [(NSMutableArray *)v7->_buffer count];
        v7 = v15;
        if (!v11)
        {
          break;
        }

        --v15->_demand;
        v12 = [(NSMutableArray *)v15->_buffer objectAtIndexedSubscript:0];
        [(NSMutableArray *)v15->_buffer removeObjectAtIndex:0];
        v13 = [(_BPSWindowerInner *)v15 downstream];
        v15->_recursion = 1;
        os_unfair_lock_unlock(&v15->_lock);
        v14 = [v13 receiveInput:v12];
        os_unfair_lock_lock(&v15->_lock);
        v15->_recursion = 0;
        v15->_demand += v14;

        v7 = v15;
      }

      while (v15->_demand > 0);
    }
  }

  os_unfair_lock_unlock(&v7->_lock);
}

- (void)receiveCompletion:(id)a3 key:(id)a4 identifier:(id)a5
{
  v22 = a4;
  v7 = a5;
  v8 = self;
  os_unfair_lock_lock(&v8->_lock);
  if ([(BPSSubscriptionStatus *)v8->_status state]== 1)
  {
    v9 = [(NSMutableDictionary *)v8->_windowsStatus objectForKeyedSubscript:v22];
    v10 = [v9 objectForKeyedSubscript:v7];
    if (v10)
    {
      v11 = v10;
      v12 = [(NSMutableDictionary *)v8->_windowsStatus objectForKeyedSubscript:v22];
      v13 = [v12 objectForKeyedSubscript:v7];
      v14 = [v13 state];

      if (v14 != 1)
      {
        goto LABEL_6;
      }

      v15 = [(NSMutableDictionary *)v8->_windowsStatus objectForKeyedSubscript:v22];
      v16 = [v15 objectForKeyedSubscript:v7];
      [v16 setState:2];

      v17 = [(NSMutableDictionary *)v8->_windowsStatus objectForKeyedSubscript:v22];
      v18 = [v17 objectForKeyedSubscript:v7];
      [v18 setSubscription:0];

      v19 = [(NSMutableDictionary *)v8->_windows objectForKeyedSubscript:v22];
      [v19 removeObjectForKey:v7];

      v20 = [(NSMutableDictionary *)v8->_windowsDemand objectForKeyedSubscript:v22];
      [v20 removeObjectForKey:v7];

      v21 = [(NSMutableDictionary *)v8->_windowsBuffer objectForKeyedSubscript:v22];
      [v21 removeObjectForKey:v7];

      v9 = [(NSMutableDictionary *)v8->_windowsStatus objectForKeyedSubscript:v22];
      [v9 removeObjectForKey:v7];
    }
  }

LABEL_6:
  os_unfair_lock_unlock(&v8->_lock);
}

- (int64_t)receiveInput:(id)a3 key:(id)a4 identifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  os_unfair_lock_lock(&v11->_lock);
  if ([(BPSSubscriptionStatus *)v11->_status state]== 1)
  {
    v12 = [(NSMutableDictionary *)v11->_windowsStatus objectForKeyedSubscript:v9];
    v13 = [v12 objectForKeyedSubscript:v10];
    if (v13)
    {
      v14 = v13;
      v15 = [(NSMutableDictionary *)v11->_windowsStatus objectForKeyedSubscript:v9];
      v16 = [v15 objectForKeyedSubscript:v10];
      v29 = v8;
      v17 = [v16 state];

      v18 = v17 == 1;
      v8 = v29;
      if (v18)
      {
        buffer = v11->_buffer;
        v20 = [BPSWindowerInput alloc];
        v21 = [(NSMutableDictionary *)v11->_windows objectForKeyedSubscript:v9];
        v22 = [v21 objectForKeyedSubscript:v10];
        v23 = [v22 metadata];
        v24 = [(BPSWindowerInput *)v20 initWithAggregate:v29 key:v9 metadata:v23];
        [(NSMutableArray *)buffer addObject:v24];

        v8 = v29;
        if (v11->_demand >= 1)
        {
          do
          {
            if (![(NSMutableArray *)v11->_buffer count])
            {
              break;
            }

            --v11->_demand;
            v25 = [(NSMutableArray *)v11->_buffer objectAtIndexedSubscript:0];
            [(NSMutableArray *)v11->_buffer removeObjectAtIndex:0];
            v26 = [(_BPSWindowerInner *)v11 downstream];
            os_unfair_lock_unlock(&v11->_lock);
            v27 = [v26 receiveInput:v25];
            os_unfair_lock_lock(&v11->_lock);
            v11->_demand += v27;
          }

          while (v11->_demand > 0);
        }
      }
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(&v11->_lock);

  return 0;
}

- (void)receiveSubscription:(id)a3 key:(id)a4 identifier:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state]== 1)
  {
    v10 = [(NSMutableDictionary *)self->_windowsStatus objectForKeyedSubscript:v8];
    v11 = [v10 objectForKeyedSubscript:v9];
    if (v11)
    {
      v12 = v11;
      v13 = [(NSMutableDictionary *)self->_windowsStatus objectForKeyedSubscript:v8];
      v14 = [v13 objectForKeyedSubscript:v9];
      v15 = [v14 state];

      if (!v15)
      {
        v16 = [(NSMutableDictionary *)self->_windowsStatus objectForKeyedSubscript:v8];
        v17 = [v16 objectForKeyedSubscript:v9];
        [v17 setState:1];

        v18 = [(NSMutableDictionary *)self->_windowsStatus objectForKeyedSubscript:v8];
        v19 = [v18 objectForKeyedSubscript:v9];
        [v19 setSubscription:v20];

        os_unfair_lock_unlock(&self->_lock);
        [v20 requestDemand:0x7FFFFFFFFFFFFFFFLL];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  [v20 cancel];
LABEL_7:
}

- (void)cancelWithKey:(id)a3 identifier:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = self;
  os_unfair_lock_lock(&v7->_lock);
  if ([(BPSSubscriptionStatus *)v7->_status state]== 1)
  {
    v8 = [(NSMutableDictionary *)v7->_windowsStatus objectForKeyedSubscript:v25];
    v9 = [v8 objectForKeyedSubscript:v6];
    if (v9)
    {
      v10 = v9;
      v11 = [(NSMutableDictionary *)v7->_windowsStatus objectForKeyedSubscript:v25];
      v12 = [v11 objectForKeyedSubscript:v6];
      v13 = [v12 state];

      if (v13 == 1)
      {
        v14 = [(NSMutableDictionary *)v7->_windowsStatus objectForKeyedSubscript:v25];
        v15 = [v14 objectForKeyedSubscript:v6];
        v16 = [v15 subscription];

        v17 = [(NSMutableDictionary *)v7->_windowsStatus objectForKeyedSubscript:v25];
        v18 = [v17 objectForKeyedSubscript:v6];
        [v18 setState:2];

        v19 = [(NSMutableDictionary *)v7->_windows objectForKeyedSubscript:v25];
        [v19 removeObjectForKey:v6];

        v20 = [(NSMutableDictionary *)v7->_windowsDemand objectForKeyedSubscript:v25];
        [v20 removeObjectForKey:v6];

        v21 = [(NSMutableDictionary *)v7->_windowsBuffer objectForKeyedSubscript:v25];
        [v21 removeObjectForKey:v6];

        v22 = [(NSMutableDictionary *)v7->_windowsStatus objectForKeyedSubscript:v25];
        [v22 removeObjectForKey:v6];

        v23 = [(NSMutableDictionary *)v7->_windowsStatus objectForKeyedSubscript:v25];
        v24 = [v23 objectForKeyedSubscript:v6];
        [v24 setSubscription:0];

        os_unfair_lock_unlock(&v7->_lock);
        [v16 cancel];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(&v7->_lock);
LABEL_7:
}

- (void)requestDemand:(int64_t)a3 key:(id)a4 identifier:(id)a5
{
  v56 = a4;
  v9 = a5;
  v10 = self;
  if (a3 <= 0)
  {
    [_BPSWindowerInner requestDemand:a2 key:v10 identifier:?];
  }

  v11 = 8;
  os_unfair_lock_lock(&v10->_lock);
  if ([(BPSSubscriptionStatus *)v10->_status state]== 1)
  {
    v12 = [(NSMutableDictionary *)v10->_windowsStatus objectForKeyedSubscript:v56];
    v13 = [v12 objectForKeyedSubscript:v9];
    if (!v13)
    {
LABEL_22:

      goto LABEL_23;
    }

    v14 = v13;
    v15 = [(NSMutableDictionary *)v10->_windowsStatus objectForKeyedSubscript:v56];
    v16 = [v15 objectForKeyedSubscript:v9];
    v17 = [v16 state];

    if (v17 == 1 && !v10->_sideRecursion)
    {
      if (a3 == 0x7FFFFFFFFFFFFFFFLL || (-[NSMutableDictionary objectForKeyedSubscript:](v10->_windowsDemand, "objectForKeyedSubscript:", v56), v18 = objc_claimAutoreleasedReturnValue(), [v18 objectForKeyedSubscript:v9], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "integerValue"), v19, v18, v20 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
      }

      else
      {
        v22 = MEMORY[0x1E696AD98];
        v23 = [(NSMutableDictionary *)v10->_windowsDemand objectForKeyedSubscript:v56];
        v24 = [v23 objectForKeyedSubscript:v9];
        v25 = [v24 integerValue] + a3;

        if (v25 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        v21 = [v22 numberWithInteger:v26];
      }

      v27 = [(NSMutableDictionary *)v10->_windowsDemand objectForKeyedSubscript:v56];
      [v27 setObject:v21 forKeyedSubscript:v9];

      v12 = [(NSMutableDictionary *)v10->_windowsDemand objectForKeyedSubscript:v56];
      v28 = [v12 objectForKeyedSubscript:v9];
      if ([v28 integerValue] >= 1)
      {
        v29 = 48;
        v30 = [(NSMutableDictionary *)v10->_windowsBuffer objectForKeyedSubscript:v56];
        v31 = [v30 objectForKeyedSubscript:v9];
        v32 = [v31 count];

        if (!v32)
        {
          goto LABEL_23;
        }

        v55 = 8;
        while (1)
        {
          v33 = MEMORY[0x1E696AD98];
          v34 = [(NSMutableDictionary *)v10->_windowsDemand objectForKeyedSubscript:v56, v55];
          v35 = [v34 objectForKeyedSubscript:v9];
          v36 = [v33 numberWithInteger:{objc_msgSend(v35, "integerValue") - 1}];
          v37 = [(NSMutableDictionary *)v10->_windowsDemand objectForKeyedSubscript:v56];
          [v37 setObject:v36 forKeyedSubscript:v9];

          v38 = [*(&v10->super.super.super.isa + v29) objectForKeyedSubscript:v56];
          v39 = [v38 objectForKeyedSubscript:v9];
          v12 = [v39 objectAtIndexedSubscript:0];

          v40 = [*(&v10->super.super.super.isa + v29) objectForKeyedSubscript:v56];
          v41 = [v40 objectForKeyedSubscript:v9];
          [v41 removeObjectAtIndex:0];

          v42 = [(NSMutableDictionary *)v10->_windows objectForKeyedSubscript:v56];
          v28 = [v42 objectForKeyedSubscript:v9];

          v10->_sideRecursion = 1;
          os_unfair_lock_unlock((v10 + v11));
          v43 = [v28 receiveInput:v12];
          os_unfair_lock_lock((v10 + v11));
          v10->_sideRecursion = 0;
          v44 = MEMORY[0x1E696AD98];
          v45 = [(NSMutableDictionary *)v10->_windowsDemand objectForKeyedSubscript:v56];
          [v45 objectForKeyedSubscript:v9];
          v47 = v46 = v29;
          v48 = [v44 numberWithInteger:{objc_msgSend(v47, "integerValue") + v43}];
          v49 = [(NSMutableDictionary *)v10->_windowsDemand objectForKeyedSubscript:v56];
          [v49 setObject:v48 forKeyedSubscript:v9];

          v50 = [(NSMutableDictionary *)v10->_windowsDemand objectForKeyedSubscript:v56];
          v51 = [v50 objectForKeyedSubscript:v9];
          if ([v51 integerValue] < 1)
          {
            break;
          }

          v52 = [*(&v10->super.super.super.isa + v46) objectForKeyedSubscript:v56];
          v53 = [v52 objectForKeyedSubscript:v9];
          v54 = [v53 count];

          v29 = v46;
          v11 = v55;
          if (!v54)
          {
            goto LABEL_23;
          }
        }

        v11 = v55;
      }

      goto LABEL_22;
    }
  }

LABEL_23:
  os_unfair_lock_unlock((v10 + v11));
}

- (id)upstreamSubscriptions
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E0F0] mutableCopy];
  v4 = [(NSMutableDictionary *)self->_windowsStatus allKeys];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_10];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_windowsStatus objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i), v16];
        v12 = [v11 allValues];
        [v3 addObjectsFromArray:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v3 copy];
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)requestDemand:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSWindower.m" lineNumber:308 description:@"Expecting demand to be greater than 0"];
}

- (void)requestDemand:(uint64_t)a1 key:(uint64_t)a2 identifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSWindower.m" lineNumber:444 description:@"Expecting demand to be greater than 0"];
}

@end