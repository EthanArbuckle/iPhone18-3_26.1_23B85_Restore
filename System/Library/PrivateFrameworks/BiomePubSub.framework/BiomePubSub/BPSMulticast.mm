@interface BPSMulticast
+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state;
- (BOOL)completedForMulticastDownstream:(id)downstream;
- (BPSMulticast)initWithUpstream:(id)upstream createSubject:(id)subject;
- (BPSMulticastDownstream)electedMainDownstream;
- (id)bookmark;
- (id)bookmarkableUpstreams;
- (id)lazySubject;
- (id)nextEventForMulticastDownstream:(id)downstream;
- (id)toPublisher;
- (id)upstreamPublishers;
- (id)validateBookmark:(id)bookmark;
- (void)_connect;
- (void)applyBookmark:(id)bookmark;
- (void)applyBookmarkNode:(id)node;
- (void)connect;
- (void)lazySubject;
- (void)registerMulticastDownstream:(id)downstream;
- (void)requestNextEvents;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSMulticast

- (BPSMulticast)initWithUpstream:(id)upstream createSubject:(id)subject
{
  upstreamCopy = upstream;
  subjectCopy = subject;
  v18.receiver = self;
  v18.super_class = BPSMulticast;
  v9 = [(BPSMulticast *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_upstream, upstream);
    v11 = [subjectCopy copy];
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
  upstream = [(BPSMulticast *)self upstream];
  v6[0] = upstream;
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

- (void)registerMulticastDownstream:(id)downstream
{
  downstreamCopy = downstream;
  downstreams = [(BPSMulticast *)self downstreams];
  [downstreams addObject:downstreamCopy];

  v6 = MEMORY[0x1E696AD98];
  downstreams2 = [(BPSMulticast *)self downstreams];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(downstreams2, "count")}];
  [downstreamCopy setIdentifier:v8];

  v11 = objc_opt_new();
  pendingEvents = [(BPSMulticast *)self pendingEvents];
  identifier = [downstreamCopy identifier];

  [pendingEvents setObject:v11 forKeyedSubscript:identifier];
}

