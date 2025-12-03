@interface _BPSWindowerInner
- (_BPSWindowerInner)initWithDownstream:(id)downstream key:(id)key assigner:(id)assigner;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)input;
- (int64_t)receiveInput:(id)input key:(id)key identifier:(id)identifier;
- (void)cancel;
- (void)cancelWithKey:(id)key identifier:(id)identifier;
- (void)receiveCompletion:(id)completion;
- (void)receiveCompletion:(id)completion key:(id)key identifier:(id)identifier;
- (void)receiveSubscription:(id)subscription;
- (void)receiveSubscription:(id)subscription key:(id)key identifier:(id)identifier;
- (void)requestDemand:(int64_t)demand;
- (void)requestDemand:(int64_t)demand key:(id)key identifier:(id)identifier;
@end

@implementation _BPSWindowerInner

- (_BPSWindowerInner)initWithDownstream:(id)downstream key:(id)key assigner:(id)assigner
{
  downstreamCopy = downstream;
  keyCopy = key;
  assignerCopy = assigner;
  v30.receiver = self;
  v30.super_class = _BPSWindowerInner;
  v12 = [(_BPSWindowerInner *)&v30 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v12->_downstream, downstream);
    v14 = _Block_copy(keyCopy);
    key = v13->_key;
    v13->_key = v14;

    objc_storeStrong(&v13->_assigner, assigner);
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

- (void)receiveCompletion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    v32 = completionCopy;
    v6 = MEMORY[0x1E695E0F0];
    v38 = [MEMORY[0x1E695E0F0] mutableCopy];
    v37 = [v6 mutableCopy];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = selfCopy->_windowsStatus;
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
          v9 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:v8];
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
                v15 = [(NSMutableDictionary *)selfCopy->_windows objectForKeyedSubscript:v8];
                v16 = [v15 objectForKeyedSubscript:v14];
                [v38 addObject:v16];

                v17 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:v8];
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

    completionCopy = v32;
    if ([v38 count])
    {
      v19 = 0;
      do
      {
        v20 = [v37 objectAtIndexedSubscript:v19];
        state = [v20 state];

        if (state == 1)
        {
          os_unfair_lock_unlock(&selfCopy->_lock);
          v22 = [v38 objectAtIndexedSubscript:v19];
          [v22 receiveCompletion:v32];

          os_unfair_lock_lock(&selfCopy->_lock);
          v23 = [v37 objectAtIndexedSubscript:v19];
          [v23 setState:2];

          v24 = [v37 objectAtIndexedSubscript:v19];
          [v24 setSubscription:0];
        }

        ++v19;
      }

      while ([v38 count] > v19);
    }

    [(BPSSubscriptionStatus *)selfCopy->_status setState:2];
    [(BPSSubscriptionStatus *)selfCopy->_status setSubscription:0];
    [(NSMutableDictionary *)selfCopy->_windows removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_windowsDemand removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_windowsBuffer removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_windowsStatus removeAllObjects];
    downstream = [(_BPSWindowerInner *)selfCopy downstream];
    state2 = [v32 state];
    if (state2 == 1)
    {
      error = [v32 error];
      [(NSMutableArray *)selfCopy->_buffer removeAllObjects];
      os_unfair_lock_unlock(&selfCopy->_lock);
      v30 = [BPSCompletion failureWithError:error];
      [downstream receiveCompletion:v30];
    }

    else
    {
      if (state2)
      {
LABEL_30:

        goto LABEL_31;
      }

      if (selfCopy->_demand >= 1)
      {
        do
        {
          if (![(NSMutableArray *)selfCopy->_buffer count])
          {
            break;
          }

          --selfCopy->_demand;
          v27 = [(NSMutableArray *)selfCopy->_buffer objectAtIndexedSubscript:0];
          [(NSMutableArray *)selfCopy->_buffer removeObjectAtIndex:0];
          os_unfair_lock_unlock(&selfCopy->_lock);
          v28 = [downstream receiveInput:v27];
          os_unfair_lock_lock(&selfCopy->_lock);
          selfCopy->_demand += v28;
        }

        while (selfCopy->_demand > 0);
      }

      os_unfair_lock_unlock(&selfCopy->_lock);
      error = +[BPSCompletion success];
      [downstream receiveCompletion:error];
    }

    goto LABEL_30;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
