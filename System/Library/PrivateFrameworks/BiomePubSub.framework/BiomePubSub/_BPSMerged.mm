@interface _BPSMerged
- (_BPSMerged)initWithDownstream:(id)downstream count:(int64_t)count;
- (id)applyDownstreamWhileLocked:(BOOL)locked apply:(id)apply;
- (id)newBookmark;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)input atIndex:(int64_t)index;
- (void)cancel;
- (void)receiveCompletion:(id)completion atIndex:(int64_t)index;
- (void)receiveSubscription:(id)subscription atIndex:(int64_t)index;
- (void)requestDemand:(int64_t)demand;
- (void)updateBookmarksWhenLockedForIndex:(unint64_t)index;
- (void)upstreamSubscriptions;
@end

@implementation _BPSMerged

- (_BPSMerged)initWithDownstream:(id)downstream count:(int64_t)count
{
  downstreamCopy = downstream;
  v23.receiver = self;
  v23.super_class = _BPSMerged;
  v8 = [(_BPSMerged *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_downstream, downstream);
    v9->_count = count;
    v9->_terminated = 0;
    v9->_upstreamFinished = 0;
    v9->_finished = 0;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    subscriptions = v9->_subscriptions;
    v9->_subscriptions = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    upstreamBookmarks = v9->_upstreamBookmarks;
    v9->_upstreamBookmarks = v12;

    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
    buffers = v9->_buffers;
    v9->_buffers = v14;

    v9->_recursive = 0;
    v9->_demand = 0;
    v9->_pending = 0;
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_downstreamLock = 0;
    if (count >= 1)
    {
      do
      {
        v16 = v9->_subscriptions;
        null = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v16 addObject:null];

        v18 = v9->_upstreamBookmarks;
        null2 = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v18 addObject:null2];

        v20 = v9->_buffers;
        null3 = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v20 addObject:null3];

        --count;
      }

      while (count);
    }
  }

  return v9;
}

- (id)applyDownstreamWhileLocked:(BOOL)locked apply:(id)apply
{
  applyCopy = apply;
  if (!locked)
  {
    os_unfair_lock_lock(&self->_lock);
  }

  [(_BPSMerged *)self setRecursive:1];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  downstream = [(_BPSMerged *)self downstream];
  v8 = applyCopy[2](applyCopy, downstream);

  os_unfair_recursive_lock_unlock();
  os_unfair_lock_lock(&self->_lock);
  [(_BPSMerged *)self setRecursive:0];
  if (!locked)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v8;
}

