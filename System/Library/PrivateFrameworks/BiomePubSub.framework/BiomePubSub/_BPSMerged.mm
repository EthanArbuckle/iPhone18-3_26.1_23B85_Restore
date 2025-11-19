@interface _BPSMerged
- (_BPSMerged)initWithDownstream:(id)a3 count:(int64_t)a4;
- (id)applyDownstreamWhileLocked:(BOOL)a3 apply:(id)a4;
- (id)newBookmark;
- (id)upstreamSubscriptions;
- (int64_t)receiveInput:(id)a3 atIndex:(int64_t)a4;
- (void)cancel;
- (void)receiveCompletion:(id)a3 atIndex:(int64_t)a4;
- (void)receiveSubscription:(id)a3 atIndex:(int64_t)a4;
- (void)requestDemand:(int64_t)a3;
- (void)updateBookmarksWhenLockedForIndex:(unint64_t)a3;
- (void)upstreamSubscriptions;
@end

@implementation _BPSMerged

- (_BPSMerged)initWithDownstream:(id)a3 count:(int64_t)a4
{
  v7 = a3;
  v23.receiver = self;
  v23.super_class = _BPSMerged;
  v8 = [(_BPSMerged *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_downstream, a3);
    v9->_count = a4;
    v9->_terminated = 0;
    v9->_upstreamFinished = 0;
    v9->_finished = 0;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    subscriptions = v9->_subscriptions;
    v9->_subscriptions = v10;

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    upstreamBookmarks = v9->_upstreamBookmarks;
    v9->_upstreamBookmarks = v12;

    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
    buffers = v9->_buffers;
    v9->_buffers = v14;

    v9->_recursive = 0;
    v9->_demand = 0;
    v9->_pending = 0;
    v9->_lock._os_unfair_lock_opaque = 0;
    v9->_downstreamLock = 0;
    if (a4 >= 1)
    {
      do
      {
        v16 = v9->_subscriptions;
        v17 = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v16 addObject:v17];

        v18 = v9->_upstreamBookmarks;
        v19 = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v18 addObject:v19];

        v20 = v9->_buffers;
        v21 = [MEMORY[0x1E695DFB0] null];
        [(NSMutableArray *)v20 addObject:v21];

        --a4;
      }

      while (a4);
    }
  }

  return v9;
}

- (id)applyDownstreamWhileLocked:(BOOL)a3 apply:(id)a4
{
  v6 = a4;
  if (!a3)
  {
    os_unfair_lock_lock(&self->_lock);
  }

  [(_BPSMerged *)self setRecursive:1];
  os_unfair_lock_unlock(&self->_lock);
  os_unfair_recursive_lock_lock_with_options();
  v7 = [(_BPSMerged *)self downstream];
  v8 = v6[2](v6, v7);

  os_unfair_recursive_lock_unlock();
  os_unfair_lock_lock(&self->_lock);
  [(_BPSMerged *)self setRecursive:0];
  if (!a3)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  return v8;
}

- (void)receiveCompletion:(id)a3 atIndex:(int64_t)a4
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = self;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v84 = objc_opt_class();
    v85 = 2048;
    v86 = a4;
    v9 = v84;
    _os_log_impl(&dword_1C871B000, v8, OS_LOG_TYPE_INFO, "%@ - completion at index %ld", buf, 0x16u);
  }

  v10 = [v6 state];
  if (!v10)
  {
    os_unfair_lock_lock(&v7->_lock);
    [(_BPSMerged *)v7 setUpstreamFinished:[(_BPSMerged *)v7 upstreamFinished]+ 1];
    [(_BPSMerged *)v7 updateBookmarksWhenLockedForIndex:a4];
    v34 = [MEMORY[0x1E695DFB0] null];
    v35 = [(_BPSMerged *)v7 subscriptions];
    [v35 setObject:v34 atIndexedSubscript:a4];

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v36 = [(_BPSMerged *)v7 buffers];
    v37 = [v36 countByEnumeratingWithState:&v70 objects:v81 count:16];
    if (v37)
    {
      v38 = *v71;
      while (2)
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v71 != v38)
          {
            objc_enumerationMutation(v36);
          }

          v40 = *(*(&v70 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            LOBYTE(v37) = 1;
            goto LABEL_32;
          }
        }

        v37 = [v36 countByEnumeratingWithState:&v70 objects:v81 count:16];
        if (v37)
        {
          continue;
        }

        break;
      }
    }

