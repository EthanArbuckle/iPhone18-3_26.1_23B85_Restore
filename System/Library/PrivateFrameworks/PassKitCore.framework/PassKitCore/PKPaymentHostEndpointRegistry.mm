@interface PKPaymentHostEndpointRegistry
- (PKPaymentHostEndpointRegistry)init;
- (id)debugDescription;
- (id)takeListenerEndpointForHostIdentifier:(id)identifier;
- (void)addListenerEndpoint:(id)endpoint forHostIdentifier:(id)identifier processIdentifier:(int)processIdentifier;
- (void)removeListenerEndpointsForProcessIdentifier:(int)identifier;
@end

@implementation PKPaymentHostEndpointRegistry

- (PKPaymentHostEndpointRegistry)init
{
  v9.receiver = self;
  v9.super_class = PKPaymentHostEndpointRegistry;
  v2 = [(PKPaymentHostEndpointRegistry *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.passd.ListenerEndpointRegistry", 0);
    registrySerialQueue = v2->_registrySerialQueue;
    v2->_registrySerialQueue = v3;

    v5 = v2->_registrySerialQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PKPaymentHostEndpointRegistry_init__block_invoke;
    block[3] = &unk_1E79C4E28;
    v8 = v2;
    dispatch_sync(v5, block);
  }

  return v2;
}

void __37__PKPaymentHostEndpointRegistry_init__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;
}

- (void)addListenerEndpoint:(id)endpoint forHostIdentifier:(id)identifier processIdentifier:(int)processIdentifier
{
  endpointCopy = endpoint;
  identifierCopy = identifier;
  registrySerialQueue = self->_registrySerialQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__PKPaymentHostEndpointRegistry_addListenerEndpoint_forHostIdentifier_processIdentifier___block_invoke;
  v13[3] = &unk_1E79D1A50;
  processIdentifierCopy = processIdentifier;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = endpointCopy;
  v11 = endpointCopy;
  v12 = identifierCopy;
  dispatch_sync(registrySerialQueue, v13);
}

void __89__PKPaymentHostEndpointRegistry_addListenerEndpoint_forHostIdentifier_processIdentifier___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = *(*(a1 + 32) + 24);
    v6 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
    [v5 setObject:v4 forKey:v6];
  }

  [v4 addObject:*(a1 + 40)];
  v7 = *(*(a1 + 32) + 16);
  v8 = *(a1 + 48);
  v11[0] = @"listenerEndpoint";
  v11[1] = @"processIdentifier";
  v12[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 56)];
  v12[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v7 setObject:v10 forKey:*(a1 + 40)];
}

- (id)takeListenerEndpointForHostIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__27;
  v16 = __Block_byref_object_dispose__27;
  v17 = 0;
  registrySerialQueue = self->_registrySerialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PKPaymentHostEndpointRegistry_takeListenerEndpointForHostIdentifier___block_invoke;
  block[3] = &unk_1E79D1A78;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(registrySerialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __71__PKPaymentHostEndpointRegistry_takeListenerEndpointForHostIdentifier___block_invoke(void *a1)
{
  v7 = [*(a1[4] + 16) objectForKey:a1[5]];
  v2 = [v7 objectForKey:@"listenerEndpoint"];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [v7 objectForKey:@"processIdentifier"];
  if (v5)
  {
    v6 = [*(a1[4] + 24) objectForKey:v5];
    [v6 removeObject:a1[5]];
    if (![v6 count])
    {
      [*(a1[4] + 24) removeObjectForKey:v5];
    }
  }

  [*(a1[4] + 16) removeObjectForKey:a1[5]];
}

- (void)removeListenerEndpointsForProcessIdentifier:(int)identifier
{
  registrySerialQueue = self->_registrySerialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__PKPaymentHostEndpointRegistry_removeListenerEndpointsForProcessIdentifier___block_invoke;
  v4[3] = &unk_1E79D08C8;
  v4[4] = self;
  identifierCopy = identifier;
  dispatch_sync(registrySerialQueue, v4);
}

void __77__PKPaymentHostEndpointRegistry_removeListenerEndpointsForProcessIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v4 = [v2 objectForKey:v3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(a1 + 32) + 16) removeObjectForKey:{*(*(&v12 + 1) + 8 * v9++), v12}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *(*(a1 + 32) + 24);
  v11 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  [v10 removeObjectForKey:v11];
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p\n", objc_opt_class(), self];;
  [v3 appendFormat:@"    hostIdentifierToEndpointMap: %@\n", self->_hostIdentifierToEndpointMap];
  [v3 appendFormat:@"    processIdentifierToHostIdentifierMap: %@", self->_processIdentifierToHostIdentifiersMap];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end