- (void)receiveCompletion:(id)completion atIndex:(int64_t)index
{
  v87 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  selfCopy = self;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v84 = objc_opt_class();
    v85 = 2048;
    indexCopy = index;
    v9 = v84;
    _os_log_impl(&dword_1C871B000, v8, OS_LOG_TYPE_INFO, "%@ - completion at index %ld", buf, 0x16u);
  }

  state = [completionCopy state];
  if (!state)
  {
    os_unfair_lock_lock(&selfCopy->_lock);
    [(_BPSMerged *)selfCopy setUpstreamFinished:[(_BPSMerged *)selfCopy upstreamFinished]+ 1];
    [(_BPSMerged *)selfCopy updateBookmarksWhenLockedForIndex:index];
    null = [MEMORY[0x1E695DFB0] null];
    subscriptions = [(_BPSMerged *)selfCopy subscriptions];
    [subscriptions setObject:null atIndexedSubscript:index];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    buffers = [(_BPSMerged *)selfCopy buffers];
    v37 = [buffers countByEnumeratingWithState:&v70 objects:v81 count:16];
    if (v37)
    {
      v38 = *v71;
      while (2)
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v71 != v38)
          {
            objc_enumerationMutation(buffers);
          }

          v40 = *(*(&v70 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            LOBYTE(v37) = 1;
            goto LABEL_32;
          }
        }

        v37 = [buffers countByEnumeratingWithState:&v70 objects:v81 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

LABEL_32:

    upstreamFinished = [(_BPSMerged *)selfCopy upstreamFinished];
    v42 = [(_BPSMerged *)selfCopy count];
    if ((v37 & 1) == 0 && upstreamFinished == v42)
    {
      [(_BPSMerged *)selfCopy setFinished:1];
      subscriptions2 = [(_BPSMerged *)selfCopy subscriptions];
      v44 = [subscriptions2 copy];

      subscriptions3 = [(_BPSMerged *)selfCopy subscriptions];
      v46 = [subscriptions3 count];

      if (v46)
      {
        v47 = 0;
        do
        {
          null2 = [MEMORY[0x1E695DFB0] null];
          subscriptions4 = [(_BPSMerged *)selfCopy subscriptions];
          [subscriptions4 setObject:null2 atIndexedSubscript:v47];

          ++v47;
          subscriptions5 = [(_BPSMerged *)selfCopy subscriptions];
          v51 = [subscriptions5 count];
        }

        while (v47 < v51);
      }

      buffers2 = [(_BPSMerged *)selfCopy buffers];
      v53 = [buffers2 count];

      if (v53)
      {
        v54 = 0;
        do
        {
          null3 = [MEMORY[0x1E695DFB0] null];
          buffers3 = [(_BPSMerged *)selfCopy buffers];
          [buffers3 setObject:null3 atIndexedSubscript:v54];

          ++v54;
          buffers4 = [(_BPSMerged *)selfCopy buffers];
          v58 = [buffers4 count];
        }

        while (v54 < v58);
      }

      os_unfair_lock_unlock(&selfCopy->_lock);
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v27 = v44;
      v59 = [v27 countByEnumeratingWithState:&v66 objects:v80 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v67;
        do
        {
          for (j = 0; j != v60; ++j)
          {
            if (*v67 != v61)
            {
              objc_enumerationMutation(v27);
            }

            v63 = *(*(&v66 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v63 cancel];
            }
          }

          v60 = [v27 countByEnumeratingWithState:&v66 objects:v80 count:16];
        }

        while (v60);
      }

      v64 = [(_BPSMerged *)selfCopy applyDownstreamWhileLocked:0 apply:&__block_literal_global_0];
      goto LABEL_50;
    }

LABEL_51:
    os_unfair_lock_unlock(&selfCopy->_lock);
    goto LABEL_52;
  }

  if (state == 1)
  {
    os_unfair_lock_lock(&selfCopy->_lock);
    if (![(_BPSMerged *)selfCopy terminated])
    {
      [(_BPSMerged *)selfCopy setTerminated:1];
      subscriptions6 = [(_BPSMerged *)selfCopy subscriptions];
      v12 = [subscriptions6 copy];

      subscriptions7 = [(_BPSMerged *)selfCopy subscriptions];
      v14 = [subscriptions7 count];

      if (v14)
      {
        v15 = 0;
        do
        {
          [(_BPSMerged *)selfCopy updateBookmarksWhenLockedForIndex:v15];
          null4 = [MEMORY[0x1E695DFB0] null];
          subscriptions8 = [(_BPSMerged *)selfCopy subscriptions];
          [subscriptions8 setObject:null4 atIndexedSubscript:v15];

          ++v15;
          subscriptions9 = [(_BPSMerged *)selfCopy subscriptions];
          v19 = [subscriptions9 count];
        }

        while (v15 < v19);
      }

      buffers5 = [(_BPSMerged *)selfCopy buffers];
      v21 = [buffers5 count];

      if (v21)
      {
        v22 = 0;
        do
        {
          null5 = [MEMORY[0x1E695DFB0] null];
          buffers6 = [(_BPSMerged *)selfCopy buffers];
          [buffers6 setObject:null5 atIndexedSubscript:v22];

          ++v22;
          buffers7 = [(_BPSMerged *)selfCopy buffers];
          v26 = [buffers7 count];
        }

        while (v22 < v26);
      }

      os_unfair_lock_unlock(&selfCopy->_lock);
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v27 = v12;
      v28 = [v27 countByEnumeratingWithState:&v76 objects:v82 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v77;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v77 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v76 + 1) + 8 * k);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [v32 cancel];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v76 objects:v82 count:16];
        }

        while (v29);
      }

      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __40___BPSMerged_receiveCompletion_atIndex___block_invoke;
      v74[3] = &unk_1E8320CA8;
      v75 = completionCopy;
      v33 = [(_BPSMerged *)selfCopy applyDownstreamWhileLocked:0 apply:v74];

LABEL_50:
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_52:

  v65 = *MEMORY[0x1E69E9840];
}

