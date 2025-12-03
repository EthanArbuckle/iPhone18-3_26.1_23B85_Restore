@interface GDPageRankView
- (GDPageRankView)initWithAccessAssertion:(id)assertion database:(id)database;
- (id)pageRanksWithError:(id *)error;
@end

@implementation GDPageRankView

- (id)pageRanksWithError:(id *)error
{
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A1A38];
  v5 = objc_opt_new();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1ABF01B28;
  v18 = sub_1ABF01B38;
  v19 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1ABF01B40;
  v12[3] = &unk_1E79621C0;
  v7 = v5;
  v13 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF01BCC;
  v11[3] = &unk_1E79621E8;
  v11[4] = &v14;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT MD_ID onPrep:CAST(page_rank AS REAL) AS rank FROM page_rank" onRow:&unk_1F20A1A58 onError:v12, v11];
  if (error && (v8 = v15[5]) != 0)
  {
    v9 = 0;
    *error = v8;
  }

  else
  {
    v9 = v7;
  }

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (GDPageRankView)initWithAccessAssertion:(id)assertion database:(id)database
{
  assertionCopy = assertion;
  databaseCopy = database;
  v12.receiver = self;
  v12.super_class = GDPageRankView;
  v9 = [(GDPageRankView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessAssertion, assertion);
    objc_storeStrong(&v10->_db, database);
  }

  return v10;
}

@end