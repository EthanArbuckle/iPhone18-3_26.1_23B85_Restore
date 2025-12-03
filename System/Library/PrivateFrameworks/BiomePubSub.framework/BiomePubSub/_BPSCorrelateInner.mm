@interface _BPSCorrelateInner
- (_BPSCorrelateInner)initWithDownstream:(id)downstream correlateHandler:(id)handler;
- (id)newBookmark;
- (id)receiveNewValue:(id)value source:(int64_t)source;
@end

@implementation _BPSCorrelateInner

- (_BPSCorrelateInner)initWithDownstream:(id)downstream correlateHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = _BPSCorrelateInner;
  v8 = [(BPSCorrelationProducer *)&v11 initWithDownstream:downstream];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_correlateHandler, handler);
  }

  return v9;
}

- (id)receiveNewValue:(id)value source:(int64_t)source
{
  valueCopy = value;
  if (source == 2)
  {
    [(BPSCorrelateHandler *)self->_correlateHandler receiveCurrentEvent:valueCopy];
    v7 = [(BPSCorrelateHandler *)self->_correlateHandler correlateWithCurrentEvent:valueCopy];
  }

  else
  {
    if (source == 1)
    {
      [(BPSCorrelateHandler *)self->_correlateHandler receivePriorEvent:valueCopy];
    }

    v7 = 0;
  }

  v8 = [[BPSPartialCompletion alloc] initWithState:1 value:v7 error:0];

  return v8;
}

- (id)newBookmark
{
  v28 = *MEMORY[0x1E69E9840];
  upstreamSubscriptions = [(BPSCorrelationProducer *)self upstreamSubscriptions];
  v3 = [MEMORY[0x1E695E0F0] mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = upstreamSubscriptions;
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
          newBookmark = [v9 newBookmark];
          if (newBookmark)
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

        newBookmark = [MEMORY[0x1E695DFB0] null];
LABEL_13:
        v12 = newBookmark;
        [v3 addObject:newBookmark];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  v13 = [BMBookmarkNode alloc];
  context = [(BPSCorrelateHandler *)self->_correlateHandler context];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [(BMBookmarkNode *)v13 initWithValue:context upstreams:v3 name:v16];

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

@end