@interface MGServiceClient
- (BOOL)isEqual:(id)a3;
- (MGServiceClient)initWithConnection:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)outstandingQueryForIdentifier:(id)a3;
- (unint64_t)hash;
- (void)_withLock:(os_unfair_lock_s *)a1;
- (void)addQuery:(id)a3;
- (void)enumerateQueriesUsingBlock:(id)a3;
- (void)removeQuery:(id)a3;
- (void)setQueries:(id)a3;
@end

@implementation MGServiceClient

- (MGServiceClient)initWithConnection:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MGServiceClient;
  v6 = [(MGServiceClient *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    queries = v7->_queries;
    v7->_queries = MEMORY[0x277CBEC10];
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MGServiceClient *)self connection];
      v6 = [(MGServiceClient *)v4 connection];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(MGServiceClient *)self connection];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MGServiceClient alloc];
  v5 = [(MGServiceClient *)self connection];
  v6 = [(MGServiceClient *)v4 initWithConnection:v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MGServiceClient *)self connection];
  v7 = [v3 stringWithFormat:@"<%@: %p, connection = %p>", v5, self, v6];

  return v7;
}

- (void)_withLock:(os_unfair_lock_s *)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_lock(a1 + 2);
    v3[2](v3);

    os_unfair_lock_unlock(a1 + 2);
  }
}

- (void)setQueries:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(MGServiceClient *)self queries];
  v6 = [v4 isEqualToDictionary:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 copy];
    queries = self->_queries;
    self->_queries = v7;

    v9 = [(NSDictionary *)self->_queries count];
    v10 = [(MGServiceClient *)self transaction];
    v11 = v10;
    if (!v9 || v10)
    {
      if (!v9 && v10)
      {
        [(MGServiceClient *)self setTransaction:0];
      }
    }

    else
    {
      v12 = [(MGServiceClient *)self connection];
      v13 = [v12 processIdentifier];

      memset(buffer, 0, sizeof(buffer));
      *(buffer + proc_name(v13, buffer, 0x40u)) = 0;
      if (LOBYTE(buffer[0]))
      {
        v14 = buffer;
      }

      else
      {
        v14 = "unknown";
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.MediaGroups.queries-%s", v14];
      [v15 UTF8String];
      v16 = os_transaction_create();
      [(MGServiceClient *)self setTransaction:v16];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addQuery:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __28__MGServiceClient_addQuery___block_invoke;
  v6[3] = &unk_27989EE80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MGServiceClient *)self _withLock:v6];
}

void __28__MGServiceClient_addQuery___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queries];
  v5 = [v2 mutableCopy];

  v3 = *(a1 + 40);
  v4 = [v3 identifier];
  [v5 setObject:v3 forKey:v4];

  [*(a1 + 32) setQueries:v5];
}

- (void)removeQuery:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__MGServiceClient_removeQuery___block_invoke;
  v6[3] = &unk_27989EE80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(MGServiceClient *)self _withLock:v6];
}

void __31__MGServiceClient_removeQuery___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queries];
  v4 = [v2 mutableCopy];

  v3 = [*(a1 + 40) identifier];
  [v4 removeObjectForKey:v3];

  [*(a1 + 32) setQueries:v4];
}

- (id)outstandingQueryForIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__7;
  v15 = __Block_byref_object_dispose__7;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__MGServiceClient_outstandingQueryForIdentifier___block_invoke;
  v8[3] = &unk_27989EEF8;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(MGServiceClient *)self _withLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __49__MGServiceClient_outstandingQueryForIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) queries];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)enumerateQueriesUsingBlock:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__7;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__MGServiceClient_enumerateQueriesUsingBlock___block_invoke;
  v9[3] = &unk_27989EFC0;
  v9[4] = self;
  v9[5] = &v10;
  [(MGServiceClient *)self _withLock:v9];
  v5 = v11[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__MGServiceClient_enumerateQueriesUsingBlock___block_invoke_2;
  v7[3] = &unk_27989F990;
  v6 = v4;
  v8 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];

  _Block_object_dispose(&v10, 8);
}

uint64_t __46__MGServiceClient_enumerateQueriesUsingBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queries];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

@end