@interface GDSQLFeatureRetriever
- (GDSQLFeatureRetriever)initWithDatabase:(id)database;
- (id)featureForKey:(id)key error:(id *)error;
- (id)featureKeysWithError:(id *)error;
@end

@implementation GDSQLFeatureRetriever

- (id)featureKeysWithError:(id *)error
{
  v5 = objc_opt_new();
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1ABF060C0;
  v18 = sub_1ABF060D0;
  v19 = 0;
  db = self->_db;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1ABF060D8;
  v12[3] = &unk_1E79621C0;
  v7 = v5;
  v13 = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF061D8;
  v11[3] = &unk_1E79621E8;
  v11[4] = &v14;
  [(_PASSqliteDatabase *)db prepAndRunQuery:@"SELECT viewName onPrep:featureName onRow:subidentifierName FROM kv" onError:&unk_1F20A1AF8, v12, v11];
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

- (id)featureForKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = objc_opt_new();
  subidentifierName = [keyCopy subidentifierName];

  if (subidentifierName)
  {
    v9 = @"SELECT value FROM kv WHERE viewName = :viewName AND featureName = :featureName AND subidentifierName = :subidentifierName";
  }

  else
  {
    v9 = @"SELECT value FROM kv WHERE viewName = :viewName AND featureName = :featureName";
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1ABF060C0;
  v25 = sub_1ABF060D0;
  v26 = 0;
  db = self->_db;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1ABF0644C;
  v19[3] = &unk_1E7962230;
  v11 = keyCopy;
  v20 = v11;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1ABF06520;
  v17[3] = &unk_1E79621C0;
  v12 = v7;
  v18 = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1ABF065DC;
  v16[3] = &unk_1E79621E8;
  v16[4] = &v21;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v9 onPrep:v19 onRow:v17 onError:v16];
  if (error && (v13 = v22[5]) != 0)
  {
    v14 = 0;
    *error = v13;
  }

  else
  {
    v14 = v12;
  }

  _Block_object_dispose(&v21, 8);

  return v14;
}

- (GDSQLFeatureRetriever)initWithDatabase:(id)database
{
  databaseCopy = database;
  v9.receiver = self;
  v9.super_class = GDSQLFeatureRetriever;
  v6 = [(GDSQLFeatureRetriever *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_db, database);
  }

  return v7;
}

@end