- (int64_t)receiveInput:(id)input atIndex:(int64_t)index
{
  inputCopy = input;
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSMerged *)selfCopy demand]== 0x7FFFFFFFFFFFFFFFLL)
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __35___BPSMerged_receiveInput_atIndex___block_invoke;
    v25[3] = &unk_1E8320CA8;
    v26 = inputCopy;
    v9 = [(_BPSMerged *)selfCopy applyDownstreamWhileLocked:0 apply:v25];
    integerValue = [v9 integerValue];

    v11 = v26;
LABEL_5:

    goto LABEL_6;
  }

  if ([(_BPSMerged *)selfCopy demand]>= 1)
  {
    [(_BPSMerged *)selfCopy setDemand:[(_BPSMerged *)selfCopy demand]- 1];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __35___BPSMerged_receiveInput_atIndex___block_invoke_2;
    v23 = &unk_1E8320CA8;
    v24 = inputCopy;
    integerValue = 1;
    v12 = [(_BPSMerged *)selfCopy applyDownstreamWhileLocked:1 apply:&v20];
    integerValue2 = [v12 integerValue];

    [(_BPSMerged *)selfCopy setDemand:[(_BPSMerged *)selfCopy pending]+ [(_BPSMerged *)selfCopy demand]+ integerValue2];
    [(_BPSMerged *)selfCopy setPending:0];
    os_unfair_lock_unlock(&selfCopy->_lock);
    v11 = v24;
    goto LABEL_5;
  }

  buffers = [(_BPSMerged *)selfCopy buffers];
  v16 = [buffers objectAtIndexedSubscript:index];
  null = [MEMORY[0x1E695DFB0] null];
  v18 = [v16 isEqual:null];

  if ((v18 & 1) == 0)
  {
    [_BPSMerged receiveInput:a2 atIndex:selfCopy];
  }

  buffers2 = [(_BPSMerged *)selfCopy buffers];
  [buffers2 setObject:inputCopy atIndexedSubscript:index];

  os_unfair_lock_unlock(&selfCopy->_lock);
  integerValue = 0;
LABEL_6:

  return integerValue;
}