LABEL_31:

  v31 = *MEMORY[0x1E69E9840];
}

- (int64_t)receiveInput:(id)input
{
  v78 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  selfCopy = self;
  v67 = inputCopy;
  v6 = (*(selfCopy->_key + 2))();
  v7 = [v6 copyWithZone:0];

  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    v8 = [(NSMutableDictionary *)selfCopy->_windows objectForKeyedSubscript:v7];

    v9 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
    v10 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
    if (v8)
    {
      v11 = [(NSMutableDictionary *)selfCopy->_windows objectForKeyedSubscript:v7];
      allValues = [v11 allValues];
    }

    else
    {
      v13 = MEMORY[0x1E695E0F8];
      v14 = [MEMORY[0x1E695E0F8] mutableCopy];
      [(NSMutableDictionary *)selfCopy->_windows setObject:v14 forKeyedSubscript:v7];

      v15 = [v13 mutableCopy];
      [(NSMutableDictionary *)selfCopy->_windowsDemand setObject:v15 forKeyedSubscript:v7];

      v16 = [v13 mutableCopy];
      [(NSMutableDictionary *)selfCopy->_windowsBuffer setObject:v16 forKeyedSubscript:v7];

      v11 = [v13 mutableCopy];
      [(NSMutableDictionary *)selfCopy->_windowsStatus setObject:v11 forKeyedSubscript:v7];
      allValues = MEMORY[0x1E695E0F0];
    }

    v17 = selfCopy->_assigner;
    os_unfair_lock_unlock(&selfCopy->_lock);
    v61 = v17;
    v18 = [(BPSWindowAssigner *)v17 assignWindow:allValues input:v67];
    os_unfair_lock_lock(&selfCopy->_lock);
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
      v63 = selfCopy;
      v66 = allValues;
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
          identifier = [v20 identifier];
          if ([allValues containsObject:v20])
          {
            v22 = v10[439];
            v23 = [*(&selfCopy->super.super.super.isa + v22) objectForKeyedSubscript:v7];
            v24 = [v23 objectForKeyedSubscript:identifier];
            [v24 addObject:v67];

            v70 = v9[438];
            v25 = [*(&selfCopy->super.super.super.isa + v70) objectForKeyedSubscript:v7];
            v26 = [(_BPSWindowerSide *)v25 objectForKeyedSubscript:identifier];
            if ([(_BPSWindowerInner *)v26 integerValue]>= 1)
            {
              v27 = [*(&selfCopy->super.super.super.isa + v22) objectForKeyedSubscript:v7];
              v28 = [v27 objectForKeyedSubscript:identifier];
              v71 = v22;
              v29 = [v28 count];

              if (!v29)
              {
                goto LABEL_19;
              }

              while (1)
              {
                v30 = MEMORY[0x1E696AD98];
                v31 = [*(&selfCopy->super.super.super.isa + v70) objectForKeyedSubscript:v7];
                v32 = [v31 objectForKeyedSubscript:identifier];
                v33 = [v30 numberWithInteger:{objc_msgSend(v32, "integerValue") - 1}];
                v34 = [*(&selfCopy->super.super.super.isa + v70) objectForKeyedSubscript:v7];
                [v34 setObject:v33 forKeyedSubscript:identifier];

                v35 = [*(&selfCopy->super.super.super.isa + v71) objectForKeyedSubscript:v7];
                v36 = [v35 objectForKeyedSubscript:identifier];
                v25 = [v36 objectAtIndexedSubscript:0];

                v37 = [*(&selfCopy->super.super.super.isa + v71) objectForKeyedSubscript:v7];
                v38 = [v37 objectForKeyedSubscript:identifier];
                [v38 removeObjectAtIndex:0];

                v39 = [(NSMutableDictionary *)selfCopy->_windows objectForKeyedSubscript:v7];
                v26 = [v39 objectForKeyedSubscript:identifier];

                os_unfair_lock_unlock(&selfCopy->_lock);
                v40 = [(_BPSWindowerInner *)v26 receiveInput:v25];
                os_unfair_lock_lock(&selfCopy->_lock);
                v41 = MEMORY[0x1E696AD98];
                v42 = [*(&selfCopy->super.super.super.isa + v70) objectForKeyedSubscript:v7];
                v43 = [v42 objectForKeyedSubscript:identifier];
                v44 = [v41 numberWithInteger:{objc_msgSend(v43, "integerValue") + v40}];
                v45 = [*(&selfCopy->super.super.super.isa + v70) objectForKeyedSubscript:v7];
                [v45 setObject:v44 forKeyedSubscript:identifier];

                v46 = [*(&selfCopy->super.super.super.isa + v70) objectForKeyedSubscript:v7];
                v47 = [v46 objectForKeyedSubscript:identifier];
                if ([v47 integerValue] < 1)
                {
                  break;
                }

                v48 = [*(&selfCopy->super.super.super.isa + v71) objectForKeyedSubscript:v7];
                v49 = [v48 objectForKeyedSubscript:identifier];
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
            v51 = [(NSMutableDictionary *)selfCopy->_windows objectForKeyedSubscript:v7];
            [v51 setObject:v20 forKeyedSubscript:identifier];

            v52 = [*(&selfCopy->super.super.super.isa + v9[438]) objectForKeyedSubscript:v7];
            [v52 setObject:&unk_1F48701A8 forKeyedSubscript:identifier];

            v76 = v67;
            v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
            v54 = [v53 mutableCopy];
            v55 = [*(&selfCopy->super.super.super.isa + v10[439]) objectForKeyedSubscript:v7];
            [v55 setObject:v54 forKeyedSubscript:identifier];

            v56 = [[BPSSubscriptionStatus alloc] initWithState:0 subscription:v20];
            v57 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:v7];
            [v57 setObject:v56 forKeyedSubscript:identifier];

            v26 = selfCopy;
            os_unfair_lock_unlock(&selfCopy->_lock);
            v25 = [[_BPSWindowerSide alloc] initWithKey:v7 identifier:identifier windowerInner:v26];
            [v20 setDownstream:v25];
            [v20 receiveSubscription:v25];
            os_unfair_lock_lock(&selfCopy->_lock);
          }

          selfCopy = v63;
          v7 = v64;
LABEL_19:

          v19 = v69 + 1;
          v9 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
          v10 = &OBJC_IVAR____BPSRemoveDuplicatesInner__last;
          allValues = v66;
        }

        while (v69 + 1 != v68);
        v58 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
        v68 = v58;
      }

      while (v58);
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  v59 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state])
  {
    os_unfair_lock_unlock(&self->_lock);
    [subscriptionCopy cancel];
  }

  else
  {
    [(BPSSubscriptionStatus *)self->_status setState:1];
    [(BPSSubscriptionStatus *)self->_status setSubscription:subscriptionCopy];
    downstream = self->_downstream;
    selfCopy = self;
    v6 = downstream;
    os_unfair_lock_unlock(&self->_lock);
    [(BPSSubscriber *)v6 receiveSubscription:selfCopy];

    [subscriptionCopy requestDemand:0x7FFFFFFFFFFFFFFFLL];
  }
}