LABEL_32:

    v41 = [(_BPSMerged *)v7 upstreamFinished];
    v42 = [(_BPSMerged *)v7 count];
    if ((v37 & 1) == 0 && v41 == v42)
    {
      [(_BPSMerged *)v7 setFinished:1];
      v43 = [(_BPSMerged *)v7 subscriptions];
      v44 = [v43 copy];

      v45 = [(_BPSMerged *)v7 subscriptions];
      v46 = [v45 count];

      if (v46)
      {
        v47 = 0;
        do
        {
          v48 = [MEMORY[0x1E695DFB0] null];
          v49 = [(_BPSMerged *)v7 subscriptions];
          [v49 setObject:v48 atIndexedSubscript:v47];

          ++v47;
          v50 = [(_BPSMerged *)v7 subscriptions];
          v51 = [v50 count];
        }

        while (v47 < v51);
      }

      v52 = [(_BPSMerged *)v7 buffers];
      v53 = [v52 count];

      if (v53)
      {
        v54 = 0;
        do
        {
          v55 = [MEMORY[0x1E695DFB0] null];
          v56 = [(_BPSMerged *)v7 buffers];
          [v56 setObject:v55 atIndexedSubscript:v54];

          ++v54;
          v57 = [(_BPSMerged *)v7 buffers];
          v58 = [v57 count];
        }

        while (v54 < v58);
      }

      os_unfair_lock_unlock(&v7->_lock);
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

      v64 = [(_BPSMerged *)v7 applyDownstreamWhileLocked:0 apply:&__block_literal_global_0];
      goto LABEL_50;
    }