- (void)receiveSubscription:(id)subscription atIndex:(int64_t)index
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  subscriptions = [(_BPSMerged *)self subscriptions];
  v7 = [subscriptions objectAtIndexedSubscript:index];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:null];

  if (v9)
  {
    subscriptions2 = [(_BPSMerged *)self subscriptions];
    [subscriptions2 setObject:subscriptionCopy atIndexedSubscript:index];

    demand = [(_BPSMerged *)self demand];
    os_unfair_lock_unlock(&self->_lock);
    if (![(_BPSMerged *)self terminated])
    {
      if (demand == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = 1;
      }

      [subscriptionCopy requestDemand:v12];
      goto LABEL_9;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  [subscriptionCopy cancel];
LABEL_9:
}

- (void)requestDemand:(int64_t)demand
{
  v111 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  os_unfair_lock_lock(&selfCopy->_lock);
  if ([(_BPSMerged *)selfCopy terminated])
  {
    goto LABEL_2;
  }

  finished = [(_BPSMerged *)selfCopy finished];
  if (demand < 1 || finished || [(_BPSMerged *)selfCopy demand]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  if ([(_BPSMerged *)selfCopy recursive])
  {
    [(_BPSMerged *)selfCopy setPending:[(_BPSMerged *)selfCopy pending]+ demand];
LABEL_2:
    os_unfair_lock_unlock(&selfCopy->_lock);
    goto LABEL_3;
  }

  if (demand == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(_BPSMerged *)selfCopy setDemand:0x7FFFFFFFFFFFFFFFLL];
    buffers = [(_BPSMerged *)selfCopy buffers];
    buffers2 = [(_BPSMerged *)selfCopy buffers];
    v9 = [buffers2 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        null = [MEMORY[0x1E695DFB0] null];
        buffers3 = [(_BPSMerged *)selfCopy buffers];
        [buffers3 setObject:null atIndexedSubscript:v10];

        ++v10;
        buffers4 = [(_BPSMerged *)selfCopy buffers];
        v14 = [buffers4 count];
      }

      while (v10 < v14);
    }

    upstreamFinished = [(_BPSMerged *)selfCopy upstreamFinished];
    v78 = [(_BPSMerged *)selfCopy count];
    subscriptions = [(_BPSMerged *)selfCopy subscriptions];
    v15 = selfCopy;
    os_unfair_lock_unlock(&selfCopy->_lock);
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = buffers;
    v16 = [obj countByEnumeratingWithState:&v102 objects:v110 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v103;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v103 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v102 + 1) + 8 * i);
          null2 = [MEMORY[0x1E695DFB0] null];
          v22 = [v20 isEqual:null2];

          if ((v22 & 1) == 0)
          {
            v101[0] = MEMORY[0x1E69E9820];
            v101[1] = 3221225472;
            v101[2] = __28___BPSMerged_requestDemand___block_invoke;
            v101[3] = &unk_1E8320CF0;
            v101[4] = v20;
            v23 = [(_BPSMerged *)v15 applyDownstreamWhileLocked:0 apply:v101];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v102 objects:v110 count:16];
      }

      while (v17);
    }

    if (upstreamFinished == v78)
    {
      selfCopy = v15;
      v24 = [(_BPSMerged *)v15 applyDownstreamWhileLocked:0 apply:&__block_literal_global_11];
    }

    else
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v60 = subscriptions;
      v61 = [v60 countByEnumeratingWithState:&v97 objects:v109 count:16];
      selfCopy = v15;
      if (v61)
      {
        v62 = v61;
        v63 = *v98;
        do
        {
          for (j = 0; j != v62; ++j)
          {
            if (*v98 != v63)
            {
              objc_enumerationMutation(v60);
            }

            v65 = *(*(&v97 + 1) + 8 * j);
            null3 = [MEMORY[0x1E695DFB0] null];
            v67 = [v65 isEqual:null3];

            if ((v67 & 1) == 0)
            {
              [v65 requestDemand:0x7FFFFFFFFFFFFFFFLL];
            }
          }

          v62 = [v60 countByEnumeratingWithState:&v97 objects:v109 count:16];
        }

        while (v62);
      }
    }
  }

  else
  {
    [(_BPSMerged *)selfCopy setDemand:[(_BPSMerged *)selfCopy demand]+ demand];
    v25 = MEMORY[0x1E695E0F0];
    v26 = [MEMORY[0x1E695E0F0] mutableCopy];
    v27 = [v25 mutableCopy];
    buffers5 = [(_BPSMerged *)selfCopy buffers];
    v29 = [buffers5 count];

    if (v29)
    {
      v30 = 0;
      do
      {
        if (![(_BPSMerged *)selfCopy demand])
        {
          break;
        }

        buffers6 = [(_BPSMerged *)selfCopy buffers];
        v32 = [buffers6 objectAtIndexedSubscript:v30];

        null4 = [MEMORY[0x1E695DFB0] null];
        v34 = [v32 isEqual:null4];

        if ((v34 & 1) == 0)
        {
          [(_BPSMerged *)selfCopy setDemand:[(_BPSMerged *)selfCopy demand]- 1];
          [v26 addObject:v32];
          subscriptions2 = [(_BPSMerged *)selfCopy subscriptions];
          v36 = [subscriptions2 objectAtIndexedSubscript:v30];
          [v27 addObject:v36];
        }

        ++v30;
        buffers7 = [(_BPSMerged *)selfCopy buffers];
        v38 = [buffers7 count];
      }

      while (v30 < v38);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    buffers8 = [(_BPSMerged *)selfCopy buffers];
    v40 = [buffers8 countByEnumeratingWithState:&v93 objects:v108 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v94;
      while (2)
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v94 != v42)
          {
            objc_enumerationMutation(buffers8);
          }

          v44 = *(*(&v93 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v45 = 0;
            goto LABEL_40;
          }
        }

        v41 = [buffers8 countByEnumeratingWithState:&v93 objects:v108 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v45 = 1;
LABEL_40:
    v81 = v27;

    upstreamFinished2 = [(_BPSMerged *)selfCopy upstreamFinished];
    if (upstreamFinished2 == [(_BPSMerged *)selfCopy count])
    {
      v47 = v45;
    }

    else
    {
      v47 = 0;
    }

    v79 = v47;
    if (v47 == 1)
    {
      [(_BPSMerged *)selfCopy setFinished:1];
    }

    v48 = selfCopy;
    os_unfair_lock_unlock(&selfCopy->_lock);
    v49 = 0;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v50 = v26;
    v51 = [v50 countByEnumeratingWithState:&v89 objects:v107 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v90;
      v49 = 0;
      do
      {
        for (m = 0; m != v52; ++m)
        {
          if (*v90 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v89 + 1) + 8 * m);
          v88[0] = MEMORY[0x1E69E9820];
          v88[1] = 3221225472;
          v88[2] = __28___BPSMerged_requestDemand___block_invoke_3;
          v88[3] = &unk_1E8320CA8;
          v88[4] = v55;
          v56 = [(os_unfair_lock_s *)v48 applyDownstreamWhileLocked:0 apply:v88];
          v49 += [v56 integerValue];
        }

        v52 = [v50 countByEnumeratingWithState:&v89 objects:v107 count:16];
      }

      while (v52);
    }

    os_unfair_lock_lock(v48 + 2);
    pending = [(os_unfair_lock_s *)v48 pending];
    [(os_unfair_lock_s *)v48 setPending:0];
    os_unfair_lock_unlock(v48 + 2);
    if (v79)
    {
      v58 = [(os_unfair_lock_s *)v48 applyDownstreamWhileLocked:0 apply:&__block_literal_global_13];
      selfCopy = v48;
      v59 = v81;
    }

    else
    {
      v68 = pending + v49;
      v69 = pending + v49 < 1;
      selfCopy = v48;
      if (!v69)
      {
        os_unfair_lock_lock(v48 + 2);
        [(os_unfair_lock_s *)v48 setDemand:[(os_unfair_lock_s *)v48 demand]+ v68];
        os_unfair_lock_unlock(v48 + 2);
      }

      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v59 = v81;
      v70 = v81;
      v71 = [v70 countByEnumeratingWithState:&v84 objects:v106 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = *v85;
        do
        {
          for (n = 0; n != v72; ++n)
          {
            if (*v85 != v73)
            {
              objc_enumerationMutation(v70);
            }

            v75 = *(*(&v84 + 1) + 8 * n);
            null5 = [MEMORY[0x1E695DFB0] null];
            v77 = [v75 isEqual:null5];

            if ((v77 & 1) == 0)
            {
              [v75 requestDemand:1];
            }
          }

          v72 = [v70 countByEnumeratingWithState:&v84 objects:v106 count:16];
        }

        while (v72);
      }
    }
  }

LABEL_3:

  v5 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_debug_impl(&dword_1C871B000, a2, OS_LOG_TYPE_DEBUG, "%@ - cancel", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (id)upstreamSubscriptions
{
  subscriptions = [(_BPSMerged *)self subscriptions];

  if (subscriptions)
  {
    subscriptions2 = [(_BPSMerged *)self subscriptions];
  }

  else
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_BPSMerged *)self upstreamSubscriptions];
    }

    subscriptions2 = MEMORY[0x1E695E0F0];
  }

  return subscriptions2;
}

