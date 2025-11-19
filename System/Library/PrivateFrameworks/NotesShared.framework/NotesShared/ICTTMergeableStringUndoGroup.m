@interface ICTTMergeableStringUndoGroup
- (BOOL)addSeenRange:(TopoIDRange *)a3;
- (BOOL)hasTopoIDsThatCanChange;
- (ICTTMergeableStringUndoGroup)init;
- (NSString)description;
- (void)addCommand:(id)a3;
- (void)applyToString:(id)a3;
- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4;
@end

@implementation ICTTMergeableStringUndoGroup

- (ICTTMergeableStringUndoGroup)init
{
  v8.receiver = self;
  v8.super_class = ICTTMergeableStringUndoGroup;
  v2 = [(ICTTMergeableStringUndoGroup *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    seen = v2->_seen;
    v2->_seen = v3;

    v5 = [MEMORY[0x277CBEB18] array];
    commands = v2->_commands;
    v2->_commands = v5;
  }

  return v2;
}

- (void)addCommand:(id)a3
{
  v5 = a3;
  if ([v5 addToGroup:self])
  {
    v4 = [(ICTTMergeableStringUndoGroup *)self commands];
    [v4 addObject:v5];
  }
}

- (BOOL)addSeenRange:(TopoIDRange *)a3
{
  v5 = a3->var0.replicaID;
  clock = a3->var0.clock;
  var1 = a3->var1;
  v8 = [(ICTTMergeableStringUndoGroup *)self seen];
  v9 = [v8 objectForKeyedSubscript:v5];

  if (v9)
  {
    if ([v9 containsIndexesInRange:{clock, var1}])
    {
      v10 = 0;
    }

    else
    {
      [v9 addIndexesInRange:{clock, var1}];
      v10 = 1;
    }

    v11 = v9;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCAB58]) initWithIndexesInRange:{clock, var1}];
    v12 = [(ICTTMergeableStringUndoGroup *)self seen];
    [v12 setObject:v11 forKeyedSubscript:v5];

    v10 = 1;
  }

  return v10;
}

- (void)updateTopoIDRange:(TopoIDRange *)a3 toNewRangeID:(TopoIDRange *)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(ICTTMergeableStringUndoGroup *)self commands];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v16 = a3->var0.replicaID;
        var1 = a3->var1;
        clock = a3->var0.clock;
        v18 = var1;
        v13 = a4->var0.replicaID;
        v12 = a4->var1;
        v14 = a4->var0.clock;
        v15 = v12;
        if (v10)
        {
          [v10 updateTopoIDRange:&v16 toNewRangeID:&v13];
        }

        else
        {
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (BOOL)hasTopoIDsThatCanChange
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(ICTTMergeableStringUndoGroup *)self commands];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasTopoIDsThatCanChange])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)applyToString:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(ICTTMergeableStringUndoGroup *)self commands];
  v6 = [v5 reverseObjectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) applyToString:v4];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ICTTMergeableStringUndoGroup *)self commands];
  v5 = [v3 stringWithFormat:@"<ICTTMergeableStringUndoGroup %p %@>", self, v4];

  return v5;
}

@end