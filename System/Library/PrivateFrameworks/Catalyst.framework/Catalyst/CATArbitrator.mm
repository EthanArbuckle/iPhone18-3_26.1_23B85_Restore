@interface CATArbitrator
- (CATArbitrator)init;
- (id)debugDescription;
- (unint64_t)unregisterResourceForKey:(id)key;
- (void)registerResource:(id)resource forKey:(id)key;
- (void)registerResource:(id)resource forKey:(id)key maxConcurrentCount:(unint64_t)count;
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

- (void)registerResource:(id)resource forKey:(id)key
{
  resourceCopy = resource;
  keyCopy = key;
  if (resourceCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CATArbitrator registerResource:forKey:];
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  [CATArbitrator registerResource:forKey:];
LABEL_3:
  [(CATArbitrator *)self registerResource:resourceCopy forKey:keyCopy maxConcurrentCount:1];
}

- (void)registerResource:(id)resource forKey:(id)key maxConcurrentCount:(unint64_t)count
{
  resourceCopy = resource;
  keyCopy = key;
  if (resourceCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    [CATArbitrator registerResource:forKey:maxConcurrentCount:];
    if (count)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [CATArbitrator registerResource:forKey:maxConcurrentCount:];
  if (!keyCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (count)
  {
    goto LABEL_4;
  }

LABEL_11:
  [CATArbitrator registerResource:forKey:maxConcurrentCount:];
LABEL_4:
  v10 = [[_CATArbitratorRegistrationEntry alloc] initWithResource:resourceCopy maxConcurrentCount:count];
  v11 = self->mRegistrationByKey;
  objc_sync_enter(v11);
  v12 = [(NSMutableDictionary *)self->mRegistrationByKey objectForKeyedSubscript:keyCopy];

  if (v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v14 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"CATArbitrator.m" lineNumber:245 description:{@"%@ cannot call %@ when key (%@) is already registered", self, v14, keyCopy}];
  }

  [(NSMutableDictionary *)self->mRegistrationByKey setObject:v10 forKeyedSubscript:keyCopy];
  objc_sync_exit(v11);
}

- (unint64_t)unregisterResourceForKey:(id)key
{
  keyCopy = key;
  v5 = self->mRegistrationByKey;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->mRegistrationByKey objectForKeyedSubscript:keyCopy];
  if (v6)
  {
    [(NSMutableDictionary *)self->mRegistrationByKey removeObjectForKey:keyCopy];
    currentCount = [v6 currentCount];
  }

  else
  {
    currentCount = 0;
  }

  objc_sync_exit(v5);

  [v6 invalidate];
  return currentCount;
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