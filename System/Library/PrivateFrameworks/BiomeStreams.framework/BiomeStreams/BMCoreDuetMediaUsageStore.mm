@interface BMCoreDuetMediaUsageStore
- (BMCoreDuetMediaUsageStore)init;
- (BOOL)addContextValue:(id)a3 toArrayAtKeyPath:(id)a4;
- (BOOL)saveKnowledgeEvent:(id)a3 error:(id *)a4;
- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4;
@end

@implementation BMCoreDuetMediaUsageStore

- (BMCoreDuetMediaUsageStore)init
{
  v8.receiver = self;
  v8.super_class = BMCoreDuetMediaUsageStore;
  v2 = [(BMCoreDuetMediaUsageStore *)&v8 init];
  if (v2)
  {
    v3 = [get_DKKnowledgeStoreClass() userKnowledgeStore];
    knowledgeStore = v2->_knowledgeStore;
    v2->_knowledgeStore = v3;

    v5 = [get_CDClientContextClass() userContext];
    contextStore = v2->_contextStore;
    v2->_contextStore = v5;
  }

  return v2;
}

- (BOOL)addContextValue:(id)a3 toArrayAtKeyPath:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(BMCoreDuetMediaUsageStore *)self contextStore];
  v12[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  LOBYTE(v7) = [v8 addObjects:v9 toArrayAtKeyPath:v6];
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)removeObjectsMatchingPredicate:(id)a3 fromArrayAtKeyPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BMCoreDuetMediaUsageStore *)self contextStore];
  v9 = [v8 removeObjectsMatchingPredicate:v7 fromArrayAtKeyPath:v6];

  return v9;
}

- (BOOL)saveKnowledgeEvent:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = [(BMCoreDuetMediaUsageStore *)self knowledgeStore];
    v12[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [v7 saveObjects:v8 error:a4];
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BMCoreDuetMediaUsageStore saveKnowledgeEvent:error:];
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end