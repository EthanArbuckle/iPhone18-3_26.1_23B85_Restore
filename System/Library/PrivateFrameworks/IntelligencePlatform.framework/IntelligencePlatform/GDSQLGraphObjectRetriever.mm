@interface GDSQLGraphObjectRetriever
- (id)objectForIdentifier:(id)identifier;
- (void)enumerateIdentifiersWithBlock:(id)block;
- (void)enumerateIdentifiersWithQuery:(id)query block:(id)block;
- (void)enumerateObjectsWithBlock:(id)block;
- (void)enumerateObjectsWithQuery:(id)query block:(id)block;
@end

@implementation GDSQLGraphObjectRetriever

- (void)enumerateObjectsWithQuery:(id)query block:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1ABF06774;
  v8[3] = &unk_1E7962318;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(GDSQLGraphObjectRetriever *)self enumerateIdentifiersWithQuery:query block:v8];
}

- (void)enumerateIdentifiersWithQuery:(id)query block:(id)block
{
  queryCopy = query;
  blockCopy = block;
  v8 = queryCopy;
  if (!self)
  {
    v18 = 0;
    goto LABEL_20;
  }

  v9 = objc_autoreleasePoolPush();
  objectFTSTerm = [v8 objectFTSTerm];

  if (objectFTSTerm)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT DISTINCT subject FROM %@_object_fts WHERE object MATCH :match", self->_tableName];
  }

  else
  {
    objects = [v8 objects];
    v13 = [objects count];

    if (v13 == 1)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT DISTINCT subject FROM %@ WHERE object = :object", self->_tableName];
    }

    else
    {
      objects2 = [v8 objects];
      v15 = [objects2 count];

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
  predicates = [v8 predicates];
  v20 = [predicates count];

  if (v20 == 1)
  {
    v21 = @" AND predicate = :predicate";
  }

  else
  {
    predicates2 = [v8 predicates];
    v23 = [predicates2 count];

    if (!v23)
    {
      goto LABEL_14;
    }

    v21 = @" AND predicate IN _pas_nsarray(:predicates)";
  }

  v24 = [v18 stringByAppendingString:v21];

  v18 = v24;
LABEL_14:
  subjects = [v8 subjects];
  v26 = [subjects count];

  if (v26 == 1)
  {
    v27 = @" AND subject = :subject";
LABEL_18:
    v30 = [v18 stringByAppendingString:v27];

    v18 = v30;
    goto LABEL_19;
  }

  subjects2 = [v8 subjects];
  v29 = [subjects2 count];

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
  v35 = blockCopy;
  v32 = blockCopy;
  v33 = v8;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v18 onPrep:v36 onRow:v34 onError:0];
}

- (void)enumerateObjectsWithBlock:(id)block
{
  blockCopy = block;
  triplesColumnsRequiredForRendering = [(objc_class *)self->_triplesIteratorRenderer triplesColumnsRequiredForRendering];
  v6 = triplesColumnsRequiredForRendering | 1;
  v7 = sub_1ABF06FEC(self, triplesColumnsRequiredForRendering | 1);
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT %@ FROM %@ WHERE subject >= :entityClassIdentifier << :classOffset AND subject < (:entityClassIdentifier + 1) << :classOffset ORDER BY subject, predicate, relationshipId, relationshipPredicate, object", v7, self->_tableName];
  db = self->_db;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1ABF07248;
  v11[3] = &unk_1E7962280;
  v12 = blockCopy;
  v13 = v6;
  v11[4] = self;
  v10 = blockCopy;
  [(_PASSqliteDatabase *)db prepQuery:v8 onPrep:v11 onError:0];
}

- (id)objectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1ABF075F0;
  v22 = sub_1ABF07600;
  v23 = 0;
  v5 = [[GDEntityIdentifier alloc] initWithString:identifierCopy];
  if ([(GDEntityIdentifier *)v5 entityClass]== self->_entityClassIdentifier)
  {
    triplesColumnsRequiredForRendering = [(objc_class *)self->_triplesIteratorRenderer triplesColumnsRequiredForRendering];
    v7 = triplesColumnsRequiredForRendering & 0xFFFFFFFFFFFFFFFELL;
    v8 = sub_1ABF06FEC(self, triplesColumnsRequiredForRendering & 0xFFFFFFFE);
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SELECT %@ FROM %@ WHERE subject = :subject ORDER BY subject, predicate, relationshipId, relationshipPredicate, object", v8, self->_tableName];
    db = self->_db;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1ABF07608;
    v13[3] = &unk_1E7962258;
    v16 = &v18;
    v17 = v7;
    v14 = v5;
    selfCopy = self;
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

- (void)enumerateIdentifiersWithBlock:(id)block
{
  blockCopy = block;
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
  v9 = blockCopy;
  v7 = blockCopy;
  [(_PASSqliteDatabase *)db prepAndRunQuery:v5 onPrep:v10 onRow:v8 onError:0];
}

@end