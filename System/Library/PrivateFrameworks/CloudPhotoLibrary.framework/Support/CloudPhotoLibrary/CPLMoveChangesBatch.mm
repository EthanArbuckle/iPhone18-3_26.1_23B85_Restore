@interface CPLMoveChangesBatch
- (CPLMoveChangesBatch)initWithCapacity:(unint64_t)capacity;
- (NSArray)changes;
- (NSArray)destinationRecordIDs;
- (id)redactedDescription;
- (void)addChange:(id)change;
@end

@implementation CPLMoveChangesBatch

- (CPLMoveChangesBatch)initWithCapacity:(unint64_t)capacity
{
  v10.receiver = self;
  v10.super_class = CPLMoveChangesBatch;
  v4 = [(CPLMoveChangesBatch *)&v10 init];
  if (v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:capacity];
    changes = v4->_changes;
    v4->_changes = v5;

    v7 = [[NSMutableDictionary alloc] initWithCapacity:capacity];
    changePerSourceRecordID = v4->_changePerSourceRecordID;
    v4->_changePerSourceRecordID = v7;
  }

  return v4;
}

- (NSArray)changes
{
  v2 = [(NSMutableArray *)self->_changes copy];

  return v2;
}

- (NSArray)destinationRecordIDs
{
  v3 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_changes, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_changes;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        destinationRecord = [*(*(&v12 + 1) + 8 * i) destinationRecord];
        recordID = [destinationRecord recordID];
        [v3 addObject:recordID];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addChange:(id)change
{
  changes = self->_changes;
  changeCopy = change;
  [(NSMutableArray *)changes addObject:changeCopy];
  changePerSourceRecordID = self->_changePerSourceRecordID;
  sourceRecordID = [changeCopy sourceRecordID];
  [(NSMutableDictionary *)changePerSourceRecordID setObject:changeCopy forKeyedSubscript:sourceRecordID];
}

- (id)redactedDescription
{
  v2 = [[NSString alloc] initWithFormat:@"<%@ %lu move changes>", objc_opt_class(), -[NSMutableArray count](self->_changes, "count")];

  return v2;
}

@end