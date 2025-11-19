@interface GDSQLGraphObjectRetriever
- (id)objectForIdentifier:(id)a3;
- (void)enumerateIdentifiersWithBlock:(id)a3;
- (void)enumerateIdentifiersWithQuery:(id)a3 block:(id)a4;
- (void)enumerateObjectsWithBlock:(id)a3;
- (void)enumerateObjectsWithQuery:(id)a3 block:(id)a4;
@end

@implementation GDSQLGraphObjectRetriever

- (void)enumerateObjectsWithQuery:(id)a3 block:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1ABF06774;
  v8[3] = &unk_1E7962318;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(GDSQLGraphObjectRetriever *)self enumerateIdentifiersWithQuery:a3 block:v8];
}

- (void)enumerateIdentifiersWithQuery:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  if (!self)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [v8 objectFTSTerm];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT DISTINCT subject FROM %@_object_fts WHERE object MATCH :match", self->_tableName];
  }

  else
  {
    v12 = [v8 objects];
    v13 = [v12 count];

    if (v13 == 1)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT DISTINCT subject FROM %@ WHERE object = :object", self->_tableName];
    }

    else
    {
      v14 = [v8 objects];
      v15 = [v14 count];

      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      tableName = self->_tableName;
      if (v15)
      {
        v11 = [v16 initWithFormat:@"SELECT DISTINCT subject FROM %@ WHERE object IN _pas_nsarray(:objects)", self->_tableName];
      }

      else
      {
        v11 = [v16 initWithFormat:@"SELECT DISTINCT subject FROM %@ WHERE 1", self->_tableName];
      }
    }
  }

  v18 = v11;
  v19 = [v8 predicates];
  v20 = [v19 count];

  if (v20 == 1)
  {
    v21 = @" AND predicate = :predicate";
  }

  else
  {
    v22 = [v8 predicates];
    v23 = [v22 count];

    if (!v23)
    {
      goto LABEL_14;
    }

    v21 = @" AND predicate IN _pas_nsarray(:predicates)";
  }

  v24 = [v18 stringByAppendingString:v21];

  v18 = v24;
LABEL_14:
  v25 = [v8 subjects];
  v26 = [v25 count];

  if (v26 == 1)
  {
    v27 = @" AND subject = :subject";
LABEL_18:
    v30 = [v18 stringByAppendingString:v27];

    v18 = v30;
    goto LABEL_19;
  }

  v28 = [v8 subjects];
  v29 = [v28 count];

  if (v29)
  {
    v27 = @" AND subject IN _pas_nsarray(:subjects)";
    goto LABEL_18;
  }

LABEL_19:
  objc_autoreleasePoolPop(v9);
LABEL_20:

  db = self->_db;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = sub_1ABF06AE0;
  v36[3] = &unk_1E79622C8;
  v36[4] = self;
  v37 = v8;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_1ABF06D9C;
  v34[3] = &unk_1E79622F0;
  v34[4] = self;
  v35 = v7;
  v32 = v7;
  v33 = v8;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v18 onPrep:v36 onRow:v34 onError:0];
}

- (void)enumerateObjectsWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(objc_class *)self->_triplesIteratorRenderer triplesColumnsRequiredForRendering];
  v6 = v5 | 1;
  v7 = sub_1ABF06FEC(self, v5 | 1);
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT %@ FROM %@ WHERE subject >= :entityClassIdentifier << :classOffset AND subject < (:entityClassIdentifier + 1) << :classOffset ORDER BY subject, predicate, relationshipId, relationshipPredicate, object", v7, self->_tableName];
  db = self->_db;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF07248;
  v11[3] = &unk_1E7962280;
  v12 = v4;
  v13 = v6;
  v11[4] = self;
  v10 = v4;
  [(_PASSqliteDatabase *)db prepQuery:v8 onPrep:v11 onError:0];
}

- (id)objectForIdentifier:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1ABF075F0;
  v22 = sub_1ABF07600;
  v23 = 0;
  v5 = [[GDEntityIdentifier alloc] initWithString:v4];
  if ([(GDEntityIdentifier *)v5 entityClass]== self->_entityClassIdentifier)
  {
    v6 = [(objc_class *)self->_triplesIteratorRenderer triplesColumnsRequiredForRendering];
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    v8 = sub_1ABF06FEC(self, v6 & 0xFFFFFFFE);
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT %@ FROM %@ WHERE subject = :subject ORDER BY subject, predicate, relationshipId, relationshipPredicate, object", v8, self->_tableName];
    db = self->_db;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1ABF07608;
    v13[3] = &unk_1E7962258;
    v16 = &v18;
    v17 = v7;
    v14 = v5;
    v15 = self;
    [(_PASSqliteDatabase *)db prepQuery:v9 onPrep:v13 onError:0];
    v11 = v19[5];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (void)enumerateIdentifiersWithBlock:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT subject FROM %@ WHERE predicate = PS1 AND object = :entityClassIdentifierName", self->_tableName];
  db = self->_db;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1ABF07804;
  v10[3] = &unk_1E7962230;
  v10[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1ABF0781C;
  v8[3] = &unk_1E7962340;
  v9 = v4;
  v7 = v4;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v5 onPrep:v10 onRow:v8 onError:0];
}

@end