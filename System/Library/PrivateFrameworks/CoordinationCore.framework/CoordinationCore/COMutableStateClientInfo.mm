@interface COMutableStateClientInfo
- (COMutableStateClientInfo)initWithSuite:(id)suite clusters:(id)clusters state:(id)state observers:(id)observers;
- (void)addObserverWithPredicate:(id)predicate;
- (void)removeKeyPath:(id)path cluster:(id)cluster;
- (void)removeObserverWithPredicate:(id)predicate;
- (void)setValue:(id)value forKeyPath:(id)path cluster:(id)cluster;
@end

@implementation COMutableStateClientInfo

- (COMutableStateClientInfo)initWithSuite:(id)suite clusters:(id)clusters state:(id)state observers:(id)observers
{
  stateCopy = state;
  observersCopy = observers;
  v16.receiver = self;
  v16.super_class = COMutableStateClientInfo;
  v13 = [(COStateClientInfo *)&v16 initWithSuite:suite clusters:clusters];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->super._state, state);
    objc_storeStrong(&v14->super._observers, observers);
  }

  return v14;
}

- (void)removeKeyPath:(id)path cluster:(id)cluster
{
  pathCopy = path;
  clusterCopy = cluster;
  state = [(COMutableStateClientInfo *)self state];
  v8 = [state objectForKeyedSubscript:clusterCopy];
  v9 = [v8 mutableCopy];

  if (v9)
  {
    [v9 removeObjectForKey:pathCopy];
    state2 = [(COMutableStateClientInfo *)self state];
    v11 = [state2 mutableCopy];

    [v11 setObject:v9 forKey:clusterCopy];
    [(COMutableStateClientInfo *)self setState:v11];
  }
}

- (void)setValue:(id)value forKeyPath:(id)path cluster:(id)cluster
{
  clusterCopy = cluster;
  pathCopy = path;
  valueCopy = value;
  state = [(COMutableStateClientInfo *)self state];
  v11 = [state objectForKeyedSubscript:clusterCopy];
  if (v11)
  {
    state2 = [(COMutableStateClientInfo *)self state];
    v13 = [state2 objectForKeyedSubscript:clusterCopy];
    dictionary = [v13 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  [dictionary setObject:valueCopy forKey:pathCopy];
  state3 = [(COMutableStateClientInfo *)self state];
  v16 = [state3 mutableCopy];

  [v16 setObject:dictionary forKey:clusterCopy];
  [(COMutableStateClientInfo *)self setState:v16];
}

- (void)addObserverWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  observers = [(COMutableStateClientInfo *)self observers];
  v5 = [observers mutableCopy];

  v6 = [v5 objectForKey:predicateCopy];
  [predicateCopy allowEvaluation];
  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
    [v5 setObject:v7 forKey:predicateCopy];
  }

  else
  {
    [v5 setObject:&unk_2857C88B0 forKey:predicateCopy];
  }

  [(COMutableStateClientInfo *)self setObservers:v5];
}

- (void)removeObserverWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  observers = [(COMutableStateClientInfo *)self observers];
  v5 = [observers mutableCopy];

  v6 = [v5 objectForKey:predicateCopy];
  v7 = v6;
  if (v6)
  {
    if ([v6 intValue] == 1)
    {
      [v5 removeObjectForKey:predicateCopy];
    }

    else
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "intValue") - 1}];
      [v5 setObject:v8 forKey:predicateCopy];
    }

    [(COMutableStateClientInfo *)self setObservers:v5];
  }
}

@end