LABEL_51:
    os_unfair_lock_unlock(&v7->_lock);
    goto LABEL_52;
  }

  if (v10 == 1)
  {
    os_unfair_lock_lock(&v7->_lock);
    if (![(_BPSMerged *)v7 terminated])
    {
      [(_BPSMerged *)v7 setTerminated:1];
      v11 = [(_BPSMerged *)v7 subscriptions];
      v12 = [v11 copy];

      v13 = [(_BPSMerged *)v7 subscriptions];
      v14 = [v13 count];

      if (v14)
      {
        v15 = 0;
        do
        {
          [(_BPSMerged *)v7 updateBookmarksWhenLockedForIndex:v15];
          v16 = [MEMORY[0x1E695DFB0] null];
          v17 = [(_BPSMerged *)v7 subscriptions];
          [v17 setObject:v16 atIndexedSubscript:v15];

          ++v15;
          v18 = [(_BPSMerged *)v7 subscriptions];
          v19 = [v18 count];
        }

        while (v15 < v19);
      }

      v20 = [(_BPSMerged *)v7 buffers];
      v21 = [v20 count];

      if (v21)
      {
        v22 = 0;
        do
        {
          v23 = [MEMORY[0x1E695DFB0] null];
          v24 = [(_BPSMerged *)v7 buffers];
          [v24 setObject:v23 atIndexedSubscript:v22];

          ++v22;
          v25 = [(_BPSMerged *)v7 buffers];
          v26 = [v25 count];
        }

        while (v22 < v26);
      }

      os_unfair_lock_unlock(&v7->_lock);
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
      v75 = v6;
      v33 = [(_BPSMerged *)v7 applyDownstreamWhileLocked:0 apply:v74];

LABEL_50:
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_52:

  v65 = *MEMORY[0x1E69E9840];
}

- (int64_t)receiveInput:(id)a3 atIndex:(int64_t)a4
{
  v7 = a3;
  v8 = self;
  os_unfair_lock_lock(&v8->_lock);
  if ([(_BPSMerged *)v8 demand]== 0x7FFFFFFFFFFFFFFFLL)
  {
    os_unfair_lock_unlock(&v8->_lock);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __35___BPSMerged_receiveInput_atIndex___block_invoke;
    v25[3] = &unk_1E8320CA8;
    v26 = v7;
    v9 = [(_BPSMerged *)v8 applyDownstreamWhileLocked:0 apply:v25];
    v10 = [v9 integerValue];

    v11 = v26;
LABEL_5:

    goto LABEL_6;
  }

  if ([(_BPSMerged *)v8 demand]>= 1)
  {
    [(_BPSMerged *)v8 setDemand:[(_BPSMerged *)v8 demand]- 1];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __35___BPSMerged_receiveInput_atIndex___block_invoke_2;
    v23 = &unk_1E8320CA8;
    v24 = v7;
    v10 = 1;
    v12 = [(_BPSMerged *)v8 applyDownstreamWhileLocked:1 apply:&v20];
    v13 = [v12 integerValue];

    [(_BPSMerged *)v8 setDemand:[(_BPSMerged *)v8 pending]+ [(_BPSMerged *)v8 demand]+ v13];
    [(_BPSMerged *)v8 setPending:0];
    os_unfair_lock_unlock(&v8->_lock);
    v11 = v24;
    goto LABEL_5;
  }

  v15 = [(_BPSMerged *)v8 buffers];
  v16 = [v15 objectAtIndexedSubscript:a4];
  v17 = [MEMORY[0x1E695DFB0] null];
  v18 = [v16 isEqual:v17];

  if ((v18 & 1) == 0)
  {
    [_BPSMerged receiveInput:a2 atIndex:v8];
  }

  v19 = [(_BPSMerged *)v8 buffers];
  [v19 setObject:v7 atIndexedSubscript:a4];

  os_unfair_lock_unlock(&v8->_lock);
  v10 = 0;
LABEL_6:

  return v10;
}

- (void)receiveSubscription:(id)a3 atIndex:(int64_t)a4
{
  v13 = a3;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(_BPSMerged *)self subscriptions];
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [(_BPSMerged *)self subscriptions];
    [v10 setObject:v13 atIndexedSubscript:a4];

    v11 = [(_BPSMerged *)self demand];
    os_unfair_lock_unlock(&self->_lock);
    if (![(_BPSMerged *)self terminated])
    {
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = 1;
      }

      [v13 requestDemand:v12];
      goto LABEL_9;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  [v13 cancel];
LABEL_9:
}