- (id)nextEventForMulticastDownstream:(id)downstream
{
  v34 = *MEMORY[0x1E69E9840];
  downstreamCopy = downstream;
  if (![(BPSMulticast *)self connected])
  {
    v14 = 0;
    goto LABEL_25;
  }

  pendingEvents = [(BPSMulticast *)self pendingEvents];
  identifier = [downstreamCopy identifier];
  v7 = [pendingEvents objectForKeyedSubscript:identifier];

  electedMainDownstream = [(BPSMulticast *)self electedMainDownstream];
  LOBYTE(identifier) = [electedMainDownstream isEqual:downstreamCopy];

  v9 = [v7 count];
  if (identifier)
  {
    if (!v9)
    {
      upstream = [(BPSMulticast *)self upstream];
      nextEvent = [upstream nextEvent];

      if (nextEvent)
      {
        v26 = v7;
        v27 = downstreamCopy;
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
              electedMainDownstream2 = [(BPSMulticast *)self electedMainDownstream];
              v19 = [electedMainDownstream2 isEqual:v17];

              if (v19)
              {
                v20 = v14;
                v14 = nextEvent;
              }

              else
              {
                pendingEvents2 = [(BPSMulticast *)self pendingEvents];
                identifier2 = [v17 identifier];
                v20 = [pendingEvents2 objectForKeyedSubscript:identifier2];

                [v20 addObject:nextEvent];
                subscriber = [v17 subscriber];
                [subscriber requestNextEvents];
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
        downstreamCopy = v27;
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

- (BOOL)completedForMulticastDownstream:(id)downstream
{
  downstreamCopy = downstream;
  pendingEvents = [(BPSMulticast *)self pendingEvents];
  identifier = [downstreamCopy identifier];

  v7 = [pendingEvents objectForKeyedSubscript:identifier];
  v8 = [v7 count];

  if (v8)
  {
    return 0;
  }

  upstream = [(BPSMulticast *)self upstream];
  completed = [upstream completed];

  return completed;
}

- (void)reset
{
  [(BPSMulticast *)self setResetCount:[(BPSMulticast *)self resetCount]+ 1];
  resetCount = [(BPSMulticast *)self resetCount];
  downstreams = [(BPSMulticast *)self downstreams];
  v5 = [downstreams count];

  if (resetCount == v5)
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

- (id)validateBookmark:(id)bookmark
{
  v26[1] = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = objc_opt_class();
    bookmarkCopy = [v8 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v9, objc_opt_class(), bookmarkCopy];
    v10 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = bookmarkCopy;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v7 = [v10 errorWithDomain:@"BiomePubSubError" code:2 userInfo:v5];
    goto LABEL_12;
  }

  bookmarkCopy = bookmarkCopy;
  v5 = [bookmarkCopy objectForKeyedSubscript:@"pendingEvents"];
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

  v6 = [bookmarkCopy objectForKeyedSubscript:@"bookmarkCount"];
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

- (void)applyBookmark:(id)bookmark
{
  v4 = [bookmark objectForKeyedSubscript:@"pendingEvents"];
  [(BPSMulticast *)self setPendingEvents:v4];
}

- (void)applyBookmarkNode:(id)node
{
  nodeCopy = node;
  v5 = [(BMBookmarkablePublisher *)self validateBookmarkNode:nodeCopy];

  if (!v5)
  {
    value = [nodeCopy value];
    v7 = [value objectForKeyedSubscript:@"bookmarkCount"];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    downstreams = [(BPSMulticast *)self downstreams];
    v10 = [downstreams count];

    if (unsignedIntegerValue == v10)
    {
      value2 = [nodeCopy value];
      [(BPSMulticast *)self applyBookmark:value2];

      v12 = objc_opt_class();
      upstreamPublishers = [(BPSMulticast *)self upstreamPublishers];
      v14 = [v12 bookmarkablePublishersFromPublishers:upstreamPublishers];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __34__BPSMulticast_applyBookmarkNode___block_invoke;
      v15[3] = &unk_1E8320C58;
      v16 = nodeCopy;
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
  upstream = [(BPSMulticast *)self upstream];
  v4 = [upstream startWithSubscriber:self];

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
  downstreams = [(BPSMulticast *)self downstreams];
  v4 = [downstreams countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(downstreams);
        }

        [(BPSMulticast *)self setElectedMainDownstream:*(*(&v11 + 1) + 8 * v7)];
        electedMainDownstream = [(BPSMulticast *)self electedMainDownstream];
        subscriber = [electedMainDownstream subscriber];
        [subscriber requestNextEvents];

        ++v7;
      }

      while (v5 != v7);
      v5 = [downstreams countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  v6 = [[_BPSMulticastInner alloc] initWithDownstream:subscribeCopy];

  lazySubject = [(BPSMulticast *)self lazySubject];
  [lazySubject subscribe:v6];
}

- (void)connect
{
  if (self->_createSubject)
  {
    lazySubject = [(BPSMulticast *)self lazySubject];
    [(BPSPublisher *)self->_upstream subscribe:lazySubject];
  }

  else
  {

    [(BPSMulticast *)self _connect];
  }
}

+ (id)publisherWithPublisher:(id)publisher upstreams:(id)upstreams bookmarkState:(id)state
{
  publisherCopy = publisher;
  upstreamsCopy = upstreams;
  v8 = publisherCopy;
  if ([upstreamsCopy count])
  {
    v9 = [BPSMulticast alloc];
    v10 = [upstreamsCopy objectAtIndexedSubscript:0];
    createSubject = [v8 createSubject];
    v12 = [(BPSMulticast *)v9 initWithUpstream:v10 createSubject:createSubject];
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
  upstream = [(BPSMulticast *)self upstream];
  v6[0] = upstream;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"BPSMulticast.m" lineNumber:481 description:@"createSubject block must return nonnil object"];
}

@end