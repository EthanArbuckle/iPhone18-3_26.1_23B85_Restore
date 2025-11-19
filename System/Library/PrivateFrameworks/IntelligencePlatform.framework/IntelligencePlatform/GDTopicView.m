@interface GDTopicView
- (GDTopicView)initWithAccessAssertion:(id)a3 database:(id)a4;
- (void)enumerateTopicsWithBlock:(id)a3;
@end

@implementation GDTopicView

- (void)enumerateTopicsWithBlock:(id)a3
{
  v4 = a3;
  db = self->_db;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1ABF08898;
  v7[3] = &unk_1E7962340;
  v8 = v4;
  v6 = v4;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT topicId onPrep:score onRow:most_recent_documentId FROM topics ORDER BY score DESC" onError:0, v7, 0];
}

- (GDTopicView)initWithAccessAssertion:(id)a3 database:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GDTopicView;
  v9 = [(GDTopicView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessAssertion, a3);
    objc_storeStrong(&v10->_db, a4);
  }

  return v10;
}

@end