- (void)cancel
{
  v30 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    v3 = [MEMORY[0x1E695E0F0] mutableCopy];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = selfCopy->_windowsStatus;
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

          v9 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
          allValues = [v9 allValues];
          [v3 addObjectsFromArray:allValues];
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
            os_unfair_lock_unlock(&selfCopy->_lock);
            subscription = [v16 subscription];
            [subscription cancel];

            os_unfair_lock_lock(&selfCopy->_lock);
            [v16 setState:2];
            [v16 setSubscription:0];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v13);
    }

    [(BPSSubscriptionStatus *)selfCopy->_status setState:2];
    [(NSMutableDictionary *)selfCopy->_windows removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_windowsDemand removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_windowsBuffer removeAllObjects];
    [(NSMutableDictionary *)selfCopy->_windowsStatus removeAllObjects];
    subscription2 = [(BPSSubscriptionStatus *)selfCopy->_status subscription];
    [(BPSSubscriptionStatus *)selfCopy->_status setSubscription:0];
    os_unfair_lock_unlock(&selfCopy->_lock);
    [subscription2 cancel];
  }

  else
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)requestDemand:(int64_t)demand
{
  selfCopy = self;
  v15 = selfCopy;
  if (demand <= 0)
  {
    [(_BPSWindowerInner *)a2 requestDemand:selfCopy];
    selfCopy = v15;
  }

  os_unfair_lock_lock(&selfCopy->_lock);
  state = [(BPSSubscriptionStatus *)v15->_status state];
  v7 = v15;
  if (state == 1 && !v15->_recursion)
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (demand != 0x7FFFFFFFFFFFFFFFLL)
    {
      demand = v15->_demand;
      if (demand != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = demand + demand;
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
        downstream = [(_BPSWindowerInner *)v15 downstream];
        v15->_recursion = 1;
        os_unfair_lock_unlock(&v15->_lock);
        v14 = [downstream receiveInput:v12];
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

- (void)receiveCompletion:(id)completion key:(id)key identifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    v9 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
    v10 = [v9 objectForKeyedSubscript:identifierCopy];
    if (v10)
    {
      v11 = v10;
      v12 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
      v13 = [v12 objectForKeyedSubscript:identifierCopy];
      state = [v13 state];

      if (state != 1)
      {
        goto LABEL_6;
      }

      v15 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
      v16 = [v15 objectForKeyedSubscript:identifierCopy];
      [v16 setState:2];

      v17 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
      v18 = [v17 objectForKeyedSubscript:identifierCopy];
      [v18 setSubscription:0];

      v19 = [(NSMutableDictionary *)selfCopy->_windows objectForKeyedSubscript:keyCopy];
      [v19 removeObjectForKey:identifierCopy];

      v20 = [(NSMutableDictionary *)selfCopy->_windowsDemand objectForKeyedSubscript:keyCopy];
      [v20 removeObjectForKey:identifierCopy];

      v21 = [(NSMutableDictionary *)selfCopy->_windowsBuffer objectForKeyedSubscript:keyCopy];
      [v21 removeObjectForKey:identifierCopy];

      v9 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
      [v9 removeObjectForKey:identifierCopy];
    }
  }

LABEL_6:
  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (int64_t)receiveInput:(id)input key:(id)key identifier:(id)identifier
{
  inputCopy = input;
  keyCopy = key;
  identifierCopy = identifier;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    v12 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
    v13 = [v12 objectForKeyedSubscript:identifierCopy];
    if (v13)
    {
      v14 = v13;
      v15 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
      v16 = [v15 objectForKeyedSubscript:identifierCopy];
      v29 = inputCopy;
      state = [v16 state];

      v18 = state == 1;
      inputCopy = v29;
      if (v18)
      {
        buffer = selfCopy->_buffer;
        v20 = [BPSWindowerInput alloc];
        v21 = [(NSMutableDictionary *)selfCopy->_windows objectForKeyedSubscript:keyCopy];
        v22 = [v21 objectForKeyedSubscript:identifierCopy];
        metadata = [v22 metadata];
        v24 = [(BPSWindowerInput *)v20 initWithAggregate:v29 key:keyCopy metadata:metadata];
        [(NSMutableArray *)buffer addObject:v24];

        inputCopy = v29;
        if (selfCopy->_demand >= 1)
        {
          do
          {
            if (![(NSMutableArray *)selfCopy->_buffer count])
            {
              break;
            }

            --selfCopy->_demand;
            v25 = [(NSMutableArray *)selfCopy->_buffer objectAtIndexedSubscript:0];
            [(NSMutableArray *)selfCopy->_buffer removeObjectAtIndex:0];
            downstream = [(_BPSWindowerInner *)selfCopy downstream];
            os_unfair_lock_unlock(&selfCopy->_lock);
            v27 = [downstream receiveInput:v25];
            os_unfair_lock_lock(&selfCopy->_lock);
            selfCopy->_demand += v27;
          }

          while (selfCopy->_demand > 0);
        }
      }
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(&selfCopy->_lock);

  return 0;
}

- (void)receiveSubscription:(id)subscription key:(id)key identifier:(id)identifier
{
  subscriptionCopy = subscription;
  keyCopy = key;
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  if ([(BPSSubscriptionStatus *)self->_status state]== 1)
  {
    v10 = [(NSMutableDictionary *)self->_windowsStatus objectForKeyedSubscript:keyCopy];
    v11 = [v10 objectForKeyedSubscript:identifierCopy];
    if (v11)
    {
      v12 = v11;
      v13 = [(NSMutableDictionary *)self->_windowsStatus objectForKeyedSubscript:keyCopy];
      v14 = [v13 objectForKeyedSubscript:identifierCopy];
      state = [v14 state];

      if (!state)
      {
        v16 = [(NSMutableDictionary *)self->_windowsStatus objectForKeyedSubscript:keyCopy];
        v17 = [v16 objectForKeyedSubscript:identifierCopy];
        [v17 setState:1];

        v18 = [(NSMutableDictionary *)self->_windowsStatus objectForKeyedSubscript:keyCopy];
        v19 = [v18 objectForKeyedSubscript:identifierCopy];
        [v19 setSubscription:subscriptionCopy];

        os_unfair_lock_unlock(&self->_lock);
        [subscriptionCopy requestDemand:0x7FFFFFFFFFFFFFFFLL];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  [subscriptionCopy cancel];
LABEL_7:
}

- (void)cancelWithKey:(id)key identifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    v8 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
    v9 = [v8 objectForKeyedSubscript:identifierCopy];
    if (v9)
    {
      v10 = v9;
      v11 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
      v12 = [v11 objectForKeyedSubscript:identifierCopy];
      state = [v12 state];

      if (state == 1)
      {
        v14 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
        v15 = [v14 objectForKeyedSubscript:identifierCopy];
        subscription = [v15 subscription];

        v17 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
        v18 = [v17 objectForKeyedSubscript:identifierCopy];
        [v18 setState:2];

        v19 = [(NSMutableDictionary *)selfCopy->_windows objectForKeyedSubscript:keyCopy];
        [v19 removeObjectForKey:identifierCopy];

        v20 = [(NSMutableDictionary *)selfCopy->_windowsDemand objectForKeyedSubscript:keyCopy];
        [v20 removeObjectForKey:identifierCopy];

        v21 = [(NSMutableDictionary *)selfCopy->_windowsBuffer objectForKeyedSubscript:keyCopy];
        [v21 removeObjectForKey:identifierCopy];

        v22 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
        [v22 removeObjectForKey:identifierCopy];

        v23 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
        v24 = [v23 objectForKeyedSubscript:identifierCopy];
        [v24 setSubscription:0];

        os_unfair_lock_unlock(&selfCopy->_lock);
        [subscription cancel];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
LABEL_7:
}

- (void)requestDemand:(int64_t)demand key:(id)key identifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  selfCopy = self;
  if (demand <= 0)
  {
    [_BPSWindowerInner requestDemand:a2 key:selfCopy identifier:?];
  }

  v11 = 8;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(BPSSubscriptionStatus *)selfCopy->_status state]== 1)
  {
    v12 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
    v13 = [v12 objectForKeyedSubscript:identifierCopy];
    if (!v13)
    {
LABEL_22:

      goto LABEL_23;
    }

    v14 = v13;
    v15 = [(NSMutableDictionary *)selfCopy->_windowsStatus objectForKeyedSubscript:keyCopy];
    v16 = [v15 objectForKeyedSubscript:identifierCopy];
    state = [v16 state];

    if (state == 1 && !selfCopy->_sideRecursion)
    {
      if (demand == 0x7FFFFFFFFFFFFFFFLL || (-[NSMutableDictionary objectForKeyedSubscript:](selfCopy->_windowsDemand, "objectForKeyedSubscript:", keyCopy), v18 = objc_claimAutoreleasedReturnValue(), [v18 objectForKeyedSubscript:identifierCopy], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "integerValue"), v19, v18, v20 == 0x7FFFFFFFFFFFFFFFLL))
      {
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:0x7FFFFFFFFFFFFFFFLL];
      }

      else
      {
        v22 = MEMORY[0x1E696AD98];
        v23 = [(NSMutableDictionary *)selfCopy->_windowsDemand objectForKeyedSubscript:keyCopy];
        v24 = [v23 objectForKeyedSubscript:identifierCopy];
        v25 = [v24 integerValue] + demand;

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

      v27 = [(NSMutableDictionary *)selfCopy->_windowsDemand objectForKeyedSubscript:keyCopy];
      [v27 setObject:v21 forKeyedSubscript:identifierCopy];

      v12 = [(NSMutableDictionary *)selfCopy->_windowsDemand objectForKeyedSubscript:keyCopy];
      v28 = [v12 objectForKeyedSubscript:identifierCopy];
      if ([v28 integerValue] >= 1)
      {
        v29 = 48;
        v30 = [(NSMutableDictionary *)selfCopy->_windowsBuffer objectForKeyedSubscript:keyCopy];
        v31 = [v30 objectForKeyedSubscript:identifierCopy];
        v32 = [v31 count];

        if (!v32)
        {
          goto LABEL_23;
        }

        v55 = 8;
        while (1)
        {
          v33 = MEMORY[0x1E696AD98];
          v34 = [(NSMutableDictionary *)selfCopy->_windowsDemand objectForKeyedSubscript:keyCopy, v55];
          v35 = [v34 objectForKeyedSubscript:identifierCopy];
          v36 = [v33 numberWithInteger:{objc_msgSend(v35, "integerValue") - 1}];
          v37 = [(NSMutableDictionary *)selfCopy->_windowsDemand objectForKeyedSubscript:keyCopy];
          [v37 setObject:v36 forKeyedSubscript:identifierCopy];

          v38 = [*(&selfCopy->super.super.super.isa + v29) objectForKeyedSubscript:keyCopy];
          v39 = [v38 objectForKeyedSubscript:identifierCopy];
          v12 = [v39 objectAtIndexedSubscript:0];

          v40 = [*(&selfCopy->super.super.super.isa + v29) objectForKeyedSubscript:keyCopy];
          v41 = [v40 objectForKeyedSubscript:identifierCopy];
          [v41 removeObjectAtIndex:0];

          v42 = [(NSMutableDictionary *)selfCopy->_windows objectForKeyedSubscript:keyCopy];
          v28 = [v42 objectForKeyedSubscript:identifierCopy];

          selfCopy->_sideRecursion = 1;
          os_unfair_lock_unlock((selfCopy + v11));
          v43 = [v28 receiveInput:v12];
          os_unfair_lock_lock((selfCopy + v11));
          selfCopy->_sideRecursion = 0;
          v44 = MEMORY[0x1E696AD98];
          v45 = [(NSMutableDictionary *)selfCopy->_windowsDemand objectForKeyedSubscript:keyCopy];
          [v45 objectForKeyedSubscript:identifierCopy];
          v47 = v46 = v29;
          v48 = [v44 numberWithInteger:{objc_msgSend(v47, "integerValue") + v43}];
          v49 = [(NSMutableDictionary *)selfCopy->_windowsDemand objectForKeyedSubscript:keyCopy];
          [v49 setObject:v48 forKeyedSubscript:identifierCopy];

          v50 = [(NSMutableDictionary *)selfCopy->_windowsDemand objectForKeyedSubscript:keyCopy];
          v51 = [v50 objectForKeyedSubscript:identifierCopy];
          if ([v51 integerValue] < 1)
          {
            break;
          }

          v52 = [*(&selfCopy->super.super.super.isa + v46) objectForKeyedSubscript:keyCopy];
          v53 = [v52 objectForKeyedSubscript:identifierCopy];
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
  os_unfair_lock_unlock((selfCopy + v11));
}

- (id)upstreamSubscriptions
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E0F0] mutableCopy];
  allKeys = [(NSMutableDictionary *)self->_windowsStatus allKeys];
  v5 = [allKeys sortedArrayUsingComparator:&__block_literal_global_10];

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
        allValues = [v11 allValues];
        [v3 addObjectsFromArray:allValues];
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