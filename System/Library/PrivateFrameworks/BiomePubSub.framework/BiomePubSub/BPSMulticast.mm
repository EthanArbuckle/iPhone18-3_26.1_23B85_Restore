@interface BPSMulticast
+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5;
- (BOOL)completedForMulticastDownstream:(id)a3;
- (BPSMulticast)initWithUpstream:(id)a3 createSubject:(id)a4;
- (BPSMulticastDownstream)electedMainDownstream;
- (id)bookmark;
- (id)bookmarkableUpstreams;
- (id)lazySubject;
- (id)nextEventForMulticastDownstream:(id)a3;
- (id)toPublisher;
- (id)upstreamPublishers;
- (id)validateBookmark:(id)a3;
- (void)_connect;
- (void)applyBookmark:(id)a3;
- (void)applyBookmarkNode:(id)a3;
- (void)connect;
- (void)lazySubject;
- (void)registerMulticastDownstream:(id)a3;
- (void)requestNextEvents;
- (void)reset;
- (void)subscribe:(id)a3;
@end

@implementation BPSMulticast

- (BPSMulticast)initWithUpstream:(id)a3 createSubject:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = BPSMulticast;
  v9 = [(BPSMulticast *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upstream, a3);
    v11 = [v8 copy];
    createSubject = v10->_createSubject;
    v10->_createSubject = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_connected = 0;
    v10->_bookmarkCount = 0;
    v10->_resetCount = 0;
    v13 = objc_opt_new();
    downstreams = v10->_downstreams;
    v10->_downstreams = v13;

    v15 = objc_opt_new();
    pendingEvents = v10->_pendingEvents;
    v10->_pendingEvents = v15;

    objc_storeWeak(&v10->_electedMainDownstream, 0);
  }

  return v10;
}

- (id)upstreamPublishers
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSMulticast *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)toPublisher
{
  v3 = [[BPSMulticastDownstream alloc] initWithMulticast:self];
  [(BPSMulticast *)self registerMulticastDownstream:v3];

  return v3;
}

- (void)registerMulticastDownstream:(id)a3
{
  v4 = a3;
  v5 = [(BPSMulticast *)self downstreams];
  [v5 addObject:v4];

  v6 = MEMORY[0x1E696AD98];
  v7 = [(BPSMulticast *)self downstreams];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
  [v4 setIdentifier:v8];

  v11 = objc_opt_new();
  v9 = [(BPSMulticast *)self pendingEvents];
  v10 = [v4 identifier];

  [v9 setObject:v11 forKeyedSubscript:v10];
}

- (id)nextEventForMulticastDownstream:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(BPSMulticast *)self connected])
  {
    v14 = 0;
    goto LABEL_25;
  }

  v5 = [(BPSMulticast *)self pendingEvents];
  v6 = [v4 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [(BPSMulticast *)self electedMainDownstream];
  LOBYTE(v6) = [v8 isEqual:v4];

  v9 = [v7 count];
  if (v6)
  {
    if (!v9)
    {
      v10 = [(BPSMulticast *)self upstream];
      v11 = [v10 nextEvent];

      if (v11)
      {
        v26 = v7;
        v27 = v4;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        obj = [(BPSMulticast *)self downstreams];
        v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = 0;
          v15 = *v30;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v30 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v29 + 1) + 8 * i);
              v18 = [(BPSMulticast *)self electedMainDownstream];
              v19 = [v18 isEqual:v17];

              if (v19)
              {
                v20 = v14;
                v14 = v11;
              }

              else
              {
                v21 = [(BPSMulticast *)self pendingEvents];
                v22 = [v17 identifier];
                v20 = [v21 objectForKeyedSubscript:v22];

                [v20 addObject:v11];
                v23 = [v17 subscriber];
                [v23 requestNextEvents];
              }
            }

            v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        v7 = v26;
        v4 = v27;
      }

      else
      {
        v14 = 0;
      }

      goto LABEL_24;
    }
  }

  else if (!v9)
  {
    v14 = 0;
    goto LABEL_24;
  }

  v14 = [v7 objectAtIndex:0];
  [v7 removeObjectAtIndex:0];
LABEL_24:

LABEL_25:
  v24 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)completedForMulticastDownstream:(id)a3
{
  v4 = a3;
  v5 = [(BPSMulticast *)self pendingEvents];
  v6 = [v4 identifier];

  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = [v7 count];

  if (v8)
  {
    return 0;
  }

  v10 = [(BPSMulticast *)self upstream];
  v11 = [v10 completed];

  return v11;
}

- (void)reset
{
  [(BPSMulticast *)self setResetCount:[(BPSMulticast *)self resetCount]+ 1];
  v3 = [(BPSMulticast *)self resetCount];
  v4 = [(BPSMulticast *)self downstreams];
  v5 = [v4 count];

  if (v3 == v5)
  {
    [(BPSMulticast *)self setResetCount:0];
    [(BPSMulticast *)self setConnected:0];
    v6 = objc_opt_new();
    [(BPSMulticast *)self setPendingEvents:v6];

    v7 = objc_opt_new();
    [(BPSMulticast *)self setDownstreams:v7];

    [(BPSMulticast *)self setElectedMainDownstream:0];
    [(BPSMulticast *)self setBookmarkCount:0];
    v8.receiver = self;
    v8.super_class = BPSMulticast;
    [(BPSPublisher *)&v8 reset];
  }
}