- (void)requestDemand:(int64_t)a3
{
  v111 = *MEMORY[0x1E69E9840];
  v4 = self;
  os_unfair_lock_lock(&v4->_lock);
  if ([(_BPSMerged *)v4 terminated])
  {
    goto LABEL_2;
  }

  v6 = [(_BPSMerged *)v4 finished];
  if (a3 < 1 || v6 || [(_BPSMerged *)v4 demand]== 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_2;
  }

  if ([(_BPSMerged *)v4 recursive])
  {
    [(_BPSMerged *)v4 setPending:[(_BPSMerged *)v4 pending]+ a3];
LABEL_2:
    os_unfair_lock_unlock(&v4->_lock);
    goto LABEL_3;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(_BPSMerged *)v4 setDemand:0x7FFFFFFFFFFFFFFFLL];
    v7 = [(_BPSMerged *)v4 buffers];
    v8 = [(_BPSMerged *)v4 buffers];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = [MEMORY[0x1E695DFB0] null];
        v12 = [(_BPSMerged *)v4 buffers];
        [v12 setObject:v11 atIndexedSubscript:v10];

        ++v10;
        v13 = [(_BPSMerged *)v4 buffers];
        v14 = [v13 count];
      }

      while (v10 < v14);
    }

    v80 = [(_BPSMerged *)v4 upstreamFinished];
    v78 = [(_BPSMerged *)v4 count];
    v82 = [(_BPSMerged *)v4 subscriptions];
    v15 = v4;
    os_unfair_lock_unlock(&v4->_lock);
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = v7;
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
          v21 = [MEMORY[0x1E695DFB0] null];
          v22 = [v20 isEqual:v21];

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

    if (v80 == v78)
    {
      v4 = v15;
      v24 = [(_BPSMerged *)v15 applyDownstreamWhileLocked:0 apply:&__block_literal_global_11];
    }

    else
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v60 = v82;
      v61 = [v60 countByEnumeratingWithState:&v97 objects:v109 count:16];
      v4 = v15;
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
            v66 = [MEMORY[0x1E695DFB0] null];
            v67 = [v65 isEqual:v66];

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
    [(_BPSMerged *)v4 setDemand:[(_BPSMerged *)v4 demand]+ a3];
    v25 = MEMORY[0x1E695E0F0];
    v26 = [MEMORY[0x1E695E0F0] mutableCopy];
    v27 = [v25 mutableCopy];
    v28 = [(_BPSMerged *)v4 buffers];
    v29 = [v28 count];

    if (v29)
    {
      v30 = 0;
      do
      {
        if (![(_BPSMerged *)v4 demand])
        {
          break;
        }

        v31 = [(_BPSMerged *)v4 buffers];
        v32 = [v31 objectAtIndexedSubscript:v30];

        v33 = [MEMORY[0x1E695DFB0] null];
        v34 = [v32 isEqual:v33];

        if ((v34 & 1) == 0)
        {
          [(_BPSMerged *)v4 setDemand:[(_BPSMerged *)v4 demand]- 1];
          [v26 addObject:v32];
          v35 = [(_BPSMerged *)v4 subscriptions];
          v36 = [v35 objectAtIndexedSubscript:v30];
          [v27 addObject:v36];
        }

        ++v30;
        v37 = [(_BPSMerged *)v4 buffers];
        v38 = [v37 count];
      }

      while (v30 < v38);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v39 = [(_BPSMerged *)v4 buffers];
    v40 = [v39 countByEnumeratingWithState:&v93 objects:v108 count:16];
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
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v93 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v45 = 0;
            goto LABEL_40;
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v93 objects:v108 count:16];
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

    v46 = [(_BPSMerged *)v4 upstreamFinished];
    if (v46 == [(_BPSMerged *)v4 count])
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
      [(_BPSMerged *)v4 setFinished:1];
    }

    v48 = v4;
    os_unfair_lock_unlock(&v4->_lock);
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
    v57 = [(os_unfair_lock_s *)v48 pending];
    [(os_unfair_lock_s *)v48 setPending:0];
    os_unfair_lock_unlock(v48 + 2);
    if (v79)
    {
      v58 = [(os_unfair_lock_s *)v48 applyDownstreamWhileLocked:0 apply:&__block_literal_global_13];
      v4 = v48;
      v59 = v81;
    }

    else
    {
      v68 = v57 + v49;
      v69 = v57 + v49 < 1;
      v4 = v48;
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
            v76 = [MEMORY[0x1E695DFB0] null];
            v77 = [v75 isEqual:v76];

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
  v3 = [(_BPSMerged *)self subscriptions];

  if (v3)
  {
    v4 = [(_BPSMerged *)self subscriptions];
  }

  else
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_BPSMerged *)self upstreamSubscriptions];
    }

    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (void)updateBookmarksWhenLockedForIndex:(unint64_t)a3
{
  v5 = [(_BPSMerged *)self subscriptions];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    if ([v6 conformsToProtocol:&unk_1F4871E60])
    {
      v9 = v6;
      v10 = [v9 newBookmark];
      if (v10)
      {
        v11 = [MEMORY[0x1E695DFB0] null];
        v12 = [v10 isEqual:v11];

        if ((v12 & 1) == 0)
        {
          [(NSMutableArray *)self->_upstreamBookmarks setObject:v10 atIndexedSubscript:a3];
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