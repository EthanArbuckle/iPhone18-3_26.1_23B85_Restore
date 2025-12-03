@interface TDThreadMOCOrganizer
- (TDThreadMOCOrganizer)initWithDocument:(id)document mainThread:(id)thread;
- (id)mainMOC;
- (id)mainThread;
- (id)threadMOC;
- (void)setThreadMOC:(id)c;
@end

@implementation TDThreadMOCOrganizer

- (void)setThreadMOC:(id)c
{
  if (!self->mainThread)
  {
    [(TDThreadMOCOrganizer *)a2 setThreadMOC:?];
  }

  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (!c || currentThread == [(TDThreadMOCOrganizer *)self mainThread])
  {
    threadDictionary = [currentThread threadDictionary];

    [threadDictionary removeObjectForKey:@"TDThreadMOC"];
  }

  else
  {
    threadDictionary2 = [currentThread threadDictionary];

    [threadDictionary2 setObject:c forKey:@"TDThreadMOC"];
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
  document = [(TDThreadMOCOrganizer *)self document];

  return [document managedObjectContext];
}

- (id)threadMOC
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (currentThread == [(TDThreadMOCOrganizer *)self mainThread])
  {

    return [(TDThreadMOCOrganizer *)self mainMOC];
  }

  else
  {
    v4 = [objc_msgSend(currentThread "threadDictionary")];
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

- (TDThreadMOCOrganizer)initWithDocument:(id)document mainThread:(id)thread
{
  v9.receiver = self;
  v9.super_class = TDThreadMOCOrganizer;
  v7 = [(TDThreadMOCOrganizer *)&v9 init];
  if (!document)
  {
    [TDThreadMOCOrganizer initWithDocument:a2 mainThread:v7];
    if (thread)
    {
      goto LABEL_3;
    }

LABEL_5:
    [TDThreadMOCOrganizer initWithDocument:a2 mainThread:v7];
    goto LABEL_3;
  }

  if (!thread)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7->mainThread = thread;
  v7->document = document;
  return v7;
}

- (uint64_t)setThreadMOC:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"TDThreadMOCOrganizer.m" lineNumber:18 description:@"Must set mainThread before using -[TDThreadMOCOrganizer setThreadMOC:]"];
}

@end