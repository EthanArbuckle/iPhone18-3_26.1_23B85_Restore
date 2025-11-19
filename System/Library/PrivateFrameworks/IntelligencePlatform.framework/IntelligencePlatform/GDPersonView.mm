@interface GDPersonView
- (GDPersonView)initWithAccessAssertion:(id)a3 database:(id)a4;
- (void)enumeratePeopleWithBlock:(id)a3;
@end

@implementation GDPersonView

- (void)enumeratePeopleWithBlock:(id)a3
{
  v4 = a3;
  [GDAnalytics sendEventForProductionLazyWithEventName:@"ViewEngine.Serving.Query" eventPayloadBuilder:&unk_1F20A1A78];
  [(GDSQLGraphObjectRetriever *)self->_personRetriever enumerateObjectsWithBlock:v4];
}

- (GDPersonView)initWithAccessAssertion:(id)a3 database:(id)a4
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = GDPersonView;
  v10 = [(GDPersonView *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_accessAssertion, a3);
    objc_storeStrong(&v11->_db, a4);
    v12 = [v8 viewArtifactTableName];
    if (!v12)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:v11 file:@"GDPersonView.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"tableName"}];
    }

    v13 = [GDSQLGraphObjectRetriever alloc];
    db = v11->_db;
    v15 = objc_opt_class();
    v16 = sub_1ABF078B4(&v13->super.isa, db, v12, @"SB104", 2, v15);
    personRetriever = v11->_personRetriever;
    v11->_personRetriever = v16;
  }

  return v11;
}

@end