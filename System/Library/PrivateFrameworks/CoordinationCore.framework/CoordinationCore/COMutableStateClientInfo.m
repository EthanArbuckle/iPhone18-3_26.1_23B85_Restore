@interface COMutableStateClientInfo
- (COMutableStateClientInfo)initWithSuite:(id)a3 clusters:(id)a4 state:(id)a5 observers:(id)a6;
- (void)addObserverWithPredicate:(id)a3;
- (void)removeKeyPath:(id)a3 cluster:(id)a4;
- (void)removeObserverWithPredicate:(id)a3;
- (void)setValue:(id)a3 forKeyPath:(id)a4 cluster:(id)a5;
@end

@implementation COMutableStateClientInfo

- (COMutableStateClientInfo)initWithSuite:(id)a3 clusters:(id)a4 state:(id)a5 observers:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = COMutableStateClientInfo;
  v13 = [(COStateClientInfo *)&v16 initWithSuite:a3 clusters:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->super._state, a5);
    objc_storeStrong(&v14->super._observers, a6);
  }

  return v14;
}

- (void)removeKeyPath:(id)a3 cluster:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(COMutableStateClientInfo *)self state];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v8 mutableCopy];

  if (v9)
  {
    [v9 removeObjectForKey:v12];
    v10 = [(COMutableStateClientInfo *)self state];
    v11 = [v10 mutableCopy];

    [v11 setObject:v9 forKey:v6];
    [(COMutableStateClientInfo *)self setState:v11];
  }
}

- (void)setValue:(id)a3 forKeyPath:(id)a4 cluster:(id)a5
{
  v17 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(COMutableStateClientInfo *)self state];
  v11 = [v10 objectForKeyedSubscript:v17];
  if (v11)
  {
    v12 = [(COMutableStateClientInfo *)self state];
    v13 = [v12 objectForKeyedSubscript:v17];
    v14 = [v13 mutableCopy];
  }

  else
  {
    v14 = [MEMORY[0x277CBEB38] dictionary];
  }

  [v14 setObject:v9 forKey:v8];
  v15 = [(COMutableStateClientInfo *)self state];
  v16 = [v15 mutableCopy];

  [v16 setObject:v14 forKey:v17];
  [(COMutableStateClientInfo *)self setState:v16];
}

- (void)addObserverWithPredicate:(id)a3
{
  v8 = a3;
  v4 = [(COMutableStateClientInfo *)self observers];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKey:v8];
  [v8 allowEvaluation];
  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
    [v5 setObject:v7 forKey:v8];
  }

  else
  {
    [v5 setObject:&unk_2857C88B0 forKey:v8];
  }

  [(COMutableStateClientInfo *)self setObservers:v5];
}

- (void)removeObserverWithPredicate:(id)a3
{
  v9 = a3;
  v4 = [(COMutableStateClientInfo *)self observers];
  v5 = [v4 mutableCopy];

  v6 = [v5 objectForKey:v9];
  v7 = v6;
  if (v6)
  {
    if ([v6 intValue] == 1)
    {
      [v5 removeObjectForKey:v9];
    }

    else
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "intValue") - 1}];
      [v5 setObject:v8 forKey:v9];
    }

    [(COMutableStateClientInfo *)self setObservers:v5];
  }
}

@end