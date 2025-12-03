@interface GDTopicView
- (GDTopicView)initWithAccessAssertion:(id)assertion database:(id)database;
- (void)enumerateTopicsWithBlock:(id)block;
@end

@implementation GDTopicView

- (void)enumerateTopicsWithBlock:(id)block
{
  blockCopy = block;
  db = self->_db;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1ABF08898;
  v7[3] = &unk_1E7962340;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT topicId onPrep:score onRow:most_recent_documentId FROM topics ORDER BY score DESC" onError:0, v7, 0];
}

- (GDTopicView)initWithAccessAssertion:(id)assertion database:(id)database
{
  assertionCopy = assertion;
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = GDTopicView;
  v9 = [(GDTopicView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessAssertion, assertion);
    objc_storeStrong(&v10->_db, database);
  }

  return v10;
}

@end