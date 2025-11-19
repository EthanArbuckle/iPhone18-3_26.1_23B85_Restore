@interface _BPSCorrelateInner
- (_BPSCorrelateInner)initWithDownstream:(id)a3 correlateHandler:(id)a4;
- (id)newBookmark;
- (id)receiveNewValue:(id)a3 source:(int64_t)a4;
@end

@implementation _BPSCorrelateInner

- (_BPSCorrelateInner)initWithDownstream:(id)a3 correlateHandler:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _BPSCorrelateInner;
  v8 = [(BPSCorrelationProducer *)&v11 initWithDownstream:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_correlateHandler, a4);
  }

  return v9;
}

- (id)receiveNewValue:(id)a3 source:(int64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    [(BPSCorrelateHandler *)self->_correlateHandler receiveCurrentEvent:v6];
    v7 = [(BPSCorrelateHandler *)self->_correlateHandler correlateWithCurrentEvent:v6];
  }

  else
  {
    if (a4 == 1)
    {
      [(BPSCorrelateHandler *)self->_correlateHandler receivePriorEvent:v6];
    }

    v7 = 0;
  }

  v8 = [[BPSPartialCompletion alloc] initWithState:1 value:v7 error:0];

  return v8;
}

- (id)newBookmark
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [(BPSCorrelationProducer *)self upstreamSubscriptions];
  v3 = [MEMORY[0x1E695E0F0] mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ([v9 conformsToProtocol:&unk_1F4871E60])
        {
          v10 = [v9 newBookmark];
          if (v10)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v11 = __biome_log_for_category();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v26 = v9;
            _os_log_error_impl(&dword_1C871B000, v11, OS_LOG_TYPE_ERROR, "Subscription %@ could not create bookmark", buf, 0xCu);
          }
        }

        v10 = [MEMORY[0x1E695DFB0] null];
LABEL_13:
        v12 = v10;
        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  v13 = [BMBookmarkNode alloc];
  v14 = [(BPSCorrelateHandler *)self->_correlateHandler context];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [(BMBookmarkNode *)v13 initWithValue:v14 upstreams:v3 name:v16];

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

@end