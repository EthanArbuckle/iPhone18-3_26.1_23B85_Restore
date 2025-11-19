@interface _CDContactChangeHistoryEventVisitor
- (NSArray)deletedContactIdentifiers;
- (_CDContactChangeHistoryEventVisitor)initWithChangeEnumerator:(id)a3;
- (void)reset;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitEventsWithBatchSize:(unint64_t)a3 batchCallback:(id)a4;
@end

@implementation _CDContactChangeHistoryEventVisitor

- (_CDContactChangeHistoryEventVisitor)initWithChangeEnumerator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CDContactChangeHistoryEventVisitor;
  v6 = [(_CDContactChangeHistoryEventVisitor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_changeEnumerator, a3);
    [(_CDContactChangeHistoryEventVisitor *)v7 reset];
  }

  return v7;
}

- (void)visitEventsWithBatchSize:(unint64_t)a3 batchCallback:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v19 = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_changeEnumerator;
  v8 = [(NSEnumerator *)v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        [v12 acceptEventVisitor:{self, v15}];
        if (self->_count >= a3)
        {
          v6[2](v6, self, &v19);
          [(_CDContactChangeHistoryEventVisitor *)self reset];
          if (v19)
          {
            objc_autoreleasePoolPop(v13);

            goto LABEL_13;
          }
        }

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSEnumerator *)v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if (self->_count)
  {
    v6[2](v6, self, &v19);
    [(_CDContactChangeHistoryEventVisitor *)self reset];
  }

LABEL_13:

  v14 = *MEMORY[0x1E69E9840];
}

- (NSArray)deletedContactIdentifiers
{
  v2 = [(NSMutableArray *)self->_deletedContactIdentifiers copy];

  return v2;
}

- (void)reset
{
  v3 = objc_opt_new();
  deletedContactIdentifiers = self->_deletedContactIdentifiers;
  self->_deletedContactIdentifiers = v3;

  self->_count = 0;
}

- (void)visitDeleteContactEvent:(id)a3
{
  deletedContactIdentifiers = self->_deletedContactIdentifiers;
  v5 = [a3 contactIdentifier];
  [(NSMutableArray *)deletedContactIdentifiers addObject:v5];

  ++self->_count;
}

@end