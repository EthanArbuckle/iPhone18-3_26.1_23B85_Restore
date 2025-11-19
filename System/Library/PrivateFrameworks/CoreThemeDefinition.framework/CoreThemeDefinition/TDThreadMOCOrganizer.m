@interface TDThreadMOCOrganizer
- (TDThreadMOCOrganizer)initWithDocument:(id)a3 mainThread:(id)a4;
- (id)mainMOC;
- (id)mainThread;
- (id)threadMOC;
- (void)setThreadMOC:(id)a3;
@end

@implementation TDThreadMOCOrganizer

- (void)setThreadMOC:(id)a3
{
  if (!self->mainThread)
  {
    [(TDThreadMOCOrganizer *)a2 setThreadMOC:?];
  }

  v5 = [MEMORY[0x277CCACC8] currentThread];
  if (!a3 || v5 == [(TDThreadMOCOrganizer *)self mainThread])
  {
    v7 = [v5 threadDictionary];

    [v7 removeObjectForKey:@"TDThreadMOC"];
  }

  else
  {
    v6 = [v5 threadDictionary];

    [v6 setObject:a3 forKey:@"TDThreadMOC"];
  }
}

- (id)mainThread
{
  result = self->mainThread;
  if (!result)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
    return self->mainThread;
  }

  return result;
}

- (id)mainMOC
{
  v2 = [(TDThreadMOCOrganizer *)self document];

  return [v2 managedObjectContext];
}

- (id)threadMOC
{
  v3 = [MEMORY[0x277CCACC8] currentThread];
  if (v3 == [(TDThreadMOCOrganizer *)self mainThread])
  {

    return [(TDThreadMOCOrganizer *)self mainMOC];
  }

  else
  {
    v4 = [objc_msgSend(v3 "threadDictionary")];
    if (!v4)
    {
      v4 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
      [v4 setPersistentStoreCoordinator:{objc_msgSend(-[TDThreadMOCOrganizer mainMOC](self, "mainMOC"), "persistentStoreCoordinator")}];
      [v4 setUndoManager:0];
      [(TDThreadMOCOrganizer *)self setThreadMOC:v4];
    }

    return v4;
  }
}

- (TDThreadMOCOrganizer)initWithDocument:(id)a3 mainThread:(id)a4
{
  v9.receiver = self;
  v9.super_class = TDThreadMOCOrganizer;
  v7 = [(TDThreadMOCOrganizer *)&v9 init];
  if (!a3)
  {
    [TDThreadMOCOrganizer initWithDocument:a2 mainThread:v7];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [TDThreadMOCOrganizer initWithDocument:a2 mainThread:v7];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7->mainThread = a4;
  v7->document = a3;
  return v7;
}

- (uint64_t)setThreadMOC:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"TDThreadMOCOrganizer.m" lineNumber:18 description:@"Must set mainThread before using -[TDThreadMOCOrganizer setThreadMOC:]"];
}

@end