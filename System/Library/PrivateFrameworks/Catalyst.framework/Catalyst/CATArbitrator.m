@interface CATArbitrator
- (CATArbitrator)init;
- (id)debugDescription;
- (unint64_t)unregisterResourceForKey:(id)a3;
- (void)registerResource:(id)a3 forKey:(id)a4;
- (void)registerResource:(id)a3 forKey:(id)a4 maxConcurrentCount:(unint64_t)a5;
@end

@implementation CATArbitrator

- (CATArbitrator)init
{
  v6.receiver = self;
  v6.super_class = CATArbitrator;
  v2 = [(CATArbitrator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mRegistrationByKey = v2->mRegistrationByKey;
    v2->mRegistrationByKey = v3;
  }

  return v2;
}

- (id)debugDescription
{
  v3 = self->mRegistrationByKey;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->mRegistrationByKey debugDescription];
  objc_sync_exit(v3);

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p %@>", objc_opt_class(), self, v4];

  return v5;
}

- (void)registerResource:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CATArbitrator registerResource:forKey:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [CATArbitrator registerResource:forKey:];
LABEL_3:
  [(CATArbitrator *)self registerResource:v7 forKey:v6 maxConcurrentCount:1];
}

- (void)registerResource:(id)a3 forKey:(id)a4 maxConcurrentCount:(unint64_t)a5
{
  v15 = a3;
  v9 = a4;
  if (v15)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    [CATArbitrator registerResource:forKey:maxConcurrentCount:];
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [CATArbitrator registerResource:forKey:maxConcurrentCount:];
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (a5)
  {
    goto LABEL_4;
  }

LABEL_11:
  [CATArbitrator registerResource:forKey:maxConcurrentCount:];
LABEL_4:
  v10 = [[_CATArbitratorRegistrationEntry alloc] initWithResource:v15 maxConcurrentCount:a5];
  v11 = self->mRegistrationByKey;
  objc_sync_enter(v11);
  v12 = [(NSMutableDictionary *)self->mRegistrationByKey objectForKeyedSubscript:v9];

  if (v12)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    v14 = NSStringFromSelector(a2);
    [v13 handleFailureInMethod:a2 object:self file:@"CATArbitrator.m" lineNumber:245 description:{@"%@ cannot call %@ when key (%@) is already registered", self, v14, v9}];
  }

  [(NSMutableDictionary *)self->mRegistrationByKey setObject:v10 forKeyedSubscript:v9];
  objc_sync_exit(v11);
}

- (unint64_t)unregisterResourceForKey:(id)a3
{
  v4 = a3;
  v5 = self->mRegistrationByKey;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->mRegistrationByKey objectForKeyedSubscript:v4];
  if (v6)
  {
    [(NSMutableDictionary *)self->mRegistrationByKey removeObjectForKey:v4];
    v7 = [v6 currentCount];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v5);

  [v6 invalidate];
  return v7;
}

- (void)resourceForKey:exclusive:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"key" object:? file:? lineNumber:? description:?];
}

- (void)registerResource:forKey:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"resource" object:? file:? lineNumber:? description:?];
}

- (void)registerResource:forKey:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"key" object:? file:? lineNumber:? description:?];
}

- (void)registerResource:forKey:maxConcurrentCount:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"resource" object:? file:? lineNumber:? description:?];
}

- (void)registerResource:forKey:maxConcurrentCount:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"key" object:? file:? lineNumber:? description:?];
}

- (void)registerResource:forKey:maxConcurrentCount:.cold.3()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

@end