- (void)updateBookmarksWhenLockedForIndex:(unint64_t)index
{
  subscriptions = [(_BPSMerged *)self subscriptions];
  v6 = [subscriptions objectAtIndexedSubscript:index];

  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if ((v8 & 1) == 0)
  {
    if ([v6 conformsToProtocol:&unk_1F4871E60])
    {
      v9 = v6;
      newBookmark = [v9 newBookmark];
      if (newBookmark)
      {
        null2 = [MEMORY[0x1E695DFB0] null];
        v12 = [newBookmark isEqual:null2];

        if ((v12 & 1) == 0)
        {
          [(NSMutableArray *)self->_upstreamBookmarks setObject:newBookmark atIndexedSubscript:index];
        }
      }
    }

    else
    {
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(_BPSMerged *)v6 updateBookmarksWhenLockedForIndex:v13];
      }
    }
  }
}

- (id)newBookmark
{
  v3 = [BMBookmarkNode alloc];
  upstreamBookmarks = self->_upstreamBookmarks;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(BMBookmarkNode *)v3 initWithValue:0 upstreams:upstreamBookmarks name:v6];

  return v7;
}

- (void)receiveInput:(uint64_t)a1 atIndex:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSMerge.m" lineNumber:181 description:@"Expecting buffer to be null"];
}

- (void)upstreamSubscriptions
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138412290;
  v6 = objc_opt_class();
  v3 = v6;
  _os_log_error_impl(&dword_1C871B000, a2, OS_LOG_TYPE_ERROR, "%@ - upstreamSubscriptions are nil", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)updateBookmarksWhenLockedForIndex:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C871B000, a2, OS_LOG_TYPE_ERROR, "Subscription %@ could not create bookmark", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end