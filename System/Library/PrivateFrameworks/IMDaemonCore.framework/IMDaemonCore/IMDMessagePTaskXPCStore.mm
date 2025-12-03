@interface IMDMessagePTaskXPCStore
- (BOOL)storePTask:(id)task;
- (BOOL)updateTaskFlagsForPTask:(id)task;
- (id)loadMostRecentMessagePTasks;
@end

@implementation IMDMessagePTaskXPCStore

- (BOOL)storePTask:(id)task
{
  if (task)
  {
    v3 = -[IMDMessagePTaskXPCStore _networkCall_InsertRowGuid:taskFlags:](self, "_networkCall_InsertRowGuid:taskFlags:", [task guid], objc_msgSend(task, "taskFlags"));
    if (v3)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)loadMostRecentMessagePTasks
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(IMDMessagePTaskXPCStore *)self _networkCall_IMDMessagePTaskSelectWithLimit:100];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [objc_alloc(MEMORY[0x277D18EC8]) initWithStoreDictionary:*(*(&v11 + 1) + 8 * v7)];
        [v3 addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if (v2)
  {
    result = v3;
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)updateTaskFlagsForPTask:(id)task
{
  if (!task)
  {
    return 0;
  }

  [task guid];
  [task taskFlags];

  return MEMORY[0x2821F9670](self, sel__networkCall_IMDMessagePTaskUpdateTaskFlagsForGUID_taskFlags_);
}

@end