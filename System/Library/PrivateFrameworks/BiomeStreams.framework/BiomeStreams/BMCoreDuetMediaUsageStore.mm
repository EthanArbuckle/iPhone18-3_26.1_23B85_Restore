@interface BMCoreDuetMediaUsageStore
- (BMCoreDuetMediaUsageStore)init;
- (BOOL)addContextValue:(id)value toArrayAtKeyPath:(id)path;
- (BOOL)saveKnowledgeEvent:(id)event error:(id *)error;
- (id)removeObjectsMatchingPredicate:(id)predicate fromArrayAtKeyPath:(id)path;
@end

@implementation BMCoreDuetMediaUsageStore

- (BMCoreDuetMediaUsageStore)init
{
  v8.receiver = self;
  v8.super_class = BMCoreDuetMediaUsageStore;
  v2 = [(BMCoreDuetMediaUsageStore *)&v8 init];
  if (v2)
  {
    userKnowledgeStore = [get_DKKnowledgeStoreClass() userKnowledgeStore];
    knowledgeStore = v2->_knowledgeStore;
    v2->_knowledgeStore = userKnowledgeStore;

    userContext = [get_CDClientContextClass() userContext];
    contextStore = v2->_contextStore;
    v2->_contextStore = userContext;
  }

  return v2;
}

- (BOOL)addContextValue:(id)value toArrayAtKeyPath:(id)path
{
  v12[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  valueCopy = value;
  contextStore = [(BMCoreDuetMediaUsageStore *)self contextStore];
  v12[0] = valueCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  LOBYTE(valueCopy) = [contextStore addObjects:v9 toArrayAtKeyPath:pathCopy];
  v10 = *MEMORY[0x1E69E9840];
  return valueCopy;
}

- (id)removeObjectsMatchingPredicate:(id)predicate fromArrayAtKeyPath:(id)path
{
  pathCopy = path;
  predicateCopy = predicate;
  contextStore = [(BMCoreDuetMediaUsageStore *)self contextStore];
  v9 = [contextStore removeObjectsMatchingPredicate:predicateCopy fromArrayAtKeyPath:pathCopy];

  return v9;
}

- (BOOL)saveKnowledgeEvent:(id)event error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (eventCopy)
  {
    knowledgeStore = [(BMCoreDuetMediaUsageStore *)self knowledgeStore];
    v12[0] = eventCopy;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v9 = [knowledgeStore saveObjects:v8 error:error];
  }

  else
  {
    knowledgeStore = __biome_log_for_category();
    if (os_log_type_enabled(knowledgeStore, OS_LOG_TYPE_ERROR))
    {
      [BMCoreDuetMediaUsageStore saveKnowledgeEvent:error:];
    }

    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

@end