- (id)bookmark
{
  v9[2] = *MEMORY[0x1E69E9840];
  [(BPSMulticast *)self setBookmarkCount:[(BPSMulticast *)self bookmarkCount]+ 1];
  pendingEvents = self->_pendingEvents;
  v8[0] = @"pendingEvents";
  v8[1] = @"bookmarkCount";
  v9[0] = pendingEvents;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_bookmarkCount];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)validateBookmark:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = objc_opt_class();
    v4 = [v8 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v9, objc_opt_class(), v3];
    v10 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v7 = [v10 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v5];
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v4 objectForKeyedSubscript:@"pendingEvents"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = objc_opt_class();
    v6 = [v11 initWithFormat:@"%@ expected pendingEvents of class %@, but received %@", v12, objc_opt_class(), v5];
    v13 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = v6;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v7 = [v13 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v14];
LABEL_10:

    goto LABEL_11;
  }

  v6 = [v4 objectForKeyedSubscript:@"bookmarkCount"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v16 = objc_opt_class();
    v14 = [v15 initWithFormat:@"%@ expected bookmarkCount of class %@, but received %@", v16, objc_opt_class(), v6];
    v17 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22 = v14;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v7 = [v17 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v18];

    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

LABEL_12:
  v19 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)applyBookmark:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"pendingEvents"];
  [(BPSMulticast *)self setPendingEvents:v4];
}

- (void)applyBookmarkNode:(id)a3
{
  v4 = a3;
  v5 = [(BMBookmarkablePublisher *)self validateBookmarkNode:v4];

  if (!v5)
  {
    v6 = [v4 value];
    v7 = [v6 objectForKeyedSubscript:@"bookmarkCount"];
    v8 = [v7 unsignedIntegerValue];

    v9 = [(BPSMulticast *)self downstreams];
    v10 = [v9 count];

    if (v8 == v10)
    {
      v11 = [v4 value];
      [(BPSMulticast *)self applyBookmark:v11];

      v12 = objc_opt_class();
      v13 = [(BPSMulticast *)self upstreamPublishers];
      v14 = [v12 bookmarkablePublishersFromPublishers:v13];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __34__BPSMulticast_applyBookmarkNode___block_invoke;
      v15[3] = &unk_1E8320C58;
      v16 = v4;
      [v14 enumerateObjectsUsingBlock:v15];
    }
  }
}

void __34__BPSMulticast_applyBookmarkNode___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [v4 upstreams];
  v6 = [v7 objectAtIndexedSubscript:a3];
  [v5 applyBookmarkNode:v6];
}

- (void)_connect
{
  v3 = [(BPSMulticast *)self upstream];
  v4 = [v3 startWithSubscriber:self];

  [(BPSMulticast *)self setConnected:1];

  [(BPSMulticast *)self requestNextEvents];
}

- (void)requestNextEvents
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(BPSMulticast *)self downstreams];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(BPSMulticast *)self setElectedMainDownstream:*(*(&v11 + 1) + 8 * v7)];
        v8 = [(BPSMulticast *)self electedMainDownstream];
        v9 = [v8 subscriber];
        [v9 requestNextEvents];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)lazySubject
{
  os_unfair_lock_lock(&self->_lock);
  v4 = self->_subject;
  if (!v4)
  {
    v4 = (*(self->_createSubject + 2))();
    if (!v4)
    {
      [(BPSMulticast *)a2 lazySubject];
    }

    objc_storeStrong(&self->_subject, v4);
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = v4;

  return v5;
}

- (void)subscribe:(id)a3
{
  v4 = a3;
  v6 = [[_BPSMulticastInner alloc] initWithDownstream:v4];

  v5 = [(BPSMulticast *)self lazySubject];
  [v5 subscribe:v6];
}

- (void)connect
{
  if (self->_createSubject)
  {
    v3 = [(BPSMulticast *)self lazySubject];
    [(BPSPublisher *)self->_upstream subscribe:v3];
  }

  else
  {

    [(BPSMulticast *)self _connect];
  }
}

+ (id)publisherWithPublisher:(id)a3 upstreams:(id)a4 bookmarkState:(id)a5
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if ([v7 count])
  {
    v9 = [BPSMulticast alloc];
    v10 = [v7 objectAtIndexedSubscript:0];
    v11 = [v8 createSubject];
    v12 = [(BPSMulticast *)v9 initWithUpstream:v10 createSubject:v11];
  }

  else
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BPSMulticast publisherWithPublisher:v13 upstreams:? bookmarkState:?];
    }

    v12 = v8;
  }

  return v12;
}

- (id)bookmarkableUpstreams
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(BPSMulticast *)self upstream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BPSMulticastDownstream)electedMainDownstream
{
  WeakRetained = objc_loadWeakRetained(&self->_electedMainDownstream);

  return WeakRetained;
}

- (void)lazySubject
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BPSMulticast.m" lineNumber:481 description:@"createSubject block must return nonnil object"];
}

@end